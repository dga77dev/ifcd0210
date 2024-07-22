CREATE DATABASE  IF NOT EXISTS `ligafutboldb` /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ligafutboldb`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ligafutboldb
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `idEquipo` int NOT NULL,
  `nombreEquipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEquipo`),
  UNIQUE KEY `idEquipo_UNIQUE` (`idEquipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES (1,'Real Madrid'),(2,'FC Barcelona'),(3,'Atlético de Madrid'),(4,'Sevilla FC'),(5,'Valencia CF'),(6,'Villarreal CF'),(7,'Real Sociedad'),(8,'Athletic Club'),(9,'Real Betis'),(10,'Getafe CF'),(11,'Celta de Vigo'),(12,'RCD Espanyol'),(13,'Real Valladolid'),(14,'Osasuna'),(15,'Granada CF'),(16,'Levante UD'),(17,'Deportivo Alavés'),(18,'Elche CF'),(19,'RCD Mallorca'),(20,'Cádiz CF'),(21,'UD Almería'),(22,'Girona FC'),(23,'Rayo Vallecano'),(24,'SD Huesca'),(25,'CD Tenerife'),(26,'Real Zaragoza'),(27,'Sporting de Gijón'),(28,'Real Oviedo'),(29,'UD Las Palmas'),(30,'CD Lugo'),(31,'CD Mirandés'),(32,'SD Ponferradina'),(33,'FC Cartagena'),(34,'Burgos CF'),(35,'UD Ibiza'),(36,'Real Sporting'),(37,'AD Alcorcón'),(38,'CD Castellón'),(39,'Albacete Balompié'),(40,'SD Amorebieta'),(41,'CD Leganés'),(42,'Málaga CF'),(43,'Racing de Santander'),(44,'UD Logroñés'),(45,'CD Numancia'),(46,'Real Murcia'),(47,'UD Salamanca'),(48,'SD Eibar'),(49,'CD Eldense'),(50,'Gimnàstic de Tarragona');
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadio`
--

DROP TABLE IF EXISTS `estadio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadio` (
  `idEstadio` int NOT NULL,
  `nombreEstadio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEstadio`),
  UNIQUE KEY `idEstadio_UNIQUE` (`idEstadio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadio`
--

LOCK TABLES `estadio` WRITE;
/*!40000 ALTER TABLE `estadio` DISABLE KEYS */;
INSERT INTO `estadio` VALUES (1,'Santiago Bernabéu'),(2,'Camp Nou'),(3,'Wanda Metropolitano'),(4,'Ramón Sánchez-Pizjuán'),(5,'Mestalla'),(6,'Estadio de la Cerámica'),(7,'Anoeta'),(8,'San Mamés'),(9,'Benito Villamarín'),(10,'Coliseum Alfonso Pérez'),(11,'Balaídos'),(12,'RCDE Stadium'),(13,'José Zorrilla'),(14,'El Sadar'),(15,'Nuevo Los Cármenes'),(16,'Ciutat de València'),(17,'Mendizorroza'),(18,'Martínez Valero'),(19,'Son Moix'),(20,'Nuevo Mirandilla'),(21,'Juegos del Mediterráneo'),(22,'Montilivi'),(23,'Vallecas'),(24,'El Alcoraz'),(25,'Heliodoro Rodríguez López'),(26,'La Romareda'),(27,'El Molinón'),(28,'Carlos Tartiere'),(29,'Gran Canaria'),(30,'Anxo Carro'),(31,'Anduva'),(32,'El Toralín'),(33,'Cartagonova'),(34,'El Plantío'),(35,'Can Misses'),(36,'Molins de Rei'),(37,'Santo Domingo'),(38,'Nuevo Castalia'),(39,'Carlos Belmonte'),(40,'Urritxe'),(41,'Butarque'),(42,'La Rosaleda'),(43,'El Sardinero'),(44,'Las Gaunas'),(45,'Los Pajaritos'),(46,'Nueva Condomina'),(47,'Helmántico'),(48,'Ipurua'),(49,'Nuevo Pepico Amat'),(50,'Nou Estadi Costa Daurada');
/*!40000 ALTER TABLE `estadio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador` (
  `idJugador` int NOT NULL,
  `nombreJugador` varchar(45) DEFAULT NULL,
  `apellidosJugador` varchar(45) DEFAULT NULL,
  `edadJugador` int DEFAULT NULL,
  `idEquipoJugador` int NOT NULL,
  PRIMARY KEY (`idJugador`),
  UNIQUE KEY `idJugador_UNIQUE` (`idJugador`),
  KEY `fk_idEquipoJugador` (`idEquipoJugador`),
  CONSTRAINT `fk_idEquipoJugador` FOREIGN KEY (`idEquipoJugador`) REFERENCES `equipo` (`idEquipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (1,'Sergio','Ramos',35,1),(2,'Lionel','Messi',34,2),(3,'Jan','Oblak',29,3),(4,'Ivan','Rakitic',33,4),(5,'Carlos','Soler',25,5),(6,'Pau','Torres',25,6),(7,'Mikel','Oyarzabal',24,7),(8,'Iker','Muniain',29,8),(9,'Nabil','Fekir',28,9),(10,'Enes','Ünal',24,10),(11,'Iago','Aspas',34,11),(12,'Raúl','De Tomás',27,12),(13,'Sergio','González',29,13),(14,'Rubén','García',28,14),(15,'Luis','Milla',27,15),(16,'José Luis','Morales',34,16),(17,'Joselu','Mato',31,17),(18,'Lucas','Boyé',25,18),(19,'Salva','Sevilla',38,19),(20,'Álvaro','Negredo',36,20),(21,'Umar','Sadiq',25,21),(22,'Cristhian','Stuani',35,22),(23,'Radamel','Falcao',36,23),(24,'Rafa','Mir',24,24),(25,'Fran','Sol',29,25),(26,'Cristian','Álvarez',36,26),(27,'Djuka','Uros',27,27),(28,'Borja','Bastón',29,28),(29,'Jonathan','Viera',32,29),(30,'José','Ángel',32,30),(31,'Sergio','Camarasa',27,31),(32,'Curro','Sánchez',25,32),(33,'Rubén','Castro',40,33),(34,'Saúl','Berjón',35,34),(35,'Mateusz','Bogusz',20,35),(36,'Guille','Rosario',23,36),(37,'Daniel','Jiménez',31,37),(38,'Gonzalo','Verdú',32,38),(39,'Manu','Fuster',24,39),(40,'Iñigo','Vicente',23,40),(41,'Borja','Bastón',28,41),(42,'Luis','Muñoz',24,42),(43,'Álvaro','Cejudo',38,43),(44,'Álex','Vallejo',30,44),(45,'Asier','Santana',35,45),(46,'Javi','Saura',26,46),(47,'Jorge','Hernández',24,47),(48,'Sergio','Álvarez',30,48),(49,'Pablo','González',26,49),(50,'David','Querol',32,50),(51,'Marc-André','ter Stegen',30,1),(52,'Gerard','Piqué',35,2),(53,'Koke','Resurrección',32,3),(54,'Jules','Koundé',24,4),(55,'Gonçalo','Guedes',26,5),(56,'Gerard','Moreno',31,6),(57,'David','Silva',37,7),(58,'Iñaki','Williams',29,8),(59,'Sergio','Canales',32,9),(60,'Mauro','Arambarri',27,10),(61,'Denis','Suárez',30,11),(62,'Adrián','Embarba',31,12),(63,'Óscar','Plano',32,13),(64,'Jon','Moncayola',26,14),(65,'Antonio','Puertas',32,15),(66,'Jorge','De Frutos',27,16),(67,'Edgar','Méndez',32,17),(68,'Fidel','Chaves',33,18),(69,'Dani','Rodríguez',35,19),(70,'Pacha','Espino',32,20),(71,'José','Corpas',32,21),(72,'Bernardo','Espinosa',34,22),(73,'Óscar','Trejo',35,23),(74,'Mikel','Rico',38,24),(75,'Carlos','Ruiz',40,25),(76,'Alberto','Zapater',39,26),(77,'Javi','Fuego',39,27),(78,'Saúl','Berjón',38,28),(79,'Kirian','Rodríguez',27,29),(80,'Gerard','Valentín',29,30),(81,'Simón','Moreno',26,31),(82,'Yuri','Berchiche',33,32),(83,'Pablo','De Blasis',34,33),(84,'Saúl','Berjón',34,34),(85,'Manu','Ndiaye',23,35),(86,'Mikel','Iribas',35,36),(87,'Marc','Cardona',28,37),(88,'Iván','Martínez',26,38),(89,'Fran','García',24,39),(90,'Aritz','Elustondo',28,40),(91,'Joaquín','Muñoz',23,41),(92,'Alberto','Escassi',33,42),(93,'Aitor','Buñuel',25,43),(94,'Andy','Rodríguez',32,44),(95,'Fran','Villalba',25,45),(96,'Fernando','Martínez',32,46),(97,'Cristian','Herrera',32,47),(98,'Yacine','Qasmi',32,48),(99,'Rubén','Sobrino',31,49),(100,'Pedro','Martínez',29,50);
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugadorposicion`
--

DROP TABLE IF EXISTS `jugadorposicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadorposicion` (
  `idJugador` int NOT NULL,
  `idPosicion` int NOT NULL,
  PRIMARY KEY (`idJugador`,`idPosicion`),
  UNIQUE KEY `indexJugadorPosicion_UNIQUE` (`idJugador`,`idPosicion`),
  KEY `fk_idPosicion` (`idPosicion`),
  CONSTRAINT `fk_idJugador` FOREIGN KEY (`idJugador`) REFERENCES `jugador` (`idJugador`),
  CONSTRAINT `fk_idPosicion` FOREIGN KEY (`idPosicion`) REFERENCES `posicion` (`idPosicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadorposicion`
--

LOCK TABLES `jugadorposicion` WRITE;
/*!40000 ALTER TABLE `jugadorposicion` DISABLE KEYS */;
INSERT INTO `jugadorposicion` VALUES (1,1),(3,1),(6,1),(9,1),(12,1),(15,1),(18,1),(21,1),(24,1),(27,1),(29,1),(35,1),(41,1),(47,1),(53,1),(59,1),(65,1),(71,1),(77,1),(2,2),(5,2),(8,2),(11,2),(14,2),(17,2),(20,2),(23,2),(26,2),(30,2),(36,2),(42,2),(48,2),(54,2),(60,2),(66,2),(72,2),(78,2),(1,3),(4,3),(7,3),(10,3),(13,3),(16,3),(19,3),(22,3),(25,3),(28,3),(31,3),(37,3),(43,3),(49,3),(55,3),(61,3),(67,3),(73,3),(79,3),(2,4),(5,4),(8,4),(11,4),(14,4),(17,4),(20,4),(23,4),(26,4),(32,4),(38,4),(44,4),(50,4),(56,4),(62,4),(68,4),(74,4),(80,4),(3,5),(6,5),(9,5),(12,5),(15,5),(18,5),(21,5),(24,5),(27,5),(33,5),(39,5),(45,5),(51,5),(57,5),(63,5),(69,5),(75,5),(81,5),(4,6),(7,6),(10,6),(13,6),(16,6),(19,6),(22,6),(25,6),(28,6),(34,6),(40,6),(46,6),(52,6),(58,6),(64,6),(70,6),(76,6),(82,6);
/*!40000 ALTER TABLE `jugadorposicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partido`
--

DROP TABLE IF EXISTS `partido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partido` (
  `idPartido` int NOT NULL,
  `fechaPartido` date NOT NULL,
  `estadioPartido` int NOT NULL,
  `equipoLocalPartido` int NOT NULL,
  `equipoVisitantePartido` int NOT NULL,
  `golesLocalPartido` int NOT NULL,
  `golesVisitantePartido` int NOT NULL,
  PRIMARY KEY (`idPartido`),
  UNIQUE KEY `idPartido_UNIQUE` (`idPartido`),
  KEY `fk_estadioPartido` (`estadioPartido`),
  KEY `fk_equipoLocalPartido` (`equipoLocalPartido`),
  KEY `fk_equipoVisitantePartido` (`equipoVisitantePartido`),
  CONSTRAINT `fk_equipoLocalPartido` FOREIGN KEY (`equipoLocalPartido`) REFERENCES `equipo` (`idEquipo`),
  CONSTRAINT `fk_equipoVisitantePartido` FOREIGN KEY (`equipoVisitantePartido`) REFERENCES `equipo` (`idEquipo`),
  CONSTRAINT `fk_estadioPartido` FOREIGN KEY (`estadioPartido`) REFERENCES `estadio` (`idEstadio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partido`
--

LOCK TABLES `partido` WRITE;
/*!40000 ALTER TABLE `partido` DISABLE KEYS */;
INSERT INTO `partido` VALUES (1,'2024-06-01',1,1,2,3,1),(2,'2024-06-02',2,2,3,2,2),(3,'2024-06-03',3,3,4,1,0),(4,'2024-06-04',4,4,5,0,1),(5,'2024-06-05',5,5,6,3,2),(6,'2024-06-06',6,6,7,2,3),(7,'2024-06-07',7,7,8,0,2),(8,'2024-06-08',8,8,9,1,1),(9,'2024-06-09',9,9,10,2,2),(10,'2024-06-10',10,10,11,1,0),(11,'2024-06-11',11,11,12,3,1),(12,'2024-06-12',12,12,13,2,0),(13,'2024-06-13',13,13,14,0,3),(14,'2024-06-14',14,14,15,1,2),(15,'2024-06-15',15,15,16,2,1),(16,'2024-06-16',16,16,17,1,3),(17,'2024-06-17',17,17,18,0,1),(18,'2024-06-18',18,18,19,2,2),(19,'2024-06-19',19,19,20,1,1),(20,'2024-06-20',20,20,21,3,0),(21,'2024-06-21',21,21,22,2,1),(22,'2024-06-22',22,22,23,1,1),(23,'2024-06-23',23,23,24,0,2),(24,'2024-06-24',24,24,25,2,3),(25,'2024-06-25',25,25,26,3,0),(26,'2024-06-26',26,26,27,1,3),(27,'2024-06-27',27,27,28,0,1),(28,'2024-06-28',28,28,29,2,1),(29,'2024-06-29',29,29,30,1,1),(30,'2024-06-30',30,30,31,2,3),(31,'2024-07-01',31,31,32,0,2),(32,'2024-07-02',32,32,33,1,2),(33,'2024-07-03',33,33,34,2,0),(34,'2024-07-04',34,34,35,3,1),(35,'2024-07-05',35,35,36,2,3),(36,'2024-07-06',36,36,37,1,0),(37,'2024-07-07',37,37,38,0,1),(38,'2024-07-08',38,38,39,2,2),(39,'2024-07-09',39,39,40,1,3),(40,'2024-07-10',40,40,41,0,1),(41,'2024-07-11',41,41,42,2,1),(42,'2024-07-12',42,42,43,1,1),(43,'2024-07-13',43,43,44,2,3),(44,'2024-07-14',44,44,45,0,2),(45,'2024-07-15',45,45,46,1,2),(46,'2024-07-16',46,46,47,2,0),(47,'2024-07-17',47,47,48,3,1),(48,'2024-07-18',48,48,49,2,3),(49,'2024-07-19',49,49,50,1,0),(50,'2024-07-20',50,1,2,0,1),(51,'2024-07-21',2,3,4,2,2),(52,'2024-07-22',3,5,6,1,3),(53,'2024-07-23',4,7,8,0,2),(54,'2024-07-24',5,9,10,2,1),(55,'2024-07-25',6,11,12,1,1),(56,'2024-07-26',7,13,14,2,3),(57,'2024-07-27',8,15,16,0,2),(58,'2024-07-28',9,17,18,1,2),(59,'2024-07-29',10,19,20,2,0),(60,'2024-07-30',11,21,22,3,1),(61,'2024-07-31',12,23,24,2,3),(62,'2024-08-01',13,25,26,1,0),(63,'2024-08-02',14,27,28,0,1),(64,'2024-08-03',15,29,30,2,2),(65,'2024-08-04',16,31,32,1,3),(66,'2024-08-05',17,33,34,0,2),(67,'2024-08-06',18,35,36,1,2),(68,'2024-08-07',19,37,38,2,0),(69,'2024-08-08',20,39,40,3,1),(70,'2024-08-09',21,41,42,2,3),(71,'2024-08-10',22,43,44,1,0),(72,'2024-08-11',23,45,46,0,1),(73,'2024-08-12',24,47,48,2,1),(74,'2024-08-13',25,49,50,1,1),(75,'2024-08-14',26,2,3,2,3),(76,'2024-08-15',27,4,5,0,2),(77,'2024-08-16',28,6,7,1,2),(78,'2024-08-17',29,8,9,2,0),(79,'2024-08-18',30,10,11,3,1),(80,'2024-08-19',31,12,13,2,3),(81,'2024-08-20',32,14,15,1,0),(82,'2024-08-21',33,16,17,0,1),(83,'2024-08-22',34,18,19,2,1),(84,'2024-08-23',35,20,21,1,1),(85,'2024-08-24',36,22,23,2,3),(86,'2024-08-25',37,24,25,0,2),(87,'2024-08-26',38,26,27,1,2),(88,'2024-08-27',39,28,29,2,0),(89,'2024-08-28',40,30,31,3,1),(90,'2024-08-29',41,32,33,2,3),(91,'2024-08-30',42,34,35,1,0),(92,'2024-08-31',43,36,37,0,1),(93,'2024-09-01',44,38,39,2,1),(94,'2024-09-02',45,40,41,1,1);
/*!40000 ALTER TABLE `partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posicion`
--

DROP TABLE IF EXISTS `posicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posicion` (
  `idPosicion` int NOT NULL,
  `nombrePosicion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPosicion`),
  UNIQUE KEY `idPosicion_UNIQUE` (`idPosicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posicion`
--

LOCK TABLES `posicion` WRITE;
/*!40000 ALTER TABLE `posicion` DISABLE KEYS */;
INSERT INTO `posicion` VALUES (1,'Portero'),(2,'Defensa Central'),(3,'Lateral Derecho'),(4,'Lateral Izquierdo'),(5,'Centrocampista Defensivo'),(6,'Centrocampista Ofensivo'),(7,'Extremo Derecho'),(8,'Extremo Izquierdo'),(9,'Delantero Centro'),(10,'Segundo Delantero'),(11,'Mediocentro'),(12,'Interior Derecho'),(13,'Interior Izquierdo'),(14,'Carrilero Derecho'),(15,'Carrilero Izquierdo'),(16,'Defensa'),(17,'Medio Centro'),(18,'Mediapunta'),(19,'Volante'),(20,'Delantero'),(21,'Pivote');
/*!40000 ALTER TABLE `posicion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-14 11:26:01
