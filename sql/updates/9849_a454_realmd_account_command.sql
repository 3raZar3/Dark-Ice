DROP TABLE IF EXISTS `account_command`;
CREATE TABLE `account_command` (
  `account_id` bigint(40) NOT NULL,
  `character_id` bigint(40) NOT NULL,
  `command_name` varchar(255) character set utf8 NOT NULL,
  `time_used` bigint(20) NOT NULL,
  `remote` varchar(40) character set utf8 NOT NULL,
  KEY `account_id` (`account_id`),
  KEY `character_id` (`character_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;