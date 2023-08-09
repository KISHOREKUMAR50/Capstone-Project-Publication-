-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: publication
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `au_id` varchar(11) NOT NULL,
  `au_lname` varchar(40) NOT NULL,
  `au_fname` varchar(20) NOT NULL,
  `phone` char(12) NOT NULL DEFAULT 'UNKNOWN',
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  `contract` bit(1) NOT NULL,
  PRIMARY KEY (`au_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES ('172-32-1176','White','Johnson','408 496-7223','10932 Bigge Rd.','Menlo Park','CA','94025',_binary ''),('213-46-8915','Green','Marjorie','415 986-7020','309 63rd St. #411','Oakland','CA','94618',_binary ''),('238-95-7766','Carson','Cheryl','415 548-7723','589 Darwin Ln.','Berkeley','CA','94705',_binary ''),('267-41-2394','O\'Leary','Michael','408 286-2428','22 Cleveland Av. #14','San Jose','CA','95128',_binary ''),('274-80-9391','Straight','Dean','415 834-2919','5420 College Av.','Oakland','CA','94609',_binary ''),('341-22-1782','Smith','Meander','913 843-0462','10 Mississippi Dr.','Lawrence','KS','66044',_binary '\0'),('409-56-7008','Bennet','Abraham','415 658-9932','6223 Bateman St.','Berkeley','CA','94705',_binary ''),('427-17-2319','Dull','Ann','415 836-7128','3410 Blonde St.','Palo Alto','CA','94301',_binary ''),('472-27-2349','Gringlesby','Burt','707 938-6445','PO Box 792','Covelo','CA','95428',_binary ''),('486-29-1786','Locksley','Charlene','415 585-4620','18 Broadway Av.','San Francisco','CA','94130',_binary ''),('527-72-3246','Greene','Morningstar','615 297-2723','22 Graybar House Rd.','Nashville','TN','37215',_binary '\0'),('648-92-1872','Blotchet-Halls','Reginald','503 745-6402','55 Hillsdale Bl.','Corvallis','OR','97330',_binary ''),('672-71-3249','Yokomoto','Akiko','415 935-4228','3 Silver Ct.','Walnut Creek','CA','94595',_binary ''),('712-45-1867','del Castillo','Innes','615 996-8275','2286 Cram Pl. #86','Ann Arbor','MI','48105',_binary ''),('722-51-5454','DeFrance','Michel','219 547-9982','3 Balding Pl.','Gary','IN','46403',_binary ''),('724-08-9931','Stringer','Dirk','415 843-2991','5420 Telegraph Av.','Oakland','CA','94609',_binary '\0'),('724-80-9391','MacFeather','Stearns','415 354-7128','44 Upland Hts.','Oakland','CA','94612',_binary ''),('756-30-7391','Karsen','Livia','415 534-9219','5720 McAuley St.','Oakland','CA','94609',_binary ''),('807-91-6654','Panteley','Sylvia','301 946-8853','1956 Arlington Pl.','Rockville','MD','20853',_binary ''),('846-92-7186','Hunter','Sheryl','415 836-7128','3410 Blonde St.','Palo Alto','CA','94301',_binary ''),('893-72-1158','McBadden','Heather','707 448-4982','301 Putnam','Vacaville','CA','95688',_binary '\0'),('899-46-2035','Ringer','Anne','801 826-0752','67 Seventh Av.','Salt Lake City','UT','84152',_binary ''),('998-72-3567','Ringer','Albert','801 826-0752','67 Seventh Av.','Salt Lake City','UT','84152',_binary '');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `discounttype` varchar(40) NOT NULL,
  `stor_id` char(4) DEFAULT NULL,
  `lowqty` smallint DEFAULT NULL,
  `highqty` smallint DEFAULT NULL,
  `discount` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES ('Initial Customer',NULL,NULL,NULL,10.50),('Volume Discount',NULL,100,1000,6.70),('Customer Discount','8042',NULL,NULL,5.00);
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` char(9) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `minit` char(1) DEFAULT NULL,
  `lname` varchar(30) NOT NULL,
  `job_id` int NOT NULL DEFAULT '1',
  `job_lvl` int NOT NULL DEFAULT '10',
  `pub_id` char(4) NOT NULL DEFAULT '9952',
  `hire_date` char(8) NOT NULL DEFAULT '19950818',
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('A-C71970F','Aria','','Cruz',10,87,'1389','19911026'),('A-R89858F','Annette','','Roulet',6,152,'9999','19900221'),('AMD15433F','Ann','M','Devon',3,200,'9952','19910716'),('ARD36773F','Anabela','R','Domingues',8,100,'0877','19930127'),('CFH28514M','Carlos','F','Hernadez',5,211,'9999','19890421'),('CGS88322F','Carine','G','Schmitt',13,64,'1389','19920707'),('DBT39435M','Daniel','B','Tonini',11,75,'0877','19900101'),('DWR65030M','Diego','W','Roel',6,192,'1389','19911216'),('ENL44273F','Elizabeth','N','Lincoln',14,35,'0877','19900724'),('F-C16315M','Francisco','','Chang',4,227,'9952','19901103'),('GHT50241M','Gary','H','Thomas',9,170,'0736','19880809'),('H-B39728F','Helen','','Bennett',12,35,'0877','19890921'),('HAN90777M','Helvetius','A','Nagy',7,120,'9999','19930319'),('HAS54740M','Howard','A','Snyder',12,100,'0736','19881119'),('JYL26161F','Janine','Y','Labrune',5,172,'9901','19910526'),('KFJ64308F','Karin','F','Josephs',14,100,'0736','19921017'),('KJJ92907F','Karla','J','Jablonski',9,170,'9999','19940311'),('L-B31947F','Lesley','','Brown',7,120,'0877','19910213'),('LAL21447M','Laurence','A','Lebihan',5,175,'0736','19900603'),('M-L67958F','Maria','','Larsson',7,135,'1389','19920327'),('M-P91209M','Manuel','','Pereira',8,101,'9999','19890109'),('M-R38834F','Martine','','Rance',9,75,'0877','19920205'),('MAP77183M','Miguel','A','Paolino',11,112,'1389','19921207'),('MAS70474F','Margaret','A','Smith',9,78,'1389','19880929'),('MFS52347M','Martin','F','Sommer',10,165,'0736','19900413'),('MGK44605M','Matti','G','Karttunen',6,220,'0736','19940501'),('MJP25939M','Maria','J','Pontes',5,246,'1756','19890301'),('MMS49649F','Mary','M','Saveley',8,175,'0736','19930629'),('PCM98509F','Patricia','C','McKenna',11,150,'9999','19890801'),('PDI47470M','Palle','D','Ibsen',7,195,'0736','19930509'),('PHF38899M','Peter','H','Franken',10,75,'0877','19920517'),('PMA42628M','Paolo','M','Accorti',13,35,'0877','19920827'),('POK93028M','Pirkko','O','Koskitalo',10,80,'9999','19931129'),('PSA89086M','Pedro','S','Afonso',14,89,'1389','19901224'),('PSP68661F','Paula','S','Parente',8,125,'1389','19940119'),('PTC11962M','Philip','T','Cramer',2,215,'9952','19891111'),('PXH22250M','Paul','X','Henriot',5,159,'0877','19930819'),('R-M53550M','Roland','','Mendel',11,150,'0736','19910905'),('RBM23061F','Rita','B','Muller',5,198,'1622','19931009'),('SKO22412M','Sven','K','Ottlieb',5,150,'1389','19910405'),('TPO55093M','Timothy','P','O\'Rourke',13,100,'0736','19880619'),('VPA30890F','Victoria','P','Ashworth',6,140,'0877','19900913'),('Y-L77953M','Yoshi','','Latimer',12,32,'1389','19890611');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `job_desc` varchar(50) NOT NULL DEFAULT 'New Position - title not formalized yet',
  `min_lvl` int NOT NULL,
  `max_lvl` int NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'New Hire - Job not specified',10,10),(2,'Chief Executive Officer',200,250),(3,'Business Operations Manager',175,225),(4,'Chief Financial Officier',175,250),(5,'Publisher',150,250),(6,'Managing Editor',140,225),(7,'Marketing Manager',120,200),(8,'Public Relations Manager',100,175),(9,'Acquisitions Manager',75,175),(10,'Productions Manager',75,165),(11,'Operations Manager',75,150),(12,'Editor',25,100),(13,'Sales Representative',25,100),(14,'Designer',25,100);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `pub_id` char(4) NOT NULL,
  `pub_name` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `country` varchar(30) DEFAULT 'USA',
  PRIMARY KEY (`pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES ('0736','New Moon Books','Boston','MA','USA'),('0877','Binnet & Hardley','Washington','DC','USA'),('1389','Algodata Infosystems','Berkeley','CA','USA'),('1622','Five Lakes Publishing','Chicago','IL','USA'),('1756','Ramona Publishers','Dallas','TX','USA'),('9901','GGG&G','MÂnchen',NULL,'Germany'),('9952','Scootney Books','New York','NY','USA'),('9999','Lucerne Publishing','Paris',NULL,'France');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roysched`
--

DROP TABLE IF EXISTS `roysched`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roysched` (
  `title_id` varchar(6) NOT NULL,
  `lorange` int DEFAULT NULL,
  `hirange` int DEFAULT NULL,
  `royalty` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roysched`
--

LOCK TABLES `roysched` WRITE;
/*!40000 ALTER TABLE `roysched` DISABLE KEYS */;
INSERT INTO `roysched` VALUES ('BU1032',0,5000,10),('PC1035',10001,50000,18),('BU2075',0,1000,10),('PS2091',1001,5000,12),('PS2106',5001,10000,14),('MC3021',10001,12000,22),('TC3218',14001,50000,24),('PC8888',0,5000,10),('PS7777',0,5000,10),('PS3333',15001,50000,16),('BU1111',8001,10000,14),('PS1372',40001,50000,18);
/*!40000 ALTER TABLE `roysched` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `stor_id` char(4) NOT NULL,
  `ord_num` varchar(20) NOT NULL,
  `ord_date` char(8) NOT NULL,
  `qty` smallint NOT NULL,
  `payterms` varchar(12) NOT NULL,
  `title_id` varchar(6) NOT NULL,
  PRIMARY KEY (`stor_id`,`ord_num`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('6380','722a','19940913',3,'Net 60','PS2091'),('7066','A2976','19930524',50,'Net 30','PC8888'),('7066','QA7442.3','19940913',75,'ON invoice','PS2091'),('7067','D4482','19940914',10,'Net 60','PS2091'),('7067','P2121','19920615',40,'Net 30','TC3218'),('7131','N914008','19940914',20,'Net 30','PS2091'),('7131','P3087a','19930529',25,'Net 60','PS7777'),('7896','QQ2299','19931028',15,'Net 60','BU7832'),('8042','423LL922','19940914',15,'ON invoice','MC3021'),('8042','P723','19930311',25,'Net 30','BU1111');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `stor_id` char(4) NOT NULL,
  `stor_name` varchar(40) DEFAULT NULL,
  `stor_address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  PRIMARY KEY (`stor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES ('6380','Eric the Read Books','788 Catamaugus Ave.','Seattle','WA','98056'),('7066','Barnum\'s','567 Pasadena Ave.','Tustin','CA','92789'),('7067','News & Brews','577 First St.','Los Gatos','CA','96745'),('7131','Doc-U-Mat: Quality Laundry and Books','24-A Avogadro Way','Remulade','WA','98014'),('7896','Fricative Bookshop','89 Madison St.','Fremont','CA','90019'),('8042','Bookbeat','679 Carson St.','Portland','OR','89076');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titleauthor`
--

DROP TABLE IF EXISTS `titleauthor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titleauthor` (
  `au_id` varchar(11) NOT NULL,
  `title_id` varchar(6) NOT NULL,
  `au_ord` tinyint DEFAULT NULL,
  `royaltyper` int DEFAULT NULL,
  PRIMARY KEY (`au_id`,`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titleauthor`
--

LOCK TABLES `titleauthor` WRITE;
/*!40000 ALTER TABLE `titleauthor` DISABLE KEYS */;
INSERT INTO `titleauthor` VALUES ('172-32-1176','PS3333',1,100),('213-46-8915','BU2075',1,100),('238-95-7766','PC1035',1,100),('267-41-2394','BU1111',2,40),('267-41-2394','TC7777',2,30),('274-80-9391','BU7832',1,100),('409-56-7008','BU1032',1,60),('427-17-2319','PC8888',1,50),('472-27-2349','TC7777',3,30),('486-29-1786','PC9999',1,100),('648-92-1872','TC4203',1,100),('672-71-3249','TC7777',1,40),('712-45-1867','MC2222',1,100),('722-51-5454','MC3021',1,75),('724-80-9391','PS1372',2,25),('756-30-7391','PS1372',1,75),('807-91-6654','TC3218',1,100),('846-92-7186','PC8888',2,50),('899-46-2035','MC3021',2,25),('998-72-3567','PS2091',1,50);
/*!40000 ALTER TABLE `titleauthor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titles` (
  `title_id` varchar(6) NOT NULL,
  `title` varchar(80) NOT NULL,
  `type` char(12) NOT NULL DEFAULT 'UNDECIDED',
  `pub_id` char(4) DEFAULT NULL,
  `price` decimal(4,2) DEFAULT NULL,
  `advance` decimal(10,2) DEFAULT NULL,
  `royalty` int DEFAULT NULL,
  `ytd_sales` int DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
INSERT INTO `titles` VALUES ('BU1032','The Busy Executive\'s Database Guide','business','1389',19.99,5000.00,10,4095,'An overview of available database systems with emphasis on common business applications. Illustrated.'),('BU1111','Cooking with Computers: Surreptitious Balance Sheets','business','1389',11.95,5000.00,10,3876,'Helpful hints on how to use your electronic resources to the best advantage.'),('BU2075','You Can Combat Computer Stress!','business','0736',2.99,10125.00,24,18722,'The latest medical and psychological techniques for living with the electronic office. Easy-to-understand explanations.'),('BU7832','Straight Talk About Computers','business','1389',19.99,5000.00,10,4095,'Annotated analysis of what computers can do for you: a no-hype guide for the critical user.'),('MC2222','Silicon Valley Gastronomic Treats','mod_cook','0877',19.99,0.00,12,2032,'Favorite recipes for quick, easy, and elegant meals.'),('MC3021','The Gourmet Microwave','mod_cook','0877',2.99,15000.00,24,22246,'Traditional French gourmet recipes adapted for modern microwave cooking.'),('PC1035','But Is It User Friendly?','popular_comp','1389',22.95,7000.00,16,8780,'A survey of software for the naive user, focusing on the \'friendliness\' of each.'),('PC8888','Secrets of Silicon Valley','popular_comp','1389',20.00,8000.00,10,4095,'Muckraking reporting on the world\'s largest computer hardware and software manufacturers.'),('PS1372','Computer Phobic AND Non-Phobic Individuals: Behavior Variations','psychology','0877',21.59,7000.00,10,375,'A must for the specialist, this book examines the difference between those who hate and fear computers and those who don\'t.'),('PS2091','Is Anger the Enemy?','psychology','0736',10.95,2275.00,12,2045,'Carefully researched study of the effects of strong emotions on the body. Metabolic charts included.'),('PS2106','Life Without Fear','psychology','0736',7.00,6000.00,10,111,'New exercise, meditation, and nutritional techniques that can reduce the shock of daily interactions. Popular audience. Sample menus included, exercise video available separately.'),('PS3333','Prolonged Data Deprivation: Four Case Studies','psychology','0736',19.99,2000.00,10,4072,'What happens when the data runs dry?  Searching evaluations of information-shortage effects.'),('PS7777','Emotional Security: A New Algorithm','psychology','0736',7.99,4000.00,10,3336,'Protecting yourself and your loved ones from undue emotional stress in the modern world. Use of computer and nutritional aids emphasized.'),('TC3218','Onions, Leeks, and Garlic: Cooking Secrets of the Mediterranean','trad_cook','0877',20.95,7000.00,10,375,'Profusely illustrated in color, this makes a wonderful gift book for a cuisine-oriented friend.'),('TC4203','Fifty Years in Buckingham Palace Kitchens','trad_cook','0877',11.95,4000.00,14,15096,'More anecdotes from the Queen\'s favorite cook describing life among English royalty. Recipes, techniques, tender vignettes.'),('TC7777','Sushi, Anyone?','trad_cook','0877',14.99,8000.00,10,4095,'Detailed instructions on how to make authentic Japanese sushi in your spare time.');
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-03 17:53:19
