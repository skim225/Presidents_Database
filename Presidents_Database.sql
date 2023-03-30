CREATE DATABASE IF NOT EXISTS `presidents_db` /*!40100 DEFAULT CHARACTER SET
utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `presidents_db`;
-- MySQL dump 10.13 Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost Database: presidents_db
-- ------------------------------------------------------
-- Server version 8.0.22
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
-- Table structure for table `election`
--
DROP TABLE IF EXISTS `election`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `election` (
 `election_id` int NOT NULL,
 `election_year` int DEFAULT NULL,
 `winner` varchar(45) DEFAULT NULL,
 `electoral_college_votes` varchar(45) DEFAULT NULL,
 `electoral_college_votes_percentage` varchar(45) DEFAULT NULL,
 `popular_votes` int DEFAULT NULL,
 `popular_votes_percentage` varchar(45) DEFAULT NULL,
 `voter_turnout` varchar(45) DEFAULT NULL,
 `president_id` int NOT NULL,
 PRIMARY KEY (`election_id`),
 KEY `fk9_idx` (`president_id`),
 CONSTRAINT `fk8` FOREIGN KEY (`president_id`) REFERENCES `president`
(`president_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `election`
--
LOCK TABLES `election` WRITE;
/*!40000 ALTER TABLE `election` DISABLE KEYS */;
INSERT INTO `election` VALUES (1,1788,'George
Washington','69/69','100.00%',43782,'100.00%','11.60%',1),(2,1792,'George
Washington','132/132','100.00%',28579,'100.00%','6.30%',1),(3,1796,'John
Adams','71/138','51.45%',35726,'53.45%','20.10%',2),(4,1800,'Thomas
Jefferson','73/138','52.90%',41330,'61.43%','32.30%',3),(5,1804,'Thomas
Jefferson','162/176','92.05%',104110,'72.79%','23.80%',3),(6,1808,'James
Madison','122/175','69.72%',124732,'64.73%','36.80%',4),(7,1812,'James
Madison','128/217','58.99%',140431,'50.37%','40.40%',4),(8,1816,'James
Monroe','183/217','84.33%',76592,'68.16%','23.50%',5),(9,1820,'James
Monroe','231/232','99.57%',87343,'80.61%','10.10%',5),(10,1824,'John Quincy
Adams','84/261','32.18%',113142,'30.92%','26.90%',6),(11,1828,'Andrew
Jackson','178/261','68.20%',642806,'55.93%','57.30%',7),(12,1832,'Andrew
Jackson','219/286','76.57%',702735,'54.74%','57.00%',7),(13,1836,'Martin Van
Buren','170/294','57.82%',763291,'50.79%','56.50%',8),(14,1840,'William Henry
Harrison','234/294','79.59%',1275583,'52.87%','80.30%',9),(15,1844,'James
Polk','170/275','61.82%',1339570,'49.54%','79.20%',11),(16,1848,'Zachary
Taylor','163/290','56.21%',1360235,'47.28%','72.80%',12),(17,1852,'Franklin
Pierce','254/296','85.81%',1605943,'50.83%','69.50%',14),(18,1856,'James
Buchanan','174/296','58.78%',1835140,'45.29%','79.40%',15),(19,1860,'Abraham
Lincoln','180/303','59.41%',1855993,'39.65%','81.80%',16),(20,1864,'Abraham
Lincoln','212/233','90.99%',2211317,'55.03%','76.30%',16),(21,1868,'Ulysses
Grant','214/294','72.79%',3013790,'52.66%','80.90%',18),(22,1872,'Ulysses
Grant','286/352','81.25%',3597439,'55.58%','72.10%',18),(23,1876,'Rutherford
Hayes','185/369','50.14%',4034142,'47.92%','82.60%',19),(24,1880,'James
Garfield','214/369','57.99%',4453337,'48.31%','80.50%',20),(25,1884,'Grover
Cleveland','219/401','54.61%',4914482,'48.85%','78.20%',22),(26,1888,'Benjamin
Harrison','233/401','58.10%',5443892,'47.80%','80.50%',23),(27,1892,'Grover
Cleveland','277/444','62.39%',5553898,'46.02%','75.80%',24),(28,1896,'William
McKinley','271/447','60.63%',7112138,'51.02%','79.60%',25),(29,1900,'William
McKinley','292/447','65.23%',7228864,'51.64%','73.70%',25),(30,1904,'Theodore
Roosevelt','336/476','70.59%',7630557,'56.42%','65.50%',26),(31,1908,'William
Taft','321/483','66.46%',7678335,'51.57%','65.70%',27),(32,1912,'Woodrow
Wilson','435/531','81.92%',6296284,'41.84%','59.00%',28),(33,1916,'Woodrow
Wilson','277/531','52.17%',9126868,'49.24%','61.80%',28),(34,1920,'Warren
Harding','404/531','76.08%',16144093,'60.32%','49.20%',29),(35,1924,'Calvin
Coolidge','382/531','71.94%',15723789,'54.04%','48.90%',30),(36,1928,'Herbert
Hoover','444/531','83.62%',21427123,'58.21%','56.90%',31),(37,1932,'Franklin
Roosevelt','472/531','88.89%',22821277,'57.41%','56.90%',32),(38,1936,'Franklin
Roosevelt','523/531','98.49%',27752648,'60.80%','61.00%',32),(39,1940,'Franklin
Roosevelt','449/531','84.56%',27313945,'54.74%','62.40%',32),(40,1944,'Franklin
Roosevelt','432/531','81.36%',25612916,'53.39%','55.90%',32),(41,1948,'Harry
Truman','303/531','57.06%',24179347,'49.55%','52.20%',33),(42,1952,'Dwight
Eisenhower','442/531','83.24%',34075529,'55.18%','62.30%',34),(43,1956,'Dwight
Eisenhower','457/531','86.06%',35579180,'57.37%','60.20%',34),(44,1960,'John F.
Kennedy','303/537','56.42%',34220984,'49.72%','63.80%',35),(45,1964,'Lyndon
Johnson','486/538','90.33%',43127041,'61.05%','62.80%',36),(46,1968,'Richard
Nixon','301/538','55.95%',31783783,'43.42%','62.50%',37),(47,1972,'Richard
Nixon','520/538','96.65%',47168710,'60.67%','56.20%',37),(48,1976,'James
Carter','297/538','55.20%',40831881,'50.08%','54.80%',39),(49,1980,'Ronald
Reagan','489/538','90.89%',43903230,'50.75%','54.20%',40),(50,1984,'Ronald
Reagan','525/538','97.58%',54455472,'58.77%','55.20%',40),(51,1988,'George H. W.
Bush','426/538','79.18%',48886597,'53.37%','52.80%',41),(52,1992,'Bill
Clinton','370/538','68.77%',44909806,'43.01%','58.10%',42),(53,1996,'Bill
Clinton','379/538','70.45%',47400125,'49.23%','51.70%',42),(54,2000,'George W.
Bush','271/538','50.37%',50460110,'47.87%','54.20%',43),(55,2004,'George W.
Bush','286/538','53.16%',62040610,'50.73%','60.10%',43),(56,2008,'Barack
Obama','365/538','67.84%',69498516,'52.93%','61.60%',44),(57,2012,'Barack
Obama','332/538','61.71%',65915795,'51.06%','58.60%',44),(58,2016,'Donald
Trump','304/538','56.50%',62984828,'46.09%','60.20%',45);
/*!40000 ALTER TABLE `election` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `first_lady`
--
DROP TABLE IF EXISTS `first_lady`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `first_lady` (
 `first_lady_id` int NOT NULL,
 `first_name` varchar(45) NOT NULL,
 `last_name` varchar(45) NOT NULL,
 `associated_president` varchar(45) NOT NULL,
 `president_id` int NOT NULL,
 PRIMARY KEY (`first_lady_id`),
 KEY `fk3_idx` (`president_id`),
 CONSTRAINT `fk3` FOREIGN KEY (`president_id`) REFERENCES `president`
(`president_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `first_lady`
--
LOCK TABLES `first_lady` WRITE;
/*!40000 ALTER TABLE `first_lady` DISABLE KEYS */;
INSERT INTO `first_lady` VALUES (1,'Martha ','Dandridge','George Washington',1),
(2,'Abigail ','Smith','John Adams',2),(3,'Martha ','Jefferson','Thomas
Jefferson',3),(4,'Dolley','Payne','James Madison',4),(5,'Elizabeth
','Kortright','James Monroe',5),(6,'Louisa Catherine ','Johnson','John Quincy
Adams',6),(7,'Emily \n','Donelson','Andrew Jackson',7),(8,'Sarah ','Yorke','Andrew
Jackson',7),(9,'Sarah ','Angelica Singleton','Martin Van Buren',8),(10,'Anna
','Tuthill Symmes','William Henry Harrison',9),(11,'Jane','Irwin','William Henry
Harrison',9),(12,'Letitia ','Christian','John Tyler',10),(13,'Elizabeth Priscilla
','Cooper','John Tyler',10),(14,'Julia \n','Gardiner','John Tyler',10),
(15,'Sarah','Childress','James K. Polk',11),(16,'Margaret Mackall\
n','Smith','Zachary Taylor',12),(17,'Abigail ','Powers','Millard Fillmore',13),
(18,'Jane Means \n','Appleton','Franklin Pierce',14),(19,'Harriet Rebecca \
n','Lane','James Buchanan',15),(20,'Mary Ann ','Todd','Abraham Lincoln',16),
(21,'Eliza ','McCardle','Andrew Johnson',17),(22,'Julia Boggs ','Dent','Ulysses S.
Grant',18),(23,'Lucy Ware ','Webb','Rutherford B. Hayes',19),(24,'Lucretia
','Rudolph','James A. Garfield',20),(25,'Mary Arthur ','McElroy','Chester A.
Arthur',21),(26,'Rose Elizabeth ',' Cleveland','Grover Cleveland',22),(27,'Frances
Clara Folsom','Folsom','Grover Cleveland',22),(28,'Caroline Lavinia Scott','
Scott','Benjamin Harrison',23),(29,'Mary Scott ','Harrison','Benjamin
Harrison',23),(30,'Frances Clara','Folsom','Grover Cleveland',24),
(31,'Ida','Saxton','William McKinley',25),(32,'Edith Kermit','Carow','Theodore
Roosevelt',26),(33,'Helen Louise ','Herron','William H. Taft',27),(34,'Ellen
Louise','Axson','Woodrow Wilson',28),(35,'Margaret Woodrow','Wilson','Woodrow
Wilson',28),(36,'Edith ','Bolling','Woodrow Wilson',28),(37,'Florence
Mabel','Kling','Warren G. Harding',29),(38,'Grace Anna','Goodhue','Calvin
Coolidge',30),(39,'Lou','Henry','Herbert Hoover',31),(40,'Anna Eleanor
','Roosevelt','Franklin D. Roosevelt',32),(41,'Elizabeth Virginia','Wallace','Harry
S. Truman',33),(42,'Mamie Geneva ','Doud','Dwight D. Eisenhower',34),
(43,'Jacqueline Lee ','Bouvier','John F. Kennedy',35),(44,'Claudia Alta
','Taylor','Lyndon B. Johnson',36),(45,'Thelma Catherine','Ryan','Richard
Nixon',37),(46,'Elizabeth Ann ','Bloomer','Gerald Ford',38),(47,'Eleanor Rosalynn
','Smith','Jimmy Carter',39),(48,'Nancy ','Davis','Ronald Reagan',40),
(49,'Barbara','Pierce','George H. W. Bush',41),(50,'Hillary Diane','Rodham','Bill
Clinton',42),(51,'Laura Lane','Welch','George W. Bush',43),(52,'Michelle
LaVaughn','Robinson','Barack Obama',44),(53,'Melanija ','Knavs','Donald Trump',45);
/*!40000 ALTER TABLE `first_lady` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `pii`
--
DROP TABLE IF EXISTS `pii`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pii` (
 `PII_id` int NOT NULL,
 `date_birth` date DEFAULT NULL,
 `date_death` date DEFAULT NULL,
 `place_birth` varchar(45) DEFAULT NULL,
 `place_death` varchar(45) DEFAULT NULL,
 `president_id` int NOT NULL,
 PRIMARY KEY (`PII_id`),
 KEY `fk9_idx` (`president_id`),
 CONSTRAINT `fk9` FOREIGN KEY (`president_id`) REFERENCES `president`
(`president_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `pii`
--
LOCK TABLES `pii` WRITE;
/*!40000 ALTER TABLE `pii` DISABLE KEYS */;
INSERT INTO `pii` VALUES (1,'1732-02-22','1799-12-14','Westmoreland Co.,
Va.','Mount Vernon, Va.',1),(2,'1735-10-30','1826-07-04','Quincy, Mass.','Quincy,
Mass.',2),(3,'1743-04-13','1826-07-04','Albemarle Co., Va.','Albemarle Co.,
Va.',3),(4,'1751-03-16','1836-06-28','Port Conway, Va.','Orange Co., Va.',4),
(5,'1758-04-28','1831-07-04','Westmoreland Co., Va.','New York, New York',5),
(6,'1767-07-11','1848-02-23','Quincy, Mass.','Washington, D.C.',6),(7,'1767-03-
15','1845-06-08','Waxhaws, No/So Carolina','Nashville, Tennessee',7),(8,'1782-12-
05','1862-07-24','Kinderhook, New York','Kinderhook, New York',8),(9,'1773-02-
09','1841-04-04','Charles City Co., Va.','Washington, D.C.',9),(10,'1790-03-
29','1862-01-18','Charles City Co., Va.','Richmond, Va.',10),(11,'1795-11-
02','1849-06-15','Mecklenburg Co., N.C.','Nashville, Tennessee',11),(12,'1784-11-
24','1850-07-09','Orange County, Va.','Washington, D.C',12),(13,'1800-01-07','1874-
03-08','Cayuga Co., New York','Buffalo, New York',13),(14,'1804-11-23','1869-10-
08','Hillsborough, N.H.','Concord, New Hamp.',14),(15,'1791-04-23','1868-06-
01','Cove Gap, Pa.','Lancaster, Pa.',15),(16,'1809-02-12','1865-04-15','LaRue Co.,
Kentucky','Washington, D.C.',16),(17,'1808-12-29','1875-07-31','Raleigh, North
Carolina','Elizabethton, Tenn.',17),(18,'1822-04-27','1885-07-23','Point Pleasant,
Ohio','Wilton, New York',18),(19,'1822-10-04','1893-01-17','Delaware,
Ohio','Fremont, Ohio',19),(20,'1831-11-19','1881-09-19','Cuyahoga Co.,
Ohio','Elberon, New Jersey',20),(21,'1829-10-05','1886-11-18','Fairfield,
Vermont','New York, New York',21),(22,'1837-03-18','2008-06-24','Caldwell, New
Jersey','Princeton, New Jersey',22),(23,'1833-08-20','1901-03-13','North Bend,
Ohio','Indianapolis, Indiana',23),(24,'1837-03-18','2008-06-24','Caldwell, New
Jersey','Princeton, New Jersey',24),(25,'1843-01-29','1901-09-14','Niles,
Ohio','Buffalo, New York',25),(26,'1858-10-27','2019-01-06','New York, New
York','Oyster Bay, New York',26),(27,'1857-09-15','1930-03-08','Cincinnati,
Ohio','Washington, D.C.',27),(28,'1856-12-28','2024-02-03','Staunton,
Virginia','Washington, D.C.',28),(29,'1865-11-02','2023-08-02','Morrow County,
Ohio','San Francisco, Cal.',29),(30,'1872-07-04','1933-01-05','Plymouth,
Vermont','Northampton, Mass.',30),(31,'1874-08-10','1964-10-20','West Branch,
Iowa','New York, New York',31),(32,'1882-01-30','1945-04-12','Hyde Park, New
York','Warm Springs, Ga.',32),(33,'1884-05-08','1972-12-26','Lamar,
Missouri','Kansas City, Missouri',33),(34,'1890-10-14','1969-03-28','Denison,
Texas','Washington, D.C.',34),(35,'1917-05-29','1963-11-22','Brookline,
Mass.','Dallas, Texas',35),(36,'1908-08-27','1973-01-22','Gillespie Co.,
Texas','Gillespie Co., Texas',36),(37,'2013-01-09','1994-04-22','Yorba Linda,
Cal.','New York, New York',37),(38,'2013-07-14','2006-12-26','Omaha,
Nebraska','Rancho Mirage, Cal.',38),(39,'2024-10-01',NULL,'Plains,
Georgia',NULL,39),(40,'2011-02-06','2004-06-05','Tampico, Illinois','Los Angeles,
Cal.',40),(41,'2024-06-12','2018-11-30','Milton, Mass.','Houston, Texas',41),
(42,'1946-08-19',NULL,'Hope, Arkansas',NULL,42),(43,'1946-07-06',NULL,'New Haven,
Conn.',NULL,43),(44,'1961-08-04',NULL,'Honolulu, Hawaii',NULL,44),(45,'1946-06-
14',NULL,'New York, New York',NULL,45);
/*!40000 ALTER TABLE `pii` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `political_party`
--
DROP TABLE IF EXISTS `political_party`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `political_party` (
 `political_party_id` int NOT NULL,
 `name` varchar(45) NOT NULL,
 `year_founded` varchar(45) DEFAULT NULL,
 `year_dissolved` varchar(45) DEFAULT NULL,
 PRIMARY KEY (`political_party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `political_party`
--
LOCK TABLES `political_party` WRITE;
/*!40000 ALTER TABLE `political_party` DISABLE KEYS */;
INSERT INTO `political_party` VALUES (1,'Unaffiliated','',''),
(2,'Federalist','1791','1834'),(3,'Democratic_Republican','1792','1834'),
(4,'Democratic','1828',''),(5,'Whig','1836','1856'),(6,'Republican','1854','');
/*!40000 ALTER TABLE `political_party` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `pres_pop_vote`
--
DROP TABLE IF EXISTS `pres_pop_vote`;
/*!50001 DROP VIEW IF EXISTS `pres_pop_vote`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pres_pop_vote` AS SELECT
 1 AS `winner`,
 1 AS `Popular vote percentage`,
 1 AS `party_affiliation`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `president`
--
DROP TABLE IF EXISTS `president`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `president` (
 `president_id` int NOT NULL,
 `first_name` varchar(45) NOT NULL,
 `last_name` varchar(45) NOT NULL,
 `party_affiliation` varchar(45) DEFAULT NULL,
 `start_term_date` date NOT NULL,
 `end_term_date` date DEFAULT NULL,
 `political_party_id` int NOT NULL,
 PRIMARY KEY (`president_id`),
 KEY `fk12_idx` (`political_party_id`),
 CONSTRAINT `fk12` FOREIGN KEY (`political_party_id`) REFERENCES `political_party`
(`political_party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `president`
--
LOCK TABLES `president` WRITE;
/*!40000 ALTER TABLE `president` DISABLE KEYS */;
INSERT INTO `president` VALUES (1,'George','Washington','Unaffilated','1789-04-
30','1797-03-04',1),(2,'John','Adams','Federalist','1797-03-04','1801-03-04',2),
(3,'Thomas','Jefferson','Democratic Republican','1801-03-04','1809-03-04',3),
(4,'James','Madison','Democratic Republican','1809-03-04','1817-03-04',3),
(5,'James','Monroe','Democratic Republican','1817-03-04','1825-03-04',3),(6,'John
Quincy','Adams','Democratic Republican','1825-03-04','1829-03-04',3),
(7,'Andrew','Jackson','Democratic','1829-03-04','1837-03-04',4),(8,'Martin
Van','Buren','Democratic','1837-03-04','1841-03-04',4),(9,'William
Henry','Harrison','Whig','1841-03-04','1841-04-04',5),
(10,'John','Tyler','Whig','1841-04-04','1845-03-04',5),(11,'James
K.','Polk','Democratic ','1845-03-04','1849-03-04',4),
(12,'Zachary','Taylor','Whig','1849-03-04','1850-07-09',5),
(13,'Millard','Fillmore','Whig','1850-07-09','1853-03-04',5),
(14,'Franklin','Pierce','Democratic ','1853-03-04','1857-03-04',4),
(15,'James','Buchanan','Democratic ','1857-03-04','1861-03-04',4),
(16,'Abraham','Lincoln','Republican','1861-03-04','1865-04-15',6),
(17,'Andrew','Johnson','Democratic','1865-04-15','1869-03-04',4),(18,'Ulysses
S,','Grant','Republican','1869-03-04','1877-03-04',6),(19,'Rutherford
B.','Hayes','Republican','1877-03-04','1881-03-04',6),
(20,'James','Garfield','Republican','1881-03-04','1881-09-19',6),(21,'Chester
A.','Arthur','Republican','1881-09-19','1885-03-04',6),
(22,'Grover','Cleveland','Democratic','1885-03-04','1889-03-04',4),
(23,'Benjamin','Harrison','Republican','1889-03-04','1893-03-04',6),
(24,'Grover','Cleveland','Democratic','1893-03-04','1897-03-04',4),
(25,'Williiam','Mckinley','Republican','1897-03-04','1901-09-14',6),
(26,'Theodore','Roosevelt','Republican','1901-09-14','2009-03-04',6),(27,'William
Howard','Taft','Republican','1909-03-04','2013-03-04',6),
(28,'Woodrow','Wilson','Democratic','2013-03-04','2021-03-04',4),(29,'Warren
G.','Harding','Republican','2021-03-04','2023-08-02',6),
(30,'Calvin','Coolidge','Republican','2023-08-02','2029-03-04',6),
(31,'Herbert','Hoover','Republican','2029-03-04','1933-03-04',6),(32,'Franklin
D.','Roosevelt','Democratic','1933-03-04','1941-01-20',4),(33,'Harry
S.','Truman','Democratic','1945-04-12','1953-01-20',4),(34,'Dwight
D.','Eisenhower','Republican','1953-01-20','1961-01-20',6),(35,'John
F.','Kennedy','Democratic','1961-01-20','1963-11-22',4),(36,'Lyndon
B.','Johnson','Democratic','1963-11-22','1969-01-20',4),(37,'Richard
M.','Nixon','Republican','1969-01-20','1974-08-09',6),(38,'Gerald
R.','Ford','Republican','1974-08-09','1977-01-20',6),
(39,'James','Carter','Democratic','1977-01-20','1981-01-20',4),
(40,'Ronald','Reagan','Republican','1981-01-20','1989-01-20',6),(41,'George H.
W.','Bush','Republican','1989-01-20','1993-01-20',6),(42,'William
J.','Clinton','Democratic','1993-01-20','2001-01-20',4),(43,'George H.
W.','Bush','Republican','2001-01-20','2009-01-20',6),
(44,'Barack','Obama','Democratic','2009-01-20','2017-01-20',4),(45,'Donald
J.','Trump','Republican','2017-01-20',NULL,6);
/*!40000 ALTER TABLE `president` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `second_lady`
--
DROP TABLE IF EXISTS `second_lady`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `second_lady` (
 `second_lady_id` int NOT NULL,
 `first_name` varchar(45) DEFAULT NULL,
 `last_name` varchar(45) DEFAULT NULL,
 `associated_vice_president` varchar(45) DEFAULT NULL,
 `vice_president_id` int NOT NULL,
 PRIMARY KEY (`second_lady_id`),
 KEY `fk7_idx` (`vice_president_id`),
 CONSTRAINT `fk7` FOREIGN KEY (`vice_president_id`) REFERENCES `vice_president`
(`vice_president_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `second_lady`
--
LOCK TABLES `second_lady` WRITE;
/*!40000 ALTER TABLE `second_lady` DISABLE KEYS */;
INSERT INTO `second_lady` VALUES (1,'Abigail','Smith','John Adams',1),
(2,NULL,NULL,'Thomas Jefferson',2),(3,NULL,NULL,'Aaron Burr',3),
(4,NULL,NULL,'George Clinton',4),(5,'Hannah','Tompkins','Daniel Tompkins',5),
(6,'Ann','Thompson','John C. Calhoun',6),(7,NULL,NULL,'John C. Calhoun',7),
(8,'Hannah','Minthorne','Richard M. Johnson',8),(9,'Floride','Calhoun','John
Tyler',9),(10,NULL,NULL,NULL,10),(11,NULL,NULL,'George M. Dallas',11),
(12,NULL,NULL,'Millard Fillmore',12),(13,NULL,NULL,NULL,13),(14,NULL,NULL,'William
R. King',14),(15,'Mary ','Burch','John C. Breckinridge',15),(16,'Ellen
','Emery','Hannibal Hamlin',16),(17,NULL,NULL,NULL,17),(18,'Ellen
','Wade','Schuyler Colfax',18),(19,NULL,NULL,'William A. Wheeler',19),
(20,NULL,NULL,'Chester A. Arthur',20),(21,NULL,NULL,NULL,21),
(22,'Eliza','Morgan','Thomas A. Hendricks',22),(23,'Anna','Street','Levi P.
Morton',23),(24,'Letitia','Green','Adlai Stevenson',24),
(25,'Esther','Tuttle','Garret Hobart',25),(26,NULL,NULL,NULL,26),
(27,'Carrie','Babcock','James S. Sherman',27),(28,'Lois','Kimsey','Thomas R.
Marshall',28),(29,'Grace','Goodhue','Calvin Coolidge',29),(30,NULL,NULL,NULL,30),
(31,NULL,NULL,'Charles Curtis',31),(32,'Mariette','Rheiner','John Nance
Garner',32),(33,NULL,NULL,NULL,33),(34,'Thelma','Ryan','Richard Nixon',34),
(35,'Claudia','Taylor','Lyndon B. Johnson',35),(36,NULL,NULL,NULL,36),
(37,'Elinor','Judefind','Spiro Agnew',37),(38,NULL,NULL,NULL,38),
(39,'Joan','Adams','Walter Mondale',39),(40,'Barbara','Pierce','George H. W.
Bush',40),(41,'Marilyn','Tucker','Dan Quayle',41),(42,'Mary','Aitcheson','Al
Gore',42),(43,'Lynne','Vincent','Dick Cheney',43),(44,'Jill','Jacobs','Joe
Biden',44),(45,'Karen','Batten','Mike Pence',45);
/*!40000 ALTER TABLE `second_lady` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `vice_president`
--
DROP TABLE IF EXISTS `vice_president`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vice_president` (
 `vice_president_id` int NOT NULL,
 `first_name` varchar(45) DEFAULT NULL,
 `last_name` varchar(45) DEFAULT NULL,
 `party_affiliation` varchar(45) DEFAULT NULL,
 `associated_president` varchar(45) NOT NULL,
 `president_id` int NOT NULL,
 PRIMARY KEY (`vice_president_id`),
 KEY `fk6_idx` (`president_id`),
 CONSTRAINT `fk11` FOREIGN KEY (`president_id`) REFERENCES `president`
(`president_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `vice_president`
--
LOCK TABLES `vice_president` WRITE;
/*!40000 ALTER TABLE `vice_president` DISABLE KEYS */;
INSERT INTO `vice_president` VALUES (1,'John','Adams','Unaffilated','George
Washington',1),(2,'Thomas','Jefferson','Federalist','John Adams',2),
(3,'Aaron','Burr','Democratic Republican','Thomas Jefferson',3),
(4,'George','Clinton','Democratic Republican','James Madison',4),(5,'Daniel D.
','Tompkins','Democratic Republican','James Monroe',5),(6,'John C.
','Calhoun','Democratic Republican','John Quincy Adams',6),(7,'John C.
','Calhoun','Democratic','Andrew Jackson',7),(8,'Richard Mentor
','Johnson','Democratic','Martin Van Buren',8),(9,'John
Tyler','Tyler','Whig','William Henry Harrison',9),(10,NULL,NULL,NULL,'John
Tyler',10),(11,'George M. ','Dallas','Democratic ','James K. Polk',11),(12,'Millard
','Fillmore','Whig','Zachary Taylor',12),(13,NULL,NULL,NULL,'Millard Fillmore',13),
(14,'William R. ','King','Democratic ','Franklin Pierce',14),(15,'John
C.','Breckinridge','Democratic ','James Buchanan',15),(16,'Hannibal
','Hamlin','Republican','Abraham Lincoln',16),(17,NULL,NULL,NULL,'Andrew
Johnson',17),(18,'Schuyler','Colfax','Republican','Ulysses S. Grant',18),
(19,'William A. ','Wheeler','Republican','Rutherford B. Hayes',19),(20,'Chester A.
','Arthur','Republican','James A. Garfield',20),(21,NULL,NULL,NULL,'Chester
Arthur',21),(22,'Thomas A. ','Hendricks','Democratic','Grover Cleveland',22),
(23,'Levi P. ','Morton','Republican','Benjamin Harrison',23),
(24,'Adlai','Stevenson','Democratic','Grover Cleveland',24),
(25,'Garret','Hobart','Republican','William McKinley',25),
(26,NULL,NULL,NULL,'Theodore Roosevelt',26),(27,'James S.
','Sherman','Republican','William H. Taft',27),(28,'Thomas R.
','Marshall','Democratic','Woodrow Wilson',28),(29,'Calvin
','Coolidge','Republican','Warren G. Harding',29),(30,NULL,NULL,NULL,'Calvin
Coolidge',30),(31,'Charles ','Curtis','Republican','Herbert Hoover',31),(32,'John
Nance ','Garner','Democratic','Franklin D. Roosevelt',32),(33,NULL,NULL,NULL,'Harry
S. Truman',33),(34,'Richard','Nixon','Republican','Dwight D. Eisenhower',34),
(35,'Lyndon B. ','Johnson','Democratic','John F. Kennedy',35),
(36,NULL,NULL,NULL,'Lyndon B. Johnson',36),(37,'Spiro
','Agnew','Republican','Richard Nixon',37),(38,NULL,NULL,NULL,'Gerald Ford',38),
(39,'Walter ','Mondale','Democratic','Jimmy Carter',39),(40,'George H. W.
','Bush','Republican','Ronald Reagan',40),(41,'Dan ','Quayle','Republican','George
H. W. Bush',41),(42,'Al','Gore','Democratic','Bill Clinton',42),(43,'Dick
','Cheney','Republican','George W. Bush',43),(44,'Joe
','Biden','Democratic','Barack Obama',44),(45,'Mike ','Pence','Republican','Donald
Trump',45);
/*!40000 ALTER TABLE `vice_president` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `vp_party`
--
DROP TABLE IF EXISTS `vp_party`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vp_party` (
 `vice_president_id` int NOT NULL,
 `political_party_id` int NOT NULL,
 KEY `fk4_idx` (`vice_president_id`),
 KEY `fk5_idx` (`political_party_id`),
 CONSTRAINT `fk4` FOREIGN KEY (`vice_president_id`) REFERENCES `vice_president`
(`vice_president_id`),
 CONSTRAINT `fk5` FOREIGN KEY (`political_party_id`) REFERENCES `political_party`
(`political_party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `vp_party`
--
LOCK TABLES `vp_party` WRITE;
/*!40000 ALTER TABLE `vp_party` DISABLE KEYS */;
/*!40000 ALTER TABLE `vp_party` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Final view structure for view `pres_pop_vote`
--
/*!50001 DROP VIEW IF EXISTS `pres_pop_vote`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pres_pop_vote` AS select `election`.`winner` AS
`winner`,`election`.`popular_votes_percentage` AS `Popular vote
percentage`,`president`.`party_affiliation` AS `party_affiliation` from (`election`
join `president` on((`election`.`president_id` = `president`.`president_id`)))
where (`election`.`popular_votes_percentage` < (select
avg(`election`.`popular_votes_percentage`) from `election`)) order by
`election`.`popular_votes_percentage` */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- Dump completed on 2020-12-14 20:16:38



