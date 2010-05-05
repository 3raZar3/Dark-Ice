-- Quest :: You'll Need a Bear - 12972
-- wrong factions for alliance nad horde
UPDATE `creature_template` SET `faction_A` = '35',
`faction_H` = '35' WHERE `entry` =29592 LIMIT 1 ;