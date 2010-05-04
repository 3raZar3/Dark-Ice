-- -1 599 000 HALLS OF STONE
DELETE FROM script_texts WHERE entry BETWEEN -1599068 AND -1599065;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
-- Krystallus
   (-1599065, 'Crush....', 14176, 1,0,'krystallus SAY_AGGRO'),
   (-1599066, 'Ha...ha...ha...ha...', 14177,1,0, 'krystallus SAY_KILL'),
   (-1599067, 'Uuuuhhhhhhhhhh......', 14179,1,0, 'krystallus SAY_DEATH'),
   (-1599068, 'Break.... you....', 14178,1,0, 'krystallus SAY_SHATTER');

-- -1 609 000 EBON HOLD
DELETE FROM script_texts WHERE entry BETWEEN -1609127 AND -1609101;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- How To Win Friends And Influence Enemies
   (-1609101, 'I\'ll tear the secrets from your soul! Tell me about the "Crimson Dawn" and your life may be spared!',0,0,0,0,'player SAY_PERSUADE1'),
   (-1609102, 'Tell me what you know about "Crimson Dawn" or the beatings will continue!',0,0,0,0,'player SAY_PERSUADE2'),
   (-1609103, 'I\'m through being courteous with your kind, human! What is the "Crimson Dawn?"',0,0,0,0,'player SAY_PERSUADE3'),
   (-1609104, 'Is your life worth so little? Just tell me what I need to know about "Crimson Dawn" and I\'ll end your suffering quickly.',0,0,0,0,'player SAY_PERSUADE4'),
   (-1609105, 'I can keep this up for a very long time, Scarlet dog! Tell me about the "Crimson Dawn!"',0,0,0,0,'player SAY_PERSUADE5'),
   (-1609106, 'What is the "Crimson Dawn?"',0,0,0,0,'player SAY_PERSUADE6'),
   (-1609107, '"Crimson Dawn!" What is it! Speak!',0,0,0,0,'player SAY_PERSUADE7'),
   (-1609108, 'You\'ll be hanging in the gallows shortly, Scourge fiend!',0,0,0,0,'crusader SAY_CRUSADER1'),
   (-1609109, 'You\'ll have to kill me, monster! I will tell you NOTHING!',0,0,0,0,'crusader SAY_CRUSADER2'),
   (-1609110, 'You hit like a girl. Honestly. Is that the best you can do?',0,0,0,0,'crusader SAY_CRUSADER3'),
   (-1609111, 'ARGH! You burned my last good tabard!',0,0,0,0,'crusader SAY_CRUSADER4'),
   (-1609112, 'Argh... The pain... The pain is almost as unbearable as the lashings I received in grammar school when I was but a child.',0,0,0,0,'crusader SAY_CRUSADER5'),
   (-1609113, 'I used to work for Grand Inquisitor Isillien! Your idea of pain is a normal mid-afternoon for me!',0,0,0,0,'crusader SAY_CRUSADER6'),
   (-1609114, 'I\'ll tell you everything! STOP! PLEASE!',0,0,0,20,'break crusader SAY_PERSUADED1'),
   (-1609115, 'We... We have only been told that the "Crimson Dawn" is an awakening. You see, the Light speaks to the High General. It is the Light...',0,0,0,20,'break crusader SAY_PERSUADED2'),
   (-1609116, 'The Light that guides us. The movement was set in motion before you came... We... We do as we are told. It is what must be done.',0,0,0,20,'break crusader SAY_PERSUADED3'),
   (-1609117, 'I know very little else... The High General chooses who may go and who must stay behind. There\'s nothing else... You must believe me!',0,0,0,20,'break crusader SAY_PERSUADED4'),
   (-1609118, 'LIES! The pain you are about to endure will be talked about for years to come!',0,0,0,0,'break crusader SAY_PERSUADED5'),
   (-1609119, 'NO! PLEASE! There is one more thing that I forgot to mention... A courier comes soon... From Hearthglen. It...',0,0,0,20,'break crusader SAY_PERSUADED6'),
-- Ambush At The Overlook
   (-1609120, 'Hrm, what a strange tree. I must investigate.',0,0,0,0,'Scarlet Courier SAY_TREE1'),
   (-1609121, 'What''s this!? This isn''t a tree at all! Guards! Guards!',0,0,0,0,'Scarlet Courier SAY_TREE2'),-- Bloody Breakout
   (-1609122, 'The Crusade will purge your kind from this world!',0,1,0,0,'High Inquisitor Valroth start'),
   (-1609123, 'It seems that I\'ll need to deal with you myself. The High Inquisitor comes for you, Scourge!',0,1,0,0,'High Inquisitor Valroth aggro'),
   (-1609124, 'You have come seeking deliverance? I have come to deliver!',0,0,0,0,'High Inquisitor Valroth yell'),
   (-1609125, 'LIGHT PURGE YOU!',0,0,0,0,'High Inquisitor Valroth yell'),
   (-1609126, 'Coward!',0,0,0,0,'High Inquisitor Valroth yell'),
   (-1609127, 'High Inquisitor Valroth\'s remains fall to the ground.',0,2,0,0,'High Inquisitor Valroth death');

DELETE FROM script_texts WHERE entry BETWEEN -1609286 AND -1609201;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- The Light of Dawn
-- pre text
   (-1609201, 'Soldiers of the Scourge, stand ready! You will soon be able to unleash your fury upon the Argent Dawn!',14677,1,0,0,'Highlord Darion Mograine'),
   (-1609202, 'The sky weeps at the devastation of sister earth! Soon, tears of blood will rain down upon us!',14678,1,0,0,'Highlord Darion Mograine'),
   (-1609203, 'Death knights of Acherus, the death march begins!',14681,1,0,0,'Highlord Darion Mograine'),
-- intro
   (-1609204, 'Soldiers of the Scourge, death knights of Acherus, minions of the darkness: hear the call of the Highlord!',14679,1,0,22,'Highlord Darion Mograine'),
   (-1609205, 'RISE!',14680,1,0,15,'Highlord Darion Mograine'),
   (-1609206, 'The skies turn red with the blood of the fallen! The Lich King watches over us, minions! Onward! Leave only ashes and misery in your destructive wake!',14682,1,0,25,'Highlord Darion Mograine'),
-- During the fight
   (-1609207, 'Scourge armies approach!',0,1,0,0,'Korfax, Champion of the Light'),
   (-1609208, 'Stand fast, brothers and sisters! The Light will prevail!',14487,1,0,0,'Lord Maxwell Tyrosus'),
   (-1609209, 'Kneel before the Highlord!',14683,0,0,0,'Highlord Darion Mograine'),
   (-1609210, 'You stand no chance!',14684,0,0,0,'Highlord Darion Mograine'),
   (-1609211, 'The Scourge will destroy this place!',14685,0,0,0,'Highlord Darion Mograine'),
   (-1609212, 'Your life is forfeit.',14686,0,0,0,'Highlord Darion Mograine'),
   (-1609213, 'Life is meaningless without suffering.',14687,0,0,0,'Highlord Darion Mograine'),
   (-1609214, 'How much longer will your forces hold out?',14688,0,0,0,'Highlord Darion Mograine'),
   (-1609215, 'The Argent Dawn is finished!"',14689,0,0,0,'Highlord Darion Mograine'),
   (-1609216, 'Spare no one!',14690,0,0,0,'Highlord Darion Mograine'),
   (-1609217, 'What is this?! My... I cannot strike...',14691,0,0,0,'Highlord Darion Mograine'),
   (-1609218, 'Obey me, blade!',14692,1,0,0,'Highlord Darion Mograine'),
   (-1609219, 'You will do as I command! I am in control here!',14693,0,0,0,'Highlord Darion Mograine'),
   (-1609220, 'I can not... the blade fights me.',14694,0,0,0,'Highlord Darion Mograine'),
   (-1609221, 'What is happening to me?',14695,0,0,0,'Highlord Darion Mograine'),
   (-1609222, 'Power...wanes...',14696,0,0,0,'Highlord Darion Mograine'),
   (-1609223, 'Ashbringer defies me...',14697,0,0,0,'Highlord Darion Mograine'),
   (-1609224, 'Minions, come to my aid!',14698,0,0,0,'Highlord Darion Mograine'),
-- After the fight
   (-1609225, 'You cannot win, Darion!',14584,1,0,0,'Highlord Tirion Fordring'),
   (-1609226, 'Bring them before the chapel!',14585,1,0,0,'Highlord Tirion Fordring'),
   (-1609227, 'Stand down, death knights. We have lost... The Light... This place... No hope...',14699,0,0,68,'Highlord Darion Mograine'),
   (-1609228, 'Have you learned nothing, boy? You have become all that your father fought against! Like that coward, Arthas, you allowed yourself to be consumed by the darkness...the hate... Feeding upon the misery of those you tortured and killed!',14586,0,0,378,'Highlord Tirion Fordring'),
   (-1609229, 'Your master knows what lies beneath the chapel. It is why he dares not show his face! He\'s sent you and your death knights to meet their doom, Darion.',14587,0,0,25,'Highlord Tirion Fordring'),
   (-1609230, 'What you are feeling right now is the anguish of a thousand lost souls! Souls that you and your master brought here! The Light will tear you apart, Darion!',14588,0,0,1,'Highlord Tirion Fordring'),
   (-1609231, 'Save your breath, old man. It might be the last you ever draw.',14700,0,0,25,'Highlord Darion Mograine'),
   (-1609232, 'My son! My dear, beautiful boy!',14493,0,0,0,'Highlord Alexandros Mograine'),
   (-1609233, 'Father!',14701,0,0,5,'Highlord Darion Mograine'),
   (-1609234, 'Argh...what...is...',14702,0,0,68,'Highlord Darion Mograine'),
   (-1609235, 'Father, you have returned!',14703,0,0,0,'Darion Mograine'),
   (-1609236, 'You have been gone a long time, father. I thought...',14704,0,0,0,'Darion Mograine'),
   (-1609237, 'Nothing could have kept me away from here, Darion. Not from my home and family.',14494,0,0,1,'Highlord Alexandros Mograine'),
   (-1609238, 'Father, I wish to join you in the war against the undead. I want to fight! I can sit idle no longer!',14705,0,0,6,'Darion Mograine'),
   (-1609239, 'Darion Mograine, you are barely of age to hold a sword, let alone battle the undead hordes of Lordaeron! I couldn\'t bear losing you. Even the thought...',14495,0,0,1,'Highlord Alexandros Mograine'),
   (-1609240, 'If I die, father, I would rather it be on my feet, standing in defiance against the undead legions! If I die, father, I die with you!',14706,0,0,6,'Darion Mograine'),
   (-1609241, 'My son, there will come a day when you will command the Ashbringer and, with it, mete justice across this land. I have no doubt that when that day finally comes, you will bring pride to our people and that Lordaeron will be a better place because of you. But, my son, that day is not today.',14496,0,0,1,'Highlord Alexandros Mograine'),
   (-1609242, 'Do not forget...',14497,0,0,6,'Highlord Alexandros Mograine'),
   (-1609243, 'Touching...',14803,1,0,0,'The Lich King'),
   (-1609244, 'You have\'ve betrayed me! You betrayed us all you monster! Face the might of Mograine!',14707,1,0,0,'Highlord Darion Mograine'),
   (-1609245, 'He\'s mine now...',14805,0,0,0,'The Lich King'),
   (-1609246, 'Pathetic...',14804,0,0,0,'The Lich King'),
   (-1609247, 'You\'re a damned monster, Arthas!',14589,0,0,25,'Highlord Tirion Fordring'),
   (-1609248, 'You were right, Fordring. I did send them in to die. Their lives are meaningless, but yours...',14806,0,0,1,'The Lich King'),
   (-1609249, 'How simple it was to draw the great Tirion Fordring out of hiding. You\'ve left yourself exposed, paladin. Nothing will save you...',14807,0,0,1,'The Lich King'),
   (-1609250, 'ATTACK!!!',14488,1,0,0,'Lord Maxwell Tyrosus'),
   (-1609251, 'APOCALYPSE!',14808,1,0,0,'The Lich King'),
   (-1609252, 'That day is not today...',14708,0,0,0,'Highlord Darion Mograine'),
   (-1609253, 'Tirion!',14709,1,0,0,'Highlord Darion Mograine'),
   (-1609254, 'ARTHAS!!!!',14591,1,0,0,'Highlord Tirion Fordring'),
   (-1609255, 'What is this?',14809,1,0,0,'The Lich King'),
   (-1609256, 'Your end.',14592,1,0,0,'Highlord Tirion Fordring'),
   (-1609257, 'Impossible...',14810,1,0,0,'The Lich King'),
   (-1609258, 'This... isn\'t... over...',14811,1,0,25,'The Lich King'),
   (-1609259, 'When next we meet it won\'t be on holy ground, paladin.',14812,1,0,1,'The Lich King'),
   (-1609260, 'Rise, Darion, and listen...',14593,0,0,0,'Highlord Tirion Fordring'),
   (-1609261, 'We have all been witness to a terrible tragedy. The blood of good men has been shed upon this soil! Honorable knights, slain defending their lives - our lives!',14594,0,0,0,'Highlord Tirion Fordring'),
   (-1609262, 'And while such things can never be forgotten, we must remain vigilant in our cause!',14595,0,0,0,'Highlord Tirion Fordring'),
   (-1609263, 'The Lich King must answer for what he has done and must not be allowed to cause further destruction to our world.',14596,0,0,0,'Highlord Tirion Fordring'),
   (-1609264, 'I make a promise to you now, brothers and sisters: The Lich King will be defeated! On this day, I call for a union.',14597,0,0,0,'Highlord Tirion Fordring'),
   (-1609265, 'The Argent Dawn and the Order of the Silver Hand will come together as one! We will succeed where so many before us have failed!',14598,0,0,0,'Highlord Tirion Fordring'),
   (-1609266, 'We will take the fight to Arthas and tear down the walls of Icecrown!',14599,0,0,15,'Highlord Tirion Fordring'),
   (-1609267, 'The Argent Crusade comes for you, Arthas!',14600,1,0,15,'Highlord Tirion Fordring'),
   (-1609268, 'So too do the Knights of the Ebon Blade... While our kind has no place in your world, we will fight to bring an end to the Lich King. This I vow!',14710,0,0,1,'Highlord Darion Mograine'),
-- Emotes
   (-1609269, 'Thousands of Scourge rise up at the Highlord\'s command.',0,2,0,0,''),
   (-1609270, 'The army marches towards Light\'s Hope Chapel.',0,2,0,0,''),
   (-1609271, 'After over a hundred Defenders of the Light fall, Highlord Tirion Fordring arrives.',0,2,0,0,''),
   (-1609272, 'flee',0,2,0,0,'Orbaz'),
   (-1609273, 'kneels in defeat before Tirion Fordring.',0,2,0,0,'Highlord Darion Mograine'),
   (-1609274, 'arrives.',0,2,0,0,'Highlord Alexandros Mograine'),
   (-1609275, 'becomes a shade of his past, and walks up to his father.',0,2,0,0,'Highlord Darion Mograine'),
   (-1609276, 'hugs his father.',0,2,0,0,'Darion Mograine'),
   (-1609277, 'disappears, and the Lich King appears.',0,2,0,0,'Alexandros'),
   (-1609278, 'becomes himself again...and is now angry.',0,2,0,0,'Highlord Darion Mograine'),
   (-1609279, 'casts a spell on Tirion.',0,2,0,0,'The Lich King'),
   (-1609280, 'gasps for air.',0,2,0,0,'Highlord Tirion Fordring'),
   (-1609281, 'casts a powerful spell, killing the Defenders and knocking back the others.',0,2,0,0,'The Lich King'),
   (-1609282, 'throws the Corrupted Ashbringer to Tirion, who catches it. Tirion becomes awash with Light, and the Ashbringer is cleansed.',0,2,0,0,'Highlord Darion Mograine'),
   (-1609283, 'collapses.',0,2,0,0,'Highlord Darion Mograine'),
   (-1609284, 'charges towards the Lich King, Ashbringer in hand and strikes the Lich King.',0,2,0,0,'Highlord Tirion Fordring'),
   (-1609285, 'disappears. Tirion walks over to where Darion lay',0,2,0,0,'The Lich King'),
   (-1609286, 'Light washes over the chapel ¡X the Light of Dawn is uncovered.',0,2,0,0,'');


DELETE FROM script_waypoint WHERE entry=29173;
INSERT INTO script_waypoint VALUES
   (29173, 0, 2431.639, -5137.05, 83.843, 0, 'intro'),
   (29173, 1, 2319.242, -5266.486, 82.825, 0, 'summon & on hold'),
   (29173, 2, 2318.775, -5266.832, 82.783, 0, 'cast light of dawn'),
   (29173, 3, 2280.812, -5284.091, 82.608, 0, 'move to here and start'),
   (29173, 4, 2280.727, -5286.839, 82.930, 0, 'move forward to talk'),
   (29173, 5, 2280.812, -5284.091, 82.608, 0, 'when baba pop'),
   (29173, 6, 2281.461, -5263.014, 81.164, 0, 'charge to lich king'),
   (29173, 7, 2257.479, -5296.702, 82.165, 0, 'being kicked by Lich King'),
   (29173, 8, 2261.237, -5294.983, 82.167, 0, 'throw'),
   (29173, 9, 2259.34, -5294.379, 82.167, 0, 'event end');

-- -1 609 000 EBON HOLD
DELETE FROM script_texts WHERE entry BETWEEN -1609127 AND -1609101;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- How To Win Friends And Influence Enemies
   (-1609101, 'I\'ll tear the secrets from your soul! Tell me about the "Crimson Dawn" and your life may be spared!',0,0,0,0,'player SAY_PERSUADE1'),
   (-1609102, 'Tell me what you know about "Crimson Dawn" or the beatings will continue!',0,0,0,0,'player SAY_PERSUADE2'),
   (-1609103, 'I\'m through being courteous with your kind, human! What is the "Crimson Dawn?"',0,0,0,0,'player SAY_PERSUADE3'),
   (-1609104, 'Is your life worth so little? Just tell me what I need to know about "Crimson Dawn" and I\'ll end your suffering quickly.',0,0,0,0,'player SAY_PERSUADE4'),
   (-1609105, 'I can keep this up for a very long time, Scarlet dog! Tell me about the "Crimson Dawn!"',0,0,0,0,'player SAY_PERSUADE5'),
   (-1609106, 'What is the "Crimson Dawn?"',0,0,0,0,'player SAY_PERSUADE6'),
   (-1609107, '"Crimson Dawn!" What is it! Speak!',0,0,0,0,'player SAY_PERSUADE7'),
   (-1609108, 'You\'ll be hanging in the gallows shortly, Scourge fiend!',0,0,0,0,'crusader SAY_CRUSADER1'),
   (-1609109, 'You\'ll have to kill me, monster! I will tell you NOTHING!',0,0,0,0,'crusader SAY_CRUSADER2'),
   (-1609110, 'You hit like a girl. Honestly. Is that the best you can do?',0,0,0,0,'crusader SAY_CRUSADER3'),
   (-1609111, 'ARGH! You burned my last good tabard!',0,0,0,0,'crusader SAY_CRUSADER4'),
   (-1609112, 'Argh... The pain... The pain is almost as unbearable as the lashings I received in grammar school when I was but a child.',0,0,0,0,'crusader SAY_CRUSADER5'),
   (-1609113, 'I used to work for Grand Inquisitor Isillien! Your idea of pain is a normal mid-afternoon for me!',0,0,0,0,'crusader SAY_CRUSADER6'),
   (-1609114, 'I\'ll tell you everything! STOP! PLEASE!',0,0,0,20,'break crusader SAY_PERSUADED1'),
   (-1609115, 'We... We have only been told that the "Crimson Dawn" is an awakening. You see, the Light speaks to the High General. It is the Light...',0,0,0,20,'break crusader SAY_PERSUADED2'),
   (-1609116, 'The Light that guides us. The movement was set in motion before you came... We... We do as we are told. It is what must be done.',0,0,0,20,'break crusader SAY_PERSUADED3'),
   (-1609117, 'I know very little else... The High General chooses who may go and who must stay behind. There\'s nothing else... You must believe me!',0,0,0,20,'break crusader SAY_PERSUADED4'),
   (-1609118, 'LIES! The pain you are about to endure will be talked about for years to come!',0,0,0,0,'break crusader SAY_PERSUADED5'),
   (-1609119, 'NO! PLEASE! There is one more thing that I forgot to mention... A courier comes soon... From Hearthglen. It...',0,0,0,20,'break crusader SAY_PERSUADED6'),
-- Ambush At The Overlook
   (-1609120, 'Hrm, what a strange tree. I must investigate.',0,0,0,0,'Scarlet Courier SAY_TREE1'),
   (-1609121, 'What''s this!? This isn''t a tree at all! Guards! Guards!',0,0,0,0,'Scarlet Courier SAY_TREE2'),
-- Bloody Breakout
   (-1609122, 'The Crusade will purge your kind from this world!',0,1,0,0,'High Inquisitor Valroth start'),
   (-1609123, 'It seems that I\'ll need to deal with you myself. The High Inquisitor comes for you, Scourge!',0,1,0,0,'High Inquisitor Valroth aggro'),
   (-1609124, 'You have come seeking deliverance? I have come to deliver!',0,0,0,0,'High Inquisitor Valroth yell'),
   (-1609125, 'LIGHT PURGE YOU!',0,0,0,0,'High Inquisitor Valroth yell'),
   (-1609126, 'Coward!',0,0,0,0,'High Inquisitor Valroth yell'),
   (-1609127, 'High Inquisitor Valroth\'s remains fall to the ground.',0,2,0,0,'High Inquisitor Valroth death');

DELETE FROM script_texts WHERE entry BETWEEN -1609286 AND -1609201;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- The Light of Dawn
-- pre text
   (-1609201, 'Soldiers of the Scourge, stand ready! You will soon be able to unleash your fury upon the Argent Dawn!',14677,1,0,0,'Highlord Darion Mograine'),
   (-1609202, 'The sky weeps at the devastation of sister earth! Soon, tears of blood will rain down upon us!',14678,1,0,0,'Highlord Darion Mograine'),
   (-1609203, 'Death knights of Acherus, the death march begins!',14681,1,0,0,'Highlord Darion Mograine'),
-- intro
   (-1609204, 'Soldiers of the Scourge, death knights of Acherus, minions of the darkness: hear the call of the Highlord!',14679,1,0,22,'Highlord Darion Mograine'),
   (-1609205, 'RISE!',14680,1,0,15,'Highlord Darion Mograine'),
   (-1609206, 'The skies turn red with the blood of the fallen! The Lich King watches over us, minions! Onward! Leave only ashes and misery in your destructive wake!',14682,1,0,25,'Highlord Darion Mograine'),
-- During the fight
   (-1609207, 'Scourge armies approach!',0,1,0,0,'Korfax, Champion of the Light'),
   (-1609208, 'Stand fast, brothers and sisters! The Light will prevail!',14487,1,0,0,'Lord Maxwell Tyrosus'),
   (-1609209, 'Kneel before the Highlord!',14683,0,0,0,'Highlord Darion Mograine'),
   (-1609210, 'You stand no chance!',14684,0,0,0,'Highlord Darion Mograine'),
   (-1609211, 'The Scourge will destroy this place!',14685,0,0,0,'Highlord Darion Mograine'),
   (-1609212, 'Your life is forfeit.',14686,0,0,0,'Highlord Darion Mograine'),
   (-1609213, 'Life is meaningless without suffering.',14687,0,0,0,'Highlord Darion Mograine'),
   (-1609214, 'How much longer will your forces hold out?',14688,0,0,0,'Highlord Darion Mograine'),
   (-1609215, 'The Argent Dawn is finished!"',14689,0,0,0,'Highlord Darion Mograine'),
   (-1609216, 'Spare no one!',14690,0,0,0,'Highlord Darion Mograine'),
   (-1609217, 'What is this?! My... I cannot strike...',14691,0,0,0,'Highlord Darion Mograine'),
   (-1609218, 'Obey me, blade!',14692,1,0,0,'Highlord Darion Mograine'),
   (-1609219, 'You will do as I command! I am in control here!',14693,0,0,0,'Highlord Darion Mograine'),
   (-1609220, 'I can not... the blade fights me.',14694,0,0,0,'Highlord Darion Mograine'),
   (-1609221, 'What is happening to me?',14695,0,0,0,'Highlord Darion Mograine'),
   (-1609222, 'Power...wanes...',14696,0,0,0,'Highlord Darion Mograine'),
   (-1609223, 'Ashbringer defies me...',14697,0,0,0,'Highlord Darion Mograine'),
   (-1609224, 'Minions, come to my aid!',14698,0,0,0,'Highlord Darion Mograine'),
-- After the fight
   (-1609225, 'You cannot win, Darion!',14584,1,0,0,'Highlord Tirion Fordring'),
   (-1609226, 'Bring them before the chapel!',14585,1,0,0,'Highlord Tirion Fordring'),
   (-1609227, 'Stand down, death knights. We have lost... The Light... This place... No hope...',14699,0,0,68,'Highlord Darion Mograine'),
   (-1609228, 'Have you learned nothing, boy? You have become all that your father fought against! Like that coward, Arthas, you allowed yourself to be consumed by the darkness...the hate... Feeding upon the misery of those you tortured and killed!',14586,0,0,378,'Highlord Tirion Fordring'),
   (-1609229, 'Your master knows what lies beneath the chapel. It is why he dares not show his face! He\'s sent you and your death knights to meet their doom, Darion.',14587,0,0,25,'Highlord Tirion Fordring'),
   (-1609230, 'What you are feeling right now is the anguish of a thousand lost souls! Souls that you and your master brought here! The Light will tear you apart, Darion!',14588,0,0,1,'Highlord Tirion Fordring'),
   (-1609231, 'Save your breath, old man. It might be the last you ever draw.',14700,0,0,25,'Highlord Darion Mograine'),
   (-1609232, 'My son! My dear, beautiful boy!',14493,0,0,0,'Highlord Alexandros Mograine'),
   (-1609233, 'Father!',14701,0,0,5,'Highlord Darion Mograine'),
   (-1609234, 'Argh...what...is...',14702,0,0,68,'Highlord Darion Mograine'),
   (-1609235, 'Father, you have returned!',14703,0,0,0,'Darion Mograine'),
   (-1609236, 'You have been gone a long time, father. I thought...',14704,0,0,0,'Darion Mograine'),
   (-1609237, 'Nothing could have kept me away from here, Darion. Not from my home and family.',14494,0,0,1,'Highlord Alexandros Mograine'),
   (-1609238, 'Father, I wish to join you in the war against the undead. I want to fight! I can sit idle no longer!',14705,0,0,6,'Darion Mograine'),
   (-1609239, 'Darion Mograine, you are barely of age to hold a sword, let alone battle the undead hordes of Lordaeron! I couldn\'t bear losing you. Even the thought...',14495,0,0,1,'Highlord Alexandros Mograine'),
   (-1609240, 'If I die, father, I would rather it be on my feet, standing in defiance against the undead legions! If I die, father, I die with you!',14706,0,0,6,'Darion Mograine'),
   (-1609241, 'My son, there will come a day when you will command the Ashbringer and, with it, mete justice across this land. I have no doubt that when that day finally comes, you will bring pride to our people and that Lordaeron will be a better place because of you. But, my son, that day is not today.',14496,0,0,1,'Highlord Alexandros Mograine'),
   (-1609242, 'Do not forget...',14497,0,0,6,'Highlord Alexandros Mograine'),
   (-1609243, 'Touching...',14803,1,0,0,'The Lich King'),
   (-1609244, 'You have\'ve betrayed me! You betrayed us all you monster! Face the might of Mograine!',14707,1,0,0,'Highlord Darion Mograine'),
   (-1609245, 'He\'s mine now...',14805,0,0,0,'The Lich King'),
   (-1609246, 'Pathetic...',14804,0,0,0,'The Lich King'),
   (-1609247, 'You\'re a damned monster, Arthas!',14589,0,0,25,'Highlord Tirion Fordring'),
   (-1609248, 'You were right, Fordring. I did send them in to die. Their lives are meaningless, but yours...',14806,0,0,1,'The Lich King'),
   (-1609249, 'How simple it was to draw the great Tirion Fordring out of hiding. You\'ve left yourself exposed, paladin. Nothing will save you...',14807,0,0,1,'The Lich King'),
   (-1609250, 'ATTACK!!!',14488,1,0,0,'Lord Maxwell Tyrosus'),
   (-1609251, 'APOCALYPSE!',14808,1,0,0,'The Lich King'),
   (-1609252, 'That day is not today...',14708,0,0,0,'Highlord Darion Mograine'),
   (-1609253, 'Tirion!',14709,1,0,0,'Highlord Darion Mograine'),
   (-1609254, 'ARTHAS!!!!',14591,1,0,0,'Highlord Tirion Fordring'),
   (-1609255, 'What is this?',14809,1,0,0,'The Lich King'),
   (-1609256, 'Your end.',14592,1,0,0,'Highlord Tirion Fordring'),
   (-1609257, 'Impossible...',14810,1,0,0,'The Lich King'),
   (-1609258, 'This... isn\'t... over...',14811,1,0,25,'The Lich King'),
   (-1609259, 'When next we meet it won\'t be on holy ground, paladin.',14812,1,0,1,'The Lich King'),
   (-1609260, 'Rise, Darion, and listen...',14593,0,0,0,'Highlord Tirion Fordring'),
   (-1609261, 'We have all been witness to a terrible tragedy. The blood of good men has been shed upon this soil! Honorable knights, slain defending their lives - our lives!',14594,0,0,0,'Highlord Tirion Fordring'),
   (-1609262, 'And while such things can never be forgotten, we must remain vigilant in our cause!',14595,0,0,0,'Highlord Tirion Fordring'),
   (-1609263, 'The Lich King must answer for what he has done and must not be allowed to cause further destruction to our world.',14596,0,0,0,'Highlord Tirion Fordring'),
   (-1609264, 'I make a promise to you now, brothers and sisters: The Lich King will be defeated! On this day, I call for a union.',14597,0,0,0,'Highlord Tirion Fordring'),
   (-1609265, 'The Argent Dawn and the Order of the Silver Hand will come together as one! We will succeed where so many before us have failed!',14598,0,0,0,'Highlord Tirion Fordring'),
   (-1609266, 'We will take the fight to Arthas and tear down the walls of Icecrown!',14599,0,0,15,'Highlord Tirion Fordring'),
   (-1609267, 'The Argent Crusade comes for you, Arthas!',14600,1,0,15,'Highlord Tirion Fordring'),
   (-1609268, 'So too do the Knights of the Ebon Blade... While our kind has no place in your world, we will fight to bring an end to the Lich King. This I vow!',14710,0,0,1,'Highlord Darion Mograine'),
-- Emotes
   (-1609269, 'Thousands of Scourge rise up at the Highlord\'s command.',0,2,0,0,''),
   (-1609270, 'The army marches towards Light\'s Hope Chapel.',0,2,0,0,''),
   (-1609271, 'After over a hundred Defenders of the Light fall, Highlord Tirion Fordring arrives.',0,2,0,0,''),
   (-1609272, 'flee',0,2,0,0,'Orbaz'),
   (-1609273, 'kneels in defeat before Tirion Fordring.',0,2,0,0,'Highlord Darion Mograine'),
   (-1609274, 'arrives.',0,2,0,0,'Highlord Alexandros Mograine'),
   (-1609275, 'becomes a shade of his past, and walks up to his father.',0,2,0,0,'Highlord Darion Mograine'),
   (-1609276, 'hugs his father.',0,2,0,0,'Darion Mograine'),
   (-1609277, 'disappears, and the Lich King appears.',0,2,0,0,'Alexandros'),
   (-1609278, 'becomes himself again...and is now angry.',0,2,0,0,'Highlord Darion Mograine'),
   (-1609279, 'casts a spell on Tirion.',0,2,0,0,'The Lich King'),
   (-1609280, 'gasps for air.',0,2,0,0,'Highlord Tirion Fordring'),
   (-1609281, 'casts a powerful spell, killing the Defenders and knocking back the others.',0,2,0,0,'The Lich King'),
   (-1609282, 'throws the Corrupted Ashbringer to Tirion, who catches it. Tirion becomes awash with Light, and the Ashbringer is cleansed.',0,2,0,0,'Highlord Darion Mograine'),
   (-1609283, 'collapses.',0,2,0,0,'Highlord Darion Mograine'),
   (-1609284, 'charges towards the Lich King, Ashbringer in hand and strikes the Lich King.',0,2,0,0,'Highlord Tirion Fordring'),
   (-1609285, 'disappears. Tirion walks over to where Darion lay',0,2,0,0,'The Lich King'),
   (-1609286, 'Light washes over the chapel — the Light of Dawn is uncovered.',0,2,0,0,'');


DELETE FROM script_waypoint WHERE entry=29173;
INSERT INTO script_waypoint VALUES
   (29173, 0, 2431.639, -5137.05, 83.843, 0, 'intro'),
   (29173, 1, 2319.242, -5266.486, 82.825, 0, 'summon & on hold'),
   (29173, 2, 2318.775, -5266.832, 82.783, 0, 'cast light of dawn'),
   (29173, 3, 2280.812, -5284.091, 82.608, 0, 'move to here and start'),
   (29173, 4, 2280.727, -5286.839, 82.930, 0, 'move forward to talk'),
   (29173, 5, 2280.812, -5284.091, 82.608, 0, 'when baba pop'),
   (29173, 6, 2281.461, -5263.014, 81.164, 0, 'charge to lich king'),
   (29173, 7, 2257.479, -5296.702, 82.165, 0, 'being kicked by Lich King'),
   (29173, 8, 2261.237, -5294.983, 82.167, 0, 'throw'),
   (29173, 9, 2259.34, -5294.379, 82.167, 0, 'event end');

DELETE FROM `script_texts` where entry in ('-1533082','-1533083');
INSERT IGNORE INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1533082,'%s takes in a deep breath.',0,3,0,0,'sapphiron EMOTE_BREATH'),
(-1533083,'%s lifts off into the air!',0,3,0,0,'sapphiron EMOTE_FLY'),
(-1533160,'%s resumes hit attacks!',0,3,0,0,'sapphiron EMOTE_GROUND'),
(-1533161,'%s enrages!',0,3,0,0,'sapphiron EMOTE_ENRAGE');

DELETE FROM script_texts WHERE entry=-1531099;
INSERT INTO `scriptdev2`.`script_texts` (`entry` ,`content_default` ,`content_loc1` ,`content_loc2` ,`content_loc3` ,`content_loc4` ,`content_loc5` ,`content_loc6` ,`content_loc7` ,`content_loc8` ,`sound` ,`type` ,`language` ,`emote` ,`comment`)

VALUES ('-1531099', 'WARNING: Anomaly in wormhole appears!', NULL , NULL , NULL , NULL , NULL , NULL , NULL , NULL , '0', '3', '0', '0', 'Wormhole emote when anomaly, item 48933');

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
INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615172, "Trans-location complete. Commencing planetary analysis of Azeroth.", 15405, 0, 0, 0, "Algalon: Intro 1");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615173, "Stand back, mortals. I am not here to fight you.", 15406, 0, 0, 0, "Algalon: Intro 2");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615174, "It is in the universe's best interest to re-originate this planet should my analysis find systemic corruption. Do not interfere.", 15407, 0, 0, 0, "Algalon: Intro 3");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615175, "See your world through my eyes: A universe so vast as to be immeasurable - incomprehensible even to your greatest minds.", 15390, 1, 0, 0, "Algalon: Engaged for the first time");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615176, "Your actions are illogical. All possible results for this encounter have been calculated. The Pantheon will receive the Observer's message regardless of outcome.", 15386, 1, 0, 0, "Algalon: Aggro");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615177, "The stars come to my aid.", 15392, 1, 0, 0, "Algalon: Summoning Collapsing Stars");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615178, "Witness the fury of cosmos!", 15396, 1, 0, 0, "Algalon: Big Bang 1");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615179, "Behold the tools of creation!", 15397, 1, 0, 0, "Algalon: Big Bang 2");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615180, "Beware!", 15391, 1, 0, 0, "Algalon: Phase 2");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615181, "Loss of life, unavoidable.", 15387, 1, 0, 0, "Algalon: Killing a player 1");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615182, "I do what I must.", 15388, 1, 0, 0, "Algalon: Killing a player 2");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615183, "You are... out of time.", 15394, 1, 0, 0, "Algalon: Berserk");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615184, "Analysis complete. There is partial corruption in the planet's life-support systems as well as complete corruption in most of the planet's defense mechanisms.", 15398, 0, 0, 0, "Algalon: Despawn 1");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615185, "Begin uplink: Reply Code: 'Omega'. Planetary re-origination requested.", 15399, 0, 0, 0, "Algalon: Despawn 2");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615186, "Farewell, mortals. Your bravery is admirable, for such flawed creatures.", 15400, 0, 0, 0, "Algalon: Despawn 3");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615187, "I have seen worlds bathed in the Makers' flames. Their denizens fading without so much as a whimper. Entire planetary systems born and raised in the time that it takes your mortal hearts to beat once. Yet all throughout, my own heart, devoid of emotion... of empathy. I... have... felt... NOTHING! A million, million lives wasted. Had they all held within them your tenacity? Had they all loved life as you do?", 15393, 0, 0, 0, "Algalon: Defeated 1");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615188, "Perhaps it is your imperfection that which grants you free will. That allows you to persevere against cosmically calculated odds. You prevailed where the Titans' own perfect creations have failed.", 15401, 0, 0, 0, "Algalon: Defeated 2");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615189, "I've rearranged the reply code. Your planet will be spared. I cannot be certain of my own calculations anymore.", 15402, 0, 0, 0, "Algalon: Defeated 3");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615190, "I lack the strength to transmit the signal. You must hurry. Find a place of power close to the skies.", 15403, 0, 0, 0, "Algalon: Defeated 4");

INSERT IGNORE INTO script_texts
(entry, content_default, sound, TYPE, LANGUAGE, emote, COMMENT)
VALUE
(-1615191, "Do not worry about my fate $N. If the signal is not transmitted in time re-origination will proceed regardless. Save. Your. World.", 15403, 0, 0, 0, "Algalon: Defeated 5");

DELETE FROM script_waypoint WHERE entry=29173;
INSERT INTO script_waypoint VALUES
   (29173, 0, 2431.639, -5137.05, 83.843, 0, 'intro'),
   (29173, 1, 2319.242, -5266.486, 82.825, 0, 'summon & on hold'),
   (29173, 2, 2318.775, -5266.832, 82.783, 0, 'cast light of dawn'),
   (29173, 3, 2280.812, -5284.091, 82.608, 0, 'move to here and start'),
   (29173, 4, 2280.727, -5286.839, 82.930, 0, 'move forward to talk'),
   (29173, 5, 2280.812, -5284.091, 82.608, 0, 'when baba pop'),
   (29173, 6, 2281.461, -5263.014, 81.164, 0, 'charge to lich king'),
   (29173, 7, 2257.479, -5296.702, 82.165, 0, 'being kicked by Lich King'),
   (29173, 8, 2261.237, -5294.983, 82.167, 0, 'throw'),
   (29173, 9, 2259.34, -5294.379, 82.167, 0, 'event end');

-- Onyxian whelpling deep breath emote
DELETE FROM script_texts WHERE entry=-1366071;
INSERT INTO `script_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(-1366071, 'Onyxian Whelpling take a deep breath...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Onyxian whelpling deep breath emote');

-- Icecrown citadel spelltable

-- Lord Marrowgar
DELETE FROM `boss_spell_table` WHERE `entry` = 36612;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36612, 71021, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
(36612, 69138, 0, 71580, 0, 8000, 0, 0, 0, 12000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36612, 69146, 0, 70824, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36612, 69057, 0, 70824, 0, 17000, 0, 0, 0, 27000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(36612, 69076, 0, 0, 0, 3600001, 0, 0, 0, 3600001, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36612, 69075, 0, 70835, 70836, 2000, 0, 0, 0, 2000, 0, 0, 0, 5, 0, 0, 12, 0, 0),
(36612, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 1, 0, 0);
-- summons
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36612, 38711, 10000, 12000, 1, 1, 2, 2, 1, 5, 0, 9),
(36612, 36672, 45000, 45000, 1, 1, 2, 2, 75, 100, 0, 9);
-- Cold flame
DELETE FROM `boss_spell_table` WHERE `entry` = 36672;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36672, 69146, 70823, 70824, 70825, 3000, 0, 0, 0, 3000, 0, 0, 0, 5, 0, 0, 12, 0, 0),
(36672, 69145, 0, 0, 0, 3000, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 1, 0, 0);
-- Bone spike
DELETE FROM `boss_spell_table` WHERE `entry` = 38711;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38711, 69065, 0, 0, 0, 1000, 0, 0, 0, 1000, 0, 0, 0, 6, 0, 0);


-- Lady Deathwhisper
DELETE FROM `boss_spell_table` WHERE `entry` = 36855;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36855, 70842, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 1, 0, 0),
(36855, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 1, 0, 0),
(36855, 71254, 72008, 72008, 72504, 5000, 0, 0, 0, 8000, 0, 0, 0, 4, 0, 0),
(36855, 71420, 72501, 72007, 72502, 15000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(36855, 71001, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(36855, 71204, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36855, 70901, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 6, 0, 0),
(36855, 71289, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(36855, 71494, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 1, 0, 0);
-- summons
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36855, 37890, 45000, 45000, 1, 1, 2, 2, 75, 100, 0, 9),
(36855, 37949, 45000, 45000, 1, 1, 2, 2, 75, 100, 0, 9),
(36855, 38010, 45000, 45000, 1, 1, 2, 2, 75, 100, 0, 9),
(36855, 38222, 8000,  15000, 1, 1, 1, 1, 75, 100, 0, 9),
(36855, 38009, 45000, 45000, 1, 1, 2, 2, 75, 100, 0, 9);
-- Vengeful shade
DELETE FROM `boss_spell_table` WHERE `entry` = 38222;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38222, 71494, 0, 0, 0, 1000, 0, 0, 0, 1000, 0, 0, 0, 1, 0, 0),
(38222, 71544, 72010, 72011, 72012, 1000, 0, 0, 0, 1000, 0, 0, 0, 3, 0, 0);

-- Gunship battle
-- Frost wyrm
DELETE FROM `boss_spell_table` WHERE `entry` = 37230;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37230, 70116, 0, 72641, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(37230, 70362, 0, 71118, 0, 20000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(37230, 71203, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 4, 0, 0),
(37230, 70361, 0, 0, 0, 3000, 0, 0, 0, 5000, 0, 0, 0, 3, 0, 0),
(37230, 47008, 0, 0, 0, 180000, 0, 0, 0, 180000, 0, 0, 0, 1, 0, 0);

-- Rotted frost giant
DELETE FROM `boss_spell_table` WHERE `entry` IN (38490, 38494);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38490, 64652, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(38490, 72865, 0, 0, 0, 5000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(38490, 71203, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 4, 0, 0),
(38490, 47008, 0, 0, 0, 300000, 0, 0, 0, 300000, 0, 0, 0, 1, 0, 0);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38494, 64652, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(38494, 72865, 0, 0, 0, 5000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(38494, 71203, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 4, 0, 0),
(38494, 47008, 0, 0, 0, 300000, 0, 0, 0, 300000, 0, 0, 0, 1, 0, 0);

-- Deathbringer Saurfang
DELETE FROM `boss_spell_table` WHERE `entry` = 37813;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37813, 72178, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 1, 0, 0),
(37813, 72371, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(37813, 72293, 0, 72444, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(37813, 72737, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(37813, 72385, 0, 72442, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 4, 0, 0),
(37813, 72380, 0, 72438, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(37813, 72408, 0, 72448, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 4, 0, 0),
(37813, 72173, 0, 0, 0, 30000, 0, 0, 0, 45000, 0, 0, 0, 1, 0, 0),
(37813, 72769, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(37813, 72723, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 1, 0, 0),
(37813, 47008, 0, 0, 0, 300000, 0, 0, 0, 300000, 0, 0, 0, 1, 0, 0);
-- summons
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(37813, 38508, 45000, 45000, 1, 1, 2, 2, 15, 25, 0, 9);
-- Blood beast
DELETE FROM `boss_spell_table` WHERE `entry` = 38508;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38508, 72176, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(38508, 72723, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(38508, 21150, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0);


-- Festergut
DELETE FROM `boss_spell_table` WHERE `entry` = 36626;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
( 36626, 70138, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69161, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69162, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 70468, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69165, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69157, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 150, 0, 0, 12, 0, 0),
( 36626, 69126, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 150, 0, 0, 12, 0, 0),
( 36626, 69166, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69195, 71219, 73031, 73032, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69278, 69278, 71221, 71221, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 1, 0, 0),
( 36626, 72103, 72103, 72103, 72103, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 4, 0, 0),
( 36626, 72219, 72551, 72551, 72553, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
( 36626, 72227, 72227, 72229, 72230, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 4, 0, 0),
( 36626, 72272, 72273, 72273, 73020, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
( 36626, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 1, 0, 0);

-- Rotface
DELETE FROM `boss_spell_table` WHERE `entry` = 36627;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36627, 47008, 0, 0, 0, 300000, 0, 0, 0, 300000, 0, 0, 0, 1, 0, 0),
(36627, 69508, 0, 0, 0, 15000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36627, 69674, 0, 0, 0, 15000, 0, 0, 0, 30000, 0, 0, 0, 4, 0, 0),
(36627, 69788, 0, 0, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 1, 0, 0),
(36627, 69783, 69797, 69799, 69802, 20000, 0, 0, 0, 40000, 0, 0, 0, 3, 0, 0),
(36627, 69789, 0, 0, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 1, 0, 0);

-- Professor Putricide
DELETE FROM `boss_spell_table` WHERE `entry` = 36678;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36678,70346, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,71968, 0, 0, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 1, 0, 0),
(36678,71617, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,71618, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(36678,71621, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,71278, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,71279, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,72296, 72295, 72615, 72480, 10000, 0, 0, 0, 20000, 0, 0, 0, 4, 0, 0),
(36678,73122, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,71603, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,70311, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(36678,72672, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0);
-- summons
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36678, 37562, 20000, 40000, 1, 1, 1, 1, 5, 10, 0, 9),
(36678, 37697, 20000, 40000, 1, 1, 1, 1, 5, 10, 0, 9);
-- Gas cloud
DELETE FROM `boss_spell_table` WHERE `entry` = 37562;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37562,70672, 0, 72455, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(37562,70215, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 6, 0, 0),
(37562,71203, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(37562,70701, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0);
-- Volatile ooze
DELETE FROM `boss_spell_table` WHERE `entry` = 37697;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37697,70492, 72505, 72624, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(37697,71203, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(37697,70447, 72836, 72837, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 6, 0, 0);
-- Mutated abomination (pet?)
DELETE FROM `boss_spell_table` WHERE `entry` = 37672;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37672,70311, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(37672,72527, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(37672,72539, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(37672,70542, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(37672,70405, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0);

-- Taldaram
DELETE FROM `boss_spell_table` WHERE `entry` = 37973;

-- Valanar
DELETE FROM `boss_spell_table` WHERE `entry` = 37970;

-- Keleseth
DELETE FROM `boss_spell_table` WHERE `entry` = 37972;

-- Lanathel
DELETE FROM `boss_spell_table` WHERE `entry` = 37955;

-- Valithria
DELETE FROM `boss_spell_table` WHERE `entry` = 36789;

-- Sindragosa
DELETE FROM `boss_spell_table` WHERE `entry` = 36853;

-- Lich king
DELETE FROM `boss_spell_table` WHERE `entry` = 36597;

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631200 AND -1631000;
INSERT INTO `script_texts` (`entry`,`content_loc8`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('-1631000','??? ?????? ? ?????, ????????. ????? ?? ????? ????? ? ????!','This is the beginning AND the end, mortals. None may enter the master\'s sanctum!','16950','6','0','0','marrowgar SAY_INTRO'),
('-1631001','????????? ????? ???? ?????? ? ??????????!','The Scourge will wash over this world as a swarm of death and destruction!','16941','6','0','0','marrowgar SAY_AGGRO'),
('-1631002','????? ??????!','BONE STORM!','16946','3','0','0','marrowgar SAY_BONESTORM'),
('-1631003','???????? ??????!','Bound by bone!','16947','3','0','0','marrowgar SAY_BONESPIKE1'),
('-1631004','????? ??????!','Stick Around!','16948','3','0','0','marrowgar SAY_BONESPIKE2'),
('-1631005','????? - ?????? ??????!','The only escape is death!','16949','6','0','0','marrowgar SAY_BONESPIKE3'),
('-1631006','?????? ??????!','More bones for the offering!','16942','6','0','0','marrowgar SAY_KILL1'),
('-1631007','?????? ????????!','Languish in damnation!','16943','6','0','0','marrowgar SAY_KILL2'),
('-1631008','?????? ??????? ????? ????? ????!','THE MASTER\'S RAGE COURSES THROUGH ME!','16945','3','0','0','marrowgar SAY_ENRAGE'),
('-1631009','? ????... ?????? ????...','I see... only darkness...','16944','6','0','0','marrowgar SAY_DEATH'),
('-1631020','????????? ?? ???? ?????? ????! ?????????, ????, ?????! ??? ????????! ????????? ??????! ????? ????????? ?? ?????? ??????????! ??? ?????? ?? ??????? ??? ????? - ??? ??????, ??? ?????? ?? ??????? ?????????? ???? ????????!','Fix your eyes upon your crude hands! The sinew, the soft meat, the dark blood coursing within! It is a weakness! A crippling flaw! A joke played by the creators upon their own creations! The sooner you come to accept your condition as a defect, the sooner you will find yourselves in a position to transcend it!','16878','6','0','0','deathwhisper SAY_INTRO1'),
('-1631021','????? ?????? ??????? ??? ????????! ??? ???? ?? ????? ???????, ? ??? ???? ???????????! ??, ??? ?????? ???? ????? ??????????! ? ??, ??? ??????, ??????? ??????????? ?????????, ??????????????, ? ??????????? ???????????? ??? ? ????? ?????????!','Through our master all things are possible! His power is without limit, and his will unbending! Those who oppose him will be destroyed utterly! And those who serve, who serve wholly, unquestioningly, with utter devotion of mind and soul? Elevated! To heights beyond your ken!','16879','6','0','0','deathwhisper SAY_INTRO2'),
('-1631022','?? ????? ???? ???? ?????, ?????? ??? ?? ???????????? ? ????? ???????? ????????? ???????? ???????? ????, ?????????? ????????! ?? ?????? ?????? ?????? ?????, ??? ????? ??? ???? ?????, ??? ?????, ? ??????, ??? ???????? ???? ???!','You have found your way here, because you are among the few gifted with true vision in a world cursed with blindness! You can see through the fog that hangs over this world like a shroud and grasp where true power lies!','16880','6','0','0','deathwhisper SAY_INTRO3'),
('-1631023','??? ??? ?? ???????????! ?? ?????? ?????? ?? ???? ????????? ?????? ??? ??? ? ????? ?????????? ?????????!','What is this disturbance?! You dare trespass upon this hallowed ground? This shall be your final resting place.','16868','6','0','0','deathwhisper SAY_AGGRO'),
('-1631024','??????! ? ???? ??? ???? ????? ???? ? ???? ????.','Enough! I see I must take matters into my own hands!','16877','6','0','0','deathwhisper SAY_PHASE2'),
('-1631025','?? ????? ? ????????? ?????? ????!','You are weak, powerless to resist my will!','16876','6','0','0','deathwhisper SAY_DOMINATEMIND'),
('-1631026','???????? ??? ????????????? ? ???????? ???? ??????????????? ??? ???? ??????!','Take this blessing and show these intruders a taste of our master\'s power.','16873','6','0','0','deathwhisper SAY_DARKEMPOWERMENT'),
('-1631027','??? ?????! ? ?????????? ??? ?? ????????? ?????!','Loyal adherent! I release you from the curse of flesh!','16874','6','0','0','deathwhisper SAY_DARKTRANSFORMATION'),
('-1631028','?????? ? ????????? ? ???????? ????!','Arise and exalt in your pure form!','16875','6','0','0','deathwhisper SAY_ANIMATEDEAD'),
('-1631029','?? ??? ?? ???????? ????????????? ????? ?????????','Do you yet grasp of the futility of your actions?','16869','6','0','0','deathwhisper SAY_KILL1'),
('-1631030','????? ????! ???? ?????...','Embrace the darkness... Darkness eternal!','16870','6','0','0','deathwhisper SAY_KILL2'),
('-1631031','??? ???? ???????????? ??????? ?????!','This charade has gone on long enough.','16872','3','0','0','deathwhisper SAY_BERSERK'),
('-1631032','??? - ????? ????? ???????! ??? ????? ?????????...','All part of the masters plan! Your end is... inevitable!','16871','6','0','0','deathwhisper SAY_DEATH'),
('-1631100','?? ??? ??????-????!','BY THE MIGHT OF THE LICH KING!','16694','6','0','0','saurfang SAY_AGGRO'),
('-1631101','????? ?????? ??????? ?? ????? ?????!','The ground runs red with your blood!','16699','6','0','0','saurfang SAY_FALLENCHAMPION'),
('-1631102','????, ??? ??????!','Feast, my minions!','16700','3','0','0','saurfang SAY_BLOODBEASTS'),
('-1631103','?? ?????!','You are nothing!','16695','6','0','0','saurfang SAY_KILL1'),
('-1631104','???? ???? ?? ?????? ????? ??????????!','Your soul will find no redemption here!','16696','6','0','0','saurfang SAY_KILL2'),
('-1631105','? ???? ??????????? ??????!','I have become... death!','16698','3','0','0','saurfang SAY_BERSERK'),
('-1631106','?... ???????????...','I... Am... Released.','16697','6','0','0','saurfang SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` IN (-1999778,-1999777);
INSERT INTO `script_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(-1999778, "Time to hightail it! Thanks friend!", 0, 0, 0, 0, 'Goblin Prisoner - thanks1 (Q: They took out men)'),
(-1999777, "I'm free? I'm free!", 0, 0, 0, 0, 'Goblin Prisoner - thanks2 (Q: They took out men)');

-- Test at Sea
REPLACE INTO script_texts
   (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)
VALUES
   (-1050020, 'Reports from the test on the enemy fleet have come in, sir!', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050021, 'Excellent. What\'s the lowdown? Do we have a bodycount?', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050022, 'Well... the good news is that we forced the reinforcements to turn back.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050023, 'Well, spit it out! What\'s the bad news?', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050024, 'The plague was not quite... fatal. However, reports of harmful effects include nausea, loss of equilibrium and severe stomach pain.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050025, 'Severe stomach pain?', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050026, 'SEVERE STOMACH PAIN?', '', '', '', '', '', '', '', '', 0, 1, 0, 0, ''),
   (-1050027, 'We are the Royal Apothecary Society! Inducing belly aches is not part of our job description!', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050028, 'Am I surrounded by amateurs? I want a full analysis of the new strain by tomorrow morning! Get on it, Ravien!', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050029, 'Yes, sir!', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '');

-- insert text for cut scene "judgement"
REPLACE INTO `script_texts` (entry,content_default,content_loc1,content_loc2,content_loc3,content_loc4,content_loc5,content_loc6,content_loc7,content_loc8,sound, type,language,emote,comment)VALUES 
(-1055005,'Bring forth the blood elf.','','','','','','','','',0,0,0,0,'VELEN_IMAGE_1'),
(-1055006,'Matis, blood elf lieutenant of the Sunhawks, you have been found guilty of genocide against the draenei people.','','','','','','','','',0,0,0,0,'VELEN_IMAGE_2'),
(-1055007,'You are to be executed at light\'s dawning. Have you anything to say for yourself?','','','','','','','','',0,0,0,0,'VELEN_IMAGE_3'),
(-1055008,'May the Light have mercy on your soul. Take him back to his cell.','','','','','','','','',0,0,0,0,'VELEN_IMAGE_4'),
(-1055009,'The Light?','','','','','','','','',0,0,0,0,'MATIS_JUDGED_1'),
(-1055010,'I am Blood Knight, mongrel. I do not serve the Light, the Light serves me. If mercy is to be granted, it will be by me.','','','','','','','','',0,0,0,0,'MATIS_JUDGED_2'),
(-1055011,'You seek to martyr me before my order - so be it. Strike me down, another will rise in my place and the suffering of the Light - of the conquered - will continue uninterrupted.','','','','','','','','',0,0,0,0,'MATIS_JUDGED_3'),
(-1055012,'You blaspheme! The Light would never allow such an aberration!','','','','','','','','',0,0,0,0,'VINDICATOR_KUROS_1'),
(-1055013,'The Light has no choice. It does as it is commanded. Just as the naaru you hold at the core of your vessel will do when we capture and enslave it... Do my words surprise you, blue blood? Yes, we know... We know everything.','','','','','','','','',0,0,0,0,'MATIS_JUDGED_4'),
(-1055014,'Take him away.','','','','','','','','',0,0,0,0,'VELEN_IMAGE_5'),
(-1055015,'Move!','','','','','','','','',0,0,0,0,'BLADE_OF_ARGUS'),
(-1055016,'Draenei dog! Did you know that the one called Saruan wept like a babe as I beat him? A feeling of euphoria coursed through me, knowing that I had a member of high rank in my grasp. Were it not for Sironas\' plans for him, I would have tortured him to death... As I do to all draenei that I capture. Alas, I am certain that you will see him soon...','','','','','','','','',0,0,0,0,'MATIS_JUDGED_5'),
(-1055017,'Breathe your last breath, heathen.','','','','','','','','',0,0,0,0,'VINDICATOR_KUROS_2'),
(-1055018,'Find their source of power and tear it down. Tear it all down.','','','','','','','','',0,0,0,0,'VELEN_IMAGE_6');

-- insert text for capturing
REPLACE INTO `script_texts` (entry,content_default,content_loc1,content_loc2,content_loc3,content_loc4,content_loc5,content_loc6,content_loc7,content_loc8,sound, type,language,emote,comment)VALUES 
(-1055000,'We\'ve got you now, Matis the Cruel!','','','','','','','','',0,0,0,0,'TRACKER_OF_THE_HAND_1'),
(-1055001,'You will never take me alive!','','','','','','','','',0,0,0,0,'MATIS_THE_CRUEL'),
(-1055002,'Return to Kuros. I will bring him to Blood Watch.','','','','','','','','',0,0,0,0,'TRACKER_OF_THE_HAND_2');

DELETE FROM script_texts WHERE entry IN (-1999795,-1999794,-1999793,-1999792);
INSERT INTO script_texts (`entry`,`content_default`,`comment`) VALUES
(-1999795,'We wait until you ready','Injured oracle - quest accepted'),
(-1999794,'Home time','Injured oracle - escort start'),
(-1999793,'Thanks!','Injured oracle - escort completed'),
-- couldn't read last two words of this quote from YT video :D
(-1999792,'Oh no! Some puppy man lolowed!','Injured oracle - after escort completed');

DELETE FROM script_waypoint WHERE entry = 28217;
INSERT INTO script_waypoint VALUES
(28217,0,5398.97,4509.59,-131.02,0,'Injured Oracle'),
(28217,1,5396.6,4520.8,-132.538,0,'Injured Oracle'),
(28217,2,5403.09,4529.73,-138.526,0,'Injured Oracle'),
(28217,3,5407.94,4526.85,-143.511,0,'Injured Oracle'),
(28217,4,5417.01,4521.1,-144.062,0,'Injured Oracle'),
(28217,5,5426.05,4524.29,-148.2,0,'Injured Oracle'),
(28217,6,5440.56,4538.17,-149.565,0,'Injured Oracle'),
(28217,7,5448.16,4548.17,-149.628,0,'Injured Oracle'),
(28217,8,5454.08,4557.31,-148.648,0,'Injured Oracle'),
(28217,9,5457.64,4571.63,-147.796,0,'Injured Oracle'),
(28217,10,5458.63,4581.94,-147.28,0,'Injured Oracle'),
(28217,11,5463.83,4591.32,-147.28,0,'Injured Oracle'),
(28217,12,5471.43,4603.84,-145.204,0,'Injured Oracle'),
(28217,13,5479.23,4613.66,-141.319,0,'Injured Oracle'),
(28217,14,5487.9,4622.07,-137.417,0,'Injured Oracle'),
(28217,15,5495.01,4630.13,-135.591,0,'Injured Oracle'),
(28217,16,5506.42,4641.75,-134.855,0,'Injured Oracle'),
(28217,17,5525.26,4648.73,-135.732,0,'Injured Oracle'),
(28217,18,5538.77,4649.64,-136.051,0,'Injured Oracle'),
(28217,19,5554.95,4651.68,-134.196,0,'Injured Oracle'),
(28217,20,5571.63,4653.39,-135.157,0,'Injured Oracle'),
(28217,21,5588.42,4647.65,-136.494,0,'Injured Oracle'),
(28217,22,5599.17,4639.45,-136.494,0,'Injured Oracle'),
(28217,23,5609.14,4629.58,-136.945,0,'Injured Oracle'),
(28217,24,5620.89,4618.27,-137.895,0,'Injured Oracle'),
(28217,25,5631.98,4604.56,-137.037,30000,'Injured Oracle');

DELETE FROM `script_waypoint` WHERE (`entry`='17379');
INSERT INTO script_waypoint (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
( 17379, 1, -4173.75,  -12514.605,   44.37066, 0, 'Ancestor Akida Waypoint'),
( 17379, 2, -4140.67,  -12518.501,   45.80541, 0, 'Ancestor Akida Waypoint'),
( 17379, 3, -4088.37,  -12526.445,   42.80884, 0, 'Ancestor Akida Waypoint'),
( 17379, 4, -4069.28,  -12541.747,   43.24752, 0, 'Ancestor Akida Waypoint'),
( 17379, 5, -4061.57,  -12552.793,   40.82198, 0, 'Ancestor Akida Waypoint'),
( 17379, 6, -4029.66,  -12587.724,   49.93429, 0, 'Ancestor Akida Waypoint'),
( 17379, 7, -4029.66,  -12587.724,   49.93429, 0, 'Ancestor Akida Waypoint'),
( 17379, 8, -3993.81,  -12634.629,   62.81399, 0, 'Ancestor Akida Waypoint'),
( 17379, 9, -3967.10,  -12679.759,   70.83762, 0, 'Ancestor Akida Waypoint'),
( 17379, 10, -3923.55,  -12745.004,   96.03991, 0, 'Ancestor Akida Waypoint');

REPLACE INTO script_texts
   (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)
VALUES
   (-1050010, 'Follow me I shall result you on a place!', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '');

DELETE FROM `script_waypoint` WHERE (`entry`='17391');
INSERT INTO script_waypoint (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
( 17391, 1, -3926.08,  -12755.158,   99.08043, 0, 'Ancestor Coo Waypoint'),
( 17391, 2, -3924.02,  -12763.896,   101.54787, 0, 'Ancestor Coo Waypoint');

REPLACE INTO script_texts
   (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)
VALUES
   (-1050014, 'Follow me!', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050015, 'Ritk kin\'chikx azul azure summit...', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050016, 'Coo xip fly... Jump ilos river. Find Tikti.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '');

DELETE FROM `script_waypoint` WHERE (`entry`='17392');
INSERT INTO script_waypoint (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
( 17392, 1, -3881.70,  -13111.898,   5.81401, 0, 'Ancestor Tikti Waypoint'),
( 17392, 2, -3894.24,  -13077.400,   0.07646, 0, 'Ancestor Tikti Waypoint'),
( 17392, 3, -3899.35,  -13037.608,   -10.1982, 0, 'Ancestor Tikti Waypoint');

REPLACE INTO script_texts
   (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)
VALUES
   (-1050014, 'Follow me!', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050015, '[Furbolg] Far you mixik tak come. Gaze upon the kitch\'kal river. Follow. Ilog to Yor.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050016, '[Furbolg] Go... Search yitix\'kil bottom river. South!', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '');


DELETE FROM `script_waypoint` WHERE (`entry`='17393');
INSERT INTO script_waypoint (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
( 17393, 1, -4649.38,  -13007.5576,   0.162367, 0, 'Ancestor Yor Waypoint'),
( 17393, 2, -4604.53,  -12942.9570,   2.922896, 0, 'Ancestor Yor Waypoint'),
( 17393, 3, -4580.22,  -12906.0537,   11.97748, 0, 'Ancestor Yor Waypoint'),
( 17393, 4, -4568.75,  -12868.1787,   7.927529, 0, 'Ancestor Yor Waypoint'),
( 17393, 5, -4554.15,  -12831.7529,   12.02446, 0, 'Ancestor Yor Waypoint'),
( 17393, 6, -4546.50,  -12792.3477,   16.54275, 0, 'Ancestor Yor Waypoint'),
( 17393, 7, -4542.02,  -12741.7676,   9.442755, 0, 'Ancestor Yor Waypoint'),
( 17393, 8, -4531.60,  -12668.3301,   16.59256, 0, 'Ancestor Yor Waypoint'),
( 17393, 9, -4533.93,  -12614.7734,   12.47356, 0, 'Ancestor Yor Waypoint'),
( 17393, 10, -4538.40,  -12557.1943,  12.974200, 0, 'Ancestor Yor Waypoint'),
( 17393, 11, -4542.75,  -12491.9033,  3.171876, 0, 'Ancestor Yor Waypoint'),
( 17393, 12, -4548.39,  -12419.8945,   8.676768, 0, 'Ancestor Yor Waypoint'),
( 17393, 13, -4554.66,  -12380.1074,   19.042257, 0, 'Ancestor Yor Waypoint'),
( 17393, 14, -4569.86,  -12336.9443,   21.875879, 0, 'Ancestor Yor Waypoint'),
( 17393, 15, -4582.32,  -12297.8769,   15.123099, 0, 'Ancestor Yor Waypoint'),
( 17393, 16, -4605.11,  -12233.0928,   28.588888, 0, 'Ancestor Yor Waypoint'),
( 17393, 17, -4603.43,  -12153.1113,   39.701370, 0, 'Ancestor Yor Waypoint'),
( 17393, 18, -4599.52,  -12068.0009,   44.449554, 0, 'Ancestor Yor Waypoint'),
( 17393, 19, -4594.67,  -11936.1240,   36.185963, 0, 'Ancestor Yor Waypoint'),
( 17393, 20, -4574.30,  -11893.3506,   26.572578, 0, 'Ancestor Yor Waypoint'),
( 17393, 21, -4542.13,  -11847.5361,   21.584305, 0, 'Ancestor Yor Waypoint'),
( 17393, 22, -4514.82,  -11811.0195,   14.145091, 0, 'Ancestor Yor Waypoint'),
( 17393, 23, -4522.52,  -11743.0654,   17.374144, 0, 'Ancestor Yor Waypoint'),
( 17393, 24, -4488.64,  -11644.7168,   11.355472, 0, 'Ancestor Yor Waypoint');


REPLACE INTO script_texts
   (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)
VALUES
   (-1050017, 'Come, %s . Let us leave the water together, purified.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050018, '[Furbolg] We go now, together. We will seek Vark.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050019, '[Furbolg] Follow me to Vark.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '');

-- Rite of Vision

DELETE FROM script_waypoint WHERE entry=2983;

INSERT INTO script_waypoint
   (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`)
VALUES
   ( 2983, 1, -2226.32,  -408.095,   -9.36235, 0, 'Plains Vision Waypoint'),
   ( 2983, 2, -2203.04,  -437.212,   -5.72498, 0, 'Plains Vision Waypoint'),
   ( 2983, 3, -2163.91,  -457.851,   -7.09049, 0, 'Plains Vision Waypoint'),
   ( 2983, 4, -2123.87,  -448.137,   -9.29591, 0, 'Plains Vision Waypoint'),
   ( 2983, 5, -2104.66,  -427.166,   -6.49513, 0, 'Plains Vision Waypoint'),
   ( 2983, 6, -2101.48,  -422.826,   -5.3567, 0, 'Plains Vision Waypoint'),
   ( 2983, 7, -2097.56,  -417.083,   -7.16716, 0, 'Plains Vision Waypoint'),
   ( 2983, 8, -2084.87,  -398.626,   -9.88973, 0, 'Plains Vision Waypoint'),
   ( 2983, 9, -2072.71,  -382.324,   -10.2488, 0, 'Plains Vision Waypoint'),
   ( 2983, 10, -2054.05,  -356.728,   -6.22468, 0, 'Plains Vision Waypoint'),
   ( 2983, 11, -2051.8,   -353.645,   -5.35791, 0, 'Plains Vision Waypoint'),
   ( 2983, 12, -2049.08,  -349.912,   -6.15723, 0, 'Plains Vision Waypoint'),
   ( 2983, 13, -2030.6,   -310.724,   -9.59302, 0, 'Plains Vision Waypoint'),
   ( 2983, 14, -2002.15,  -249.308,   -10.8124, 0, 'Plains Vision Waypoint'),
   ( 2983, 15, -1972.85,  -195.811,   -10.6316, 0, 'Plains Vision Waypoint'),
   ( 2983, 16, -1940.93,  -147.652,   -11.7055, 0, 'Plains Vision Waypoint'),
   ( 2983, 17, -1888.06,  -81.943,    -11.4404, 0, 'Plains Vision Waypoint'),
   ( 2983, 18, -1837.05,  -34.0109,   -12.258, 0, 'Plains Vision Waypoint'),
   ( 2983, 19, -1796.12,  -14.6462,   -10.3581, 0, 'Plains Vision Waypoint'),
   ( 2983, 20, -1732.61,  -4.27746,   -10.0213, 0, 'Plains Vision Waypoint'),
   ( 2983, 21, -1688.94,  -0.829945,  -11.7103, 0, 'Plains Vision Waypoint'),
   ( 2983, 22, -1681.32,  13.0313,    -9.48056, 0, 'Plains Vision Waypoint'),
   ( 2983, 23, -1677.04,  36.8349,    -7.10318, 0, 'Plains Vision Waypoint'),
   ( 2983, 24, -1675.2,   68.559,     -8.95384, 0, 'Plains Vision Waypoint'),
   ( 2983, 25, -1676.57,  89.023,     -9.65104, 0, 'Plains Vision Waypoint'),
   ( 2983, 26, -1678.16,  110.939,    -10.1782, 0, 'Plains Vision Waypoint'),
   ( 2983, 27, -1677.86,  128.681,    -5.73869, 0, 'Plains Vision Waypoint'),
   ( 2983, 28, -1675.27,  144.324,    -3.47916, 0, 'Plains Vision Waypoint'),
   ( 2983, 29, -1671.7,   163.169,    -1.23098, 0, 'Plains Vision Waypoint'),
   ( 2983, 30, -1666.61,  181.584,    5.26145, 0, 'Plains Vision Waypoint'),
   ( 2983, 31, -1661.51,  196.154,    8.95252, 0, 'Plains Vision Waypoint'),
   ( 2983, 32, -1655.47,  210.811,    8.38727, 0, 'Plains Vision Waypoint'),
   ( 2983, 33, -1647.07,  226.947,    5.27755, 0, 'Plains Vision Waypoint'),
   ( 2983, 34, -1621.65,  232.91,     2.69579, 0, 'Plains Vision Waypoint'),
   ( 2983, 35, -1600.23,  237.641,    2.98539, 0, 'Plains Vision Waypoint'),
   ( 2983, 36, -1576.07,  242.546,    4.66541, 0, 'Plains Vision Waypoint'),
   ( 2983, 37, -1554.57,  248.494,    6.60377, 0, 'Plains Vision Waypoint'),
   ( 2983, 38, -1547.53,  259.302,    10.6741, 0, 'Plains Vision Waypoint'),
   ( 2983, 39, -1541.7,   269.847,    16.4418, 0, 'Plains Vision Waypoint'),
   ( 2983, 40, -1539.83,  278.989,    21.0597, 0, 'Plains Vision Waypoint'),
   ( 2983, 41, -1540.16,  290.219,    27.8247, 0, 'Plains Vision Waypoint'),
   ( 2983, 42, -1538.99,  298.983,    34.0032, 0, 'Plains Vision Waypoint'),
   ( 2983, 43, -1540.38,  307.337,    41.3557, 0, 'Plains Vision Waypoint'),
   ( 2983, 44, -1536.61,  314.884,    48.0179, 0, 'Plains Vision Waypoint'),
   ( 2983, 45, -1532.42,  323.277,    55.6667, 0, 'Plains Vision Waypoint'),
   ( 2983, 46, -1528.77,  329.774,    61.1525, 0, 'Plains Vision Waypoint'),
   ( 2983, 47, -1525.65,  333.18,     63.2161, 0, 'Plains Vision Waypoint'),
   ( 2983, 48, -1517.01,  350.713,    62.4286, 0, 'Plains Vision Waypoint'),
   ( 2983, 49, -1511.39,  362.537,    62.4539, 0, 'Plains Vision Waypoint'),
   ( 2983, 50, -1508.68,  366.822,    62.733, 0, 'Plains Vision Waypoint');


REPLACE INTO script_texts
   (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`)
VALUES
   (-1050000, 'What\'s the big idea, Spark? Why\'d you call for this meeting?', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050001, 'What\'s the big idea? You nearly blew my cover, idiot! I told you to put the compass and navigation maps somewhere safe - not out in the open for any fool to discover. ', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050002, 'The Master has gone to great lengths to secure information about the whereabouts of the Exodar. You could have blown the entire operation, including the cover of our spy on the inside. ', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050003, 'Relax, Spark! I have it all under control. We\'ll strip mine the Exodar right out from under \'em - making both you and I very, very rich in the process. ', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050004, 'Relax? Do you know what Kael\'thas does to those that fail him, Geezle? Eternal suffering and pain... Do NOT screw this up, fool. ', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050005, 'Our Bloodmyst scouts must have located our contact. The fool, Velen, will soon leave himself open and defenseless -- long enough for us to strike! Now get out of my sight before I vaporize you... ', '', '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
   (-1050006, 'Yes, sir. It won\'t happen again...', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '');

-- -1 608 000 VIOLET HOLD
INSERT IGNORE INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) VALUES
-- Cyanigosa
   (-1608000, 'We finish this now, champions of Kirin Tor!', 13947, 1, 0, 'cyanigosa SAY_AGGRO'),
   (-1608001, 'I will end the Kirin Tor!', 13952, 1, 0, 'cyanigosa SAY_SLAY_1'),
   (-1608002, 'Dalaran will fall!', 13953, 1, 0, 'cyanigosa SAY_SLAY_2'),
   (-1608003, 'So ends your defiance of the Spell-Weaver!', 13954, 1, 0, 'cyanigosa SAY_SLAY_3'),
   (-1608004, 'Perhaps... we have... underestimated... you.', 13955, 1, 0, 'cyanigosa SAY_DEATH'),
   (-1608005, 'A valiant defense, but this city must be razed. I will fulfill Malygos\'s wishes myself!', 13946, 1, 0, 'cyanigosa SAY_SPAWN'),
   (-1608006, 'Am I interrupting?', 13951, 1, 0, 'cyanigosa SAY_DISRUPTION'),
   (-1608007, 'Shiver and die!', 13948, 1, 0, 'cyanigosa SAY_BREATH_ATTACK'),
   (-1608008, 'The world has forgotten what true magic is! Let this be a reminder!', 13949, 1, 0, 'cyanigosa SAY_SPECIAL_ATTACK_1'),
   (-1608009, 'Who among you can withstand my power?', 13950, 1, 0, 'cyanigosa SAY_SPECIAL_ATTACK_2'),
-- Erekem
   (-1608010, 'Notcawwget in way ofrrak-rrakflee!', 14219, 1, 0, 'erekem SAY_AGGRO'),
   (-1608011, '...', 14222, 1, 0, 'erekem SAY_SLAY_1'),
   (-1608012, 'Precious life ... wasted.', 14223, 1, 0, 'erekem SAY_SLAY_2'),
   (-1608013, 'Only strong ... survive.', 14224, 1, 0, 'erekem SAY_SLAY_3'),
   (-1608014, 'Nokaw, kawflee...', 14225, 1, 0, 'erekem SAY_DEATH'),
   (-1608015, 'Free tommfly onw. Ra-aak... Not find usekh-ekh! Escape!', 14218, 1, 0, 'erekem SAY_SPAWN'),
   (-1608016, 'My-raaakfavorite! Awk awk awk! Raa-kaa!', 14220, 1, 0, 'erekem SAY_ADD_KILLED'),
   (-1608017, 'Nasty little...A-ak, kaw! Kill! Yes, kill you!', 14221, 1, 0, 'erekem SAY_BOTH_ADDS_KILLED'),
-- Ichoron
   (-1608018, 'Stand aside, mortals!', 14230, 1, 0, 'ichoron SAY_AGGRO'),
   (-1608019, 'I am a force of nature!', 14234, 1, 0, 'ichoron SAY_SLAY_1'),
   (-1608020, 'I shall pass!', 14235, 1, 0, 'ichoron SAY_SLAY_2'),
   (-1608021, 'You can not stop the tide!', 14236, 1, 0, 'ichoron SAY_SLAY_3'),
   (-1608022, 'I... recede.', 14237, 1, 0, 'ichoron SAY_DEATH'),
   (-1608023, 'I... am fury... unrestrained!', 14239, 1, 0, 'ichoron SAY_SPAWN'),
   (-1608024, 'I shall consume, decimate, devastate, and destroy! Yield now to the wrath of the pounding sea!', 14231, 1, 0, 'ichoron SAY_ENRAGE'),
   (-1608025, 'I will not be contained! Ngyah!!', 14233, 1, 0, 'ichoron SAY_SHATTER'),
   (-1608026, 'Water can hold any form, take any shape... overcome any obstacle.', 14232, 1, 0, 'ichoron SAY_BUBBLE'),
-- Xevozz
   (-1608027, 'It seems my freedom must be bought with blood...', 14499, 1, 0, 'xevozz SAY_AGGRO'),
   (-1608028, 'Nothing personal.', 14504, 1, 0, 'xevozz SAY_SLAY_1'),
   (-1608029, 'Business concluded.', 14505, 1, 0, 'xevozz SAY_SLAY_2'),
   (-1608030, 'Profit!', 14506, 1, 0, 'xevozz SAY_SLAY_3'),
   (-1608031, 'This is an... unrecoverable... loss.', 14507, 1, 0, 'xevozz SAY_DEATH'),
   (-1608032, 'Back in business! Now to execute an exit strategy.', 14498, 1, 0, 'xevozz SAY_SPAWNED'),
   (-1608033, 'It would seem that a renegotiation is in order.', 14503, 1, 0, 'xevozz SAY_CHARGED'),
   (-1608034, 'The air teems with latent energy... quite the harvest!', 14501, 1, 0, 'xevozz SAY_REPEAT_SUMMON_1'),
   (-1608035, 'Plentiful, exploitable resources... primed for acquisition!', 14502, 1, 0, 'xevozz SAY_REPEAT_SUMMON_2'),
   (-1608036, 'Intriguing... a high quantity of arcane energy is near. Time for some prospecting...', 14500, 1, 0, 'xevozz SAY_SUMMON_ENERGY'),
-- Zuramat
   (-1608037, 'Eradicate.', 13996, 1, 0, 'zuramat SAY_AGGRO'),
   (-1608038, 'More... energy.', 13999, 1, 0, 'zuramat SAY_SLAY_1'),
   (-1608039, 'Relinquish.', 14000, 1, 0, 'zuramat SAY_SLAY_2'),
   (-1608040, 'Fall... to shadow.', 14001, 1, 0, 'zuramat SAY_SLAY_3'),
   (-1608041, 'Disperse.', 14002, 1, 0, 'zuramat SAY_DEATH'),
   (-1608042, 'I am... renewed.', 13995, 1, 0, 'zuramat SAY_SPAWN'),
   (-1608043, 'Know... my... pain.', 13997, 1, 0, 'zuramat SAY_SHIELD'),
   (-1608044, 'Gaze... into the void.', 13998, 1, 0, 'zuramat SAY_WHISPER');

-- Icecrown down spelltable

-- Boss Bronjahm
DELETE FROM `boss_spell_table` WHERE `entry` = 36497;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `timerMin_N10`, `timerMin_N25`, `timerMax_N10`, `timerMax_N25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(36497, 68793, 0, 3000, 0, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(36497, 36535, 0, 30000, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, NULL),
(36497, 68839, 0, 15000, 0, 25000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(36497, 68858, 0, 1000, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(36497, 68988, 0, 1000, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(36497, 68950, 0, 8000, 0, 12000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(36497, 68872, 0, 1000, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(36497, 68921, 0, 360001, 0, 360001, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 12, 0, 0, 0, NULL),
(36497, 70043, 0, 2000, 0, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL);


-- Icecrown citadel spelltable

-- Lord Marrowgar
DELETE FROM `boss_spell_table` WHERE `entry` = 36612;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36612, 71021, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
(36612, 69138, 0, 71580, 0, 8000, 0, 0, 0, 12000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36612, 69146, 0, 70824, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36612, 69057, 0, 70824, 0, 17000, 0, 0, 0, 27000, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(36612, 69076, 0, 0, 0, 3600001, 0, 0, 0, 3600001, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(36612, 69075, 0, 70835, 70836, 2000, 0, 0, 0, 2000, 0, 0, 0, 5, 0, 0, 12, 0, 0),
(36612, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 1, 0, 0);
-- summons
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36612, 38711, 10000, 12000, 1, 1, 2, 2, 1, 5, 0, 9),
(36612, 36672, 45000, 45000, 1, 1, 2, 2, 75, 100, 0, 9);
-- Cold flame
DELETE FROM `boss_spell_table` WHERE `entry` = 36672;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36672, 69146, 70823, 70824, 70825, 3000, 0, 0, 0, 3000, 0, 0, 0, 5, 0, 0, 12, 0, 0),
(36672, 69145, 0, 0, 0, 3000, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 1, 0, 0);
-- Bone spike
DELETE FROM `boss_spell_table` WHERE `entry` = 38711;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38711, 69065, 0, 0, 0, 1000, 0, 0, 0, 1000, 0, 0, 0, 6, 0, 0);


-- Lady Deathwhisper
DELETE FROM `boss_spell_table` WHERE `entry` = 36855;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36855, 70842, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 1, 0, 0),
(36855, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 1, 0, 0),
(36855, 71254, 72008, 72008, 72504, 5000, 0, 0, 0, 8000, 0, 0, 0, 4, 0, 0),
(36855, 71420, 72501, 72007, 72502, 15000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(36855, 71001, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(36855, 71204, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36855, 70901, 0, 0, 0, 10000, 0, 0, 0, 25000, 0, 0, 0, 6, 0, 0),
(36855, 71289, 0, 0, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(36855, 71494, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 1, 0, 0);
-- summons
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36855, 37890, 45000, 75000, 1, 1, 2, 2, 75, 100, 0, 11),
(36855, 37949, 45000, 75000, 1, 1, 2, 2, 75, 100, 0, 11),
(36855, 38010, 45000, 45000, 1, 1, 2, 2, 75, 100, 0, 9),
(36855, 38222, 8000,  15000, 1, 1, 1, 1, 75, 100, 0, 9),
(36855, 38009, 45000, 45000, 1, 1, 2, 2, 75, 100, 0, 9);
-- Vengeful shade
DELETE FROM `boss_spell_table` WHERE `entry` = 38222;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38222, 71494, 0, 0, 0, 1000, 0, 0, 0, 1000, 0, 0, 0, 1, 0, 0),
(38222, 71544, 72010, 72011, 72012, 1000, 0, 0, 0, 1000, 0, 0, 0, 3, 0, 0);

-- Gunship battle
-- Frost wyrm
DELETE FROM `boss_spell_table` WHERE `entry` = 37230;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37230, 70116, 0, 72641, 0, 15000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(37230, 70362, 0, 71118, 0, 20000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(37230, 71203, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 4, 0, 0),
(37230, 70361, 0, 0, 0, 3000, 0, 0, 0, 5000, 0, 0, 0, 3, 0, 0),
(37230, 47008, 0, 0, 0, 180000, 0, 0, 0, 180000, 0, 0, 0, 1, 0, 0);

-- Rotted frost giant
DELETE FROM `boss_spell_table` WHERE `entry` IN (38490, 38494);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38490, 64652, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(38490, 72865, 0, 0, 0, 5000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(38490, 71203, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 4, 0, 0),
(38490, 47008, 0, 0, 0, 300000, 0, 0, 0, 300000, 0, 0, 0, 1, 0, 0);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38494, 64652, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(38494, 72865, 0, 0, 0, 5000, 0, 0, 0, 25000, 0, 0, 0, 4, 0, 0),
(38494, 71203, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 4, 0, 0),
(38494, 47008, 0, 0, 0, 300000, 0, 0, 0, 300000, 0, 0, 0, 1, 0, 0);

-- Deathbringer Saurfang
DELETE FROM `boss_spell_table` WHERE `entry` = 37813;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37813, 72178, 0, 0, 0, 8000, 0, 0, 0, 15000, 0, 0, 0, 1, 0, 0),
(37813, 72371, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(37813, 72293, 0, 72444, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(37813, 72737, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(37813, 72385, 0, 72442, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 4, 0, 0),
(37813, 72380, 0, 72438, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(37813, 72408, 0, 72448, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 4, 0, 0),
(37813, 72173, 0, 0, 0, 30000, 0, 0, 0, 45000, 0, 0, 0, 1, 0, 0),
(37813, 72769, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(37813, 72723, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 1, 0, 0),
(37813, 47008, 0, 0, 0, 300000, 0, 0, 0, 300000, 0, 0, 0, 1, 0, 0);
-- summons
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(37813, 38508, 45000, 45000, 1, 1, 2, 2, 15, 25, 0, 9);
-- Blood beast
DELETE FROM `boss_spell_table` WHERE `entry` = 38508;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(38508, 72176, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(38508, 72723, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0),
(38508, 21150, 0, 0, 0, 15000, 0, 0, 0, 27000, 0, 0, 0, 4, 0, 0);


-- Festergut
DELETE FROM `boss_spell_table` WHERE `entry` = 36626;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `locData_x`, `locData_y`, `locData_z`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
( 36626, 70138, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69161, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69162, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 70468, 0, 0, 0, 5000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69165, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69157, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 150, 0, 0, 12, 0, 0),
( 36626, 69126, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 150, 0, 0, 12, 0, 0),
( 36626, 69166, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69195, 71219, 73031, 73032, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 1, 0, 0),
( 36626, 69278, 69278, 71221, 71221, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 1, 0, 0),
( 36626, 72103, 72103, 72103, 72103, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 4, 0, 0),
( 36626, 72219, 72551, 72551, 72553, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 3, 0, 0),
( 36626, 72227, 72227, 72229, 72230, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 4, 0, 0),
( 36626, 72272, 72273, 72273, 73020, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 4, 0, 0),
( 36626, 47008, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 1, 0, 0);

-- Rotface
DELETE FROM `boss_spell_table` WHERE `entry` = 36627;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36627, 47008, 0, 0, 0, 300000, 0, 0, 0, 300000, 0, 0, 0, 1, 0, 0),
(36627, 69508, 0, 0, 0, 15000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36627, 69674, 0, 0, 0, 15000, 0, 0, 0, 30000, 0, 0, 0, 4, 0, 0),
(36627, 69788, 0, 0, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 1, 0, 0),
(36627, 69783, 69797, 69799, 69802, 20000, 0, 0, 0, 40000, 0, 0, 0, 3, 0, 0),
(36627, 69789, 0, 0, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 1, 0, 0);

-- Professor Putricide
DELETE FROM `boss_spell_table` WHERE `entry` = 36678;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(36678,70346, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,71968, 0, 0, 0, 20000, 0, 0, 0, 40000, 0, 0, 0, 1, 0, 0),
(36678,71617, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,71618, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(36678,71621, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,71278, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,71279, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,72296, 72295, 72615, 72480, 10000, 0, 0, 0, 20000, 0, 0, 0, 4, 0, 0),
(36678,73122, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,71603, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(36678,70311, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(36678,72672, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0);
-- summons
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(36678, 37562, 20000, 40000, 1, 1, 1, 1, 5, 10, 0, 9),
(36678, 37697, 20000, 40000, 1, 1, 1, 1, 5, 10, 0, 9);
-- Gas cloud
DELETE FROM `boss_spell_table` WHERE `entry` = 37562;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37562,70672, 0, 72455, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(37562,70215, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 6, 0, 0),
(37562,71203, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(37562,70701, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0);
-- Volatile ooze
DELETE FROM `boss_spell_table` WHERE `entry` = 37697;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37697,70492, 72505, 72624, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(37697,71203, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(37697,70447, 72836, 72837, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 6, 0, 0);
-- Mutated abomination (pet?)
DELETE FROM `boss_spell_table` WHERE `entry` = 37672;
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `CastType`, `isVisualEffect`, `isBugged`) VALUES
(37672,70311, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0),
(37672,72527, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(37672,72539, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(37672,70542, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 3, 0, 0),
(37672,70405, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 1, 0, 0);

-- Taldaram
DELETE FROM `boss_spell_table` WHERE `entry` = 37973;

-- Valanar
DELETE FROM `boss_spell_table` WHERE `entry` = 37970;

-- Keleseth
DELETE FROM `boss_spell_table` WHERE `entry` = 37972;

-- Lanathel
DELETE FROM `boss_spell_table` WHERE `entry` = 37955;

-- Valithria
DELETE FROM `boss_spell_table` WHERE `entry` = 36789;

-- Sindragosa
DELETE FROM `boss_spell_table` WHERE `entry` = 36853;

-- Lich king
DELETE FROM `boss_spell_table` WHERE `entry` = 36597;

-- Pit of saron
DELETE FROM `script_texts` WHERE `entry` <= -1658000 and `entry` >= -1658999;
INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- Garfrost
(-1658001,'Tiny creatures under feet, you bring Garfrost something good to eat!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16912,1,0,0,'garfrost SAY_AGGRO'),
(-1658002,'Will save for snack. For later.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16913,1,0,0,'garfrost SAY_SLAY_1'),
(-1658003,'That one maybe not so good to eat now. Stupid Garfrost! BAD! BAD!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16914,1,0,0,'garfrost SAY_SLAY_2'),
(-1658004,'Garfrost hope giant underpants clean. Save boss great shame. For later.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16915,1,0,0,'garfrost SAY_DEATH'),
(-1658005,'Axe too weak. Garfrost make better and CRUSH YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16916,1,0,0,'garfrost SAY_PHASE2'),
(-1658006,'Garfrost tired of puny mortals. Now your bones will freeze!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16917,1,0,0,'garfrost SAY_PHASE3'),
(-1658007,'Another shall take his place. You waste your time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16752,1,0,0,'Tyrannus SAY_TYRANNUS_DEATH'),

-- Krick
(-1658010,'Our work must not be interrupted! Ick! Take care of them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16926,1,0,0,'Krick SAY_AGGRO'),
(-1658011,'Ooh...We could probably use these parts!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16927,1,0,0,'Krick SAY_SLAY_1'),
(-1658012,'Arms and legs are in short supply...Thanks for your contribution!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16928,1,0,0,'Krick SAY_SLAY_2'),
(-1658013,'Enough moving around! Hold still while I blow them all up!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16929,1,0,0,'Krick SAY_BARRAGE_1'),
(-1658014,'Krick begins rapidly conjuring explosive mines!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Krick SAY_BARRAGE_2'),
(-1658015,'Quickly! Poison them all while they''re still close!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16930,1,0,0,'Krick SAY_POISON_NOVA'),
(-1658016,'No! That one! That one! Get that one!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16931,1,0,0,'Krick SAY_CHASE_1'),
(-1658017,'I''ve changed my mind...go get that one instead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16932,1,0,0,'Krick SAY_CHASE_2'),
(-1658018,'What are you attacking him for? The dangerous one is over there,fool!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16933,1,0,0,'Krick SAY_CHASE_3'),

-- Ick
(-1658020,'Ick begins to unleash a toxic poison cloud!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Ick SAY_ICK_POISON_NOVA'),
(-1658021,'Ick is chasing you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Ick SAY_ICK_CHASE_1'),

-- Krick OUTRO
(-1658030,'Wait! Stop! Don''t kill me, please! I''ll tell you everything!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16934,1,0,0,'Krick SAY_KRICK_OUTRO_1'),
(-1658031,'I''m not so naive as to believe your appeal for clemency, but I will listen.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16611,1,0,0,'Jaina SAY_JAINA_OUTRO_2'),
(-1658032,'Why should the Banshee Queen spare your miserable life?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17033,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_2'),
(-1658033,'What you seek is in the master''s lair, but you must destroy Tyrannus to gain entry. Within the Halls of Reflection you will find Frostmourne. It... it holds the truth.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16935,1,0,0,'Krick SAY_KRICK_OUTRO_3'),
(-1658034,'Frostmourne lies unguarded? Impossible!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16612,1,0,0,'Jaina SAY_JAINA_OUTRO_4'),
(-1658035,'Frostmourne? The Lich King is never without his blade! If you are lying to me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17034,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_4'),
(-1658036,'I swear it is true! Please, don''t kill me!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16936,1,0,0,'Krick SAY_KRICK_OUTRO_5'),
(-1658037,'Worthless gnat! Death is all that awaits you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16753,1,0,0,'Tyrannus SAY_TYRANNUS_OUTRO_7'),
(-1658038,'Urg... no!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16937,1,0,0,'Krick SAY_KRICK_OUTRO_8'),
(-1658039,'Do not think that I shall permit you entry into my master''s sanctum so easily. Pursue me if you dare.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16754,1,0,0,'Tyrannus SAY_TYRANNUS_OUTRO_9'),
(-1658040,'What a cruel end. Come, heroes. We must see if the gnome''s story is true. If we can separate Arthas from Frostmourne, we might have a chance at stopping him.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16613,1,0,0,'Jaina SAY_JAINA_OUTRO_10'),
(-1658041,'A fitting end for a traitor. Come, we must free the slaves and see what is within the Lich King''s chamber for ourselves.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17035,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_10'),

-- Tyrannus
(-1658050,'Your pursuit shall be in vain, adventurers, for the Lich King has placed an army of undead at my command! Behold!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16755,1,0,0,'Tyrannus SAY_AMBUSH_1'),
(-1658051,'Persistent whelps! You will not reach the entrance of my lord''s lair! Soldiers, destroy them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16756,1,0,0,'Tyrannus SAY_AMBUSH_2'),
(-1658052,'Rimefang! Trap them within the tunnel! Bury them alive!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16757,1,0,0,'Tyrannus SAY_GAUNTLET_START'),
(-1658053,'Alas, brave, brave adventurers, your meddling has reached its end. Do you hear the clatter of bone and steel coming up the tunnel behind you? That is the sound of your impending demise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16758,1,0,0,'Tyrannus SAY_INTRO_1'),
(-1658054,'Ha, such an amusing gesture from the rabble. When I have finished with you, my master''s blade will feast upon your souls. Die!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16759,1,0,0,'Tyrannus SAY_INTRO_2'),

(-1658055,'I shall not fail The Lich King! Come and meet your end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16760,1,0,0,'Tyrannus SAY_AGGRO'),
(-1658056,'Such a shameful display... You are better off dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16761,1,0,0,'Tyrannus SAY_SLAY_1'),
(-1658057,'Perhaps you should have stayed in the mountains!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16762,1,0,0,'Tyrannus SAY_SLAY_2'),
(-1658058,'Impossible! Rimefang... Warn...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16763,1,0,0,'Tyrannus SAY_DEATH'),
(-1658059,'Rimefang, destroy this fool!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16764,1,0,0,'Tyrannus SAY_MARK_RIMEFANG_1'),
(-1658060,'The frostwyrm Rimefang gazes at $N and readies an icy attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Tyrannus SAY_MARK_RIMEFANG_2'),
(-1658061,'Power... overwhelming!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16765,1,0,0,'Tyrannus SAY_DARK_MIGHT_1'),
(-1658062,'Scourgelord Tyrannus roars and swells with dark might!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Tyrannus SAY_DARK_MIGHT_2'),

(-1658063,'Brave champions, we owe you our lives, our freedom... Though it be a tiny gesture in the face of this enormous debt, I pledge that from this day forth, all will know of your deeds, and the blazing path of light you cut through the shadow of this dark citadel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Gorkun  SAY_GORKUN_OUTRO_1'),
(-1658064,'This day will stand as a testament not only to your valor, but to the fact that no foe, not even the Lich King himself, can stand when Alliance and Horde set aside their differences and ---',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Gorkun  SAY_GORKUN_OUTRO_2'),
(-1658065,'Heroes, to me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16614,1,0,0,'Jaina SAY_JAYNA_OUTRO_3'),
(-1658066,'Take cover behind me! Quickly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17037,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_3'),
(-1658067,'The Frost Queen is gone. We must keep moving - our objective is near.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16615,0,0,0,'Jaina SAY_JAYNA_OUTRO_4'),
(-1658068,'I thought he''d never shut up. At last, Sindragosa silenced that long-winded fool. To the Halls of Reflection, champions! Our objective  is near... I can sense it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17036,0,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_4'),
(-1658069,'I... I could not save them... Damn you, Arthas! DAMN YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16616,0,0,0,'Jaina SAY_JAYNA_OUTRO_5');

-- Forge of souls
DELETE FROM `script_texts` WHERE `entry` <= -1632000 and `entry` >= -1632999;
INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- Bronjham
(-1632001,'Finally...a captive audience!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16595,6,0,0,'Bronjham SAY_AGGRO'),
(-1632002,'Fodder for the engine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16596,6,0,0,'Bronjham SAY_SLAY_1'),
(-1632003,'Another soul to strengthen the host!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16597,6,0,0,'Bronjham SAY_SLAY_2'),
(-1632004,'Oooooo...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16598,6,0,0,'Bronjham SAY_DEATH'),
(-1632005,'The vortex of the harvested calls to you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16599,3,0,0,'Bronjham SAY_SOUL_STORM'),
(-1632006,'I will sever the soul from your body!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16600,6,0,0,'Bronjham SAY_CORRUPT_SOUL'),

-- Devourer of Souls
(-1632010,'You dare look upon the host of souls? I SHALL DEVOUR YOU WHOLE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16884,1,0,0,'Devoureur SAY_FACE_ANGER_AGGRO'),
(-1632011,'You dare look upon the host of souls? I SHALL DEVOUR YOU WHOLE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16890,1,0,0,'Devoureur SAY_FACE_DESIRE_AGGRO'),
(-1632012,'Damnation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16885,1,0,0,'Devoureur SAY_FACE_ANGER_SLAY_1'),
(-1632013,'Damnation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16896,1,0,0,'Devoureur SAY_FACE_SORROW_SLAY_1'),
(-1632014,'Damnation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16891,1,0,0,'Devoureur SAY_FACE_DESIRE_SLAY_1'),
(-1632015,'Doomed for eternity!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16886,1,0,0,'Devoureur SAY_FACE_ANGER_SLAY_2'),
(-1632016,'Doomed for eternity!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16897,1,0,0,'Devoureur SAY_FACE_SORROW_SLAY_2'),
(-1632017,'Doomed for eternity!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16892,1,0,0,'Devoureur SAY_FACE_DESIRE_SLAY_2'),
(-1632018,'The swell of souls will not be abated! You only delay the inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16887,1,0,0,'Devoureur SAY_FACE_ANGER_DEATH'),
(-1632019,'The swell of souls will not be abated! You only delay the inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16898,1,0,0,'Devoureur SAY_FACE_SORROW_DEATH'),
(-1632020,'The swell of souls will not be abated! You only delay the inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16893,1,0,0,'Devoureur SAY_FACE_DESIRE_DEATH'),
(-1632021,'Devourer of Souls begins to cast Mirrored Soul!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Devoureur EMOTE_MIRRORED_SOUL'),
(-1632022,'Devourer of Souls begins to Unleash Souls!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Devoureur EMOTE_UNLEASH_SOUL'),
(-1632023,'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16888,1,0,0,'Devoureur SAY_FACE_ANGER_UNLEASH_SOUL'),
(-1632024,'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16899,1,0,0,'Devoureur SAY_FACE_SORROW_UNLEASH_SOUL'),
(-1632025,'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16894,1,0,0,'Devoureur SAY_FACE_DESIRE_UNLEASH_SOUL'),
(-1632026,'Devourer of Souls begins to cast Wailing Souls!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'Devoureur EMOTE_WAILING_SOUL'),
(-1632027,'Stare into the abyss, and see your end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16889,1,0,0,'Devoureur SAY_FACE_ANGER_WAILING_SOUL'),
(-1632028,'Stare into the abyss, and see your end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16895,1,0,0,'Devoureur SAY_FACE_DESIRE_WAILING_SOUL'),
(-1632029,'Excellent work, champions! We shall set up our base camp in these chambers. My mages will get the Scourge transport device working shortly. Step inside it when you''re ready for your next mission. I will meet you on the other side.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16625,1,0,0,'Jaina SAY_JAINA_OUTRO'),
(-1632030,'Excellent work, champions! We shall set up our base camp in these chambers. My mages will get the Scourge transport device working shortly. Step inside when you are ready for your next mission. I will meet you on the other side.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17044,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO'),

-- Jaina
(-1632040,'Thank the light for seeing you here safely. We have much work to do if we are to defeat the Lich King and put an end to the Scourge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16617,0,0,0,'Jaina SAY_INTRO_1'),
(-1632041,'Our allies within the Argent Crusade and the Knights of the Ebon Blade have broken through the front gate of Icecrown and are attempting to establish a foothold within the Citadel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16618,0,0,0,'Jaina SAY_INTRO_2'),
(-1632042,'Their success hinges upon what we discover in these cursed halls. Although our mission is a wrought with peril, we must persevere!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16619,0,0,0,'Jaina SAY_INTRO_3'),
(-1632043,'With the attention of the Lich King drawn toward the front gate, we will be working our way through the side in search of information that will enable us to defeat the Scourge - once and for all.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16620,0,0,0,'Jaina SAY_INTRO_4'),
(-1632044,'King Varian''s SI7 agents have gathered information about a private sanctum of the Lich King''s deep within a place called the Halls of Reflection.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16621,0,0,0,'Jaina SAY_INTRO_5'),
(-1632045,'We will carve a path through this wretched place and find a way to enter the Halls of Reflection. I sense powerful magic hidden away within those walls... Magic that could be the key to destroy the Scourge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16622,0,0,0,'Jaina SAY_INTRO_6'),
(-1632046,'Your first mission is to destroy the machines of death within this malevolent engine of souls, and clear a path for our soldiers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16623,0,0,0,'Jaina SAY_INTRO_7'),
(-1632047,'Make haste, champions! I will prepare the troops to fall in behind you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16624,0,0,0,'Jaina SAY_INTRO_8'),

-- Sylvanas
(-1632050,'The Argent Crusade and the Knights of the Ebon Blade have assaulted the gates of Icecrown Citadel and are preparing for a massive attack upon the Scourge. Our missition is a bit more subtle, but equally as important.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17038,0,0,0,'Sylvanas SAY_INTRO_1'),
(-1632051,'With the attention of the Lich King turned towards the front gate, we''ll be working our way through the side in search of information that will enable us to defeat the Lich King - once and for all.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17039,0,0,0,'Sylvanas SAY_INTRO_2'),
(-1632052,'Our scouts have reported that the Lich King has a private chamber, outside of the Frozen Throne, deep within a place called the Halls of Reflection. That is our target, champions.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17040,0,0,0,'Sylvanas SAY_INTRO_3'),
(-1632053,'We will cut a swath of destruction through this cursed place and find a way to enter the Halls of Reflection. If there is anything of value to be found here, it will be found in the Halls.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17041,0,0,0,'Sylvanas SAY_INTRO_4'),
(-1632054,'Your first mission is to destroy the machines of death within this wretched engine of souls, and clear a path for our soldiers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17042,0,0,0,'Sylvanas SAY_INTRO_5'),
(-1632055,'The Dark Lady watches over you. Make haste!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17043,0,0,0,'Sylvanas SAY_INTRO_6');

-- TOC original texts/sounds (thanks to griffonheart)
-- english translation by Cristy
-- reworked by rsa

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1713799 AND -1713499;
INSERT INTO `script_texts`
(`comment`,`sound`, `entry`,`content_loc8`,`type`,`language`,`emote`,`content_default`) VALUES
('34996','16036','-1713500','????? ??????????, ?????! ?? ???????? ?????? ??????????? ????????? ? ??? ????????? ???????????? ?? ????! ? ???? ??????? ??? ????????? ????????? ? ??????????? ????????????. ?? ?? ???, ??? ?????? ???????? ?????????, ?????? ? ???? ??????????? ?????????, ??????? ?????????? ? ???????? ??????? ??????.','6','0','0','Welcome champions, you have heard the call of the argent crusade and you have boldly answered. It is here in the crusaders coliseum that you will face your greatest challenges. Those of you who survive the rigors of the coliseum will join the Argent Crusade on its marsh to ice crown citadel.'),
('34996','16038','-1713501','?? ????? ???????? ? ?????? ????? ???????? ????? ??? ??????? ?????? ?????????? ??????! ? ???, ?????!','6','0','0','Hailing from the deepest, darkest carverns of the storm peaks, Gormok the Impaler! Battle on, heroes!'),
('34990','16069','-1713502','???? ???????? ?? ???? ?????? ???????, ??????!','6','0','0','Your beast will be no match for my champions Tirion!'),
('34995','16026','-1713702','? ????? ? ????? ????????? ?????????? ? ???????? ?????. ?? ???????? ??????? ???? ?????, ???????.','6','0','0','Your beast will be no match for my champions Tirion!'),
('34796','0','-1713601','??? ????! ?????????? ?????!','3','0','0','My slaves! Destroy the enemy!'),
('34996','16039','-1713503','????????????? ? ??????? ? ??????????-??????????, ????????? ??????? ? ?????? ??????!','6','0','0','Steel yourselves, heroes, for the twin terrors Acidmaw and Dreadscale. Enter the arena!'),
('34799','0','-1713504','????? ?????? ???????? %s ???????? ? ??????!','3','0','0','After the death of sister %s goes berserk!'),
('34996','16040','-1713505','? ??????? ??????? ??????? ???????? ?????????? ?????: ?? ????? ??????? ??????? ???! ?????????? ??? ?????????, ????????!','6','0','0','The air freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions!'),
('34797','0','-1713506','%s ?????? ?? |3-3($n) ? ????????? ????????? ???!','3','0','0','%S looks at |3-3($n) and emits a guttural howl!'),
('34797','0','-1713507','%s ????????? ? ????? ??????? ? ?????? ??????????!','3','0','0','%S crashes into a wall of the Colosseum and lose focus!'),
('34797','0','-1713508','|3-3(%s) ?????????? ??????? ??????, ? ?? ???????????? ???? ?? ????? ????!','3','0','0','|3-3(%s) covers boiling rage, and he tramples all in its path!'),
('34996','16041','-1713509','??? ???????? ?????????!','6','0','0','All the monsters defeated!'),
('34996','16042','-1713709','??????????. ??? ??????? ??? ?? ??????, ???????? ????????? ????????? ???????. ?????? ?????? ?????? ?????? ??????? ????????.','6','0','0',''),
('34996','16043','-1713510','?????? ??????? ???????????? ??????? ???????? ???????? ?????? ?????? ??????????. ?????????? ? ???!','6','0','0','Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry!'),
('35458','16268','-1713511','?????????, ????????? ????. ? ??????, ?????????, ? ????????? ? ??????? ???????. ????? ? ???????, ???????? ??????? ?????!','6','0','0','Thank you, Highlord! Now challengers, I will begin the ritual of summoning! When I am done, a fearsome Doomguard will appear!'),
('35458','16269','-1713512','?????????? ? ????????!','6','0','0','Prepare for oblivion!'),
('35458','16270','-1713513','???! ??????????! ??????? ????? ??????????? ????????? ??????????, ???????? ???????! ?? ??????? ???, ?????!','6','0','0','Ah ha! Behold the absolute power of Wilfred Fizzlebang, master summoner! You are bound to ME, demon!'),
('34780','16143','-1713514','????????? ????! ???? ??????? ???? ???????????????!','6','0','0','Trifling gnome, your arrogance will be your undoing!'),
('35458','16271','-1713515','??? ? ???????!','6','0','0','But I am in charge here-'),
('35458','0','-1713715','?? ???, ????? ? ?????????...','6','0','0','Agonized Scream!!!'),
('34996','16044','-1713516','???????, ?????, ???????????? ? ??????????? ???????, ?????? ??? ?? ??????? ?????? ? ???? ?????? ???????!','6','0','0','Quickly, heroes! Destroy the demon lord before it can open a portal to its twisted demonic realm!'),
('34780','16144','-1713517','????? ???? ?????????, ?????????? ?????????? ????????? ???????!','6','0','0','You face Jaraxxus, eredar lord of the Burning Legion!'),
('34780','0','-1713518','?? ??? ?????????? |cFFFF0000????? ???????!|r','3','0','0','You have been sent |cFFFF0000Plamya Legion!|R'),
('34780','0','-1713519','%s ??????? ????? ???????!','3','0','0','%S creates the gates of the Void!'),
('34780','0','-1713520','%s ??????? |cFF00FF00?????? ??????????!|r','3','0','0','%S creates |cFF00FF00Vulkan Infernals!|R'),
('34780','16150','-1713521','?????, ??????! ???????? ?????!','6','0','0','Come forth, sister! Your master calls!'),
('34780','0','-1713522','$n $g?????????:???????????; |cFF00FFFF??????????? ?????!|r ???????? $g???:??;!','3','0','0','$N $gpodvergsya:been; |cFF00FFFFIspepeleniyu flesh!|R Heal $gego:it;!'),
('34780','16149','-1713523','????? ?? ?????!','6','0','0','FLESH FROM BONE!'),
('34780','16151','-1713524','????????!','6','0','0','INFERNO!'),
('34780','16147','-1713525','??? ????? ?????? ??????. ??? ??? ???????...','6','0','0','Another will take my place. Your world is doomed.'),
('34996','16045','-1713526','?????? ???????? ????????? ?????? ???????? ? ?????? ????????? ?????? ???, ??? ????? ???????? ?????? ? ?????? ??????. ? ???????, ?? ???????? ??????, ? ?????? ??? ???? ????? ?????????.','6','0','0','The loss of Wilfred Fizzlebang, while unfortunate, should be a lesson to those that dare dabble in dark magic. Alas, you are victorious and must now face the next challenge.'),
('34995','16021','-1713527','?????? ?????? ???????! ?? ????????? ?????????? ??????? ?? ?????? ????? ???? ?????? ????? ???????!','6','0','0','Treacherous Alliance dogs! You summon a demon lord against warriors of the Horde!? Your deaths will be swift!'),
('34990','16064','-1713528','??????? ?? ????? ?????? ?????????? ???????, ????? ?????????? ? ????????? ????????, ???!','6','0','0','The Alliance doesnt need the help of a demon lord to deal with Horde filth. Come, pig!'),
('34996','16046','-1713529','????! ???????????! ???????? ???????? ????? ???. ???????????? ????????? ? ?????????? ?? ???. ?????? ????????????!','6','0','0','Everyone, calm down! Compose yourselves! There is no conspiracy at play here. The warlock acted on his own volition - outside of influences from the Alliance. The tournament must go on!'),
('34996','16047','-1713530','? ????????? ??? ?? ??????????? ? ???????? ???????? ??????????? ?????????! ???? ??????? ??, ?? ????????? ????????? ???????.','6','0','0','The next battle will be against the Argent Crusades most powerful knights! Only by defeating them will you be deemed worthy...'),
('34995','16023','-1713531','???? ??????? ??????????????! ?? ???????? ?????? ?? ???! ??????? ??? ?????? ?? ????? ????? ???????, ???????. ?? ??????? ???? ????, ??? ?????????? ????!','6','0','0','The Horde demands justice! We challenge the Alliance. Allow us to battle in place of your knights, paladin. We will show these dogs what it means to insult the Horde!'),
('34995','16066','-1713731','??? ?????? ????????? ????? ???????, ??? ???????? ??? ??????????! ? ?????? ??????????????! ???????, ??????? ???? ????????? ????????? ?????? ????? ???????. ?? ??????? ????? ????!','6','0','0','Our honor has been besmirched! They make wild claims and false accusations against us. I demand justice! Allow my champions to fight in place of your knights, Tirion. We challenge the Horde!'),
('34996','16048','-1713532','??????. ?? ????? ???. ?????????? ? ??????!','','0','0','Very well, I will allow it. Fight with honor!'),
('34995','16022','-1713533','?? ?????? ??????, ????? ????! ???-??? ????!','6','0','0','Show them no mercy, Horde champions! LOK-TAR OGAR!'),
('34995','16065','-1713733','?????????? ?? ????? ???????, ?????! ?? ??? ?????? ??????!','6','0','0','Fight for the glory of the Alliance, heroes! Honor your king and your people!'),
('34990','16067','-1713534','????? ???????!','6','0','0','GLORY OF THE ALLIANCE!'),
('34990','16024','-1713734','??? ???? ???? ?????? ????, ??? ???? ??? ? ???????. ?? ????!','6','0','0','LOK-TAR OGAR!'),
('34996','16049','-1713535','?????? ? ??????? ??????. ????? ??????????? ?????? ?? ????? ?????? ??? ?????. ??? ???, ????? ??????-????, ???????? ?? ???????? ????????? ???? ??????? ?????. ? ???? ????? ???????? ????????? ??? ??????? - ??? ???? ????? ? ???????-?????.','6','0','0','A shallow and tragic victory. We are weaker as a whole from the losses suffered today. Who but the Lich King could benefit from such foolishness? Great warriors have lost their lives. And for what? The true threat looms ahead - the Lich King awaits us all in death.'),
('34996','16050','-1713536','???? ???????????, ?? ??????? ?????? ????????? ?????????. ?? ?????? ??????? ?????? ????????? ??? ?????????? ??? ??????? ??????????? ?????: ?????? ?????????, ???????? ???????? ??????-????!','6','0','0','Only by working together will you overcome the final challenge. From the depths of Icecrown come two of the Scourges most powerful lieutenants: fearsome valkyr, winged harbingers of the Lich King!'),
('34996','16037','-1713537','????? ?????????? ????????!','6','0','0','Let the games begin!'),
('34497','0','-1713538','%s ???????? ?????? ??????????|cFFFFFFFF??????? ???????!|r ???????????? ? |cFFFFFFFF???????|r ????????!','3','0','0','%S begins to read a spell |cFFFFFFFFSvetlaya funnel!|R switch to |cFFFFFFFFSvetloy|r essence!'),
('34497','0','-1713539','%s ???????? ?????? ?????????? ??????? ?????????!','3','0','0','%S begins to read the spell Treaty twins!'),
('34496','0','-1713540','%s ???????? ?????? ?????????? |cFF9932CD?????? ???????!|r ???????????? ? |cFF9932CD??????|r ????????!','3','0','0','%S begins to read a spell |cFF9932CDTemnaya funnel!|R switch to |cFF9932CDTemnoy|r essence!'),
('34497','16272','-1713541','?? ??? ??????? ??????????. ?? ??? ??????-????. ??. ??????.','6','0','0','In the name of our dark master. For the Lich King. You. Will. Die.'),
('34496','16272','-1713741','?? ??? ???????? ??????????. ?? ??? ??????-????. ??. ??????.','6','0','0','In the name of our dark master. For the Lich King. You. Will. Die.'),
('34496','16279','-1713542','?? ???????? ??? ????!','6','0','0','Let the light consume you!'),
('34496','16277','-1713543','?????? ?????!','6','0','0','Empty place!'),
('34497','16276','-1713544','???? ??????? ? ???????? ????????????.','6','0','0','You appreciated and acknowledged nothing.'),
('34497','16274','-1713545','????!','3','0','0','CHAOS!'),
('34496','16278','-1713546','?? ???????? ??? ????!','6','0','0','Let the dark consume you!'),
('34496','16275','-1713547','????? ?? ??????????...','6','0','0','The Scourge cannot be stopped...'),
('34990','16068','-1713548','?????? ??????? ?? ???????? ???? ????? ??????? ???????????? ??????-????! ??? ??????? ????? ??????!','6','0','0','Against the Alliance can not stand even the most powerful henchmen of the Lich King! All glorify our heroes!'),
('34995','16025','-1713748','?? ??? ??? ???????????? ? ?????????? ????, ???????? ?? ?????? ????? ?????!','6','0','0','Against the Horde does not withstand even the most powerful henchmen of the Lich King! All glorify our heroes!'),
('34996','16051','-1713549','??????-??? ????? ??????? ??????! ?? ???????? ???? ??? ??????????? ????? ??????????? ?????????! ?? ?????? ??????? ???? ?? ???????? ??????? ?????? ? ???????? ? ?????? ??????? ?????! ??? ?????? ?????????, ??????? ?? ?? ?? ????? ?????? ??????!','6','0','0','A mighty blow has been dealt to the Lich King! You have proven yourselves able bodied champions of the Argent Crusade. Together we will strike at Icecrown Citadel and destroy what remains of the Scourge! There is no challenge that we cannot face united!'),
('16980','16321','-1713550','????? ???? ????? ?????????, ????????.','6','0','0','You will have your challenge, Fordring.'),
('34996','16052','-1713551','?????! ??? ??????? ??????! ????? ??????? ??????, ? ? ?????? ???? ??????????? ??????.','6','0','0','Arthas! You are hopelessly outnumbered! Lay down Frostmourne and I will grant you a just death.'),
('35877','16322','-1713552','?????????? ????????? ????? ??????? ??? ?????? ?????????. ???????, ?? ??????? ?? ??? ???????? ????????? ???? ????. ??? ???????.','6','0','0','The Nerubians built an empire beneath the frozen wastes of Northrend. An empire that you so foolishly built your structures upon. MY EMPIRE.'),
('16980','16323','-1713553','???? ????? ?????? ????????? ????? ???????????? ???, ????????.','6','0','0','The souls of your fallen champions will be mine, Fordring.'),
('34564','16235','-1713554','? ??? ? ????? ?????????, ??? ? ?????? ????????.','6','0','0','Ahhh... Our guests arrived, just as the master promised.'),
('34564','16234','-1713555','??? ????? ?????? ????? ???????!','3','0','0','This place will serve as your tomb!'),
('34564','16240','-1713556','???? ??-? ??-?-?-?, ????. ?????????, ????? ???. ????? ????????...','6','0','0','Auum na-l ak-k-k-k, isshhh. Rise, minions. Devour...'),
('34564','0','-1713557','%s ?????????? ? ?????!','3','0','0','%S buries itself in the earth!'),
('34660','0','-1713558','???? %s ?????????? $n!','3','0','0','%s spikes  pursuing $n!'),
('34564','0','-1713559','%s ???????? ?? ???????????!','3','0','0','%S getting out of the ground!'),
('34564','16241','-1713560','???? ???????? ???!','6','0','0','The swarm shall overtake you!'),
('34564','0','-1713561','%s ????????? ??? ?????-?????????, ????? ???????????? ????????!','3','0','0','%S produces a swarm of beetles Peon to restore your health!'),
('34564','16236','-1713562','?-????? ???!','6','0','0','F-lakkh shir!'),
('34564','16237','-1713563','??? ???? ???? ???????? ???????.','6','0','0','Another soul to sate the host.'),
('34564','16238','-1713564','? ?????? ????, ????????...','6','0','0','I have failed you, master...'),
('36095','0','-1713565','????????, ?? ?????? ????????? ???????? ???????????! ??????, ??? ?????? ????? ??????? ???????? ??????????? ????? ???????????? ????????? ??? ?????????.','6','0','0','Champions, you are alive! Not only have you defeated every challenge of the Trial of the Crusader, but thwarted Arthas directly! Your skill and cunning will prove to be a powerful weapon against the Scourge. Well done! Allow one of my mages to transport you back to the surface!'),
('36095','0','-1713566','????????? ??????? ??? ??? ??????? ? ???????? ??????????? ???????, ? ????? ??? ?????????? ???????? ??? ????? ? ??????? ? ?????? ?????? ?????? ? ????? ?????? ???????? ??????? ??????!','6','0','0','Let me hand you the chests as a reward, and let its contents will serve you faithfully in the campaign against Arthas in the heart of the Icecrown Citadel!');

-- Trial of the crusader spelltable
DELETE FROM `boss_spell_table` WHERE `entry` IN 
(34496,34497,34564,34605,34607,34780,34784,34796,34797,34799, 34800, 34813, 34815, 34826, 35144, 35176, 34606, 34660);

-- Eydis Darkbane
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34496, 64238, 0, 0, 0, 600000, 0, 0, 0, 600000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34496, 65768, 67262, 67263, 67264, 30000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34496, 65874, 67256, 67257, 67258, 30000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34496, 65876, 67306, 67307, 67308, 30000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34496, 65879, 67244, 67245, 67246, 30000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34496, 65916, 67248, 67249, 67250, 15000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34496, 66058, 67182, 67183, 67184, 30000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34496, 66069, 67309, 67310, 67311, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(34496, 67282, 0, 0, 0, 10000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL);
-- summons
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(34496, 34628, 40000, 40000, 1, 1, 2, 2, 10, 100, 0, 11);

-- Fjola Lightbane
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34497, 64238, 64238, 64238, 64238, 600000, 600000, 600000, 600000, 600000, 600000, 600000, 600000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34497, 65766, 67270, 67271, 67272, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34497, 65858, 67259, 67260, 67261, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34497, 65875, 67303, 67304, 67305, 30000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34497, 65916, 67248, 67249, 67250, 15000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34497, 66046, 67206, 67207, 67208, 30000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34497, 66075, 67312, 67313, 67314, 10000, 10000, 10000, 10000, 20000, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(34497, 67297, 67297, 67298, 67298, 10000, 10000, 10000, 10000, 15000, 15000, 15000, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);
-- summons
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `timerMin_N10`, `timerMax_N10`,  `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `CastType` ) VALUES
(34497, 34630, 20000, 20000, 1, 1, 2, 2, 10, 100, 0, 11);

-- AnubArak
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34564, 26662, 26662, 26662, 26662, 600000, 600000, 600000, 600000, 600000, 600000, 600000, 600000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34564, 34605, 0, 0, 0, 90000, 0, 0, 0, 90000, 0, 0, 0, 0, 0, 0, 0, 20.0, 100.0, 0, 0, 0, 0, 9, 1, 0, 0, NULL),
(34564, 34660, 0, 0, 0, 20000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 5.0, 10.0, 0, 0, 0, 0, 9, 1, 0, 0, NULL),
(34564, 34606, 0, 0, 0, 5000, 0, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 10.0, 100.0, 0, 0, 0, 0, 9, 1, 0, 0, NULL),
(34564, 34607, 0, 0, 0, 70000, 0, 0, 0, 90000, 0, 0, 0, 0, 0, 0, 0, 20.0, 100.0, 0, 0, 0, 0, 9, 1, 0, 0, NULL),
(34564, 53421, 53421, 53421, 53421, 45000, 45000, 45000, 45000, 60000, 60000, 60000, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, NULL),
(34564, 66169, 0, 0, 0, 20000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34564, 66012, 66012, 66012, 66012, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34564, 66013, 67700, 68509, 68510, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34564, 66339, 66339, 66339, 66339, 5000, 5000, 5000, 5000, 10000, 10000, 10000, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, NULL),
(34564, 67574, 0, 0, 0, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 1, 0, NULL),
(34564, 66118, 67630, 68646, 68647, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34564, 66240, 0, 0, 0, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34564, 66125, 0, 0, 0, 10000, 0, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34564, 67730, 0, 0, 0, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL);

-- Anub'arak scarab
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34605, 66092, 66092, 66092, 66092, 5000, 5000, 5000, 5000, 20000, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34605, 67861, 66092, 66092, 66092, 5000, 5000, 5000, 5000, 20000, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL);

-- Cold sphere
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34606, 66193, 67855, 67856, 67857, 5000, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL);

-- Anub'arak spike
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34660, 67574, 0, 0, 0, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34660, 66193, 67855, 67856, 67857, 1000, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34660, 65920, 65921, 65922, 65923, 1000, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- Nerubian Borrower
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34607, 66129, 66129, 66129, 66129, 10000, 10000, 10000, 10000, 20000, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34607, 67322, 67322, 67322, 67322, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, NULL),
(34607, 67847, 67847, 67847, 67847, 5000, 5000, 5000, 5000, 20000, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL);

-- Jaraxxus
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34780, 26662, 26662, 26662, 26662, 600000, 600000, 600000, 600000, 600000, 600000, 600000, 600000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34780, 66197, 68123, 68124, 68125, 30000, 30000, 30000, 30000, 45000, 45000, 45000, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34780, 66237, 67049, 67050, 67051, 40000, 40000, 40000, 40000, 90000, 90000, 40000, 90000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34780, 66242, 67060, 67060, 67060, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34780, 66264, 66264, 68405, 68405, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 1, 0, NULL),
(34780, 66528, 66528, 67029, 67029, 15000, 15000, 15000, 15000, 25000, 25000, 25000, 25000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34780, 66532, 66963, 66964, 66965, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34780, 67108, 0, 0, 0, 30000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34780, 66255, 0, 0, 0, 30000, 0, 0, 0, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34780, 34825, 0, 0, 0, 60000, 0, 0, 0, 60000, 0, 0, 0, 0, 0, 0, 0, 20.0, 80.0, 0, 0, 0, 0, 10, 0, 0, 0, NULL),
(34780, 34813, 0, 0, 0, 60000, 0, 0, 0, 60000, 0, 0, 0, 0, 0, 0, 0, 20.0, 60.0, 0, 0, 0, 0, 10, 0, 0, 0, NULL);

-- NPC Legion flame
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34784, 66199, 68127, 68126, 68128, 30000, 30000, 30000, 30000, 45000, 45000, 45000, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL);

-- Gormok
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34796, 34800, 0, 0, 0, 30000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 20.0, 80.0, 0, 0, 0, 0, 9, 0, 0, 0, NULL),
(34796, 66331, 67477, 67478, 67479, 8000, 0, 0, 0, 15000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34796, 66636, 0, 0, 0, 15000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1, 0, NULL),
(34796, 67648, 0, 0, 0, 15000, 0, 0, 0, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- Icehowl
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34797, 66683, 67660, 67661, 67662, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34797, 66689, 67650, 67651, 67652, 25000, 25000, 25000, 25000, 40000, 40000, 40000, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34797, 66734, 0, 0, 0, 4000, 4000, 3000, 3000, 4000, 4000, 3000, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34797, 66770, 67654, 67655, 67656, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(34797, 66758, 0, 0, 0, 15000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34797, 68667, 0, 0, 0, 8000, 0, 0, 0, 8000, 0, 0, 0, 0, 0, 0, 0, 200.0, 0, 0, 0, 0, 0, 12, 0, 1, 0, NULL),
(34797, 66759, 0, 0, 0, 300000, 0, 0, 0, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34797, 67345, 67663, 67664, 67665, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL);

-- Dreadscale
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34799, 53421, 0, 0, 0, 40000, 0, 0, 0, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34799, 66794, 67644, 67645, 67646, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34799, 66796, 67632, 67633, 67634, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34799, 66821, 66821, 66821, 66821, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34799, 66879, 67624, 67625, 67626, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34799, 66902, 67627, 67628, 67629, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(34799, 66883, 67641, 67642, 67643, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(34799, 35176, 0, 0, 0, 30000, 30000, 45000, 60000, 30000, 30000, 45000, 60000, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 11, 0, 0, 0, NULL),
(34799, 68335, 68335, 68335, 68335, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- Snobold vassal
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34800, 66313, 0, 0, 0, 10000, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34800, 66317, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34800, 66318, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(34800, 66406, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 1, 0, NULL),
(34800, 66407, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(34800, 66408, 0, 0, 0, 10000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(34800, 66636, 0, 0, 0, 15000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 1, 0, NULL);

-- Infernal volcano
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34813, 66255, 0, 0, 0, 30000, 0, 0, 0, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(34813, 66258, 0, 0, 0, 20000, 0, 0, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, NULL);

-- Fel infernal
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34815, 66494, 66494, 66494, 66494, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34815, 67047, 67047, 67047, 67047, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- Mistress of pain
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(34826, 66316, 66316, 66316, 66316, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(34826, 67098, 67098, 67098, 67098, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL);

-- Acidmaw
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(35144, 53421, 0, 0, 0, 40000, 0, 0, 0, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, NULL),
(35144, 66794, 67644, 67645, 67646, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(35144, 66819, 66819, 66819, 66819, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(35144, 66824, 67612, 67613, 67614, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, NULL),
(35144, 66880, 67606, 67607, 67608, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(35144, 66901, 67615, 67616, 66617, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL),
(35144, 66883, 67641, 67642, 67643, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL),
(35144, 35176, 0, 0, 0, 30000, 30000, 45000, 60000, 30000, 30000, 45000, 60000, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 11, 0, 0, 0, NULL),
(35144, 68335, 68335, 68335, 68335, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- Slime pool
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMin_N25`, `timerMin_H10`, `timerMin_H25`, `timerMax_N10`, `timerMax_N25`, `timerMax_H10`, `timerMax_H25`, `data1`, `data2`, `data3`, `data4`, `locData_x`, `locData_y`, `locData_z`, `varData`, `StageMask_N`, `StageMask_H`, `CastType`, `isVisualEffect`, `isBugged`, `textEntry`, `comment`) VALUES
(35176, 66881, 67638, 67639, 67640, 20000, 20000, 20000, 20000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL),
(35176, 66883, 67641, 67642, 67643, 15000, 15000, 15000, 15000, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(35176, 66882, 0, 0, 0, 500, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- Retro Paladins
DELETE FROM `boss_spell_table` WHERE `entry` IN (34471,34456);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34471, 66011, 0, 180000, 180000, 3),
(34471, 66003, 0, 6000, 18000, 3),
(34471, 66010, 0, 0, 3600001, 1),
(34471, 66006, 0, 10000, 10000, 3),
(34471, 66007, 0, 40000, 40000, 3),
(34471, 66009, 0, 300000, 300000, 1),
(34471, 66005, 68018, 8000, 15000, 3),
(34471, 66008, 0, 60000, 60000, 4),
(34471, 66004, 68021, 10000, 15000, 1);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34456, 66011, 0, 180000, 180000, 3),
(34456, 66003, 0, 6000, 18000, 3),
(34456, 66010, 0, 0, 3600001, 1),
(34456, 66006, 0, 10000, 10000, 3),
(34456, 66007, 0, 40000, 40000, 3),
(34456, 66009, 0, 300000, 300000, 1),
(34456, 66005, 68018, 8000, 15000, 3),
(34456, 66008, 0, 60000, 60000, 4),
(34456, 66004, 68021, 10000, 15000, 1);

-- Pet's
DELETE FROM `boss_spell_table` WHERE `entry` IN (35465,35610);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(35465, 67518, 0, 15000, 30000, 3),
(35465, 67519, 0, 15000, 30000, 3);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_N25`, `spellID_H10`, `spellID_H25`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(35610, 67793, 67980, 67981, 67982, 5000, 10000, 3);

-- Druids
DELETE FROM `boss_spell_table` WHERE `entry` IN (34460,34451);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34460, 66093, 67957, 5000, 15000, 14),
(34460, 66066, 67965, 10000, 20000, 14),
(34460, 66067, 67968, 10000, 20000, 14),
(34460, 66065, 67971, 10000, 20000, 14),
(34460, 66086, 67974, 40000, 90000, 1),
(34460, 65860, 0, 45000, 90000, 1),
(34460, 66068, 0, 15000, 30000, 6),
(34460, 66071, 0, 40000, 80000, 1);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34451, 66093, 67957, 10000, 20000, 14),
(34451, 66066, 67965, 10000, 20000, 14),
(34451, 66067, 67968, 10000, 20000, 14),
(34451, 66065, 67971, 10000, 20000, 14),
(34451, 66086, 67974, 40000, 90000, 1),
(34451, 65860, 0, 45000, 90000, 1),
(34451, 66068, 0, 15000, 30000, 6),
(34451, 66071, 0, 40000, 80000, 1);

-- Warriors
DELETE FROM `boss_spell_table` WHERE `entry` IN (34475,34453);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34475, 65947, 0, 20000, 30000, 1),
(34475, 65930, 0, 10000, 60000, 3),
(34475, 65926, 0, 6000, 25000, 3),
(34475, 68764, 0, 3000, 25000, 3),
(34475, 65935, 0, 20000, 80000, 3),
(34475, 65924, 0, 30000, 90000, 1),
(34475, 65936, 0, 5000, 25000, 3),
(34475, 65940, 0, 10000, 25000, 3),
(34475, 65932, 0, 30000, 60000, 1);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34453, 65947, 0, 20000, 30000, 1),
(34453, 65930, 0, 10000, 60000, 3),
(34453, 65926, 0, 6000, 25000, 3),
(34453, 68764, 0, 3000, 25000, 3),
(34453, 65935, 0, 20000, 80000, 3),
(34453, 65924, 0, 30000, 90000, 1),
(34453, 65936, 0, 5000, 25000, 3),
(34453, 65940, 0, 10000, 25000, 3),
(34453, 65932, 0, 30000, 60000, 1);

-- Mage
DELETE FROM `boss_spell_table` WHERE `entry` IN (34468,34449);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34468, 65799, 67995, 3000, 10000, 3),
(34468, 65791, 67998, 5000, 15000, 3),
(34468, 65800, 68001, 5000, 15000, 3),
(34468, 65793, 0, 7000, 25000, 1),
(34468, 65807, 68004, 5000, 15000, 4),
(34468, 65790, 0, 5000, 15000, 6),
(34468, 65792, 0, 7000, 15000, 1),
(34468, 65802, 0, 0, 3600001, 1),
(34468, 65801, 0, 15000, 40000, 4);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34449, 65799, 67995, 3000, 10000, 3),
(34449, 65791, 67998, 5000, 15000, 3),
(34449, 65800, 68001, 5000, 15000, 3),
(34449, 65793, 0, 7000, 25000, 1),
(34449, 65807, 68004, 5000, 15000, 4),
(34449, 65790, 0, 5000, 15000, 6),
(34449, 65792, 0, 7000, 15000, 1),
(34449, 65802, 0, 0, 3600001, 1),
(34449, 65801, 0, 15000, 40000, 4);

-- Shaman
DELETE FROM `boss_spell_table` WHERE `entry` IN (34463,34455);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34463, 66055, 68115, 5000, 15000, 14),
(34463, 66053, 68118, 5000, 15000, 14),
(34463, 66056, 0, 5000, 15000, 14),
(34463, 65983, 0, 30000, 60000, 1),
(34463, 65980, 0, 5000, 15000, 6),
(34463, 66054, 0, 10000, 40000, 4),
(34463, 66063, 0, 5000, 15000, 14),
(34463, 65973, 68100, 5000, 15000, 4);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34455, 66055, 68115, 5000, 15000, 14),
(34455, 66053, 68118, 5000, 15000, 14),
(34455, 66056, 0, 5000, 15000, 14),
(34455, 65983, 0, 30000, 60000, 1),
(34455, 65980, 0, 5000, 15000, 6),
(34455, 66054, 0, 10000, 40000, 4),
(34455, 66063, 0, 5000, 15000, 14),
(34455, 65973, 68100, 5000, 15000, 4);

-- Enh shaman
DELETE FROM `boss_spell_table` WHERE `entry` IN (34470,34444);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34470, 65973, 0, 5000, 8000, 4),
(34470, 65974, 0, 5000, 8000, 3),
(34470, 65983, 0, 25000, 600000, 1),
(34470, 65970, 0, 5000, 90000, 3);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34444, 65973, 0, 5000, 8000, 4),
(34444, 65974, 0, 5000, 8000, 3),
(34444, 65983, 0, 25000, 600000, 1),
(34444, 65970, 0, 5000, 90000, 3);

-- Hunter
DELETE FROM `boss_spell_table` WHERE `entry` IN (34467,34448);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34467, 65583, 67978, 3000, 8000, 3),
(34467, 65871, 0, 20000, 120000, 1),
(34467, 65869, 0, 12000, 20000, 1),
(34467, 65866, 67984, 3000, 8000, 3),
(34467, 65880, 0, 12000, 30000, 1),
(34467, 65868, 67989, 4000, 8000, 3),
(34467, 65867, 0, 4000, 8000, 3),
(34467, 66207, 0, 4000, 8000, 3),
(34467, 65877, 0, 7000, 60000, 4);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34448, 65583, 67978, 3000, 8000, 3),
(34448, 65871, 0, 20000, 120000, 1),
(34448, 65869, 0, 12000, 20000, 1),
(34448, 65866, 67984, 3000, 8000, 3),
(34448, 65880, 0, 12000, 30000, 1),
(34448, 65868, 67989, 4000, 8000, 3),
(34448, 65867, 0, 4000, 8000, 3),
(34448, 66207, 0, 4000, 8000, 3),
(34448, 65877, 0, 7000, 60000, 4);

-- Rogue
DELETE FROM `boss_spell_table` WHERE `entry` IN (34472,34454);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34472, 65955, 0, 8000, 10000, 3),
(34472, 65956, 0, 12000, 120000, 1),
(34472, 65960, 0, 7000, 8000, 6),
(34472, 65961, 0, 20000, 120000, 1),
(34472, 66178, 0, 10000, 8000, 3),
(34472, 65954, 0, 5000, 8000, 3),
(34472, 65957, 68095, 15000, 20000, 3);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34454, 65955, 0, 8000, 10000, 3),
(34454, 65956, 0, 12000, 120000, 1),
(34454, 65960, 0, 7000, 8000, 6),
(34454, 65961, 0, 20000, 120000, 1),
(34454, 66178, 0, 10000, 8000, 3),
(34454, 65954, 0, 5000, 8000, 3),
(34454, 65957, 68095, 15000, 20000, 3);

-- Priest
DELETE FROM `boss_spell_table` WHERE `entry` IN (34466,34456);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34466, 66177, 68035, 3000, 8000, 14),
(34466, 66099, 68032, 3000, 8000, 14),
(34466, 66104, 68023, 3000, 8000, 14),
(34466, 66100, 68026, 3000, 8000, 4),
(34466, 65546, 0, 3000, 8000, 6),
(34466, 65543, 0, 5000, 25000, 1);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34456, 66177, 68035, 3000, 8000, 14),
(34456, 66099, 68032, 3000, 8000, 14),
(34456, 66104, 68023, 3000, 8000, 14),
(34456, 66100, 68026, 3000, 8000, 4),
(34456, 65546, 0, 3000, 8000, 6),
(34456, 65543, 0, 5000, 25000, 1);

-- Shadow priest
DELETE FROM `boss_spell_table` WHERE `entry` IN (34473,34441);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34473, 65542, 0, 8000, 15000, 6),
(34473, 65490, 68091, 3000, 8000, 4),
(34473, 65541, 68088, 3000, 8000, 4),
(34473, 65488, 68042, 3000, 8000, 3),
(34473, 65492, 68038, 3000, 8000, 3),
(34473, 65545, 0, 3000, 8000, 3),
(34473, 65544, 0, 1000, 180000, 1),
(34473, 65546, 0, 3000, 8000, 4),
(34473, 65543, 0, 8000, 24000, 1),
(34473, 16592, 0, 3000, 8000, 1);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34441, 65542, 0, 8000, 15000, 6),
(34441, 65490, 68091, 3000, 8000, 4),
(34441, 65541, 68088, 3000, 8000, 4),
(34441, 65488, 68042, 3000, 8000, 3),
(34441, 65492, 68038, 3000, 8000, 3),
(34441, 65545, 0, 3000, 8000, 3),
(34441, 65544, 0, 1000, 180000, 1),
(34441, 65546, 0, 3000, 8000, 4),
(34441, 65543, 0, 8000, 24000, 1),
(34441, 16592, 0, 3000, 8000, 1);

-- Death knight
DELETE FROM `boss_spell_table` WHERE `entry` IN (34461,34458);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34461, 66020, 0, 5000, 15000, 3),
(34461, 66019, 67930, 5000, 15000, 3),
(34461, 66017, 0, 5000, 15000, 3),
(34461, 66047, 67936, 5000, 15000, 3),
(34461, 66023, 0, 5000, 90000, 1),
(34461, 66021, 67939, 8000, 12000, 3),
(34461, 66018, 0, 10000, 90000, 6);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34458, 66020, 0, 5000, 15000, 3),
(34458, 66019, 67930, 5000, 15000, 3),
(34458, 66017, 0, 5000, 15000, 3),
(34458, 66047, 67936, 5000, 15000, 3),
(34458, 66023, 0, 5000, 90000, 1),
(34458, 66021, 67939, 8000, 12000, 3),
(34458, 66018, 0, 10000, 90000, 6);

-- Paladin
DELETE FROM `boss_spell_table` WHERE `entry` IN (34465,34445);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34465, 68757, 0, 25000, 40000, 6),
(34465, 66010, 0, 0, 3600001, 14),
(34465, 66116, 0, 5000, 15000, 14),
(34465, 66113, 68008, 5000, 10000, 14),
(34465, 66112, 68011, 5000, 15000, 14),
(34465, 66009, 0, 0, 3600001, 6),
(34465, 66114, 68015, 6000, 15000, 14),
(34465, 66613, 0, 5000, 15000, 4);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34445, 68757, 0, 25000, 40000, 6),
(34445, 66010, 0, 0, 3600001, 14),
(34445, 66116, 0, 5000, 15000, 14),
(34445, 66113, 68008, 5000, 10000, 14),
(34445, 66112, 68011, 5000, 15000, 14),
(34445, 66009, 0, 0, 3600001, 6),
(34445, 66114, 68015, 6000, 15000, 14),
(34445, 66613, 0, 5000, 15000, 4);

-- Boomkin (druid in moonkin form)
DELETE FROM `boss_spell_table` WHERE `entry` IN (34469,34459);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34469, 65859, 0, 5000, 40000, 4),
(34469, 65857, 0, 5000, 40000, 3),
(34469, 65863, 0, 10000, 40000, 4),
(34469, 65861, 0, 25000, 40000, 3),
(34469, 65855, 67942, 25000, 40000, 4),
(34469, 65856, 67945, 5000, 40000, 3),
(34469, 65854, 67948, 25000, 40000, 3),
(34469, 65860, 0, 5000, 120000, 1),
(34469, 65862, 67952, 25000, 40000, 3);

-- Warlock
DELETE FROM `boss_spell_table` WHERE `entry` IN (34474,34450);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34474, 65816, 68146, 15000, 30000, 1),
(34474, 65810, 68134, 15000, 30000, 4),
(34474, 65814, 68137, 15000, 30000, 4),
(34474, 65815, 0, 15000, 30000, 4),
(34474, 65809, 0, 4000, 15000, 4),
(34474, 65819, 68149, 15000, 30000, 3),
(34474, 65821, 68152, 3000, 10000, 3),
(34474, 65812, 68155, 2000, 10000, 4);
INSERT INTO `boss_spell_table` (`entry`, `spellID_N10`, `spellID_H10`, `timerMin_N10`, `timerMax_N10`, `CastType`) VALUES
(34450, 65816, 68146, 15000, 30000, 1),
(34450, 65810, 68134, 15000, 30000, 4),
(34450, 65814, 68137, 15000, 30000, 4),
(34450, 65815, 0, 15000, 30000, 4),
(34450, 65809, 0, 4000, 15000, 4),
(34450, 65819, 68149, 15000, 30000, 3),
(34450, 65821, 68152, 3000, 10000, 3),
(34450, 65812, 68155, 2000, 10000, 4);

DELETE FROM `script_texts` WHERE `entry` IN
('-1712001','-1712002','-1712003','-1712004','-1712005','-1712006','-1712007','-1712008');

INSERT IGNORE INTO `script_texts` 
(`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) 
VALUES 
('-1712001', 'Soft meat! Come to me!', 'Soft meat! Come to me!', NULL, NULL, NULL, NULL, NULL, NULL, '?????? ??????! ????????!', '0', '0', '0', '0', NULL),
('-1712002', 'Get it!', 'Get it!', NULL, NULL, NULL, NULL, NULL, NULL, '???? ??????!', '0', '0', '0', '0', NULL),
('-1712003', 'Into the ice!', 'Into the ice!', NULL, NULL, NULL, NULL, NULL, NULL, '???? ????????!', '0', '0', '0', '0', NULL),
('-1712004', 'Stone curse!', 'Stone curse!', NULL, NULL, NULL, NULL, NULL, NULL, '????????!', '0', '0', '0', '0', NULL),
('-1712005', 'Gr-r-r-r!', 'Gr-r-r-r!', NULL, NULL, NULL, NULL, NULL, NULL, '??, ??? ? ???!', '0', '0', '0', '0', NULL),
('-1712006', 'It is cool!', 'It is cool!', NULL, NULL, NULL, NULL, NULL, NULL, '???, ?????', '0', '0', '0', '0', NULL),
('-1712007', 'O, no...', 'O, no...', NULL, NULL, NULL, NULL, NULL, NULL, '?? ????? ????...', '0', '0', '0', '0', NULL),
('-1712008', 'Enrage!', 'Enrage!', NULL, NULL, NULL, NULL, NULL, NULL, '?? ???, ?? ???? ???????...', '0', '0', '0', '0', NULL);

DELETE FROM script_texts WHERE entry BETWEEN -1603017 AND -1603000;
INSERT INTO script_texts VALUES
(-1603000, "New toys? For me? I promise I won't break them this time!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15724, 1, 0, 0, "XT-002 Aggro"),
(-1603001, "NO! NO! NO! NO! NO!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15727, 1, 0, 0, "XT-002 Tympanic Tantrum"),
(-1603002, "I... I think I broke it.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15728, 1, 0, 0, "XT-002 Slay 1"),
(-1603003, "I guess it doesn't bend that way.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15729, 1, 0, 0, "XT-002 Slay 2"),
(-1603004, "So tired. I will rest for just a moment!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15725, 1, 0, 0, "XT-002 Heart Opened"),
(-1603005, "I'm ready to play!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15726, 1, 0, 0, "XT-002 Heart Closed"),
(-1603006, "Time for a new game! My old toys will fight my new toys!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15732, 1, 0, 0, "XT-002 Adds"),
(-1603007, "I'm tired of these toys. I don't want to play anymore!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15730, 1, 0, 0, "XT-002 Berserk"),
(-1603008, "You are bad... Toys... Very... Baaaaad!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15731, 1, 0, 0, "XT-002 Death"),
(-1603009, "Hostile entities detected. Threat assessment protocol active. Primary target engaged. Time minus thirty seconds to re-evaluation.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15506, 1, 0, 0, "Flame Leviathan Aggro"),
(-1603010, "Total systems failure. Defense protocols breached. Leviathan Unit shutting down.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15520, 1, 0, 0, "Flame Leviathan Death"),
(-1603011, "Threat assessment routine modified. Current target threat level: zero. Acquiring new target.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15521, 1, 0, 0, "Flame Leviathan Slay"),
(-1603012, "You will suffer for this trespass!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15552, 1, 0, 0, "Hodir Aggro"),
(-1603013, "I... I am released from his grasp... at last.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15557, 1, 0, 0, "Hodir Death"),
(-1603014, "Tragic. To come so far, only to fail.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15553, 1, 0, 0, "Hodir Slay 1"),
(-1603015, "Welcome to the endless winter.", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15554, 1, 0, 0, "Hodir Slay 2"),
(-1603016, "Winds of the north consume you!", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15555, 1, 0, 0, "Hodir Flash Freeze"),
(-1603017, "<Furious Roar>", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15556, 1, 0, 0, "Hodir Frozen Blows");

DELETE FROM script_texts WHERE entry in (-1600020, -1600021);
INSERT INTO script_texts (`entry`,`content_default`,`sound`,`type`,`language`,`comment`) values
('-1600020','King Dred raises his talon menacingly!','0','5','0','King Dred Talon'),
('-1600021','King Dred calls for a raptor!','0','5','0','King Dred Call for Raptor');

DELETE FROM `script_texts` WHERE `comment` = 26499;
DELETE FROM `script_texts` WHERE `entry` IN ('-1594071','-1594072','-1594073','-1594074','-1594075','-1594076','-1594077','-1594078','-1594079','-1594080','-1594081','-1594082','-1594083');
DELETE FROM `script_texts` WHERE `entry` IN ('-1594084','-1594085','-1594086','-1594087','-1594088,','-1594089','-1594090','-1594091','-1594092','-1594093','-1594094','-1594095','-1594096');
DELETE FROM `script_texts` WHERE `entry` IN ('-1594097','-1594098','-1594099','-1594100','-1594101','-1594102','-1594103','-1594104','-1594105','-1594106','-1594107','-1594108','-1594109');
DELETE FROM `script_texts` WHERE `entry` IN ('-1594110','-1594111','-1594112','-1594113','-1594114','-1594115','-1594116','-1594117','-1594118','-1594119','-1594120','-1594121','-1594122');
DELETE FROM `script_texts` WHERE `entry` IN ('-1594123','-1594124','-1594125','-1594126','-1594127','-1594128','-1594129','-1594130','-1594131','-1594132','-1594133','-1594134','-1594135');
DELETE FROM `script_texts` WHERE `entry` IN ('-1594136','-1594137','-1594138','-1594139','-1594140','-1594141','-1594142','-1594143','-1594144','-1594145','-1594146','-1594147','-1594148');
DELETE FROM `script_texts` WHERE `entry` IN ('-1594149','-1594150','-1594151','-1594152','-1594153','-1594154','-1594155','-1594156','-1594157','-1594158','-1594159','-1594160','-1594161');
DELETE FROM `script_texts` WHERE `entry` IN ('-1594162','-1594163','-1594164','-1594165','-1594166','-1594167','-1594168','-1594169','-1594170','-1594171','-1594172','-1594173','-1594174');
DELETE FROM `script_texts` WHERE `entry` IN ('-1594175','-1594176');

INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1594071, 'I\'m glad you could make it! Uther.','? ???, ??? ?? ??????! ????.', 12828,0,0,1, '26499'),
(-1594072, 'Watch your tone, Boy. You may be the prince, but I\'m still your superrior as a paladin.','????? ?? ????? ?????, ?????. ???? ?? ? ?????, ?? ??? ??????? ?? ??? ??? ?????????? ??? ???? ?????????????.', 12839,0,0,25, '26499'),
(-1594073, 'As I could forget. Listen Uther, There is somthing about the plague you should know.','??? ????? ? ?? ?????. ???????? ???? ? ?????? ?????????? ???? ??? ??? ??? ????.',12829,0,0,0, '26499'),
(-1594074, 'Oh no ... We are too late ... These people have ben infected. They may look fine now, but this is just mater of time before they will turn into the undead.','? ???... ?? ????????... ??? ??? ???? ???????? ?????. ?????? ??? ??? ?? ???????, ?? ????? ??? ??? ?????????? ? ??????.', 12830,0,0,1, '26499'),
(-1594075, 'What?','????', 12840,0,0,5, '26499'),
(-1594076, 'This entire city must be purged.','???? ????? ?????? ???? ??????.', 12831,0,0,1, '26499'),
(-1594077, 'How can you even consider that? There got be some other way?','??? ?? ??? ???? ???????? ?? ????? ?????? ???? ????? ?? ?????? ?????', 12841,0,0,1, '26499'),
(-1594078, 'Damn it Uther! As your future king, I order you to purge this city.','????????? ????! ??? ??????? ?????? ? ?????????? ???? ???????? ???? ?????.',12832,1,0,5, '26499'),
(-1594079, 'You are not my king yet boy.You know I whould obey that command ,even if you were!','???? ?? ??? ?? ?????? ?????. ?? ???? ?????? ? ?? ???????? ?? ???? ?? ???? ?????? ???????!',12842,1,0,22, '26499'),
(-1594080, 'Then I consider this as an act of treason.','????? ? ???? ??????????? ??? ??? ??????.', 12833,0,0,0, '26499'),
(-1594081, 'Treason? You lost your mind Arthas?','??????? ?? ?????? ??????? ???????? ??????', 12843,0,0,5, '26499'),
(-1594082, 'Have I? Lord Uther. By my right of succession and suvenerity of my crown, I\'m here to releave you from command, and susspend your paladins from the service.','???????? ???? ????. ??????? ?????? ??? ?? ????? ????????????, ? ????????? ??? ?? ????????????, ? ?????????? ?? ?????? ????? ?????????.', 12834,0,0,1, '26499'),
(-1594083, 'Arthas? You can not just ...','?????? ?? ?? ?????? ??? ??????...', 12837,0,0,1, '26499'),
(-1594084, 'It\'s done! Those of you who have will to save this land follow me!, the rest of you get out of my sight.!','??? ??? ???????! ?? ?? ???, ??? ????????????? ????? ?????? ??? ????? - ?? ????, ????????? ????? ? ???? ????.', 12835,0,0,0, '26499'),
(-1594085, 'You have crossed terible treshold, Arthas.','?? ??????? ??????? ?????, ?????.', 12844,0,0,25, '26499'),
(-1594086, 'Jaina?','???????', 12836,0,0,1, '26499'),
(-1594087, 'I\'m sorry,Arthas , I can\'t watch you do this.','?????? ?????, ?? ? ?? ???? ???????? ?? ???.', 12838,0,0,1, '26499'),
(-1594088, 'Take position here, I\'ll will lead a small force in stratholm and start the culling. We must contain and purge the infected people for the sake all of Lordaeron.','?????????? ??????? ???, ? ? ???? ?????? ????????? ????? ? ?????????? ? ????? ????????. ?? ?????? ??????????? ? ?????????? ?????????? ??????? ???? ????? ??????????.', 14327,0,0,1, '26499'),
(-1594089, 'Everyone looks ready! Remember these people are all infected with the plague, and they will die soon. We need to purge Stratholm and protect the remain of Lordaeron from the Scourge. Let\'s go.','?????? ??? ??????! ??????? ??? ???? ???????? ????? ? ????? ?????. ?? ?????? ???????? ?????????? ? ???????? ????????? ?? ?????. ??????.', 14293,0,0,1, '26499'),
(-1594090, 'Greetings to you my lord. How we can help?','??????????? ??? ??????. ??? ?? ?????? ???????', 0,0,0,1, '26499'),
(-1594091, 'I can help you, only with a clean death.','? ???? ?????? ??? ???? ??????? ???????.', 14294,0,0,0, '26499'),
(-1594092, 'Help our prince has gone mad ...','???????? ??? ????? ????? ? ???...', 0,0,0,0, '26499'),
(-1594093, 'This is only the beginning ..','??? ?????? ??????...', 14295,0,0,1, '26499'),
(-1594094, 'Yes. This is the beginning! I have ben waiting for you young Prince. Ahh, I\'m Mal\'Ganis.','??. ??? ??????! ? ???? ???? ????? ?????. ? ????????.', 14410,0,0,1, '26499'),
(-1594095, 'As you can see your people are now my people.I will now turn the city Household by household, Until the flame of life has ben snufed out ,forever ..','??? ??????, ???? ???? ?????? ??????????? ???. ??? ?? ????? ? ???????? ???? ????? ? ????? ????? ??????? ????? ????????...',14411,0,0,1, '26499'),
(-1594096, 'I won\'t allow it Mal\'Ganis. Beter these people die by my hand, than they become your slaves and serv you after death.','? ?? ?????? ????? ????????. ????? ??? ???? ???????? ?? ???? ????, ??? ?????? ?????? ?????? ????? ??????.',14296,0,0,5, '26499'),
(-1594097, 'Mal\'Ganis will send some of his scourge minions to interfer with us. Those with you with strong stell and magic should go forward and destroy them. I will lead the remaining forces for purging stratholme of the infected.','???????? ???????? ????? ???????????? ?? ????? ????????? ???. ??????? ????? ? ???? ???????? ? ????????? ??????. ? ????????? ?????????? ?????? ? ???? ???????? ??????????? ?? ??????.',14885,0,0,1, '26499'),
(-1594098, 'Champions meet me at the Town Hall at once. We must take the fight with Mal\'Ganis !','????? ????????? ?c???????? ? ????????? ??????. ?? ?????? ????????? ? ?????????? ?? ??? ??????????!',14297,0,0,1, '26499'),
(-1594099, 'Follow me, I know the way through.','????? ?? ????, ? ???? ??????.',14298,0,0,1, '26499'),
(-1594100, 'Calm citizens. Everything is normal. To go home ... Aaaaaa ... What is it?','??????????? ????????. ??? ?????????. ??????????? ?? ?????... ??????... ??? ????',0,0,0,1, '26499'),
(-1594101, 'Help...','????????...',0,0,0,0, '26499'),
(-1594102, 'Prince Arthas, what are you doing?','????? ?????, ??? ?? ????????',0,0,0,0, '26499'),
(-1594103, 'Nenad ... You our prince, you\'re a defender of Lordaeron ....','?? ????! ?? ?? ??? ?????, ?? ?? ???????? ??????????...',0,0,0,0, '26499'),
(-1594104, 'Paschady Milord ...','??????, ??????!',0,0,0,0, '26499'),
(-1594105, 'What we have done to you?','??? ?? ??? ????????',0,0,0,0, '26499'),
(-1594106, '<Lament>','<????>',9676,0,0,18, '26499'),
(-1594107, 'Royal troops attacked us, who can escape ...','??????????? ?????? ?????? ?? ???, ???????? ??? ?????...',0,1,0,0, '26499'),
(-1594108, 'What have you done? What is happening here?','??? ?? ????????? ??? ????? ???????????',0,0,0,0, '26499'),
(-1594109, 'For what?','?? ????',0,0,0,0, '26499'),
(-1594110, 'Let\'s play?',13428,'?????????',0,0,0, '26499'),
(-1594111, 'New toys.','????? ???????.',13429,1,0,0, '26499'),
(-1594112, 'This ... Not ... Fun ...','???... ??... ??????...',13433,1,0,0, '26499'),
(-1594113, 'Boring ...','??????...',13430,1,0,0, '26499'),
(-1594114, 'Why do not you move?','?????? ?? ?? ??????',13431,1,0,0, '26499'),
(-1594115, 'Come on, I did not finish ...','??????? ? ?? ????????...',13432,1,0,0, '26499'),
(-1594116, 'Prince Arthas Menethil, On this day, a powerful darknes has taken hold of your soul. The death that you had destined on others by visiting others,On this day will be your own.','????? ????? ???????, ? ???? ????? ???? ?????????????? ??? ????????? ???? ????. ?????? ??????? ?? ?????? ??? ???????? ??????, ??????? ?????? ?? ?????.',13408,0,0,0, '26499'),
(-1594117, 'I\'m doing what i have to , to save Lordaeron niether your words or actions will stop me.','? ????? ??? ?????????? ??, ??? ??????, ? ??????? ????? ? ???????? ???? ?? ?????????.',14309,0,0,5, '26499'),
(-1594118, 'We\'ll see about that young prince ...','?? ??? ?, ?????????, ???? ?????...',13409,0,0,0, '26499'),
(-1594119, '???????? ......','????????......',13416,0,0,0, '26499'),
(-1594120, 'You have no future ...','? ???? ??? ????????...',13413,1,0,0, '26499'),
(-1594121, 'The hour of our greatest triumph ..','?????? ??? ?????? ??????????? ???????...',13414,1,0,0, '26499'),
(-1594122, 'You were destined to be defeated ...','???? ???? ??????? ????????? ?????????...',13415,1,0,0, '26499'),
(-1594123, 'Tic,tac,tic,tac...','??? - ???... ??? - ???...',13410,1,0,0, '26499'),
(-1594124, 'Too slow ...','??????? ????????...',13411,1,0,0, '26499'),
(-1594125, 'It\'s time to end ...','???? ???????????...',13412,1,0,0, '26499'),
(-1594126, 'Do not touch me ...','?? ???????? ????...',0,1,0,0, '26499'),
(-1594127, 'You are a monster, not the prince ...','?? ????????, ? ?? ?????...',0,1,0,0, '26499'),
(-1594128, 'Run .....','?????...',0,1,0,0, '26499'),
(-1594129, 'Remarcable late heroes of Lordaeron! It\'s time the dead ...','C?????? ??????, ????? ??????????! ?????? ????? ???????...',0,1,0,0, '26499'),
(-1594130, 'Aaaaaa fun ....','?????? ???????????...',0,1,0,0, '26499'),
(-1594131, 'You are just a part of the master plan ...','?? ????? ???? ????? ????? ???????...',0,1,0,0, '26499'),
(-1594132, 'The fun is just beginning!','??????? ?????? ??????????!',0,1,0,0, '26499'),
(-1594133, 'Aaaa quality material ...','???? ???????????? ????????...',0,1,0,0, '26499'),
(-1594134, 'Do not worry I\'ll find where you adapt ...','?? ????????, ? ????? ???? ???? ????????????...',0,1,0,0, '26499'),
(-1594135, 'I need a sample!','??? ????? ???????!',0,1,0,0, '26499'),
(-1594136, 'So much power ... It will be my ....','??????? ????... ??? ????? ????...',0,1,0,0, '26499'),
(-1594137, 'Your flesh attached to you!','???? ????? ??????? ????!',0,1,0,0, '26499'),
(-1594138, 'Familiarize yourself with my friends ...','???????????? ? ????? ????????...',0,1,0,0, '26499'),
(-1594139, 'Living Stratholm Meet your savior ...','?????? ???????????, ?????????? ????? ??????????...',0,1,0,0, '26499'),
(-1594140, 'Boom ... Ha-ha-ha-ha ...','???... ??-??-??-??...',0,1,0,0, '26499'),
(-1594141, 'Blood ... Destruction ... Marvelous ...','?????... ??????????... ?????????????...',0,1,0,0, '26499'),
(-1594142, 'Yes! I am glad that I could get you through before the plague!','??! ? ???, ??? ? ???? ????????? ???? ?????? ????!',14299,0,0,1, '26499'),
(-1594143, 'What is this sorrcery?','??? ??? ?? ???????????',14300,0,0,0, '26499'),
(-1594144, 'Mal\'Ganis it apers to have more thans scourge on his arsenal.We should do haste.','???????, ??? ? ????????? ? ???????????? ???? ??? ??? ??? ????? ?????. ??????? ????????.',14301,0,0,0, '26499'),
(-1594145, 'Again, that sorrcery, be prepared for anything.','????? ?????? ?????. ?????? ?????? ?? ?????.',14302,0,0,0, '26499'),
(-1594146, 'Let\'s move on!.','???? ??????.',14303,0,0,0, '26499'),
(-1594147, 'Watch your backs they surrounded Us in this hole...','?????? ?????? ??c ???????? ? ???? ????...',14304,0,0,0, '26499'),
(-1594148, 'Mal\'Ganis is not making this easy ...','???????? ?? ?????????? ????????? ??? ?????...',14305,0,0,0, '26499'),
(-1594149, 'They are very persistent','??? ??????.',14306,0,0,0, '26499'),
(-1594150, 'What\'s more, he put me on the way?','??? ??? ?? ???????? ? ???? ?? ?????',14307,0,0,0, '26499'),
(-1594151, 'The quickest way to Mal\'Ganis lays behind those bookshelf ahead','?????????? ???? ? ????????? ????????? ?? ??? ??????.',14308,0,0,0, '26499'),
(-1594152, 'This will take only a moment.','??? ?????? ?????? ?? ????? ???????.',14310,0,0,0, '26499'),
(-1594153, 'I\' relieved that secret passage still works!','????? ?????, ??? ???????? ??? ??? ????????!',14311,0,0,0, '26499'),
(-1594154, 'Let\'s go through this place as quick as possible. If the undead won\'t gonna kill us the fire might','??????? ??????? ???? ??????? ??? ????? ???????. ???? ?? ?? ???????? ?? ??????, ?? ????? ????????? ?? ????? ????.',14312,0,0,0, '26499'),
(-1594155, 'Rest a moment here clean your luns, but be ready we must go soon again.','?????????? ???????, ?? ?????? ????? - ??? ????? ????? ? ????.',14313,0,0,0, '26499'),
(-1594156, 'That\'s enough we have to move again , Mal\'Ganis awaits.','????? ???????, ???? ????. ???????? ????.',14314,0,0,0, '26499'),
(-1594157,'Atlast , some luck! it looks like that Market Row not go cut by the fire. Mal\'Ganis it\'s supoused to be in Crussaders of squire, which is just ahead. Tell me whe you\'re ready to move forward.','??????? ??? ???? ??? ?? ???????! ????? ??? ?? ???????? ?? ????????? ????. ???????? ?????? ???? ?? ??????? ???????, ??????? ????????? ?? ?????? ?? ????. ??????? ??? ??? ?????? ?????? ???? ??????.',14315,0,0,0, '26499'),
(-1594158, 'Yes, Justice will be done.','?? ????????? ??????????.',14316,0,0,0, '26499'),
(-1594159, 'It will be a worthy test of Prince Arthas!','??? ????? ????????? ????????? ????? ?????!',14413,1,0,0, '26499'),
(-1594160, 'Too easy ...','??????? ??????...',14416,1,0,0, '26499'),
(-1594161, 'The dark lord is not happy with your intervention ...','?????? ?????????? ?? ??????? ????? ??????????...',144107,1,0,0, '26499'),
(-1594162, 'I want Prince Arthas, not you ...','??? ????? ????? ?????, ? ?? ??...',14418,1,0,0, '26499'),
(-1594163, 'Anak Kiri ...','???? ????...',14422,1,0,0, '26499'),
(-1594164, 'My pressure will sweep away the forces of King - Lich ...','??? ?????? ?????? ???? ?????? - ????...',14423,1,0,0, '26499'),
(-1594165, 'Your death was in vain tiny mortal ...','???? ?????? ???? ????????, ?????????...',14424,1,0,0, '26499'),
(-1594166, 'Your time has came to an end ...','???? ????? ?????...',14425,1,0,0, '26499'),
(-1594167, 'Arrrrhhhh ... I spent too much time in this weak litle shell ...','?????????... ? ? ??? ?????? ??????? ????? ??????? ? ???? ?????? ????????...',14426,1,0,0, '26499'),
(-1594168, 'Earl Narath ... I Mal\'Ganis .... I am eternal ...','??? ?????... ? ????????.... ? ?????...',14427,1,0,0, '26499'),
(-1594169, 'You will never defeat the Lich - King without my forces! I will have my revenge on him , and you...','???? ??????? ?? ???????? ?????? - ???? ??? ???? ?????! ? ?????? ? ???? ? ???...',14429,1,0,0, '26499'),
(-1594170, 'We are going to finish this right now Mal\'Ganis. Just you and me ...','?? ???????? ? ???? ?????? ?? ????????. ???? ?? ????...',14317,0,0,0, '26499'),
(-1594171, 'Your journey just begins young prince. Gather your forces and and meet me at the arctic land of, Northrend! It is there, we\'ll we shall setup the score beetwen us, It is there where your true destiny will unfold.','???? ??????????? ?????????? ???? ?????. ??????? ???? ?????? ? ??????????? ? ??????? ?????? ??????, ????????! ??? ?? ?????? ??? ???? ????, ??? ?? ??????? ???? ??????.',14412,0,0,0, '26499'),
(-1594172, 'I will hunt you till the end of the earth if I have to... Did you heard me? To the end of erth!...','? ????? ???? ?? ???? ?????... ?? ??????? ????? ?? ???? ?????...',14318,1,0,5, '26499'),
(-1594173, 'You performed well on this day! Anything that Mal\'Ganis left behind is yours take it as your reward. Now I need to begin some plans for an expedition into Northrend.','?? ?????? ????????? ???????! ??? ??? ???????? ??????? ??? ???? ???????. ? ??? ????? ???????? ?????????? ? ?????????? ? ????????.',14319,0,0,5, '26499'),
(-1594174, 'Relax!','???????!',14414,1,0,0, '26499'),
(-1594175, 'You seam tired!','?? ????????? ???????!',14415,1,0,0, '26499'),
(-1594176, 'Enogh I have ben waisted my time here . I need to come by in my own world.','? ???? ??? ????? ??? ???? ?????. ??? ????? ????????? ?????? ? ???? ?????? ????.',14428,1,0,0, '26499');


DELETE FROM script_waypoint WHERE entry=26499;
INSERT INTO script_waypoint VALUES
   (26499, 0, 2099.876,1280.21,138.55, 0, 'WP1'),
   (26499, 1, 2120.757,1286.97,136.343, 0, 'Summon Zombie'),
   (26499, 2, 2165.073,1279.338,133.40, 18000, 'Battle for Boss 1'),
   (26499, 3, 2186.441,1234.445,136.524, 5000, 'Open The Gate 01'),
   (26499, 4, 2210.385,1207.550,136.259, 0, 'WP2'),
   (26499, 5, 2243.594,1177.705,137.144, 0, 'WP3'),
   (26499, 6, 2286.883,1177.262,137.631, 0, 'Summon Zombie and Meathook'),
   (26499, 7, 2320.374,1179.954,133.926, 0, 'WP4 Meathook Order'),
   (26499, 8, 2354.626,1192.099,130.535, 15000, 'Battle For Boss 2 and Summon Zombie'),
   (26499, 9, 2390.256,1204.235,134.125, 0, 'House WP1'),
   (26499, 10, 2442.023,1219.205,133.999, 0, 'House WP2'),
   (26499, 11, 2446.945,1192.559,149.076, 0, 'House WP3'),
   (26499, 12, 2431.264,1189.590,149.076, 0, 'House WP4'),
   (26499, 13, 2418.487,1196.059,148.076, 0, 'House WP5'),
   (26499, 14, 2401.221,1191.705,148.076, 0, 'House WP6'),
   (26499, 15, 2417.584,1121.026,148.082, 0, 'House WP7'),
   (26499, 16, 2426.099,1107.088,148.076, 0, 'House WP8 and Summon Boss 3'),
   (26499, 17, 2427.063,1107.298,148.076, 20000, 'House WP9 Cinematic'),
   (26499, 18, 2428.013,1107.508,148.076, 6000, 'House WP10 Arthas Dialog'),
   (26499, 19, 2444.682,1111.705,148.076, 15000, 'Battle For Boss 3'),
   (26499, 20, 2457.133,1120.941,150.008, 0, 'House WP11'),
   (26499, 21, 2459.694,1127.012,150.008, 0, 'House WP12'),
   (26499, 22, 2469.617,1122.274,150.008, 0, 'House WP13'),
   (26499, 23, 2470.437,1122.794,150.008, 3000, 'Open Shkaf'),
   (26499, 24, 2471.662,1123.077,150.035, 3000, 'Shkaf Dialog'),
   (26499, 25, 2483.183,1125.042,149.905, 0, 'Secret WP1'),
   (26499, 26, 2487.867,1099.760,144.858, 0, 'Secret WP2'),
   (26499, 27, 2498.270,1101.929,144.599, 0, 'Secret WP3'),
   (26499, 28, 2492.114,1128.238,139.967, 0, 'Secret WP4'),
   (26499, 29, 2500.286,1130.183,139.982, 0, 'Room WP1'),
   (26499, 30, 2503.010,1119.241,139.978, 0, 'Room WP2'),
   (26499, 31, 2517.820,1122.645,132.066, 0, 'Room WP3'),
   (26499, 32, 2540.479,1129.061,130.868, 7000, 'Fire Street WP1'),
   (26499, 33, 2568.619,1157.794,126.906, 0, 'Fire Street WP2'),
   (26499, 34, 2556.074,1222.058,125.412, 20000, 'Fire Street WP3'),
   (26499, 35, 2521.531,1295.209,130.573, 0, 'Fire Street WP4'),
   (26499, 36, 2504.362,1348.667,132.944, 0, 'Fire Street WP5'),
   (26499, 37, 2450.594,1431.544,131.361, 0, 'Fire Street WP6'),
   (26499, 38, 2353.485,1404.839,128.531, 0, 'Knights Street WP1'),
   (26499, 39, 2329.882,1406.273,128.013, 0, 'Knights Street WP2'),
   (26499, 40, 2329.882,1406.273,128.013, 12000, 'Knights Street WP3'),
   (26499, 41, 2327.391,1412.475,127.692, 180000000, 'Knights Street WP4'),
   (26499, 42, 2329.882,1406.273,128.013, 0, 'Knights Street WP2');   -- Pustishka --
 