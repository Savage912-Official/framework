DELIMITER //
CREATE FUNCTION `characters_generateLicense`() RETURNS int(10)
    DETERMINISTIC
BEGIN
	SET @random_num = 0;

	WHILE @random_num=0 OR EXISTS (SELECT 1 FROM characters WHERE characters.license_text=@random_num) DO
		SET @random_num = FLOOR(RAND() * 999999999);
	END WHILE;

	RETURN @random_num;
END//
DELIMITER ;

CREATE TABLE IF NOT EXISTS `characters` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`user_id` INT(10) UNSIGNED NOT NULL,
	`first_name` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`last_name` VARCHAR(32) NOT NULL COLLATE 'utf8_general_ci',
	`dob` DATE NOT NULL DEFAULT sysdate(),
	`gender` ENUM('Male','Female','Non-binary') NOT NULL COLLATE 'utf8_general_ci',
	`bank` BIGINT(20) NOT NULL DEFAULT '0',
	`paycheck` SMALLINT(6) NOT NULL DEFAULT '0',
	`license_text` CHAR(10) NOT NULL DEFAULT '0',
	`time_played` FLOAT NOT NULL DEFAULT '0',
	`dead` BIT(1) NOT NULL DEFAULT b'0',
	`pos_x` FLOAT NOT NULL DEFAULT '0',
	`pos_y` FLOAT NOT NULL DEFAULT '0',
	`pos_z` FLOAT NOT NULL DEFAULT '0',
	`deleted` TIMESTAMP NULL DEFAULT NULL,
	`appearance` TEXT NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`features` TEXT NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`health` TEXT NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`biography` TEXT NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	PRIMARY KEY (`id`) USING BTREE,
	UNIQUE INDEX `id_UNIQUE` (`id`) USING BTREE,
	INDEX `id_idx` (`user_id`) USING BTREE,
	CONSTRAINT `character_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE RESTRICT ON DELETE CASCADE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TRIGGER IF NOT EXISTS `characters_generateLicense` BEFORE INSERT ON `characters` FOR EACH ROW BEGIN
	SET NEW.license_text = characters_generateLicense()
END