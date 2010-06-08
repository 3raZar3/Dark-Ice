ALTER TABLE `character_action` MODIFY `guid` INT(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier';
ALTER TABLE `guild` DROP KEY `name`;
ALTER TABLE `guild` DROP KEY `leaderguid`;

-- reorder columns according to MaNGOS structure
RENAME TABLE `arena_team` TO `arena_team_old`;
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE `arena_team` (
  `arenateamid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` CHAR(255) NOT NULL,
  `captainguid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `BackgroundColor` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `EmblemStyle` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `EmblemColor` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `BorderStyle` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `BorderColor` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY  (`arenateamid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT INTO `arena_team` (`arenateamid`,`name`,`captainguid`,`type`,`BackgroundColor`,`EmblemStyle`,`EmblemColor`,`BorderStyle`,`BorderColor` )
SELECT `arenateamid`,`name`,`captainguid`,`type`,`BackgroundColor`,`EmblemStyle`,`EmblemColor`,`BorderStyle`,`BorderColor` FROM `arena_team_old`;

DROP TABLE IF EXISTS `arena_team_old`;
