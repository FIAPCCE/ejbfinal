/*
Navicat MySQL Data Transfer

Source Server         : avaliacao
Source Server Version : 50615
Source Host           : localhost:3306
Source Database       : prova

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2018-10-15 09:31:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `avaliacao`
-- ----------------------------
DROP TABLE IF EXISTS `avaliacao`;
CREATE TABLE `avaliacao` (
  `codigo` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `codigodisciplina` int(7) unsigned NOT NULL DEFAULT '0',
  `descricao` varchar(50) NOT NULL DEFAULT '',
  `datacriacao` date NOT NULL DEFAULT '0000-00-00',
  `status` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`codigo`),
  KEY `istatus` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of avaliacao
-- ----------------------------
INSERT INTO `avaliacao` VALUES ('1', '1', 'Avaliação Final - SCJ', '2018-08-20', 'N');

-- ----------------------------
-- Table structure for `disciplina`
-- ----------------------------
DROP TABLE IF EXISTS `disciplina`;
CREATE TABLE `disciplina` (
  `codigo` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of disciplina
-- ----------------------------
INSERT INTO `disciplina` VALUES ('1', 'EJB');
INSERT INTO `disciplina` VALUES ('2', 'Web Services');

-- ----------------------------
-- Table structure for `questao`
-- ----------------------------
DROP TABLE IF EXISTS `questao`;
CREATE TABLE `questao` (
  `codigo` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `codigoavaliacao` int(7) unsigned NOT NULL DEFAULT '0',
  `descricao` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`codigo`),
  KEY `icodigoavaliacao` (`codigoavaliacao`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of questao
-- ----------------------------
INSERT INTO `questao` VALUES ('1', '1', 'Qual o tipo de objeto resultante da execução de um comando SQL usando a API JDBC?');
INSERT INTO `questao` VALUES ('2', '1', 'Qual o método do objeto Connection é usado para desabilitar a transação automática?');

-- ----------------------------
-- Table structure for `resposta`
-- ----------------------------
DROP TABLE IF EXISTS `resposta`;
CREATE TABLE `resposta` (
  `codigo` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `codigoquestao` int(7) unsigned NOT NULL DEFAULT '0',
  `descricao` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of resposta
-- ----------------------------
INSERT INTO `resposta` VALUES ('1', '1', 'Prepared Statement');
INSERT INTO `resposta` VALUES ('2', '1', 'Statement');
INSERT INTO `resposta` VALUES ('3', '1', 'ResultSet');
INSERT INTO `resposta` VALUES ('4', '1', 'Collection');
INSERT INTO `resposta` VALUES ('5', '1', 'Transaction');
INSERT INTO `resposta` VALUES ('6', '2', 'setAutoCommit(false)');
INSERT INTO `resposta` VALUES ('7', '2', 'setAutoCommit(true)');
INSERT INTO `resposta` VALUES ('8', '2', 'setTransaction(true)');
INSERT INTO `resposta` VALUES ('9', '2', 'setTransaction(false)');
INSERT INTO `resposta` VALUES ('10', '2', 'setRollback()');
