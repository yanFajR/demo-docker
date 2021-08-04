-- Adminer 4.8.1 MySQL 5.5.5-10.6.3-MariaDB-1:10.6.3+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `dbharga`;
CREATE DATABASE `dbharga` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `dbharga`;

DROP TABLE IF EXISTS `hargabarang`;
CREATE TABLE `hargabarang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barang` varchar(255) NOT NULL,
  `harga` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `hargabarang` (`id`, `barang`, `harga`) VALUES
(1,	'indomie',	2500),
(2,	'frutang',	1000);

-- 2021-08-04 12:55:22
