/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : english_assistant

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-04-12 16:52:32
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '13146898107', 'kangyuchen', '康宇辰', '123456', '0', '0');
INSERT INTO `admin` VALUES ('2', '13146898108', 'kangyuchen123', '康宇辰', '123456', '1', '0');
INSERT INTO `admin` VALUES ('3', '13146898110', 'kangyuchen3', 'kyc', '123456', '1', '0');
INSERT INTO `admin` VALUES ('4', '21312323113', 'asdsad', 'asda', '123456', '-1', '1');
INSERT INTO `admin` VALUES ('5', '2233556', 'kangyuchen33', 'a', '123456', '-1', '1');

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
-- Records of click
-- ----------------------------
INSERT INTO `click` VALUES ('1', '4', '2018-02-06 09:37:40');
INSERT INTO `click` VALUES ('1', '5', '2018-02-06 10:26:42');
INSERT INTO `click` VALUES ('1', '8', '2018-03-23 16:15:43');
INSERT INTO `click` VALUES ('1', '10', '2018-02-02 16:07:20');
INSERT INTO `click` VALUES ('1', '11', '2018-03-23 15:10:40');
INSERT INTO `click` VALUES ('1', '16', '2018-02-06 11:23:18');
INSERT INTO `click` VALUES ('1', '17', '2018-02-06 13:49:21');
INSERT INTO `click` VALUES ('1', '18', '2018-02-06 13:55:09');
INSERT INTO `click` VALUES ('1', '19', '2018-02-05 14:25:38');
INSERT INTO `click` VALUES ('1', '20', '2018-02-05 14:25:30');
INSERT INTO `click` VALUES ('1', '21', '2018-02-02 16:12:11');
INSERT INTO `click` VALUES ('1', '22', '2018-03-27 17:12:08');
INSERT INTO `click` VALUES ('1', '23', '2018-03-29 09:56:24');
INSERT INTO `click` VALUES ('1', '25', '2018-02-06 13:31:40');
INSERT INTO `click` VALUES ('1', '26', '2018-02-06 13:34:37');
INSERT INTO `click` VALUES ('1', '27', '2018-02-06 13:37:57');
INSERT INTO `click` VALUES ('1', '28', '2018-02-06 13:41:03');
INSERT INTO `click` VALUES ('1', '29', '2018-02-06 13:46:44');
INSERT INTO `click` VALUES ('1', '30', '2018-02-06 13:46:38');
INSERT INTO `click` VALUES ('17', '5', '2018-04-03 14:34:29');
INSERT INTO `click` VALUES ('17', '22', '2018-04-03 14:23:34');
INSERT INTO `click` VALUES ('17', '23', '2018-04-03 14:34:45');

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
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('1', '1', '2018-02-02 13:20:48');
INSERT INTO `collection` VALUES ('1', '17', '2018-02-06 09:40:11');
INSERT INTO `collection` VALUES ('1', '18', '2018-02-02 11:16:18');
INSERT INTO `collection` VALUES ('1', '22', '2018-02-02 13:30:44');
INSERT INTO `collection` VALUES ('17', '23', '2018-04-03 14:36:54');

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
-- Records of firstsentence
-- ----------------------------
INSERT INTO `firstsentence` VALUES ('1', 'There are different opinions among people as to ###.Some people suggest that ###.', '0.012720524494038071', '4', '2', '0');
INSERT INTO `firstsentence` VALUES ('2', 'There is an old saying ###. It\'s the experience of our forefathers, however, it is correct in many cases even today. ', '0.006364712672129084', '2', '1', '0');
INSERT INTO `firstsentence` VALUES ('3', 'Today, ###, which have brought a lot of harms in our daily life. First, ###; Second, ###. What makes things worse is that ###.', '0.050821347332231794', '8', '0', '0');
INSERT INTO `firstsentence` VALUES ('4', 'Nowadays, it is common to ###. Many people like, ### because ###. Besides, ###.', '0.00636598552981651', '1', '0', '0');
INSERT INTO `firstsentence` VALUES ('5', 'Everything has two sides and ### is not an exception, it has both advantages and disadvantages.', '0.019092866685060637', '3', '0', '0');
INSERT INTO `firstsentence` VALUES ('6', 'People\'s opinions about ### vary from person to person. Some people say that ###.To them, ###.', '0.019092866685060637', '3', '0', '0');
INSERT INTO `firstsentence` VALUES ('7', 'Man is now facing a big problem ### which is becoming more and more serious. ', '0.00636598552981651', '1', '0', '0');
INSERT INTO `firstsentence` VALUES ('8', '### has become a hot topic among people, especially among the young and heated debates are right on their way.', '0.012730698201945594', '2', '0', '0');
INSERT INTO `firstsentence` VALUES ('9', '### has been playing an increasingly important role in our day-to-day life. It has brought us a lot of benefits but has created some serious problems as well.', '0.00636598552981651', '1', '0', '0');

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
-- Records of freehint
-- ----------------------------
INSERT INTO `freehint` VALUES ('1', 'There are different opinions among people as to ###.Some people suggest that ###.', '0.04441113021899043', '9', '2', '0');
INSERT INTO `freehint` VALUES ('2', 'There is an old saying ###. It\'s the experience of our forefathers, however, it is correct in many cases even today. ', '0.006362168483115042', '3', '2', '0');
INSERT INTO `freehint` VALUES ('3', 'Today, ###, which have brought a lot of harms in our daily life. First, ###; Second, ###. What makes things worse is that ###.', '0.00636598552981651', '1', '0', '0');
INSERT INTO `freehint` VALUES ('4', 'Nowadays, it is common to ###. Many people like, ### because ###. Besides, ###.', '0.012730698201945594', '2', '0', '0');
INSERT INTO `freehint` VALUES ('5', 'Everything has two sides and ### is not an exception, it has both advantages and disadvantages.', '0.050821347332231794', '8', '0', '0');
INSERT INTO `freehint` VALUES ('6', 'People\'s opinions about ### vary from person to person. Some people say that ###.To them, ###.', '0.03815144847167247', '6', '0', '0');
INSERT INTO `freehint` VALUES ('7', 'Man is now facing a big problem ### which is becoming more and more serious. ', '0.00636598552981651', '1', '0', '0');
INSERT INTO `freehint` VALUES ('8', '### has become a hot topic among people, especially among the young and heated debates are right on their way.', '0.012730698201945594', '2', '0', '0');
INSERT INTO `freehint` VALUES ('9', '### has been playing an increasingly important role in our day-to-day life. It has brought us a lot of benefits but has created some serious problems as well.', '0', '0', '0', '0');

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
-- Records of integral
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', '1', '169.254.240.187', '0', '成功', '2018-02-12 09:58:16');
INSERT INTO `log` VALUES ('2', '1', '169.254.240.187', '1', '成功', '2018-02-12 10:04:34');
INSERT INTO `log` VALUES ('3', '1', '169.254.240.187', '0', '成功', '2018-02-12 10:09:33');
INSERT INTO `log` VALUES ('4', '1', '169.254.240.187', '0', '成功', '2018-02-12 10:18:06');
INSERT INTO `log` VALUES ('5', '1', '169.254.240.187', '1', '成功', '2018-02-12 10:18:43');
INSERT INTO `log` VALUES ('6', null, '169.254.240.187', '2', '成功', '2018-02-12 10:19:19');
INSERT INTO `log` VALUES ('7', '1', '169.254.240.187', '0', '成功', '2018-02-12 10:19:36');
INSERT INTO `log` VALUES ('8', '1', '169.254.240.187', '4', '用户5删除状态成功', '2018-02-12 10:23:36');
INSERT INTO `log` VALUES ('9', '1', '169.254.240.187', '4', '用户5删除状态成功', '2018-02-12 10:23:52');
INSERT INTO `log` VALUES ('10', '1', '169.254.240.187', '4', '文章32删除状态成功', '2018-02-12 10:28:49');
INSERT INTO `log` VALUES ('11', '1', '169.254.240.187', '4', '文章32删除状态成功', '2018-02-12 10:28:55');
INSERT INTO `log` VALUES ('12', '1', '169.254.240.187', '4', '文章23公开状态成功', '2018-02-12 10:29:02');
INSERT INTO `log` VALUES ('13', '1', '169.254.240.187', '4', '文章23公开状态成功', '2018-02-12 10:29:03');
INSERT INTO `log` VALUES ('14', '1', '169.254.240.187', '5', '平台文章null成功', '2018-02-12 10:29:18');
INSERT INTO `log` VALUES ('15', '1', '169.254.240.187', '0', '成功', '2018-02-12 10:33:00');
INSERT INTO `log` VALUES ('16', '1', '169.254.240.187', '5', '平台文章34成功', '2018-02-12 10:33:08');
INSERT INTO `log` VALUES ('17', '1', '169.254.240.187', '0', '成功', '2018-02-12 11:14:46');
INSERT INTO `log` VALUES ('18', '1', '169.254.240.187', '0', '成功', '2018-02-12 11:23:26');
INSERT INTO `log` VALUES ('19', '1', '169.254.240.187', '1', '成功', '2018-02-12 11:25:54');
INSERT INTO `log` VALUES ('20', '4', '169.254.240.187', '2', '成功', '2018-02-12 11:26:13');
INSERT INTO `log` VALUES ('21', '1', '169.254.240.187', '0', '成功', '2018-02-12 11:26:28');
INSERT INTO `log` VALUES ('22', '1', '169.254.240.187', '0', '成功', '2018-02-12 11:28:25');
INSERT INTO `log` VALUES ('23', '1', '169.254.240.187', '0', '成功', '2018-02-12 13:49:15');
INSERT INTO `log` VALUES ('24', '1', '169.254.240.187', '1', '成功', '2018-02-12 13:57:03');
INSERT INTO `log` VALUES ('25', '1', '169.254.240.187', '0', '成功', '2018-02-12 13:57:05');
INSERT INTO `log` VALUES ('26', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:39');
INSERT INTO `log` VALUES ('27', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:40');
INSERT INTO `log` VALUES ('28', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:42');
INSERT INTO `log` VALUES ('29', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:43');
INSERT INTO `log` VALUES ('30', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:45');
INSERT INTO `log` VALUES ('31', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:46');
INSERT INTO `log` VALUES ('32', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:46');
INSERT INTO `log` VALUES ('33', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:46');
INSERT INTO `log` VALUES ('34', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:47');
INSERT INTO `log` VALUES ('35', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:47');
INSERT INTO `log` VALUES ('36', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:48');
INSERT INTO `log` VALUES ('37', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:48');
INSERT INTO `log` VALUES ('38', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:48');
INSERT INTO `log` VALUES ('39', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:49');
INSERT INTO `log` VALUES ('40', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:49');
INSERT INTO `log` VALUES ('41', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 13:57:50');
INSERT INTO `log` VALUES ('42', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:11');
INSERT INTO `log` VALUES ('43', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:12');
INSERT INTO `log` VALUES ('44', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:32');
INSERT INTO `log` VALUES ('45', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:33');
INSERT INTO `log` VALUES ('46', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:34');
INSERT INTO `log` VALUES ('47', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:34');
INSERT INTO `log` VALUES ('48', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:37');
INSERT INTO `log` VALUES ('49', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:37');
INSERT INTO `log` VALUES ('50', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:38');
INSERT INTO `log` VALUES ('51', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:38');
INSERT INTO `log` VALUES ('52', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:44');
INSERT INTO `log` VALUES ('53', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:44');
INSERT INTO `log` VALUES ('54', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:45');
INSERT INTO `log` VALUES ('55', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:46');
INSERT INTO `log` VALUES ('56', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:46');
INSERT INTO `log` VALUES ('57', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:46');
INSERT INTO `log` VALUES ('58', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:51');
INSERT INTO `log` VALUES ('59', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:51');
INSERT INTO `log` VALUES ('60', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:58');
INSERT INTO `log` VALUES ('61', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-02-12 13:58:59');
INSERT INTO `log` VALUES ('62', '1', '169.254.240.187', '1', '成功', '2018-02-12 14:06:44');
INSERT INTO `log` VALUES ('63', '1', '169.254.240.187', '0', '成功', '2018-02-12 14:07:05');
INSERT INTO `log` VALUES ('64', '1', '169.254.240.187', '0', '成功', '2018-02-12 15:04:52');
INSERT INTO `log` VALUES ('65', '1', '169.254.240.187', '1', '成功', '2018-02-12 15:09:19');
INSERT INTO `log` VALUES ('66', '1', '169.254.240.187', '0', '成功', '2018-02-12 15:09:28');
INSERT INTO `log` VALUES ('67', '1', '169.254.240.187', '1', '成功', '2018-02-12 15:09:37');
INSERT INTO `log` VALUES ('68', '1', '169.254.240.187', '0', '成功', '2018-02-12 15:20:09');
INSERT INTO `log` VALUES ('69', '1', '169.254.240.187', '1', '成功', '2018-02-12 15:28:19');
INSERT INTO `log` VALUES ('70', '1', '169.254.240.187', '0', '成功', '2018-02-12 15:28:23');
INSERT INTO `log` VALUES ('71', '1', '169.254.240.187', '1', '成功', '2018-02-12 15:35:53');
INSERT INTO `log` VALUES ('72', '1', '169.254.240.187', '0', '成功', '2018-02-12 15:36:01');
INSERT INTO `log` VALUES ('73', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 15:42:09');
INSERT INTO `log` VALUES ('74', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-02-12 15:42:10');
INSERT INTO `log` VALUES ('75', '1', '169.254.240.187', '0', '成功', '2018-02-12 16:12:04');
INSERT INTO `log` VALUES ('76', '1', '169.254.240.187', '4', '管理员4删除状态成功', '2018-02-12 17:02:25');
INSERT INTO `log` VALUES ('77', '1', '169.254.240.187', '4', '管理员3删除状态成功', '2018-02-12 17:03:34');
INSERT INTO `log` VALUES ('78', '1', '169.254.240.187', '4', '管理员2删除状态成功', '2018-02-12 17:04:29');
INSERT INTO `log` VALUES ('79', '1', '169.254.240.187', '4', '管理员4删除状态成功', '2018-02-12 17:05:10');
INSERT INTO `log` VALUES ('80', '1', '169.254.240.187', '6', '管理员2成功，权限1', '2018-02-12 17:05:16');
INSERT INTO `log` VALUES ('81', '1', '169.254.240.187', '1', '成功', '2018-02-12 17:05:41');
INSERT INTO `log` VALUES ('82', '3', '169.254.240.187', '0', '成功', '2018-02-12 17:05:44');
INSERT INTO `log` VALUES ('83', '3', '169.254.240.187', '1', '成功', '2018-02-12 17:06:04');
INSERT INTO `log` VALUES ('84', '2', '169.254.240.187', '0', '成功', '2018-02-12 17:06:06');
INSERT INTO `log` VALUES ('85', '2', '169.254.240.187', '1', '成功', '2018-02-12 17:06:08');
INSERT INTO `log` VALUES ('86', '3', '169.254.240.187', '0', '成功', '2018-02-12 17:06:10');
INSERT INTO `log` VALUES ('87', '3', '169.254.240.187', '1', '成功', '2018-02-12 17:06:17');
INSERT INTO `log` VALUES ('88', '1', '169.254.240.187', '0', '成功', '2018-02-12 17:06:20');
INSERT INTO `log` VALUES ('89', '1', '169.254.240.187', '1', '成功', '2018-02-12 17:09:59');
INSERT INTO `log` VALUES ('90', '1', '169.254.240.187', '0', '成功', '2018-02-12 17:10:03');
INSERT INTO `log` VALUES ('91', '1', '169.254.240.187', '1', '成功', '2018-02-12 17:11:07');
INSERT INTO `log` VALUES ('92', '1', '169.254.240.187', '0', '成功', '2018-02-12 17:11:10');
INSERT INTO `log` VALUES ('93', '1', '169.254.240.187', '4', '文章34删除状态成功', '2018-02-12 17:13:32');
INSERT INTO `log` VALUES ('94', '1', '169.254.240.187', '4', '文章33删除状态成功', '2018-02-12 17:13:33');
INSERT INTO `log` VALUES ('95', '1', '169.254.240.187', '4', '文章32删除状态成功', '2018-02-12 17:13:42');
INSERT INTO `log` VALUES ('96', '1', '169.254.240.187', '4', '文章31删除状态成功', '2018-02-12 17:13:43');
INSERT INTO `log` VALUES ('97', '1', '169.254.240.187', '4', '文章30删除状态成功', '2018-02-12 17:13:44');
INSERT INTO `log` VALUES ('98', '1', '169.254.240.187', '4', '文章29删除状态成功', '2018-02-12 17:13:44');
INSERT INTO `log` VALUES ('99', '1', '169.254.240.187', '4', '文章29删除状态成功', '2018-02-12 17:13:46');
INSERT INTO `log` VALUES ('100', '1', '169.254.240.187', '4', '文章29删除状态成功', '2018-02-12 17:13:46');
INSERT INTO `log` VALUES ('101', '1', '169.254.240.187', '4', '文章28删除状态成功', '2018-02-12 17:13:47');
INSERT INTO `log` VALUES ('102', '1', '169.254.240.187', '4', '文章30删除状态成功', '2018-02-12 17:13:48');
INSERT INTO `log` VALUES ('103', '1', '169.254.240.187', '4', '文章26删除状态成功', '2018-02-12 17:13:50');
INSERT INTO `log` VALUES ('104', '1', '169.254.240.187', '4', '文章25删除状态成功', '2018-02-12 17:13:50');
INSERT INTO `log` VALUES ('105', '1', '169.254.240.187', '4', '文章24删除状态成功', '2018-02-12 17:13:51');
INSERT INTO `log` VALUES ('106', '1', '169.254.240.187', '4', '文章24删除状态成功', '2018-02-12 17:13:54');
INSERT INTO `log` VALUES ('107', '1', '169.254.240.187', '0', '成功', '2018-02-13 08:57:34');
INSERT INTO `log` VALUES ('108', '1', '169.254.240.187', '0', '成功', '2018-02-13 10:11:11');
INSERT INTO `log` VALUES ('109', '1', '169.254.240.187', '0', '成功', '2018-02-13 11:10:46');
INSERT INTO `log` VALUES ('110', '1', '169.254.240.187', '0', '成功', '2018-03-01 09:03:55');
INSERT INTO `log` VALUES ('111', '1', '169.254.240.187', '5', '平台文章35成功', '2018-03-01 09:12:52');
INSERT INTO `log` VALUES ('112', '1', '169.254.240.187', '4', '文章35删除状态成功', '2018-03-01 09:13:09');
INSERT INTO `log` VALUES ('113', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-03-01 09:14:00');
INSERT INTO `log` VALUES ('114', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-03-01 09:14:01');
INSERT INTO `log` VALUES ('115', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-03-01 09:14:11');
INSERT INTO `log` VALUES ('116', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-03-01 09:14:12');
INSERT INTO `log` VALUES ('117', '1', '169.254.240.187', '4', '文章30删除状态成功', '2018-03-01 09:14:24');
INSERT INTO `log` VALUES ('118', '1', '169.254.240.187', '4', '文章30删除状态成功', '2018-03-01 09:14:24');
INSERT INTO `log` VALUES ('119', '1', '169.254.240.187', '0', '成功', '2018-03-01 11:29:12');
INSERT INTO `log` VALUES ('120', '1', '169.254.240.187', '1', '成功', '2018-03-01 14:08:30');
INSERT INTO `log` VALUES ('121', '1', '169.254.240.187', '0', '成功', '2018-03-01 14:08:44');
INSERT INTO `log` VALUES ('122', '1', '169.254.240.187', '4', '文章30删除状态成功', '2018-03-01 14:36:27');
INSERT INTO `log` VALUES ('123', '1', '169.254.240.187', '4', '文章30删除状态成功', '2018-03-01 14:36:27');
INSERT INTO `log` VALUES ('124', '1', '169.254.240.187', '4', '文章23公开状态成功', '2018-03-01 14:36:31');
INSERT INTO `log` VALUES ('125', '1', '169.254.240.187', '4', '文章23公开状态成功', '2018-03-01 14:36:31');
INSERT INTO `log` VALUES ('126', '1', '169.254.240.187', '0', '成功', '2018-03-01 16:20:54');
INSERT INTO `log` VALUES ('127', '1', '169.254.240.187', '1', '成功', '2018-03-01 16:54:23');
INSERT INTO `log` VALUES ('128', '1', '169.254.240.187', '0', '成功', '2018-03-01 16:54:25');
INSERT INTO `log` VALUES ('129', '1', '169.254.240.187', '1', '成功', '2018-03-01 17:08:38');
INSERT INTO `log` VALUES ('130', '1', '169.254.240.187', '0', '成功', '2018-03-01 17:08:39');
INSERT INTO `log` VALUES ('131', '1', '169.254.240.187', '1', '成功', '2018-03-01 17:08:40');
INSERT INTO `log` VALUES ('132', '1', '169.254.240.187', '0', '成功', '2018-03-01 17:09:01');
INSERT INTO `log` VALUES ('133', '1', '169.254.240.187', '1', '成功', '2018-03-01 17:09:02');
INSERT INTO `log` VALUES ('134', '1', '169.254.240.187', '0', '成功', '2018-03-01 17:09:11');
INSERT INTO `log` VALUES ('135', '1', '169.254.240.187', '1', '成功', '2018-03-01 17:09:15');
INSERT INTO `log` VALUES ('136', '1', '169.254.240.187', '0', '成功', '2018-03-01 17:09:21');
INSERT INTO `log` VALUES ('137', '1', '169.254.240.187', '0', '成功', '2018-03-13 15:03:25');
INSERT INTO `log` VALUES ('138', '1', '169.254.240.187', '0', '成功', '2018-03-19 11:08:14');
INSERT INTO `log` VALUES ('139', '1', '169.254.240.187', '4', '文章30删除状态成功', '2018-03-19 11:10:38');
INSERT INTO `log` VALUES ('140', '1', '169.254.240.187', '4', '文章30删除状态成功', '2018-03-19 11:10:39');
INSERT INTO `log` VALUES ('141', '1', '169.254.240.187', '4', '文章30删除状态成功', '2018-03-19 11:10:44');
INSERT INTO `log` VALUES ('142', '1', '169.254.240.187', '4', '文章30删除状态成功', '2018-03-19 11:10:53');
INSERT INTO `log` VALUES ('143', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-03-19 11:28:51');
INSERT INTO `log` VALUES ('144', '1', '169.254.240.187', '4', '管理员1删除状态成功', '2018-03-19 11:28:52');
INSERT INTO `log` VALUES ('145', '1', '169.254.240.187', '0', '成功', '2018-03-23 13:38:31');
INSERT INTO `log` VALUES ('146', '1', '169.254.240.187', '1', '成功', '2018-03-23 15:49:46');
INSERT INTO `log` VALUES ('147', '1', '169.254.240.187', '0', '成功', '2018-03-23 15:49:56');
INSERT INTO `log` VALUES ('148', '1', '169.254.240.187', '0', '成功', '2018-03-29 13:41:16');
INSERT INTO `log` VALUES ('149', '1', '169.254.240.187', '4', '用户8删除状态成功', '2018-03-29 13:43:42');
INSERT INTO `log` VALUES ('150', '1', '169.254.240.187', '4', '用户8删除状态成功', '2018-03-29 13:43:43');
INSERT INTO `log` VALUES ('151', '1', '169.254.240.187', '4', '文章24删除状态成功', '2018-03-29 14:15:37');
INSERT INTO `log` VALUES ('152', '1', '169.254.240.187', '5', '平台文章36成功', '2018-03-29 14:37:34');
INSERT INTO `log` VALUES ('153', '1', '169.254.240.187', '4', '文章36删除状态成功', '2018-03-29 14:37:41');
INSERT INTO `log` VALUES ('154', '1', '169.254.240.187', '1', '成功', '2018-03-29 15:35:35');
INSERT INTO `log` VALUES ('155', '2', '169.254.240.187', '0', '成功', '2018-03-29 15:35:51');
INSERT INTO `log` VALUES ('156', '2', '169.254.240.187', '1', '成功', '2018-03-29 15:35:54');
INSERT INTO `log` VALUES ('157', '1', '169.254.240.187', '0', '成功', '2018-03-29 15:35:56');
INSERT INTO `log` VALUES ('158', '1', '169.254.240.187', '1', '成功', '2018-03-29 15:46:05');
INSERT INTO `log` VALUES ('159', '1', '169.254.240.187', '0', '成功', '2018-03-29 15:46:15');
INSERT INTO `log` VALUES ('160', '1', '169.254.240.187', '1', '成功', '2018-03-29 15:46:38');
INSERT INTO `log` VALUES ('161', '1', '169.254.240.187', '0', '成功', '2018-04-04 09:12:48');
INSERT INTO `log` VALUES ('162', '1', '169.254.240.187', '0', '成功', '2018-04-04 09:20:14');
INSERT INTO `log` VALUES ('163', '1', '169.254.240.187', '1', '成功', '2018-04-04 09:20:43');
INSERT INTO `log` VALUES ('164', '1', '169.254.240.187', '0', '成功', '2018-04-04 09:20:46');
INSERT INTO `log` VALUES ('165', '1', '169.254.240.187', '1', '成功', '2018-04-04 09:20:47');
INSERT INTO `log` VALUES ('166', '1', '169.254.240.187', '0', '成功', '2018-04-04 09:21:42');
INSERT INTO `log` VALUES ('167', '1', '169.254.240.187', '1', '成功', '2018-04-04 09:21:43');
INSERT INTO `log` VALUES ('168', '1', '169.254.240.187', '0', '成功', '2018-04-04 09:22:04');
INSERT INTO `log` VALUES ('169', '1', '169.254.240.187', '1', '成功', '2018-04-04 09:22:06');
INSERT INTO `log` VALUES ('170', '1', '169.254.240.187', '0', '成功', '2018-04-04 09:25:25');
INSERT INTO `log` VALUES ('171', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-04-04 09:29:59');
INSERT INTO `log` VALUES ('172', '1', '169.254.240.187', '4', '用户16删除状态成功', '2018-04-04 09:30:00');
INSERT INTO `log` VALUES ('173', '1', '169.254.240.187', '4', '文章12公开状态成功', '2018-04-04 09:40:32');
INSERT INTO `log` VALUES ('174', '1', '169.254.240.187', '4', '文章12公开状态成功', '2018-04-04 09:40:32');
INSERT INTO `log` VALUES ('175', '1', '169.254.240.187', '5', '平台文章38成功', '2018-04-04 09:53:45');
INSERT INTO `log` VALUES ('176', '1', '172.20.26.209', '0', '成功', '2018-04-04 10:12:00');
INSERT INTO `log` VALUES ('177', '1', '172.20.26.209', '4', '用户16删除状态成功', '2018-04-04 10:12:06');
INSERT INTO `log` VALUES ('178', '1', '172.20.26.209', '4', '用户16删除状态成功', '2018-04-04 10:12:07');
INSERT INTO `log` VALUES ('179', '1', '172.20.26.209', '6', '管理员3成功，权限1', '2018-04-04 10:20:26');
INSERT INTO `log` VALUES ('180', '1', '172.20.26.209', '1', '成功', '2018-04-04 10:21:49');
INSERT INTO `log` VALUES ('181', '5', '172.20.26.209', '2', '成功', '2018-04-04 10:24:35');
INSERT INTO `log` VALUES ('182', '1', '172.20.26.209', '0', '成功', '2018-04-04 10:26:15');
INSERT INTO `log` VALUES ('183', '1', '172.20.26.209', '4', '管理员5删除状态成功', '2018-04-04 10:26:31');
INSERT INTO `log` VALUES ('184', '1', '172.20.26.209', '1', '成功', '2018-04-04 10:27:22');
INSERT INTO `log` VALUES ('185', '3', '172.20.26.209', '0', '成功', '2018-04-04 10:28:19');
INSERT INTO `log` VALUES ('186', '3', '172.20.26.209', '3', '成功', '2018-04-04 10:32:45');
INSERT INTO `log` VALUES ('187', '3', '172.20.26.209', '1', '成功', '2018-04-04 10:33:36');
INSERT INTO `log` VALUES ('188', '3', '172.20.26.209', '0', '成功', '2018-04-04 10:33:40');
INSERT INTO `log` VALUES ('189', '1', '169.254.240.187', '0', '成功', '2018-04-12 16:51:43');
INSERT INTO `log` VALUES ('190', '1', '169.254.240.187', '5', '平台文章39成功', '2018-04-12 16:51:58');
INSERT INTO `log` VALUES ('191', '1', '169.254.240.187', '4', '文章39删除状态成功', '2018-04-12 16:52:04');

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
-- Records of mburl
-- ----------------------------
INSERT INTO `mburl` VALUES ('1', '/user/userlist');
INSERT INTO `mburl` VALUES ('2', '/text/textlist');
INSERT INTO `mburl` VALUES ('3', '/text/platformtext');
INSERT INTO `mburl` VALUES ('4', '/statistics/onlinestatistics');
INSERT INTO `mburl` VALUES ('5', '/statistics/textstatistics');
INSERT INTO `mburl` VALUES ('6', '/log/logs');
INSERT INTO `mburl` VALUES ('7', '/admin/adminlist');
INSERT INTO `mburl` VALUES ('8', '/admin/examine');

-- ----------------------------
-- Table structure for onlinestatistics
-- ----------------------------
DROP TABLE IF EXISTS `onlinestatistics`;
CREATE TABLE `onlinestatistics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `num` int(20) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of onlinestatistics
-- ----------------------------
INSERT INTO `onlinestatistics` VALUES ('1', '14', '2018-02-11 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('2', '12', '2018-02-12 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('3', '24', '2018-02-13 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('4', '15', '2018-02-14 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('5', '22', '2018-02-15 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('6', '14', '2018-02-16 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('7', '21', '2018-02-17 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('8', '13', '2018-02-18 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('9', '14', '2018-02-19 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('10', '15', '2018-02-20 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('11', '16', '2018-02-21 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('12', '11', '2018-02-22 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('13', '26', '2018-02-23 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('14', '12', '2018-02-24 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('15', '12', '2018-02-25 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('16', '24', '2018-02-26 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('17', '15', '2018-02-27 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('18', '16', '2018-02-28 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('19', '21', '2018-03-01 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('20', '21', '2018-03-02 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('21', '17', '2018-03-03 00:00:00');
INSERT INTO `onlinestatistics` VALUES ('22', '18', '2018-03-04 00:00:00');

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
-- Records of role_url
-- ----------------------------
INSERT INTO `role_url` VALUES ('0', '1');
INSERT INTO `role_url` VALUES ('0', '2');
INSERT INTO `role_url` VALUES ('0', '3');
INSERT INTO `role_url` VALUES ('0', '4');
INSERT INTO `role_url` VALUES ('0', '5');
INSERT INTO `role_url` VALUES ('0', '6');
INSERT INTO `role_url` VALUES ('0', '7');
INSERT INTO `role_url` VALUES ('0', '8');
INSERT INTO `role_url` VALUES ('1', '1');
INSERT INTO `role_url` VALUES ('1', '2');
INSERT INTO `role_url` VALUES ('1', '3');
INSERT INTO `role_url` VALUES ('1', '4');
INSERT INTO `role_url` VALUES ('1', '5');

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
-- Records of share
-- ----------------------------

-- ----------------------------
-- Table structure for text
-- ----------------------------
DROP TABLE IF EXISTS `text`;
CREATE TABLE `text` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `content` mediumtext,
  `address` varchar(50) DEFAULT NULL,
  `afflatus` int(2) DEFAULT '0' COMMENT '灵感',
  `languageSense` int(2) DEFAULT '0' COMMENT '语感',
  `mood` int(2) DEFAULT '0' COMMENT '心情',
  `type` int(2) DEFAULT '0' COMMENT '陈述0/推荐信1',
  `clickNumber` int(11) DEFAULT '0' COMMENT '点击量',
  `collectionNumber` int(11) DEFAULT '0' COMMENT '收藏量',
  `shareNumber` int(11) DEFAULT '0' COMMENT '分享量',
  `editTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_ID` bigint(20) DEFAULT NULL,
  `isPrivate` tinyint(1) DEFAULT '0' COMMENT '0公开',
  `isDeleted` tinyint(1) DEFAULT '0' COMMENT '0正常',
  `isPlatform` tinyint(1) DEFAULT '0' COMMENT '0正常/1平台推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of text
-- ----------------------------
INSERT INTO `text` VALUES ('1', 'hello world1', 'hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!', 'beijing', '0', '0', '0', '0', '0', '0', '0', '2018-01-31 14:11:15', '2018-01-08 15:01:31', '1', '0', '0', '0');
INSERT INTO `text` VALUES ('2', 'hello world2', 'hello world!!!', 'beijing', '0', '0', '0', '1', '0', '0', '0', '2018-02-09 10:21:54', '2018-01-08 15:01:31', '1', '0', '1', '0');
INSERT INTO `text` VALUES ('3', 'hello world3', 'hello world!!!233', 'beijing', '0', '0', '0', '0', '0', '0', '0', '2018-01-11 15:52:16', '2018-01-08 15:01:31', '1', '0', '0', '0');
INSERT INTO `text` VALUES ('4', 'hello world10', 'hello world!!!', 'beijing', '0', '0', '0', '0', '1', '0', '0', '2018-02-06 09:37:39', '2018-01-08 15:01:31', '1', '0', '1', '0');
INSERT INTO `text` VALUES ('5', 'hello world4', 'hello world!!!32', 'beijing', '0', '0', '0', '0', '1', '0', '0', '2018-04-03 14:34:29', '2018-01-08 15:01:31', '1', '0', '0', '0');
INSERT INTO `text` VALUES ('6', 'hello world5', 'hello world!!!', 'beijing', '0', '0', '0', '0', '0', '0', '0', '2018-03-23 16:18:57', '2018-01-08 15:01:31', '1', '0', '0', '1');
INSERT INTO `text` VALUES ('7', 'hello world6', 'hello world!!!323', 'beijing', '0', '0', '0', '0', '0', '0', '0', '2018-03-23 16:18:58', '2018-01-08 15:01:31', '1', '0', '0', '1');
INSERT INTO `text` VALUES ('8', 'hello world7', 'hello world!!!', 'beijing', '0', '0', '0', '0', '0', '0', '0', '2018-03-23 16:19:00', '2018-01-08 15:01:31', '1', '0', '0', '1');
INSERT INTO `text` VALUES ('9', 'hello world8', 'hello world!!!233', 'beijing', '0', '0', '0', '0', '0', '0', '0', '2018-03-23 16:18:58', '2018-01-08 15:01:31', '1', '0', '0', '1');
INSERT INTO `text` VALUES ('10', 'hello world9', 'hello world!!!233', 'beijing', '0', '0', '0', '0', '4', '0', '0', '2018-02-02 16:07:20', '2018-01-08 15:01:31', '1', '0', '0', '0');
INSERT INTO `text` VALUES ('11', 'hello world11', 'hello world!!!233', 'beijing', '0', '0', '0', '0', '0', '0', '0', '2018-01-11 15:52:34', '2018-01-08 15:01:31', '1', '0', '0', '0');
INSERT INTO `text` VALUES ('12', 'hello world12', 'hello world!!!llo world!!!hello world!!!hello world!!!hello world!!!llo world!!!hello world!!!hello world!!!hello world!!!llo world!!!hello world!!!hello world!!!hello world!!!llo world!!!hello world!!!hello world!!!hello world!!!llo world!!!hello world!!!hello world!!!hello world!!!llo world!!!hello world!!!hello wohello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!hello world!!!rld!!!hello world!!!', 'beijing', '0', '0', '0', '0', '0', '0', '0', '2018-04-04 09:40:32', '2018-01-08 15:01:31', '1', '0', '0', '0');
INSERT INTO `text` VALUES ('16', 'haha', 'Please read the legal small print, and other information about the eBook and Project Gutenberg at the bottom of this file. Included is important information about your specific rights and restrictions in how the file may be used. You can also find out about how to make a donation to Project Gutenberg, and how to get involved.121313', '', '1', '-1', '0', '0', '0', '0', '0', '2018-01-29 13:35:12', '2018-01-29 13:25:18', '1', '0', '0', '0');
INSERT INTO `text` VALUES ('17', 'jjj', 'Please read the legal small print, and other information about the eBook and Project Gutenberg at the bottom of this file. Included is important information about your specific rights and restrictions in how the file may be used. You can also find out about how to make a donation to Project Gutenberg, and how to get involved.2321212', '', '1', '1', '-1', '0', '10', '2', '0', '2018-02-06 13:49:21', '2018-02-06 13:49:20', '1', '0', '0', '0');
INSERT INTO `text` VALUES ('18', 'kg', ' Please read the legal small print, and other information about the book and Project Gutenberg at the bottom of this file. Included is important information about your specific rights and restrictions in how the file may be used. You can also find out about how to make a donation to Project Gutenberg, and how to get involved.', '', '1', '1', '-1', '0', '19', '2', '0', '2018-02-06 13:55:08', '2018-02-06 13:55:08', '1', '0', '0', '0');
INSERT INTO `text` VALUES ('19', '2 3', 'Please read the legal small print, and other information about the eBook and Project Gutenberg at the bottom of this file. Included is important information about your specific rights and restrictions in how the file may be used. You can also find out about how to make a donation to Project Gutenberg, and how to get involved.', '', '1', '1', '1', '0', '1', '0', '0', '2018-02-05 14:25:38', '2018-01-29 13:56:28', '2', '0', '0', '0');
INSERT INTO `text` VALUES ('20', '2233', 'Please read the legal small print, and other information about the eBook and Project Gutenberg at the bottom of this file. Included is important information about your specific rights and restrictions in how the file may be used. You can also find out about how to make a donation to Project Gutenberg, and how to get involved.', '', '1', '1', '1', '0', '2', '0', '0', '2018-02-05 14:25:30', '2018-01-29 14:01:45', '2', '0', '0', '0');
INSERT INTO `text` VALUES ('21', ' t ', 'There are three different logon roles in this system, which are system administrators, teachers, and students, respectively.', null, '0', '0', '0', '0', '4', '0', '0', '2018-03-27 16:56:21', '2018-01-29 14:10:51', '2', '0', '0', '0');
INSERT INTO `text` VALUES ('22', ' 222 ', '  Please read the legal small print, and other information about the ebook and Project Gutenberg at the bottom of this file. Included is important information about your specific rights and restrictions in how the file may be used. You can also find out about how to make a donation to Project Gutenberg, and how to get involved.', '', '1', '1', '1', '0', '27', '2', '0', '2018-04-03 14:23:34', '2018-01-29 14:24:35', '2', '0', '0', '0');
INSERT INTO `text` VALUES ('23', 'haha', 'Today is a nice day! ', 'beijing', '1', '1', '1', '0', '2', '1', '0', '2018-04-03 14:36:54', '2018-02-09 10:41:18', '1', '0', '0', '0');
INSERT INTO `text` VALUES ('24', 'C:\\fakepath\\新建文本文档.txt', 'http://172.20.99.100:8080/english_assistant/static/lib/bootstrap/css/bootstrap.css\napple\n\nblackberry相似度=0.7543067425282849\nchips相似度=0.7438643918412166\niphone相似度=0.7429664694244152\nbanana\nbananas相似度=0.8152027779194397\ncoconut相似度=0.7872509826927763\npineapple相似度=0.7579815048843075\ncomputer\ncomputers相似度=0.9165044765653498\nsoftware相似度=0.8814993634710455\ntechnology相似度=0.8525559133429745\npotato\npotatoes相似度=0.8643379241997285\nsoup相似度=0.8489009417322672\ntomato相似度=0.8262097118615825\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-03-29 14:15:37', '2018-02-11 16:59:49', null, '0', '1', '1');
INSERT INTO `text` VALUES ('25', 'C:\\fakepath\\新建 Microsoft Word 文档.docx', '12eaf\n A\nAsd \n', null, '0', '0', '0', '0', '0', '0', '0', '2018-02-12 17:13:50', '2018-02-11 17:02:29', null, '0', '1', '1');
INSERT INTO `text` VALUES ('26', 'C:\\fakepath\\新建 Microsoft Word 文档.docx', '	today is a good day. today is a good day. today is a good day. today is a good day. today is a good day.\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-02-12 17:13:50', '2018-02-11 17:20:37', null, '0', '1', '1');
INSERT INTO `text` VALUES ('27', 'stoplist', '\'d\n\'ll\n\'m\n\'re\n\'s\n\'t\n\'ve\nZT\nZZ\na\na\'s\nable\nabout\nabove\nabst\naccordance\naccording\naccordingly\nacross\nact\nactually\nadded\nadj\nadopted\naffected\naffecting\naffects\nafter\nafterwards\nagain\nagainst\nah\nain\'t\nall\nallow\nallows\nalmost\nalone\nalong\nalready\nalso\nalthough\nalways\nam\namong\namongst\nan\nand\nannounce\nanother\nany\nanybody\nanyhow\nanymore\nanyone\nanything\nanyway\nanyways\nanywhere\napart\napparently\nappear\nappreciate\nappropriate\napproximately\nare\narea\nareas\naren\naren\'t\narent\narise\naround\nas\naside\nask\nasked\nasking\nasks\nassociated\nat\nauth\navailable\naway\nawfully\nb\nback\nbacked\nbacking\nbacks\nbe\nbecame\nbecause\nbecome\nbecomes\nbecoming\nbeen\nbefore\nbeforehand\nbegan\nbegin\nbeginning\nbeginnings\nbegins\nbehind\nbeing\nbeings\nbelieve\nbelow\nbeside\nbesides\nbest\nbetter\nbetween\nbeyond\nbig\nbiol\nboth\nbrief\nbriefly\nbut\nby\nc\nc\'mon\nc\'s\nca\ncame\ncan\ncan\'t\ncannot\ncant\ncase\ncases\ncause\ncauses\ncertain\ncertainly\nchanges\nclear\nclearly\nco\ncom\ncome\ncomes\nconcerning\nconsequently\nconsider\nconsidering\ncontain\ncontaining\ncontains\ncorresponding\ncould\ncouldn\'t\ncouldnt\ncourse\ncurrently\nd\ndate\ndefinitely\ndescribe\ndescribed\ndespite\ndid\ndidn\'t\ndiffer\ndifferent\ndifferently\ndiscuss\ndo\ndoes\ndoesn\'t\ndoing\ndon\'t\ndone\ndown\ndowned\ndowning\ndowns\ndownwards\ndue\nduring\ne\neach\nearly\ned\nedu\neffect\neg\neight\neighty\neither\nelse\nelsewhere\nend\nended\nending\nends\nenough\nentirely\nespecially\net\net-al\netc\neven\nevenly\never\nevery\neverybody\neveryone\neverything\neverywhere\nex\nexactly\nexample\nexcept\nf\nface\nfaces\nfact\nfacts\nfar\nfelt\nfew\nff\nfifth\nfind\nfinds\nfirst\nfive\nfix\nfollowed\nfollowing\nfollows\nfor\nformer\nformerly\nforth\nfound\nfour\nfrom\nfull\nfully\nfurther\nfurthered\nfurthering\nfurthermore\nfurthers\ng\ngave\ngeneral\ngenerally\nget\ngets\ngetting\ngive\ngiven\ngives\ngiving\ngo\ngoes\ngoing\ngone\ngood\ngoods\ngot\ngotten\ngreat\ngreater\ngreatest\ngreetings\ngroup\ngrouped\ngrouping\ngroups\nh\nhad\nhadn\'t\nhappens\nhardly\nhas\nhasn\'t\nhave\nhaven\'t\nhaving\nhe\nhe\'s\nhed\nhello\nhelp\nhence\nher\nhere\nhere\'s\nhereafter\nhereby\nherein\nheres\nhereupon\nhers\nherself\nhes\nhi\nhid\nhigh\nhigher\nhighest\nhim\nhimself\nhis\nhither\nhome\nhopefully\nhow\nhowbeit\nhowever\nhundred\ni\ni\'d\ni\'ll\ni\'m\ni\'ve\nid\nie\nif\nignored\nim\nimmediate\nimmediately\nimportance\nimportant\nin\ninasmuch\ninc\ninclude\nindeed\nindex\nindicate\nindicated\nindicates\ninformation\ninner\ninsofar\ninstead\ninterest\ninterested\ninteresting\ninterests\ninto\ninvention\ninward\nis\nisn\'t\nit\nit\'d\nit\'ll\nit\'s\nitd\nits\nitself\nj\njust\nk\nkeep\nkeeps\nkept\nkeys\nkg\nkind\nkm\nknew\nknow\nknown\nknows\nl\nlarge\nlargely\nlast\nlately\nlater\nlatest\nlatter\nlatterly\nleast\nless\nlest\nlet\nlet\'s\nlets\nlike\nliked\nlikely\nline\nlittle\nlong\nlonger\nlongest\nlook\nlooking\nlooks\nltd\nm\nmade\nmainly\nmake\nmakes\nmaking\nman\nmany\nmay\nmaybe\nme\nmean\nmeans\nmeantime\nmeanwhile\nmember\nmembers\nmen\nmerely\nmg\nmight\nmillion\nmiss\nml\nmore\nmoreover\nmost\nmostly\nmr\nmrs\nmuch\nmug\nmust\nmy\nmyself\nn\nn\'t\nna\nname\nnamely\nnay\nnd\nnear\nnearly\nnecessarily\nnecessary\nneed\nneeded\nneeding\nneeds\nneither\nnever\nnevertheless\nnew\nnewer\nnewest\nnext\nnine\nninety\nno\nnobody\nnon\nnone\nnonetheless\nnoone\nnor\nnormally\nnos\nnot\nnoted\nnothing\nnovel\nnow\nnowhere\nnumber\nnumbers\no\nobtain\nobtained\nobviously\nof\noff\noften\noh\nok\nokay\nold\nolder\noldest\nomitted\non\nonce\none\nones\nonly\nonto\nopen\nopened\nopening\nopens\nor\nord\norder\nordered\nordering\norders\nother\nothers\notherwise\nought\nour\nours\nourselves\nout\noutside\nover\noverall\nowing\nown\np\npage\npages\npart\nparted\nparticular\nparticularly\nparting\nparts\npast\nper\nperhaps\nplace\nplaced\nplaces\nplease\nplus\npoint\npointed\npointing\npoints\npoorly\npossible\npossibly\npotentially\npp\npredominantly\npresent\npresented\npresenting\npresents\npresumably\npreviously\nprimarily\nprobably\nproblem\nproblems\npromptly\nproud\nprovides\nput\nputs\nq\nque\nquickly\nquite\nqv\nr\nran\nrather\nrd\nre\nreadily\nreally\nreasonably\nrecent\nrecently\nref\nrefs\nregarding\nregardless\nregards\nrelated\nrelatively\nresearch\nrespectively\nresulted\nresulting\nresults\nright\nroom\nrooms\nrun\ns\nsaid\nsame\nsaw\nsay\nsaying\nsays\nsec\nsecond\nsecondly\nseconds\nsection\nsee\nseeing\nseem\nseemed\nseeming\nseems\nseen\nsees\nself\nselves\nsensible\nsent\nserious\nseriously\nseven\nseveral\nshall\nshe\nshe\'ll\nshed\nshes\nshould\nshouldn\'t\nshow\nshowed\nshowing\nshown\nshowns\nshows\nside\nsides\nsignificant\nsignificantly\nsimilar\nsimilarly\nsince\nsix\nslightly\nsmall\nsmaller\nsmallest\nso\nsome\nsomebody\nsomehow\nsomeone\nsomethan\nsomething\nsometime\nsometimes\nsomewhat\nsomewhere\nsoon\nsorry\nspecifically\nspecified\nspecify\nspecifying\nstate\nstates\nstill\nstop\nstrongly\nsub\nsubstantially\nsuccessfully\nsuch\nsufficiently\nsuggest\nsup\nsure\nt\nt\'s\ntake\ntaken\ntaking\ntell\ntends\nth\nthan\nthank\nthanks\nthanx\nthat\nthat\'ll\nthat\'s\nthat\'ve\nthats\nthe\ntheir\ntheirs\nthem\nthemselves\nthen\nthence\nthere\nthere\'ll\nthere\'s\nthere\'ve\nthereafter\nthereby\nthered\ntherefore\ntherein\nthereof\ntherere\ntheres\nthereto\nthereupon\nthese\nthey\nthey\'d\nthey\'ll\nthey\'re\nthey\'ve\ntheyd\ntheyre\nthing\nthings\nthink\nthinks\nthird\nthis\nthorough\nthoroughly\nthose\nthou\nthough\nthoughh\nthought\nthoughts\nthousand\nthree\nthroug\nthrough\nthroughout\nthru\nthus\ntil\ntip\nto\ntoday\ntogether\ntoo\ntook\ntoward\ntowards\ntried\ntries\ntruly\ntry\ntrying\nts\nturn\nturned\nturning\nturns\ntwice\ntwo\nu\nun\nunder\nunfortunately\nunless\nunlike\nunlikely\nuntil\nunto\nup\nupon\nups\nus\nuse\nused\nuseful\nusefully\nusefulness\nuses\nusing\nusually\nuucp\nv\nvalue\nvarious\nvery\nvia\nviz\nvol\nvols\nvs\nw\nwant\nwanted\nwanting\nwants\nwas\nwasn\'t\nway\nways\nwe\nwe\'d\nwe\'ll\nwe\'re\nwe\'ve\nwed\nwelcome\nwell\nwells\nwent\nwere\nweren\'t\nwhat\nwhat\'ll\nwhat\'s\nwhatever\nwhats\nwhen\nwhence\nwhenever\nwhere\nwhere\'s\nwhereafter\nwhereas\nwhereby\nwherein\nwheres\nwhereupon\nwherever\nwhether\nwhich\nwhile\nwhim\nwhither\nwho\nwho\'ll\nwho\'s\nwhod\nwhoever\nwhole\nwhom\nwhomever\nwhos\nwhose\nwhy\nwidely\nwill\nwilling\nwish\nwith\nwithin\nwithout\nwon\'t\nwonder\nwords\nwork\nworked\nworking\nworks\nworld\nwould\nwouldn\'t\nwww\nx\ny\nyear\nyears\nyes\nyet\nyou\nyou\'d\nyou\'ll\nyou\'re\nyou\'ve\nyoud\nyoung\nyounger\nyoungest\nyour\nyoure\nyours\nyourself\nyourselves\nz\nzero\nzt\nzz\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-02-11 17:25:44', '2018-02-11 17:25:44', null, '0', '0', '1');
INSERT INTO `text` VALUES ('28', 'C:\\fakepath\\新建 Microsoft Word 文档 (2).doc', 'Asdasdsa Asdasdsa Asdasdsa Asdas Asdas Asdas Asdas Asdas Asdas Asdas Asdas Asdas appleaaaaa\r\nAsd\r\n Zxcz \r\n\r\n\r\n\r\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-02-12 17:13:47', '2018-02-11 17:29:35', null, '0', '1', '1');
INSERT INTO `text` VALUES ('29', 'C:\\fakepath\\新建 Microsoft Word 文档 (2).doc', 'Asdasdsa Asdasdsa Asdasdsa Asdas Asdas Asdas Asdas Asdas Asdas Asdas Asdas Asdas appleaaaaa\r\nAsd\r\n Zxcz \r\n\r\n\r\n\r\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-02-12 17:13:46', '2018-02-11 17:30:01', null, '0', '1', '1');
INSERT INTO `text` VALUES ('30', '222啊啊啊', 'Asdasdsa Asdasdsa Asdasdsa Asdas Asdas Asdas Asdas Asdas Asdas Asdas Asdas Asdas appleaaaaa\r\nAsd\r\n Zxcz \r\n\r\n\r\n\r\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-03-19 11:10:53', '2018-02-11 17:30:18', null, '0', '0', '1');
INSERT INTO `text` VALUES ('31', 'C:\\fakepath\\个人简历2_康宇辰.docx', '\n\n\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-02-12 17:13:43', '2018-02-12 09:01:27', null, '0', '1', '1');
INSERT INTO `text` VALUES ('32', 'C:\\fakepath\\新建 Microsoft Word 文档.docx', '	today is a good day. today is a good day. today is a good day. today is a good day. today is a good day.\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-02-12 17:13:42', '2018-02-12 09:02:40', null, '0', '1', '1');
INSERT INTO `text` VALUES ('33', 'C:\\fakepath\\新建 Microsoft Word 文档.docx', '	today is a good day. today is a good day. today is a good day. today is a good day. today is a good day.\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-02-12 17:13:33', '2018-02-12 10:29:18', null, '0', '1', '1');
INSERT INTO `text` VALUES ('34', 'C:\\fakepath\\新建 Microsoft Word 文档.docx', '	today is a good day. today is a good day. today is a good day. today is a good day. today is a good day.\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-02-12 17:13:32', '2018-02-12 10:33:07', null, '0', '1', '1');
INSERT INTO `text` VALUES ('35', '康宇辰-工作总结', '工作总结\n康宇辰\n入职两周已完成的工作有：\n办理入职相关手续，熟悉规章制度，配置开发环境，同步项目代码，熟悉项目代码和项目相关文档。\n开发“基础数据-合作公司-专有货物”模块（练习用），去除了“基础数据-合作公司-发货方”和“基础数据-合作公司-收货方”两个模块的分页，修复了一个全选功能bug。保留原功能基础上合并了“专有货物”和“发货方”、“收货方”的批量删除和添加按钮。\n仍在进行的工作有：\n熟悉业务流程，修改“下配送单-添加产品”模块。\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-03-01 09:13:09', '2018-03-01 09:12:52', null, '0', '1', '1');
INSERT INTO `text` VALUES ('36', '康宇辰-1月工作总结', '工作总结\n12.21-1.20\n康宇辰\n手术跟台项目\n12月21日至12月27日提出了部分后续修改方案及问题，并进一步修改web端bug。\n12月28日至1月20日安装并配置Android开发环境，开始修改Android端bug。增加Android端批量已读功能，添加Android端个人信息-所属地区显示。修复了手机客户端由于页面错误导致的错误打开定位的问题。修改并简化配送单显示。修改web其他bug。\n继续熟悉Android项目架构。熟悉业务流程。\n\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-03-29 14:37:41', '2018-03-29 14:37:34', null, '0', '1', '1');
INSERT INTO `text` VALUES ('37', 'test1', 'Today, ###, which have brought a lot of harms in our daily life. First, ###; Second, ###. What makes things worse is that ###.There is an old saying ###. It\'s the experience of our forefathers, however, it is correct in many cases even today.', '', '1', '1', '1', '0', '0', '0', '0', '2018-04-03 15:02:00', '2018-04-03 15:02:00', '17', '0', '0', '0');
INSERT INTO `text` VALUES ('38', '康宇辰-1月工作总结', '工作总结\n12.21-1.20\n康宇辰\n手术跟台项目\n12月21日至12月27日提出了部分后续修改方案及问题，并进一步修改web端bug。\n12月28日至1月20日安装并配置Android开发环境，开始修改Android端bug。增加Android端批量已读功能，添加Android端个人信息-所属地区显示。修复了手机客户端由于页面错误导致的错误打开定位的问题。修改并简化配送单显示。修改web其他bug。\n继续熟悉Android项目架构。熟悉业务流程。\n\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-04-04 09:53:45', '2018-04-04 09:53:45', null, '0', '0', '1');
INSERT INTO `text` VALUES ('39', '新建 Microsoft Word 文档 (2)', 'QRTZ_SCHEDULER_STATE\n', null, '0', '0', '0', '0', '0', '0', '0', '2018-04-12 16:52:04', '2018-04-12 16:51:58', null, '0', '1', '1');

-- ----------------------------
-- Table structure for textstatistics
-- ----------------------------
DROP TABLE IF EXISTS `textstatistics`;
CREATE TABLE `textstatistics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstsentencerate` double(20,4) DEFAULT NULL,
  `freehintrate` double(20,4) DEFAULT NULL,
  `viphintrate` double(20,4) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of textstatistics
-- ----------------------------
INSERT INTO `textstatistics` VALUES ('2', '1.8700', '11.5000', '3.6400', '2018-02-11 00:00:00');
INSERT INTO `textstatistics` VALUES ('3', '1.8750', '11.5000', '3.6500', '2018-02-12 00:00:00');
INSERT INTO `textstatistics` VALUES ('4', '1.8780', '11.5000', '3.6600', '2018-02-13 00:00:00');
INSERT INTO `textstatistics` VALUES ('5', '2.0000', '12.0000', '4.0000', '2018-02-14 00:00:00');
INSERT INTO `textstatistics` VALUES ('6', '1.8700', '11.5000', '3.6000', '2018-02-15 00:00:00');
INSERT INTO `textstatistics` VALUES ('7', '1.8700', '11.5000', '3.6000', '2018-02-16 00:00:00');
INSERT INTO `textstatistics` VALUES ('8', '1.8750', '11.5000', '3.6000', '2018-02-17 00:00:00');
INSERT INTO `textstatistics` VALUES ('9', '1.8750', '11.5000', '3.6000', '2018-02-18 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '13146898107', '康宇辰', 'kangyuchen123', '123456', '1522142491823.JPG', '1', '1995-10-15 00:00:00', '10', '16', '9', '26', '7', '18', '1000', '0', '0', '1');
INSERT INTO `user` VALUES ('2', '13146898106', '康宇辰2', 'kangyuche1', '123456', '', null, '2018-01-11 14:25:04', '0', '0', '0', '0', '0', '0', '111', '0', '0', '0');
INSERT INTO `user` VALUES ('3', '13146898105', '康宇辰3', 'kangyuche12', '123456', '', null, '2018-01-11 14:25:04', '0', '0', '0', '0', '0', '0', '121', '0', '0', '0');
INSERT INTO `user` VALUES ('4', '13146898104', '康宇辰', 'kangyuche5', '123456', null, null, null, null, null, null, null, null, null, '111', '0', '1', '0');
INSERT INTO `user` VALUES ('5', '13146898103', '康宇辰', 'kangyuche6', '123456', null, null, null, null, null, null, null, null, null, '1', '0', '0', '0');
INSERT INTO `user` VALUES ('6', '13146898102', '康宇辰', 'kangyuche7', '123456', null, null, null, null, null, null, null, null, null, '1', '0', '0', '0');
INSERT INTO `user` VALUES ('7', '13146898101', '康宇辰', 'kangyuche8', '123456', null, null, null, null, null, null, null, null, null, '0', '0', '0', '0');
INSERT INTO `user` VALUES ('8', '13146898111', '康宇辰', 'kangyuche9', '123456', null, null, null, null, null, null, null, null, null, '0', '0', '0', '0');
INSERT INTO `user` VALUES ('9', '13146898112', '康宇辰', 'kangyuche10', '123456', null, null, null, null, null, null, null, null, null, '0', '0', '0', '0');
INSERT INTO `user` VALUES ('10', '13146898113', '康宇辰', 'kangyuche11', '123456', null, null, null, null, null, null, null, null, null, '0', '0', '0', '0');
INSERT INTO `user` VALUES ('11', '13146898115', '康宇辰', 'kangyuche13', '123456', null, null, null, null, null, null, null, null, null, '0', '0', '0', '0');
INSERT INTO `user` VALUES ('12', '13146898114', '康宇辰', 'kangyuche14', '123456', null, null, null, null, null, null, null, null, null, '0', '0', '0', '0');
INSERT INTO `user` VALUES ('16', '13141231223', '康宇辰', '123asd', '123456', null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `user` VALUES ('17', '13146898170', 'kangyuchen233', 'kangyuchen233', '123456', '1522745120405.JPG', null, null, '1', '1', '7', '1', '1', '0', '0', '0', '0', '1');
