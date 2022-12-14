-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: social
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `desc` varchar(200) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `userId` int NOT NULL,
  `postId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `postId_idx` (`postId`),
  KEY `commentUserId_idx` (`userId`),
  CONSTRAINT `commentUserId` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `postId` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (4,'I am in the mountains!','2022-11-06 21:32:10',4,13),(5,'Very beautiful.','2022-11-06 21:41:38',5,13),(6,'Hello!','2022-11-06 21:44:57',5,15),(7,'Hi Sharif, nice to see you!','2022-11-06 21:45:55',4,15),(9,'Like!','2022-12-01 19:29:42',4,22);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `postId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `likeUserId_idx` (`userId`),
  KEY `likePostId_idx` (`postId`),
  CONSTRAINT `likePostId` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `likeUserId` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (10,4,13),(11,5,13),(12,5,15),(13,4,15),(14,8,19),(15,9,20),(16,10,21),(17,4,22);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `desc` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `userId` int NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `userId_idx` (`userId`),
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (13,'Hello World!','16677451116371920x1200-px-Mount-Everest-mountains-1275667-wallhere.com.jpg',4,'2022-11-06 21:31:51'),(15,'I registered with sychevsocial!','',5,'2022-11-06 21:44:50'),(17,'I entered AltSTU!','1668184886719regnum_picture_15127121591090288_normal.jpg',6,'2022-11-11 23:41:26'),(18,'Hello World!','',7,'2022-11-11 23:46:53'),(19,'print(\"Victor Lipps\")','',8,'2022-11-11 23:48:33'),(20,'I Love JavaScript!','',9,'2022-11-11 23:50:17'),(21,'I got sick.','',10,'2022-11-11 23:52:28'),(22,'Test lab 5','1669897772499photo-1585409677983-0f6c41ca9c3b.avif',4,'2022-12-01 19:29:32');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relationships` (
  `id` int NOT NULL AUTO_INCREMENT,
  `followerUserId` int NOT NULL,
  `followedUserId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `followerUser_idx` (`followerUserId`),
  KEY `followedUser_idx` (`followedUserId`),
  CONSTRAINT `followedUser` FOREIGN KEY (`followedUserId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `followerUser` FOREIGN KEY (`followerUserId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES (6,4,5);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` varchar(200) NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `storyUserId_idx` (`userId`),
  CONSTRAINT `storyUserId` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories`
--

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(45) NOT NULL,
  `coverPic` varchar(300) DEFAULT NULL,
  `profilePic` varchar(300) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test','test@gmail.com','$2a$10$Vb4tbE9NNiJnuPf3Y21HqO9jEz4NYCjvFuR4m9650vMI2Wjk.thLW','Ivan Sychev',NULL,NULL,NULL,NULL),(2,'test2','test2@gmail.com','$2a$10$PR79CQKRXZQP0gm.nQs5xOyCCGypd2zImH4wxEa40ZAqosOFbNO1y','dfgfdg','1667733506084pexels-photo-220453.webp','1667733506061pexels-photo-4881619.jpeg','dfgdfg','dfg'),(3,'test3','test3@gmail.com','$2a$10$dQ9A2L5WcbzxiOt3LPunzO2iMvyYrifh7eZhzQTJc0.Yt4vSbt1Ma','Ivan Sychev 2',NULL,NULL,NULL,NULL),(4,'sychev','sychev@gmail.com','$2a$10$9UWTMOdT0icFFc0/ot/fDeSk0/FNd6A9.7RkdeTTfIYxI5F7thhz6','Ivan Sychev','1667745396277pexels-photo-13440765.jpeg','1667745392172pexels-photo-14028501.webp','Russia','sychev.com'),(5,'nuridinov','nuridinov@gmail.com','$2a$10$9VZN1.aIC1CKi4yguJ2O7.luJAAlFaimaqXP7OnzOFBAEw5jbCoeK','Sharif Nuridinov','16677456240222020-09-18-mixnews-1594705838_krasota-prirody-na-fotografiyax-14.jpg','1667745599046pexels-photo-220453.webp','Russia','-'),(6,'salykin','salykin@gmail.com','$2a$10$jXTCiXNfpieqImGLV.FXdOM.oBhH7sQF6EBp5jGoDbpNMaojtZDuS','Kirill Salykin','1668183995440photo-1507525428034-b723cf961d3e.avif','1668183973762michael_b_jordan_0.jpg','Russia','salykin.com'),(7,'feofanov','feofanov@gmail.com','$2a$10$x/wEhpf5VsS0tXaERyUXQeOwdPPjIk8pJqXCKafYr94dShE8EtPVK','Maxim Feofanov','1668184194942photo-1476514525535-07fb3b4ae5f1.avif','1668184191487Chris-Pratt.avif','Russia','feofanov.com'),(8,'lipps','lipps@gmail.com','$2a$10$DWcXDP80PvmpmXhK7WNc8.gZq1n1.V/JhtteYrEVgMBc.LnaCQC5O','Victor Lipps','1668184317887photo-1569817480337-01a8b22cd8d7.avif','1668184314976JS45955653.jpg','Russia','lipps.com'),(9,'kosenko','kosenko@gmail.com','$2a$10$RKQnAoXBao0rHK6hXbBXk./XCvOTdlBmlroawWTtVTw4kRlDcJ.Ma','Roman Kosenko','1668184520304photo-1532274402911-5a369e4c4bb5.avif','1668184511725sub-buzz-3957-1587071914-8.jpg','Russia','kosenko.com'),(10,'esaulov','esaulov@gmail.com','$2a$10$6xHfpKSxexmAA8IYRH2u3OZzgq//dEjBlB4HTdxlynJjsgLdFaPZ2','Ivan Esaulov','1668184779365photo-1418065460487-3e41a6c84dc5.avif','1668184775895david-dobrik-nationality-1588777023-view-0.jpg','Russia','esaulov.com'),(11,'sychev_lab5','sychev_lab5@gmail.com','$2a$10$X8u4pgOjs3YUX7CerEnn.evnC83FgmIWnorW9XWaqp.8W6rFQ58GO','test lab5',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'social'
--

--
-- Dumping routines for database 'social'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-01 19:58:12
