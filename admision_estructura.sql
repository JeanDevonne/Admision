/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : admision

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-19 00:45:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `idarea` int(11) NOT NULL,
  `area_nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `area_detalle` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idarea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Table structure for especialidad
-- ----------------------------
DROP TABLE IF EXISTS `especialidad`;
CREATE TABLE `especialidad` (
  `idcarrera` int(11) NOT NULL,
  `especialidad_nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `numero_vacantes` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcarrera`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Table structure for omr
-- ----------------------------
DROP TABLE IF EXISTS `omr`;
CREATE TABLE `omr` (
  `idomr` int(11) NOT NULL AUTO_INCREMENT,
  `omrcol1` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol2` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol3` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol4` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol5` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol6` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol7` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol8` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol9` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol10` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol11` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol12` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol13` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol14` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol15` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol16` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol17` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol18` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol19` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol20` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol21` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol22` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol23` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol24` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol25` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol26` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol27` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol28` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol29` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol30` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol31` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol32` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol33` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol34` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol35` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol36` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol37` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol38` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol39` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol40` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol41` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol42` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol43` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol44` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol45` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol46` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol47` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol48` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol49` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol50` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol51` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol52` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol53` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol54` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol55` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol56` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol57` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol58` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol59` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol60` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol61` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol62` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol63` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol64` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol65` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol66` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol67` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol68` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol69` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol70` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol71` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol72` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol73` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol74` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol75` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol76` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol77` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol78` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol79` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol80` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol81` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol82` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol83` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol84` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol85` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol86` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol87` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol88` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol89` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol90` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol91` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol92` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol93` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol94` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol95` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol96` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol97` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol98` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol99` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `omrcol100` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `puntaje` int(11) DEFAULT NULL,
  PRIMARY KEY (`idomr`)
) ENGINE=InnoDB AUTO_INCREMENT=5101 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Table structure for postulante
-- ----------------------------
DROP TABLE IF EXISTS `postulante`;
CREATE TABLE `postulante` (
  `idpostulante` int(11) NOT NULL,
  `nombres` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(10) DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sexo` char(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_documento` char(5) COLLATE utf8_spanish_ci NOT NULL,
  `numero_documento` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Ruta de la imagen del postulante',
  `especialidad_idcarrera` int(11) NOT NULL,
  `omr_idomr` int(11) NOT NULL,
  PRIMARY KEY (`idpostulante`),
  KEY `fk_postulante_especialidad1_idx` (`especialidad_idcarrera`),
  KEY `fk_postulante_omr1_idx` (`omr_idomr`),
  CONSTRAINT `fk_postulante_especialidad1` FOREIGN KEY (`especialidad_idcarrera`) REFERENCES `especialidad` (`idcarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_postulante_omr1` FOREIGN KEY (`omr_idomr`) REFERENCES `omr` (`idomr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Table structure for pregunta
-- ----------------------------
DROP TABLE IF EXISTS `pregunta`;
CREATE TABLE `pregunta` (
  `idpregunta` int(11) NOT NULL COMMENT 'Id de la pregunta, será autoincremental, no acepta nulos y será llave primaria',
  `pregunta_detalle` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Es el enunciado de la pregunta en si.',
  `pregunta_imagen` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'almacena la ruta en al que se encuentra ubicada la imagen asociada a dicha pregunta.\nPuede tomar valores NULL',
  `pregunta_respuesta` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idpregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Table structure for vacantes
-- ----------------------------
DROP TABLE IF EXISTS `vacantes`;
CREATE TABLE `vacantes` (
  `vacantes` int(11) DEFAULT NULL,
  `especialidad_idcarrera` int(11) NOT NULL,
  KEY `fk_vacantes_especialidad1_idx` (`especialidad_idcarrera`),
  CONSTRAINT `fk_vacantes_especialidad1` FOREIGN KEY (`especialidad_idcarrera`) REFERENCES `especialidad` (`idcarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
SET FOREIGN_KEY_CHECKS=1;
