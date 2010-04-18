DELETE FROM `spell_proc_event` WHERE `entry` = 67356;
INSERT INTO `spell_proc_event` VALUES (67356,0x00,7,0x00000010,0x00000000,0x00000000,0x00000000,0x00000000,0.000000,0.000000,0);

DELETE FROM `spell_chain` WHERE `first_spell` = 53551;
INSERT INTO `spell_chain` VALUES
(53551,0,53551,1,0),
(53552,53551,53551,2,0),
(53553,53552,53551,3,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (53551,53552,53553);
INSERT INTO `spell_proc_event` VALUES
(53551,0x00000000,10,0x00001000,0x00000000,0x00000000,0x00000000,0x00000000,0.0,0.0,0);

update `spell_proc_event` set `ppmRate` = 3 where `entry` = 12322;
update `spell_proc_event` set `ppmRate` = 6 where `entry` = 12999;
update `spell_proc_event` set `ppmRate` = 9 where `entry` = 13000;
update `spell_proc_event` set `ppmRate` = 12 where `entry` = 13001;
update `spell_proc_event` set `ppmRate` = 15 where `entry` = 13002;

DELETE FROM `spell_proc_event` WHERE `entry` IN (12317,13045,13046,13047,13048);

UPDATE `spell_bonus_data` SET `direct_bonus` = 0.286 WHERE `entry` = 49821;

DELETE FROM `spell_proc_event` WHERE `entry` IN (11103,12357,12358,64343);
INSERT INTO `spell_proc_event` VALUES
(11103,0x00000000,3,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0.0,0.0,0),
(64343,0x00000000,3,0x00000002,0x00000000,0x00000000,0x00000000,0x00000000,0.0,0.0,0);

DELETE FROM `spell_chain` WHERE `first_spell` = 11103;
INSERT INTO `spell_chain` VALUES
(11103,0,11103,1,0),
(12357,11103,11103,2,0),
(12358,12357,11103,3,0);

UPDATE `spell_bonus_data` SET `dot_bonus` = 1.15 WHERE entry IN (55078,55095);

DELETE FROM `spell_proc_event` WHERE `entry` = 24905;
INSERT INTO `spell_proc_event` VALUES
(24905,0,0,0,0,0,0,2,0,50,0);

