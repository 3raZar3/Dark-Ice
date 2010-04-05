-- Fix ppm chance for spell 12322 and ranks

update `spell_proc_event` set `ppmRate` = 3 where `entry` = 12322;
update `spell_proc_event` set `ppmRate` = 6 where `entry` = 12999;
update `spell_proc_event` set `ppmRate` = 9 where `entry` = 13000;
update `spell_proc_event` set `ppmRate` = 12 where `entry` = 13001;
update `spell_proc_event` set `ppmRate` = 15 where `entry` = 13002;

-- Fix spell 12317 and ranks

DELETE FROM `spell_proc_event` WHERE `entry` IN (12317,13045,13046,13047,13048);

UPDATE `creature_template` SET `ScriptName`='boss_archavon' WHERE `entry`=31125;

UPDATE `creature_template` SET `ScriptName`='boss_emalon' WHERE `entry`=33993;

UPDATE `creature_template` SET `ScriptName`='npc_tempest_minion' WHERE `entry`=33998;

UPDATE `creature_template` SET `ScriptName`='npc_tempest_warder' WHERE `entry`=34015;

UPDATE `creature_template` SET `ScriptName`='boss_koralon' WHERE `entry`=35013;

UPDATE `instance_template` SET `script`='instance_vault_of_archavon' WHERE `map`=624;
