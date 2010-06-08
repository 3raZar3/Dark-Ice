/* THIS TOOL DROPS OLD INDEXES IN CHARACTERS DB AND ESTABLISH A NEW ONES  	*/
/* CAN BE USED AFTER FATAL DATABASE TRASH AND RECOVERY			  	*/
/* BEFORE USE MAKE SURE THAT THERE WERE NO NEW CHANGES IN CHARACTER DB SINCE 	*/
/* ********************************	MaNGOS 9110  ******************************/

ALTER TABLE `account_data` DROP PRIMARY KEY;
ALTER TABLE `account_data` ADD PRIMARY KEY  (`account`,`type`);

ALTER TABLE `arena_team` DROP PRIMARY KEY;
ALTER TABLE `arena_team` ADD PRIMARY KEY  (`arenateamid`);

ALTER TABLE `arena_team_member` DROP PRIMARY KEY;
ALTER TABLE `arena_team_member` ADD PRIMARY KEY  (`arenateamid`,`guid`);

ALTER TABLE `arena_team_stats` DROP PRIMARY KEY;
ALTER TABLE `arena_team_stats` ADD PRIMARY KEY  (`arenateamid`);

ALTER TABLE `auctionhouse` DROP PRIMARY KEY;
ALTER TABLE `auctionhouse` ADD PRIMARY KEY  (`id`);
ALTER TABLE `auctionhouse` DROP KEY `item_guid`;
ALTER TABLE `auctionhouse` ADD UNIQUE KEY  `item_guid` (`itemguid`);

ALTER TABLE `characters` DROP PRIMARY KEY;
ALTER TABLE `characters` ADD PRIMARY KEY  (`guid`);
ALTER TABLE `characters` DROP KEY `idx_account`;
ALTER TABLE `characters` DROP KEY `idx_online`;
ALTER TABLE `characters` DROP KEY `idx_name`;
ALTER TABLE `characters` ADD KEY `idx_account` (`account`);
ALTER TABLE `characters` ADD KEY `idx_online` (`online`);
ALTER TABLE `characters` ADD KEY `idx_name` (`name`);

ALTER TABLE `character_account_data` DROP PRIMARY KEY;
ALTER TABLE `character_account_data` ADD PRIMARY KEY  (`guid`,`type`);

ALTER TABLE `character_achievement` DROP PRIMARY KEY;
ALTER TABLE `character_achievement` ADD PRIMARY KEY  (`guid`,`achievement`);

ALTER TABLE `character_achievement_progress` DROP PRIMARY KEY;
ALTER TABLE `character_achievement_progress` ADD PRIMARY KEY  (`guid`,`criteria`);

-- ORGINAL MaNGOS TABLE REPLACED BY THIS GIVEN FROM DUAL SPEC PATCH SO MAKING COPY
-- ALTER TABLE `character_action` DROP PRIMARY KEY;
-- ALTER TABLE `character_action` ADD PRIMARY KEY  (`guid`,`button`);

ALTER TABLE `character_action` DROP PRIMARY KEY;
ALTER TABLE `character_action` ADD PRIMARY KEY (`guid`,`spec`,`button`);

ALTER TABLE `character_aura` DROP PRIMARY KEY;
ALTER TABLE `character_aura` ADD PRIMARY KEY  (`guid`,`spell`,`effect_index`);

ALTER TABLE `character_battleground_data` DROP PRIMARY KEY;
ALTER TABLE `character_battleground_data` ADD PRIMARY KEY  (`guid`);

ALTER TABLE `character_declinedname` DROP PRIMARY KEY;
ALTER TABLE `character_declinedname` ADD PRIMARY KEY  (`guid`);

ALTER TABLE `character_equipmentsets` DROP PRIMARY KEY;
ALTER TABLE `character_equipmentsets` ADD PRIMARY KEY  (`setguid`);
ALTER TABLE `character_equipmentsets` DROP KEY `idx_set`;
ALTER TABLE `character_equipmentsets` ADD UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`);

ALTER TABLE `character_gifts` DROP PRIMARY KEY;
ALTER TABLE `character_gifts` ADD PRIMARY KEY  (`item_guid`);
ALTER TABLE `character_gifts` DROP KEY `idx_guid`;
ALTER TABLE `character_gifts` ADD KEY `idx_guid` (`guid`);

ALTER TABLE `character_homebind` DROP PRIMARY KEY;
ALTER TABLE `character_homebind` ADD PRIMARY KEY  (`guid`);

ALTER TABLE `character_instance` DROP PRIMARY KEY;
ALTER TABLE `character_instance` ADD PRIMARY KEY  (`guid`,`instance`);
ALTER TABLE `character_instance` DROP KEY `instance`;
ALTER TABLE `character_instance` ADD KEY `instance` (`instance`);

ALTER TABLE `character_inventory` DROP PRIMARY KEY;
ALTER TABLE `character_inventory` ADD PRIMARY KEY  (`item`);
ALTER TABLE `character_inventory` DROP KEY `idx_guid`;
ALTER TABLE `character_inventory` ADD KEY `idx_guid` (`guid`);

ALTER TABLE `character_pet` DROP PRIMARY KEY;
ALTER TABLE `character_pet` ADD PRIMARY KEY  (`id`);
ALTER TABLE `character_pet` DROP KEY `owner`;
ALTER TABLE `character_pet` ADD KEY `owner` (`owner`);

ALTER TABLE `character_pet_declinedname` DROP PRIMARY KEY;
ALTER TABLE `character_pet_declinedname` ADD PRIMARY KEY  (`id`);
ALTER TABLE `character_pet_declinedname` DROP KEY `owner`;
ALTER TABLE `character_pet_declinedname` ADD KEY `owner` (`owner`);

ALTER TABLE `character_queststatus` DROP PRIMARY KEY;
ALTER TABLE `character_queststatus` ADD PRIMARY KEY  (`guid`,`quest`);

ALTER TABLE `character_queststatus_daily` DROP PRIMARY KEY;
ALTER TABLE `character_queststatus_daily` ADD PRIMARY KEY  (`guid`,`quest`);
ALTER TABLE `character_queststatus_daily` DROP KEY `idx_guid`;
ALTER TABLE `character_queststatus_daily` ADD KEY `idx_guid` (`guid`);

ALTER TABLE `character_reputation` DROP PRIMARY KEY;
ALTER TABLE `character_reputation` ADD PRIMARY KEY  (`guid`,`faction`);

ALTER TABLE `character_skills` DROP PRIMARY KEY;
ALTER TABLE `character_skills` ADD PRIMARY KEY  (`guid`,`skill`);

ALTER TABLE `character_social` DROP PRIMARY KEY;
ALTER TABLE `character_social` ADD PRIMARY KEY  (`guid`,`friend`,`flags`);
ALTER TABLE `character_social` DROP KEY `guid`;
ALTER TABLE `character_social` ADD KEY `guid` (`guid`);
ALTER TABLE `character_social` DROP KEY `friend`;
ALTER TABLE `character_social` ADD KEY `friend` (`friend`);
ALTER TABLE `character_social` DROP KEY `guid_flags`;
ALTER TABLE `character_social` ADD KEY `guid_flags` (`guid`,`flags`);
ALTER TABLE `character_social` DROP KEY `friend_flags`;
ALTER TABLE `character_social` ADD KEY `friend_flags` (`friend`,`flags`);

ALTER TABLE `character_spell` DROP PRIMARY KEY;
ALTER TABLE `character_spell` ADD PRIMARY KEY  (`guid`,`spell`);

ALTER TABLE `character_spell_cooldown` DROP PRIMARY KEY;
ALTER TABLE `character_spell_cooldown` ADD PRIMARY KEY  (`guid`,`spell`);

-- ALTER TABLE `character_ticket` DROP PRIMARY KEY;
-- ALTER TABLE `character_ticket` ADD PRIMARY KEY  (`ticket_id`);

ALTER TABLE `character_tutorial` DROP PRIMARY KEY;
ALTER TABLE `character_tutorial` ADD PRIMARY KEY  (`account`,`realmid`);
ALTER TABLE `character_tutorial` DROP KEY `acc_key`;
ALTER TABLE `character_tutorial` ADD KEY `acc_key` (`account`);

ALTER TABLE `corpse` DROP PRIMARY KEY;
ALTER TABLE `corpse` ADD PRIMARY KEY  (`guid`);
ALTER TABLE `corpse` DROP KEY `instance`;
ALTER TABLE `corpse` ADD KEY `instance` (`instance`);
ALTER TABLE `corpse` DROP KEY `idx_type`;
ALTER TABLE `corpse` ADD KEY `idx_type` (`corpse_type`);

ALTER TABLE `groups` DROP PRIMARY KEY;
ALTER TABLE `groups` ADD PRIMARY KEY  (`leaderGuid`);

ALTER TABLE `group_instance` DROP PRIMARY KEY;
ALTER TABLE `group_instance` ADD PRIMARY KEY  (`leaderGuid`,`instance`);
ALTER TABLE `group_instance` DROP KEY `instance`;
ALTER TABLE `group_instance` ADD KEY `instance` (`instance`);

ALTER TABLE `group_member` DROP PRIMARY KEY;
ALTER TABLE `group_member` ADD PRIMARY KEY  (`leaderGuid`,`memberGuid`);

ALTER TABLE `guild` DROP PRIMARY KEY;
ALTER TABLE `guild` ADD PRIMARY KEY  (`guildid`);

ALTER TABLE `guild_bank_eventlog` DROP PRIMARY KEY;
ALTER TABLE `guild_bank_eventlog` ADD PRIMARY KEY  (`guildid`,`LogGuid`,`TabId`);
ALTER TABLE `guild_bank_eventlog` DROP KEY `guildid_key`;
ALTER TABLE `guild_bank_eventlog` ADD KEY `guildid_key` (`guildid`);

ALTER TABLE `guild_bank_item` DROP PRIMARY KEY;
ALTER TABLE `guild_bank_item` ADD PRIMARY KEY  (`guildid`,`tabid`,`slotid`);
ALTER TABLE `guild_bank_item` DROP KEY `guildid_key`;
ALTER TABLE `guild_bank_item` ADD KEY `guildid_key` (`guildid`);

ALTER TABLE `guild_bank_right` DROP PRIMARY KEY;
ALTER TABLE `guild_bank_right` ADD PRIMARY KEY  (`guildid`,`TabId`,`rid`);
ALTER TABLE `guild_bank_right` DROP KEY `guildid_key`;
ALTER TABLE `guild_bank_right` ADD KEY `guildid_key` (`guildid`);

ALTER TABLE `guild_bank_tab` DROP PRIMARY KEY;
ALTER TABLE `guild_bank_tab` ADD PRIMARY KEY  (`guildid`,`TabId`);
ALTER TABLE `guild_bank_tab` DROP KEY `guildid_key`;
ALTER TABLE `guild_bank_tab` ADD KEY `guildid_key` (`guildid`);

ALTER TABLE `guild_eventlog` DROP PRIMARY KEY;
ALTER TABLE `guild_eventlog` ADD PRIMARY KEY  (`guildid`, `LogGuid`);

ALTER TABLE `guild_member` DROP KEY `guildid_key`;
ALTER TABLE `guild_member` ADD KEY `guildid_key` (`guildid`);
ALTER TABLE `guild_member` DROP KEY `guildid_rank_key`;
ALTER TABLE `guild_member` ADD KEY `guildid_rank_key` (`guildid`,`rank`);
ALTER TABLE `guild_member` DROP KEY `guid_key`;
ALTER TABLE `guild_member` ADD UNIQUE KEY `guid_key` (`guid`);

ALTER TABLE `guild_rank` DROP PRIMARY KEY;
ALTER TABLE `guild_rank` ADD PRIMARY KEY  (`guildid`,`rid`);

ALTER TABLE `instance` DROP PRIMARY KEY;
ALTER TABLE `instance` ADD PRIMARY KEY  (`id`);
ALTER TABLE `instance` DROP KEY `map`;
ALTER TABLE `instance` ADD KEY `map` (`map`);
ALTER TABLE `instance` DROP KEY `resettime`;
ALTER TABLE `instance` ADD KEY `resettime` (`resettime`);

ALTER TABLE `instance_reset` DROP PRIMARY KEY;
ALTER TABLE `instance_reset` ADD PRIMARY KEY  (`mapid`,`difficulty`);

ALTER TABLE `item_instance` DROP PRIMARY KEY;
ALTER TABLE `item_instance` ADD PRIMARY KEY  (`guid`);
ALTER TABLE `item_instance` DROP KEY `idx_owner_guid`;
ALTER TABLE `item_instance` ADD KEY `idx_owner_guid` (`owner_guid`);

ALTER TABLE `item_text` DROP PRIMARY KEY;
ALTER TABLE `item_text` ADD PRIMARY KEY  (`id`);

ALTER TABLE `mail` DROP PRIMARY KEY;
ALTER TABLE `mail` ADD PRIMARY KEY  (`id`);
ALTER TABLE `mail` DROP KEY `idx_receiver`;
ALTER TABLE `mail` ADD KEY `idx_receiver` (`receiver`);

ALTER TABLE `mail_items` DROP PRIMARY KEY;
ALTER TABLE `mail_items` ADD PRIMARY KEY  (`mail_id`,`item_guid`);
ALTER TABLE `mail_items` DROP KEY `idx_receiver`;
ALTER TABLE `mail_items` ADD KEY `idx_receiver` (`receiver`);

ALTER TABLE `pet_aura` DROP PRIMARY KEY;
ALTER TABLE `pet_aura` ADD PRIMARY KEY  (`guid`,`spell`,`effect_index`);

ALTER TABLE `pet_spell` DROP PRIMARY KEY;
ALTER TABLE `pet_spell` ADD PRIMARY KEY  (`guid`,`spell`);

ALTER TABLE `pet_spell_cooldown` DROP PRIMARY KEY;
ALTER TABLE `pet_spell_cooldown` ADD PRIMARY KEY  (`guid`,`spell`);

ALTER TABLE `petition` DROP PRIMARY KEY;
ALTER TABLE `petition` ADD PRIMARY KEY  (`ownerguid`,`type`);
ALTER TABLE `petition` DROP KEY `index_ownerguid_petitionguid`;
ALTER TABLE `petition` ADD UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`);

ALTER TABLE `petition_sign` DROP PRIMARY KEY;
ALTER TABLE `petition_sign` ADD PRIMARY KEY  (`petitionguid`,`playerguid`);
