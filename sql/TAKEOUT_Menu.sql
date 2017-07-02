-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: TAKEOUT
-- ------------------------------------------------------
-- Server version	5.7.12-0ubuntu1

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
-- Table structure for table `Menu`
--

DROP TABLE IF EXISTS `Menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Menu` (
  `m_编号` varchar(5) NOT NULL,
  `m_菜名` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `m_价格` decimal(10,2) DEFAULT NULL,
  `m_信息` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `m_imgURL` varchar(255) DEFAULT NULL,
  `m_Have` int(11) DEFAULT '0',
  `r_编号` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`m_编号`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Menu`
--

LOCK TABLES `Menu` WRITE;
/*!40000 ALTER TABLE `Menu` DISABLE KEYS */;
INSERT INTO `Menu` VALUES ('fdsf','dfe',45.00,'efef','efef',5,'001'),('m0001','辣子鸡丁',15.00,'无','../images/2.jpg',5,'001'),('m0002','辣子鸡',13.50,'无','../images/3.jpg',5,'001'),('m0004','豆腐',2.50,'无','../images/5.jpg',2,'002'),('m0005','m_菜名',10.30,'m_信息','../images/6.jpg',3,'002'),('m0006','m_菜名',10.30,'m_信息','../images/7.jpg',3,'002'),('m0021','wew',32.00,'wewq','ewqewq',2,'003'),('rwer3','dfsf',23.00,'dfsf','dfsf',6,'001'),('srwe','qwew',34.00,'wdwq','wde',3,'003'),('we','wewe',34.00,'err','efef',4,'001');
/*!40000 ALTER TABLE `Menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-25 15:13:37
