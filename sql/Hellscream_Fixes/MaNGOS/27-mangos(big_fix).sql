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

/*Thrill of the Hunt*/
DELETE FROM spell_chain WHERE spell_id IN (34497, 34498, 34499);
INSERT INTO spell_chain VALUES
(34497, 0, 34497, 1, 0),
(34498, 34497, 34497, 2, 0),
(34499, 34498, 34497, 3, 0);
DELETE FROM spell_proc_event WHERE entry IN (34497, 34498, 34499);
INSERT INTO spell_proc_event VALUES (34497, 0, 0, 399360, 8388609, 33281, 0, 2, 0, 0, 0);

/*Damage Shield*/
INSERT INTO spell_chain VALUES
(58872, 0, 58872, 1, 0),
(58874, 58872, 58872, 2, 0);

DELETE FROM `spell_proc_event` WHERE `entry` in (58872, 58874);
INSERT INTO `spell_proc_event`  VALUES (58872, 0, 0, 0, 0, 0, 0, 67, 0, 0, 0);

DROP TABLE IF EXISTS `spell_stack_class_data`; 
CREATE TABLE `spell_stack_class_data` ( 
  `entry` mediumint(8) unsigned NOT NULL, 
  `stack_conditions` mediumint(9) default '0', 
  `value` mediumint(9) default '0', 
  `comments` varchar(255) default NULL, 
   PRIMARY KEY  (`entry`) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell stacking behavior'; 
 
insert into `spell_stack_class_data` (`entry`, `stack_conditions`, `value`, `comments`) values('0','0','0','Default class - it does nothing'); 
insert into `spell_stack_class_data` (`entry`, `stack_conditions`, `value`, `comments`) values('1','4','0','+X attack power buffs (Blessing of Might...)'); 
insert into `spell_stack_class_data` (`entry`, `stack_conditions`, `value`, `comments`) values('2','4','0','+X% all stats (Blessing of Kings...)'); 
insert into `spell_stack_class_data` (`entry`, `stack_conditions`, `value`, `comments`) values('3','4','0','+X% MP5 (Blessing of Wisdom...)'); 
insert into `spell_stack_class_data` (`entry`, `stack_conditions`, `value`, `comments`) values('4','4','0','+X stamina (Power Word: Fortitude...)'); 
insert into `spell_stack_class_data` (`entry`, `stack_conditions`, `value`, `comments`) values('5','4','0','+X intellect (Arcane Intellect...)'); 
insert into `spell_stack_class_data` (`entry`, `stack_conditions`, `value`, `comments`) values('6','4','0','Judgement of Wisdom debuff '); 
insert into `spell_stack_class_data` (`entry`, `stack_conditions`, `value`, `comments`) values('7','4','0','Judgement of Light debuff'); 
insert into `spell_stack_class_data` (`entry`, `stack_conditions`, `value`, `comments`) values('8','4','0','Judgement of Justice debuff'); 
insert into `spell_stack_class_data` (`entry`, `stack_conditions`, `value`, `comments`) values('9','2','0','Judgement debuffs (not needed - example)');

DROP TABLE IF EXISTS `spell_stack_data`; 
CREATE TABLE `spell_stack_data` ( 
  `entry` mediumint(8) unsigned NOT NULL, 
  `stack_class1` mediumint(9) default '0', 
  `stack_class2` mediumint(9) default '0', 
  `stack_class3` mediumint(9) default '0', 
   PRIMARY KEY  (`entry`) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell stacking conditions'; 
 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('19740','1','0','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('6673','1','0','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('25782','1','0','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('25898','2','0','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('20217','2','0','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('72586','2','0','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('25894','3','0','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('1459','5','0','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('61024','5','0','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('61316','5','0','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('23028','5','0','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('1243','4','0','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('21562','4','0','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('20185','7','9','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('20184','8','9','0'); 
insert into `spell_stack_data` (`entry`, `stack_class1`, `stack_class2`, `stack_class3`) values('20186','6','9','0');

CREATE TABLE spell_disabled (
  entry int(11) unsigned NOT NULL default '0' COMMENT 'spell entry',
  ischeat_spell tinyint(3) unsigned NOT NULL default '0' COMMENT 'mark spell as cheat',
  active tinyint(3) unsigned NOT NULL default '1' COMMENT 'enable check of this spell',
  PRIMARY KEY  (entry)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Disabled Spell System';

DELETE FROM `spell_proc_event` WHERE `entry` = 49194;
INSERT INTO `spell_proc_event` VALUES
(49194,0x00,15,0x00002000,0x00000000,0x00000000,0x00000000,0x00000000,0.000000,0.000000,0);

UPDATE `creature_template` SET `spell1` = 55328 WHERE `entry` = 3579;
UPDATE `creature_template` SET `spell1` = 55329 WHERE `entry` = 3911;
UPDATE `creature_template` SET `spell1` = 55330 WHERE `entry` = 3912;
UPDATE `creature_template` SET `spell1` = 55332 WHERE `entry` = 3913;
UPDATE `creature_template` SET `spell1` = 55333 WHERE `entry` = 7398;
UPDATE `creature_template` SET `spell1` = 55335 WHERE `entry` = 7399;
UPDATE `creature_template` SET `spell1` = 55278 WHERE `entry` = 15478;
UPDATE `creature_template` SET `spell1` = 58589 WHERE `entry` = 31120;
UPDATE `creature_template` SET `spell1` = 58590 WHERE `entry` = 31121;
UPDATE `creature_template` SET `spell1` = 58591 WHERE `entry` = 31122;

DELETE FROM `spell_proc_event` WHERE `entry` IN (48492,48494,48495);
INSERT INTO `spell_proc_event` VALUES 
(48492,0,7,524288,0,2048,16384,0,0,0,0),
(48494,0,7,524288,0,2048,16384,0,0,0,0),
(48495,0,7,524288,0,2048,16384,0,0,0,0);

DELETE FROM `spell_proc_event` WHERE `entry` = 24905;
INSERT INTO `spell_proc_event` VALUES
(24905,0,0,0,0,0,0,2,0,50,0);

UPDATE `spell_bonus_data` SET `dot_bonus` = 1.15 WHERE entry IN (55078,55095);

DELETE FROM `spell_proc_event` WHERE `entry` = 58070;
INSERT INTO `spell_proc_event` VALUES (58070,0x20,5,0x00004000,0x00000000,0x00000000,0x00040000,0x00000000,0.000000,5.000000,0);

DELETE FROM `spell_chain` WHERE `first_spell` = 11103;
INSERT INTO `spell_chain` VALUES
(11103,0,11103,1,0),
(12357,11103,11103,2,0),
(12358,12357,11103,3,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (11103,12357,12358,64343);
INSERT INTO `spell_proc_event` VALUES
(11103,0x00000000,3,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0.0,0.0,0),
(64343,0x00000000,3,0x00000002,0x00000000,0x00000000,0x00000000,0x00000000,0.0,0.0,0);

UPDATE `spell_bonus_data` SET `direct_bonus` = 0.286 WHERE `entry` = 49821;

DELETE FROM `spell_proc_event` WHERE `entry` IN (12317,13045,13046,13047,13048);

update `spell_proc_event` set `ppmRate` = 3 where `entry` = 12322;
update `spell_proc_event` set `ppmRate` = 6 where `entry` = 12999;
update `spell_proc_event` set `ppmRate` = 9 where `entry` = 13000;
update `spell_proc_event` set `ppmRate` = 12 where `entry` = 13001;
update `spell_proc_event` set `ppmRate` = 15 where `entry` = 13002;

DELETE FROM `spell_chain` WHERE spell_id IN (56342,56343,56344);
INSERT INTO `spell_chain` VALUES
(56342,0,56342,1,0),
(56343,56342,56342,2,0),
(56344,56343,56342,3,0);

DELETE FROM `spell_proc_event` WHERE entry IN (56342,56343,56344);
INSERT INTO `spell_proc_event` VALUES
(56342,0,9,0x0C,0x8000000,0x60000,0,0,0,0,22);

DELETE FROM `spell_chain` WHERE `first_spell` = 53551;
INSERT INTO `spell_chain` VALUES
(53551,0,53551,1,0),
(53552,53551,53551,2,0),
(53553,53552,53551,3,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (53551,53552,53553);
INSERT INTO `spell_proc_event` VALUES
(53551,0x00000000,10,0x00001000,0x00000000,0x00000000,0x00000000,0x00000000,0.0,0.0,0);

DELETE FROM `spell_proc_event` WHERE `entry` = 67356;
INSERT INTO `spell_proc_event` VALUES (67356,0x00,7,0x00000010,0x00000000,0x00000000,0x00000000,0x00000000,0.000000,0.000000,0);

REPLACE INTO `achievement_criteria_requirement` (`criteria_id`,`type`,`value1`) VALUES ('9619','0','63624');