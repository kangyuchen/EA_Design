/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : english_assistant

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-02-12 17:34:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) DEFAULT NULL,
  `loginName` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` int(2) DEFAULT '-1',
  `isDeleted` tinyint(1) DEFAULT '0' COMMENT '0正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for click
-- ----------------------------
DROP TABLE IF EXISTS `click`;
CREATE TABLE `click` (
  `user_ID` bigint(20) NOT NULL,
  `text_ID` bigint(20) NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_ID`,`text_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `user_ID` bigint(20) NOT NULL,
  `text_ID` bigint(20) NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_ID`,`text_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for firstsentence
-- ----------------------------
DROP TABLE IF EXISTS `firstsentence`;
CREATE TABLE `firstsentence` (
  `id` bigint(20) NOT NULL,
  `content` text,
  `sentiment` double DEFAULT '0',
  `usep` bigint(20) DEFAULT '0',
  `usen` bigint(20) DEFAULT '0',
  `isDeleted` tinyint(1) DEFAULT '0' COMMENT '0正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for freehint
-- ----------------------------
DROP TABLE IF EXISTS `freehint`;
CREATE TABLE `freehint` (
  `id` bigint(20) NOT NULL,
  `content` text,
  `sentiment` double DEFAULT '0',
  `usep` bigint(20) DEFAULT '0',
  `usen` bigint(20) DEFAULT '0',
  `isDeleted` tinyint(1) DEFAULT '0' COMMENT '0正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for integral
-- ----------------------------
DROP TABLE IF EXISTS `integral`;
CREATE TABLE `integral` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uesr_ID` bigint(20) DEFAULT NULL,
  `text_ID` bigint(20) DEFAULT NULL,
  `integral` int(11) DEFAULT '0' COMMENT '提分量',
  `cause` varchar(200) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_ID` bigint(20) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `operation` int(2) DEFAULT NULL COMMENT '0登录/1登出',
  `result` varchar(500) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mburl
-- ----------------------------
DROP TABLE IF EXISTS `mburl`;
CREATE TABLE `mburl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for role_url
-- ----------------------------
DROP TABLE IF EXISTS `role_url`;
CREATE TABLE `role_url` (
  `role` bigint(20) NOT NULL,
  `urlid` bigint(20) NOT NULL,
  PRIMARY KEY (`role`,`urlid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share` (
  `user_ID` bigint(20) NOT NULL,
  `text_ID` bigint(20) NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_ID`,`text_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for text
-- ----------------------------
DROP TABLE IF EXISTS `text`;
CREATE TABLE `text` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  `address` varchar(50) DEFAULT NULL,
  `afflatus` int(2) DEFAULT '0' COMMENT '灵感',
  `languageSense` int(2) DEFAULT '0' COMMENT '语感',
  `mood` int(2) DEFAULT '0' COMMENT '心情',
  `type` int(2) DEFAULT '0' COMMENT '陈述0/推荐信1',
  `clickNumber` int(11) DEFAULT '0' COMMENT '点击量',
  `collectionNumber` int(11) DEFAULT '0' COMMENT '收藏量',
  `shareNumber` int(11) DEFAULT '0' COMMENT '点赞量',
  `editTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_ID` bigint(20) DEFAULT NULL,
  `isPrivate` tinyint(1) DEFAULT '0' COMMENT '0公开',
  `isDeleted` tinyint(1) DEFAULT '0' COMMENT '0正常',
  `isPlatform` tinyint(1) DEFAULT '0' COMMENT '0正常/1平台推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `loginName` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL COMMENT '头像地址',
  `sex` int(2) DEFAULT NULL COMMENT '1男/2女',
  `birthday` timestamp NULL DEFAULT NULL,
  `firstSentenceAll` int(11) DEFAULT '0',
  `firstSentenceUse` int(11) DEFAULT '0',
  `freeHintAll` int(11) DEFAULT '0',
  `freeHintUse` int(11) DEFAULT '0',
  `vipHintAll` int(11) DEFAULT '0',
  `vipHintUse` int(11) DEFAULT '0',
  `integral` int(11) DEFAULT '0' COMMENT '提分',
  `isVIP` tinyint(1) DEFAULT '0',
  `isDeleted` tinyint(1) DEFAULT '0' COMMENT '0正常',
  `isOnline` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
