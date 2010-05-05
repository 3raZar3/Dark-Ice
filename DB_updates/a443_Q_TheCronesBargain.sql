DELETE FROM spell_area WHERE spell IN (72914,55012);
INSERT INTO spell_area VALUES
-- Lok'lira's Bargain
(55012, 67, 12841,0,0,0,0,2,1),
-- Lok'lira's Bargain (hack - visual aura triggered by 55012,
-- maybe 55012 should have dummyAura in 3th effect instade dummyEffect?)
(72914, 67, 12841,0,0,0,0,2,1);

/* restored propper templates from UDB390 f*cked by previous commits
-- Mildred the Cruel
-- Brijana
update creature_template set
faction_a = 2109,
faction_h = 2109
WHERE entry IN (29885,29592);*/
