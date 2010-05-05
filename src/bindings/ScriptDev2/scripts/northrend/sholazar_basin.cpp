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
SDName: Sholazar_Basin
SD%Complete: 100
SDComment: Quest support: 12573
SDCategory: Sholazar Basin
EndScriptData */

/* ContentData
npc_vekjik
EndContentData */

#include "precompiled.h"
#include "escort_ai.h"

/*######
## npc_vekjik
######*/

#define GOSSIP_VEKJIK_ITEM1 "Schamane Vekjik, ich habe mit den Großzungen gesprochen und sie wollen Frieden. Auf ihr Geheiß hin \303\274berbringe ich dieses Angebot."
#define GOSSIP_VEKJIK_ITEM2 "Nein, nein... Ich hatte nie vor, unser Volk zu verraten. Ich habe mich nur selbst verteidigt. Es war alles ein Missverst\303\244ndnis."

enum
{
    GOSSIP_TEXTID_VEKJIK1       = 13137,
    GOSSIP_TEXTID_VEKJIK2       = 13138,

    SAY_TEXTID_VEKJIK1          = -1000208,

    SPELL_FREANZYHEARTS_FURY    = 51469,

    QUEST_MAKING_PEACE          = 12573
};

bool GossipHello_npc_vekjik(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->isQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(QUEST_MAKING_PEACE) == QUEST_STATUS_INCOMPLETE)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_VEKJIK_ITEM1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
        pPlayer->SEND_GOSSIP_MENU(GOSSIP_TEXTID_VEKJIK1, pCreature->GetGUID());
        return true;
    }

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_vekjik(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    switch(uiAction)
    {
        case GOSSIP_ACTION_INFO_DEF+1:
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_VEKJIK_ITEM2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);
            pPlayer->SEND_GOSSIP_MENU(GOSSIP_TEXTID_VEKJIK2, pCreature->GetGUID());
            break;
        case GOSSIP_ACTION_INFO_DEF+2:
            pPlayer->CLOSE_GOSSIP_MENU();
            DoScriptText(SAY_TEXTID_VEKJIK1, pCreature, pPlayer);
            pPlayer->AreaExploredOrEventHappens(QUEST_MAKING_PEACE);
            pCreature->CastSpell(pPlayer, SPELL_FREANZYHEARTS_FURY, false);
            break;
    }

    return true;
}

/*######
## npc_injured_oracle
######*/

enum InjuredOracle
{
    SAY_ESCORT_READY                    = -1999795,
    SAY_ESCORT_START                    = -1999794,
    SAY_ESCORT_FINISHED                 = -1999793,
    SAY_AFTER_ESCORT                    = -1999792,

    SPELL_QUEST_READY                   = 53807,
    SPELL_ESCORT_START                  = 51341,

    QUEST_FORTUNATE_MISUNDERSTANDINGS   = 12570
};

#define GOSSIP_INJURED_ORACLE "I am ready to travel to your village now."

struct MANGOS_DLL_DECL npc_injured_oracleAI : public npc_escortAI
{
    npc_injured_oracleAI(Creature* pCreature) : npc_escortAI(pCreature) { Reset(); }

    void Reset(){}
    void WaypointReached(uint32 uiPointId) 
    {
        switch(uiPointId)
        {
            case 24:
                DoScriptText(SAY_ESCORT_FINISHED, m_creature);
                if (Player* pPlayer = GetPlayerForEscort())
                    pPlayer->AreaExploredOrEventHappens(QUEST_FORTUNATE_MISUNDERSTANDINGS);
                break;
            case 25:
                DoScriptText(SAY_AFTER_ESCORT, m_creature);
                break;
            default: break;
        }
    }
};

CreatureAI* GetAI_npc_injured_oracle(Creature* pCreature)
{
    return new npc_injured_oracleAI(pCreature);
}

bool GossipHello_npc_injured_oracle(Player* pPlayer, Creature* pCreature)
{
    if (pCreature->isQuestGiver())
        pPlayer->PrepareQuestMenu(pCreature->GetGUID());

    if (pPlayer->GetQuestStatus(QUEST_FORTUNATE_MISUNDERSTANDINGS) == QUEST_STATUS_INCOMPLETE)
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_INJURED_ORACLE, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);

    pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_injured_oracle(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF+1)
    {
        pPlayer->CLOSE_GOSSIP_MENU();
        if (npc_injured_oracleAI* pEscortAI = dynamic_cast<npc_injured_oracleAI*>(pCreature->AI()))
        {
            pEscortAI->Start(true, false, pPlayer->GetGUID());
            pCreature->setFaction(FACTION_ESCORT_N_NEUTRAL_ACTIVE);
            DoScriptText(SAY_ESCORT_START, pCreature);
            // dunno exactly what should this spell do
            //pPlayer->CastSpell(pCreature, SPELL_ESCORT_START, true);
        }
    }
    return true;
}

bool QuestAccept_fortunate_misunderstandings(Player* pPlayer, Creature* pCreature, const Quest* pQuest)
{
    if (pQuest->GetQuestId() == QUEST_FORTUNATE_MISUNDERSTANDINGS)
    {
        // dunno exactly what should this spell do
        // pCreature->CastSpell(pCreature, SPELL_QUEST_READY, true);
        
        DoScriptText(SAY_ESCORT_READY, pCreature);
    }
    return true;
}

void AddSC_sholazar_basin()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "npc_vekjik";
    newscript->pGossipHello = &GossipHello_npc_vekjik;
    newscript->pGossipSelect = &GossipSelect_npc_vekjik;
    newscript->RegisterSelf();
	
	newscript = new Script;
    newscript->Name = "npc_injured_oracle";
    newscript->GetAI = &GetAI_npc_injured_oracle;
    newscript->pQuestAccept = &QuestAccept_fortunate_misunderstandings;
    newscript->pGossipHello = &GossipHello_npc_injured_oracle;
    newscript->pGossipSelect = &GossipSelect_npc_injured_oracle;
    newscript->RegisterSelf();
}
