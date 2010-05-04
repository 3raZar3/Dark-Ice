/* Copyright (C) 2006 - 2010 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

/* ScriptData
SDName: icecrown_teleport
SD%Complete: 30%
SDComment: by /dev/rsa
SDCategory: Icecrown Citadel
EndScriptData */
#include "precompiled.h"
#include "def_spire.h"

enum 
{
PORTALS_COUNT = 8
};

struct t_Locations
{
    char const* name;
    float x, y, z;
    uint32 spellID;
    bool state;
    bool active;
    uint32 encounter;
};

static t_Locations PortalLoc[]=
{
{"Hammer of the world",-17.1928f, 2211.44f, 30.1158f,0,true,true,TYPE_TELEPORT}, //
{"Chapel Damned",-503.62f, 2211.47f, 62.8235f,70856,false,true,TYPE_MARROWGAR},  //
{"Cephalic shaft",-615.145f, 2211.47f, 199.972f,70857,false,true,TYPE_DEATHWHISPER}, //
{"The rise of deadly",-549.131f, 2211.29f, 539.291f,70858,false,true,TYPE_FLIGHT_WAR}, //
{"Icecrown Citadel",4198.42f, 2769.22f, 351.065f,70859,false,true,TYPE_SAURFANG}, //
{"Sanctuary of blood",4490.205566f, 2769.275635f, 403.983765f,0,false,true,TYPE_BLOOD_COUNCIL}, //
{"Lair of the Queen of Ice",4356.580078f, 2565.75f, 220.401993f,70861,false,true,TYPE_VALITHRIA}, //
{"Frozen Throne",529.3f, -2124.7f, 1041, 70860,false,true,TYPE_SINDRAGOSA}, //
};


bool GOGossipSelect_go_icecrown_teleporter(Player *player, GameObject* pGo, uint32 sender, uint32 action)
{
    int32 damage = 0;
    if(sender != GOSSIP_SENDER_MAIN) return true;

    if(!player->getAttackers().empty()) return true;

    if(action >= 0 && action <= PORTALS_COUNT)
    player->TeleportTo(MAP_NUM, PortalLoc[action].x, PortalLoc[action].y, PortalLoc[action].z, 0);
    if (PortalLoc[action].spellID !=0 ) 
           if (SpellEntry const* spell = (SpellEntry *)GetSpellStore()->LookupEntry(PortalLoc[action].spellID))
                  player->AddAura(new BossAura(spell, EFFECT_INDEX_2, &damage,(Unit*)player, (Unit*)player));

    player->CLOSE_GOSSIP_MENU();
    return true;
}

bool GOGossipHello_go_icecrown_teleporter(Player *player, GameObject* pGo)
{
    ScriptedInstance *pInstance = (ScriptedInstance *) pGo->GetInstanceData();
    if(!pInstance) return true;

    for(uint8 i = 0; i < PORTALS_COUNT; i++) {
    if (PortalLoc[i].active == true && (PortalLoc[i].state == true || pInstance->GetData(TYPE_TELEPORT) >= PortalLoc[i].encounter))
             player->ADD_GOSSIP_ITEM(GOSSIP_ICON_TAXI, PortalLoc[i].name, GOSSIP_SENDER_MAIN, i);
    };
    player->SEND_GOSSIP_MENU(TELEPORT_GOSSIP_MESSAGE, pGo->GetGUID());
    return true;
}

bool GOGossipHello_go_plague_sigil(Player *player, GameObject* pGo)
{
    ScriptedInstance *pInstance = (ScriptedInstance *) pGo->GetInstanceData();
    if(!pInstance) return false;

    if (pInstance->GetData(TYPE_FESTERGUT) == DONE)
           pInstance->SetData(TYPE_FESTERGUT, DONE);
    if (pInstance->GetData(TYPE_ROTFACE) == DONE)
           pInstance->SetData(TYPE_ROTFACE, DONE);

    return true;
}

bool GOGossipHello_go_bloodwing_sigil(Player *player, GameObject* pGo)
{
    ScriptedInstance *pInstance = (ScriptedInstance *) pGo->GetInstanceData();
    if(!pInstance) return false;

    if (pInstance->GetData(TYPE_PUTRICIDE) == DONE)
           pInstance->SetData(TYPE_PUTRICIDE, DONE);

    return true;
}


void AddSC_icecrown_teleporter()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "go_icecrown_teleporter";
    newscript->pGOGossipHello  = &GOGossipHello_go_icecrown_teleporter;
    newscript->pGOGossipSelect = &GOGossipSelect_go_icecrown_teleporter;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_plague_sigil";
    newscript->pGOGossipHello  = &GOGossipHello_go_plague_sigil;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "go_bloodwing_sigil";
    newscript->pGOGossipHello  = &GOGossipHello_go_bloodwing_sigil;
    newscript->RegisterSelf();
}
