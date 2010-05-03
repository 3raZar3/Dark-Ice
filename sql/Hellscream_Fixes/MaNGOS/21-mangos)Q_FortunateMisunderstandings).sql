-- Leave only one spawn coppy of Injured Oracle
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28217);
DELETE FROM creature WHERE id = 28217;
INSERT INTO `creature` VALUES
('1010300','28217','571','1','1','25016','0','5400.44','4502.65','-130.794','0.279253','300','0','0','9103','8313','0','0');
INSERT INTO creature_addon VALUES ('1010300','0','0','1','0','0','0',NULL,NULL);

UPDATE creature_template SET ScriptName = 'npc_injured_oracle' WHERE entry = 28217;