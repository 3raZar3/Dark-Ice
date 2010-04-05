DELETE FROM spell_bonus_data WHERE entry IN (SELECT spell_id FROM spell_chain WHERE first_spell IN ( 467, 7294));
INSERT INTO spell_bonus_data VALUES
(467, 0.033, 0, 0, "Druid -Thorns"),
(7294, 0.033, 0, 0, "Paladin - Retribution Aura");

DELETE FROM spell_proc_event WHERE entry = 12654;
INSERT INTO spell_proc_event VALUES
(12654, 0, 3, 134217728, 0, 0, 524288, 0, 0, 100, 0);

DELETE FROM spell_chain WHERE spell_id IN (10400, 15567, 15568, 15569, 16311, 16312, 16313, 58784, 58791, 58792);
INSERT INTO spell_chain VALUES
(10400, 0, 10400, 1, 0),
(15567, 10400, 10400, 2, 0),
(15568, 15567, 10400, 3, 0),
(15569, 15568, 10400, 4, 0),
(16311, 15569, 10400, 5, 0),
(16312, 16311, 10400, 6, 0),
(16313, 16312, 10400, 7, 0),
(58784, 16313, 10400, 8, 0),
(58791, 58784, 10400, 9, 0),
(58792, 58791, 10400, 10, 0);

DELETE FROM spell_proc_event WHERE entry = 49194;
INSERT INTO spell_proc_event VALUES
(49194, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0);

DELETE FROM spell_chain WHERE spell_id IN (49018, 49529, 49530);
INSERT INTO spell_chain VALUES
(49018, 0, 49018, 1, 0),
(49529, 49018, 49018, 2, 0),
(49530, 49529, 49018, 3, 0);
DELETE FROM spell_proc_event WHERE entry = 49018;
INSERT INTO spell_proc_event VALUES
(49018, 0, 15, 20971520, 0, 0, 0, 0, 0, 0, 0);

/*Ebon Plaguebringer*/
DELETE FROM spell_chain WHERE spell_id IN (51099, 51160, 51161);
INSERT INTO spell_chain VALUES
(51099, 0, 51099, 1, 0),
(51160, 51099, 51099, 2, 0),
(51161, 51160, 51099, 3, 0);
DELETE FROM spell_proc_event WHERE entry IN (51099, 51160, 51161);
INSERT INTO spell_proc_event VALUES
(51099, 0, 15, 0, 100663296, 0, 16, 0, 0, 100, 0);

/*Crypt Fever*/
DELETE FROM spell_chain WHERE spell_id IN (49032, 49631, 49632);
INSERT INTO spell_chain VALUES
(49032, 0, 49032, 1, 0),
(49631, 49032, 49032, 2, 0),
(49632, 49631, 49032, 3, 0);
DELETE FROM spell_proc_event WHERE entry IN (49032, 49631, 49632);
INSERT INTO spell_proc_event VALUES
(49032, 0, 15, 0, 100663296, 0, 16, 0, 0, 100, 0);

/*Wandering Plague*/
DELETE FROM spell_chain WHERE spell_id IN (49217, 49654, 49655);
INSERT INTO spell_chain VALUES
(49217, 0, 49217, 1, 0),
(49654, 49217, 49217, 2, 0),
(49655, 49654, 49217, 2, 0);
DELETE FROM spell_proc_event WHERE entry IN (49217, 49654, 49655);
INSERT INTO spell_proc_event VALUES
(49217, 0, 15, 0, 100663296, 0, 262144, 0, 0, 100, 0);