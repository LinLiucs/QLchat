/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : wechat
Target Host     : localhost:3306
Target Database : wechat
Date: 2021-01-08 16:31:12
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for companion
-- ----------------------------
DROP TABLE IF EXISTS `companion`;
CREATE TABLE `companion` (
  `I_account` varchar(255) DEFAULT NULL,
  `Y_account` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `my_group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of companion
-- ----------------------------
INSERT INTO `companion` VALUES ('1', '12', '强佬', '我的好友');
INSERT INTO `companion` VALUES ('12', '1', '苗佬', '我的好友');
INSERT INTO `companion` VALUES ('12', '1234', '付某', '我的好友');
INSERT INTO `companion` VALUES ('1234', '12', '某强', '我的好友');
INSERT INTO `companion` VALUES ('123', '1234', '付某', '我的好友');
INSERT INTO `companion` VALUES ('1234', '123', '珍珠佬', '我的好友');
INSERT INTO `companion` VALUES ('1', '1234', '付某', '我的好友');
INSERT INTO `companion` VALUES ('1234', '1', '苗佬', '我的好友');

-- ----------------------------
-- Table structure for dialog
-- ----------------------------
DROP TABLE IF EXISTS `dialog`;
CREATE TABLE `dialog` (
  `account` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dialog
-- ----------------------------
INSERT INTO `dialog` VALUES ('1');

-- ----------------------------
-- Table structure for offlinemsg
-- ----------------------------
DROP TABLE IF EXISTS `offlinemsg`;
CREATE TABLE `offlinemsg` (
  `I_account` varchar(255) DEFAULT NULL,
  `Y_account` varchar(255) DEFAULT NULL,
  `Msg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of offlinemsg
-- ----------------------------

-- ----------------------------
-- Table structure for save_pass
-- ----------------------------
DROP TABLE IF EXISTS `save_pass`;
CREATE TABLE `save_pass` (
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `head` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of save_pass
-- ----------------------------
INSERT INTO `save_pass` VALUES ('1', '123', 'head1');
INSERT INTO `save_pass` VALUES ('12', '123', 'head1');
INSERT INTO `save_pass` VALUES ('123', '123', 'head2');
INSERT INTO `save_pass` VALUES ('1234', '123', 'head9');
INSERT INTO `save_pass` VALUES ('2', '123456', 'head8');
INSERT INTO `save_pass` VALUES ('3', '123456', 'head9');

-- ----------------------------
-- Table structure for the_group
-- ----------------------------
DROP TABLE IF EXISTS `the_group`;
CREATE TABLE `the_group` (
  `account` varchar(255) DEFAULT NULL,
  `my_group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of the_group
-- ----------------------------
INSERT INTO `the_group` VALUES ('1', '我的好友');
INSERT INTO `the_group` VALUES ('2', '我的好友');
INSERT INTO `the_group` VALUES ('3', '我的好友');
INSERT INTO `the_group` VALUES ('4', '我的好友');
INSERT INTO `the_group` VALUES ('12', '我的好友');
INSERT INTO `the_group` VALUES ('123', '我的好友');
INSERT INTO `the_group` VALUES ('1234', '我的好友');
INSERT INTO `the_group` VALUES ('92452', '我的好友');
INSERT INTO `the_group` VALUES ('93724', '我的好友');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `account` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `head` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '苗佬', '苗佬', '123', '2020-12-05', 'man', 'head6', '江西省南昌市', '河南省信阳市', '18337640897', 'background7');
INSERT INTO `user` VALUES ('12', '某强', '刘强', '123', '2020-12-05', 'man', 'head7', '江西省南昌市', '河南省信阳市', '18337640897', 'background9');
INSERT INTO `user` VALUES ('123', '珍珠佬', '珍珠佬', '123456', '2020-12-05', 'man', 'head13', '江西省南昌市', '河南省信阳市', '18337640897', 'background17');
INSERT INTO `user` VALUES ('1234', '付某', '付全胜', '123', '2021-01-09', 'man', 'head16', '河南省信阳市', '', '13621223646', 'background6');
INSERT INTO `user` VALUES ('2', '宝贝', 'kmh', '123456', '2021-01-08', 'woman', 'head8', '河南省信阳市', '', '18337640897', 'background6');
INSERT INTO `user` VALUES ('3', 'www', 'www', '123456', '2021-01-09', 'man', 'head9', '河南省信阳市', '', '18337640897', 'background6');
INSERT INTO `user` VALUES ('4', 'www', 'www', '123456', '2020-12-31', 'man', 'head9', '河南省信阳市', '', '18337640897', 'background6');
INSERT INTO `user` VALUES ('92452', 'qqq', 'qqq', '123456', '2021-01-09', 'man', 'head9', '河南省信阳市', '', '18337522222', 'background6');
INSERT INTO `user` VALUES ('93724', 'qqq', 'qqq', '123456', '2021-01-09', 'man', 'head9', '河南省信阳市', '', '18337640897', 'background6');
