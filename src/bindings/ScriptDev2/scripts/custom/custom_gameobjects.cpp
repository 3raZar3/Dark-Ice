/* Copyright (C) 2009 - 2010 Hellscream Network <http://www.hellscreamwow.com/>
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
SDName: custom_gameobjects
SD%Complete: 100
SDComment: Containts different custom GameObjects. Check the code to know what they do. (Don't forget to apply SQL files!)
SDCategory: Game Objects
SDAuthor: Darkiss @ Hellscream Network <http://www.hellscreamwow.com/>
EndScriptData */

#include "precompiled.h"

// Deception Orb
bool GOHello_custom_gameobject_deception_orb(Player* pPlayer, GameObject* pGo)
{
    if (pPlayer->HasAura(16739))
	{
        pPlayer->RemoveAurasDueToSpell(16739);
		return true;
	}
    else
	{
        pPlayer->CastSpell(pPlayer, 16739, true);
		return true;
	}
}

// Morpher
bool GOHello_custom_gameobject_morph(Player* pPlayer, GameObject* pGo)
{
    uint16 display_id;
    uint32 select = urand(0, 55);
    switch(select)
    {
        case 0: display_id = 6374;			// Morph's into a Black Drake
            break;
        case 1: display_id = 16358;			// Morph's into a Pig
            break;
        case 2: display_id = 28010;			// Morph's into a Spirit Beast
            break;
        case 3: display_id = 20521;			// Morph's into a Green Core Hount
            break;
        case 4: display_id = 19913;			// Morph's into a Blue Wyrm
            break;
        case 5: display_id = 14521;			// Morph's into a Black Qiraji Battle Tank
            break;
        case 6: display_id = 21371;			// Morph's into a Just Hatched Serpent
            break;
        case 7: display_id = 5240;			// Morph's into a Devilsaur
            break;
        case 8: display_id = 24564;			// Morph's into a Huge Worm
            break;
        case 9: display_id = 18417;			// Morph's into a Cockosilisk
            break;
        case 10: display_id = 24641;		// Morph's into a Arthas
            break;
        case 11: display_id = 24378;		// Morph's into a Blue Tree of Life
            break;
        case 12: display_id = 23941;		// Morph's into a Nerubian Flying Spider
            break;
        case 13: display_id = 18417;		// Morph's into a Cockosilisk
            break;
        case 14: display_id = 23942;		// Morph's into a Nerubian Spider
            break;
        case 15: display_id = 23880;		// Morph's into a Cryptlord
            break;
        case 16: display_id = 25082;		// Morph's into a Northrend Nymph
            break;
        case 17: display_id = 24978;		// Morph's into a Black Drake
            break;
        case 18: display_id = 24926;		// Morph's into a Penguin
            break;
        case 19: display_id = 23946;		// Morph's into a Small Polar Bear
            break;
        case 20: display_id = 23681;		// Morph's into a Undead Monstrositie... Thing...
            break;
        case 21: display_id = 23684;		// Morph's into a Blue Air Elemental
            break;
        case 22: display_id = 23838;		// Morph's into a Worgen
            break;
        case 23: display_id = 24128;		// Morph's into a Nerubian Spider Necromancer
            break;
        case 24: display_id = 24217;		// Morph's into a Keeper of The Groove
            break;
        case 25: display_id = 24227;		// Morph's into a Iron Golem
            break;
        case 26: display_id = 24273;		// Morph's into a Ghoul
            break;
        case 27: display_id = 24274;		// Morph's into a Big Skelleton
            break;
        case 28: display_id = 24275;		// Morph's into a Ghoul... Monster... Thing...
            break;
        case 29: display_id = 24804;		// Morph's into a Scourge Necromancer
            break;
        case 30: display_id = 24800;		// Morph's into a White Mounted Undead
            break;
        case 31: display_id = 24801;		// Morph's into a Scourge Construct... Thing...
            break;
        case 32: display_id = 24802;		// Morph's into a Green Mounted Undead
            break;
        case 33: display_id = 24794;		// Morph's into a Blue Mounted Undead
            break;
        case 34: display_id = 24593;		// Morph's into a Black Winged Demon
            break;
        case 35: display_id = 24495;		// Morph's into a Scourge Sorcerrer
            break;
        case 36: display_id = 23749;		// Morph's into a Shattrath City Leader
            break;
        case 37: display_id = 23912;		// Morph's into a Small White Wyrm
            break;
        case 38: display_id = 23951;		// Morph's into a Deer
            break;
        case 39: display_id = 24935;		// Morph's into a Night Elf Death Knight
            break;
        case 40: display_id = 24930;		// Morph's into a Blood Elf Death Knight
            break;
        case 41: display_id = 24925;		// Morph's into a Something... Webbed...
            break;
        case 42: display_id = 24918;		// Morph's into a Small Evil Gnome
            break;
        case 43: display_id = 24911;		// Morph's into a Chrono-Lord
            break;
        case 44: display_id = 24910;		// Morph's into a Frost Hound
            break;
        case 45: display_id = 24905;		// Morph's into a Hellspawn
            break;
        case 46: display_id = 24689;		// Morph's into a Mudkip
            break;
        case 47: display_id = 24685;		// Morph's into a Small Tuskan
            break;
        case 48: display_id = 24591;		// Morph's into a Human Death Knight Red Armor
            break;
        case 49: display_id = 24590;		// Morph's into a Scourge Geist
            break;
        case 50: display_id = 24417;		// Morph's into a Huge Ghostly Titan
            break;
        case 51: display_id = 24127;		// Morph's into a Jeeves
            break;
        case 52: display_id = 23386;		// Morph's into a Human Death Knight Blue Armor
            break;
        case 53: display_id = 25004;		// Morph's into a Some sort of hell spawn... Thing...
            break;
        case 54: display_id = 25005;		// Morph's into a Cougar
            break;
        case 55: display_id = 25517;		// Morph's into a Black Winged Valkir'eye
            break;
    }
    if (pPlayer->GetDisplayId() != pPlayer->GetNativeDisplayId())
	{
        pPlayer->DeMorph();
		return true;
	}
    else
	{
        pPlayer->SetDisplayId(display_id);
		return true;
	}
}

// Transformer
bool GOHello_custom_gameobject_transform(Player* pPlayer, GameObject* pGo)
{
    uint16 spellId;
    uint32 select = urand(0, 17);
    switch(select)
    {
        case 0: spellId = 8213; 	// Cast Spell: Flip Out (Transforms)
            break;
        case 1: spellId = 30167; 	// Cast Spell: Red Ogre Costume (Transforms)
            break;
        case 2: spellId = 44755;	// Cast Spell: Snowflakes (Adds snow to the character)
            break;
        case 3: spellId = 16591; 	// Cast Spell: Noggenfogger Elixir (Transforms into a Skelleton)
            break;
        case 4: spellId = 16593; 	// Cast Spell: Noggenfogger Elixir (Makes you light...)
            break;
        case 5: spellId = 16595; 	// Cast Spell: Noggenfogger Elixir (Shrinks)
            break;
        case 6: spellId = 39542; 	// Cast Spell: Blessing of O'ros (You feel good...)
            break;
        case 7: spellId = 59395; 	// Cast Spell: Abomination Hook (Inflicts 150 Physical damage and pulls the target to the caster.)
            break;
        case 8: spellId = 43944;	// Cast Spell: Beer Goggles (Everyone is attractive...)
            break;
        case 9: spellId = 42156; 	// Cast Spell: Beer Goggles (Everyone is a lil bit more attractive... xD)
            break;
        case 10: spellId = 51413; 	// Cast Spell: Barreled! (You can't see!)
            break;
        case 11: spellId = 52627; 	// Cast Spell: Arrow in Face (Headshot ?!)
            break;
        case 12: spellId = 64580; 	// Cast Spell: Algalon Event Beam Climax (Poof!)
            break;
        case 13: spellId = 23002; 	// Cast Spell: Alert! (Your presence was revealed by an Alarm-o-Bot!)
            break;
        case 14: spellId = 54932; 	// Cast Spell: Aerial Leap (Nothing to see here, move along.)
            break;
        case 15: spellId = 72770;	// Cast Spell: Abracadaver! (Summons a Cadaver that will protect you for 1 min.)
            break;
        case 16: spellId = 26680; 	// Cast Spell: Adored (You have received a gift of adoration!)
            break;
        case 17: spellId = 46433; 	// Cast Spell: Ahune Spank Knockback and Snow (Lol ?)
            break;
    }
    if (pPlayer->HasAura(spellId))
	{
        pPlayer->RemoveAurasDueToSpell(spellId);
		return true;
	}
    else
	{
        pPlayer->CastSpell(pPlayer, spellId, true);
		return true;
	}
}

// Chest Bank
bool GOHello_custom_gameobject_chestbank(Player *player, GameObject* _GO)
{
	player->GetSession()->SendShowBank(player->GetGUIDLow());
	return true;
}

void AddSC_custom_gameobjects()
{
    Script *newscript;

    newscript                   = new Script;
    newscript->Name             = "custom_gameobject_deception_orb";
    newscript->pGOHello         = &GOHello_custom_gameobject_deception_orb;
    newscript->RegisterSelf();

    newscript                   = new Script;
    newscript->Name             = "custom_gameobject_morph";
    newscript->pGOHello         = &GOHello_custom_gameobject_morph;
    newscript->RegisterSelf();

    newscript                   = new Script;
    newscript->Name             = "custom_gameobject_transform";
    newscript->pGOHello         = &GOHello_custom_gameobject_transform;
    newscript->RegisterSelf();

	newscript                   = new Script;
	newscript->Name             = "custom_gameobject_chestbank";
	newscript->pGOHello         = &GOHello_custom_gameobject_chestbank;
    newscript->RegisterSelf();
}