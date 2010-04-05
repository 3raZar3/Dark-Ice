/*
	Demonic Vampor
    - unit flags (not attackable, pacified, not selectable)
    - bosslevel, fractions
    - speed
    - spawn/dmg aura
*/
UPDATE `creature_template` SET `unit_flags` = 0x2020002, `faction_A` = '16', `faction_H` = '16', `speed_run` = '0.95', `minlevel` = '73', `maxlevel` = '73', `ScriptName` = 'mob_felmyst_vapor' WHERE `creature_template`.`entry` = 25265;
DELETE FROM `creature_template_addon` WHERE `entry` = '25265';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES ('25265', '0', '0', '0', '0', '0', '45411 0 45411 1');


/*
	Demonic Vampor Trail
    - unit flags (not attackable, pacified, not selectable)
    - bosslevel, fractions
    - Damaging Auras
*/
UPDATE `creature_template` SET `unit_flags` = 0x2020002, `faction_A` = '16', `faction_H` = '16', `minlevel` = '73', `maxlevel` = '73', `ScriptName` = 'mob_felmyst_vapor_trail' WHERE `entry` = '25267';
DELETE FROM `creature_template_addon` WHERE `entry` = '25267';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
(25267, 0, 0, 0, 0, 0, '45399 0');


/*
    Unyielding Death:
    - EventAI (Combat Pulse)
    - Green Aura
*/
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `creature_template`.`entry` = 25268;
DELETE FROM `creature_template_addon` WHERE `entry` = '25268';
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
('25268', '0', '0', '0', '0', '0', '45415 0');
INSERT INTO `mangos`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(NULL, '25268', '1', '0', '100', '2', '500', '500', '10000', '10000', '38', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Unyielding Death - zone combat pulse if ooc');


/* Script targets for the spells */
DELETE FROM `spell_script_target` WHERE `entry` IN (45388, 45389);
INSERT INTO `spell_script_target` (`entry` ,`type` ,`targetEntry`)VALUES
('45388', '1', '25038'),
('45389', '1', '25265');

/* Felmyst, bounding radius of the model */
UPDATE `creature_model_info` SET `bounding_radius` = '8', `combat_reach` = '5' WHERE `creature_model_info`.`modelid` = 22838;
