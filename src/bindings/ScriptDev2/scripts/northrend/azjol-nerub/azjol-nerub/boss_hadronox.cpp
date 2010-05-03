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

/* Script Data Start
SDName: Boss hadronox
SDAuthor: ScrappyDoo
SD%Complete: 95%
SDComment: pre event not made yet
SDCategory:
Script Data End */

/*** SQL START ***
update creature_template set scriptname = 'boss_hadronox' where entry = '';
*** SQL END ***/

#include "precompiled.h"
#include "azjol-nerub.h"

enum
{
	SPELL_WEB_FRONT_DOORS				= 53177, 

	SPELL_ACID_CLOUD					= 53400,
	H_SPELL_ACID_CLOUD					= 59419,
	SPELL_LEECH_POISON					= 53030,
	H_SPELL_LEECH_POISON				= 59417,
	SPELL_LEECH_POISON_DEADTRIGGER		= 53800, 
	SPELL_PIERCE_ARMOR					= 53418,
	SPELL_WEB_GRAB						= 53406,
	H_SPELL_WEB_GRAB					= 59420,

	MOB_CRUSHER							= 28922,
	MOB_CRYPTFIEND						= 29118,
	MOB_CHAMPION						= 29117,
};

float MobPos[6][3] =
{
	{515.017f,562.666f,734.367f},
	{541.832f,556.990f,731.922f},
	{508.719f,562.489f,734.799f},
	{536.496f,558.947f,732.412f},
	{520.641f,562.366f,733.852f},
	{546.612f,554.267f,731.487f},
};

struct MANGOS_DLL_DECL boss_hadronoxAI : public ScriptedAI
{
    boss_hadronoxAI(Creature* pCreature) : ScriptedAI(pCreature)
	{
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        m_bIsRegularMode = pCreature->GetMap()->IsRegularDifficulty();
        Reset();
    }

	ScriptedInstance* m_pInstance;
    bool m_bIsRegularMode;
    bool m_bIsPhase;

    uint64 m_uiCrusherGUID[2];
	uint32 m_uiAcidCloudTimer;
	uint32 m_uiLeechPoisonTimer;
	uint32 m_uiPierceArmorTimer;
	uint32 m_uiWebGrabTimer;
    uint8  m_uiPhase;

    void Reset() 
	{
		//Timers
		m_uiAcidCloudTimer = 12000;
		m_uiLeechPoisonTimer = 10000;
		m_uiPierceArmorTimer = 7000;
		m_uiWebGrabTimer = 20000;
		
        m_bIsPhase = false;
        m_uiPhase = 0;

        for(uint8 i=0; i<3; ++i)
            m_uiCrusherGUID[i] = 0;

		m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
		m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
	}

    void Aggro(Unit* who)
    {
		m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
		m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

        m_creature->StopMoving();
        m_creature->GetMotionMaster()->Clear();
        m_creature->GetMotionMaster()->MoveIdle();

        SpawnGroups(1);
        ++m_uiPhase;
        if (m_pInstance)
            m_pInstance->SetData(TYPE_HADRONOX, IN_PROGRESS);
    }

    void KilledUnit(Unit *victim)
    {
        if (victim == m_creature)
            return;

		if(victim->HasAura(m_bIsRegularMode ? SPELL_LEECH_POISON : H_SPELL_LEECH_POISON))
			DoCast(m_creature, SPELL_LEECH_POISON_DEADTRIGGER);
    }

    void SpawnGroups(uint8 i)
    {
        uint32 ID[3];
        uint8 h=1;
        if(i == 2)
            h=2;
      

        float fSpawnY = m_creature->GetPositionX();
        float fSpawnX = m_creature->GetPositionY();

        ID[0] = MOB_CRUSHER; 
        ID[1] = MOB_CRYPTFIEND; 
        ID[2] = MOB_CHAMPION;

        for(uint8 k=0; k<h; ++k)
        {
            Creature* Trash = m_creature->SummonCreature(ID[0], fSpawnX+1, fSpawnY+1, m_creature->GetPositionZ(), m_creature->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 10000);
            if(Trash) 
            {
                if(m_creature->getVictim())
                    Trash->AI()->AttackStart(m_creature->getVictim());
                m_uiCrusherGUID[k] = Trash->GetGUID();
            }
        }

        for(uint8 l=0; l<i; ++l)
            for(uint8 k=1; k<3; ++k)
            {
                Creature* Trash = m_creature->SummonCreature(ID[k], fSpawnX+1, fSpawnY+1, m_creature->GetPositionZ(), m_creature->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 10000);
                if(Trash) 
			        if (Unit* target = SelectUnit(SELECT_TARGET_RANDOM, 0))
				        Trash->AI()->AttackStart(target);
            }
    }

    void UpdateAI(const uint32 diff)
    {
		//Return since we have no target
		if (!m_creature->SelectHostileTarget() || !m_creature->getVictim() )
		   return;  

        if(!m_bIsPhase)
        {
            m_creature->StopMoving();
            m_creature->GetMotionMaster()->Clear();
            m_creature->GetMotionMaster()->MoveIdle();

            if(m_pInstance)
            {            
                if(m_uiPhase == 2)
                {
                    Unit* Crusher1 = Unit::GetUnit(*m_creature, m_uiCrusherGUID[0]);
                    Unit* Crusher2 = Unit::GetUnit(*m_creature, m_uiCrusherGUID[1]);
                    if(Crusher1 && !Crusher1->isAlive() && Crusher2 && !Crusher2->isAlive())
                    {
                        m_uiAcidCloudTimer = 12000;
	                    m_uiLeechPoisonTimer = 10000;
	                    m_uiPierceArmorTimer = 7000;
	                    m_uiWebGrabTimer = 20000;
                        m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                        m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                        m_creature->GetMotionMaster()->MoveChase(m_creature->getVictim());
                        m_bIsPhase = true;
                    }
                }

                if(m_uiPhase == 1)
                    if(Unit* Crusher = Unit::GetUnit(*m_creature, m_uiCrusherGUID[0]))
                        if(!Crusher->isAlive())  
                        {
                            SpawnGroups(2);
                            ++m_uiPhase;
                        }
            }
            return;
        }

		if(m_uiPierceArmorTimer < diff)
		{
            if(m_creature->getVictim())
			    DoCast(m_creature->getVictim(), SPELL_PIERCE_ARMOR); 
			m_uiPierceArmorTimer = 8000+rand()%8000;
		}else m_uiPierceArmorTimer -= diff;

		if(m_uiAcidCloudTimer < diff)
		{
			if(Unit* target = SelectUnit(SELECT_TARGET_RANDOM, 0))
				m_creature->CastSpell(target, m_bIsRegularMode ? SPELL_ACID_CLOUD : H_SPELL_ACID_CLOUD, false);
			m_uiAcidCloudTimer = 25000+rand()%10000;
		}else m_uiAcidCloudTimer -= diff;

		if(m_uiLeechPoisonTimer < diff)
		{
			for(uint8 i=0; i<3; ++i)
			{
				if(Unit* target = SelectUnit(SELECT_TARGET_RANDOM, 0))
					m_creature->CastSpell(target, m_bIsRegularMode ? SPELL_LEECH_POISON : H_SPELL_LEECH_POISON, false);
			}
			m_uiLeechPoisonTimer = 10000;
		}else m_uiLeechPoisonTimer -= diff;

        //Web Grab kicning in the air need hack this.
        /*
		if(m_uiWebGrabTimer < diff)
		{
            if(m_creature->getVictim())
			    DoCast(m_creature->getVictim(), m_bIsRegularMode ? SPELL_WEB_GRAB : H_SPELL_WEB_GRAB);
			m_uiWebGrabTimer = 25000+rand()%10000;
		}else m_uiWebGrabTimer -= diff;
        */

		DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_hadronox(Creature *_Creature)
{
    return new boss_hadronoxAI (_Creature);
}

void AddSC_boss_hadronox()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name="boss_hadronox";
    newscript->GetAI = &GetAI_boss_hadronox;
    newscript->RegisterSelf();
}
