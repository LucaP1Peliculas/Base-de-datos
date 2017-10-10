CREATE DATABASE  IF NOT EXISTS `lucapeliculas` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `lucapeliculas`;

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

-- Table Structure peliculas

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peliculas` (
  -- `DEPTNO` int(2) NOT NULL,
  -- `DNAME` varchar(14) COLLATE utf8_spanish_ci NOT NULL,
  -- `LOC` varchar(13) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pel_id` int(5) not null auto_increment,
  `pel_tit` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pel_dir` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pel_gen` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pel_dur`	int(3) DEFAULT NULL,
  `pel_ano` int(4) DEFAULT NULL,
  `pel_res` varchar(700) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pel_ruta_img` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pel_ruta2_img` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pel_precio_compra` float(5,2) DEFAULT NULL,
  `pel_precio_alq` float(5,2) DEFAULT NULL,
  PRIMARY KEY (`pel_id`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
  /*!40101 SET character_set_client = @saved_cs_client */;

-- Table Structure usuario

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `usuario` (
  `usr_id` int not null auto_increment,
  `usr_nom` varchar(15) COLLATE utf8_spanish_ci default null,
  `usr_ape` varchar(15) COLLATE utf8_spanish_ci default null,
  `usr_nck` varchar(15) COLLATE utf8_spanish_ci default null,
  `usr_pw` varchar(15) COLLATE utf8_spanish_ci default null,
  PRIMARY KEY (`usr_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Table Structure cap

DROP TABLE IF EXISTS `cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

-- intento 2

CREATE TABLE `cap` (
  `cap_id` int NOT NULL auto_increment,
  `usr_id` int not null,
  `pel_id` int not null,
  `cap_fecha` date not null,
  `cap_tipo` bool not null,
  PRIMARY KEY (`cap_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
