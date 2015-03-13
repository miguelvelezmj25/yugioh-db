-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.21-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for yugioh
CREATE DATABASE IF NOT EXISTS `yugioh` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `yugioh`;


-- Dumping structure for table yugioh.cards
CREATE TABLE IF NOT EXISTS `cards` (
  `pack` varchar(38) NOT NULL,
  `id` varchar(38) NOT NULL,
  `name` varchar(38) NOT NULL,
  `edition` varchar(38) NOT NULL,
  `rarity` varchar(38) NOT NULL,
  `type` varchar(38) NOT NULL,
  PRIMARY KEY (`pack`,`id`),
  KEY `FK_cards_edition` (`edition`),
  KEY `FK_cards_rarities` (`rarity`),
  CONSTRAINT `FK_cards_edition` FOREIGN KEY (`edition`) REFERENCES `edition` (`edition`),
  CONSTRAINT `FK_cards_packs` FOREIGN KEY (`pack`) REFERENCES `packs` (`pack`),
  CONSTRAINT `FK_cards_rarities` FOREIGN KEY (`rarity`) REFERENCES `rarities` (`rarity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table yugioh.cards: ~141 rows (approximately)
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` (`pack`, `id`, `name`, `edition`, `rarity`, `type`) VALUES
	('DCR', '002', 'Nin-Ken', 'N', 'C', 'Monster'),
	('DCR', '004', 'Arsenal Summoner', 'N', 'C', 'Monster'),
	('DCR', '005', 'Guardian Elma', 'N', 'C', 'Monster'),
	('DCR', '027', 'D. D. Warrior Lady', 'N', 'SR', 'Monster'),
	('DCR', '078', 'Kelber', 'N', 'C', 'Monster'),
	('DCR', '081', 'Legendary Flame Lord', 'N', 'R', 'Ritual'),
	('IOC', '001', 'Ojama', 'N', 'C', 'Monster'),
	('IOC', '004', 'Terrorking Salmon', 'N', 'C', 'Monster'),
	('IOC', '013', 'Berserk Gorilla', 'N', 'R', 'Monster'),
	('IOC', '019', 'Inferno', 'N', 'C', 'Monster'),
	('IOC', '062', 'Burning Algae', 'N', 'C', 'Monster'),
	('LC01', 'EN001', 'Obelisk The Tormentor', 'LE', 'UR', 'Divine'),
	('LC01', 'EN002', 'Slifer The Sky Dragon', 'LE', 'UR', 'Divine'),
	('LC01', 'EN003', 'The Winged Dragon of Ra', 'LE', 'UR', 'Divine'),
	('LC01', 'EN004', 'Blue-Eyes White Dragon', 'LE', 'UR', 'Monster'),
	('LC01', 'EN005', 'Dark Magician', 'LE', 'UR', 'Monster'),
	('LC01', 'EN006', 'Red-Eyes B. Dragon', 'LE', 'UR', 'Monster'),
	('LC03', 'EN001', 'The Seal of Orichalcos', 'LE', 'UR', 'Spell');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;


-- Dumping structure for table yugioh.edition
CREATE TABLE IF NOT EXISTS `edition` (
  `edition` varchar(38) NOT NULL,
  `edition_name` varchar(38) NOT NULL,
  PRIMARY KEY (`edition`,`edition_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table yugioh.edition: ~3 rows (approximately)
/*!40000 ALTER TABLE `edition` DISABLE KEYS */;
INSERT INTO `edition` (`edition`, `edition_name`) VALUES
	('1E', '1st Edition'),
	('LE', 'Limited Edition'),
	('N', 'Normal'),
	('UE', 'Unlimited Edition');
/*!40000 ALTER TABLE `edition` ENABLE KEYS */;


-- Dumping structure for table yugioh.packs
CREATE TABLE IF NOT EXISTS `packs` (
  `pack` varchar(38) NOT NULL,
  `pack_name` varchar(50) NOT NULL,
  PRIMARY KEY (`pack`,`pack_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table yugioh.packs: ~12 rows (approximately)
/*!40000 ALTER TABLE `packs` DISABLE KEYS */;
INSERT INTO `packs` (`pack`, `pack_name`) VALUES
	('DCR', 'Dark Crisis'),
	('IOC', 'Invasion of Chaos'),
	('LC01', 'Legendary Collection: Gameboard Edition'),
	('LC03', 'Legendary Collection 3 Yugi\'s World'),
	('LC04', 'Legendary Collection 4 Joey\'s World'),
	('LCJW', 'Legendary Collection 4 Joey\'s World Mega Pack'),
	('LCYW', 'Legendary Collection 3 Yugi\'s World Mega Pack'),
	('LOB', 'Legend of Blue-Eyes White Dragon'),
	('MRD', 'Metal Raiders'),
	('MRL', 'Spell Ruler'),
	('PSV', 'Pharaoh\'s Servant'),
	('SDHS', 'Structure Deck: Hero\'s Strike'),
	('SDJ', 'Starter Deck Joey'),
	('SDK', 'Starter Deck Kaiba'),
	('SDLI', 'Realm of Light Structure Deck'),
	('SDP', 'Starter Deck Pegasus'),
	('SDSC', 'Spellcaster\'s Command Structure Deck'),
	('SDY', 'Starter Deck Yugi'),
	('SKE', 'Starter Deck Kaiba Evolution'),
	('SRL', 'Spell Ruler');
/*!40000 ALTER TABLE `packs` ENABLE KEYS */;


-- Dumping structure for table yugioh.rarities
CREATE TABLE IF NOT EXISTS `rarities` (
  `rarity` varchar(38) NOT NULL,
  `rarity_name` varchar(38) NOT NULL,
  `Description` tinytext,
  PRIMARY KEY (`rarity`,`rarity_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table yugioh.rarities: ~4 rows (approximately)
/*!40000 ALTER TABLE `rarities` DISABLE KEYS */;
INSERT INTO `rarities` (`rarity`, `rarity_name`, `Description`) VALUES
	('C', 'Common', 'Black or white name and no holofoil on the card name or image'),
	('R', 'Rare', 'Silver card name and not holofoil image'),
	('SE', 'Secret Rare', 'Holographic silver card name and parallel holofoil image'),
	('SR', 'Super Rare', 'Non-foil card name and foil card image'),
	('UR', 'Ultra Rare', 'Gold card name and holofoil image');
/*!40000 ALTER TABLE `rarities` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
