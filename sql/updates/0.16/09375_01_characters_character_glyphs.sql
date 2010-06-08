ALTER TABLE character_db_version CHANGE COLUMN required_9374_01_characters_character_glyphs required_9375_01_characters_character_glyphs bit;

RENAME TABLE `character_glyphs` TO `character_glyphs_old`; 
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE `character_glyphs` (
  `guid` INT(11) UNSIGNED NOT NULL,
  `spec` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `slot` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `glyph` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`slot`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
 
-- Extract values from data blob fields and insert them into character_glyphs
INSERT INTO `character_glyphs` SELECT `guid`, `spec`, 0, `glyph1` FROM `character_glyphs_old`;
INSERT INTO `character_glyphs` SELECT `guid`, `spec`, 1, `glyph2` FROM `character_glyphs_old`;
INSERT INTO `character_glyphs` SELECT `guid`, `spec`, 2, `glyph3` FROM `character_glyphs_old`;
INSERT INTO `character_glyphs` SELECT `guid`, `spec`, 3, `glyph4` FROM `character_glyphs_old`;
INSERT INTO `character_glyphs` SELECT `guid`, `spec`, 4, `glyph5` FROM `character_glyphs_old`;
INSERT INTO `character_glyphs` SELECT `guid`, `spec`, 5, `glyph6` FROM `character_glyphs_old`;
 
DELETE FROM character_glyphs WHERE glyph = 0;
DROP TABLE IF EXISTS `character_glyphs_old`;
