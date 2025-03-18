-- --------------------------------------------------------------------------------------------
-- Database creation script for Simple MVC Jokes Database
-- Author: Adrian Gould
--
-- Platform:    MYSQL ONLY
--
-- Instructions:
--
-- Before copying and executing this script you MUST:
--
--      Replace xxx with YOUR INITIALS
--      Replace yyyy with the year
--      Replace sn with s followed by the semester number
-- --------------------------------------------------------------------------------------------


-- --------------------------------------------------------------------------------------------
-- Clear up previous versions of the Database and User
-- --------------------------------------------------------------------------------------------
DROP DATABASE IF EXISTS xxx_php_mvc_jokes_yyyy_sn;
DROP USER IF EXISTS 'xxx_php_mvc_jokes_yyyy_sn'@'localhost';
DROP USER IF EXISTS 'xxx_php_mvc_jokes_yyyy_sn'@'127.0.0.1';

FLUSH PRIVILEGES;

-- --------------------------------------------------------------------------------------------
-- Create the XXX_mvc_Jokes Database & two users (one each for @localhost, @127.0.0.1)
-- ATTENTION: Replace xxx with YOUR INITIALS
-- --------------------------------------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS xxx_php_mvc_jokes_yyyy_sn;

CREATE USER 'xxx_php_mvc_jokes_yyyy_sn'@'localhost'
    IDENTIFIED WITH mysql_native_password
        BY 'XXX-Jokes-YYYY';

CREATE USER 'xxx_php_mvc_jokes_yyyy_sn'@'127.0.0.1'
    IDENTIFIED WITH mysql_native_password
        BY 'XXX-Jokes-YYYY';

-- --------------------------------------------------------------------------------------------
-- Provide full access to the database to the two users
-- --------------------------------------------------------------------------------------------
GRANT USAGE ON *.*
    TO 'xxx_php_mvc_jokes_yyyy_sn'@'localhost';

GRANT ALL PRIVILEGES
    ON `xxx_php_mvc_jokes_yyyy_sn`.*
    TO 'xxx_php_mvc_jokes_yyyy_sn'@'localhost';

GRANT USAGE ON *.*
    TO 'xxx_php_mvc_jokes_yyyy_sn'@'127.0.0.1';

GRANT ALL PRIVILEGES
    ON `xxx_php_mvc_jokes_yyyy_sn`.*
    TO 'xxx_php_mvc_jokes_yyyy_sn'@'127.0.0.1';

FLUSH PRIVILEGES;
