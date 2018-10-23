/*
Navicat MySQL Data Transfer

Source Server         : localHost(Laptop)
Source Server Version : 100132
Source Host           : localhost:3306
Source Database       : blueally

Target Server Type    : MYSQL
Target Server Version : 100132
File Encoding         : 65001

Date: 2018-10-23 10:44:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for subnets
-- ----------------------------
DROP TABLE IF EXISTS `subnets`;
CREATE TABLE `subnets` (
  `cidr` mediumint(8) NOT NULL,
  `subnet` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subnets
-- ----------------------------
INSERT INTO `subnets` VALUES ('28', 0x3139382E3137382E39312E30);
INSERT INTO `subnets` VALUES ('30', 0x3139382E3137382E39322E30);
INSERT INTO `subnets` VALUES ('29', 0x3139382E3137382E39332E30);
SET FOREIGN_KEY_CHECKS=1;
