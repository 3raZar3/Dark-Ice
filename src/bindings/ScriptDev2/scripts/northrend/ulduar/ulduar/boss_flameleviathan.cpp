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
SDName: Flame Leviathan
SD%Complete: 0
SDComment: PH.
SDCategory: Ulduar
EndScriptData */

#include "precompiled.h"
#include "def_ulduar.h"

#define SP_BATTERING_RAM    62376
#define SP_FLAME_VENTS      62396
#define SP_GATHERING_SPEED  62375

#define SP_ROCKET           62400

#define SAY_AGGRO   -1603009
#define SAY_DEATH   -1603010
#define SAY_SLAY    -1603011




struct MANGOS_DLL_DECL boss_flameleviathanAI : public ScriptedAI
{
    boss_flameleviathanAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Regular = pCreature->GetMap()->IsRegularDifficulty();
        Reset();
    }

    ScriptedInstance *pInstance;
    bool Regular;

    uint32 BatteringRamTimer;
    uint32 FlameVentsTimer;
    uint32 RocketTimer;

    void Reset()
    {
        BatteringRamTimer = 15000 + rand()%20000;
        FlameVentsTimer = 20000 + rand()%10000;
        RocketTimer = 1000;

        if(pInstance) pInstance->SetData(TYPE_LEVIATHAN, NOT_STARTED);
    }

    void Aggro(Unit *who) 
    {
        if(pInstance) pInstance->SetData(TYPE_LEVIATHAN, IN_PROGRESS);

        DoScriptText(SAY_AGGRO, m_creature);
    }

    void JustDied(Unit *killer)
    {
        if(pInstance) pInstance->SetData(TYPE_LEVIATHAN, DONE);

        DoScriptText(SAY_DEATH, m_creature);
    }

    void KilledUnit(Unit *who)
    {
        DoScriptText(SAY_SLAY, m_creature);
    }

    void DamageTaken(Unit *pDoneBy, uint32 &dmg)
    {
        //компенсируем отсутствие машинок и большое хп босса
        dmg *= 4;
    }

    void UpdateAI(const uint32 diff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        if(FlameVentsTimer < diff)
        {
            DoCast(m_creature->getVictim(), SP_FLAME_VENTS);
            FlameVentsTimer = 30000 + rand()%20000;
        }
        else FlameVentsTimer -= diff;

        if(BatteringRamTimer < diff)
        {
            DoCast(m_creature->getVictim(), SP_BATTERING_RAM);
            BatteringRamTimer = 25000 + rand()%15000;
        }
        else BatteringRamTimer -= diff;

        if(RocketTimer < diff)
        {
            Unit *target = SelectUnit(SELECT_TARGET_RANDOM, 0);
            int32 dmg = Regular ? (3000 + rand()%2000) : (2000 + rand()%1200);
            if(target && target->isAlive())
                m_creature->CastCustomSpell(target, SP_ROCKET, &dmg, 0, 0, false);
            RocketTimer = 3000 + rand()%2000;
        }
        else RocketTimer -= diff;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_flameleviathanAI(Creature* pCreature)
{
    return new boss_flameleviathanAI(pCreature);
}

void AddSC_boss_flameleviathan()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "boss_flameleviathan";
    newscript->GetAI = &GetAI_boss_flameleviathanAI;
    newscript->RegisterSelf();
}
