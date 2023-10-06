-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`country` (
	`id` SMALLINT UNSIGNED NOT NULL,
	`code` VARCHAR(2) DEFAULT NULL,
	`name` VARCHAR(255) DEFAULT NULL,
	PRIMARY KEY (`id`)
)
ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `state`(
	`id` SMALLINT UNSIGNED NOT NULL,
	`name` VARCHAR(255) DEFAULT NULL,
	`country_id` SMALLINT unsigned NOT NULL,
	PRIMARY KEY (`id`),
	KEY `fk_country` (`country_id`),
	CONSTRAINT `fk_country` FOREIGN KEY (`country_id`) REFERENCES `country`(`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT=1;

