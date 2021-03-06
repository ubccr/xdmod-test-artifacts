CREATE TABLE IF NOT EXISTS `test_db_model` (
  `event_id` bigint(20) unsigned NOT NULL auto_increment COMMENT 'Generated during intermediate ingest',
  `col1` varchar(64) NOT NULL DEFAULT 'mydefault',
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `instance_id` int(11) unsigned NULL DEFAULT 10,
  `inferred` int(1) unsigned NULL DEFAULT 0 COMMENT 'Not explicitly provided by source but inferred from other data',
  INDEX `fk_col` USING BTREE (`col1`),
  UNIQUE INDEX `fk_instance` USING BTREE (`instance_id`, `inferred`),
  CONSTRAINT `con_col1` FOREIGN KEY (`col1`) REFERENCES `db_test_model2` (`col3`)
) ENGINE = MyISAM COMMENT = 'Events on an instance';
