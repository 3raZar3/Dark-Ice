#ifndef _PLAYERBOTMGR_H
#define _PLAYERBOTMGR_H

#include "Common.h"

class WorldPacket;
class Player;
class Unit;
class Object;
class Item;
class PlayerbotClassAI;

typedef UNORDERED_MAP<uint64, Player*> PlayerBotMap;

class MANGOS_DLL_SPEC PlayerbotMgr
{
    public:
        PlayerbotMgr(Player* const master);
        virtual ~PlayerbotMgr();

        // This is called from Unit.cpp and is called every second (I think)
        void UpdateAI(const uint32 p_time);

        // This is called whenever the master sends a packet to the server.
        // These packets can be viewed, but not edited.
        // It allows bot creators to craft AI in response to a master's actions.
        // For a list of opcodes that can be caught see Opcodes.cpp (CMSG_* opcodes only)
        // Notice: that this is static which means it is called once for all bots of the master.
        void HandleMasterIncomingPacket(const WorldPacket& packet);
        void HandleMasterOutgoingPacket(const WorldPacket& packet);

        void AddPlayerBot(uint64 guid);
        void LogoutPlayerBot(uint64 guid);
        Player* GetPlayerBot (uint64 guid) const;
        Player* GetMaster() const { return m_master; };
        PlayerBotMap::const_iterator GetPlayerBotsBegin() const { return m_playerBots.begin(); }
        PlayerBotMap::const_iterator GetPlayerBotsEnd()   const { return m_playerBots.end();   }

        void LogoutAllBots();
        void RemoveAllBotsFromGroup();
        void OnBotLogin(Player * const bot);
        void Stay();

    public:
        // config variables
        uint32 m_confRestrictBotLevel;
    uint32 m_confDisableBotsInRealm;
    uint32 m_confMaxNumBots;
        bool m_confDisableBots;
        bool m_confDebugWhisper;
        float m_confFollowDistance[2];

    private:
        Player* const m_master;
        PlayerBotMap m_playerBots;
};

#endif
