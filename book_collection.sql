-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: book_collection
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birth_year` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Stephen','King',1947),(2,'Robert','Jordan',1948),(3,'Brandon','Sanderson',1975),(4,'Neil','Gaiman',1960),(5,'J.K.','Rowling',1965);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `publication_year` int DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `genre_id` (`genre_id`),
  KEY `publisher_id` (`publisher_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  CONSTRAINT `books_ibfk_3` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Mistborn: The Final Empire',2006,'0765350386',3,2,6),(2,'Mistborn: The Well of Ascension',2007,'0765316886',3,2,6),(3,'Mistborn: The Hero of Ages',2008,'0765316892',3,2,6),(4,'The Eye of the World',1990,'0812509621',2,2,6),(5,'The Great Hunt',1990,'0812509648',2,2,6),(6,'The Shining',1977,'0385121679',1,4,NULL),(7,'The Stand',1978,'0385121679',1,2,NULL),(8,'Misery',1987,'0670813648',1,4,NULL),(9,'American Gods: The Annotated Edition',2002,'0380973650',4,2,10),(10,'Harry Potter and the Sorcerer\'s Stone: The Illustrated Edition',2015,'0545790356',5,2,7),(11,'Harry Potter and the Chamber of Secrets: The Illustrated Edition',2016,'0545840994',5,2,7),(12,'Harry Potter and the Prisoner of Azkaban: The Illustrated Edition',2017,'0545899933',5,2,7),(13,'Harry Potter and the Goblet of Fire: The Illustrated Edition',2019,'1338298754',5,2,7),(14,'The Eye of the World',1990,'0812509621',2,2,6),(15,'The Great Hunt',1990,'0812509648',2,2,6),(16,'The Dragon Reborn',1991,'0812509656',2,2,6),(17,'The Shadow Rising',1992,'0812513476',2,2,6),(18,'The Fires of Heaven',1993,'0812550294',2,2,6),(19,'Lord of Chaos',1994,'0812550294',2,2,6),(20,'A Crown of Swords',1996,'0312857071',2,2,6),(21,'The Path of Daggers',1998,'0312866656',2,2,6),(22,'Winter\'s Heart',2000,'0312863924',2,2,6),(23,'Crossroads of Twilight',2003,'0312864599',2,2,6),(24,'Knife of Dreams',2005,'0312873070',2,2,6);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(255) NOT NULL,
  `description` text,
  `era_of_popularity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Science Fiction','Speculative fiction dealing with imaginative concepts such as futuristic science and technology, space travel, and parallel universes.','Mid-20th century to present'),(2,'Fantasy','A genre of speculative fiction set in a fictional universe, often inspired by real-world myth and folklore.','Early 20th century to present'),(3,'Mystery','A genre of fiction in which a detective, usually a law enforcement officer, investigates a crime, often a murder.','Late 19th century to present'),(4,'Thriller','A genre of fiction that uses suspense, tension, and excitement as its main elements.','Early 20th century to present'),(5,'Historical Fiction','A literary genre where the plot takes place in a setting of the past.','Varies'),(6,'Biography','A non-fiction account of a person\'s life.','Varies'),(7,'Self-Help','Books written with the intention to instruct readers on how to solve personal problems.','Mid-20th century to present'),(8,'Cookbook','A collection of recipes.','Varies');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `year_founded` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (6,'Tor Books','New York',1980),(7,'Scholastic','New York',1920),(8,'Wizards of the Coast','Renton',1990),(9,'DC Comics','Burbank',1935),(10,'HarperCollins','London',1987),(11,'Penguin Random House','New York',2013),(12,'Simon & Schuster','New York',1924);
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-15 22:42:58
