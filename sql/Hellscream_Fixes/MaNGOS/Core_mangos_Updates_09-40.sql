UPDATE creature_template SET speed_walk = 2.5, modelid_A = 11686, modelid_H = 11686, faction_A = 35, faction_H = 35, minlevel = 80, maxlevel = 80,
AIName = '', ScriptName = 'mob_mirror_image' WHERE entry = 31216;

-- Entrance
UPDATE `areatrigger_teleport` SET `required_level` = '80' WHERE `areatrigger_teleport`.`id` =5670;

UPDATE `creature` SET `spawntimesecs` = 7200 WHERE `map` = 631 AND (`spawntimesecs` BETWEEN 200 AND 7100 );

DELETE FROM `gameobject` WHERE `guid` = 913334;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(913334, 202244, 631, 3, 1, -209.5, 2211.91, 199.97, 3.07661, 0, 0, 0.999472, 0.0324833, 0, 0, 1);

UPDATE `gameobject_template` SET `flags` = 0, `ScriptName` = 'go_icecrown_teleporter' WHERE `entry`  IN (202242,202243,202244,202245,202235,202223,202246);
UPDATE `gameobject` SET `phaseMask` = 1 WHERE `id`  IN (202242,202243,202244,202245,202235,202223,202246);
DELETE FROM `areatrigger_teleport` WHERE `id` = 5718 AND `target_map` = 631;

DELETE FROM `creature` WHERE `id` = 99322;
DELETE FROM `creature_template` WHERE `entry` = 99322;
DELETE FROM `locales_npc_text` WHERE `entry` = 99322;
DELETE FROM `npc_text` WHERE `ID` = 99322;
DELETE FROM `locales_npc_text` WHERE `entry` = 99323;
DELETE FROM `npc_text` WHERE `ID` = 99323;
DELETE FROM `gameobject` WHERE `guid` IN (913334);

UPDATE `instance_template` SET `script`='instance_icecrown_spire' WHERE `map`=631;

-- Saurfang
UPDATE `creature_template` SET `ScriptName`='boss_deathbringer_saurfang' WHERE `entry`=37813;
DELETE FROM `gameobject` WHERE `guid` IN (913383, 913385, 913395, 913397);
DELETE FROM `gameobject_template` WHERE `entry` IN (902241,902242);

-- Deathwhisper
UPDATE `creature_template` SET `ScriptName`='boss_lady_deathwhisper' WHERE `entry`=36855;
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14,`ScriptName`='mob_vengeful_shade', `AIName`='' WHERE `entry`= 38222;
#UPDATE `gameobject` SET `spawntimesecs` = -25, `state` = 1 WHERE `id` = 202220;

-- Marrowgar
UPDATE `creature_template` SET `ScriptName`='boss_lord_marrowgar' WHERE `entry`= 36612;
UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201910,201911);
UPDATE `gameobject` SET `state` = '1' WHERE `guid` IN (72526,72525);
UPDATE `creature_template` SET `ScriptName`='mob_coldflame', `minlevel` = 82, `maxlevel` = 82, `modelid_A` = 11686, `modelid_A2` = 11686, `modelid_H` = 11686, `modelid_H2` = 11686, `faction_A` = 14, `faction_H` = 14  WHERE `entry`= 36672;
UPDATE `creature_template` SET `ScriptName`='mob_bone_spike' WHERE `entry`= 38711;

-- Gunship battle
UPDATE `creature_template` SET `ScriptName`='mob_spire_frostwyrm', `AIName`='' WHERE `entry`= 37230;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 37230;
UPDATE `creature_template` SET `ScriptName`='mob_frost_giant', `AIName`='' WHERE `entry` IN (38490, 38494) ;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (38490, 38494);

-- Gunship armory (override)
DELETE FROM `gameobject` WHERE `id` IN (201872,201873,201874,201875,202177,202178,202179,202180);
UPDATE `gameobject_template` SET `flags` = 0 WHERE `gameobject_template`.`entry` IN (201872,201873,201874,201875,202177,202178,202179,202180);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(972541, 201872, 631, 1, 1, -428.141, 2421.34, 191.233, 3.10389, 0, 0, 0.999822, 0.0188489, -604800, 100, 1),
(972543, 201873, 631, 2, 1, -428.141, 2421.34, 191.233, 3.10389, 0, 0, 0.999822, 0.0188489, -604800, 100, 1),
(972545, 201874, 631, 4, 1, -428.141, 2421.34, 191.233, 3.10389, 0, 0, 0.999822, 0.0188489, -604800, 100, 1),
(972547, 201875, 631, 8, 1, -428.141, 2421.34, 191.233, 3.10389, 0, 0, 0.999822, 0.0188489, -604800, 100, 1),
(972551, 202177, 631, 1, 1, -447.493, 2003.5, 191.235, 0.153939, 0, 0, 0.0768933, 0.997039, -604800, 100, 1),
(972553, 202178, 631, 2, 1, -447.493, 2003.5, 191.235, 0.153939, 0, 0, 0.0768933, 0.997039, -604800, 100, 1),
(972555, 202179, 631, 4, 1, -447.493, 2003.5, 191.235, 0.153939, 0, 0, 0.0768933, 0.997039, -604800, 100, 1),
(972557, 202180, 631, 8, 1, -447.493, 2003.5, 191.235, 0.153939, 0, 0, 0.0768933, 0.997039, -604800, 100, 1);

-- Plague wing
-- Rotface
UPDATE `creature_template` SET `ScriptName`='boss_rotface', `AIName`=''  WHERE `entry`= 36627;
UPDATE `gameobject_template` SET `faction` = '114' WHERE `gameobject_template`.`entry` IN (201370);
UPDATE `gameobject` SET `state` = '0' WHERE `id` IN (201370);
-- Festergut
UPDATE `creature_template` SET `ScriptName`='boss_festergut', `AIName`=''  WHERE `entry`= 36626;
UPDATE `gameobject_template` SET `faction` = '114' WHERE `gameobject_template`.`entry` IN (201371);
UPDATE `gameobject` SET `state` = '0' WHERE `id` IN (201371);

-- Professor putricide
UPDATE `creature_template` SET `ScriptName`='boss_proffesor_putricide', `AIName`='' WHERE `entry`= 36678;
UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201372,201614,201613, 201612);
UPDATE `gameobject` SET `state` = '1' WHERE `id` IN (201612,201614,201613);
UPDATE `gameobject` SET `state` = '0' WHERE `id` IN (201372);
UPDATE `creature_template` SET `ScriptName`='mob_icc_gas_cloud', `AIName`='' WHERE `entry`= 37562;
UPDATE `creature_template` SET `ScriptName`='mob_icc_volatile_ooze', `AIName`='' WHERE `entry`= 37697;
UPDATE `gameobject_template` SET `faction` = '0', `ScriptName` = 'go_plague_sigil' WHERE `gameobject_template`.`entry` IN (202182);

-- Blood wing
UPDATE `gameobject_template` SET `faction` = '0', `ScriptName` = 'go_bloodwing_sigil' WHERE `gameobject_template`.`entry` IN (202181);
-- Taldaram
-- UPDATE `creature_template` SET `ScriptName`='boss_taldaram' WHERE `entry`= 37973;
-- Valanar
-- UPDATE `creature_template` SET `ScriptName`='boss_valanar' WHERE `entry`= 37970;
-- Keleseth
-- UPDATE `creature_template` SET `ScriptName`='boss_keleseth' WHERE `entry`= 37972;
UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201920,201377,201378);
UPDATE `gameobject` SET `state` = '1' WHERE `id` IN (201920,201377,201378);
UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201376);
UPDATE `gameobject` SET `state` = '0' WHERE `id` IN (201376);

-- Qween Lana'thel
-- UPDATE `creature_template` SET `ScriptName`='boss_lanathel' WHERE `entry`= 37955;

-- Valithria dreamwalker
-- UPDATE `creature_template` SET `ScriptName`='boss_valithria' WHERE `entry`= 36789;
UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201374,201375,201369);
UPDATE `gameobject` SET `state` = '1' WHERE `id` IN (201374,201375,201369);
UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `gameobject_template`.`entry` IN (201380,201381,201382,201383);
UPDATE `gameobject` SET `state` = '1' WHERE `id` IN (201380,201381,201382,201383);

-- Sindragosa
-- UPDATE `creature_template` SET `ScriptName`='boss_sindragosa' WHERE `entry`= 37755;
-- Lich King
-- UPDATE `creature_template` SET `ScriptName`='boss_lich_king' WHERE `entry`= 29983;

-- Quest "They took our men!"
-- rusty cage
UPDATE gameobject_template SET data3 = 6000, ScriptName = 'go_rusty_cage' WHERE entry = 191544;

-- Aura:Scarlet Raven Priest Image availeble only inside New Hearthglen 
 
DELETE FROM spell_area WHERE spell IN(48763,48761); 
INSERT INTO spell_area VALUES 
(48763,4180,12274,1,12274,0,690,2,0), 
(48761,4180,12274,1,12274,0,690,1,0); 

-- A Fall from Grace 
UPDATE quest_template SET startscript = 12274, completescript = 12274 
WHERE entry = 12274;

-- Spell: A Fall from Grace: Quest Accept (triggering transform auras)
DELETE FROM quest_start_scripts WHERE id = 12274;
INSERT INTO quest_start_scripts VALUES 
(12274,1,15,48774,0,0,0,0,0,0);

-- A Fall from Grace: Quest Completion (triggering spell removing transforming auras) 
DELETE FROM quest_end_scripts WHERE id = 12274;
INSERT INTO quest_end_scripts VALUES 
(12274,1,15,48765,0,0,0,0,0,0);

-- Support for quest Blood in the Water (12810) by Tank

-- Gore Bladder (6509)

UPDATE creature_template SET AIName='EventAI' WHERE entry=29392;

DELETE FROM creature_ai_scripts WHERE id IN (2939201,2939202,2939203);
INSERT INTO creature_ai_scripts VALUES
-- Ravenous Jaws (29392)
(2939201,29392,0,0,100,1,4000,4000,9000,9000,11,3391,0,0,0,0,0,0,0,0,0,0,'Ravenous Jaws - Trash'),
(2939202,29392,6,0,100,0,0,0,0,0,11,47172,0,6,0,0,0,0,0,0,0,0,'Ravenous Jaws - Cast Underwater Blood on death'),
(2939203,29392,8,0,100,0,6509,-1,0,0,33,29391,6,0,28,0,47172,0,0,0,0,0,'Ravenous Jaws - Quest Credit after spell hit');
-- item required target for Gore Bladder (40551)
DELETE FROM item_required_target WHERE entry=40551;
INSERT INTO item_required_target VALUES
(40551,2,29392);

-- Support for quest The Focus on the beach (12066/12065)

-- Add trigger (26773) into the world
DELETE FROM creature WHERE guid IN (2677301,2677302);
INSERT INTO creature VALUES
(2677301,26773,571,1,1,0,0,3115.99,2153.48,20.2818,1.42392,25,0,0,1,0,0,0),
(2677302,26773,571,1,1,0,0,3139.12,2135.96,23.5424,2.6668,25,0,0,1,0,0,0);

-- Acid support for trigger (26773)
UPDATE creature_template SET 
AIName='EventAI',
modelid_A=11686,
modelid_H=11686
WHERE entry=26773;

DELETE FROM creature_ai_scripts WHERE id=2677301;
INSERT INTO creature_ai_scripts VALUES
(2677301,26773,8,0,100,0,50546,-1,0,0,16,26773,50546,6,41,0,0,0,0,0,0,0,'The Focus on the Beach Kill Credit Bunny - Quest Credit after spell hit');

DELETE FROM spell_script_target WHERE entry=50546;
INSERT INTO spell_script_target VALUES
(50546,1,26773);

DELETE FROM `spell_bonus_data` WHERE `entry` = 54158;

/* Click on Inconspicuous Mine Car to teleport on Shipboard, hack q12701 for now */
UPDATE gameobject_template SET type = 22, data0 = 70104, data1 = 0, data3 = 0, data10 = 0 WHERE entry = 190767;
INSERT IGNORE INTO spell_script_target (`entry`,`type`,`targetEntry`) VALUES (70104, 1, 28833);

/* Massacre At Light's Point */
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (28887, 28833, 28864));
DELETE FROM vehicle_data WHERE entry IN (25, 79);
INSERT INTO vehicle_data VALUES (25, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),(79, 5, 52435, 52576, 52588, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM vehicle_seat_data WHERE seat IN (1427, 341);
INSERT INTO vehicle_seat_data VALUES (1427, 1),(341, 1);
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (28887, 28833, 28864);
INSERT INTO npc_spellclick_spells VALUES (28833, 52447, 12701, 1, 12701, 1),(28887, 52447, 12701, 1, 12701, 1),(28864, 67373, 0, 0, 0, 1);
DELETE FROM creature_template_addon WHERE entry IN (28887, 28833, 28864);
INSERT INTO creature_template_addon VALUES (28887, 0, 0, 2049, 0, 0, 79, '', ''),(28833, 0, 0, 2049, 0, 0, 79, '', ''),(28864,0,0,0,0,0,25,NULL,'61453 0 61453 2');

/* fixes for Frostbrood Vanquisher to fly and be faster */
DELETE FROM creature_template_addon WHERE entry = 28670;
INSERT INTO creature_template_addon VALUES (28670, 0, 50331648, 1, 0, 1024, 156, NULL, '53112 0 53112 1 53112 2');
UPDATE creature_template SET InhabitType = 3 WHERE entry = 28670;

-- Test at Sea
UPDATE `creature_template` SET `ScriptName`='npc_apothecary_lysander' WHERE (`entry`='24126');
-- update script for questitem, quest-npc, end-quest-npc
UPDATE `item_template` SET ScriptName='item_flare_gun' WHERE entry=24278;
UPDATE `creature_template` SET ScriptName='npc_vindicator_kuros' WHERE entry=17843;
UPDATE `creature_template` SET ScriptName='npc_tracker_of_the_hand' WHERE entry=17853;

-- anpassen der geschwindigkeiten damit die npcs synchron laufen, der 2. eintrag ist für matis, und wirkt nur bei diesem event
UPDATE `creature_template` SET `MovementType`='0' WHERE (`entry`='17659');
UPDATE `creature_template` SET `speed_walk` = '1.48' WHERE (`entry` = '17865');

-- Leave only one spawn coppy of Injured Oracle
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28217);
DELETE FROM creature WHERE id = 28217;
INSERT INTO `creature` VALUES
('1010300','28217','571','1','1','25016','0','5400.44','4502.65','-130.794','0.279253','300','0','0','9103','8313','0','0');
INSERT INTO creature_addon VALUES ('1010300','0','0','1','0','0','0',NULL,NULL);

UPDATE creature_template SET ScriptName = 'npc_injured_oracle' WHERE entry = 28217;

DELETE FROM `creature` WHERE (`id`='17379');
UPDATE `creature_template` SET `ScriptName`='npc_ancestor_akida' WHERE (`entry`='17379');
UPDATE `creature_template` SET `ScriptName`='npc_totem_of_akida' WHERE (`entry`='17360');
UPDATE `quest_template` SET `SpecialFlags`='2' WHERE (`entry`='9539');
DELETE FROM `creature` WHERE (`id`='17391');
UPDATE `creature_template` SET `ScriptName`='npc_ancestor_coo' WHERE (`entry`='17391');
UPDATE `creature_template` SET `ScriptName`='npc_totem_of_coo' WHERE (`entry`='17361');
UPDATE `quest_template` SET `SpecialFlags`='2', `SrcSpell`=NULL WHERE (`entry`='9540');

DELETE FROM `creature` WHERE (`id`='17393');
UPDATE `creature_template` SET `ScriptName`='npc_ancestor_yor' WHERE (`entry`='17393');
UPDATE `creature_template` SET `ScriptName`='npc_totem_of_yor' WHERE (`entry`='17363');
UPDATE `quest_template` SET `SpecialFlags`='2', `SrcSpell`=NULL WHERE (`entry`='9542');

DELETE FROM `creature` WHERE (`id`='17392');
UPDATE `creature_template` SET `ScriptName`='npc_ancestor_tikti' WHERE (`entry`='17392');
UPDATE `creature_template` SET `ScriptName`='npc_totem_of_tikti' WHERE (`entry`='17362');
UPDATE `quest_template` SET `SpecialFlags`='2', `SrcSpell`=NULL WHERE (`entry`='9541');


-- deleting ytdb quest support for compatible reason
DELETE FROM `creature_ai_scripts` WHERE creature_id=17318;
-- adding event handling for spell event
DELETE FROM `event_scripts` WHERE (`id`='10675');
INSERT INTO event_scripts () VALUES
   (10675, 0, 10, 17243, 80000, 0, -5029.91, -11291.79, 8.096, 6.27609),
   (10675, 90, 8, 17243, 1, 0, 0, 0, 0, 0),
   (10675, 1, 10, 17318, 80000, 0, -5152.65, -11250.14, 3.6, 2.82662);
UPDATE `creature_template` SET `ScriptName`='npc_geezle' WHERE (`entry`='17318');

UPDATE `creature_template` SET `ScriptName`='npc_infused_crystal' WHERE `entry`='16364';
UPDATE `creature_template` SET `MovementType`='0', `flags_extra`='64', `speed_walk`='1' WHERE (`entry`='2983');
UPDATE `quest_template` SET `SpecialFlags`='2' WHERE (`entry`='772');

UPDATE `creature_template` SET `ScriptName`='npc_mana_wyrm' WHERE `entry`='15274';
UPDATE `quest_template` SET `ReqCreatureOrGOCount1`='1' WHERE `entry`='8346';
UPDATE `quest_template` SET `ReqSpellCast1`='0' WHERE `entry`='8346';

/* VIOLET HOLD */
UPDATE `instance_template` SET `script`='instance_violet_hold' WHERE `map`=608;
UPDATE `creature_template` SET `ScriptName`='npc_sinclari', npcflag='1',`minhealth`=ROUND(`minhealth`*4), `maxhealth`=ROUND(`maxhealth`*4) WHERE `entry`='30658'; -- 64
UPDATE `creature_template` SET `ScriptName`='npc_azure_saboteur' WHERE `entry`='31079';
UPDATE `creature_template` SET `ScriptName`='boss_cyanigosa' WHERE `entry`='31134';
UPDATE `creature_template` SET `ScriptName`='boss_erekem' WHERE `entry`='29315';
UPDATE `creature_template` SET `ScriptName`='mob_erekem_guard' WHERE `entry`='29395';
UPDATE `creature_template` SET `ScriptName`='boss_ichoron' WHERE `entry`='29313';
UPDATE `creature_template` SET `ScriptName`='mob_ichor_globule',`modelid_A`=5492, `modelid_H`=5492 WHERE `entry`='29321';
UPDATE `creature_template` SET `modelid_A`=5492, `modelid_H`=5492 WHERE `entry`='31515'; -- heroic
UPDATE `creature_template` SET `ScriptName`='boss_lavanthor' WHERE `entry`='29312';
UPDATE `creature_template` SET `ScriptName`='boss_moragg' WHERE `entry`='29316';
UPDATE `creature_template` SET `ScriptName`='boss_xevozz' WHERE `entry`='29266';
UPDATE `creature_template` SET `ScriptName`='mob_ethereal_sphere' WHERE `entry`='29271';
UPDATE `creature_template` SET `ScriptName`='boss_zuramat' WHERE `entry`='29314';
UPDATE `creature_template` SET `ScriptName`='mob_zuramat_sentry' WHERE `entry`='29364';
UPDATE `creature_template` SET `ScriptName`='npc_violet_portal' WHERE `entry`='31011';

DELETE FROM `creature` WHERE map = 608 AND `id`='31011';
DELETE FROM `creature` WHERE map = 608 AND `id`='31134'; -- cyanigosa should not spawn
UPDATE `gameobject_template` SET `flags`=`flags`|4 WHERE `entry` IN (191723,191564,191563,191562,191606,191722,191556,191566,191565); -- door untargetable

UPDATE `creature_template` SET AIName='EventAI',`ScriptName`='' WHERE `entry` IN ('30660','30695','30666','30668','30667','32191');
DELETE FROM creature_ai_scripts WHERE creature_id IN ('30660','30695','30666','30668','30667','32191');
INSERT INTO `creature_ai_scripts` VALUES
('3066001', '30660', '0', '0', '100', '1', '5000', '10000', '30000', '32000', '11', '58504', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Agonizing Strike'),
('3066002', '30660', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '58508', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Side Swipe'),
('3069501', '30695', '0', '0', '100', '3', '5000', '10000', '30000', '32000', '11', '58531', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcane Missiles'),
('3069502', '30695', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '58534', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Deep Freeze'),
('3069503', '30695', '0', '0', '100', '3', '12000', '15000', '24000', '30000', '11', '58532', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Frostbolt Volley'),
('3069504', '30695', '0', '0', '100', '5', '5000', '10000', '30000', '32000', '11', '61593', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcane Missiles'),
('3069505', '30695', '0', '0', '100', '5', '12000', '15000', '24000', '30000', '11', '61594', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Frostbolt Volley'),
('3066601', '30666', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '32736', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mortal Strike'),
('3066602', '30666', '0', '0', '100', '3', '12000', '15000', '24000', '30000', '11', '41057', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Whirlwind'),
('3066603', '30666', '0', '0', '100', '5', '5000', '10000', '30000', '32000', '11', '41056', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Whirlwind'),
('3066801', '30668', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '60158', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Magic Reflection'),
('3066802', '30668', '0', '0', '100', '1', '12000', '15000', '24000', '30000', '11', '52719', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Concussion Blow'),
('3066701', '30667', '0', '0', '100', '3', '5000', '10000', '30000', '32000', '11', '60181', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcane Stream'),
('3066702', '30667', '0', '0', '100', '3', '12000', '15000', '24000', '30000', '11', '60182', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mana Detonation'),
('3066703', '30667', '0', '0', '100', '5', '5000', '10000', '30000', '32000', '11', '60204', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Arcane Stream'),
('3066704', '30667', '0', '0', '100', '5', '12000', '15000', '24000', '30000', '11', '60205', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Mana Detonation'),
('3219101', '32191', '0', '0', '100', '1', '11000', '11000', '15000', '15000', '11', '58471', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Backstab'),
('3219102', '32191', '0', '0', '100', '1', '10000', '10000', '15000', '15000', '11', '58470', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Tactical Blink');
DELETE FROM `spell_script_target` WHERE `entry` IN (54160,59474);
INSERT INTO spell_script_target VALUES (54160, 1, 29266);
INSERT INTO spell_script_target VALUES (59474, 1, 29266);

UPDATE `creature_template` SET `ScriptName`='npc_door_seal_vh', unit_flags=33816580 WHERE entry=30896;
UPDATE `creature_template` SET `faction_A`=35, faction_H=35 WHERE entry=30658;
UPDATE `creature_template` SET `faction_A`=1720, faction_H=1720, ScriptName='mob_vh_dragons', minlevel=70,maxlevel=70,minhealth=7000,maxhealth=8000  WHERE entry IN (30660, 30661, 30662, 30663, 30664, 30666, 30667, 30668, 32191, 30695);
UPDATE `creature_template` SET `ScriptName` = 'boss_malygos' WHERE `entry` = 29655;

UPDATE `instance_template` SET `script`='instance_forge_of_souls' WHERE `map`=632;
UPDATE `creature_template` SET `ScriptName`='boss_bronjahm', `AIName` ='' WHERE `entry`=36497;
UPDATE `creature_template` SET `ScriptName`='mob_soul_fragment', `modelid_A`= 10771, `modelid_H`= 10771, `AIName` ='' WHERE `entry`=36535;
-- original modelid - 30233
-- UPDATE `creature_template` SET `ScriptName`='boss_devourer', `AIName` ='' WHERE `entry`=33113;
-- UPDATE `instance_template` SET `script`='instance_pit_of_saron' WHERE `map`=658;
UPDATE `instance_template` SET `script`='instance_halls_of_reflection' WHERE `map`=668;
UPDATE `creature_template` SET `ScriptName`='boss_falryn' WHERE `entry`=38112;
UPDATE `creature_template` SET `ScriptName`='boss_marwyn' WHERE `entry`=38113;
-- UPDATE `creature_template` SET `ScriptName`='boss_lich_king_fh' WHERE `entry`=37226;
UPDATE `gameobject_template` SET ScriptName = 'go_frostmourne_altar' WHERE `entry` = 202236;
UPDATE `gameobject_template` SET ScriptName = 'go_frostmourne' WHERE `entry` = 202302;
DELETE FROM `creature` WHERE `map` = 668 AND `id` IN (38177,38176,38173,38172,38567,38175);
UPDATE `creature_template` SET `ScriptName`='generic_creature' WHERE `entry` IN (38177,38176,38173,38172,38567,38175);
UPDATE `gameobject_template` SET `faction` = '114' WHERE `entry` IN (197341, 201976);
UPDATE `creature_template` SET `ScriptName`='npc_plains_vision' WHERE (`entry`='2983');

-- instance
UPDATE `instance_template` SET `script`='instance_trial_of_the_crusader' WHERE `map`=649;
DELETE FROM `creature` WHERE `map` = 649 AND `id` IN 
(34797,34796,34799,35144,34780,34460,34463,34461,34471,34475,34472,34453,34455,34458,34454,34451,34456,34497,34496,34564,34467,35465,34468,35610,34473,34474,34441,34449,34448,34450,34606, 34605, 34607, 34564);

-- announcers
UPDATE `creature_template` SET `npcflag`=1, `scriptname`='npc_toc_announcer' WHERE `entry`=34816;
DELETE FROM `creature` WHERE `map` = 649 AND `id` = 35766;

DELETE FROM `npc_text` WHERE `ID` IN (724001, 724002, 724003, 724004, 724005, 724006); 
INSERT INTO `npc_text` (`ID`, `Text0_0`) VALUES
(724001, 'Greetings $N! Are you ready to be tested in Crusaders Coliseum?'),
(724002, 'Are you ready for the next stage?'),
(724003, 'Are you ready to fight the champions of the Silver vanguard?'),
(724004, 'Are you ready for the next stage?'),
(724005, 'Are you ready to continue battle with Anub-Arak?'),
(724006, 'Today, the arena is closed. Script dungeon designed specifically for server Pandora http://wow.teletoria.ru (c) /dev/rsa 2010');

DELETE FROM `locales_npc_text` WHERE `entry` IN (724001, 724002, 724003, 724004, 724005, 724006); 
INSERT INTO `locales_npc_text` (`entry`, `Text0_0_loc1`, `Text0_0_loc2`, `Text0_0_loc3`, `Text0_0_loc4`, `Text0_0_loc5`, `Text0_0_loc6`, `Text0_0_loc7`, `Text0_0_loc8`) VALUES
(724001, 'Greetings $N! Are you ready to be tested in Crusaders Coliseum?', NULL, NULL, NULL, NULL, NULL, NULL, '???????????, $N! ?? ?????? ?????? ????????? ????????????'),
(724002, 'Are you ready for the next stage?', NULL, NULL, NULL, NULL, NULL, NULL, '?? ?????? ? ?????????? ??????'),
(724003, 'Are you ready to fight the champions of the Silver vanguard?', NULL, NULL, NULL, NULL, NULL, NULL, '?? ?????? ??????? ? ?????????? ??????????? ??????????'),
(724004, 'Are you ready for the next stage?', NULL, NULL, NULL, NULL, NULL, NULL, '?? ?????? ? ?????????? ??????'),
(724005, 'Are you ready to continue battle with Anub-Arak?', NULL, NULL, NULL, NULL, NULL, NULL, '?? ?????? ?????????? ??? ? ????-???????'),
(724006, 'Today, the arena is closed. Script dungeon designed specifically for server Pandora http://wow.teletoria.ru (c) /dev/rsa 2010', NULL, NULL, NULL, NULL, NULL, NULL, '?? ??????? ????? ???????. ?????? ???????? ?????????? ?????????? ??? ??????? ??????? http://wow.teletoria.ru (c) /dev/rsa 2010');

UPDATE `creature_template` SET `scriptname`='boss_lich_king_toc' WHERE `entry`=35877;
UPDATE `creature_template` SET `minhealth`= 20000, `maxhealth` = 20000, `faction_A`= 1770, `faction_H` = 1770,  `scriptname`='npc_fizzlebang_toc' WHERE `entry`=35458;
UPDATE `creature_template` SET `scriptname`='npc_tirion_toc' WHERE `entry`=34996;
UPDATE `creature_template` SET `scriptname`='npc_garrosh_toc' WHERE `entry`=34995;
UPDATE `creature_template` SET `scriptname`='npc_rinn_toc' WHERE `entry`=34990;

-- Grand crusaders
UPDATE `creature_template` SET `scriptname`='mob_toc_warrior', `AIName` ='' WHERE `entry` IN (34475,34453);
UPDATE `creature_template` SET `scriptname`='mob_toc_mage', `AIName` ='' WHERE `entry` IN (34468,34449);
UPDATE `creature_template` SET `scriptname`='mob_toc_shaman', `AIName` ='' WHERE `entry` IN (34463,34455);
UPDATE `creature_template` SET `scriptname`='mob_toc_enh_shaman', `AIName` ='' WHERE `entry` IN (34470,34444);
UPDATE `creature_template` SET `scriptname`='mob_toc_hunter', `AIName` ='' WHERE `entry` IN (34467,34448);
UPDATE `creature_template` SET `scriptname`='mob_toc_rogue', `AIName` ='' WHERE `entry` IN (34472,34454);
UPDATE `creature_template` SET `scriptname`='mob_toc_priest', `AIName` ='' WHERE `entry` IN (34466,34456);
UPDATE `creature_template` SET `scriptname`='mob_toc_shadow_priest', `AIName` ='' WHERE `entry` IN (34473,34441);
UPDATE `creature_template` SET `scriptname`='mob_toc_dk', `AIName` ='' WHERE `entry` IN (34461,34458);
UPDATE `creature_template` SET `scriptname`='mob_toc_paladin', `AIName` ='' WHERE `entry` IN (34465,34445);
UPDATE `creature_template` SET `scriptname`='mob_toc_retro_paladin', `AIName` ='' WHERE `entry` IN (34471,34456);
UPDATE `creature_template` SET `scriptname`='mob_toc_druid', `AIName` ='' WHERE `entry` IN (34460,34451);
UPDATE `creature_template` SET `scriptname`='mob_toc_boomkin', `AIName` ='' WHERE `entry` IN (34469,34459);
UPDATE `creature_template` SET `scriptname`='mob_toc_warlock' WHERE `entry` IN (34474,34450);

UPDATE `creature_template` SET `scriptname`='mob_toc_pet_warlock', `AIName` ='' WHERE `entry` IN (35465);
UPDATE `creature_template` SET `scriptname`='mob_toc_pet_hunter', `AIName` ='' WHERE `entry` IN (35610);

UPDATE `creature_template` SET `lootid`= 0 WHERE  `entry` IN
(34460,34463,34461,34471,34475,34472,34453,34455,34458,34454,34451,34456,34467,35465,34468,35610,34473,34474,34441,34449,34448,34450);
UPDATE `creature_template` SET `lootid`= 0 WHERE  `entry` IN
(12266,12209,12212,12281,12190,12284,12269,12272,12229,12187,12091,12088,12169,12103,12106,12112,12166,12163,12175,12183,12303,12300);
UPDATE `creature_template` SET `lootid`= 0 WHERE  `entry` IN
(12267,12210,12213,12282,12191,12285,12270,12273,12230,12188,12092,12089,12170,12104,12107,12113,12167,12164,12181,12184,12304,12301);
UPDATE `creature_template` SET `lootid`= 0 WHERE  `entry` IN
(12268,12211,12214,12283,12192,12286,12271,12274,12231,12189,12093,12090,12171,12105,12108,12114,12168,12165,12182,12185,12305,12302);

-- N10
DELETE FROM `creature_loot_template` WHERE `entry` IN 
(34460,34463,34461,34471,34475,34472,34453,34455,34458,34454,34451,34456,34467,35465,34468,35610,34473,34474,34441,34449,34448,34450);
-- H10
DELETE FROM `creature_loot_template` WHERE `entry` IN 
(12266,12209,12212,12281,12190,12284,12269,12272,12229,12187,12091,12088,12169,12103,12106,12112,12166,12163,12175,12183,12303,12300);
-- N25
DELETE FROM `creature_loot_template` WHERE `entry` IN 
(12267,12210,12213,12282,12191,12285,12270,12273,12230,12188,12092,12089,12170,12104,12107,12113,12167,12164,12181,12184,12304,12301);
-- H25
DELETE FROM `creature_loot_template` WHERE `entry` IN 
(12268,12211,12214,12283,12192,12286,12271,12274,12231,12189,12093,12090,12171,12105,12108,12114,12168,12165,12182,12185,12305,12302);

-- Nortrend beasts
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (34796, 34799, 35144, 34797);
UPDATE `creature_template` SET `scriptname`='boss_gormok', `AIName` ='' WHERE `entry`=34796;
UPDATE `creature_template` SET `scriptname`='mob_snobold_vassal', `AIName` ='' WHERE `entry`=34800;

UPDATE `creature_template` SET `scriptname`='boss_dreadscale', `AIName` ='' WHERE `entry`=34799;
UPDATE `creature_template` SET `scriptname`='boss_acidmaw', `AIName` ='' WHERE `entry`=35144;
UPDATE `creature_template` SET `scriptname`='mob_slime_pool', `minlevel` = 80, `maxlevel` = 80, `minhealth`= 30000, `maxhealth` = 30000,`AIName` ='', `faction_A`= 14, `faction_H` = 14, `modelid_A` = 12349, `modelid_H` = 12349 WHERE `entry` = 35176;
-- Model id for slime_pool need change!

UPDATE `creature_template` SET `scriptname`='boss_icehowl', `AIName` ='' WHERE `entry`=34797;

UPDATE `creature_template` SET `lootid`= 0 WHERE  `entry` IN (34796,34799,35144);
DELETE FROM `creature_loot_template`  WHERE  `entry` IN (34796,34799,35144);

-- Jaraxxus
UPDATE `creature_template` SET `scriptname`='boss_jaraxxus', `AIName` ='' WHERE `entry`= 34780;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (34780, 34784, 34813, 34815, 34825, 34826);
UPDATE `creature_template` SET `scriptname`='mob_legion_flame', `minlevel` = 82, `maxlevel` = 82, `modelid_A` = 11686, `modelid_A2` = 11686, `modelid_H` = 11686, `modelid_H2` = 11686, `AIName` ='', `faction_A`= 14, `faction_H` = 14 WHERE `entry` = 34784;
UPDATE `creature_template` SET `scriptname`='mob_infernal_volcano', `AIName` ='' WHERE `entry` = 34813;
UPDATE `creature_template` SET `scriptname`='mob_fel_infernal', `AIName` ='' WHERE `entry` = 34815;
UPDATE `creature_template` SET `scriptname`='mob_nether_portal', `AIName` ='' WHERE `entry` = 34825;
UPDATE `creature_template` SET `scriptname`='mob_mistress_of_pain', `AIName` ='' WHERE `entry` = 34826;

-- Valkiries
UPDATE `creature_template` SET `scriptname` = 'boss_fjola', `AIName` ='' WHERE `entry`=34497;
UPDATE `creature_template` SET `scriptname` = 'boss_eydis', `AIName` ='' WHERE `entry`=34496;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (34497, 34496, 34568, 34567);
UPDATE `creature_template` SET `npcflag`=1, `scriptname`='mob_light_essence', `AIName` ='' WHERE entry = 34568;
UPDATE `creature_template` SET `npcflag`=1, `scriptname`='mob_dark_essence', `AIName` ='' WHERE entry = 34567;
UPDATE `creature_template` SET `faction_A` = 14, `minlevel` = 82, `maxlevel` = 82,`faction_H` = 14, `AIName` ='', `scriptname`='mob_unleashed_dark' WHERE entry = 34628;
UPDATE `creature_template` SET `faction_A` = 14, `minlevel` = 82, `maxlevel` = 82,`faction_H` = 14, `AIName` ='', `scriptname`='mob_unleashed_light' WHERE entry = 34630;

-- Anub'arak
UPDATE `creature_template` SET `scriptname`='boss_anubarak_trial', `unit_flags` = 0, `AIName` ='' WHERE `entry`=34564;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (34606, 34605, 34607, 34564, 34660);
UPDATE `creature_template` SET `modelid_A` = 25144, `modelid_A2` = 0, `modelid_H` = 25144, `modelid_H2` = 0, `faction_A` = 14, `faction_H` = 14, `AIName` = '', `ScriptName` = 'mob_frost_sphere' WHERE `entry` = 34606;
UPDATE `creature_template` SET `scriptname`='mob_swarm_scarab', `AIName` ='' WHERE `entry`=34605;
UPDATE `creature_template` SET `scriptname`='mob_nerubian_borrower', `AIName` ='' WHERE `entry`=34607;
UPDATE `creature_template` SET `scriptname`='mob_anubarak_spike', `faction_A` = 14, `minlevel` = 80, `maxlevel` = 80,`faction_H` = 14, `AIName` ='' WHERE `entry`=34660;

-- instance
UPDATE instance_template SET script='instance_trial_of_the_champion' WHERE map=650;

-- announcers
UPDATE creature_template SET npcflag=1, scriptname='npc_toc5_announcer' WHERE entry IN (35004, 35005);

-- grand champions
UPDATE creature_template SET scriptname='mob_toc5_warrior' WHERE entry IN (34705, 35572);
UPDATE creature_template SET scriptname='mob_toc5_mage' WHERE entry IN (34702, 35569);
UPDATE creature_template SET scriptname='mob_toc5_shaman' WHERE entry IN (34701, 35571);
UPDATE creature_template SET scriptname='mob_toc5_hunter' WHERE entry IN (34657, 35570);
UPDATE creature_template SET scriptname='mob_toc5_rogue' WHERE entry IN (34703, 35617);

-- argent challenge
UPDATE creature_template SET scriptname='boss_eadric' WHERE entry=35119;
UPDATE creature_template SET scriptname='boss_paletress' WHERE entry=34928;
UPDATE creature_template SET scriptname='mob_toc5_memory' WHERE entry IN (35052, 35041, 35033, 35046, 35043, 35047, 35044, 35039, 35034, 35049, 35030, 34942, 35050, 35042, 35045, 35037, 35031, 35038, 35029, 35048, 35032, 35028, 35040, 35036, 35051);

-- black knight
UPDATE creature_template SET faction_a=14, faction_h=14, scriptname='mob_toc5_risen_ghoul' WHERE entry IN (35545, 35564);
UPDATE creature_template SET scriptname='boss_black_knight' WHERE entry=35451;

-- free spells for creatures
UPDATE `creature_template` SET `spell1` = '0',`spell2` = '0',`spell3` = '0',`spell4` = '0' WHERE `creature_template`.`entry` IN
(34705,34702,34701,34657,34703,35572,35569,35571,35570,35617,35119,34928,35451,35545,35564,35004,35005,35052,35041,35033,35046,35043,35047,35044,35039,35034,35049,35030,34942,35050,35042,35045,35037,35031,35038,35029,35048,35032,35028,35040,35036,35051);
UPDATE `creature_template` SET `spell1` = '0',`spell2` = '0',`spell3` = '0',`spell4` = '0' WHERE `creature_template`.`entry` IN
(12002,12001,12000,12003,12004,12010,12484,12485,12447,12454,12441,12438,12453,12443,12437,12445,12725,12452,12486,12442,12482,12440,12483,12451,12456,12449,12455,12450,12487,12446,12011,12012,12436,12005,12007,12006,12009,12008);

UPDATE `creature_template` SET `ScriptName` = 'boss_krystallus' WHERE `entry` =27977 LIMIT 1 ;

UPDATE `gameobject` SET `state` = '1' WHERE `guid` =53556;
UPDATE `gameobject` SET `state` = '1' WHERE `guid` =53560;

UPDATE `gameobject_template` SET `faction` = '114',`data0` = '0' WHERE `entry` =191293;
UPDATE `gameobject_template` SET `faction` = '0', `flags` = '0'  WHERE `entry` IN (193996,190586);
UPDATE `gameobject` SET `phaseMask` = '65535' WHERE `guid` =37577;
UPDATE `gameobject` SET `phaseMask` = '65535' WHERE `guid` =37583;

UPDATE creature_template SET AIName='EventAI', ScriptName='' WHERE entry IN (32918, 36561);
DELETE FROM creature_ai_scripts WHERE creature_id IN (32918, 36561);
INSERT INTO creature_ai_scripts VALUES 
(3291800, 32918, 6, 0, 100, 2, 0, 0, 0, 0, 11, 62598, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Detonating Lasher - OnDeath (N)'),
(3291801, 32918, 6, 0, 100, 4, 0, 0, 0, 0, 11, 62937, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Detonating Lasher - OnDeath (H)');

UPDATE `creature_template` SET `ScriptName`='boss_razorscale' WHERE `entry`=33186;
UPDATE `creature_template` SET `ScriptName`='boss_ignis' WHERE `entry`=33118;
UPDATE `creature_template` SET `ScriptName`='boss_xt002' WHERE `entry`=33293;
UPDATE `creature_template` SET `ScriptName`='boss_flame_leviathan' WHERE `entry`=33113;
UPDATE `creature_template` SET `ScriptName`='boss_auriaya' WHERE `entry`=33515;
UPDATE `creature_template` SET `ScriptName`='boss_kologarn' WHERE `entry`=32930;
UPDATE `creature_template` SET `ScriptName`='boss_kologarn_left_arm' WHERE `entry`=32933;
UPDATE `creature_template` SET `ScriptName`='boss_kologarn_right_arm' WHERE `entry`=32934;
UPDATE `creature_template` SET `ScriptName`='boss_steelbreaker' WHERE `entry`=32867;
UPDATE `creature_template` SET `ScriptName`='boss_molgeim' WHERE `entry`=32927;
UPDATE `creature_template` SET `ScriptName`='boss_brundir' WHERE `entry`=32857;
UPDATE `creature_template` SET `ScriptName`='boss_thorim' WHERE `entry`=32865;
UPDATE `creature_template` SET `ScriptName`='boss_hodir' WHERE `entry`=32845;
UPDATE `creature_template` SET `ScriptName`='boss_freya' WHERE `entry`=32906;
UPDATE `creature_template` SET `ScriptName`='boss_mimiron' WHERE `entry`=33350;
UPDATE `creature_template` SET `ScriptName`='boss_vezax' WHERE `entry`=33271;
UPDATE `creature_template` SET `ScriptName`='boss_yogg_saron' WHERE `entry`=33288;
UPDATE `creature_template` SET `ScriptName`='boss_algalon' WHERE `entry`=32871;
UPDATE `instance_template` SET `script`='instance_ulduar' WHERE `map`=603;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) 
VALUES (99005, 0, 0, 0, 0, 0, 22448, 0, 22448, 0, 'Ulduar teleporter', '', NULL, 0, 80, 80, 64200, 64200, 12300, 12300, 9730, 35, 35, 1, 0.5, 0, 294, 441, 0, 110, 1.4, 1400, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 235, 353, 88, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'ulduar_teleporter');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
(99005, 0, 0, 0, 0, 0, '48143 0');
REPLACE INTO `locales_creature` values ('99005','Ulduar teleporter','','','','','','','?????????? ????????',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'');
DELETE FROM `creature` WHERE `guid` IN (500000,500001,500002,500003,500004,500005,500006,500007,500008);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(500000, 99005, 571, 3, 1, 0, 0, 9025.76, -1179.12, 1060.18, 4.59386, 3600, 0, 0, 64200, 12300, 0, 0),
(500001, 99005, 603, 3, 1, 0, 0, 1497.84, -23.9801, 421.367, 5.0242, 3600, 0, 0, 64200, 12300, 0, 0),
(500002, 99005, 603, 3, 1, 0, 0, 131.248, -35.3802, 410.204, 0, 3600, 0, 0, 64200, 12300, 0, 0),
(500003, 99005, 603, 3, 1, 0, 0, 553.233, -12.3247, 410.079, 0, 3600, 0, 0, 64200, 12300, 0, 0),
(500004, 99005, 603, 3, 1, 0, 0, 926.292, -11.4635, 418.995, 0, 3600, 0, 0, 64200, 12300, 0, 0),
(500005, 99005, 603, 3, 1, 0, 0, 2086.17, -24.3111, 421.639, 3.11803, 3600, 0, 0, 64200, 12300, 0, 0),
(500006, 99005, 603, 3, 1, 0, 0, -705.304, -92.5391, 429.879, 4.87217, 3600, 0, 0, 64200, 12300, 0, 0),
(500007, 99005, 603, 3, 1, 0, 0, 2516.96, 2568.03, 412.4, 0.672303, 3600, 0, 0, 64200, 12300, 0, 0),
(500008, 99005, 603, 3, 1, 0, 0, 1854.2975, -11.0173, 334.3998, 0, 3600, 0, 0, 64200, 12300, 0, 0);

-- iron council
UPDATE creature_template SET scriptname='mob_ulduar_lightning_elemental' WHERE entry=32958;
UPDATE creature_template SET scriptname='mob_rune_of_power' WHERE entry=33705;
UPDATE creature_template SET scriptname='mob_rune_of_summoning' WHERE entry=33051;
UPDATE creature_template SET mechanic_immune_mask=619395071, scriptname='boss_brundir' WHERE entry=32857;
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_molgeim' WHERE entry=32927;
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_steelbreaker' WHERE entry=32867;

-- kologarn
DELETE FROM creature WHERE id IN (32933, 32934, 232933);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) 
VALUES (9327991, 32933, 603, 3, 65535, 0, 0, 1799.68, -24.3599, 452.227, 3.14747, 604800, 0, 0, 543855, 0, 0, 0);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) 
VALUES (9327992, 32934, 603, 3, 65535, 0, 0, 1799.68, -24.3599, 452.227, 3.14747, 604800, 0, 0, 543855, 0, 0, 0);
UPDATE creature_model_info SET bounding_radius=15, combat_reach=15 WHERE modelid IN (28638, 28822, 28821);
UPDATE creature_template SET mechanic_immune_mask=652951551, scriptname='boss_kologarn_right_arm' WHERE entry=32934;
UPDATE creature_template SET mechanic_immune_mask=652951551, scriptname='boss_kologarn_left_arm' WHERE entry=32933;
UPDATE creature_template SET scriptname='mob_ulduar_rubble' WHERE entry=33768;
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_kologarn' WHERE entry=32930;

-- ignis
UPDATE creature_template SET mechanic_immune_mask=617299803, scriptname='boss_ignis' WHERE entry=33118;
UPDATE creature_template SET minlevel=80, maxlevel=80, faction_h=1925, faction_a=1925, scale=0.5, scriptname='mob_scorch_target' WHERE entry=33221;
UPDATE creature_template SET scriptname='mob_iron_construct' WHERE entry=33121;

DELETE FROM `creature` WHERE `id`=26712;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(927500, 26712, 600, 3, 1, 17188, 0, -365.477, -724.849, 32.2241, 3.92699, 3600, 5, 0, 4050, 0, 0, 1),
(927501, 26712, 600, 3, 1, 17188, 0, -365.368, -751.128, 32.3213, 2.35619, 3600, 5, 0, 4050, 0, 0, 1),
(927502, 26712, 600, 3, 1, 17188, 0, -392.123, -750.941, 32.2796, 0.680678, 3600, 5, 0, 4050, 0, 0, 1),
(927503, 26712, 600, 3, 1, 17188, 0, -392.455, -724.809, 32.1685, 5.35816, 3600, 5, 0, 4050, 0, 0, 1);

DELETE FROM `creature_template` WHERE (`entry`=26710);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26710, 0, 0, 0, 0, 0, 2536, 1160, 9829, 14952, 'Channel Target', '', '', 0, 1, 1, 8, 8, 0, 0, 7, 190, 190, 0, 1, 1, 0, 2, 2, 0, 24, 7.5, 2000, 0, 1, 33587200, 0, 0, 0, 0, 0, 0, 1, 1, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 0.2, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=26712);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26712, 0, 0, 0, 0, 0, 169, 0, 17188, 0, 'Crystal Channel Target', '', '', 0, 70, 70, 4050, 4050, 0, 0, 6719, 16, 16, 0, 1, 1, 0, 252, 357, 0, 304, 1, 2000, 0, 1, 33554436, 0, 0, 0, 0, 0, 0, 215, 320, 44, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'crystal_channel');

DELETE FROM `creature_template` WHERE (`entry`=26714);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26714, 0, 0, 0, 0, 0, 2536, 1160, 9829, 14952, 'Dead Crystal Holder', '', '', 0, 1, 1, 8, 8, 0, 0, 7, 190, 190, 0, 1, 1, 0, 2, 2, 0, 24, 7.5, 2000, 0, 1, 32768, 0, 0, 0, 0, 0, 0, 1, 1, 100, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 0.2, 1, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, '');

/*King Dred*/

DELETE FROM creature WHERE id in (27709, 27753, 27490);

DELETE FROM `creature` WHERE `id`=26632;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(152490, 26632, 600, 3, 1, 0, 0, -237.176, -675.768, 131.866, 4.66859, 25, 0, 0, 512278, 4169, 0, 0);

DELETE FROM `creature_template` WHERE (`entry`=26632);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26632, 31360, 0, 0, 0, 0, 27072, 0, 27072, 0, 'The Prophet Tharon\'ja', '', '', 76, 77, 275025, 275025, 0, 0, 0, 16, 16, 0, 1, 1, 1, 350, 450, 0, 400, 7.5, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 350, 450, 75, 6, 72, 26632, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'boss_tharonja');

DELETE FROM `creature_template` WHERE (`entry`=31360);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31360, 0, 0, 0, 0, 0, 27072, 0, 27072, 0, 'The Prophet Tharon\'ja (1)', '', '', 82, 82, 512278, 512278, 4169, 4169, 0, 16, 16, 0, 1, 1, 1, 450, 650, 0, 750, 13, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 350, 530, 100, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 38, 1, 0, 43670, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, '');

DELETE FROM `spell_script_target` WHERE `entry` = 49555;
INSERT INTO `spell_script_target` VALUES (49555, 2, 27753);

UPDATE `creature_template` SET minhealth = 1885, maxhealth = 1885 WHERE entry = 27753;

DELETE FROM `creature_template` WHERE (`entry`=26627);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (26627, 31344, 0, 0, 0, 0, 24500, 0, 24500, 0, 'Crystal Handler', '', '', 0, 75, 75, 21270, 21270, 0, 0, 0, 15, 15, 0, 1, 1, 1, 500, 1000, 0, 500, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'crystal_handler');

DELETE FROM `creature_template` WHERE (`entry`=31344);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31344, 0, 0, 0, 0, 0, 24500, 0, 24500, 0, 'Crystal Handler (1)', '', '', 0, 81, 81, 41704, 41704, 8979, 8979, 0, 15, 15, 0, 1, 1, 1, 1000, 1500, 0, 500, 2, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=27597);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27597, 31348, 0, 0, 0, 0, 22337, 0, 22337, 0, 'Hulking Corpse', '', '', 0, 74, 74, 12338, 12338, 0, 0, 0, 15, 15, 0, 1, 1, 1, 500, 1000, 0, 500, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1.2, 1, 0, 0, 0, 0, 0, 0, 0, 88, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=31348);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31348, 0, 0, 0, 0, 0, 22337, 0, 22337, 0, 'Hulking Corpse (1)', '', '', 0, 80, 80, 25200, 25200, 0, 0, 0, 15, 15, 0, 1, 1, 1, 1000, 1500, 0, 500, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 88, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=27598);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27598, 31873, 0, 0, 0, 0, 10978, 0, 10972, 0, 'Fetid Troll Corpse', '', '', 0, 74, 74, 2056, 2056, 0, 0, 0, 15, 15, 0, 1, 1, 0, 200, 400, 0, 500, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0.2, 1, 0, 0, 0, 0, 0, 0, 0, 73, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=31873);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31873, 0, 0, 0, 0, 0, 10978, 0, 10972, 0, 'Fetid Troll Corpse (1)', '', '', 0, 80, 80, 3780, 3780, 0, 0, 0, 15, 15, 0, 1, 1, 0, 500, 1000, 0, 500, 2, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0.3, 1, 0, 0, 0, 0, 0, 0, 0, 73, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=27600);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (27600, 31356, 0, 0, 0, 0, 2606, 0, 2606, 0, 'Risen Shadowcaster', '', '', 0, 74, 74, 1645, 1645, 7809, 7809, 0, 15, 15, 0, 1, 1, 0, 200, 400, 0, 500, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0.2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

DELETE FROM `creature_template` WHERE (`entry`=31356);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (31356, 0, 0, 0, 0, 0, 2606, 0, 2606, 0, 'Risen Shadowcaster (1)', '', '', 0, 81, 81, 3128, 3128, 8979, 8979, 0, 15, 15, 0, 1, 1, 0, 500, 1000, 0, 500, 2, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0.3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

UPDATE `creature_template` set AIName = '', ScriptName = 'boss_trollgore' where entry = 26630;
UPDATE `creature_template` set AIName = '', ScriptName = 'boss_novos' where entry = 26631;
UPDATE `creature_template` set AIName = '', ScriptName = 'crystal_handler' where entry = 26627;
UPDATE `creature_template` set AIName = '', ScriptName = 'crystal_channel' where entry = 26712;
UPDATE `creature_template` set AIName = '', ScriptName = 'risen_shadowcaster' where entry = 27600;
UPDATE `creature_template` set AIName = '', ScriptName = 'boss_dred' where entry = 27483;
UPDATE `creature_template` set AIName = '', ScriptName = 'boss_tharonja' where entry = 26632;

DELETE FROM creature_template_addon WHERE entry IN (30385, 31474);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
('30385', '0', '8', '1', '0', '0', NULL),
('31474', '0', '8', '1', '0', '0', NULL);

DELETE FROM creature_template WHERE entry IN (31474, 30385, 29310, 31465);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(29310, 31465, 0, 0, 0, 0, 26777, 0, 26777, 0, 'Jedoga Shadowseeker', '', '', 0, 75, 75, 212700, 212700, 0, 0, 8204, 16, 16, 0, 1, 1, 339, 481, 0, 370, 7.5, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 293, 436, 53, 7, 0, 29310, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4176, 6960, '', 0, 3, 20, 20, 0, 0, 0, 0, 0, 0, 0, 172, 1, 1575, 0, 0, 'boss_jedoga'),
(30385, 31474, 0, 0, 0, 0, 27382, 27384, 27383, 27385, 'Twilight Volunteer', '', '', 0, 74, 74, 25705, 25705, 0, 0, 0, 16, 16, 0, 1, 1, 0, 0, 0, 0, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2.5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 93, 0, 0, 'npc_twilight_volunteer'),
(31465, 0, 0, 0, 0, 0, 26777, 0, 26777, 0, 'Jedoga Shadowseeker (1)', '', '', 0, 82, 82, 431392, 431392, 0, 0, 10253, 16, 16, 0, 1, 1, 463, 640, 0, 726, 13, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 360, 520, 91, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8352, 13920, '', 0, 3, 32, 20, 0, 0, 0, 0, 0, 0, 0, 172, 1, 0, 0, 1, ''),
(31474, 0, 0, 0, 0, 0, 27382, 27384, 27383, 27385, 'Twilight Volunteer (1)', '', '', 0, 81, 81, 58648, 58648, 0, 0, 0, 16, 16, 0,  1, 1, 0, 0, 0, 0, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 4.5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

DELETE FROM creature_addon WHERE guid=131953;
DELETE FROM creature WHERE guid=131953;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(131953, 29310, 619, 3, 1, 26777, 0, 357.353, -692.808, -10.7028, 5.56541, 14400, 5, 0, 212700, 0, 0, 1);





