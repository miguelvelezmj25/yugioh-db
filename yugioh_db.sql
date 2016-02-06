# ************************************************************
# Sequel Pro SQL dump
# Version 4500
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.10)
# Database: yugioh_db
# Generation Time: 2016-02-06 14:30:47 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cards`;

CREATE TABLE `cards` (
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

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;

INSERT INTO `cards` (`pack`, `id`, `name`, `edition`, `rarity`, `type`)
VALUES
	('DCR','002','Nin-Ken','N','C','Monster'),
	('DCR','004','Arsenal Summoner','N','C','Monster'),
	('DCR','005','Guardian Elma','N','C','Monster'),
	('DCR','027','D. D. Warrior Lady','N','SR','Monster'),
	('DCR','078','Kelber','N','C','Monster'),
	('DCR','081','Legendary Flame Lord','N','R','Ritual'),
	('IOC','001','Ojama','N','C','Monster'),
	('IOC','004','Terrorking Salmon','N','C','Monster'),
	('IOC','013','Berserk Gorilla','N','R','Monster'),
	('IOC','019','Inferno','N','C','Monster'),
	('IOC','062','Burning Algae','N','C','Monster'),
	('LC01','EN001','Obelisk The Tormentor','LE','UR','Divine'),
	('LC01','EN002','Slifer The Sky Dragon','LE','UR','Divine'),
	('LC01','EN003','The Winged Dragon of Ra','LE','UR','Divine'),
	('LC01','EN004','Blue-Eyes White Dragon','LE','UR','Monster'),
	('LC01','EN005','Dark Magician','LE','UR','Monster'),
	('LC01','EN006','Red-Eyes B. Dragon','LE','UR','Monster'),
	('LC03','EN001','The Seal of Orichalcos','LE','UR','Spell'),
	('LC03','EN002','Dark Necrofear','LE','UR','Monster'),
	('LC03','EN003','Guardian Eatos','LE','UR','Monster'),
	('LC03','EN004','Five-Headed Dragon','1E','UR','Fusion'),
	('LC03','EN005','Token','LE','UR','Token'),
	('LC03','EN006','Token','LE','UR','Token'),
	('LC03','EN007','Token','LE','UR','Token'),
	('LC04','EN001','Blue Flame Swordsman','LE','UR','Monster'),
	('LC04','EN002','Harpie Lady Phoenix Formation','LE','UR','Spell'),
	('LC04','EN003','Card of Last Will','LE','UR','Trap'),
	('LC04','EN004','Token','LE','UR','Token'),
	('LC04','EN005','Token','LE','UR','Token'),
	('LC04','EN006','Token','LE','UR','Token'),
	('LC04','EN007','Token','LE','UR','Token'),
	('LC04','EN008','Token','LE','UR','Token'),
	('LC04','EN009','Token','LE','UR','Token'),
	('LCJW','EN012','Alligator\'s Sword','1E','C','Monster'),
	('LCJW','EN054','B. Skull Dragon','1E','R','Fusion'),
	('LCJW','EN059','Polymerization','1E','SR','Spell'),
	('LCJW','EN060','Monster Reborn','1E','UR','Spell'),
	('LCJW','EN066','Scapegoat','1E','SE','Spell'),
	('LCJW','EN089','Amazoness Tiger','1E','UR','Monster'),
	('LCJW','EN090','Harpie Ladie I','1E','SR','Monster'),
	('LCJW','EN097','Harpie Dancer','1E','UR','Monster'),
	('LCJW','EN098','Elegant Egotist','1E','SR','Spell'),
	('LCJW','EN099','Harpie\'s Feather Duster','1E','SE','Spell'),
	('LCJW','EN171','Launcher Spider','1E','C','Monster'),
	('LCJW','EN189','Pyramid Turtle','1E','SR','Monster'),
	('LCJW','EN210','Great Mammoth of Goldfine','1E','C','Fusion'),
	('LCJW','EN211','Book of Life','1E','UR','Spell'),
	('LCJW','EN230','Labyrinth Tank','1E','C','Fusion'),
	('LCJW','EN235','Summoned Skull','1E','R','Fusion'),
	('LCJW','EN240','Fiend Skull Dragon','1E','R','Fusion'),
	('LCJW','EN241','A Deal with Dark Ruler','1E','R','Spell'),
	('LCJW','EN243','Broww, Hunstman of Dark World','1E','SE','Monster'),
	('LCJW','EN248','Super Rejuvenation','1E','SR','Spell'),
	('LCJW','EN250','Gateway to Dark World','1E','SE','Spell'),
	('LCJW','EN253','The Gates of Dark World','1E','UR','Spell'),
	('LCYW','EN015','Queen\'s Knight','1E','UR','Monster'),
	('LCYW','EN016','Jack\'s Knight','1E','UR','Monster'),
	('LCYW','EN017','King\'s Knight','1E','UR','Monster'),
	('LCYW','EN047','Magician of Black Chaos','1E','C','Ritual'),
	('LCYW','EN049','Dark Flare Knight','1E','C','Fusion'),
	('LCYW','EN050','Dragon Master Knight','1E','SR','Fusion'),
	('LCYW','EN051','Arcana Knight Joker','1E','SE','Fusion'),
	('LCYW','EN066','Diffusion Wave-Motion','1E','SR','Spell'),
	('LCYW','EN096','Magical Hats','1E','C','Trap'),
	('LCYW','EN100','Magician\'s Circle','1E','SR','Trap'),
	('LCYW','EN107','Toon Gemini Elf','1E','R','Toon'),
	('LCYW','EN110','Toon Masked Sorcered','1E','R','Toon'),
	('LCYW','EN111','Toon Magician Girl','1E','R','Toon'),
	('LCYW','EN113','Relinquished','1E','R','Ritual'),
	('LCYW','EN150','Gravity Bind','1E','SR','Trap'),
	('LCYW','EN164','White-Horned Dragon','1E','SR','Monster'),
	('LCYW','EN166','Summoner Monk','1E','UR','Monster'),
	('LCYW','EN169','Machina Sniper','1E','SE','Monster'),
	('LCYW','EN176','Mind Control','1E','UR','Spell'),
	('LCYW','EN196','Rite of Spirit','N','C','Trap'),
	('LCYW','EN237','Toon Summoned Skull','1E','R','Toon'),
	('LCYW','EN242','Kycoo The Ghost Destroyer','1E','SE','Monster'),
	('LCYW','EN249','Levia-Dragon -  Daedalus','1E','SE','Monster'),
	('LCYW','EN290','Dark Mirror Force','1E','R','Trap'),
	('LCYW','EN297','Threatening Roar','1E','SE','Trap'),
	('LOB','039','Kurama','N','C','Monster'),
	('LOB','057','Fissure','N','R','Spell'),
	('LOB','058','Trap Hole','N','SR','Trap'),
	('LOB','069','Uraby','N','C','Monster'),
	('LOB','083','Meda Bat','N','C','Monster'),
	('LOB','084','Enchanting Mermaid','N','C','Monster'),
	('LOB','105','Skull Red Bird','N','C','Monster'),
	('LOB','117','Succubus Knight','N','C','Monster'),
	('LOB','120','Right Leg of The Forbidden One','N','UR','Monster'),
	('LOB','121','Left Leg of The Forbidden One','N','UR','Monster'),
	('LOB','122','Right Arm of The Forbidden One','N','UR','Monster'),
	('LOB','123','Left Arm of The Forbidden One','N','UR','Monster'),
	('LOB','124','Exodia The Forbidden One','N','UR','Monster'),
	('MRD','001','Feral Imp','N','C','Monster'),
	('MRD','019','Masked Sorcerer','N','R','Monster'),
	('MRD','033','Legoun','N','C','Monster'),
	('MRD','067','Dragon Piper','N','C','Monster'),
	('MRD','093','Bickuribox','N','C','Fusion'),
	('MRD','104','Yado Karu','N','C','Monster'),
	('PSV','002','Three-Headed Geedo','N','C','Monster'),
	('PSV','040','Morphing Jar #2','N','R','Monster'),
	('PSV','046','Kiseitai','N','C','Monster'),
	('PSV','058','Dark Bat','N','C','Monster'),
	('PSV','077','Sword Hunter','N','C','Monster'),
	('PSV','098','Souls of the Forgotten','N','C','Monster'),
	('SDHS','EN022','Mask Change','1E','C','Spell'),
	('SDHS','EN041','Contrast HERO Chaos','1E','UR','Fusion'),
	('SDHS','EN042','Masked HERO Koga','1E','SR','Fusion'),
	('SDHS','EN043','Masked HERO Divine Wind','1E','SR','Fusion'),
	('SDHS','EN044','Masked HERO Dark Law','1E','SR','Fusion'),
	('SDHS','EN045','Elemental HERO Great Tornado','1E','C','Fusion'),
	('SDJ','001','Red-Eyes B. Dragon','N','UR','Monster'),
	('SDJ','003','Baby Dragon','N','C','Monster'),
	('SDJ','015','Time Wizard','N','C','Monster'),
	('SDJ','023','Thousand Dragon','N','C','Fusion'),
	('SDK','001','Blue-Eyes White Dragon','N','UR','Monster'),
	('SDK','041','Lord of D.','N','SR','Monster'),
	('SDK','042','The Flute of Summoning Dragon','N','SR','Spell'),
	('SDLI','EN002','Minerva, Ligthsworn Maiden','1E','SR','Monster'),
	('SDLI','EN003','Raiden, Hand of the Ligthsworn','1E','SR','Monster'),
	('SDLI','EN024','Ligthsworn Sanctuary','1E','UR','Spell'),
	('SDLI','EN036','Michael, The Arch-Ligthsworn','1E','UR','Synchro'),
	('SDP','001','Relinquished','N','UR','Ritual'),
	('SDP','020','Blue-Eyes Toon Dragon','N','C','Toon'),
	('SDP','021','Toon Summoned Skull','N','C','Toon'),
	('SDP','022','Manga Ryu-Ran','N','C','Toon'),
	('SDP','023','Toon Mermaid','N','C','Toon'),
	('SDP','024','Toon World','N','C','Spell'),
	('SDP','038','Black Illusion Ritual','N','C','Spell'),
	('SDP','040','Graceful Charity','N','SR','Spell'),
	('SDP','050','Gryphon Wing','N','SR','Trap'),
	('SDSC','EN001','Endymion, The Master Magician','N','UR','Monster'),
	('SDSC','EN002','Disenchanter','N','C','Monster'),
	('SDSC','EN003','Defender, the Magical Knight','N','C','Monster'),
	('SDSC','EN004','Hannibal Necromancer','N','C','Monster'),
	('SDSC','EN006','Dark Red Enchanter','N','C','Monster'),
	('SDSC','EN007','Skilled Dark Magician','N','C','Monster'),
	('SDSC','EN008','Apprentice Magician','N','C','Monster'),
	('SDSC','EN009','Old Vindictive Magician','N','C','Monster'),
	('SDSC','EN011','Breaker the Magical Warrior','N','C','Monster'),
	('SDSC','EN013','Royal Magical Library','N','C','Monster'),
	('SDSC','EN014','Blast Magician','N','C','Monster'),
	('SDSC','EN015','Mythical Beast Cerberus','N','C','Monster'),
	('SDSC','EN016','Mei-Kou, Master of Barriers','N','C','Monster'),
	('SDSC','EN017','Crystal Seer','N','C','Monster'),
	('SDSC','EN018','Magical Exemplar','N','C','Monster'),
	('SDSC','EN019','Magical Citadel of Endymion','N','C','Spell'),
	('SDSC','EN020','Spell Power Grasp','N','C','Spell'),
	('SDSC','EN021','Magicans Unite','N','C','Spell'),
	('SDSC','EN022','Mist Body','N','C','Spell'),
	('SDSC','EN023','Malevolent Nuzzler','N','C','Spell'),
	('SDSC','EN026','Swords of Reveling Light','N','C','Spell'),
	('SDSC','EN027','Mage Power','N','C','Spell'),
	('SDSC','EN028','Terraforming','N','C','Spell'),
	('SDSC','EN029','Enemy Controller','N','C','Spell'),
	('SDSC','EN030','Book Moon','N','C','Spell'),
	('SDSC','EN031','Magical Blast','N','C','Spell'),
	('SDSC','EN032','Magical Dimension','N','C','Spell'),
	('SDSC','EN033','Twister','N','C','Spell'),
	('SDSC','EN034','Field Barrier','N','C','Spell'),
	('SDSC','EN036','Pitch-Black Power Stone','N','C','Trap'),
	('SDSC','EN037','Tower of Babel','N','C','Trap'),
	('SDSC','EN038','Magic Cylinder','N','C','Trap'),
	('SDY','004','Summoned Skull','N','C','Monster'),
	('SDY','006','Dark Magician','N','UR','Monster'),
	('SDY','041','Soul Exchange','N','SR','Spell'),
	('SDY','042','Card Destruction','N','SR','Spell'),
	('SKE','001','Blue-Eyes White Dragon','N','SR','Monster'),
	('SKE','015','Kaiser Sea Horse','N','UR','Monster'),
	('SKE','024','Paladin of White Dragon','N','C','Ritual'),
	('SKE','025','White Dragon Ritual','N','C','Spell'),
	('SKE','041','Shadow Spell','N','SR','Trap'),
	('SRL','012','Maha Vailo','N','SR','Monster'),
	('SRL','015','Minar','N','C','Monster'),
	('SRL','016','Griggle','N','C','Monster'),
	('SRL','042','Ceremonial Bell','N','C','Monster'),
	('SRL','043','Rush Recklessly','N','R','Spell'),
	('SRL','082','Flash Assailant','N','C','Monster');

/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table edition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `edition`;

CREATE TABLE `edition` (
  `edition` varchar(38) NOT NULL,
  `edition_name` varchar(38) NOT NULL,
  PRIMARY KEY (`edition`,`edition_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `edition` WRITE;
/*!40000 ALTER TABLE `edition` DISABLE KEYS */;

INSERT INTO `edition` (`edition`, `edition_name`)
VALUES
	('1E','1st Edition'),
	('LE','Limited Edition'),
	('N','Normal'),
	('UE','Unlimited Edition');

/*!40000 ALTER TABLE `edition` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table packs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `packs`;

CREATE TABLE `packs` (
  `pack` varchar(38) NOT NULL,
  `pack_name` varchar(50) NOT NULL,
  PRIMARY KEY (`pack`,`pack_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `packs` WRITE;
/*!40000 ALTER TABLE `packs` DISABLE KEYS */;

INSERT INTO `packs` (`pack`, `pack_name`)
VALUES
	('DCR','Dark Crisis'),
	('EDSD','Emperor of Darkness Structue Deck'),
	('IOC','Invasion of Chaos'),
	('LC01','Legendary Collection: Gameboard Edition'),
	('LC03','Legendary Collection 3 Yugi\'s World'),
	('LC04','Legendary Collection 4 Joey\'s World'),
	('LCJW','Legendary Collection 4 Joey\'s World Mega Pack'),
	('LCYW','Legendary Collection 3 Yugi\'s World Mega Pack'),
	('LOB','Legend of Blue-Eyes White Dragon'),
	('MRD','Metal Raiders'),
	('MRL','Spell Ruler'),
	('PSV','Pharaoh\'s Servant'),
	('SDHS','Structure Deck: Hero\'s Strike'),
	('SDJ','Starter Deck Joey'),
	('SDK','Starter Deck Kaiba'),
	('SDLI','Realm of Light Structure Deck'),
	('SDP','Starter Deck Pegasus'),
	('SDSC','Spellcaster\'s Command Structure Deck'),
	('SDY','Starter Deck Yugi'),
	('SKE','Starter Deck Kaiba Evolution'),
	('SRL','Spell Ruler');

/*!40000 ALTER TABLE `packs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rarities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rarities`;

CREATE TABLE `rarities` (
  `rarity` varchar(38) NOT NULL,
  `rarity_name` varchar(38) NOT NULL,
  `Description` tinytext,
  PRIMARY KEY (`rarity`,`rarity_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rarities` WRITE;
/*!40000 ALTER TABLE `rarities` DISABLE KEYS */;

INSERT INTO `rarities` (`rarity`, `rarity_name`, `Description`)
VALUES
	('C','Common','Black or white name and no holofoil on the card name or image'),
	('R','Rare','Silver card name and not holofoil image'),
	('SE','Secret Rare','Holographic silver card name and parallel holofoil image'),
	('SR','Super Rare','Non-foil card name and foil card image'),
	('UR','Ultra Rare','Gold card name and holofoil image');

/*!40000 ALTER TABLE `rarities` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
