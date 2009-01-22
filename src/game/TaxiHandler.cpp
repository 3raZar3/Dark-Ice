/*
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "Common.h"
#include "Database/DatabaseEnv.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "Opcodes.h"
#include "Log.h"
#include "World.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "UpdateMask.h"
#include "Path.h"
#include "WaypointMovementGenerator.h"
#include "DestinationHolderImp.h"

#include <cassert>

void WorldSession::HandleTaxiNodeStatusQueryOpcode( WorldPacket & recv_data )
{
    CHECK_PACKET_SIZE(recv_data,8);

    sLog.outDebug( "WORLD: Received CMSG_TAXINODE_STATUS_QUERY" );

    uint64 guid;

    recv_data >> guid;
    SendTaxiStatus( guid );
}

void WorldSession::SendTaxiStatus( uint64 guid )
{
    // cheating checks
    Creature *unit = ObjectAccessor::GetCreature(*_player, guid);
    if (!unit)
    {
        sLog.outDebug( "WorldSession::SendTaxiStatus - Unit (GUID: %u) not found.", uint32(GUID_LOPART(guid)) );
        return;
    }

    uint32 curloc = objmgr.GetNearestTaxiNode(unit->GetPositionX(),unit->GetPositionY(),unit->GetPositionZ(),unit->GetMapId(),GetPlayer( )->GetTeam());

    // not found nearest
    if(curloc == 0)
        return;

    sLog.outDebug( "WORLD: current location %u ",curloc);

    WorldPacket data( SMSG_TAXINODE_STATUS, 9 );
    data << guid;
    data << uint8( GetPlayer( )->m_taxi.IsTaximaskNodeKnown(curloc) ? 1 : 0 );
    SendPacket( &data );
    sLog.outDebug( "WORLD: Sent SMSG_TAXINODE_STATUS" );
}

void WorldSession::HandleTaxiQueryAvailableNodes( WorldPacket & recv_data )
{
    CHECK_PACKET_SIZE(recv_data,8);

    sLog.outDebug( "WORLD: Received CMSG_TAXIQUERYAVAILABLENODES" );

    uint64 guid;
    recv_data >> guid;

    // cheating checks
    Creature *unit = ObjectAccessor::GetNPCIfCanInteractWith(*_player, guid, UNIT_NPC_FLAG_FLIGHTMASTER);
    if (!unit)
    {
        sLog.outDebug( "WORLD: HandleTaxiQueryAvailableNodes - Unit (GUID: %u) not found or you can't interact with him.", uint32(GUID_LOPART(guid)) );
        return;
    }

    // remove fake death
    if(GetPlayer()->hasUnitState(UNIT_STAT_DIED))
        GetPlayer()->RemoveSpellsCausingAura(SPELL_AURA_FEIGN_DEATH);

    // unknown taxi node case
    if( SendLearnNewTaxiNode(unit) )
        return;

    // known taxi node case
    SendTaxiMenu( unit );
}

void WorldSession::SendTaxiMenu( Creature* unit )
{
    // find current node
    uint32 curloc = objmgr.GetNearestTaxiNode(unit->GetPositionX(),unit->GetPositionY(),unit->GetPositionZ(),unit->GetMapId(),GetPlayer( )->GetTeam());

    if ( curloc == 0 )
        return;

    sLog.outDebug( "WORLD: CMSG_TAXINODE_STATUS_QUERY %u ",curloc);

    WorldPacket data( SMSG_SHOWTAXINODES, (4+8+4+8*4) );
    data << uint32( 1 );
    data << uint64( unit->GetGUID() );
    data << uint32( curloc );
    GetPlayer()->m_taxi.AppendTaximaskTo(data,GetPlayer()->isTaxiCheater());
    SendPacket( &data );

    sLog.outDebug( "WORLD: Sent SMSG_SHOWTAXINODES" );
}

void WorldSession::SendDoFlight( uint16 MountId, uint32 path, uint32 pathNode )
{
    // remove fake death
    if(GetPlayer()->hasUnitState(UNIT_STAT_DIED))
        GetPlayer()->RemoveSpellsCausingAura(SPELL_AURA_FEIGN_DEATH);

    while(GetPlayer()->GetMotionMaster()->GetCurrentMovementGeneratorType()==FLIGHT_MOTION_TYPE)
        GetPlayer()->GetMotionMaster()->MovementExpired(false);

    GetPlayer()->Mount( MountId );
    GetPlayer()->GetMotionMaster()->MoveTaxiFlight(path,pathNode);
}

bool WorldSession::SendLearnNewTaxiNode( Creature* unit )
{
    // find current node
    uint32 curloc = objmgr.GetNearestTaxiNode(unit->GetPositionX(),unit->GetPositionY(),unit->GetPositionZ(),unit->GetMapId(),GetPlayer( )->GetTeam());

    if ( curloc == 0 )
        return true;                                        // `true` send to avoid WorldSession::SendTaxiMenu call with one more curlock seartch with same false result.

    if( GetPlayer()->m_taxi.SetTaximaskNode(curloc) )
    {
        WorldPacket msg(SMSG_NEW_TAXI_PATH, 0);
        SendPacket( &msg );

        WorldPacket update( SMSG_TAXINODE_STATUS, 9 );
        update << uint64( unit->GetGUID() );
        update << uint8( 1 );
        SendPacket( &update );

        return true;
    }
    else
        return false;
}

void WorldSession::HandleActivateTaxiFarOpcode ( WorldPacket & recv_data )
{
    CHECK_PACKET_SIZE(recv_data,8+4+4);

    sLog.outDebug( "WORLD: Received CMSG_ACTIVATETAXIEXPRESS" );

    uint64 guid;
    uint32 node_count, _totalcost;

    recv_data >> guid >> _totalcost >> node_count;

    Creature *npc = ObjectAccessor::GetNPCIfCanInteractWith(*_player, guid, UNIT_NPC_FLAG_FLIGHTMASTER);
    if (!npc)
    {
        sLog.outDebug( "WORLD: HandleActivateTaxiFarOpcode - Unit (GUID: %u) not found or you can't interact with it.", uint32(GUID_LOPART(guid)) );
        return;
    }
    // recheck
    CHECK_PACKET_SIZE(recv_data,8+4+4+node_count*4);

    std::vector<uint32> nodes;

    for(uint32 i = 0; i < node_count; ++i)
    {
        uint32 node;
        recv_data >> node;
        nodes.push_back(node);
    }

    if(nodes.empty())
        return;

    sLog.outDebug( "WORLD: Received CMSG_ACTIVATETAXIEXPRESS from %d to %d" ,nodes.front(),nodes.back());

    GetPlayer()->ActivateTaxiPathTo(nodes, 0, npc);
}

void WorldSession::HandleTaxiNextDestinationOpcode(WorldPacket& recv_data)
{
    sLog.outDebug( "WORLD: Received CMSG_MOVE_SPLINE_DONE" );

    // in taxi flight packet received in 2 case:
    // 1) end taxi path in far (multi-node) flight
    // 2) switch from one map to other in case multim-map taxi path
    // we need proccess only (1)

    //movement anticheat code
    /* extract packet */
    MovementInfo movementInfo;
    ReadMovementInfo(recv_data, &movementInfo);
    //<<< end movement anticheat

    uint32 curDest = GetPlayer()->m_taxi.GetTaxiDestination();
    if(!curDest)
    {
        //movement anticheat code
        GetPlayer()->SetPosition(movementInfo.x, movementInfo.y, movementInfo.z, movementInfo.o);
        GetPlayer()->m_movementInfo = movementInfo;
        GetPlayer()->SetUnitMovementFlags(movementInfo.flags);

        int32 timedelta = 0;
        if (GetPlayer()->m_anti_lastmovetime !=0){
            timedelta = movementInfo.time - GetPlayer()->m_anti_lastmovetime;
            GetPlayer()->m_anti_deltamovetime += timedelta;
            GetPlayer()->m_anti_lastmovetime = movementInfo.time;
        } else {
            GetPlayer()->m_anti_lastmovetime = movementInfo.time;
        }

        uint32 CurTime=getMSTime();
        uint32 CurTimeDelta = 0;
        if (GetPlayer()->m_anti_lastMStime != 0){
            CurTimeDelta = CurTime - GetPlayer()->m_anti_lastMStime;
            GetPlayer()->m_anti_deltaMStime += CurTimeDelta;
            GetPlayer()->m_anti_lastMStime = CurTime;
        } else {
            GetPlayer()->m_anti_lastMStime = CurTime;
        }

        //sLog.outBasic("dtime: %d, stime: %d || dMS: %d - dMV: %d || dt: %d", timedelta, CurTime, GetPlayer()->m_anti_deltaMStime,  GetPlayer()->m_anti_deltamovetime);
 
        GetPlayer()->m_anti_justteleported = 1;
        //<<< end movement anticheat
        return;
    }

    TaxiNodesEntry const* curDestNode = sTaxiNodesStore.LookupEntry(curDest);

    if(curDestNode && curDestNode->map_id == GetPlayer()->GetMapId())
    {
        while(GetPlayer()->GetMotionMaster()->GetCurrentMovementGeneratorType()==FLIGHT_MOTION_TYPE)
            GetPlayer()->GetMotionMaster()->MovementExpired(false);
    }

    //movement anticheat code
    GetPlayer()->SetPosition(movementInfo.x, movementInfo.y, movementInfo.z, movementInfo.o);
    GetPlayer()->m_movementInfo = movementInfo;
    GetPlayer()->SetUnitMovementFlags(movementInfo.flags);
    int32 timedelta = 0;
    if (GetPlayer()->m_anti_lastmovetime !=0){
        timedelta = movementInfo.time - GetPlayer()->m_anti_lastmovetime;
        GetPlayer()->m_anti_deltamovetime += timedelta;
        GetPlayer()->m_anti_lastmovetime = movementInfo.time;
    } else {
        GetPlayer()->m_anti_lastmovetime = movementInfo.time;
    }

    uint32 CurTime=getMSTime();
    uint32 CurTimeDelta = 0;
    if (GetPlayer()->m_anti_lastMStime != 0){
        CurTimeDelta = CurTime - GetPlayer()->m_anti_lastMStime;
        GetPlayer()->m_anti_deltaMStime += CurTimeDelta;
        GetPlayer()->m_anti_lastMStime = CurTime;
    } else {
        GetPlayer()->m_anti_lastMStime = CurTime;
    } 
    //<<< end movement anticheat

    // far teleport case
    if(curDestNode && curDestNode->map_id != GetPlayer()->GetMapId())
    {
        if(GetPlayer()->GetMotionMaster()->GetCurrentMovementGeneratorType()==FLIGHT_MOTION_TYPE)
        {
            // short preparations to continue flight
            FlightPathMovementGenerator* flight = (FlightPathMovementGenerator*)(GetPlayer()->GetMotionMaster()->top());

            flight->SetCurrentNodeAfterTeleport();
            Path::PathNode const& node = flight->GetPath()[flight->GetCurrentNode()];
            flight->SkipCurrentNode();

            GetPlayer()->TeleportTo(curDestNode->map_id,node.x,node.y,node.z,GetPlayer()->GetOrientation());
        }
        return;
    }

    uint32 destinationnode = GetPlayer()->m_taxi.NextTaxiDestination();
    if ( destinationnode > 0 )                              // if more destinations to go
    {
        // current source node for next destination
        uint32 sourcenode = GetPlayer()->m_taxi.GetTaxiSource();

        // Add to taximask middle hubs in taxicheat mode (to prevent having player with disabled taxicheat and not having back flight path)
        if (GetPlayer()->isTaxiCheater())
        {
            if(GetPlayer()->m_taxi.SetTaximaskNode(sourcenode))
            {
                WorldPacket data(SMSG_NEW_TAXI_PATH, 0);
                _player->GetSession()->SendPacket( &data );
            }
        }

        sLog.outDebug( "WORLD: Taxi has to go from %u to %u", sourcenode, destinationnode );

        uint16 MountId = objmgr.GetTaxiMount(sourcenode, GetPlayer()->GetTeam());

        uint32 path, cost;
        objmgr.GetTaxiPath( sourcenode, destinationnode, path, cost);

        if(path && MountId)
            SendDoFlight( MountId, path, 1 );               // skip start fly node
        else
            GetPlayer()->m_taxi.ClearTaxiDestinations();    // clear problematic path and next
    }
    else
        GetPlayer()->m_taxi.ClearTaxiDestinations();        // not destinations, clear source node
}

void WorldSession::HandleActivateTaxiOpcode( WorldPacket & recv_data )
{
    CHECK_PACKET_SIZE(recv_data,8+4+4);

    sLog.outDebug( "WORLD: Received CMSG_ACTIVATETAXI" );

    uint64 guid;
    std::vector<uint32> nodes;
    nodes.resize(2);

    recv_data >> guid >> nodes[0] >> nodes[1];
    sLog.outDebug( "WORLD: Received CMSG_ACTIVATETAXI from %d to %d" ,nodes[0],nodes[1]);
    Creature *npc = ObjectAccessor::GetNPCIfCanInteractWith(*_player, guid, UNIT_NPC_FLAG_FLIGHTMASTER);
    if (!npc)
    {
        sLog.outDebug( "WORLD: HandleActivateTaxiOpcode - Unit (GUID: %u) not found or you can't interact with it.", uint32(GUID_LOPART(guid)) );
        return;
    }

    GetPlayer()->ActivateTaxiPathTo(nodes, 0, npc);
}
