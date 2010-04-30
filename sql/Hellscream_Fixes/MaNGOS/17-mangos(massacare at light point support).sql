/* Click on Inconspicuous Mine Car to teleport on Shipboard, hack q12701 for now */
UPDATE gameobject_template SET type = 22, data0 = 70104, data1 = 0, data3 = 0, data10 = 0 WHERE entry = 190767;
INSERT INTO spell_script_target (`entry`,`type`,`targetEntry`) VALUES (70104, 1, 28833);

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

