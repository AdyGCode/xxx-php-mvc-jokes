-- --------------------------------------------------------------------------------------------
-- Database creation script for Saas Vanilla MVC
-- Author: Adrian Gould
--
-- ATTENTION: Replace xxx with YOUR INITIALS before continuing
-- --------------------------------------------------------------------------------------------


-- --------------------------------------------------------------------------------------------
-- Clear up previous versions of the Database and User
-- --------------------------------------------------------------------------------------------
DROP
DATABASE IF EXISTS xxx_php_mvc_jokes;
DROP
USER IF EXISTS 'xxx_php_mvc_jokes'@'localhost';
DROP
USER IF EXISTS 'xxx_php_mvc_jokes'@'127.0.0.1';

-- --------------------------------------------------------------------------------------------
-- Create the XXX_mvc_Jokes Database & two users (one each for @localhost, @127.0.0.1)
-- ATTENTION: Replace xxx with YOUR INITIALS
-- --------------------------------------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS xxx_php_mvc_jokes;

CREATE USER 'xxx_php_mvc_jokes'@'localhost'
    IDENTIFIED WITH mysql_native_password
        BY 'Password1234';

CREATE USER 'xxx_php_mvc_jokes'@'127.0.0.1'
    IDENTIFIED WITH mysql_native_password
        BY 'Password1234';

-- --------------------------------------------------------------------------------------------
-- Provide full access to the database to the two users
-- --------------------------------------------------------------------------------------------
GRANT USAGE ON *.*
    TO 'xxx_php_mvc_jokes'@'localhost';

GRANT ALL PRIVILEGES
    ON `xxx_php_mvc_jokes`.*
    TO 'xxx_php_mvc_jokes'@'localhost';

GRANT USAGE ON *.*
    TO 'xxx_php_mvc_jokes'@'127.0.0.1';

GRANT ALL PRIVILEGES
    ON `xxx_php_mvc_jokes`.*
    TO 'xxx_php_mvc_jokes'@'127.0.0.1';
