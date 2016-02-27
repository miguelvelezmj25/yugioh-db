# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.10)
# Database: yugioh_db
# Generation Time: 2016-02-27 16:59:27 +0000
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
  `name` varchar(45) NOT NULL DEFAULT '',
  `edition` varchar(38) NOT NULL,
  `rarity` varchar(38) NOT NULL,
  `type` varchar(38) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`pack`,`id`),
  KEY `FK_cards_edition` (`edition`),
  KEY `FK_cards_rarities` (`rarity`),
  CONSTRAINT `FK_cards_edition` FOREIGN KEY (`edition`) REFERENCES `edition` (`edition`),
  CONSTRAINT `FK_cards_packs` FOREIGN KEY (`pack`) REFERENCES `packs` (`pack`),
  CONSTRAINT `FK_cards_rarities` FOREIGN KEY (`rarity`) REFERENCES `rarities` (`rarity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;

INSERT INTO `cards` (`pack`, `id`, `name`, `edition`, `rarity`, `type`, `created_at`, `updated_at`)
VALUES
	('DCR','002','Nin-Ken','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('DCR','004','Arsenal Summoner','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('DCR','005','Guardian Elma','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('DCR','027','D. D. Warrior Lady','N','SR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('DCR','078','Kelber','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('DCR','081','Legendary Flame Lord','N','R','Ritual','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('IOC','001','Ojama','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('IOC','004','Terrorking Salmon','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('IOC','013','Berserk Gorilla','N','R','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('IOC','019','Inferno','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('IOC','062','Burning Algae','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC01','EN001','Obelisk the Tormentor','LE','UR','Divine','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC01','EN002','Slifer The Sky Dragon','LE','UR','Divine','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC01','EN003','The Winged Dragon of Ra','LE','UR','Divine','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC01','EN004','Blue-Eyes White Dragon','LE','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC01','EN005','Dark Magician','LE','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC01','EN006','Red-Eyes B. Dragon','LE','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC03','EN001','The Seal of Orichalcos','LE','UR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC03','EN002','Dark Necrofear','LE','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC03','EN003','Guardian Eatos','LE','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC03','EN004','Five-Headed Dragon','1E','UR','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC03','EN005','Token','LE','UR','Token','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC03','EN006','Token','LE','UR','Token','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC03','EN007','Token','LE','UR','Token','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC04','EN001','Blue Flame Swordsman','LE','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC04','EN002','Harpie Lady Phoenix Formation','LE','UR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC04','EN003','Card of Last Will','LE','UR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC04','EN004','Token','LE','UR','Token','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC04','EN005','Token','LE','UR','Token','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC04','EN006','Token','LE','UR','Token','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC04','EN007','Token','LE','UR','Token','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC04','EN008','Token','LE','UR','Token','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LC04','EN009','Token','LE','UR','Token','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN012','Alligator\'s Sword','1E','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN054','B. Skull Dragon','1E','R','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN059','Polymerization','1E','SR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN060','Monster Reborn','1E','UR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN066','Scapegoat','1E','SE','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN089','Amazoness Tiger','1E','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN090','Harpie Ladie I','1E','SR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN097','Harpie Dancer','1E','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN098','Elegant Egotist','1E','SR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN099','Harpie\'s Feather Duster','1E','SE','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN171','Launcher Spider','1E','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN189','Pyramid Turtle','1E','SR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN210','Great Mammoth of Goldfine','1E','C','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN211','Book of Life','1E','UR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN230','Labyrinth Tank','1E','C','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN235','Summoned Skull','1E','R','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN240','Fiend Skull Dragon','1E','R','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN241','A Deal with Dark Ruler','1E','R','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN243','Broww, Hunstman of Dark World','1E','SE','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN248','Super Rejuvenation','1E','SR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN250','Gateway to Dark World','1E','SE','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCJW','EN253','The Gates of Dark World','1E','UR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN015','Queen\'s Knight','1E','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN016','Jack\'s Knight','1E','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN017','King\'s Knight','1E','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN047','Magician of Black Chaos','1E','C','Ritual','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN049','Dark Flare Knight','1E','C','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN050','Dragon Master Knight','1E','SR','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN051','Arcana Knight Joker','1E','SE','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN066','Diffusion Wave-Motion','1E','SR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN096','Magical Hats','1E','C','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN100','Magician\'s Circle','1E','SR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN107','Toon Gemini Elf','1E','R','Toon','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN110','Toon Masked Sorcered','1E','R','Toon','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN111','Toon Magician Girl','1E','R','Toon','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN113','Relinquished','1E','R','Ritual','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN150','Gravity Bind','1E','SR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN164','White-Horned Dragon','1E','SR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN166','Summoner Monk','1E','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN169','Machina Sniper','1E','SE','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN176','Mind Control','1E','UR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN196','Rite of Spirit','N','C','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN237','Toon Summoned Skull','1E','R','Toon','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN242','Kycoo The Ghost Destroyer','1E','SE','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN249','Levia-Dragon -  Daedalus','1E','SE','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN290','Dark Mirror Force','1E','R','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LCYW','EN297','Threatening Roar','1E','SE','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LOB','039','Kurama','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LOB','057','Fissure','N','R','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LOB','058','Trap Hole','N','SR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LOB','069','Uraby','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LOB','083','Meda Bat','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LOB','084','Enchanting Mermaid','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LOB','105','Skull Red Bird','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LOB','117','Succubus Knight','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LOB','120','Right Leg of The Forbidden One','N','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LOB','121','Left Leg of The Forbidden One','N','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LOB','122','Right Arm of The Forbidden One','N','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LOB','123','Left Arm of The Forbidden One','N','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('LOB','124','Exodia The Forbidden One','N','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('MFC','083','Dark Cat with White Tail','1E','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('MRD','001','Feral Imp','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('MRD','002','Winged Dragon, Guardian of the Fortress #1','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('MRD','019','Masked Sorcerer','N','R','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('MRD','033','Legoun','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('MRD','042','Rainbow Flower','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('MRD','048','Electric Lizard','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('MRD','067','Dragon Piper','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('MRD','093','Bickuribox','N','C','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('MRD','104','Yado Karu','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN011','Masked HERO Anki','1E','GS','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN012','Blackwing Tamer - Obsidian Hawk Joe','1E','GS','Synchro','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN013','Blackwing - Nothung the Starlight','1E','GS','Synchro','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN014','Dragocytos Corrupted Nethersoul Dragon','1E','GS','Synchro','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN020','Stardust Re-Spark','1E','GS','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN022','Right Leg of the Forbidden One','1E','GR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN023','Left Leg of the Forbidden One','1E','GR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN024','Right Arm of the Forbidden One','1E','GR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN042','Goyo Guardian','1E','GR','Synchro','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN063','Ring of Destruction','1E','GR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN065','Compulsory Evacuation Device','1E','GR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN066','Exchange of the Spirit','1E','GR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN067','Karma Cut','1E','Gr','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN068','Solemn Warning','1E','GR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN069','Traptrix Trap Hole Nightmare','1E','GR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN070','Crush Card Virus','1E','GR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN079','Gladiator Beast Gyzarus','1E','Gr','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN080','Blue-Eyes White Dragon','1E','GR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN087','Naturia Barkion','1E','GR','Synchro','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN088','Formula Synchron','1E','GR','Synchro','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGL2','EN090','Call of the Haunted','1E','GR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN005','Power Tool Mecha Dragon','N','GS','Synchro','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN006','Ancient Pixie Dragon','1E','GS','Synchro','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN015','Dragonecro Nethersoul Dragon','N','GS','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN016','Beelze of the Diabolic Dragons','1E','GS','Synchro','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN019','Number C15: Gimmick Puppet Giant Hunter','1E','GS','XYZ','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN020','Number C40: Gimmick Puppet of Dark Strings','N','GS','XYZ','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN021','Number C88: Gimmick Puppet Disaster Leo','N','GS','XYZ','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN024','Number 31: Embodiment of Punishment','1E','GS','XYZ','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN043','Colossal Fighter','1E','GR','Synchro','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN044','Number 32: Shark Drake','1E','GR','XYZ','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN045','Brotherhood of the Fire Fist - Tiget King','N','GR','XYZ','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN056','Chimeratech','1E','GR','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN069','Bottomless Trap Hole','1E','GR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN078','Blackwing Armend WIng','1E','GR','Synchro','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PGLD','EN080','Icarus Attack','N','GR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PSV','002','Three-Headed Geedo','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PSV','040','Morphing Jar #2','N','R','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PSV','046','Kiseitai','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PSV','058','Dark Bat','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PSV','077','Sword Hunter','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PSV','093','The All-Seeing White Tiger','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('PSV','098','Souls of the Forgotten','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN0008','Darkstorm Dragon','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN001','Blue-Eyes White Dragon','N','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN002','Rabidragon','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN003','Alexandrite Dragon','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN004','Luster Dragon','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN005','Flamvell Guard','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN006','Maiden with Eyes of Blue','N','SR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN007','Rider of the Storm Winds','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN009','Kaiser Glider','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN010','Hieratic Dragon of Tefnuit','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN011','Mirage Dragon','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN012','Divine Dragon Apocralyph','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN013','The White Stone of Legend','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN014','Kaibaman','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN015','Herald of Creation','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN017','Honest','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN018','Shining Angel','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN019','Dragon Shrine','N','SR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDBE','EN040','Azure-Eyes Silver Dragon','N','UR','Synchro','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDHS','EN022','Mask Change','1E','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDHS','EN041','Contrast HERO Chaos','1E','UR','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDHS','EN042','Masked HERO Koga','1E','SR','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDHS','EN043','Masked HERO Divine Wind','1E','SR','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDHS','EN044','Masked HERO Dark Law','1E','SR','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDHS','EN045','Elemental HERO Great Tornado','1E','C','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDJ','001','Red-Eyes B. Dragon','N','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDJ','003','Baby Dragon','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDJ','014','Milus Radiant','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDJ','015','Time Wizard','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDJ','021','White Magical Hat','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDJ','023','Thousand Dragon','N','C','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDK','001','Blue-Eyes White Dragon','N','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDK','026','La Jinn the Mystical Genie of the Lamp','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDK','041','Lord of D.','N','SR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDK','042','The Flute of Summoning Dragon','N','SR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDLI','EN002','Minerva, Ligthsworn Maiden','1E','SR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDLI','EN003','Raiden, Hand of the Ligthsworn','1E','SR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDLI','EN024','Ligthsworn Sanctuary','1E','UR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDLI','EN036','Michael, The Arch-Ligthsworn','1E','UR','Synchro','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDP','001','Relinquished','N','UR','Ritual','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDP','012','Jigen Bakudan','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDP','020','Blue-Eyes Toon Dragon','N','C','Toon','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDP','021','Toon Summoned Skull','N','C','Toon','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDP','022','Manga Ryu-Ran','N','C','Toon','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDP','023','Toon Mermaid','N','C','Toon','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDP','024','Toon World','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDP','038','Black Illusion Ritual','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDP','040','Graceful Charity','N','SR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDP','050','Gryphon Wing','N','SR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN001','Endymion, The Master Magician','N','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN002','Disenchanter','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN003','Defender, the Magical Knight','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN004','Hannibal Necromancer','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN006','Dark Red Enchanter','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN007','Skilled Dark Magician','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN008','Apprentice Magician','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN009','Old Vindictive Magician','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN011','Breaker the Magical Warrior','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN013','Royal Magical Library','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN014','Blast Magician','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN015','Mythical Beast Cerberus','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN016','Mei-Kou, Master of Barriers','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN017','Crystal Seer','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN018','Magical Exemplar','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN019','Magical Citadel of Endymion','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN020','Spell Power Grasp','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN021','Magicans Unite','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN022','Mist Body','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN023','Malevolent Nuzzler','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN026','Swords of Reveling Light','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN027','Mage Power','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN028','Terraforming','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN029','Enemy Controller','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN030','Book Moon','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN031','Magical Blast','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN032','Magical Dimension','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN033','Twister','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN034','Field Barrier','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN036','Pitch-Black Power Stone','N','C','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN037','Tower of Babel','N','C','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDSC','EN038','Magic Cylinder','N','C','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDY','004','Summoned Skull','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDY','006','Dark Magician','N','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDY','014','Dragon Zombie','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDY','041','Soul Exchange','N','SR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDY','042','Card Destruction','N','SR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDY','043','Trap Master','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SDY','046','Man-Eater Bug','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','001','Blue-Eyes White Dragon','N','SR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','004','Rogue Doll','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','006','Uraby','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','007','Mystic Horseman','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','010','Skull Red Bird','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKe','011','Hyozanryu','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','012','Opticlops','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','014','Luster Dragon #2','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','015','Kaiser Sea Horse','N','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','018','Trap Master','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','019','Hane-Hane','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','020','Witch of the Black Forest','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('Ske','021','Mystic Tomato','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','022','Mad Sword Beast','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','024','Paladin of White Dragon','N','C','Ritual','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','025','White Dragon Ritual','N','C','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SKE','041','Shadow Spell','N','SR','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SR01','EN000','Ehther the Heavenly Monarch','1E','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SR01','EN001','Erebus the Underworld Monarch','1E','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SR01','EN002','Eidos the Underworld Squire','1E','SR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SR01','EN003','Edea the Heavenly Squire','1E','SR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SR01','EN023','Pantheism of the Monarchs','1E','SR','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SR01','ENTKN','Token','1E','C','Token','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SRL','012','Maha Vailo','N','SR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SRL','015','Minar','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SRL','016','Griggle','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SRL','042','Ceremonial Bell','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SRL','043','Rush Recklessly','N','R','Spell','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SRL','058','Stone Ogre Grotto','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('SRL','082','Flash Assailant','N','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','DK','Duelist Kingdom','N','UR','Hist','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENA00','Electromagnetic Turtle','LE','SE','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENA01','Black Luster Soldier','1E','C','Ritual','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENA02','Black Luster Soldier - Envoy of the Beginning','1E','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENA04','Dark Magician Girl','1E','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENA08','Catapult Turtle','1E','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENA17','Exodia the Forbidden One','1E','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENA18','Right Leg of the Forbidden One','1E','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENA19','Left Leg of the Forbidden One','1E','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENA20','Right Arm of the Forbidden One','1E','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENA21','Left Arms of the Forbidden One','1E','UR','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENA22','Kuriboh','1E','C','Monster','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENA41','Gaia the Dragon Champion','N','C','Fusion','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENB00','Dark Renewal','LE','SE','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENC00','Black Illusion','LE','SE','Trap','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENG01','Slifer the Sky Dragon','LE','UR','Divine','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENG02','Obelisk the Tormentor','LE','UR','Divine','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENG03','The Winged Dragon of Ra','LE','UR','Divine','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','ENTKN','Token','LE','UR','Token','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','GKH','Glory of the King\'s Hand','N','UR','Hist','2016-02-25 21:46:50','2016-02-25 21:47:23'),
	('YGLD','SSK','Set Sail for the Kingdom','N','UR','Hist','2016-02-25 21:46:50','2016-02-25 21:47:23');

/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table edition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `edition`;

CREATE TABLE `edition` (
  `edition` varchar(38) NOT NULL,
  `edition_name` varchar(38) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`edition`,`edition_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `edition` WRITE;
/*!40000 ALTER TABLE `edition` DISABLE KEYS */;

INSERT INTO `edition` (`edition`, `edition_name`, `created_at`, `updated_at`)
VALUES
	('1E','1st Edition','2016-02-25 21:41:31','2016-02-25 21:47:39'),
	('LE','Limited Edition','2016-02-25 21:41:38','2016-02-25 21:47:39'),
	('N','Normal','2016-02-25 21:41:41','2016-02-25 21:47:39'),
	('UE','Unlimited Edition','2016-02-25 21:41:44','2016-02-25 21:47:39');

/*!40000 ALTER TABLE `edition` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table packs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `packs`;

CREATE TABLE `packs` (
  `pack` varchar(38) NOT NULL,
  `pack_name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`pack`,`pack_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `packs` WRITE;
/*!40000 ALTER TABLE `packs` DISABLE KEYS */;

INSERT INTO `packs` (`pack`, `pack_name`, `created_at`, `updated_at`)
VALUES
	('DCR','Dark Crisis','2016-02-25 21:44:29','2016-02-25 21:47:58'),
	('IOC','Invasion of Chaos','2016-02-25 21:44:29','2016-02-25 21:47:58'),
	('LC01','Legendary Collection: Gameboard Edition','2016-02-25 21:44:33','2016-02-25 21:47:58'),
	('LC03','Legendary Collection 3 Yugi\'s World','2016-02-25 21:44:35','2016-02-25 21:47:58'),
	('LC04','Legendary Collection 4 Joey\'s World','2016-02-25 21:44:36','2016-02-25 21:47:58'),
	('LCJW','Legendary Collection 4 Joey\'s World Mega Pack','2016-02-25 21:44:37','2016-02-25 21:47:58'),
	('LCYW','Legendary Collection 3 Yugi\'s World Mega Pack','2016-02-25 21:44:38','2016-02-25 21:47:58'),
	('LOB','Legend of Blue-Eyes White Dragon','2016-02-25 21:44:38','2016-02-25 21:47:58'),
	('MFC','Magician\'s Force','2016-02-25 21:44:39','2016-02-25 21:47:58'),
	('MRD','Metal Raiders','2016-02-25 21:45:12','2016-02-25 21:47:58'),
	('MRL','Spell Ruler','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('PGL2','Premium Gold: Return of the Bling ','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('PGLD','Premium Gold','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('PSV','Pharaoh\'s Servant','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('SDBE','Saga of Blue-Eyes White Dragon','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('SDHS','Structure Deck: Hero\'s Strike','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('SDJ','Starter Deck Joey','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('SDK','Starter Deck Kaiba','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('SDLI','Realm of Light Structure Deck','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('SDP','Starter Deck Pegasus','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('SDSC','Spellcaster\'s Command Structure Deck','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('SDY','Starter Deck Yugi','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('SKE','Starter Deck Kaiba Evolution','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('SR01','Emperor of Darkness Structue Deck','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('SRL','Spell Ruler','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('YGLD','Yugi\'s Legendary Decks','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('YSKR','Starter Deck Kaiba Reloaded','2016-02-25 21:45:41','2016-02-25 21:47:58'),
	('YSYR','Starter Deck Yugi Reloaded','2016-02-25 21:45:41','2016-02-25 21:47:58');

/*!40000 ALTER TABLE `packs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table rarities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `rarities`;

CREATE TABLE `rarities` (
  `rarity` varchar(38) NOT NULL,
  `rarity_name` varchar(38) NOT NULL,
  `description` tinytext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`rarity`,`rarity_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rarities` WRITE;
/*!40000 ALTER TABLE `rarities` DISABLE KEYS */;

INSERT INTO `rarities` (`rarity`, `rarity_name`, `description`, `created_at`, `updated_at`)
VALUES
	('C','Common','Black or white name and no holofoil on the card name or image','2016-02-25 21:43:31','2016-02-25 21:48:34'),
	('GR','Gold Rare','Gold foil over the card name and holographic gold foil artwork like an Ultra Rare, but also features gold foil over the artwork frame, text border, and card border','2016-02-25 21:43:35','2016-02-25 21:48:34'),
	('GS','Gold Secret','Same gold foil patterns as Gold Rare over the card border, card name, artwork, artwork frame, Level/Rank stars (for monsters), and text box border, but also features the Secret Rare texture pattern wherever this foil appears','2016-02-25 21:43:36','2016-02-25 21:48:34'),
	('R','Rare','Silver card name and not holofoil image','2016-02-25 21:43:37','2016-02-25 21:48:34'),
	('SE','Secret Rare','Holographic silver card name and parallel holofoil image','2016-02-25 21:43:38','2016-02-25 21:48:34'),
	('SR','Super Rare','Non-foil card name and foil card image','2016-02-25 21:43:39','2016-02-25 21:48:34'),
	('UR','Ultra Rare','Gold card name and holofoil image','2016-02-25 21:43:41','2016-02-25 21:48:34');

/*!40000 ALTER TABLE `rarities` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
