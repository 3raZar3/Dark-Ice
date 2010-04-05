INSERT IGNORE INTO npc_trainer VALUES
(17110, 62757, 300000, 0, 0, 80),
(5115, 62757, 300000, 0, 0, 80),
(3963, 62757, 300000, 0, 0, 80),
(3601, 62757, 300000, 0, 0, 80),
(4205, 62757, 300000, 0, 0, 80),
(5515, 62757, 300000, 0, 0, 80),
(1231, 62757, 300000, 0, 0, 80),
(16270, 62757, 300000, 0, 0, 80),
(3039, 62757, 300000, 0, 0, 80),
(4146, 62757, 300000, 0, 0, 80),
(5501, 62757, 300000, 0, 0, 80),
(3038, 62757, 300000, 0, 0, 80),
(17505, 62757, 300000, 0, 0, 80),
(1404, 62757, 300000, 0, 0, 80),
(5116, 62757, 300000, 0, 0, 80),
(16673, 62757, 300000, 0, 0, 80),
(3352, 62757, 300000, 0, 0, 80),
(5117, 62757, 300000, 0, 0, 80),
(3407, 62757, 300000, 0, 0, 80),
(16672, 62757, 300000, 0, 0, 80),
(5517, 62757, 300000, 0, 0, 80),
(3171, 62757, 300000, 0, 0, 80),
(5516, 62757, 300000, 0, 0, 80),
(3040, 62757, 300000, 0, 0, 80),
(3406, 62757, 300000, 0, 0, 80),
(3065, 62757, 300000, 0, 0, 80),
(16674, 62757, 300000, 0, 0, 80);

REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) values('41','2010-01-03 06:00:00','2020-01-03 09:00:00','1440','1440','0','Daily BG: Arathi Basin!');
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) values('42','2010-01-03 06:00:00','2020-01-03 09:00:00','5184000','1440','0','Daily BG: Eye Of Storm!');
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) values('43','2010-01-03 06:00:00','2020-01-03 09:00:00','5184000','1440','0','Daily BG: Warsong Gulch!');
DELETE FROM creature_questrelation WHERE quest IN (11335, 11336, 11337, 11338, 11339, 11340, 11341, 11342, 13407, 13476, 14164, 13405, 13478, 14163, 11336, 11340);
UPDATE quest_template SET ExclusiveGroup = 11335, RewHonorAddition = 20 WHERE entry IN (11335, 11336, 11337, 11338, 13405, 14163);
UPDATE quest_template SET ExclusiveGroup = 11339, RewHonorAddition = 20 WHERE entry IN (11339, 11340, 11341, 11342, 13407, 14164);
REPLACE INTO game_event_creature_quest VALUES
(15351, 11335, 41),
(15351, 11337, 42),
(15351, 11338, 43),
(15350, 11339, 41),
(15350, 11341, 42),
(15350, 11342, 43);
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES('44','2010-01-03 06:00:00','2020-01-03 09:00:00','5184000','1440','0','Daily BG: Alterac Valley!');
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES('45','2010-01-03 06:00:00','2020-01-03 09:00:00','5184000','1440','0','Daily BG: Isle of Conquest!');
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES('46','2010-01-03 06:00:00','2020-01-03 09:00:00','5184000','1440','0','Daily BG: Strand of the Ancients!');