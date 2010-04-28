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
