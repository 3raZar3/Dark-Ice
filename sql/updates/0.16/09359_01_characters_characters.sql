ALTER TABLE character_db_version CHANGE COLUMN required_9354_01_characters_character_action required_9359_01_characters_characters bit;

ALTER TABLE `characters` CHANGE `speccount` `specCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1;
ALTER TABLE `characters` CHANGE `activeSpec` `activeSpec` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
