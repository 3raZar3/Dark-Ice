DELETE FROM game_event_gameobject WHERE event IN (41, 42);
DELETE FROM game_event_creature WHERE event IN (41, 42, 43, 44, 45);
DELETE FROM fishing_loot_template WHERE condition_value1 = 45;

UPDATE `creature_template` SET `ScriptName`='mob_parasitic_shadowfiend' WHERE `entry`='23498';
UPDATE `creature_template` SET `ScriptName`='mob_shadowy_construct' WHERE `entry`='23111'; 
UPDATE `creature_template` SET `ScriptName`='boss_devourer_of_souls' WHERE entry='36502';
UPDATE `creature_template` SET `ScriptName`='boss_bronjahm' WHERE entry='36497';
UPDATE `instance_template` SET `script`='instance_forge_of_souls' WHERE map='632';
UPDATE `creature_template` SET `ScriptName`='mob_soul_fragment' WHERE `entry`='36535';
UPDATE `creature_template` SET `ScriptName`='mob_deathcloud' WHERE `entry`='25703';
UPDATE `creature_template` SET `ScriptName`='mob_voidsentinel' WHERE `entry`='25772';
UPDATE `creature_template` SET `ScriptName`='mob_singularity' WHERE `entry`='25855';
UPDATE `creature_template` SET `ScriptName`='npc_twilight_volunteer' WHERE `entry`='30385';
UPDATE `creature_template` SET `ScriptName`='mob_flame_orb' WHERE `entry`='30702';
UPDATE `creature_template` SET `ScriptName`='mob_twisted_visage' WHERE `entry`='30622';
UPDATE `creature_template` SET `ScriptName`='mob_frost_sphere' WHERE `entry`='34606';