/* the Oculus Chain Quests (13124, 13126, 13127 and 13128) */
DELETE FROM spell_script_target where entry IN (49460, 49346, 49464);
DELETE FROM npc_spellclick_spells where npc_entry IN (27755, 27692, 27756);
DELETE FROM creature_template_addon where entry IN (27755, 27692, 27756);

/* Amber Drake */
INSERT INTO spell_script_target VALUES (49460, 1, 27755);
INSERT INTO npc_spellclick_spells VALUES (27755, 49459, 0, 0, 0, 1);
INSERT INTO creature_template_addon VALUES (27755, 0, 0, 0, 0, 0, 29, NULL, '53112 0 53112 1');
REPLACE INTO vehicle_data VALUES (29, 12, 49840, 49838, 49592, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (422, 3);

/* Emerald Drake */
INSERT INTO spell_script_target VALUES (49346, 1, 27692);
INSERT INTO npc_spellclick_spells VALUES (27692, 49427, 0, 0, 0, 1);
INSERT INTO creature_template_addon VALUES (27692, 0, 0, 0, 0, 0, 39, NULL, '53112 0 53112 1');
REPLACE INTO vehicle_data VALUES (39, 12, 50328, 50341, 50344, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (662, 3);

/* Ruby Drake */
INSERT INTO spell_script_target VALUES (49464, 1, 27756);
INSERT INTO npc_spellclick_spells VALUES (27756, 49463, 0, 0, 0, 1);
INSERT INTO creature_template_addon VALUES (27756, 0, 0, 0, 0, 0, 43, NULL, '53112 0 53112 1');
REPLACE INTO vehicle_data VALUES (43, 12, 50232, 50248, 50240, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (742, 3);

/* Belgaristrasz and his Companions give Drake, after Completed quest (13124) */
UPDATE creature_template SET npcflag = npcflag|1 WHERE entry IN (27657, 27658, 27659);
UPDATE `creature_template` SET `gossip_menu_id` = 27657 WHERE `entry` = 27657;
UPDATE `creature_template` SET `gossip_menu_id` = 27658 WHERE `entry` = 27658;
UPDATE `creature_template` SET `gossip_menu_id` = 27659 WHERE `entry` = 27659;
DELETE FROM gossip_scripts WHERE id IN (27657, 27658, 27659);
INSERT INTO gossip_scripts VALUES (27657,0,17,37815,1,0,0,0,0,0),(27658,0,17,37860,1,0,0,0,0,0),(27659,0,17,37859,1,0,0,0,0,0);
DELETE FROM gossip_menu_option WHERE menu_id IN (27657, 27658, 27659);
INSERT INTO gossip_menu_option VALUES 
(27657,0,0,'Take the Emerald Essence if you want to fly on the wings of the Green Flight.',1,1,0,0,27657,0,0,NULL,9,13126,0,16,37815,1,0,0,0),
(27657,1,0,'Take the Emerald Essence if you want to fly on the wings of the Green Flight.',1,1,0,0,27657,0,0,NULL,9,13127,0,16,37815,1,0,0,0),
(27657,2,0,'Take the Emerald Essence if you want to fly on the wings of the Green Flight.',1,1,0,0,27657,0,0,NULL,9,13128,0,16,37815,1,0,0,0),
(27659,0,0,'Take the Amber Essence if you want to fly on the wings of the Bronze Flight.',1,1,0,0,27659,0,0,NULL,9,13126,0,16,37859,1,0,0,0),
(27659,1,0,'Take the Amber Essence if you want to fly on the wings of the Bronze Flight.',1,1,0,0,27659,0,0,NULL,9,13127,0,16,37859,1,0,0,0),
(27659,2,0,'Take the Amber Essence if you want to fly on the wings of the Bronze Flight.',1,1,0,0,27659,0,0,NULL,9,13128,0,16,37859,1,0,0,0),
(27658,1,0,'Take the Ruby Essence if you want to fly on the wings of the Red Flight.',1,1,0,0,27658,0,0,NULL,9,13126,0,16,37860,1,0,0,0),
(27658,2,0,'Take the Ruby Essence if you want to fly on the wings of the Red Flight.',1,1,0,0,27658,0,0,NULL,9,13127,0,16,37860,1,0,0,0),
(27658,3,0,'Take the Ruby Essence if you want to fly on the wings of the Red Flight.',1,1,0,0,27658,0,0,NULL,9,13128,0,16,37860,1,0,0,0),
(27658,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0);

/* Hack for broken Nexus Portal */
UPDATE gameobject_template SET data0 = 49665 WHERE entry = 189985;
UPDATE spell_target_position SET id = 49665 WHERE id = 49305;

DELETE FROM npc_spellclick_spells where spell_id = 53797;
INSERT INTO npc_spellclick_spells VALUES (27755, 53797, 0, 0, 0, 1),(27692, 53797, 0, 0, 0, 1),(27756, 53797, 0, 0, 0, 1);
