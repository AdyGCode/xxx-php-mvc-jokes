-- --------------------------------------------------------------------------------------------
-- Table creation and Seeder Script
-- Author: Adrian Gould
--
-- ATTENTION: Replace xxx with YOUR INITIALS before continuing
-- --------------------------------------------------------------------------------------------


-- --------------------------------------------------------------------------------------------
-- Make the DB active for commands
-- --------------------------------------------------------------------------------------------
USE xxx_php_mvc_jokes;


-- --------------------------------------------------------------------------------------------
-- Drop Categories Table and Recreate
-- --------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `xxx_php_mvc_jokes`.`categories`;
CREATE TABLE `xxx_php_mvc_jokes`.`categories`
(
    `id`         BIGINT UNSIGNED AUTO_INCREMENT,
    `name`       VARCHAR(64) NOT NULL DEFAULT 'Unknown',
    `user_id`    BIGINT UNSIGNED      DEFAULT 10,
    `created_at` DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` DATETIME    NULL     DEFAULT NULL,

    PRIMARY KEY (`id`),
    UNIQUE `category_name_unique` (`name`)

) ENGINE = InnoDB
  CHARSET = utf8mb4
  COLLATE utf8mb4_general_ci;


-- --------------------------------------------------------------------------------------------
-- Drop Jokes Table and Recreate
-- --------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `xxx_php_mvc_jokes`.`jokes`;
CREATE TABLE `xxx_php_mvc_jokes`.`jokes`
(
    `id`          BIGINT UNSIGNED AUTO_INCREMENT,
    `joke`        TEXT         NOT NULL,
    `category_id` BIGINT UNSIGNED       DEFAULT 1,
    `tags`        VARCHAR(255) NULL     DEFAULT NULL,
    `author_id`   BIGINT UNSIGNED       DEFAULT 1,
    `created_at`  DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at`  DATETIME     NULL     DEFAULT NULL,

    PRIMARY KEY (`id`),
    FULLTEXT `joke_text` (`joke`),
    FULLTEXT `tag_index` (`tags`)

) ENGINE = InnoDB
  CHARSET = utf8mb4
  COLLATE utf8mb4_general_ci;


-- --------------------------------------------------------------------------------------------
-- Drop Users Table and Recreate
-- --------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `xxx_php_mvc_jokes`.`users`;
CREATE TABLE `xxx_php_mvc_jokes`.`users`
(
    `id`            BIGINT UNSIGNED AUTO_INCREMENT,
    `nickname`      VARCHAR(64)  NOT NULL,
    `given_name`    VARCHAR(64)  NOT NULL,
    `family_name`   VARCHAR(64)  NULL     DEFAULT NULL,
    `email`         VARCHAR(320) NOT NULL,
    `user_password` VARCHAR(255) NOT NULL,
    `user_id`       BIGINT UNSIGNED       DEFAULT 10,
    `created_at`    DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at`    DATETIME     NULL     DEFAULT NULL,

    PRIMARY KEY (`id`),
    UNIQUE `email_index` (`email`),
    INDEX `given_family` (`given_name`, `family_name`),
    INDEX `family_given` (`family_name`, `given_name`)

) ENGINE = InnoDB
  CHARSET = utf8mb4
  COLLATE utf8mb4_general_ci;


-- --------------------------------------------------------------------------------------------
-- Seed Users Table
-- Default password used below is: Password123
-- Create your own hashed passwords by visiting http://xxx-mvc-jokes.text/auth/password
-- --------------------------------------------------------------------------------------------
INSERT INTO `xxx_php_mvc_jokes`.`users` (`id`, `nickname`, `given_name`, `email`, `user_password`, `created_at`)
VALUES (1, 'X', 'Unknown', 'no-reply@example.com', '1234567890', '1970-01-01 00:00:01');


INSERT INTO `xxx_php_mvc_jokes`.`users` (`id`, `nickname`, `given_name`, `email`, `user_password`, `created_at`)
VALUES (10,'Guvner', 'Administrator', 'admin@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        '2024-01-01 00:01:02');

INSERT INTO `users` (`id`, `nickname`, `given_name`, `family_name`, `email`, `user_password`, `created_at`)
VALUES (20, 'Ady', 'Adrian', 'Gould', 'adrian@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        '2024-01-01 01:03:05');

-- --------------------------------------------------------------------------------------------
-- !! Ensure you change the GIVEN_NAME and FAMILY_NAME in the seed data below                !!
-- --------------------------------------------------------------------------------------------
INSERT INTO `users` (`id`, `nickname`, `given_name`, `family_name`, `email`, `user_password`, `created_at`)
VALUES (30, 'NICKNAME', 'GIVEN_NAME', 'FAMILY_NAME', 'GIVEN_NAME@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        '2024-01-01 02:03:05');

INSERT INTO `users`(`id`,`nickname`, `given_name`, `family_name`, `email`, `user_password`, `created_at`, `user_id`)
VALUES (104,'Jacques', 'Jacques', 'd\'Carre', 'jaques@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        NOW(), 10),
       (102,'Eileen', 'Eileen', 'Dover', 'eileen@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        NOW(), 20),
       (103,'Annie', 'Annie', 'Won', 'annie@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        NOW(), 30),
       (101,'Joe', 'Joe', 'Kerr', 'joe@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        NOW(), 30);



-- --------------------------------------------------------------------------------------------
-- Seed Categories Table
-- --------------------------------------------------------------------------------------------

INSERT INTO `categories`(`id`,`name`,`created_at`)
    VALUES (1,'unknown','1970-01-01 00:00:01');

INSERT INTO `categories`(`id`,`name`,`created_at`)
    VALUES (10,'dad','1970-01-01 00:00:01');

INSERT INTO `categories`(`name`,`created_at`)
    VALUES
    ('programmer','1970-01-01 00:00:01'),
    ('web','1970-01-01 00:00:01'),
    ('knock-knock','1970-01-01 00:00:01'),
    ('rude','1970-01-01 00:00:01'),
    ('dog','1970-01-01 00:00:01'),
    ('cat','1970-01-01 00:00:01'),
    ('animal','1970-01-01 00:00:01');





