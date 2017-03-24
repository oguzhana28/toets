-- --------------------------------------------------------
-- Host:                         localhost
-- Server versie:                5.7.14 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Versie:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Databasestructuur van schoenmerken wordt geschreven
CREATE DATABASE IF NOT EXISTS `schoenmerken` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `schoenmerken`;

-- Structuur van  tabel schoenmerken.schoenmerk wordt geschreven
CREATE TABLE IF NOT EXISTS `schoenmerk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schoenmerk` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel schoenmerken.schoenmerk: 9 rows
/*!40000 ALTER TABLE `schoenmerk` DISABLE KEYS */;
INSERT INTO `schoenmerk` (`id`, `schoenmerk`) VALUES
	(1, 'addidas'),
	(7, 'nike'),
	(3, 'poema'),
	(4, 'victory'),
	(5, 'lacosta'),
	(6, 'jordans'),
	(10, 'schoenmerk'),
	(14, 'oguzhan28'),
	(19, 'lukas');
/*!40000 ALTER TABLE `schoenmerk` ENABLE KEYS */;

-- Structuur van  tabel schoenmerken.sizes wordt geschreven
CREATE TABLE IF NOT EXISTS `sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schoenmerk_id` int(11) NOT NULL DEFAULT '0',
  `size` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumpen data van tabel schoenmerken.sizes: 18 rows
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` (`id`, `schoenmerk_id`, `size`) VALUES
	(1, 1, 40),
	(2, 7, 40),
	(3, 3, 40),
	(4, 4, 40),
	(5, 5, 40),
	(6, 6, 40),
	(7, 1, 38),
	(9, 10, 40),
	(10, 14, 40),
	(11, 16, 40),
	(12, 3, 42),
	(13, 4, 43),
	(14, 5, 41),
	(15, 6, 45),
	(16, 7, 50),
	(17, 10, 49),
	(18, 14, 44),
	(19, 16, 41);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
