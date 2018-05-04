ALTER TABLE `test_db_model`
CHANGE COLUMN `col1` `col1` varchar(32) NOT NULL DEFAULT 'mydefault',
CHANGE COLUMN `instance_id` `instance_id` int(11) NULL DEFAULT -1,
DROP INDEX `fk_instance`,
ADD INDEX `fk_instance` USING BTREE (`instance_id`, `inferred`),
DROP FOREIGN KEY `con_col1`,
ADD CONSTRAINT `con_col1` FOREIGN KEY (`col1`) REFERENCES `db_test_model2` (`col4`);
