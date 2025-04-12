-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         9.2.0 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para horario
CREATE DATABASE IF NOT EXISTS `horario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `horario`;

-- Volcando estructura para tabla horario.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `ID` int NOT NULL,
  `PERSONAS_ID` int DEFAULT NULL,
  `CARGO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_EMPLEADO` (`PERSONAS_ID`),
  CONSTRAINT `FK_EMPLEADO` FOREIGN KEY (`PERSONAS_ID`) REFERENCES `personas` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Volcando estructura para tabla horario.personas
CREATE TABLE IF NOT EXISTS `personas` (
  `ID` int NOT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `EDAD` int DEFAULT NULL,
  `GENERO` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



-- Volcando estructura para tabla horario.registros
CREATE TABLE IF NOT EXISTS `registros` (
  `ID` int NOT NULL,
  `EMPLEADOS_ID` int DEFAULT NULL,
  `HORARIO_ENTRADA` time DEFAULT NULL,
  `HORARIO_SALIDA` time DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_REGISTRO` (`EMPLEADOS_ID`),
  CONSTRAINT `FK_REGISTRO` FOREIGN KEY (`EMPLEADOS_ID`) REFERENCES `empleados` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

