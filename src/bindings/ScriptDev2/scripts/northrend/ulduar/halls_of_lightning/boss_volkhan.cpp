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
SDName: Boss Volkhan
SD%Complete: 95% PlayAble
SDComment: Originaly by sd2 modified by ScrappyDoo (c) Andeeria
SDCategory: Halls of Lightning
EndScriptData */

#include "precompiled.h"
#include "halls_of_lightning.h"

enum
{
    SAY_AGGRO                               = -1602032,
    SAY_SLAY_1                              = -1602033,
    SAY_SLAY_2                              = -1602034,
    SAY_SLAY_3                              = -1602035,
    SAY_DEATH                               = -1602036,
    SAY_STOMP_1                             = -1602037,
    SAY_STOMP_2                             = -1602038,
    SAY_FORGE_1                             = -1602039,
    SAY_FORGE_2                             = -1602040,
    EMOTE_TO_ANVIL                          = -1602041,
    EMOTE_SHATTER                           = -1602042,

    SPELL_HEAT_N                            = 52387,
    SPELL_HEAT_H                            = 59528,
    SPELL_SHATTERING_STOMP_N                = 52237,
    SPELL_SHATTERING_STOMP_H                = 59529,

    //unclear how "directions" of spells must be. Last, summoning GO, what is it for? Script depend on:
    SPELL_TEMPER                            = 52238,        //TARGET_SCRIPT boss->anvil
    SPELL_TEMPER_DUMMY                      = 52654,        //TARGET_SCRIPT anvil->boss

    //SPELL_TEMPER_VISUAL                     = 52661,        //summons GO

    SPELL_SUMMON_MOLTEN_GOLEM               = 52405,

    //Molten Golem
    SPELL_BLAST_WAVE                        = 23113,
    SPELL_IMMOLATION_STRIKE_N               = 52433,
    SPELL_IMMOLATION_STRIKE_H               = 59530,
    SPELL_SHATTER_N                         = 52429,
    SPELL_SHATTER_H                         = 59527,

    NPC_VOLKHAN_ANVIL                       = 28823,
    NPC_MOLTEN_GOLEM                        = 28695,
    NPC_BRITTLE_GOLEM                       = 28681,

    POINT_ID_ANVIL                          = 0,
    MAX_GOLEM                               = 2
};

/*######
## Boss Volkhan
######*/

struct MANGOS_DLL_DECL boss_volkhanAI : public ScriptedAI
{
    boss_volkhanAI(Creature *pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        m_bIsRegularMode = pCreature->GetMap()->IsRegularDifficulty();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    bool m_bIsRegularMode;
    bool m_bCanShatter;

    uint64 m_uiGolemsGUID[3][2];
    uint32 m_uiShatterTimer;
    uint32 m_uiHealthAmountModifier;

    void Reset()
    {
        m_bCanShatter = false;
        m_uiHealthAmountModifier = 1;

        if (m_pInstance)
            m_pInstance->SetData(TYPE_VOLKHAN, NOT_STARTED);

        for(uint8 i=0; i<3; ++i)
        {
            m_uiGolemsGUID[i][0] = 0;
            m_uiGolemsGUID[i][1] = 0;
        }
    }

    void Aggro(Unit* pWho)
    {
        DoScriptText(SAY_AGGRO, m_creature);

        SummonGolems();

        if (m_pInstance)
            m_pInstance->SetData(TYPE_VOLKHAN, IN_PROGRESS);
    }

    void JustDied(Unit* pKiller)
    {
        DoScriptText(SAY_DEATH, m_creature);

        if (m_pInstance)
            m_pInstance->SetData(TYPE_VOLKHAN, DONE);
    }

    void KilledUnit(Unit* pVictim)
    {
        switch(urand(0, 2))
        {
            case 0: DoScriptText(SAY_SLAY_1, m_creature); break;
            case 1: DoScriptText(SAY_SLAY_2, m_creature); break;
            case 2: DoScriptText(SAY_SLAY_3, m_creature); break;
        }
    }

    void SummonGolems()
    {
        for(uint8 i=0; i<3; ++i)
        {
            Creature* pGolem = m_creature->SummonCreature(NPC_MOLTEN_GOLEM, m_creature->GetPositionX()+urand(1,4), m_creature->GetPositionY()+urand(1,4), m_creature->GetPositionZ(), m_creature->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 30000);
            if(pGolem)
            {
                pGolem->setFaction(14);
                m_uiGolemsGUID[i][0] = pGolem->GetGUID();
                m_uiGolemsGUID[i][1] = 0;
                if(Unit* pPlayer = SelectUnit(SELECT_TARGET_RANDOM,0))
                    pGolem->AI()->AttackStart(pPlayer);
            }
        }
    }

    void ShatterGolem()
    {
        for(uint8 i=0; i<3; ++i)
        {
            Unit* pGolem = Unit::GetUnit(*m_creature, m_uiGolemsGUID[i][0]);
            if(pGolem && pGolem->isAlive())
            {
                pGolem->CastSpell(pGolem, m_bIsRegularMode ? SPELL_SHATTER_N : SPELL_SHATTER_H, false);
                pGolem->setFaction(35);
                pGolem->SetVisibility(VISIBILITY_OFF);
            }
            m_uiGolemsGUID[i][0] = 0;
            m_uiGolemsGUID[i][1] = 0;
        }
    }

    void UpdateAI(const uint32 uiDiff)
    {
        //Return since we have no target
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        if(m_bCanShatter)
            if(m_uiShatterTimer < uiDiff)
            {
                ShatterGolem();
                m_bCanShatter = false;
            }else m_uiShatterTimer -= uiDiff;

        for(uint8 i=0; i<3; ++i)
        {
            Unit* pGolem = Unit::GetUnit(*m_creature, m_uiGolemsGUID[i][0]);
            if(pGolem && pGolem->isAlive())
                if(pGolem->GetHealth()*100 / pGolem->GetMaxHealth() < 1)
                    m_uiGolemsGUID[i][1] = 1; 
        }

        if(!m_bCanShatter && m_uiGolemsGUID[0][1] == 1 && m_uiGolemsGUID[1][1] == 1 && m_uiGolemsGUID[2][1] == 1) 
        {
            DoCast(m_creature, m_bIsRegularMode ? SPELL_SHATTERING_STOMP_N : SPELL_SHATTERING_STOMP_H);
            m_uiShatterTimer = 3000;
            m_bCanShatter = true;
        }

        // Health check
        if (m_creature->GetHealth()*100 / m_creature->GetMaxHealth() < (100-(20*m_uiHealthAmountModifier)))
        {
            SummonGolems();
            ++m_uiHealthAmountModifier;

            DoScriptText(urand(0, 1) ? SAY_FORGE_1 : SAY_FORGE_2, m_creature);
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_volkhan(Creature* pCreature)
{
    return new boss_volkhanAI(pCreature);
}

bool EffectDummyCreature_boss_volkhan(Unit* pCaster, uint32 uiSpellId, SpellEffectIndex uiEffIndex, Creature* pCreatureTarget)
{
    //always check spellid and effectindex
    if (uiSpellId == SPELL_TEMPER_DUMMY && uiEffIndex == EFFECT_INDEX_0)
    {
        if (pCaster->GetEntry() != NPC_VOLKHAN_ANVIL || pCreatureTarget->GetEntry() != NPC_VOLKHAN)
            return true;

        for(uint8 i = 0; i < MAX_GOLEM; ++i)
        {
            pCreatureTarget->CastSpell(pCaster, SPELL_SUMMON_MOLTEN_GOLEM, true);

            //TODO: remove this line of hack when summon effect implemented
            pCreatureTarget->SummonCreature(NPC_MOLTEN_GOLEM,
                pCaster->GetPositionX(), pCaster->GetPositionY(), pCaster->GetPositionZ(), 0.0f,
                TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 10000);
        }

        //always return true when we are handling this spell and effect
        return true;
    }

    return false;
}

/*######
## npc_volkhan_anvil
######*/

bool EffectDummyCreature_npc_volkhan_anvil(Unit* pCaster, uint32 uiSpellId, SpellEffectIndex uiEffIndex, Creature* pCreatureTarget)
{
    //always check spellid and effectindex
    if (uiSpellId == SPELL_TEMPER && uiEffIndex == EFFECT_INDEX_0)
    {
        if (pCaster->GetEntry() != NPC_VOLKHAN || pCreatureTarget->GetEntry() != NPC_VOLKHAN_ANVIL)
            return true;

        DoScriptText(EMOTE_TO_ANVIL, pCaster);

        float fX, fY, fZ;
        pCreatureTarget->GetContactPoint(pCaster, fX, fY, fZ, INTERACTION_DISTANCE);

        pCaster->AttackStop();

        if (pCaster->GetMotionMaster()->GetCurrentMovementGeneratorType() == CHASE_MOTION_TYPE)
            pCaster->GetMotionMaster()->MovementExpired();

        ((Creature*)pCaster)->MonsterMove(fX, fY, fZ, 1);

        pCreatureTarget->CastSpell(pCaster, SPELL_TEMPER_DUMMY, false);

        //always return true when we are handling this spell and effect
        return true;
    }

    return false;
}

/*######
## mob_molten_golem
######*/

struct MANGOS_DLL_DECL mob_molten_golemAI : public ScriptedAI
{
    mob_molten_golemAI(Creature *pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        m_bIsRegularMode = pCreature->GetMap()->IsRegularDifficulty();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    bool m_bIsRegularMode;
    bool m_bIsFrozen;

    uint32 m_uiBlast_Timer;
    uint32 m_uiDeathDelay_Timer;
    uint32 m_uiImmolation_Timer;

    void Reset()
    {
        m_bIsFrozen = false;

        m_uiBlast_Timer = 20000;
        m_uiDeathDelay_Timer = 0;
        m_uiImmolation_Timer = 5000;
    }

    void UpdateAI(const uint32 uiDiff)
    {
        //Return since we have no target or if we are frozen
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim() || m_bIsFrozen)
            return;

        if(m_bIsFrozen)
        {   
            m_creature->StopMoving();
            m_creature->GetMotionMaster()->Clear();
            m_creature->GetMotionMaster()->MoveIdle();
            return;
        }

        if(m_creature->GetHealth()*100 / m_creature->GetMaxHealth() < 1)
        {
            if (m_creature->IsNonMeleeSpellCasted(false))
                m_creature->InterruptNonMeleeSpells(false);

            m_creature->RemoveAllAuras();
            m_creature->AttackStop();

            if (m_creature->GetMotionMaster()->GetCurrentMovementGeneratorType() == CHASE_MOTION_TYPE)
                m_creature->GetMotionMaster()->MovementExpired();

            m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            m_bIsFrozen = true;
        }

        if (m_uiBlast_Timer < uiDiff)
        {
            DoCast(m_creature, SPELL_BLAST_WAVE);
            m_uiBlast_Timer = 20000;
        }
        else
            m_uiBlast_Timer -= uiDiff;

        if (m_uiImmolation_Timer < uiDiff)
        {
            if(m_creature->getVictim())
                DoCast(m_creature->getVictim(), m_bIsRegularMode ? SPELL_IMMOLATION_STRIKE_N : SPELL_IMMOLATION_STRIKE_H);
            m_uiImmolation_Timer = 5000;
        }
        else
            m_uiImmolation_Timer -= uiDiff;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_mob_molten_golem(Creature* pCreature)
{
    return new mob_molten_golemAI(pCreature);
}

void AddSC_boss_volkhan()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "boss_volkhan";
    newscript->GetAI = &GetAI_boss_volkhan;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "mob_molten_golem";
    newscript->GetAI = &GetAI_mob_molten_golem;
    newscript->RegisterSelf();
}
