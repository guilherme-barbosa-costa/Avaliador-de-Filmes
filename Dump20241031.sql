CREATE DATABASE  IF NOT EXISTS `sistema_filmes` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sistema_filmes`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema_filmes
-- ------------------------------------------------------
-- Server version	5.5.16

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
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota` int(11) DEFAULT NULL,
  `comentario` text,
  `usuario_id` int(11) DEFAULT NULL,
  `filme_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `filme_id` (`filme_id`),
  CONSTRAINT `avaliacao_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE,
  CONSTRAINT `avaliacao_ibfk_2` FOREIGN KEY (`filme_id`) REFERENCES `filme` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `texto` text NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `filme_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `filme_id` (`filme_id`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`filme_id`) REFERENCES `filme` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `diretor` varchar(100) NOT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `ano_lancamento` int(11) DEFAULT NULL,
  `sinopse` text,
  `image` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,'adada','dadadad','adad',0,NULL,NULL),(2,'guilherme','barbosa ','costa',1999,NULL,NULL),(3,'guilherme','barbosa ','costa',1999,'addddddddddddddddddddddddaaaaaaaaaaaaaaaaaaaaffffffffffffffffffffffffffffff',NULL);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `role` enum('USER','ADMIN') DEFAULT 'USER',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Admin','admin@sistema.com','admin123',NULL,'ADMIN');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-31 22:51:47
