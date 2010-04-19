-- adding script names
USE mangos;
UPDATE creature_template SET scriptname="mob_cosmic_smash_target" WHERE entry=33104;
UPDATE creature_template SET scriptname="boss_algalon_the_observer" WHERE entry=32871;
UPDATE creature_template SET scriptname="mob_black_hole" WHERE entry=32953;
UPDATE creature_template SET scriptname="mob_collapsing_star" WHERE entry=32955;
UPDATE creature_template SET scriptname="mob_dark_mattery" WHERE entry=33089;
UPDATE creature_template SET scriptname="mob_living_constellation" WHERE entry=33052;

-- adding texts for Algalon (entiries was used in script)
USE ScriptDev2;
INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615172, "Trans-location complete. Commencing planetary analysis of Azeroth.", 15405, 0, 0, 0, "Algalon: Intro 1");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615173, "Stand back, mortals. I am not here to fight you.", 15406, 0, 0, 0, "Algalon: Intro 2");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615174, "It is in the universe's best interest to re-originate this planet should my analysis find systemic corruption. Do not interfere.", 15407, 0, 0, 0, "Algalon: Intro 3");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615175, "See your world through my eyes: A universe so vast as to be immeasurable - incomprehensible even to your greatest minds.", 15390, 1, 0, 0, "Algalon: Engaged for the first time");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615176, "Your actions are illogical. All possible results for this encounter have been calculated. The Pantheon will receive the Observer's message regardless of outcome.", 15386, 1, 0, 0, "Algalon: Aggro");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615177, "The stars come to my aid.", 15392, 1, 0, 0, "Algalon: Summoning Collapsing Stars");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615178, "Witness the fury of cosmos!", 15396, 1, 0, 0, "Algalon: Big Bang 1");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615179, "Behold the tools of creation!", 15397, 1, 0, 0, "Algalon: Big Bang 2");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615180, "Beware!", 15391, 1, 0, 0, "Algalon: Phase 2");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615181, "Loss of life, unavoidable.", 15387, 1, 0, 0, "Algalon: Killing a player 1");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615182, "I do what I must.", 15388, 1, 0, 0, "Algalon: Killing a player 2");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615183, "You are... out of time.", 15394, 1, 0, 0, "Algalon: Berserk");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615184, "Analysis complete. There is partial corruption in the planet's life-support systems as well as complete corruption in most of the planet's defense mechanisms.", 15398, 0, 0, 0, "Algalon: Despawn 1");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615185, "Begin uplink: Reply Code: 'Omega'. Planetary re-origination requested.", 15399, 0, 0, 0, "Algalon: Despawn 2");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615186, "Farewell, mortals. Your bravery is admirable, for such flawed creatures.", 15400, 0, 0, 0, "Algalon: Despawn 3");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615187, "I have seen worlds bathed in the Makers' flames. Their denizens fading without so much as a whimper. Entire planetary systems born and raised in the time that it takes your mortal hearts to beat once. Yet all throughout, my own heart, devoid of emotion... of empathy. I... have... felt... NOTHING! A million, million lives wasted. Had they all held within them your tenacity? Had they all loved life as you do?", 15393, 0, 0, 0, "Algalon: Defeated 1");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615188, "Perhaps it is your imperfection that which grants you free will. That allows you to persevere against cosmically calculated odds. You prevailed where the Titans' own perfect creations have failed.", 15401, 0, 0, 0, "Algalon: Defeated 2");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615189, "I've rearranged the reply code. Your planet will be spared. I cannot be certain of my own calculations anymore.", 15402, 0, 0, 0, "Algalon: Defeated 3");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615190, "I lack the strength to transmit the signal. You must hurry. Find a place of power close to the skies.", 15403, 0, 0, 0, "Algalon: Defeated 4");

INSERT INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615191, "Do not worry about my fate $N. If the signal is not transmitted in time re-origination will proceed regardless. Save. Your. World.", 15403, 0, 0, 0, "Algalon: Defeated 5");