/*
Navicat MySQL Data Transfer

Source Server         : localHost(Laptop)
Source Server Version : 100132
Source Host           : localhost:3306
Source Database       : blueally

Target Server Type    : MYSQL
Target Server Version : 100132
File Encoding         : 65001

Date: 2018-10-23 10:45:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for subnets_ips
-- ----------------------------
DROP TABLE IF EXISTS `subnets_ips`;
CREATE TABLE `subnets_ips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cidr` tinyint(4) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `address_tag` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subnets_ips
-- ----------------------------
INSERT INTO `subnets_ips` VALUES ('2', '28', '198.178.91.0', '<eq_03_xnbwb_4_mgmt_ip>');
INSERT INTO `subnets_ips` VALUES ('3', '28', '198.178.91.1', '<opz_xd_5_primary_uplink_netwk_ip>>');
INSERT INTO `subnets_ips` VALUES ('4', '28', '198.178.91.2', '<opz_xd_5_primary_uplink_broadcast_ip>');
INSERT INTO `subnets_ips` VALUES ('5', '28', '198.178.91.3', '<opz_xd_5_secondary_uplink_netwk_ip>');
INSERT INTO `subnets_ips` VALUES ('6', '28', '198.178.91.4', '<zb500_opz_xd_5_secondary_uplink_ip>');
INSERT INTO `subnets_ips` VALUES ('7', '28', '198.178.91.5', '<opz_xd_02_opz_xd_5_secondary_uplink_ip>');
INSERT INTO `subnets_ips` VALUES ('8', '28', '198.178.91.6', '<opz_xd_5_secondary_uplink_broadcast_ip>');
INSERT INTO `subnets_ips` VALUES ('9', '28', '198.178.91.7', '<opz_telemetry_broadcast_ip>');
INSERT INTO `subnets_ips` VALUES ('10', '28', '198.178.91.8', '<opz_opz_oam_uplink_vip_ip>');
INSERT INTO `subnets_ips` VALUES ('11', '28', '198.178.91.9', '<zb500_02_opz_oam_uplink_ip>');
INSERT INTO `subnets_ips` VALUES ('12', '28', '198.178.91.10', '<zb500_01_opz_oam_uplink_ip>');
INSERT INTO `subnets_ips` VALUES ('13', '28', '198.178.91.11', '<zb500_opz_oam_uplink_vip_ip>');
INSERT INTO `subnets_ips` VALUES ('14', '28', '198.178.91.12', '<opz_telemetry_netwk_ip>');
INSERT INTO `subnets_ips` VALUES ('15', '28', '198.178.91.13', '<opz_telemetry_broadcast_ip>');
INSERT INTO `subnets_ips` VALUES ('16', '28', '198.178.91.14', '<opz_telemetry_default_gateway_ip>');
INSERT INTO `subnets_ips` VALUES ('17', '28', '198.178.91.15', '<eq_03_mgmt_ip>');
INSERT INTO `subnets_ips` VALUES ('18', '29', '198.178.93.0', '<zb500_02_mgmt_re1_ip>');
INSERT INTO `subnets_ips` VALUES ('19', '29', '198.178.93.1', '<zb500_02_mgmt_re0_ip>');
INSERT INTO `subnets_ips` VALUES ('20', '29', '198.178.93.2', '<zb500_02_mgmt_vip_ip>');
INSERT INTO `subnets_ips` VALUES ('21', '29', '198.178.93.3', '<zb500_01_mgmt_re1_ip>');
INSERT INTO `subnets_ips` VALUES ('22', '29', '198.178.93.4', '<zb500_01_mgmt_re0_ip>');
INSERT INTO `subnets_ips` VALUES ('23', '29', '198.178.93.5', '<zb500_01_mgmt_vip_ip>');
INSERT INTO `subnets_ips` VALUES ('24', '29', '198.178.93.6', '<opz_telemetry_netwk_ip>');
INSERT INTO `subnets_ips` VALUES ('25', '29', '198.178.93.7', '<xnbwb_5_mgmt_broadcast_ip>');
INSERT INTO `subnets_ips` VALUES ('26', '30', '198.178.92.0', '<zb500_primary_opz_untrust_ibgp_ip>');
INSERT INTO `subnets_ips` VALUES ('27', '30', '198.178.92.1', '<opz_untrust_ibgp_netwk_ip>');
INSERT INTO `subnets_ips` VALUES ('28', '30', '198.178.92.2', '<zb500_secondary_opz_untrust_ibgp_ip>');
INSERT INTO `subnets_ips` VALUES ('29', '30', '198.178.92.3', '<opz_untrust_ibgp_broadcast_ip>');
SET FOREIGN_KEY_CHECKS=1;
