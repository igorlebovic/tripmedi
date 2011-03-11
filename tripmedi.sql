-- MySQL dump 10.13  Distrib 5.1.54, for apple-darwin10.6.0 (i386)
--
-- Host: localhost    Database: tripmedi
-- ------------------------------------------------------
-- Server version	5.1.54

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_country`
--

DROP TABLE IF EXISTS `app_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(75) NOT NULL,
  `FIFA_code` varchar(5) NOT NULL,
  `IOC_code` varchar(5) NOT NULL,
  `ISO_alpha_2_code` varchar(2) NOT NULL,
  `ISO_alpha_3_code` varchar(3) NOT NULL,
  `ISO_numeric_code` varchar(10) NOT NULL,
  `ISO_3166_2_code` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=250 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_country`
--

LOCK TABLES `app_country` WRITE;
/*!40000 ALTER TABLE `app_country` DISABLE KEYS */;
INSERT INTO `app_country` VALUES (1,'Afghanistan','AFG','AFG','AF','AFG','4','ISO 3166-2:AF'),(2,'Netherlands Antilles','ANT','AHO','AN','ANT','530','ISO 3166-2:AN'),(3,'Albania','ALB','ALB','AL','ALB','8','ISO 3166-2:AL'),(4,'Algeria','ALG','ALG','DZ','DZA','12','ISO 3166-2:DZ'),(5,'Andorra','AND','AND','AD','AND','20','ISO 3166-2:AD'),(6,'Angola','ANG','ANG','AO','AGO','24','ISO 3166-2:AO'),(7,'Antigua and Barbuda','ATG','ANT','AG','ATG','28','ISO 3166-2:AG'),(8,'Argentina','ARG','ARG','AR','ARG','32','ISO 3166-2:AR'),(9,'Armenia','ARM','ARM','AM','ARM','51','ISO 3166-2:AM'),(10,'Aruba','ARU','ARU','AW','ABW','533','ISO 3166-2:AW'),(11,'American Samoa','ASA','ASA','AS','ASM','16','ISO 3166-2:AS'),(12,'Australia','AUS','AUS','AU','AUS','36','ISO 3166-2:AU'),(13,'Austria','AUT','AUT','AT','AUT','40','ISO 3166-2:AT'),(14,'Azerbaijan','AZE','AZE','AZ','AZE','31','ISO 3166-2:AZ'),(15,'Bahamas','BAH','BAH','BS','BHS','44','ISO 3166-2:BS'),(16,'Bangladesh','BAN','BAN','BD','BGD','50','ISO 3166-2:BD'),(17,'Barbados','BRB','BAR','BB','BRB','52','ISO 3166-2:BB'),(18,'Burundi','BDI','BDI','BI','BDI','108','ISO 3166-2:BI'),(19,'Belgium','BEL','BEL','BE','BEL','56','ISO 3166-2:BE'),(20,'Benin','BEN','BEN','BJ','BEN','204','ISO 3166-2:BJ'),(21,'Bermuda','BER','BER','BM','BMU','60','ISO 3166-2:BM'),(22,'Bhutan','BHU','BHU','BT','BTN','64','ISO 3166-2:BT'),(23,'Bosnia and Herzegovina','BIH','BIH','BA','BIH','70','ISO 3166-2:BA'),(24,'Belize','BLZ','BIZ','BZ','BLZ','84','ISO 3166-2:BZ'),(25,'Belarus','BLR','BLR','BY','BLR','112','ISO 3166-2:BY'),(26,'Bolivia, Plurinational State of','BOL','BOL','BO','BOL','68','ISO 3166-2:BO'),(27,'Botswana','BOT','BOT','BW','BWA','72','ISO 3166-2:BW'),(28,'Brazil','BRA','BRA','BR','BRA','76','ISO 3166-2:BR'),(29,'Bahrain','BHR','BRN','BH','BHR','48','ISO 3166-2:BH'),(30,'Brunei Darussalam','BRU','BRU','BN','BRN','96','ISO 3166-2:BN'),(31,'Bulgaria','BUL','BUL','BG','BGR','100','ISO 3166-2:BG'),(32,'Burkina Faso','BFA','BUR','BF','BFA','854','ISO 3166-2:BF'),(33,'Central African Republic','CTA','CAF','CF','CAF','140','ISO 3166-2:CF'),(34,'Cambodia','CAM','CAM','KH','KHM','116','ISO 3166-2:KH'),(35,'Canada','CAN','CAN','CA','CAN','124','ISO 3166-2:CA'),(36,'Cayman Islands','CAY','CAY','KY','CYM','136','ISO 3166-2:KY'),(37,'Congo','CGO','CGO','CG','COG','178','ISO 3166-2:CG'),(38,'Chad','CHA','CHA','TD','TCD','148','ISO 3166-2:TD'),(39,'Chile','CHI','CHI','CL','CHL','152','ISO 3166-2:CL'),(40,'China','CHN','CHN','CN','CHN','156','ISO 3166-2:CN'),(41,'CÃ´te d\'Ivoire','CIV','CIV','CI','CIV','384','ISO 3166-2:CI'),(42,'Cameroon','CMR','CMR','CM','CMR','120','ISO 3166-2:CM'),(43,'Congo, the Democratic Republic of the','COD','COD','CD','COD','180','ISO 3166-2:CD'),(44,'Cook Islands','COK','COK','CK','COK','184','ISO 3166-2:CK'),(45,'Colombia','COL','COL','CO','COL','170','ISO 3166-2:CO'),(46,'Comoros','COM','COM','KM','COM','174','ISO 3166-2:KM'),(47,'Cape Verde','CPV','CPV','CV','CPV','132','ISO 3166-2:CV'),(48,'Costa Rica','CRC','CRC','CR','CRI','188','ISO 3166-2:CR'),(49,'Croatia','CRO','CRO','HR','HRV','191','ISO 3166-2:HR'),(50,'Cuba','CUB','CUB','CU','CUB','192','ISO 3166-2:CU'),(51,'Cyprus','CYP','CYP','CY','CYP','196','ISO 3166-2:CY'),(52,'Czech Republic','CZE','CZE','CZ','CZE','203','ISO 3166-2:CZ'),(53,'Denmark','DEN','DEN','DK','DNK','208','ISO 3166-2:DK'),(54,'Djibouti','DJI','DJI','DJ','DJI','262','ISO 3166-2:DJ'),(55,'Dominica','DMA','DMA','DM','DMA','212','ISO 3166-2:DM'),(56,'Dominican Republic','DOM','DOM','DO','DOM','214','ISO 3166-2:DO'),(57,'Ecuador','ECU','ECU','EC','ECU','218','ISO 3166-2:EC'),(58,'Egypt','EGY','EGY','EG','EGY','818','ISO 3166-2:EG'),(59,'Eritrea','ERI','ERI','ER','ERI','232','ISO 3166-2:ER'),(60,'El Salvador','SLV','ESA','SV','SLV','222','ISO 3166-2:SV'),(61,'Spain','ESP','ESP','ES','ESP','724','ISO 3166-2:ES'),(62,'Estonia','EST','EST','EE','EST','233','ISO 3166-2:EE'),(63,'Ethiopia','ETH','ETH','ET','ETH','231','ISO 3166-2:ET'),(64,'Fiji','FIJ','FIJ','FJ','FJI','242','ISO 3166-2:FJ'),(65,'Finland','FIN','FIN','FI','FIN','246','ISO 3166-2:FI'),(66,'France','FRA','FRA','FR','FRA','250','ISO 3166-2:FR'),(67,'Faroe Islands','FRO','FRO','FO','FRO','234','ISO 3166-2:FO'),(68,'Micronesia, Federated States of','','FSM','FM','FSM','583','ISO 3166-2:FM'),(69,'Gabon','GAB','GAB','GA','GAB','266','ISO 3166-2:GA'),(70,'Gambia','GAM','GAM','GM','GMB','270','ISO 3166-2:GM'),(71,'United Kingdom','','GBR','GB','GBR','826','ISO 3166-2:GB'),(72,'Guinea-Bissau','GNB','GBS','GW','GNB','624','ISO 3166-2:GW'),(73,'Georgia','GEO','GEO','GE','GEO','268','ISO 3166-2:GE'),(74,'Equatorial Guinea','EQG','GEQ','GQ','GNQ','226','ISO 3166-2:GQ'),(75,'Germany','GER','GER','DE','DEU','276','ISO 3166-2:DE'),(76,'Ghana','GHA','GHA','GH','GHA','288','ISO 3166-2:GH'),(77,'Greece','GRE','GRE','GR','GRC','300','ISO 3166-2:GR'),(78,'Grenada','GRN','GRN','GD','GRD','308','ISO 3166-2:GD'),(79,'Guatemala','GUA','GUA','GT','GTM','320','ISO 3166-2:GT'),(80,'Guinea','GUI','GUI','GN','GIN','324','ISO 3166-2:GN'),(81,'Guam','GUM','GUM','GU','GUM','316','ISO 3166-2:GU'),(82,'Guyana','GUY','GUY','GY','GUY','328','ISO 3166-2:GY'),(83,'Haiti','HAI','HAI','HT','HTI','332','ISO 3166-2:HT'),(84,'Hong Kong','HKG','HKG','HK','HKG','344','ISO 3166-2:HK'),(85,'Honduras','HON','HON','HN','HND','340','ISO 3166-2:HN'),(86,'Hungary','HUN','HUN','HU','HUN','348','ISO 3166-2:HU'),(87,'Indonesia','IDN','INA','ID','IDN','360','ISO 3166-2:ID'),(88,'India','IND','IND','IN','IND','356','ISO 3166-2:IN'),(89,'Iran, Islamic Republic of','IRN','IRI','IR','IRN','364','ISO 3166-2:IR'),(90,'Ireland','IRL','IRL','IE','IRL','372','ISO 3166-2:IE'),(91,'Iraq','IRQ','IRQ','IQ','IRQ','368','ISO 3166-2:IQ'),(92,'Iceland','ISL','ISL','IS','ISL','352','ISO 3166-2:IS'),(93,'Israel','ISR','ISR','IL','ISR','376','ISO 3166-2:IL'),(94,'Virgin Islands, U.S.','VIR','ISV','VI','VIR','850','ISO 3166-2:VI'),(95,'Italy','ITA','ITA','IT','ITA','380','ISO 3166-2:IT'),(96,'Virgin Islands, British','VGB','IVB','VG','VGB','92','ISO 3166-2:VG'),(97,'Jamaica','JAM','JAM','JM','JAM','388','ISO 3166-2:JM'),(98,'Jordan','JOR','JOR','JO','JOR','400','ISO 3166-2:JO'),(99,'Japan','JPN','JPN','JP','JPN','392','ISO 3166-2:JP'),(100,'Kazakhstan','KAZ','KAZ','KZ','KAZ','398','ISO 3166-2:KZ'),(101,'Kenya','KEN','KEN','KE','KEN','404','ISO 3166-2:KE'),(102,'Kyrgyzstan','KGZ','KGZ','KG','KGZ','417','ISO 3166-2:KG'),(103,'Kiribati','','KIR','KI','KIR','296','ISO 3166-2:KI'),(104,'Korea, Republic of','KOR','KOR','KR','KOR','410','ISO 3166-2:KR'),(105,'Saudi Arabia','KSA','KSA','SA','SAU','682','ISO 3166-2:SA'),(106,'Kuwait','KUW','KUW','KW','KWT','414','ISO 3166-2:KW'),(107,'Lao People\'s Democratic Republic','LAO','LAO','LA','LAO','418','ISO 3166-2:LA'),(108,'Latvia','LVA','LAT','LV','LVA','428','ISO 3166-2:LV'),(109,'Libyan Arab Jamahiriya','LBY','LBA','LY','LBY','434','ISO 3166-2:LY'),(110,'Liberia','LBR','LBR','LR','LBR','430','ISO 3166-2:LR'),(111,'Saint Lucia','LCA','LCA','LC','LCA','662','ISO 3166-2:LC'),(112,'Lesotho','LES','LES','LS','LSO','426','ISO 3166-2:LS'),(113,'Lebanon','LIB','LIB','LB','LBN','422','ISO 3166-2:LB'),(114,'Liechtenstein','LIE','LIE','LI','LIE','438','ISO 3166-2:LI'),(115,'Lithuania','LTU','LTU','LT','LTU','440','ISO 3166-2:LT'),(116,'Luxembourg','LUX','LUX','LU','LUX','442','ISO 3166-2:LU'),(117,'Macau','MAC','MAC','MO','MAC','446','ISO 3166-2:MO'),(118,'Madagascar','MAD','MAD','MG','MDG','450','ISO 3166-2:MG'),(119,'Morocco','MAR','MAR','MA','MAR','504','ISO 3166-2:MA'),(120,'Malaysia','MAS','MAS','MY','MYS','458','ISO 3166-2:MY'),(121,'Malawi','MWI','MAW','MW','MWI','454','ISO 3166-2:MW'),(122,'Moldova, Republic of','MDA','MDA','MD','MDA','498','ISO 3166-2:MD'),(123,'Maldives','MDV','MDV','MV','MDV','462','ISO 3166-2:MV'),(124,'Mexico','MEX','MEX','MX','MEX','484','ISO 3166-2:MX'),(125,'Mongolia','MGL','MGL','MN','MNG','496','ISO 3166-2:MN'),(126,'Marshall Islands','','MHL','MH','MHL','584','ISO 3166-2:MH'),(127,'Macedonia, the former Yugoslav Republic of','MKD','MKD','MK','MKD','807','ISO 3166-2:MK'),(128,'Mali','MLI','MLI','ML','MLI','466','ISO 3166-2:ML'),(129,'Malta','MLT','MLT','MT','MLT','470','ISO 3166-2:MT'),(130,'Montenegro','MNE','MNE','ME','MNE','499','ISO 3166-2:ME'),(131,'Monaco','','MON','MC','MCO','492','ISO 3166-2:MC'),(132,'Mozambique','MOZ','MOZ','MZ','MOZ','508','ISO 3166-2:MZ'),(133,'Mauritius','MRI','MRI','MU','MUS','480','ISO 3166-2:MU'),(134,'Mauritania','MTN','MTN','MR','MRT','478','ISO 3166-2:MR'),(135,'Myanmar','MYA','MYA','MM','MMR','104','ISO 3166-2:MM'),(136,'Namibia','NAM','NAM','NA','NAM','516','ISO 3166-2:NA'),(137,'Nicaragua','NCA','NCA','NI','NIC','558','ISO 3166-2:NI'),(138,'Netherlands','NED','NED','NL','NLD','528','ISO 3166-2:NL'),(139,'Nepal','NEP','NEP','NP','NPL','524','ISO 3166-2:NP'),(140,'Nigeria','NGA','NGR','NG','NGA','566','ISO 3166-2:NG'),(141,'Niger','NIG','NIG','NE','NER','562','ISO 3166-2:NE'),(142,'Norway','NOR','NOR','NO','NOR','578','ISO 3166-2:NO'),(143,'Nauru','','NRU','NR','NRU','520','ISO 3166-2:NR'),(144,'New Zealand','NZL','NZL','NZ','NZL','554','ISO 3166-2:NZ'),(145,'Oman','OMA','OMA','OM','OMN','512','ISO 3166-2:OM'),(146,'Pakistan','PAK','PAK','PK','PAK','586','ISO 3166-2:PK'),(147,'Panama','PAN','PAN','PA','PAN','591','ISO 3166-2:PA'),(148,'Paraguay','PAR','PAR','PY','PRY','600','ISO 3166-2:PY'),(149,'Peru','PER','PER','PE','PER','604','ISO 3166-2:PE'),(150,'Philippines','PHI','PHI','PH','PHL','608','ISO 3166-2:PH'),(151,'Palestinian Territory, Occupied','PLE','PLE','PS','PSE','275','ISO 3166-2:PS'),(152,'Palau','','PLW','PW','PLW','585','ISO 3166-2:PW'),(153,'Papua New Guinea','PNG','PNG','PG','PNG','598','ISO 3166-2:PG'),(154,'Poland','POL','POL','PL','POL','616','ISO 3166-2:PL'),(155,'Portugal','POR','POR','PT','PRT','620','ISO 3166-2:PT'),(156,'Korea, Democratic People\'s Republic of','PRK','PRK','KP','PRK','408','ISO 3166-2:KP'),(157,'Puerto Rico','PUR','PUR','PR','PRI','630','ISO 3166-2:PR'),(158,'Qatar','QAT','QAT','QA','QAT','634','ISO 3166-2:QA'),(159,'Romania','ROU','ROU','RO','ROU','642','ISO 3166-2:RO'),(160,'South Africa','RSA','RSA','ZA','ZAF','710','ISO 3166-2:ZA'),(161,'Russian Federation','RUS','RUS','RU','RUS','643','ISO 3166-2:RU'),(162,'Rwanda','RWA','RWA','RW','RWA','646','ISO 3166-2:RW'),(163,'Samoa','SAM','SAM','WS','WSM','882','ISO 3166-2:WS'),(164,'Senegal','SEN','SEN','SN','SEN','686','ISO 3166-2:SN'),(165,'Seychelles','SEY','SEY','SC','SYC','690','ISO 3166-2:SC'),(166,'Singapore','SIN','SIN','SG','SGP','702','ISO 3166-2:SG'),(167,'Saint Kitts and Nevis','SKN','SKN','KN','KNA','659','ISO 3166-2:KN'),(168,'Sierra Leone','SLE','SLE','SL','SLE','694','ISO 3166-2:SL'),(169,'Slovenia','SVN','SLO','SI','SVN','705','ISO 3166-2:SI'),(170,'San Marino','SMR','SMR','SM','SMR','674','ISO 3166-2:SM'),(171,'Solomon Islands','SOL','SOL','SB','SLB','90','ISO 3166-2:SB'),(172,'Somalia','SOM','SOM','SO','SOM','706','ISO 3166-2:SO'),(173,'Serbia','SRB','SRB','RS','SRB','688','ISO 3166-2:RS'),(174,'Sri Lanka','SRI','SRI','LK','LKA','144','ISO 3166-2:LK'),(175,'Sao Tome and Principe','STP','STP','ST','STP','678','ISO 3166-2:ST'),(176,'Sudan','SUD','SUD','SD','SDN','736','ISO 3166-2:SD'),(177,'Switzerland','SUI','SUI','CH','CHE','756','ISO 3166-2:CH'),(178,'Suriname','SUR','SUR','SR','SUR','740','ISO 3166-2:SR'),(179,'Slovakia','SVK','SVK','SK','SVK','703','ISO 3166-2:SK'),(180,'Sweden','SWE','SWE','SE','SWE','752','ISO 3166-2:SE'),(181,'Swaziland','SWZ','SWZ','SZ','SWZ','748','ISO 3166-2:SZ'),(182,'Syrian Arab Republic','SYR','SYR','SY','SYR','760','ISO 3166-2:SY'),(183,'Tanzania, United Republic of','TAN','TAN','TZ','TZA','834','ISO 3166-2:TZ'),(184,'Tonga','TGA','TGA','TO','TON','776','ISO 3166-2:TO'),(185,'Thailand','THA','THA','TH','THA','764','ISO 3166-2:TH'),(186,'Tajikistan','TJK','TJK','TJ','TJK','762','ISO 3166-2:TJ'),(187,'Turkmenistan','TKM','TKM','TM','TKM','795','ISO 3166-2:TM'),(188,'Timor-Leste','TLS','TLS','TL','TLS','626','ISO 3166-2:TL'),(189,'Togo','TOG','TOG','TG','TGO','768','ISO 3166-2:TG:'),(190,'Chinese Taipei, Taiwan','TPE','TPE','TW','TWN','158','ISO 3166-2:TW'),(191,'Trinidad and Tobago','TRI','TRI','TT','TTO','780','ISO 3166-2:TT'),(192,'Tunisia','TUN','TUN','TN','TUN','788','ISO 3166-2:TN'),(193,'Turkey','TUR','TUR','TR','TUR','792','ISO 3166-2:TR'),(194,'Tuvalu','','TUV','TV','TUV','798','ISO 3166-2:TV'),(195,'United Arab Emirates','UAE','UAE','AE','ARE','784','ISO 3166-2:AE'),(196,'Uganda','UGA','UGA','UG','UGA','800','ISO 3166-2:UG'),(197,'Ukraine','UKR','UKR','UA','UKR','804','ISO 3166-2:UA'),(198,'Uruguay','URU','URU','UY','URY','858','ISO 3166-2:UY'),(199,'United States','USA','USA','US','USA','840','ISO 3166-2:US'),(200,'Uzbekistan','UZB','UZB','UZ','UZB','860','ISO 3166-2:UZ'),(201,'Vanuatu','VAN','VAN','VU','VUT','548','ISO 3166-2:VU'),(202,'Venezuela, Bolivarian Republic of','VEN','VEN','VE','VEN','862','ISO 3166-2:VE'),(203,'Viet Nam','VIE','VIE','VN','VNM','704','ISO 3166-2:VN'),(204,'Saint Vincent and the Grenadines','VIN','VIN','VC','VCT','670','ISO 3166-2:VC'),(205,'Yemen','YEM','YEM','YE','YEM','887','ISO 3166-2:YE'),(206,'Zambia','ZAM','ZAM','ZM','ZMB','894','ISO 3166-2:ZM'),(207,'Zimbabwe','ZIM','ZIM','ZW','ZWE','716','ISO 3166-2:ZW'),(208,'Anguilla','AIA','','AI','AIA','660','ISO 3166-2:AI'),(209,'England','ENG','','','','',''),(210,'Montserrat','MSR','','MS','MSR','500','ISO 3166-2:MS'),(211,'New Caledonia','NCL','','NC','NCL','540','ISO 3166-2:NC'),(212,'Northern Ireland','NIR','','','','',''),(213,'Scotland','SCO','','','','',''),(214,'Turks and Caicos Islands','TCA','','TC','TCA','796','ISO 3166-2:TC'),(215,'Ã–land Islands','','','AX','ALA','248','ISO 3166-2:AX'),(216,'Antarctica','','','AQ','ATA','10','ISO 3166-2:AQ'),(217,'Bouvet Island','','','BV','BVT','74','ISO 3166-2:BV'),(218,'British Indian Ocean Territory','','','IO','IOT','86','ISO 3166-2:IO'),(219,'Christmas Island','','','CX','CXR','162','ISO 3166-2:CX'),(220,'Cocos (Keeling) Islands','','','CC','CCK','166','ISO 3166-2:CC'),(221,'Falkland Islands (Malvinas)','','','FK','FLK','238','ISO 3166-2:FK'),(222,'French Guiana','','','GF','GUF','254','ISO 3166-2:GF'),(223,'French Polynesia','','','PF','PYF','258','ISO 3166-2:PF'),(224,'French Southern Territories','','','TF','ATF','260','ISO 3166-2:TF'),(225,'Gibraltar','','','GI','GIB','292','ISO 3166-2:GI'),(226,'Greenland','','','GL','GRL','304','ISO 3166-2:GL'),(227,'Guadeloupe','','','GP','GLP','312','ISO 3166-2:GP'),(228,'Guernsey','','','GG','GGY','831','ISO 3166-2:GG'),(229,'Heard Island and McDonald Islands','','','HM','HMD','334','ISO 3166-2:HM'),(230,'Holy See (Vatican City State)','','','VA','VAT','336','ISO 3166-2:VA'),(231,'Isle of Man','','','IM','IMN','833','ISO 3166-2:IM'),(232,'Jersey','','','JE','JEY','832','ISO 3166-2:JE'),(233,'Martinique','','','MQ','MTQ','474','ISO 3166-2:MQ'),(234,'Mayotte','','','YT','MYT','175','ISO 3166-2:YT'),(235,'Niue','','','NU','NIU','570','ISO 3166-2:NU'),(236,'Norfolk Island','','','NF','NFK','574','ISO 3166-2:NF'),(237,'Northern Mariana Islands','','','MP','MNP','580','ISO 3166-2:MP'),(238,'Pitcairn','','','PN','PCN','612','ISO 3166-2:PN'),(239,'RÃ©union','','','RE','REU','638','ISO 3166-2:RE'),(240,'Saint BarthÃ©lemy','','','BL','BLM','652','ISO 3166-2:BL'),(241,'Saint Helena, Ascension and Tristan da Cunha','','','SH','SHN','654','ISO 3166-2:SH'),(242,'Saint Martin','','','MF','MAF','663','ISO 3166-2:MF'),(243,'Saint Pierre and Miquelon','','','PM','SPM','666','ISO 3166-2:PM'),(244,'South Georgia and the South Sandwich Islands','','','GS','SGS','239','ISO 3166-2:GS'),(245,'Svalbard and Jan Mayen','','','SJ','SJM','744','ISO 3166-2:SJ'),(246,'Tokelau','','','TK','TKL','772','ISO 3166-2:TK'),(247,'United States Minor Outlying Islands','','','UM','UMI','581','ISO 3166-2:UM'),(248,'Wallis and Futuna','','','WF','WLF','876','ISO 3166-2:WF'),(249,'Western Sahara','','','EH','ESH','732','ISO 3166-2:EH');
/*!40000 ALTER TABLE `app_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_countryexchangerate`
--

DROP TABLE IF EXISTS `app_countryexchangerate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_countryexchangerate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `exchange_rate` decimal(19,8) NOT NULL,
  `last_refreshed_timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_countryexchangerate_534dd89` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_countryexchangerate`
--

LOCK TABLES `app_countryexchangerate` WRITE;
/*!40000 ALTER TABLE `app_countryexchangerate` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_countryexchangerate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_countryregion`
--

DROP TABLE IF EXISTS `app_countryregion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_countryregion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_countryregion`
--

LOCK TABLES `app_countryregion` WRITE;
/*!40000 ALTER TABLE `app_countryregion` DISABLE KEYS */;
INSERT INTO `app_countryregion` VALUES (1,'Asia'),(2,'Middle East'),(3,'Europe'),(4,'North America'),(5,'South America'),(6,'Latin America'),(7,'Southeast Asia'),(8,'Oceania');
/*!40000 ALTER TABLE `app_countryregion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_countryregion_region_countries`
--

DROP TABLE IF EXISTS `app_countryregion_region_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_countryregion_region_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryregion_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countryregion_id` (`countryregion_id`,`country_id`),
  KEY `app_countryregion_region_countries_9ef63bd7` (`countryregion_id`),
  KEY `app_countryregion_region_countries_534dd89` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=459 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_countryregion_region_countries`
--

LOCK TABLES `app_countryregion_region_countries` WRITE;
/*!40000 ALTER TABLE `app_countryregion_region_countries` DISABLE KEYS */;
INSERT INTO `app_countryregion_region_countries` VALUES (438,1,166),(2,2,195),(408,3,108),(4,4,35),(5,4,124),(6,5,8),(7,6,26),(8,7,185),(167,8,126),(166,8,248),(165,8,246),(164,8,238),(163,8,237),(162,8,236),(161,8,235),(160,8,103),(159,8,229),(158,8,223),(157,8,220),(156,8,219),(155,8,211),(154,8,81),(153,8,201),(152,8,68),(151,8,194),(150,8,64),(149,8,184),(148,8,44),(147,8,171),(146,8,163),(145,8,153),(144,8,152),(143,8,144),(142,8,143),(141,8,12),(140,8,11),(407,3,232),(406,3,231),(405,3,230),(404,3,228),(403,3,225),(402,3,95),(401,3,92),(400,3,90),(399,3,100),(398,3,86),(397,3,213),(396,3,212),(395,3,77),(394,3,75),(393,3,131),(392,3,73),(391,3,71),(390,3,197),(389,3,67),(388,3,66),(387,3,193),(386,3,62),(385,3,61),(384,3,159),(383,3,180),(382,3,53),(381,3,52),(380,3,179),(379,3,177),(378,3,142),(377,3,173),(376,3,170),(375,3,169),(374,3,49),(373,3,161),(372,3,31),(371,3,155),(370,3,154),(369,3,25),(368,3,23),(367,3,19),(366,3,14),(365,3,13),(364,3,138),(363,3,9),(362,3,65),(361,3,51),(360,3,5),(359,3,3),(358,3,130),(357,3,129),(409,3,114),(410,3,115),(411,3,116),(412,3,245),(413,3,122),(414,3,127),(437,1,34),(436,1,161),(435,1,30),(434,1,156),(433,1,22),(432,1,146),(431,1,16),(430,1,139),(429,1,135),(428,1,150),(427,1,1),(439,1,40),(440,1,174),(441,1,185),(442,1,186),(443,1,187),(444,1,188),(445,1,200),(446,1,203),(447,1,84),(448,1,87),(449,1,88),(450,1,99),(451,1,100),(452,1,102),(453,1,104),(454,1,107),(455,1,117),(456,1,120),(457,1,123),(458,1,125);
/*!40000 ALTER TABLE `app_countryregion_region_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_emaillist`
--

DROP TABLE IF EXISTS `app_emaillist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_emaillist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(150) NOT NULL,
  `referrer_agent` varchar(150) NOT NULL,
  `http_request` varchar(500) NOT NULL,
  `signup_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_emaillist`
--

LOCK TABLES `app_emaillist` WRITE;
/*!40000 ALTER TABLE `app_emaillist` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_emaillist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_medicalcategory`
--

DROP TABLE IF EXISTS `app_medicalcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_medicalcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medical_category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_medicalcategory`
--

LOCK TABLES `app_medicalcategory` WRITE;
/*!40000 ALTER TABLE `app_medicalcategory` DISABLE KEYS */;
INSERT INTO `app_medicalcategory` VALUES (1,'Dental'),(2,'Cosmetic'),(3,'Joint'),(4,'Cardiology'),(5,'Gastroenterological'),(6,'Skeletal');
/*!40000 ALTER TABLE `app_medicalcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_medicalcategory_medicalcategory_procedures`
--

DROP TABLE IF EXISTS `app_medicalcategory_medicalcategory_procedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_medicalcategory_medicalcategory_procedures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medicalcategory_id` int(11) NOT NULL,
  `procedure_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medicalcategory_id` (`medicalcategory_id`,`procedure_id`),
  KEY `app_medicalcategory_medicalcategory_procedures_568169e` (`medicalcategory_id`),
  KEY `app_medicalcategory_medicalcategory_procedures_cf136f6` (`procedure_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_medicalcategory_medicalcategory_procedures`
--

LOCK TABLES `app_medicalcategory_medicalcategory_procedures` WRITE;
/*!40000 ALTER TABLE `app_medicalcategory_medicalcategory_procedures` DISABLE KEYS */;
INSERT INTO `app_medicalcategory_medicalcategory_procedures` VALUES (56,1,27),(55,1,48),(54,1,47),(53,1,45),(52,1,44),(51,1,43),(50,1,42),(49,1,41),(48,1,40),(47,1,39),(11,2,32),(12,2,33),(13,2,34),(14,2,35),(15,2,36),(16,2,37),(17,2,38),(18,2,10),(19,2,11),(20,2,12),(21,2,13),(22,2,14),(23,2,15),(24,2,16),(25,2,18),(26,2,19),(27,2,20),(28,2,21),(29,2,46),(30,2,31),(31,3,1),(32,3,2),(33,3,22),(34,3,23),(35,4,17),(36,4,3),(37,4,4),(38,4,5),(39,4,6),(43,5,9),(42,5,8),(44,6,24),(45,6,25),(46,6,26),(57,1,28);
/*!40000 ALTER TABLE `app_medicalcategory_medicalcategory_procedures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_procedure`
--

DROP TABLE IF EXISTS `app_procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_procedure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `procedure_name` varchar(100) NOT NULL,
  `procedure_description` varchar(500) NOT NULL,
  `procedure_risks` varchar(500) NOT NULL,
  `procedure_postop_care` varchar(500) NOT NULL,
  `procedure_recovery_time_days` int(11) NOT NULL,
  `united_states_comparative_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_procedure`
--

LOCK TABLES `app_procedure` WRITE;
/*!40000 ALTER TABLE `app_procedure` DISABLE KEYS */;
INSERT INTO `app_procedure` VALUES (1,'Hip replacement / resurfacing','','','',0,'65000.00'),(2,'Knee replacement','','','',0,'60000.00'),(3,'CABG (Coronary Bypass)','','','',0,'120000.00'),(4,'Cardiac valve replacement','','','',0,'175000.00'),(5,'Pacemaker / defibrillator','','','',0,'60000.00'),(6,'PTCA (Coronary Angioplasty) with stent','','','',0,'70000.00'),(8,'Gastric bypass','','','',0,'45000.00'),(9,'Laparoscopic surgeries (gall bladder, hysterectomy, etc.)','','','',0,'60000.00'),(10,'Breast Augmentation','','','',0,'10000.00'),(11,'Breast Reduction','','','',0,'10000.00'),(12,'Eyelid Surgery','','','',0,'7000.00'),(13,'Face Lift','','','',0,'20000.00'),(14,'Liposuction','','','',0,'0.00'),(15,'Nose Surgery','','','',0,'7300.00'),(16,'Tummy Tuck','','','',0,'8500.00'),(17,'Coronary Angiography','','','',0,'6000.00'),(18,'Breast Lift','','','',0,'7500.00'),(19,'Chin Implant','','','',0,'4000.00'),(20,'Ear Surgery','','','',0,'4500.00'),(21,'Buttock Augmentation','','','',0,'10000.00'),(22,'Rotator Cuff Repair','','','',0,'40000.00'),(23,'ACL Repair','','','',0,'17000.00'),(24,'Spinal Fusion','','','',0,'100000.00'),(25,'Total Spinal Disc Replacement','','','',0,'150000.00'),(26,'Discectomy','','','',0,'24000.00'),(27,'Dental Implants / Tooth','','','',0,'10000.00'),(28,'Dental Crowns','','','',0,'1200.00'),(29,'Arm Lift','','','',0,'0.00'),(30,'Chemical Peels','','','',0,'0.00'),(31,'Facial Implants','','','',0,'0.00'),(32,'Forehead / Brow Lift','','','',0,'0.00'),(33,'Hair Implants and Transplants','','','',0,'0.00'),(34,'Lower Body Lift','','','',0,'0.00'),(35,'Penis Enlargement','','','',0,'0.00'),(36,'Skin Refinishing','','','',0,'0.00'),(37,'Spider Vein Removal','','','',0,'0.00'),(38,'Varicose Vein Removal','','','',0,'0.00'),(39,'Apicoectomy','','','',0,'0.00'),(40,'Dental Bondings','','','',0,'0.00'),(41,'Dental Fillings','','','',0,'0.00'),(42,'Root Canal','','','',0,'0.00'),(43,'Dental Whitening','','','',0,'0.00'),(44,'Dental Contouring','','','',0,'0.00'),(45,'Dental Veneers','','','',0,'0.00'),(46,'Lip Surgery','','','',0,'0.00'),(47,'Gum Graft','','','',0,'0.00'),(48,'Dental Extraction','','','',0,'0.00');
/*!40000 ALTER TABLE `app_procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_provider`
--

DROP TABLE IF EXISTS `app_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `provider_name` varchar(150) NOT NULL,
  `provider_latitude` decimal(17,14) NOT NULL,
  `provider_longitude` decimal(17,14) NOT NULL,
  `last_accredited` datetime NOT NULL,
  `city` varchar(50) NOT NULL,
  `provider_region_rank` int(11) NOT NULL,
  `provider_url` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_provider_534dd89` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=324 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_provider`
--

LOCK TABLES `app_provider` WRITE;
/*!40000 ALTER TABLE `app_provider` DISABLE KEYS */;
INSERT INTO `app_provider` VALUES (2,28,'INCA Instituto Nacional de CÃ¢ncer','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',31,'http://www2.inca.gov.br/'),(3,39,'Salud Universitaria Catolica','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',64,'http://www.med.puc.cl/'),(4,28,'Hospital das ClÃ­nicas da Faculdade de Medicina da Universidade de SÃ£o Paulo','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',93,'http://www.hcnet.usp.br/'),(5,8,'Hospital Italiano de Buenos Aires','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',96,'http://www.hospitalitaliano.org.ar/'),(6,28,'Hospital Israelita Albert Einstein Albert Einstein Sociedade Beneficente Israelita Brasileira','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',111,'http://www.einstein.br/'),(7,39,'Hospital ClÃ­nico de la Universidad de Chile','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',237,'http://www.redclinica.cl/'),(8,28,'Hospital de Clinicas de Porto Alegre','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',371,'http://www.hcpa.ufrgs.br/'),(9,28,'Hospital Sirio LibanÃªs','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',386,'http://www.hospitalsiriolibanes.org.br/'),(10,28,'Instituto do CoraÃ§Ã£o do Hospital das Clinicas','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',389,'http://www.incor.usp.br/'),(11,28,'Hospital UniversitÃ¡rio da Universidade Federal do MaranhÃ£o','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',548,'http://www.huufma.br/'),(12,28,'Hospital Universitario Polydoro Ernani de SÃ£o Thiago','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',567,'http://www.hu.ufsc.br/'),(13,198,'Hospital de ClÃ­nicas Dr. Manuel Quintela Hospital Universitario','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',572,'http://www.hc.edu.uy/'),(14,28,'Fleury Medicina e SaÃºde','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',578,'http://www.fleury.com.br/'),(15,148,'Instituto de Investigaciones en Ciencias de la Salud','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',617,'http://www.iics.una.py/'),(16,28,'Hospital de ClÃ­nicas da Universidade Federal do ParanÃ¡','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',642,'http://www.hc.ufpr.br/'),(17,8,'FundaciÃ³n Favaloro Hospital Universitario','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',666,'http://www.fundacionfavaloro.org/'),(18,124,'Instituto Nacional de Enfermedades Respiratorias','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',740,'http://www.iner.salud.gob.mx/'),(19,8,'Hospital Nacional Profesor Dr. Alejandro Posadas','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',784,'http://www.hospitalposadas.gov.ar/'),(20,28,'Hospital das Clinicas da Universidade Federal de Minas Gerais','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',807,'http://www.hc.ufmg.br/'),(21,39,'ClÃ­nica Alemana de Santiago de Chile','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',884,'http://portal.alemana.cl/'),(22,8,'Centro de EducaciÃ³n MÃ©dica e Investigaciones ClÃ­nicas &ldquo;Norberto Quirno&rdquo;','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',919,'http://www.cemic.edu.ar/'),(23,124,'Grupo MÃ©dica Sur','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',984,'http://www.medicasur.com.mx/'),(24,8,'Hospital Privado de Comunidad','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',990,'http://www.hpc.org.ar/'),(25,28,'Grupo Hospitalar ConceiÃ§Ã£o/Hospital ConceiÃ§Ã£o','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1074,'http://www.ghc.com.br/'),(26,50,'Hospital General Universitario Vladimir Ilich Lenin','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1145,'http://www.hvil.sld.cu/'),(27,45,'Instituto Nacional de CancerologÃ­a','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1218,'http://www.cancer.gov.co/'),(28,8,'FLENI FundaciÃ³n para la Lucha contra las Enfermedades NeurolÃ³gicas de la Infancia','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1224,'http://www.fleni.org.ar/'),(29,50,'Centro Internacional de RestauraciÃ³n NeorolÃ³gica CIREN','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1235,'http://www.ciren.cu/'),(30,8,'Hospital Jose MarÃ­a Ramos Mejia','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1245,'http://www.ramosmejia.org.ar/'),(31,28,'Hospital de Clinicas Unicamp','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1249,'http://www.hc.unicamp.br/'),(32,124,'Hospital General de MÃ©xico','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1318,'http://www.hgm.salud.gob.mx/'),(33,8,'Hospital Universitario Austral','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1358,'http://www.hospitalaustral.edu.ar/'),(34,8,'Hospital RamÃ³n Sarda FundaciÃ³n Epson','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1377,'http://www.sarda.org.ar/'),(35,28,'Hospital Universitario da Usp','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1400,'http://www.hu.usp.br/'),(36,8,'Instituto de Inmuno Oncologia Dr. Ernesto J.V. Crescenti','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1435,'http://www.crescenti.com.ar/'),(37,8,'Hospital Privado Centro MÃ©dico de CÃ³rdoba','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1496,'http://www.hospitalprivadosa.com.ar/'),(38,28,'Hospital de Clinicas de UberlÃ¢ndia','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1548,'http://www.hc.ufu.br/'),(39,28,'Hospital do CÃ¢ncer a C. Camargo','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1690,'http://www.hcanc.org.br/'),(40,149,'Instituto Especializado de Enfermedades Neoplasicas Dr. Eduardo Caceres Graziani','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1716,'http://www.inen.sld.pe/'),(41,149,'Hospital Nacional Docente Madre NiÃ±o San Batolome','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1819,'http://www.sanbartolome.gob.pe/'),(42,124,'Hospital San JosÃ© Tec de Monterrey','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1894,'http://www.hsj.com.mx/'),(43,28,'Hospital de Caridade de Erechim','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1929,'http://www.hce.com.br/'),(44,8,'Hospital de NiÃ±os Dr. Ricardo Gutierrez','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1970,'http://www.guti.gov.ar/'),(45,28,'Rede Sarah de Hospitais de ReabilitaÃ§Ã£o','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1986,'http://www.sarah.br/'),(46,95,'Azienda UnitÃ  Sanitaria Locale di ForlÃ¬','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,'http://www.ausl.fo.it/'),(47,75,'University Clinic Heidelberg Universittsklinikum Heidelberg','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',25,'http://www.klinikum.uni-heidelberg.de/'),(48,66,'Assistance Publique HÃ´pitaux de Paris','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',29,'http://www.aphp.fr/'),(49,180,'Landstinget i Ã–stergÃ¶tland','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',39,'http://www.lio.se/'),(50,66,'Centre Hospitalier Universitaire de Lyon HÃ´pitaux de Lyon','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',53,'http://www.chu-lyon.fr/'),(51,13,'Graz University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',56,'http://www.meduni-graz.at/'),(52,75,'UniversitÃ¤tsklinikum und Medizinische FakultÃ¤t TÃ¼bingen','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',59,'http://www.medizin.uni-tuebingen.de/'),(53,177,'HÃ´pitaux Universitaires de Geneve','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',63,'http://www.hug-ge.ch/'),(54,75,'UniversitÃ¤tsklinikum Freiburg','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',68,'http://www.uniklinik-freiburg.de/'),(55,75,'UniversitÃ¤tsklinikum Medizinische Fakultat der Martin Luther Universitat Halle Wittenberg','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',69,'http://www.medizin.uni-halle.de/'),(56,180,'Norrbottens Lans Landsting','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',70,'http://www.nll.se/'),(57,61,'ClÃ­nica Universitaria de Navarra','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',72,'http://www.cun.es/'),(58,138,'Erasmus Medisch Centrum Universitait Medisch Centrum Rotterdam','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',78,'http://www.erasmusmc.nl/'),(59,90,'Sligo General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',80,'http://www.hse.ie/'),(60,177,'Centre Hospitalier Universitaire Vaudois Lausanne','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',81,'http://www.chuv.ch/'),(61,75,'UniversitÃ¤tsklinikum Hamburg Eppendorf','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',83,'http://www.uke.de/'),(62,13,'Baby Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',86,'http://www.babycenter.at/'),(63,138,'Academisch Medisch Centrum & Emma Kinderziekenhuis AMC Universiteit van Amsterdam','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',87,'http://www.amc.nl/'),(64,138,'Leids Universitair Medisch Centrum','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',89,'http://www.lumc.nl/'),(65,75,'UniversitÃ¤tsklinikum Leipzig AÃ¶r','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',90,'http://www.uniklinikum-leipzig.de/'),(66,95,'Azienda UnitÃ  Sanitaria Locale di Modena','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',94,'http://www.ausl.mo.it/'),(67,75,'HELIOS Kliniken Gruppe','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',98,'http://www.helios-kliniken.de/'),(68,177,'Inselspital Universitatsspital Bern','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',104,'http://www.insel.ch/'),(69,62,'Sihtasutus Tartu Ãœlikooli Kliinikum','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',105,'http://www.kliinikum.ee/'),(70,180,'Landstinget I Uppsala Lan','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',107,'http://www.lul.se/'),(71,75,'Klinikums der UniversitÃ¤t MÃ¼nchen','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',118,'http://www.klinikum.uni-muenchen.de/'),(72,138,'Universitair Medisch Centrum Utrecht','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',119,'http://www.umcutrecht.nl/'),(73,138,'Vu Medical Center Amsterdam','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',122,'http://www.vumc.nl/'),(74,93,'Clalit Health Services','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',129,'http://www.clalit.co.il/'),(75,138,'Universitair Medisch Centrum St. Radboud','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',136,'http://www.umcn.nl/'),(76,61,'Institut Municipal d\'InvestigaciÃ³ MÃ©dica Hospital del Mar','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',138,'http://www.imim.es/'),(77,95,'Arcispedale S. Maria Nuova Azienda Ospedaliera di Reggio Emilia V','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',139,'http://www.asmn.re.it/'),(78,75,'RhÃ¶n-Klinikum AG','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',141,'http://www.rhoen-klinikum-ag.com/'),(79,75,'UniversitÃ¤tsklinikum Magdeburg','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',145,'http://www.med.uni-magdeburg.de/'),(80,93,'Hadassah Medical Organization','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',147,'http://www.hadassah.org.il/'),(81,95,'Fondazione Salvatore Maugeri Clinica del Lavoro e della Riabilitazione','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',154,'http://www.fsm.it/'),(82,52,'Pediatricka Klinika 2. Lekarske Fakulty','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',159,'http://www.lf2.cuni.cz/'),(83,142,'Helse Midt Norge Rhf Regionalt HelsefÃ¸retak','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',160,'http://www.helse-midt.no/'),(84,75,'UniversitÃ¤tsklinikum Dusseldorf','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',162,'http://www.uniklinik-duesseldorf.de/'),(85,53,'Rigshospitalet','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',164,'http://www.rigshospitalet.dk/'),(86,177,'UniverstÃ¤tsSpitals ZÃ¼rich','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',166,'http://www.usz.ch/'),(87,53,'Odense Universitetshospital Svendborg Sygehus','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',170,'http://www.ouh.dk/'),(88,180,'Karolinska Institute & University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',180,'http://www.karolinska.se/'),(89,142,'Rikshospitalet Radiumhosptalet','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',182,'http://www.rikshospitalet.no/'),(90,75,'Klinikum und Fachbereich Medizin der Johann Wolfgang Goethe-UniversitÃ¤t Frankfurt am Main','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',183,'http://www.kgu.de/'),(91,75,'Saarland University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',184,'http://www.uniklinikum-saarland.de/'),(92,66,'HÃ´pitaux de Rouen*','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',186,'http://www.chu-rouen.fr/'),(93,66,'L&rsquo;Institut Curie','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',186,'http://www.curie.fr/'),(94,169,'Univerzitetni Klinicni Center Ljubljana','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',188,'http://www4.kclj.si/'),(95,95,'Azienda Sanitaria Locale di Viterbo','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',194,'http://www.asl.vt.it/'),(96,180,'Landstinget I Kalmar Lan Hospital of Vastervik','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',197,'http://www.ltkalmar.se/'),(97,65,'Hospital District of Helsinki and Uusimaa','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',199,'http://www.hus.fi/'),(98,95,'Fondazione dell\'Ospedale Pediatrico Anna Meyer O.N.L.U.S.','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',202,'http://www.meyer.it/'),(99,52,'Faculty Hospital BRNO','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',203,'http://www.fnbrno.cz/'),(100,92,'Landspitalinn National University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',207,'http://www4.landspitali.is/'),(101,75,'Malteser Krankenhaus St. Franziskus Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',208,'http://www.malteser.de/'),(102,180,'Sahlgrenska University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',216,'http://www.sahlgrenska.se/'),(103,142,'University Hospital of North Norway','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',217,'http://www.unn.no/'),(104,95,'Azienda Ospedaliera S. Maria di Terni','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',219,'http://www.aospterni.it/'),(105,61,'Hospital Regional Universitario Carlos Haya','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',221,'http://www.carloshaya.net/'),(106,75,'Klinikum Greifswald Klinik und Poliklinik fÃ¼r Hautkrankheiten UniversitÃ¤t Greifswald','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',225,'http://www.medizin.uni-greifswald.de/'),(107,53,'Sct. Hans Hospital Psykiatrisk Center Sct. Hans','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',229,'http://www.psykiatri-regionh.dk/'),(108,95,'Ospedale Sant Anna di Ferrara','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',231,'http://www.ospfe.it/'),(109,75,'Klinikum Rechts der Isar','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',231,'http://www.med.tu-muenchen.de/'),(110,19,'Universitair Ziekenhuis Leuven','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',233,'http://www.uzleuven.be/'),(111,75,'UniversitÃ¤tsklinikum Ulm','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',243,'http://www.uniklinik-ulm.de/'),(112,75,'Asklepios Klinikum Bad Abbach','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',246,'http://www.asklepios.com/'),(113,180,'Akademiska Sjukhuset Uppsala University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',247,'http://www.akademiska.se/'),(114,75,'Uniklinik KÃ¶ln - Klinikum der Universitat Zu KÃ¶ln','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',255,'http://www.uk-koeln.de/'),(115,95,'Azienda Sanitaria Locale nÂº 2 di Terni','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',257,'http://www.asl4.terni.it/'),(116,61,'Hospital Vall d\'Hebron','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',262,'http://www.vhebron.net/'),(117,155,'Hospitais da Universidade de Coimbra','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',265,'http://www.huc.min-saude.pt/'),(118,169,'Institute of Oncology Ljubljana','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',267,'http://www.onko-i.si/'),(119,193,'Istanbul Universitesi Cerrahpasa Tip Fak. Hastanesi','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',271,'http://www.ctf.edu.tr/'),(120,66,'Centre Hospitalier Universitaire de Toulouse','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',273,'http://www.chu-toulouse.fr/'),(121,95,'Azienda UnitÃ  Sanitaria Locale di Ferrara','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',274,'http://www.ausl.fe.it/'),(122,61,'Complejo Hospitalario Universitario de Albacete','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',277,'http://www.chospab.es/'),(123,61,'Hospital de Cruces','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',289,'http://www.hospitalcruces.com/'),(124,66,'L\'Institut de Cancerologie Gustave Roussy','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',289,'http://www.igr.fr/'),(125,159,'Medical Center Medlife','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',295,'http://www.medlife.ro/'),(126,193,'Haydarpasa Gata Arastirma Hastanesi','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',297,'http://www.gata.edu.tr/'),(127,95,'Azienda Ospedaliera San Camillo Forlanini','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',299,'http://www.scamilloforlanini.rm.it/'),(128,75,'UniversitÃ¤tsklinikum Carl Gustav Carus Dresden','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',299,'http://www.uniklinikum-dresden.de/'),(129,95,'Azienda UnitÃ  Sanitaria Locale di Reggio Emilia','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',322,'http://www.ausl.re.it/'),(130,138,'Nederlands Kanker Instituut Antoni Van Leeuwenhoek Ziekenhuis','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',327,'http://www.nki.nl/'),(131,13,'Wiener Krankenanstaltenverbund','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',333,'http://www.wienkav.at/'),(132,53,'Aarhus University Hospital Aarhus Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',345,'http://www.aarhussygehus.dk/'),(133,61,'Hospital Universitario Virgen de las Nieves','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',347,'http://www.hvn.es/'),(134,75,'UniversitÃ¤tsklinikums MÃ¼nster','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',351,'http://www.klinikum.uni-muenster.de/'),(135,180,'Jamtlands Lands Landsting','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',352,'http://www.jll.se/'),(136,154,'Instytut Psychiatrii i Neurologii','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',353,'http://www.ipin.edu.pl/'),(137,95,'Azienda UnitÃ  Sanitaria Locale di ForlÃ¬','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',355,'http://www.ausl.fo.it/'),(138,40,'Armed Police General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,'http://www.wj-hospital.com/'),(139,190,'Buddhist Tzu Chi General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',4,'http://www.tzuchi.com.tw/'),(140,190,'Taipei Veterans General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',6,'http://www.vghtpe.gov.tw/'),(141,185,'Faculty of Medicine Siriraj Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',21,'http://www.si.mahidol.ac.th/'),(142,84,'Hospital Authority','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',26,'http://www.ha.org.hk/'),(143,99,'Tokyo Women\'s Medical University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',32,'http://www.twmu.ac.jp/'),(144,190,'Chang Gung Memorial Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',33,'http://www.cgmh.org.tw/'),(145,185,'Maharaj Nakorn Chiang Mai Hospital & Faculty of Medicine','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',34,'http://www.med.cmu.ac.th/'),(146,99,'National Cancer Center Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',36,'http://www.ncc.go.jp/'),(147,104,'Asan Medical Center Seoul','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',40,'http://www.amc.seoul.kr/'),(148,99,'National Hospital Organization','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',43,'http://www.hosp.go.jp/'),(149,190,'Mckay Memorial Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',48,'http://www.mmh.org.tw/'),(150,190,'National Taiwan University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',54,'http://www.ntuh.gov.tw/'),(151,89,'Tabriz University Hospitals','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',67,'http://www.tbzmed.ac.ir/'),(152,99,'Institute of Medical Science University of Tokyo','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',71,'http://www.ims.u-tokyo.ac.jp/'),(153,190,'Chi Mei Medical Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',76,'http://www.chimei.org.tw/'),(154,104,'Hallym University Medical Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',76,'http://www.hallym.or.kr/'),(155,190,'Changhua Christian Hospital Changhua City','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',87,'http://www.cch.org.tw/'),(156,99,'Nara Prefectural University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',92,'http://www.naramed-u.ac.jp/'),(157,99,'Fukushima Medical University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',95,'http://www.fmu.ac.jp/'),(158,99,'Asahikawa Medical College Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',99,'http://www.asahikawa-med.ac.jp/'),(159,190,'China Medical University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',102,'http://www.cmuh.cmu.edu.tw/'),(160,99,'Kyoto University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',103,'http://www.kuhp.kyoto-u.ac.jp/'),(161,190,'Taipei City Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',108,'http://www.tpech.gov.tw/'),(162,99,'Kyushu University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',109,'http://www.med.kyushu-u.ac.jp/'),(163,190,'Chung Ho Memorial Hospital Kaohsiung Medical University','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',110,'http://www.kmuh.org.tw/'),(164,190,'Tri Service General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',112,'http://www.tsgh.ndmctsgh.edu.tw/'),(165,190,'Shin Kong Wu Ho Su Memorial Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',117,'http://www.skh.org.tw/'),(166,190,'Kaohsiung Veterans General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',121,'http://cms03p.vghks.gov.tw/'),(167,104,'Samsung Medical Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',132,'http://www.samsunghospital.com/'),(168,190,'Taichung Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',133,'http://www.taic.doh.gov.tw/'),(169,40,'Xinqiao Hospital Third Military Medical University Hospital Newbridge','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',140,'http://www.xqhospital.com.cn/'),(170,190,'Cathay General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',143,'http://www.cgh.org.tw/'),(171,99,'National Center of Neurology and Psychiatry','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',149,'http://www.ncnp.go.jp/'),(172,185,'King Chulalongkorn Memorial Hospital Faculty of Medicine Chulalongkorn University','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',150,'http://www.md.chula.ac.th/'),(173,40,'Rui Jin Hospital Shanghai Jiao Tong University School of Medicine','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',152,'http://www.rjh.com.cn/'),(174,190,'Far Eastern Memorial Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',153,'http://www.femh.org.tw/'),(175,190,'National Cheng Kung University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',167,'http://www.hosp.ncku.edu.tw/'),(176,190,'Kaohsiung Municipal Hsiaokang Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',173,'http://www.kmhk.kmu.edu.tw/'),(177,190,'Chung Shan Medical University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',177,'http://w2.csh.org.tw/'),(178,190,'Taichung Veterans General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',179,'http://www.vghtc.gov.tw/'),(179,104,'Korea University Medical Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',181,'http://www.kumc.or.kr/'),(180,89,'Hamedan University of Medical Science Hospitals','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',191,'http://www.umsha.ac.ir/'),(181,190,'Chia-Yi Christian Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',193,'http://www.cych.org.tw/'),(182,99,'Dokkyo Medical University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',195,'http://www.dokkyomed.ac.jp/'),(183,99,'Kyoto Prefectural Medical University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',199,'http://www.kpu-m.ac.jp/'),(184,99,'University of Tokyo Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',208,'http://www.h.u-tokyo.ac.jp/'),(185,185,'Bma Medical College and Vajira Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',220,'http://www.vajira.ac.th/'),(186,40,'Guangdong Provincial Disease Prevention and Control Centre','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',227,'http://www.cdcp.org.cn/'),(187,166,'Singhealth','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',233,'http://www.singhealth.com.sg/'),(188,185,'Faculty of Medicine Ramathibodi Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',239,'http://www.ra.mahidol.ac.th/'),(189,104,'Cha General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',241,'http://www.chamc.co.kr/'),(190,104,'Seoul National University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',244,'http://www.snuh.org/'),(191,104,'Gachon University Gil Medical Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',251,'http://www.gilhospital.com/'),(192,40,'Tianjin Medical University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',256,'http://www.tijmu.edu.cn/'),(193,40,'First People\'s Hospital of Foshan','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',263,'http://www.fsyyy.com/'),(194,190,'Taipei Medical University Wan Fang Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',268,'http://www.wanfang.gov.tw/'),(195,104,'Chonnam National University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',269,'http://www.cnuh.com/'),(196,190,'National Taiwan University Hospital Yun Lin Branch','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',280,'http://www.ylh.ntuh.mc.ntu.edu.tw/'),(197,190,'Cardinal Tien Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',281,'http://www.cth.org.tw/'),(198,89,'Guilan University Hospitals','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',304,'http://www.gums.ac.ir/'),(199,190,'St. Martin de Porres Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',316,'http://www.stm.org.tw/'),(200,104,'Kyung Hee University Medical Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',322,'http://www.khmc.or.kr/'),(201,190,'Kuang Tien General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',324,'http://www.ktgh.com.tw/'),(202,40,'National Center for AIDS/STD Control and Prevention China CDC','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',328,'http://www.chinaids.org.cn/'),(203,190,'Taipei Medical University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',330,'http://www.tmch.org.tw/'),(204,166,'Singapore General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',331,'http://www.sgh.com.sg/'),(205,40,'Zhongshan Hospital Fudan University','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',334,'http://www.zs-hospital.sh.cn/'),(206,99,'National Center for Child Health and Development National Children\'s Medical Center Research Institute','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',354,'http://www.ncchd.go.jp/'),(207,40,'Hospital Attached to Aeromedicine Institute of P.L.A.','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',358,'http://www.81988888.com/'),(208,104,'National Cancer Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',363,'http://www.ncc.re.kr/'),(209,99,'Osaka National Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',367,'http://www.onh.go.jp/'),(210,40,'Anhui Provincial Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',368,'http://www.ahslyy.com.cn/'),(211,40,'Beijing University People\'s Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',374,'http://www.pkuph.cn/'),(212,104,'Ajou University Medical Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',375,'http://www.ajoumc.or.kr/'),(213,190,'E Da Hospital / I Shou University','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',376,'http://www.edah.org.tw/'),(214,40,'Guangdong Provincial People\'s Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',377,'http://www.e5413.com/'),(215,40,'Cancer Institute & Hospital Chinese Academy of Medical Sciences','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',379,'http://www.cicams.ac.cn/'),(216,185,'Queen Sirikit National Institute of Child Health','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',397,'http://www.childrenhospital.go.th/'),(217,104,'Inje University Paik Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',404,'http://www.paik.ac.kr/'),(218,185,'Phyathai Hospital Phya Thai\'s One Stop Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',417,'http://www.phyathai.com/'),(219,190,'Cheng Hsin Rehabilitation Medical Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',428,'http://www.chgh.org.tw/'),(220,40,'China Japan Friendship Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',432,'http://www.zryhyy.com.cn/'),(221,190,'Landseed International Medical Group/Li Shin Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',434,'http://www.ush.com.tw/'),(222,190,'Tungs\' Taichung Metroharbor Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',435,'http://www.sltung.com.tw/'),(223,40,'Foshan First People\'s Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',438,'http://www.fshospital.org.cn/'),(224,40,'Sun Yat-sen University First Affiliated Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',438,'http://www.gzsums.net/'),(225,190,'Hsin Chu General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',442,'http://www.hch.gov.tw/'),(226,190,'Taiwan Adventist Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',452,'http://www.tahsda.org.tw/'),(227,104,'Inha University Hospital Incheon under Hangin Group','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',454,'http://www.inha.com/'),(228,88,'Laparoscopy Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',455,'http://www.laparoscopyhospital.com/'),(229,99,'University Hospital Kumamoto University','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',467,'http://www.kuh.kumamoto-u.ac.jp/'),(230,190,'Keelung Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',469,'http://www.kln.doh.gov.tw/'),(231,99,'Shizuoka Cancer Center Research Institute','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',472,'http://www.scchr.jp/'),(232,40,'Beijing Tong Ren Hospital Capital Medical University','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',477,'http://www.trhos.com/'),(233,190,'Mennonite Christian Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',487,'http://www.mch.org.tw/'),(234,185,'Bumrungrad Internacional Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',490,'http://www.bumrungrad.com/'),(235,104,'Severance Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',494,'http://sev.iseverance.com/'),(236,104,'Seoul St. Mary\'s Hospital The Catholic University of Korea','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',497,'http://www.cmcseoul.or.kr/'),(237,104,'Dongsan Medical Center Keimyung University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',499,'http://www.dsmc.or.kr/'),(238,40,'Armed Police General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',500,'http://www.wj-hospital.com/'),(240,12,'Royal Children\'s Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',46,'http://www.rch.org.au/'),(241,12,'Department Health & Human Services of Tasmania Royal Hobart Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',151,'http://www.dhhs.tas.gov.au/'),(242,12,'Hunter New England Health','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',278,'http://www.hnehealth.nsw.gov.au/'),(243,144,'Auckland District Health Board','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',283,'http://www.adhb.govt.nz/'),(244,12,'Children\'s Hospital at Westmead','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',293,'http://www.chw.edu.au/'),(245,12,'South Eastern Sydney Illawarra Health','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',342,'http://www.sesiahs.health.nsw.gov.au/'),(246,12,'Cancer Institute Nsw','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',383,'http://www.cancerinstitute.org.au/'),(247,12,'Women\'s and Children\'s Hospital Adelaide','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',393,'http://www.wch.sa.gov.au/'),(248,144,'Capital & Coast District Health Board','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',412,'http://www.ccdhb.org.nz/'),(249,12,'Sydney Children\'s Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',419,'http://www.sch.edu.au/'),(250,12,'Southern Health','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',425,'http://www.southernhealth.org.au/'),(251,12,'Sydney South West Area Health Service','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',534,'http://www.sswahs.nsw.gov.au/'),(252,12,'Melbourne Health The Royal Melbourne Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',653,'http://www.mh.org.au/'),(253,12,'St. Vicent\'s Health St. Vicent\'s Hospital Melbourne','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',825,'http://www.svhm.org.au/'),(254,12,'Royal Adelaide Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',832,'http://www.rah.sa.gov.au/'),(255,12,'Royal Women\'s Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',867,'http://www.thewomens.org.au/'),(256,12,'Ramsay Health Care','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1001,'http://www.ramsayhealth.com.au/'),(257,144,'Counties Manukau District Health Board','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1053,'http://www.cmdhb.org.nz/'),(258,12,'South West Alliance of Rural Health','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1086,'http://www.swarh.com.au/'),(259,12,'Baker Heart Research Institute','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1093,'http://www.bakeridi.edu.au/'),(260,12,'St. John of God Health Care','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1152,'http://www.sjog.org.au/'),(261,12,'King Edward Memorial Hospital for Women','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1313,'http://www.kemh.health.wa.gov.au/'),(262,12,'Austin Health','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1316,'http://www.austin.org.au/'),(263,12,'Mercy Health & Aged Care','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1334,'http://www.mercy.com.au/'),(264,12,'Eastern Health Victoria','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1381,'http://www.easternhealth.org.au/'),(265,144,'Bay of Plenty District Health Board','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1391,'http://www.bopdhb.govt.nz/'),(266,12,'Sidney West Area Health Service','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1415,'http://www.wsahs.nsw.gov.au/'),(267,12,'Alfred Health Victoria','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1455,'http://www.alfred.org.au/'),(268,144,'Starship Children\'s Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1483,'http://www.starship.org.nz/'),(269,12,'Northern Health at Epping','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1575,'http://www.nh.org.au/'),(270,12,'Hume Health Service','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1594,'http://www.humehealth.com.au/'),(271,144,'Midcentral District Health Board','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1688,'http://www.midcentraldhb.govt.nz/'),(272,12,'Flinders Medical Centre','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1700,'http://www.flinders.sa.gov.au/'),(273,12,'Royal Perth Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1798,'http://www.rph.wa.gov.au/'),(274,144,'Nelson Marlborough District Health Board','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1926,'http://www.nmdhb.govt.nz/'),(275,144,'Waikato District Health Board','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1955,'http://www.waikatodhb.govt.nz/'),(276,196,'Angal Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,'http://www.amicidiangal.org/'),(277,160,'Netcare Group','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',687,'http://www.netcare.co.za/'),(278,118,'Institut Pasteur de Madagascar','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1122,'http://www.pasteur.mg/'),(279,181,'Gambro Healthcare','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1227,'http://www.gambro.com/'),(280,140,'Ecwa Evangel Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1415,'http://www.ecwaevangel.org/'),(281,196,'Angal Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',1880,'http://www.amicidiangal.org/'),(282,124,'Christus Muguerza Alta Especialidad Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Monterrey',0,''),(283,48,'Clinica Biblica Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','San Jose',0,''),(284,17,'Barbados Fertility Centre','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Christ Church',0,''),(285,28,'Hospital do Coracao','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Sao Paulo',0,''),(287,28,'Hospital Samaritano','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Sao Paulo',0,''),(288,88,'Asian Heart Institute','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Bombay',0,''),(289,88,'Apollo Hospitals','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Chennai',0,'http://www.apollohospitals.com/'),(290,88,'Indraprastha Apollo Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Delhi',0,''),(291,88,'Shroff Eye Hospital and LASIK Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Bombay',0,''),(292,88,'Wockhardt Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Bangalore',0,''),(293,88,'Wockhardt Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Bombay',0,''),(294,185,'Bangkok Hospital Medical Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Bangkok',0,''),(296,185,'Samitivej Sukhumvit Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Bangkok',0,''),(297,150,'St. Lukeâ€™s Medical Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Quezon City',0,''),(298,166,'Alexandra Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,''),(299,166,'Changi General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,''),(300,166,'Gleneagles Hospital and Medical Centre','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,''),(301,166,'Johns Hopkins Singapore International Medical Centre','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,''),(302,166,'KK Womenâ€™s and Childrenâ€™s Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,''),(303,166,'Mount Elizabeth Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,''),(304,166,'National Cancer Centre Singapore','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,''),(305,166,'National University Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,''),(307,166,'Tan Tock Seng Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,''),(308,190,'Min-Shen General Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Taoyuan City',0,''),(309,190,'Taipei Medical University','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,''),(311,195,'American Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Dubai',0,''),(312,195,'Dubai Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,''),(313,195,'International Modern Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Dubai',0,''),(314,195,'Tawam Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Al Ain',0,''),(315,195,'Zulekha Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Sharjah',0,''),(316,52,'Na Homolce Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Prague',0,''),(317,193,'Acibadem Healthcare Group','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Istanbul',0,''),(318,193,'Anadolu Medical Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Kocaeli',0,''),(319,193,'Istanbul Memorial Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','',0,''),(320,193,'Kent Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Izmir',0,''),(321,193,'Gayrettepe Florence Nightingale Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Istanbul',0,''),(322,98,'Jordan Hospital','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Amman',0,''),(323,98,'King Hussein Cancer Center','0.00000000000000','0.00000000000000','0000-00-00 00:00:00','Amman',0,'');
/*!40000 ALTER TABLE `app_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_providerprocedure`
--

DROP TABLE IF EXISTS `app_providerprocedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_providerprocedure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `procedure_id` int(11) NOT NULL,
  `specialty` tinyint(1) NOT NULL,
  `procedure_rank` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `price_valid_until_timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_providerprocedure_d9e5df97` (`provider_id`),
  KEY `app_providerprocedure_cf136f6` (`procedure_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_providerprocedure`
--

LOCK TABLES `app_providerprocedure` WRITE;
/*!40000 ALTER TABLE `app_providerprocedure` DISABLE KEYS */;
INSERT INTO `app_providerprocedure` VALUES (1,228,3,0,0,'9000.00',0),(2,228,6,0,0,'7500.00',0),(3,228,1,0,0,'9000.00',0),(4,228,2,0,0,'8000.00',0),(5,228,8,0,0,'16500.00',0),(6,228,22,0,0,'3700.00',0),(7,228,23,0,0,'3700.00',0),(8,228,10,0,0,'2500.00',0),(9,228,18,0,0,'3000.00',0),(10,228,11,0,0,'2100.00',0),(11,228,13,0,0,'3100.00',0),(12,228,14,0,0,'2500.00',0),(13,228,15,0,0,'2250.00',0),(14,228,16,0,0,'3400.00',0),(15,228,4,0,0,'10000.00',0),(16,228,5,0,0,'6000.00',0),(17,228,24,0,0,'8000.00',0),(18,228,9,0,0,'5000.00',0),(19,228,12,0,0,'2200.00',0),(20,228,17,0,0,'560.00',0),(21,48,3,0,0,'33100.00',0),(22,48,6,0,0,'18400.00',0),(23,92,1,0,0,'15000.00',0),(24,92,2,0,0,'17000.00',0),(25,120,10,0,0,'9600.00',0),(26,50,18,0,0,'7000.00',0),(27,93,11,0,0,'10000.00',0),(28,120,13,0,0,'12300.00',0),(29,50,14,0,0,'7900.00',0),(30,124,15,0,0,'7000.00',0),(31,124,16,0,0,'7900.00',0);
/*!40000 ALTER TABLE `app_providerprocedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_surgeon`
--

DROP TABLE IF EXISTS `app_surgeon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_surgeon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surgeon_first_name` varchar(50) NOT NULL,
  `surgeon_last_name` varchar(75) NOT NULL,
  `surgeon_bio` varchar(500) NOT NULL,
  `surgeon_awards` varchar(500) NOT NULL,
  `surgeon_degrees` varchar(500) NOT NULL,
  `surgeon_bibliography` varchar(500) NOT NULL,
  `surgeon_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_surgeon`
--

LOCK TABLES `app_surgeon` WRITE;
/*!40000 ALTER TABLE `app_surgeon` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_surgeon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_surgeon_surgeon_providers`
--

DROP TABLE IF EXISTS `app_surgeon_surgeon_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_surgeon_surgeon_providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surgeon_id` int(11) NOT NULL,
  `procedure_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `surgeon_id` (`surgeon_id`,`procedure_id`),
  KEY `app_surgeon_surgeon_providers_a1e144ca` (`surgeon_id`),
  KEY `app_surgeon_surgeon_providers_cf136f6` (`procedure_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_surgeon_surgeon_providers`
--

LOCK TABLES `app_surgeon_surgeon_providers` WRITE;
/*!40000 ALTER TABLE `app_surgeon_surgeon_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_surgeon_surgeon_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_surgeonlanguage`
--

DROP TABLE IF EXISTS `app_surgeonlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_surgeonlanguage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surgeon_id` int(11) NOT NULL,
  `language` varchar(50) NOT NULL,
  `language_skill` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_surgeonlanguage_a1e144ca` (`surgeon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_surgeonlanguage`
--

LOCK TABLES `app_surgeonlanguage` WRITE;
/*!40000 ALTER TABLE `app_surgeonlanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_surgeonlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_userprofile`
--

DROP TABLE IF EXISTS `app_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `last_fetch_timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_userprofile`
--

LOCK TABLES `app_userprofile` WRITE;
/*!40000 ALTER TABLE `app_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_userproviderproceduresearch`
--

DROP TABLE IF EXISTS `app_userproviderproceduresearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_userproviderproceduresearch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `procedure_id` int(11) NOT NULL,
  `airfare_API` varchar(500) NOT NULL,
  `airfare_price` decimal(10,2) NOT NULL,
  `hotel_API` varchar(500) NOT NULL,
  `hotel_price` decimal(10,2) NOT NULL,
  `searched_on_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_userproviderproceduresearch_fbfc09f1` (`user_id`),
  KEY `app_userproviderproceduresearch_d9e5df97` (`provider_id`),
  KEY `app_userproviderproceduresearch_cf136f6` (`procedure_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_userproviderproceduresearch`
--

LOCK TABLES `app_userproviderproceduresearch` WRITE;
/*!40000 ALTER TABLE `app_userproviderproceduresearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_userproviderproceduresearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add user profile',9,'add_userprofile'),(26,'Can change user profile',9,'change_userprofile'),(27,'Can delete user profile',9,'delete_userprofile'),(28,'Can add country',10,'add_country'),(29,'Can change country',10,'change_country'),(30,'Can delete country',10,'delete_country'),(31,'Can add country exchange rate',11,'add_countryexchangerate'),(32,'Can change country exchange rate',11,'change_countryexchangerate'),(33,'Can delete country exchange rate',11,'delete_countryexchangerate'),(34,'Can add procedure',12,'add_procedure'),(35,'Can change procedure',12,'change_procedure'),(36,'Can delete procedure',12,'delete_procedure'),(63,'Can delete country region',21,'delete_countryregion'),(62,'Can change country region',21,'change_countryregion'),(61,'Can add country region',21,'add_countryregion'),(40,'Can add provider',14,'add_provider'),(41,'Can change provider',14,'change_provider'),(42,'Can delete provider',14,'delete_provider'),(43,'Can add provider procedure',15,'add_providerprocedure'),(44,'Can change provider procedure',15,'change_providerprocedure'),(45,'Can delete provider procedure',15,'delete_providerprocedure'),(60,'Can delete email list',20,'delete_emaillist'),(59,'Can change email list',20,'change_emaillist'),(58,'Can add email list',20,'add_emaillist'),(55,'Can add user provider procedure search',19,'add_userproviderproceduresearch'),(56,'Can change user provider procedure search',19,'change_userproviderproceduresearch'),(57,'Can delete user provider procedure search',19,'delete_userproviderproceduresearch'),(64,'Can add medical category',22,'add_medicalcategory'),(65,'Can change medical category',22,'change_medicalcategory'),(66,'Can delete medical category',22,'delete_medicalcategory'),(67,'Can add surgeon',23,'add_surgeon'),(68,'Can change surgeon',23,'change_surgeon'),(69,'Can delete surgeon',23,'delete_surgeon'),(70,'Can add surgeon language',24,'add_surgeonlanguage'),(71,'Can change surgeon language',24,'change_surgeonlanguage'),(72,'Can delete surgeon language',24,'delete_surgeonlanguage');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'admin','','','test@test.com','sha1$f469e$812317f13dce3409458e5e1483715fa8e02b2b2c',1,1,1,'2011-03-10 10:39:36','2011-03-08 18:15:17');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2011-03-10 09:58:49',1,12,'1','Hip replacement',1,''),(2,'2011-03-10 14:14:28',1,22,'1','Dental',1,''),(3,'2011-03-10 14:16:30',1,22,'2','Cosmetic',1,''),(4,'2011-03-10 14:17:39',1,22,'3','Joint',1,''),(5,'2011-03-10 14:18:20',1,22,'4','Cardiology',1,''),(6,'2011-03-10 14:20:07',1,22,'5','Gastroenterological',1,''),(7,'2011-03-10 14:20:18',1,22,'5','Gastroenterological',2,'No fields changed.'),(8,'2011-03-10 14:20:54',1,12,'7','Spinal fusion',3,''),(9,'2011-03-10 14:21:51',1,22,'6','Skeletal',1,''),(10,'2011-03-10 14:22:44',1,22,'1','Dental',2,'Changed medicalcategory_procedures.'),(11,'2011-03-10 20:15:15',1,21,'1','Asia',1,''),(12,'2011-03-10 20:15:48',1,21,'2','Middle East',1,''),(13,'2011-03-10 20:15:58',1,21,'3','Europe',1,''),(14,'2011-03-10 20:16:25',1,21,'4','North America',1,''),(15,'2011-03-10 20:16:30',1,21,'5','South America',1,''),(16,'2011-03-10 20:18:12',1,21,'6','Latin America',1,''),(17,'2011-03-10 20:18:46',1,21,'7','Southeast Asia',1,''),(18,'2011-03-10 20:20:23',1,21,'8','Oceania',1,''),(19,'2011-03-10 20:33:02',1,21,'8','Oceania',2,'Changed region_countries.'),(20,'2011-03-10 20:35:11',1,21,'8','Oceania',2,'Changed region_countries.'),(21,'2011-03-10 20:38:27',1,21,'8','Oceania',2,'Changed region_countries.'),(22,'2011-03-10 20:40:53',1,21,'8','Oceania',2,'Changed region_countries.'),(23,'2011-03-10 20:44:18',1,21,'8','Oceania',2,'Changed region_countries.'),(24,'2011-03-10 20:46:32',1,21,'8','Oceania',2,'No fields changed.'),(25,'2011-03-10 20:47:49',1,21,'8','Oceania',2,'No fields changed.'),(26,'2011-03-10 20:59:41',1,21,'3','Europe',2,'Changed region_countries.'),(27,'2011-03-10 21:01:23',1,21,'3','Europe',2,'Changed region_countries.'),(28,'2011-03-10 21:03:03',1,21,'3','Europe',2,'Changed region_countries.'),(29,'2011-03-10 21:04:08',1,21,'3','Europe',2,'Changed region_countries.'),(30,'2011-03-10 21:04:46',1,21,'3','Europe',2,'Changed region_countries.'),(31,'2011-03-10 21:08:25',1,21,'3','Europe',2,'Changed region_countries.'),(32,'2011-03-10 21:10:09',1,21,'1','Asia',2,'Changed region_countries.'),(33,'2011-03-10 21:14:41',1,21,'1','Asia',2,'Changed region_countries.'),(34,'2011-03-10 21:47:34',1,14,'239','Waikato District Health Board - New Zealand',3,''),(35,'2011-03-10 21:47:53',1,14,'310','Severance Hospital - Korea, Republic of',3,''),(36,'2011-03-10 21:48:06',1,14,'286','Hospital Israelita Albert Einstein - Brazil',3,''),(37,'2011-03-10 21:48:30',1,14,'306','Singapore General Hospital - Singapore',3,''),(38,'2011-03-10 21:48:56',1,14,'295','Bumrungrad International Hospital - Thailand',3,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'user profile','app','userprofile'),(10,'country','app','country'),(11,'country exchange rate','app','countryexchangerate'),(12,'procedure','app','procedure'),(21,'country region','app','countryregion'),(14,'provider','app','provider'),(15,'provider procedure','app','providerprocedure'),(20,'email list','app','emaillist'),(19,'user provider procedure search','app','userproviderproceduresearch'),(22,'medical category','app','medicalcategory'),(23,'surgeon','app','surgeon'),(24,'surgeon language','app','surgeonlanguage');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('caf831f2429e2cf7e12950525554c8f7','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS4xZDkzZDE4YWQzMmFmMjU0YmVk\nMWZjNDRmZjExMWYzZQ==\n','2011-03-24 01:33:28'),('fb2e5104f75cb6d944edd3ec346f7d22','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS4xZDkzZDE4YWQzMmFmMjU0YmVk\nMWZjNDRmZjExMWYzZQ==\n','2011-03-24 10:39:36');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-03-10 21:52:19
