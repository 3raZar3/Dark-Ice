-- Fingers of Frost proc rate
DELETE FROM spell_proc_event WHERE entry IN(44543, 44545);
INSERT INTO spell_proc_event (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES('44543','0','3','33555104','0','0','0','0','0','7','0'), ('44545','0','3','33555104','0','0','0','0','0','15','0');

-- AN HC
DELETE FROM `creature_onkill_reputation` WHERE creature_id IN (31612,31611,31610,31585,31586,31587,31588,31589,31590,31591,31592,31593,31594,31595,31596,31597,31598,31599,31600,31601,31602,31603,31604,31605,31606,31607,31608,31609,31647,31613,31614,31615,31616,31617);
INSERT INTO `creature_onkill_reputation` VALUES
(31612, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), -- Krik'thir the Gatewatcher heroic
(31611, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), -- Hadronox heroic
(31610, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), -- Anub'arak heroic
(31585, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Animated Bones heroic
(31586, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Assassin heroic
(31587, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Brood Keeper heroic
(31588, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Champion heroic
(31589, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Champion heroic
(31590, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Champion heroic
(31591, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Champion heroic
(31592, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Crusher heroic
(31593, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Crypt Fiend heroic
(31594, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Crypt Fiend heroic
(31595, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Crypt Fiend heroic
(31596, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Crypt Fiend heroic
(31597, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Darter heroic
(31598, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Darter heroic
(31599, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Guardian heroic
(31600, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Necromancer heroic
(31601, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Necromancer heroic
(31602, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Necromancer heroic
(31603, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Necromancer heroic
(31604, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Prime Guard heroic
(31605, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Shadowcaster heroic
(31606, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Skirmisher heroic
(31607, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Venomancer heroic
(31608, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Warrior heroic
(31609, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Webspinner heroic
(31647, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Carrion Beetle heroic
(31613, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Skittering Infector heroic
(31614, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Skittering Swarmer heroic
(31615, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Watcher Gashra heroic
(31616, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Watcher Narjil heroic
(31617, 1037, 1052, 7, 0, 15, 7, 0, 15, 1); -- Watcher Silthik heroic

-- AN HC
DELETE FROM `creature_onkill_reputation` WHERE creature_id IN (31612,31611,31610,31585,31586,31587,31588,31589,31590,31591,31592,31593,31594,31595,31596,31597,31598,31599,31600,31601,31602,31603,31604,31605,31606,31607,31608,31609,31647,31613,31614,31615,31616,31617);
INSERT INTO `creature_onkill_reputation` VALUES
(31612, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), -- Krik'thir the Gatewatcher heroic
(31611, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), -- Hadronox heroic
(31610, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), -- Anub'arak heroic
(31585, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Animated Bones heroic
(31586, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Assassin heroic
(31587, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Brood Keeper heroic
(31588, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Champion heroic
(31589, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Champion heroic
(31590, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Champion heroic
(31591, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Champion heroic
(31592, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Crusher heroic
(31593, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Crypt Fiend heroic
(31594, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Crypt Fiend heroic
(31595, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Crypt Fiend heroic
(31596, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Crypt Fiend heroic
(31597, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Darter heroic
(31598, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Darter heroic
(31599, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Guardian heroic
(31600, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Necromancer heroic
(31601, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Necromancer heroic
(31602, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Necromancer heroic
(31603, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Anub'ar Necromancer heroic
(31604, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Prime Guard heroic
(31605, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Shadowcaster heroic
(31606, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Skirmisher heroic
(31607, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Venomancer heroic
(31608, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Warrior heroic
(31609, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Anub'ar Webspinner heroic
(31647, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Carrion Beetle heroic
(31613, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Skittering Infector heroic
(31614, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), -- Skittering Swarmer heroic
(31615, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Watcher Gashra heroic
(31616, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), -- Watcher Narjil heroic
(31617, 1037, 1052, 7, 0, 15, 7, 0, 15, 1); -- Watcher Silthik heroic

-- Achiev reward
DELETE FROM achievement_reward WHERE entry=4400;
INSERT INTO `achievement_reward` (`entry`, `title_A`, `title_H`, `item`, `sender`, `subject`, `text`) VALUES('4400','0','0','49362','32842','WoW\'s 5th anniversary!','Wow, another year has gone by for WoW!\r\n\r\nWe want to thank you again for continuing\r\nto play World Of Warcraft with us. In\r\ncelebration of our 5th year online. We decided\r\nto bring back our first raid encounter, the\r\nblack dragon Oxyxia.\r\n\r\nTo help remember the event, you are now the\r\nproud owner of your very own Onyxian\r\nWhelpling. We suggest you can bring the little guy\r\nout whenever you can say \"Many Whelps!\r\nHandle it!\" Your friends won\'t mind it. Honest\r\n\r\nThe WoW Dev Team');

-- Item template
DELETE FROM item_template WHERE entry=49362;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `Faction`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`) VALUES
(49362, 15, 2, -1, 'Onyxian Whelpling', 51621, 1, 64, 0, 1, 0, 0, 0, -1, -1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 55884, 0, 0, 0, -1, 0, -1, 69002, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'Teaches you how to summon this companion.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0);

-- Creature template
DELETE FROM creature_template WHERE entry=36607;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(36607, 0, 0, 0, 0, 0, 30356, 0, 30356, 0, 'Onyxian Whelpling', NULL, NULL, 1, 1, 64, 64, 53, 53, 20, 1, 1, 0, 1, 1, 0, 2, 2, 0, 1, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 12, 0, 0, 0, 100001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 121, 1, 0, 0, 2, 'npc_onyxian_whelpling');

-- creature model info
DELETE FROM creature_model_info WHERE modelid=30356;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(30356, 1.24, 1.24, 2, 0);

-- Call of the Elements/Ancestors/Spirits trainer entries
CREATE TEMPORARY TABLE new_spells (
    spell MEDIUMINT(8) UNSIGNED NOT NULL,
    spellcost INT(10) UNSIGNED NOT NULL DEFAULT 7000, /* 70 silver */
    reqskill SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
    reqskillvalue SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0,
    reqlevel TINYINT(3) UNSIGNED NOT NULL,
    PRIMARY KEY (spell)
);

INSERT INTO new_spells (spell, reqlevel) VALUES
(66842, 30), /* Call of the Elements */
(66843, 40), /* Call of the Ancestors */
(66844, 50); /* Call of the Spirits */

REPLACE INTO npc_trainer SELECT 986 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 3030 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 3031 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 3032 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 3066 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 3173 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 3344 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 3403 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 13417 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 17204 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 17212 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 17219 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 17519 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 17520 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 20407 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;
REPLACE INTO npc_trainer SELECT 23127 AS entry, spell, spellcost, reqskill, reqskillvalue, reqlevel FROM new_spells;

DROP TABLE new_spells;

DELETE FROM pet_levelstats WHERE creature_entry=29264;
INSERT INTO `pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES
(29264, 1, 40, 48, 20, 12, 14, 1, 1, 25),
(29264, 2, 49, 59, 40, 14, 15, 2, 1, 26),
(29264, 3, 58, 70, 60, 15, 16, 4, 1, 27),
(29264, 4, 68, 81, 80, 17, 17, 8, 2, 27),
(29264, 5, 77, 92, 100, 18, 18, 12, 2, 28),
(29264, 6, 86, 103, 120, 20, 19, 16, 3, 29),
(29264, 7, 95, 114, 140, 22, 20, 21, 3, 29),
(29264, 8, 104, 125, 160, 23, 21, 25, 4, 30),
(29264, 9, 113, 136, 180, 25, 22, 29, 4, 31),
(29264, 10, 123, 147, 200, 26, 23, 33, 5, 31),
(29264, 11, 132, 158, 220, 28, 25, 38, 6, 32),
(29264, 12, 150, 180, 240, 29, 26, 42, 8, 33),
(29264, 13, 169, 203, 280, 31, 27, 46, 9, 34),
(29264, 14, 189, 227, 320, 33, 28, 50, 11, 35),
(29264, 15, 209, 251, 360, 34, 29, 55, 14, 35),
(29264, 16, 229, 275, 400, 36, 30, 59, 16, 36),
(29264, 17, 250, 300, 460, 37, 31, 63, 20, 37),
(29264, 18, 262, 314, 510, 39, 32, 67, 24, 38),
(29264, 19, 293, 351, 550, 40, 33, 72, 29, 39),
(29264, 20, 303, 377, 563, 42, 35, 67, 31, 49),
(29264, 21, 325, 393, 604, 44, 36, 80, 53, 39),
(29264, 22, 349, 420, 628, 46, 36, 84, 54, 41),
(29264, 23, 373, 447, 652, 47, 38, 89, 56, 42),
(29264, 24, 400, 476, 675, 49, 39, 93, 57, 43),
(29264, 25, 440, 504, 699, 50, 40, 97, 60, 44),
(29264, 26, 469, 534, 721, 52, 41, 101, 62, 46),
(29264, 27, 501, 564, 745, 53, 42, 105, 63, 47),
(29264, 28, 534, 592, 768, 55, 43, 110, 65, 48),
(29264, 29, 566, 620, 791, 57, 44, 114, 67, 49),
(29264, 30, 599, 648, 815, 57, 46, 118, 69, 51),
(29264, 31, 631, 676, 838, 59, 47, 123, 71, 52),
(29264, 32, 680, 720, 862, 60, 47, 127, 73, 53),
(29264, 33, 728, 742, 884, 62, 49, 131, 74, 54),
(29264, 34, 661, 793, 908, 64, 50, 135, 76, 56),
(29264, 35, 699, 845, 950, 63, 51, 136, 73, 57),
(29264, 36, 737, 879, 990, 67, 52, 137, 72, 58),
(29264, 37, 776, 916, 1038, 69, 53, 138, 70, 59),
(29264, 38, 814, 952, 1095, 70, 55, 139, 69, 61),
(29264, 39, 852, 988, 1163, 72, 56, 142, 68, 62),
(29264, 40, 890, 1026, 1244, 74, 57, 147, 67, 64),
(29264, 41, 928, 1063, 1338, 77, 58, 152, 68, 66),
(29264, 42, 976, 1103, 1448, 81, 59, 156, 70, 67),
(29264, 43, 1005, 1187, 1560, 87, 60, 160, 72, 69),
(29264, 44, 1043, 1214, 1670, 91, 61, 164, 74, 71),
(29264, 45, 1081, 1240, 1738, 96, 64, 169, 75, 72),
(29264, 46, 1119, 1267, 1773, 98, 65, 173, 77, 73),
(29264, 47, 1158, 1294, 1808, 100, 66, 177, 78, 75),
(29264, 48, 1196, 1320, 1843, 102, 68, 181, 80, 76),
(29264, 49, 1234, 1347, 1878, 105, 69, 186, 82, 78),
(29264, 50, 2877, 2391, 3494, 107, 71, 190, 84, 80),
(29264, 51, 2920, 2435, 3559, 109, 72, 223, 97, 81),
(29264, 52, 3164, 2481, 3624, 112, 74, 228, 100, 82),
(29264, 53, 3207, 2527, 3686, 113, 75, 233, 102, 84),
(29264, 54, 3350, 2573, 3752, 116, 77, 238, 104, 87),
(29264, 55, 3493, 2620, 3814, 119, 78, 243, 106, 88),
(29264, 56, 3536, 2766, 3878, 120, 79, 248, 108, 89),
(29264, 57, 3680, 2814, 3941, 123, 82, 251, 111, 92),
(29264, 58, 3723, 2913, 4006, 125, 84, 255, 113, 94),
(29264, 59, 3866, 2924, 4067, 128, 86, 258, 115, 96),
(29264, 60, 3909, 3174, 4635, 130, 87, 270, 118, 98),
(29264, 61, 4054, 3225, 6300, 132, 90, 274, 121, 101),
(29264, 62, 4300, 3377, 6380, 135, 92, 280, 122, 103),
(29264, 63, 4545, 3430, 6440, 137, 93, 286, 123, 105),
(29264, 64, 4691, 3584, 6550, 139, 95, 295, 128, 107),
(29264, 65, 4749, 3646, 6612, 142, 98, 300, 129, 110),
(29264, 66, 4876, 3778, 6910, 144, 99, 306, 130, 112),
(29264, 67, 4984, 3863, 7150, 146, 101, 310, 131, 114),
(29264, 68, 5197, 3949, 7450, 148, 105, 325, 132, 117),
(29264, 69, 5208, 4035, 7800, 151, 107, 335, 133, 119),
(29264, 70, 5320, 4170, 7927, 153, 108, 351, 196, 122),
(29264, 71, 5471, 4277, 8267, 155, 109, 359, 204, 124),
(29264, 72, 5623, 4384, 8607, 158, 111, 367, 211, 125),
(29264, 73, 5776, 4492, 8952, 161, 113, 375, 219, 128),
(29264, 74, 5930, 4600, 9297, 164, 115, 382, 227, 130),
(29264, 75, 6085, 4709, 9647, 166, 118, 390, 235, 132),
(29264, 76, 6241, 4818, 9997, 170, 121, 399, 242, 135),
(29264, 77, 6398, 4927, 10352, 172, 124, 407, 250, 138),
(29264, 78, 6556, 5036, 10712, 174, 125, 414, 257, 141),
(29264, 79, 6711, 5144, 11067, 176, 127, 423, 266, 145),
(29264, 80, 6872, 5266, 11454, 177, 130, 432, 275, 150);

DELETE FROM spell_proc_event WHERE entry = 63373;
INSERT INTO spell_proc_event VALUES
(63373 , 0, 11, 2147483648, 0, 0, 65536, 0, 0, 0, 0);

-- Jeeves
DELETE FROM `creature_template` WHERE entry = 35642;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES('35642','0','0','0','0','0','30076','0','30076','0','Jeeves','','','80','80','10000','10000','0','0','0','35','35','135297','1','1','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','9','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','3','1','0','0','0','0','0','0','0','0','1','0','0','0','');

DELETE FROM `npc_vendor` WHERE (`entry`=35642);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(35642, 41584, 0, 0, 0),
(35642, 41586, 0, 0, 0),
(35642, 44605, 0, 0, 0),
(35642, 44614, 0, 0, 0),
(35642, 44615, 0, 0, 0),
(35642, 16583, 0, 0, 0),
(35642, 21177, 0, 0, 0),
(35642, 17020, 0, 0, 0),
(35642, 37201, 0, 0, 0),
(35642, 5565, 0, 0, 0),
(35642, 17032, 0, 0, 0),
(35642, 17030, 0, 0, 0),
(35642, 17033, 0, 0, 0),
(35642, 17031, 0, 0, 0);

DELETE FROM item_template WHERE entry=49050;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `Faction`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`) VALUES('49050','9','3','-1','Schematic: Jeeves','6270','4','64','0','0','0','0','0','-1','-1','80','0','202','450','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','68067','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','Teaches you how to make Jeeves.','0','0','0','0','0','4','0','0','0','0','0','0','0','0','128','0','0','0','0','0','0','0','0','0','-1','0','0','0','0','','0','0','0','0');

DELETE FROM creature_loot_template WHERE item = 49050;
INSERT INTO creature_loot_template VALUES 
(29724, 49050, 0.5, 0, 1, 1, 7, 202, 1),
(25753, 49050, 0.5, 0, 1, 1, 7, 202, 1),
(27971, 49050, 1, 0, 1, 1, 7, 202, 1),
(27972, 49050, 1, 0, 1, 1, 7, 202, 1),
(27641, 49050, 1, 0, 1, 1, 7, 202, 1),
(28835, 49050, 1, 0, 1, 1, 7, 202, 1);

-- wormhole
UPDATE creature_template SET minhealth = 1, maxhealth = 1, npcflag = 1, ScriptName = 'npc_wormhole' WHERE entry = 35646;

-- Scrapbot
DELETE FROM `creature_template` WHERE (`entry`='29561');
INSERT INTO `creature_template`(`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES ('29561', '0', '0', '0', '0', '0', '26341', '0', '26341', '0', 'Scrapbot', '', '', '80', '80', '20000', '20000', '0', '0', '0', '35', '35', '4225', '1', '1', '0', '0', '0', '0', '0', '1', '2000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '');

DELETE FROM npc_vendor WHERE entry = 29561;
INSERT INTO `npc_vendor` VALUES
('29561', '41584', '0', '0', '0'),
('29561', '44605', '0', '0', '0'),
('29561', '44614', '0', '0', '0'),
('29561', '44615', '0', '0', '0'),
('29561', '16583', '0', '0', '0'),
('29561', '21177', '0', '0', '0'),
('29561', '17020', '0', '0', '0'),
('29561', '37201', '0', '0', '0'),
('29561', '5565', '0', '0', '0'),
('29561', '17032', '0', '0', '0'),
('29561', '17030', '0', '0', '0'),
('29561', '17033', '0', '0', '0'),
('29561', '17031', '0', '0', '0');

UPDATE creature_template SET spell1 = 55328 WHERE entry IN (3579);
UPDATE creature_template SET spell1 = 55329 WHERE entry IN (3911);
UPDATE creature_template SET spell1 = 55330 WHERE entry IN (3912);
UPDATE creature_template SET spell1 = 55332 WHERE entry IN (3913);
UPDATE creature_template SET spell1 = 55333 WHERE entry IN (7398);
UPDATE creature_template SET spell1 = 55335 WHERE entry IN (7399);
UPDATE creature_template SET spell1 = 55278 WHERE entry IN (15478);
UPDATE creature_template SET spell1 = 58589 WHERE entry IN (31120);
UPDATE creature_template SET spell1 = 58590 WHERE entry IN (31121);
UPDATE creature_template SET spell1 = 58591 WHERE entry IN (31122);

UPDATE spell_proc_event SET SpellFamilyMask1 = 163840 WHERE entry IN (53380,53381,53382);

delete FROM spell_proc_event WHERE entry IN (21084, 31801);
insert into spell_proc_event (entry,SchoolMask) values (21084,1);
insert into spell_proc_event (entry,SchoolMask) values (31801,1);
update spell_proc_event set ppmRate=0,SchoolMask=1 where entry=20375;
delete from spell_bonus_data where entry in (20167,20187,31803,31893,31898,32220,32221,53718,53719,53725,53726,53742);

DELETE FROM `spell_script_target` WHERE `entry` IN (58836);
INSERT INTO `spell_script_target` VALUES (58836, 1, 31216);

UPDATE `creature_template` SET `ScriptName`='npc_mirror_image' WHERE `entry`=31216;
UPDATE `creature_template` SET `spell1`=59638, `spell2` = 59637 WHERE `entry`=31216;

DELETE FROM spell_proc_event WHERE entry = 58375;
INSERT INTO spell_proc_event (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES ('58375', '0', '4', '0', '512', '0', '16', '0', '0', '100', '0');
DELETE FROM spell_proc_event WHERE entry = 58388;
INSERT INTO spell_proc_event (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES ('58388', '0', '4', '0', '64', '0', '16', '0', '0', '100', '0');

DELETE FROM command WHERE name="suicide";
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('suicide', '0', 'Suicide in 10 seconds');

/* Fixes commited by m33ts4k0z */
/* Priests 3.3.0 -- Staves Spell clean-up */
DELETE FROM playercreateinfo_spell WHERE spell=227 AND class=5;

/* Priests Creation - 3.3.0 -- Staves */
INSERT INTO playercreateinfo_spell VALUES (1,5,227,'Staves'),(8,5,227,'Staves'),(10,5,227,'Staves'),(11,5,227,'Staves'),(5,5,227,'Staves'),(4,5,227,'Staves'),(3,5,227,'Staves');

/* Insert new item "Worn Greatsword" for Warrior creation - 3.3.0 */
INSERT INTO item_template VALUES (49778,2,8,-1,'Worn Greatsword',2380,1,0,0,1,45,9,17,-1,-1,2,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,5,0,0,0,0,0,0,0,0,0,0,0,2900,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,'',0,0,0,0,0,1,1,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0);


/* Warriors 3.3.0 -- Two-Handed Swords Spell clean-up */
DELETE FROM playercreateinfo_spell WHERE spell=202 AND class=1;


/* Warriors Creation - 3.3.0 -- Two-Handed Swords */
INSERT INTO playercreateinfo_spell VALUES (1,1,202,'Two-Handed Swords'),(2,1,202,'Two-Handed Swords'),(3,1,202,'Two-Handed Swords'),(5,1,202,'Two-Handed Swords'),(11,1,202,'Two-Handed Swords'),(6,1,202,'Two-Handed Swords'),(7,1,202,'Two-Handed Swords'),(8,1,202,'Two-Handed Swords'),(4,1,202,'Two-Handed Swords');

/* Hunter 3.3.0 -- Two-Handed Axes Spell clean-up */
DELETE FROM playercreateinfo_spell WHERE spell=197 AND class=3;

/* Hunters Creation - 3.3.0 -- Two-Handed Axes */
INSERT INTO playercreateinfo_spell VALUES (10,3,197,'Two-Handed Axes'),(2,3,197,'Two-Handed Axes'),(11,3,197,'Two-Handed Axes'),(8,3,197,'Two-Handed Axes'),(4,3,197,'Two-Handed Axes'),(6,3,197,'Two-Handed Axes'),(3,3,197,'Two-Handed Axes');


/* Warlocks 3.3.0 -- Staves Spell clean-up */
DELETE FROM playercreateinfo_spell WHERE spell=227 AND class=9;

/* Warlocks Creation - 3.3.0 -- Staves */
INSERT INTO playercreateinfo_spell VALUES (1,9,227,'Staves'),(5,9,227,'Staves'),(10,9,227,'Staves'),(7,9,227,'Staves'),(2,9,227,'Staves');


/* Insert new item "Worn Dirk" for Rogue creation - 3.3.0 */
INSERT INTO item_template VALUES (50055,2,15,-1,'Worn Dirk',6442,1,0,0,1,36,7,13,-1,-1,2,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,0,1600,0,0,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,0,0,0,-1,0,-1,0,'',0,0,0,0,0,1,3,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,'',0,0,0,0);


/* Rogues 3.3.0 -- Dual Wield Spell clean-up */
DELETE FROM playercreateinfo_spell WHERE spell=674 AND class=4;

/* Rogues Creation - 3.3.0 -- Dual Wield */
INSERT INTO playercreateinfo_spell VALUES (8,4,674,'Dual Wield'),(5,4,674,'Dual Wield'),(10,4,674,'Dual Wield'),(7,4,674,'Dual Wield'),(2,4,674,'Dual Wield'),(1,4,674,'Dual Wield'),(4,4,674,'Dual Wield'),(3,4,674,'Dual Wield');

/* Fixes commited by m33ts4k0z */
/* Several item prototypes startup error fixes -- 3.3.0 */ 

UPDATE item_template SET displayid=63370 WHERE Entry=1604;
UPDATE item_template SET displayid=7414 WHERE Entry=17020;
UPDATE item_template SET displayid=29165 WHERE Entry=17021;
UPDATE item_template SET displayid=7406 WHERE Entry=17026;
UPDATE item_template SET displayid=23717 WHERE Entry=17759;
UPDATE item_template SET displayid=7414 WHERE Entry=20028;
UPDATE item_template SET displayid=45437 WHERE Entry=23822;
UPDATE item_template SET displayid=64903 WHERE Entry=28220;
UPDATE item_template SET displayid=63412 WHERE Entry=30171;
UPDATE item_template SET displayid=63411 WHERE Entry=30190;
UPDATE item_template SET displayid=43501 WHERE Entry=31110;
UPDATE item_template SET displayid=45437 WHERE Entry=33092;
UPDATE item_template SET displayid=64114 WHERE Entry=38409;
UPDATE item_template SET displayid=53251 WHERE Entry=38729;
UPDATE item_template SET displayid=64904 WHERE Entry=41013;
UPDATE item_template SET displayid=64922 WHERE Entry=41014;
UPDATE item_template SET displayid=64904 WHERE Entry=41019;
UPDATE item_template SET displayid=64922 WHERE Entry=41020;
UPDATE item_template SET displayid=62988 WHERE Entry=41133;
UPDATE item_template SET displayid=64904 WHERE Entry=41151;
UPDATE item_template SET displayid=64922 WHERE Entry=41152;
UPDATE item_template SET displayid=64140 WHERE Entry=41166;
UPDATE item_template SET displayid=63408 WHERE Entry=41993;
UPDATE item_template SET displayid=50905 WHERE Entry=43870;
UPDATE item_template SET displayid=65031 WHERE Entry=45470;
UPDATE item_template SET displayid=63410 WHERE Entry=47511;
UPDATE item_template SET displayid=64902 WHERE Entry=49326;
UPDATE item_template SET displayid=64902 WHERE Entry=49327;
UPDATE item_template SET displayid=64902 WHERE Entry=49471;
UPDATE item_template SET displayid=64902 WHERE Entry=49472;
UPDATE item_template SET displayid=64902 WHERE Entry=47511;
UPDATE item_template SET displayid=64902 WHERE Entry=49473;
UPDATE item_template SET displayid=63410 WHERE Entry=47511;
UPDATE item_template SET displayid=64902 WHERE Entry=49328;
UPDATE item_template SET class=15 WHERE Entry IN (3711,20928,20929,20930,20932,20933);
UPDATE item_template SET class=4 WHERE Entry=31080;
UPDATE item_template SET displayid=63410 WHERE Entry=47511;
UPDATE item_template SET displayid=64902 WHERE Entry=49328;
UPDATE item_template SET inventorytype=13 WHERE Entry IN (32912,32915,32917,32918,32919,32920);
UPDATE item_template SET subclass=4 WHERE Entry=31080;
UPDATE item_template SET material=4 WHERE Entry IN(10439,21813,21815,21816,21817,21818,21819,21820,21821,21822,21823,22218,22235,22236,22237,22238,22239,22276,22277,22281,22282,23211,23215,23247,23327,23435,34480,36734,41133,47241);
UPDATE item_template SET material=7 WHERE entry IN(22278,22279,22280);
UPDATE item_template SET inventorytype=22 WHERE entry=50055;

DELETE FROM spell_bonus_data WHERE entry IN (1978, 3044, 42243, 53352, 56641);
INSERT INTO spell_bonus_data VALUES
(1978, 0, 1, 0.04, "Hunter - Serpent Sting"),
(3044, 1, 0, 0.15, "Hunter - Arcane Shot"),
(42243, 1, 0, 0.01395, "Hunter - Volley" ),
(53352, 1, 0, 0.14, "Hunter - Explosive Shot"),
(56641, 1, 0, 0.1, "Hunter - Steady Shot");

DELETE FROM spell_chain WHERE spell_id IN (42243, 42244, 42245, 42234, 58432, 58433);
INSERT INTO spell_chain VALUES
(42243, 0, 42243, 1, 0),
(42244, 42243, 42243, 2, 0),
(42245, 42244, 42243, 3, 0),
(42234, 42245, 42243, 4, 0),
(58432, 42234, 42243, 5, 0),
(58433, 58432, 42243, 6, 0);

DELETE FROM spell_chain WHERE spell_id IN (3674, 63668, 63669, 63670, 63671, 63672 );
INSERT INTO spell_chain VALUES
(3674, 0, 3674, 1, 0),
(63668, 3674, 3674, 2, 0),
(63669, 63668, 3674, 3, 0),
(63670, 63669, 3674, 4, 0),
(63671, 63670, 3674, 5, 0),
(63672, 63671, 3674, 6, 0);

DELETE FROM spell_bonus_data WHERE entry = 3674;
INSERT INTO spell_bonus_data VALUES
(3674, 0, 1, 0.02, "Hunter - Black Arrow");

DELETE FROM spell_chain WHERE spell_id IN (13812, 14314, 14315, 27026, 49064, 49065);
INSERT INTO spell_chain VALUES
(13812, 0, 13812, 1, 0),
(14314, 13812, 13812, 2, 0),
(14315, 14314, 13812, 3, 0),
(27026, 14315, 13812, 4, 0),
(49064, 27026, 13812, 5, 0),
(49065, 49064, 13812, 6, 0);

DELETE FROM spell_bonus_data WHERE entry = 13812;
INSERT INTO spell_bonus_data VALUES
(13812, 1, 1.6, 0.1, "Hunter - Explosive Trap Effect");

DELETE FROM `spell_chain` WHERE spell_id IN (13797, 14298, 14299, 14300, 14301, 27024, 49053, 49054);
INSERT INTO `spell_chain` VALUES
('14299','14298','13797','3','0'),
('14298','13797','13797','2','0'),
('13797','0','13797','1','0'),
('14300','14299','13797','4','0'),
('14301','14300','13797','5','0'),
('27024','14301','13797','6','0'),
('49053','27024','13797','7','0'),
('49054','49053','13797','8','0');

DELETE FROM spell_bonus_data WHERE entry = 13797;
INSERT INTO spell_bonus_data VALUES
(13797, 0, 0, 0, "Hunter - immolation trap Effect (magic = no RAP)");

-- NPC
DELETE FROM creature_template WHERE entry=37994;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(37994, 0, 0, 0, 0, 0, 525, 0, 525, 0, 'Water Elemental', '', '', 0, 60, 70, 2998, 2998, 3043, 3043, 20, 115, 115, 0, 1.125, 1, 0, 2, 2, 0, 1, 1, 2000, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 100, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31707, 0, 0, 0, 0, 0, 0, '', 1, 3, 0.75, 0.33, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

-- Levelstats
DELETE FROM pet_levelstats WHERE creature_entry=37994;

INSERT INTO `pet_levelstats` (`creature_entry`, `level`, `hp`, `mana`, `armor`, `str`, `agi`, `sta`, `inte`, `spi`) VALUES
(37994, 1, 60, 60, 0, 20, 16, 20, 13, 8),
(37994, 2, 73, 73, 0, 21, 17, 21, 14, 10),
(37994, 3, 87, 87, 0, 22, 18, 22, 15, 12),
(37994, 4, 101, 101, 0, 23, 19, 23, 16, 14),
(37994, 5, 115, 115, 0, 24, 20, 24, 17, 16),
(37994, 6, 129, 129, 0, 25, 21, 25, 18, 18),
(37994, 7, 152, 152, 0, 26, 22, 26, 19, 20),
(37994, 8, 156, 156, 0, 27, 23, 27, 20, 22),
(37994, 9, 170, 170, 0, 28, 24, 28, 21, 24),
(37994, 10, 184, 184, 0, 29, 25, 29, 22, 26),
(37994, 11, 198, 198, 0, 30, 25, 32, 22, 28),
(37994, 12, 225, 225, 0, 31, 26, 36, 24, 31),
(37994, 13, 254, 254, 0, 32, 28, 43, 26, 32),
(37994, 14, 284, 254, 0, 33, 28, 44, 25, 35),
(37994, 15, 313, 313, 0, 34, 30, 48, 26, 37),
(37994, 16, 343, 343, 0, 36, 30, 52, 27, 39),
(37994, 17, 375, 375, 0, 38, 31, 55, 28, 42),
(37994, 18, 392, 392, 0, 39, 33, 59, 28, 44),
(37994, 19, 438, 438, 0, 40, 33, 63, 30, 46),
(37994, 20, 471, 471, 0, 42, 35, 67, 31, 49),
(37994, 21, 500, 500, 0, 44, 36, 80, 31, 51),
(37994, 22, 528, 528, 0, 46, 36, 84, 32, 53),
(37994, 23, 558, 558, 0, 47, 38, 89, 33, 55),
(37994, 24, 595, 595, 0, 49, 39, 83, 34, 58),
(37994, 25, 630, 630, 0, 50, 40, 87, 35, 61),
(37994, 26, 678, 678, 0, 52, 41, 91, 36, 62),
(37994, 27, 705, 705, 0, 53, 42, 95, 37, 65),
(37994, 28, 740, 740, 0, 55, 43, 99, 38, 67),
(37994, 29, 775, 775, 0, 56, 44, 103, 39, 70),
(37994, 30, 800, 800, 0, 58, 46, 107, 40, 72),
(37994, 31, 856, 856, 0, 59, 47, 111, 40, 74),
(37994, 32, 921, 921, 0, 61, 48, 115, 41, 77),
(37994, 33, 987, 987, 0, 62, 49, 119, 42, 79),
(37994, 34, 1047, 1047, 0, 63, 51, 123, 43, 82),
(37994, 35, 1107, 1107, 0, 65, 52, 127, 44, 84),
(37994, 36, 1167, 1167, 0, 66, 53, 131, 45, 87),
(37994, 37, 1227, 1227, 0, 68, 53, 135, 46, 89),
(37994, 38, 1288, 1288, 0, 70, 55, 139, 47, 91),
(37994, 39, 1348, 1348, 0, 72, 56, 143, 48, 94),
(37994, 40, 1408, 1408, 0, 74, 58, 148, 49, 97),
(37994, 41, 1468, 1468, 0, 76, 59, 152, 50, 99),
(37994, 42, 1528, 1528, 0, 81, 59, 156, 51, 102),
(37994, 43, 1588, 1588, 0, 86, 61, 160, 52, 104),
(37994, 44, 1648, 1648, 0, 89, 62, 164, 53, 107),
(37994, 45, 1708, 1708, 0, 91, 64, 169, 54, 109),
(37994, 46, 1768, 1768, 0, 94, 65, 173, 55, 112),
(37994, 47, 1828, 1828, 0, 96, 66, 178, 56, 115),
(37994, 48, 1889, 1889, 0, 99, 68, 182, 57, 117),
(37994, 49, 1950, 1950, 0, 101, 69, 186, 58, 120),
(37994, 50, 2003, 2003, 0, 104, 71, 191, 59, 123),
(37994, 51, 2055, 2055, 0, 107, 72, 195, 61, 126),
(37994, 52, 2108, 2108, 0, 109, 73, 199, 62, 128),
(37994, 53, 2161, 2161, 0, 112, 75, 204, 63, 131),
(37994, 54, 2213, 2213, 0, 114, 76, 208, 64, 134),
(37994, 55, 2266, 2266, 0, 117, 77, 213, 65, 136),
(37994, 56, 2318, 2318, 0, 119, 79, 217, 66, 139),
(37994, 57, 2371, 2371, 0, 122, 80, 221, 67, 142),
(37994, 58, 2424, 2425, 0, 124, 82, 226, 68, 144),
(37994, 59, 2476, 2476, 0, 127, 83, 230, 69, 147),
(37994, 60, 2529, 1874, 0, 129, 85, 234, 70, 150),
(37994, 61, 2582, 2682, 0, 130, 86, 238, 71, 153),
(37994, 62, 2635, 2735, 0, 131, 87, 242, 72, 156),
(37994, 63, 2688, 2788, 0, 132, 88, 246, 73, 159),
(37994, 64, 2741, 2841, 0, 133, 89, 250, 74, 162),
(37994, 65, 2794, 2894, 0, 134, 90, 254, 75, 165),
(37994, 66, 2847, 2947, 0, 135, 91, 258, 76, 168),
(37994, 67, 2900, 3000, 0, 136, 92, 262, 77, 171),
(37994, 68, 2953, 3053, 0, 137, 93, 266, 78, 174),
(37994, 69, 3006, 3100, 0, 138, 94, 280, 79, 177),
(37994, 70, 3059, 3212, 0, 139, 95, 284, 80, 180),
(37994, 71, 2489, 4568, 0, 167, 123, 81, 299, 195),
(37994, 72, 2549, 4676, 0, 171, 127, 82, 305, 200),
(37994, 73, 2609, 4784, 0, 175, 131, 83, 311, 205),
(37994, 74, 2669, 4892, 0, 179, 135, 84, 317, 210),
(37994, 75, 2729, 5000, 0, 183, 139, 85, 323, 215),
(37994, 76, 2789, 5108, 0, 187, 143, 86, 329, 220),
(37994, 77, 2849, 5216, 0, 191, 147, 87, 335, 225),
(37994, 78, 2909, 5324, 0, 195, 151, 88, 341, 230),
(37994, 79, 2969, 5432, 0, 199, 155, 89, 347, 235),
(37994, 80, 3029, 5540, 0, 203, 159, 90, 353, 240);

-- item
DELETE FROM item_template WHERE entry IN (50045, 50166);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `Faction`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`) VALUES
(50045, 16, 11, 0, 'Glyph of Eternal Water', 58828, 1, 64, 0, 1, 40000, 100, 0, 128, -1, 55, 50, 0, 0, 0, 0, 0, 0, 0, -1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70938, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0);

INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `Faction`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`) VALUES ('50166', '9', '6', '-1', 'Technique: Glyph of Eternal Water', '15274', '2', '64', '0', '1', '40000', '0', '0', '-1', '-1', '50', '0', '773', '250', '0', '0', '0', '0', '0', '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1000', '0', '0', '55884', '0', '0', '0', '-1', '0', '-1', '71101', '6', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', 'Teaches you how to inscribe a Glyph of Eternal Water.', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '', '0', '0', '0', '0');

-- vendor
DELETE FROM npc_vendor WHERE item=50166;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
('30734', '50166', '0', '0', '0'),
('30735', '50166', '0', '0', '0'),
('28723', '50166', '0', '0', '0');

ALTER TABLE quest_template
  ADD COLUMN    RewArenaPoints           smallint(5) unsigned NOT NULL default '0' AFTER RewHonorableKills;
  
  DELETE FROM `spell_proc_event` WHERE `entry` IN (49028);
INSERT INTO `spell_proc_event` VALUES
(49028, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00010010, 0x00010000, 0.000000, 0.000000, 0);
update creature_template set `modelid_A` = '11686', ScriptName='npc_runeblade' where entry=27893;

DELETE FROM spell_chain WHERE spell_id IN (48492,48494,48495);
INSERT INTO spell_chain VALUES
(48492, 0, 48492, 1, 0),
(48494, 48492, 48492, 2, 0),
(48495, 48494, 48492, 3, 0);
DELETE FROM spell_proc_event WHERE entry IN (48492,48494,48495);
INSERT INTO spell_proc_event VALUES
(48492, 0, 7, 524288, 0, 2048, 16384, 0, 0, 100, 0);

insert into `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) values('41','2010-01-03 06:00:00','2020-01-03 09:00:00','1440','1440','0','Daily BG: Arathi Basin!');
insert into `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) values('42','2010-01-03 06:00:00','2020-01-03 09:00:00','5184000','1440','0','Daily BG: Eye Of Storm!');
insert into `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) values('43','2010-01-03 06:00:00','2020-01-03 09:00:00','5184000','1440','0','Daily BG: Warsong Gulch!');
DELETE FROM creature_questrelation WHERE quest IN (11335, 11336, 11337, 11338, 11339, 11340, 11341, 11342, 13407, 13476, 14164, 13405, 13478, 14163, 11336, 11340);
UPDATE quest_template SET ExclusiveGroup = 11335, RewHonorAddition  = 20, RewArenaPoints = 25 WHERE entry IN (11335, 11336, 11337, 11338, 13405, 14163);
UPDATE quest_template SET ExclusiveGroup = 11339, RewHonorAddition  = 20, RewArenaPoints = 25 WHERE entry IN (11339, 11340, 11341, 11342, 13407, 14164);
INSERT INTO game_event_creature_quest VALUES
(15351, 11335, 41),
(15351, 11337, 42),
(15351, 11338, 43),
(15350, 11339, 41),
(15350, 11341, 42),
(15350, 11342, 43);

DELETE FROM spell_bonus_data WHERE entry IN (SELECT spell_id FROM spell_chain WHERE first_spell IN ( 467, 7294));
INSERT INTO spell_bonus_data VALUES
(467, 0.033, 0, 0, "Druid -Thorns"),
(7294, 0.033, 0, 0, "Paladin - Retribution Aura");

DELETE FROM spell_proc_event WHERE entry = 12654;
INSERT INTO spell_proc_event VALUES
(12654, 0, 3, 134217728, 0, 0, 524288, 0, 0, 100, 0);

DELETE FROM spell_chain WHERE spell_id IN (10400, 15567, 15568, 15569, 16311, 16312, 16313, 58784, 58791, 58792);
INSERT INTO spell_chain VALUES
(10400, 0, 10400, 1, 0),
(15567, 10400, 10400, 2, 0),
(15568, 15567, 10400, 3, 0),
(15569, 15568, 10400, 4, 0),
(16311, 15569, 10400, 5, 0),
(16312, 16311, 10400, 6, 0),
(16313, 16312, 10400, 7, 0),
(58784, 16313, 10400, 8, 0),
(58791, 58784, 10400, 9, 0),
(58792, 58791, 10400, 10, 0);

DELETE FROM spell_proc_event WHERE entry = 49194;
INSERT INTO spell_proc_event VALUES
(49194, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0);

DELETE FROM spell_chain WHERE spell_id IN (49018, 49529, 49530);
INSERT INTO spell_chain VALUES
(49018, 0, 49018, 1, 0),
(49529, 49018, 49018, 2, 0),
(49530, 49529, 49018, 3, 0);
DELETE FROM spell_proc_event WHERE entry = 49018;
INSERT INTO spell_proc_event VALUES
(49018, 0, 15, 20971520, 0, 0, 0, 0, 0, 0, 0);

#Dalaran Arena
insert into `gameobject` values
-- buffs
('200060','184663','617','1','1','1291.7','813.424','7.11472','4.64562','0','0','0.730314','-0.683111','120','100','1'),
('200061','184664','617','1','1','1291.7','768.911','7.11472','1.55194','0','0','0.700409','0.713742','120','100','1'),
-- doors
('200062','192642','617','1','1','1350.95','817.2','21.4096','3.15','0','0','0.99627','0.0862864','86400','100','1'),
('200063','192643','617','1','1','1232.65','764.913','21.4729','6.3','0','0','0.0310211','-0.999519','86400','100','1');
 
insert into `gameobject_battleground` values
-- buffs
('200060','252','0'),
('200061','252','0'),
-- doors
('200062','254','0'),
('200063','254','0');
 
insert into `battleground_events` values
('617','252','0','buffs'),
('617','254','0','doors');
 
-- doors
update gameobject_template set faction=114,flags=32,size = 1.5 where entry in (192642,192643);

/*Ebon Plaguebringer*/
DELETE FROM spell_chain WHERE spell_id IN (51099, 51160, 51161);
INSERT INTO spell_chain VALUES
(51099, 0, 51099, 1, 0),
(51160, 51099, 51099, 2, 0),
(51161, 51160, 51099, 3, 0);
DELETE FROM spell_proc_event WHERE entry IN (51099, 51160, 51161);
INSERT INTO spell_proc_event VALUES
(51099, 0, 15, 0, 100663296, 0, 16, 0, 0, 100, 0);

/*Crypt Fever*/
DELETE FROM spell_chain WHERE spell_id IN (49032, 49631, 49632);
INSERT INTO spell_chain VALUES
(49032, 0, 49032, 1, 0),
(49631, 49032, 49032, 2, 0),
(49632, 49631, 49032, 3, 0);
DELETE FROM spell_proc_event WHERE entry IN (49032, 49631, 49632);
INSERT INTO spell_proc_event VALUES
(49032, 0, 15, 0, 100663296, 0, 16, 0, 0, 100, 0);

/*Wandering Plague*/
DELETE FROM spell_chain WHERE spell_id IN (49217, 49654, 49655);
INSERT INTO spell_chain VALUES
(49217, 0, 49217, 1, 0),
(49654, 49217, 49217, 2, 0),
(49655, 49654, 49217, 2, 0);
DELETE FROM spell_proc_event WHERE entry IN (49217, 49654, 49655);
INSERT INTO spell_proc_event VALUES
(49217, 0, 15, 0, 100663296, 0, 262144, 0, 0, 100, 0);

INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES('44','2010-01-03 06:00:00','2020-01-03 09:00:00','5184000','1440','0','Daily BG: Alterac Valley!');
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES('45','2010-01-03 06:00:00','2020-01-03 09:00:00','5184000','1440','0','Daily BG: Isle of Conquest!');
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES('46','2010-01-03 06:00:00','2020-01-03 09:00:00','5184000','1440','0','Daily BG: Strand of the Ancients!');

INSERT IGNORE INTO npc_trainer VALUES
(17110, 62757, 300000, 0, 0, 80),
(5115, 62757, 300000, 0, 0, 80),
(3963, 62757, 300000, 0, 0, 80),
(3601, 62757, 300000, 0, 0, 80),
(4205, 62757, 300000, 0, 0, 80),
(5515, 62757, 300000, 0, 0, 80),
(1231, 62757, 300000, 0, 0, 80),
(16270, 62757, 300000, 0, 0, 80),
(3039, 62757, 300000, 0, 0, 80),
(4146, 62757, 300000, 0, 0, 80),
(5501, 62757, 300000, 0, 0, 80),
(3038, 62757, 300000, 0, 0, 80),
(17505, 62757, 300000, 0, 0, 80),
(1404, 62757, 300000, 0, 0, 80),
(5116, 62757, 300000, 0, 0, 80),
(16673, 62757, 300000, 0, 0, 80),
(3352, 62757, 300000, 0, 0, 80),
(5117, 62757, 300000, 0, 0, 80),
(3407, 62757, 300000, 0, 0, 80),
(16672, 62757, 300000, 0, 0, 80),
(5517, 62757, 300000, 0, 0, 80),
(3171, 62757, 300000, 0, 0, 80),
(5516, 62757, 300000, 0, 0, 80),
(3040, 62757, 300000, 0, 0, 80),
(3406, 62757, 300000, 0, 0, 80),
(3065, 62757, 300000, 0, 0, 80),
(16674, 62757, 300000, 0, 0, 80);

INSERT IGNORE INTO spell_area VALUES (51913,  4298, 0, 0, 0, 0, 0, 2, 1);

/*Lock and Load*/
DELETE FROM `spell_proc_event` WHERE entry IN (56342, 56343, 56344);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(56342, 0, 9, 0x0C, 0x8000000, 0x60000, 0, 0, 0, 0, 0);
DELETE FROM `spell_chain` WHERE spell_id IN (56342, 56343, 56344);
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
(56342, 0, 56342, 1, 0),
(56343, 56342, 56342, 2, 0),
(56344, 56343, 56342, 3, 0);
/*Entrapment*/
DELETE FROM `spell_proc_event` WHERE entry IN (19184, 19387, 19388);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(19184, 0, 9, 0, 0x2000, 0x40000, 0, 0, 0, 0, 0);