/* fixes for Frostbrood Vanquisher to fly and be faster */
DELETE FROM creature_template_addon WHERE entry = 28670;
INSERT INTO creature_template_addon VALUES (28670, 0, 50331648, 1, 0, 1024, 156, NULL, '53112 0 53112 1 53112 2');
UPDATE creature_template SET InhabitType = 3 WHERE entry = 28670;
