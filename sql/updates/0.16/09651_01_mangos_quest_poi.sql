ALTER TABLE db_version CHANGE COLUMN required_9636_01_mangos_item_template required_9651_01_mangos_quest_poi bit;

/* -- Sorry, this was only way I knew, to avoid problems adding new primary key. Take backup if you don't want to loose your current data.
TRUNCATE quest_poi;
TRUNCATE quest_poi_points;

ALTER TABLE quest_poi ADD COLUMN poiId tinyint(3) UNSIGNED DEFAULT '0' NOT NULL AFTER questid;
ALTER TABLE quest_poi CHANGE COLUMN questid questId mediumint(8) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE quest_poi CHANGE COLUMN unk1 mapAreaId mediumint(8) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE quest_poi CHANGE COLUMN unk2 floorId tinyint(3) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE quest_poi_points ADD COLUMN poiId tinyint(3) UNSIGNED DEFAULT '0' NOT NULL AFTER questId;
ALTER TABLE quest_poi_points CHANGE COLUMN questId questId mediumint(8) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE quest_poi_points DROP COLUMN objIndex;

ALTER TABLE quest_poi DROP PRIMARY KEY,
  ADD PRIMARY KEY idx_poi (questId, poiId);

ALTER TABLE quest_poi_points DROP INDEX idx,
  ADD KEY idx_poip (questId, poiId);*/

-- Restored clean tables 

DROP TABLE IF EXISTS `quest_poi`;
CREATE TABLE `quest_poi` (
  `questId` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `poiId` TINYINT(3) NOT NULL DEFAULT '0',
  `objIndex` INT(11) NOT NULL DEFAULT '0',
  `mapId` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `mapAreaId` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `floorId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `unk3` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `unk4` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`questId`,`poiId`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `quest_poi_points`;
CREATE TABLE `quest_poi_points` (
  `questId` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `poiId` TINYINT(3) NOT NULL DEFAULT '0',
  `x` INT(11) NOT NULL DEFAULT '0',
  `y` INT(11) NOT NULL DEFAULT '0',
  KEY `idx_poip` (`questId`,`poiId`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

