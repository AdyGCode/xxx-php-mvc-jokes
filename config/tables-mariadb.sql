-- --------------------------------------------------------------------------------------------
-- Table creation and Seeder Script
-- Author: Adrian Gould
--
-- ATTENTION: Replace xxx with YOUR INITIALS before continuing
-- --------------------------------------------------------------------------------------------


-- --------------------------------------------------------------------------------------------
-- Make the DB active for commands
-- --------------------------------------------------------------------------------------------
USE xxx_php_mvc_jokes_yyyy_sn;


-- --------------------------------------------------------------------------------------------
-- Drop Categories Table and Recreate
-- --------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `xxx_php_mvc_jokes_yyyy_sn`.`categories`;
CREATE TABLE `xxx_php_mvc_jokes_yyyy_sn`.`categories`
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
DROP TABLE IF EXISTS `xxx_php_mvc_jokes_yyyy_sn`.`jokes`;
CREATE TABLE `xxx_php_mvc_jokes_yyyy_sn`.`jokes`
(
    `id`          BIGINT UNSIGNED AUTO_INCREMENT,
    `title`       VARCHAR(128) NOT NULL,
    `body`        TEXT         NOT NULL,
    `category_id` BIGINT UNSIGNED       DEFAULT 1,
    `tags`        VARCHAR(255) NULL     DEFAULT NULL,
    `author_id`   BIGINT UNSIGNED       DEFAULT 1,
    `created_at`  DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at`  DATETIME     NULL     DEFAULT NULL,

    PRIMARY KEY (`id`),
    FULLTEXT `joke_text` (`body`),
    FULLTEXT `tag_index` (`tags`)

) ENGINE = InnoDB
  CHARSET = utf8mb4
  COLLATE utf8mb4_general_ci;


-- --------------------------------------------------------------------------------------------
-- Drop Users Table and Recreate
-- --------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS `xxx_php_mvc_jokes_yyyy_sn`.`users`;
CREATE TABLE `xxx_php_mvc_jokes_yyyy_sn`.`users`
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
INSERT INTO `xxx_php_mvc_jokes_yyyy_sn`.`users` (`id`, `nickname`, `given_name`, `email`, `user_password`, `created_at`)
VALUES (1, 'X', 'Unknown', 'no-reply@example.com', '1234567890', '1970-01-01 00:00:01');


INSERT INTO `xxx_php_mvc_jokes_yyyy_sn`.`users` (`id`, `nickname`, `given_name`, `email`, `user_password`, `created_at`)
VALUES (10, 'Guvner', 'Administrator', 'admin@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        '2024-01-01 00:01:02');

INSERT INTO `xxx_php_mvc_jokes_yyyy_sn`.`users` (`id`, `nickname`, `given_name`, `family_name`, `email`,
                                                 `user_password`, `created_at`)
VALUES (20, 'Ady', 'Adrian', 'Gould', 'adrian@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        '2024-01-01 01:03:05');

-- --------------------------------------------------------------------------------------------
-- !! Ensure you change the GIVEN_NAME and FAMILY_NAME in the seed data below                !!
-- --------------------------------------------------------------------------------------------
INSERT INTO `xxx_php_mvc_jokes_yyyy_sn`.`users` (`id`, `nickname`, `given_name`, `family_name`, `email`,
                                                 `user_password`, `created_at`)
VALUES (30, 'NICKNAME', 'GIVEN_NAME', 'FAMILY_NAME', 'GIVEN_NAME@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        '2024-01-01 02:03:05');

INSERT INTO `xxx_php_mvc_jokes_yyyy_sn`.`users`(`id`, `nickname`, `given_name`, `family_name`, `email`, `user_password`,
                                                `created_at`, `user_id`)
VALUES (104, 'Jacques', 'Jacques', 'd\'Carre', 'jaques@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        NOW(), 10),
       (102, 'Eileen', 'Eileen', 'Dover', 'eileen@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        NOW(), 20),
       (103, 'Annie', 'Annie', 'Won', 'annie@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        NOW(), 30),
       (101, 'Joe', 'Joe', 'Kerr', 'joe@example.com',
        '$2y$12$EZymemwtvalA/Nz8H6inPeGzy945cJzxPBGZ2vCFgxUb3ushBZZ5C',
        NOW(), 30);



-- --------------------------------------------------------------------------------------------
-- Seed Categories Table
-- --------------------------------------------------------------------------------------------

INSERT INTO `xxx_php_mvc_jokes_yyyy_sn`.`categories`(`id`, `name`, `created_at`)
VALUES (1, 'unknown', '1970-01-01 00:00:01');

INSERT INTO `xxx_php_mvc_jokes_yyyy_sn`.`categories`(`id`, `name`, `created_at`)
VALUES (11, 'dad', '1970-01-01 00:00:01');

INSERT INTO `xxx_php_mvc_jokes_yyyy_sn`.`categories`(`id`, `name`, `created_at`)
VALUES (9, 'geek', '1970-01-01 00:00:02'),
       (10, 'programmer', '1970-01-01 00:00:02'),
       (2, 'web', '1970-01-01 00:00:02'),
       (3, 'knock-knock', '1970-01-01 00:00:03'),
       (4, 'rude', '1970-01-01 00:00:04'),
       (5, 'dog', '1970-01-01 00:00:05'),
       (6, 'cat', '1970-01-01 00:00:06'),
       (7, 'halloween', '1970-01-01 00:00:07'),
       (8, 'animal', '1970-01-01 00:00:08');


-- --------------------------------------------------------------------------------------------
-- Seed Jokes Table
-- --------------------------------------------------------------------------------------------

INSERT INTO `xxx_php_mvc_jokes_yyyy_sn`.`jokes`(`id`, `title`, `body`, `category_id`, `tags`,
                                                `author_id`, `created_at`, `updated_at`)
VALUES (1, "Skeleton Fight",
        "Why don't skeletons fight each other? They don't have the guts.",
        7, "spooky,funny", 1, now(), now()),
       (2, "Parallel Lines",
        "Parallel lines have so much in common. It's a shame they'll never meet.",
        9, "geometry,puns", 105, now(), now()),
       (3, "Embracing Mistakes",
        "I told my wife she should embrace her mistakes. She gave me a hug.",
        11, "relationships,dad jokes", 104, now(), now()),
       (4, "Broken Pencil",
        "I was going to tell a joke about a broken pencil, but it was pointless.",
        11, "puns,funny", 103, now(), now()),
       (5, "Light Sleeper",
        "I told my wife she should stop sleeping in the fridge. She said she's just a light sleeper.",
        11, "sleep,puns", 105, now(), now()),
       (6, "Elevator Business",
        "I'm thinking of starting a business installing elevators. I hear it has its ups and downs.",
        11, "work,puns", 104, now(), now());
