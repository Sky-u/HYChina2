/*
Navicat MySQL Data Transfer

Source Server         : wmy
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : hychina

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2020-01-13 20:12:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hy_car_source
-- ----------------------------
DROP TABLE IF EXISTS `hy_car_source`;
CREATE TABLE `hy_car_source` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `car_type` int(11) DEFAULT NULL COMMENT '车辆类型:1、不锈钢罐车;2、铝罐车;3、压力罐车;4、铁罐车;5、保温罐车;6、平板车;7、高栏车;8、厢式车',
  `weight` int(11) DEFAULT NULL COMMENT '卡车载重',
  `line_type` int(11) DEFAULT NULL COMMENT '路线类型：1.专程车，2.回程车',
  `people` varchar(50) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `start_place` varchar(50) DEFAULT NULL,
  `end_place` varchar(50) DEFAULT NULL,
  `cost` bigint(20) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_car_source
-- ----------------------------
INSERT INTO `hy_car_source` VALUES ('52', null, '1', '1', '3', '1', '1', '1', '1', '1', null, '2020-01-10');
INSERT INTO `hy_car_source` VALUES ('53', null, '3', '1', '2', '1', '1', '1', '1', '1', null, '2020-01-10');
INSERT INTO `hy_car_source` VALUES ('54', null, '2', null, '2', '', null, '', '', null, null, '2020-01-10');
INSERT INTO `hy_car_source` VALUES ('55', null, '1', '33', '2', '王聪', '15737831167', '上海', '北京', '100', null, '2020-01-10');
INSERT INTO `hy_car_source` VALUES ('56', null, '1', '33', '2', '王聪', '15737831167', '上海', '北京', '100', null, '2020-01-10');
INSERT INTO `hy_car_source` VALUES ('57', null, '1', '33', '2', '王聪', '15737831167', '上海', '北京', '100', '2020-01-10', '2020-01-10');
INSERT INTO `hy_car_source` VALUES ('58', null, '1', '33', '2', '王聪', '15737831167', '上海', '北京', '100', '2020-01-15', '2020-01-13');

-- ----------------------------
-- Table structure for hy_company_info
-- ----------------------------
DROP TABLE IF EXISTS `hy_company_info`;
CREATE TABLE `hy_company_info` (
  `user_id` bigint(20) NOT NULL,
  `website` varchar(255) DEFAULT NULL COMMENT '公司网址',
  `logo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `type` varchar(255) DEFAULT NULL COMMENT '公司类型',
  `scale` varchar(255) DEFAULT NULL COMMENT '公司规模',
  `business` varchar(255) DEFAULT NULL COMMENT '主营业务',
  `business_scope` varchar(255) DEFAULT NULL COMMENT '经营范围',
  `year_of_establishment` varchar(255) DEFAULT NULL COMMENT '成立年份',
  `registered_capital` varchar(255) DEFAULT NULL COMMENT '注册资金',
  `zip_code` varchar(255) DEFAULT NULL COMMENT '公司邮编',
  `phone` varchar(255) DEFAULT NULL COMMENT '公司电话',
  `fax` varchar(255) DEFAULT NULL COMMENT '公司传真',
  `company_email` varchar(255) DEFAULT NULL COMMENT '公司邮箱',
  `route` varchar(255) DEFAULT NULL COMMENT '长跑路线',
  `company_introduction` varchar(255) DEFAULT NULL COMMENT '公司介绍',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_company_info
-- ----------------------------

-- ----------------------------
-- Table structure for hy_goods_source
-- ----------------------------
DROP TABLE IF EXISTS `hy_goods_source`;
CREATE TABLE `hy_goods_source` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `goods_type` int(11) DEFAULT NULL,
  `goods_name` varchar(50) DEFAULT NULL,
  `people` varchar(50) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `cost` bigint(20) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `load_time` date DEFAULT NULL,
  `start_place` varchar(50) DEFAULT NULL,
  `end_place` varchar(50) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_goods_source
-- ----------------------------
INSERT INTO `hy_goods_source` VALUES ('7', '1', '3', '毒品', '1', '1', '1', '1', '2020-01-10', null, '1', '1', null);
INSERT INTO `hy_goods_source` VALUES ('8', null, '4', '毒品', '王聪', '15737831167', '33', '100', '2020-01-10', null, '上海', '北京', null);
INSERT INTO `hy_goods_source` VALUES ('9', null, '2', '毒品', '王聪', '15737831167', '33', '100', '2020-01-10', null, '上海', '北京', '2020-01-17');
INSERT INTO `hy_goods_source` VALUES ('10', null, '3', '毒品', '王聪', '15737831167', '33', '100', '2020-01-13', null, '上海', '北京', '2020-01-13');
INSERT INTO `hy_goods_source` VALUES ('11', null, '2', '毒品', '王聪', '15737831167', '33', '100', '2020-01-13', null, '上海', '北京', '2020-01-14');

-- ----------------------------
-- Table structure for hy_permission
-- ----------------------------
DROP TABLE IF EXISTS `hy_permission`;
CREATE TABLE `hy_permission` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL,
  `permission_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `perms` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_permission
-- ----------------------------
INSERT INTO `hy_permission` VALUES ('1', null, '权限角色管理', 'sys/permission.html', 'sys:role', null, null, null);
INSERT INTO `hy_permission` VALUES ('2', null, '用户管理', 'sys/user.html', 'sys:user', null, null, null);
INSERT INTO `hy_permission` VALUES ('3', null, '消息通知管理', null, 'sys:message', null, null, null);
INSERT INTO `hy_permission` VALUES ('4', null, '车辆服务管理（自己的发布）', 'carmanagerOwn.html', 'car:manage:own', null, null, null);
INSERT INTO `hy_permission` VALUES ('5', null, '车辆服务管理（全部发布）', 'carmanager.html', 'car:manage:all', null, null, null);
INSERT INTO `hy_permission` VALUES ('7', null, '供需管理（自己的发布）', 'supplydemandOwn.html', 'supply:demand:own', null, null, null);
INSERT INTO `hy_permission` VALUES ('8', null, '供需管理（全部发布）', 'supplydemand.html', 'supply:demand:all', null, null, null);
INSERT INTO `hy_permission` VALUES ('9', null, '申诉投诉管理', 'complaint.html', 'complaint:manage', null, null, null);

-- ----------------------------
-- Table structure for hy_role
-- ----------------------------
DROP TABLE IF EXISTS `hy_role`;
CREATE TABLE `hy_role` (
  `role_id` bigint(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_role
-- ----------------------------
INSERT INTO `hy_role` VALUES ('0', '非注册用户/未登录');
INSERT INTO `hy_role` VALUES ('1', '个人货主');
INSERT INTO `hy_role` VALUES ('2', '企业货主');
INSERT INTO `hy_role` VALUES ('3', '个人车主');
INSERT INTO `hy_role` VALUES ('4', '企业车主');
INSERT INTO `hy_role` VALUES ('5', '普通管理员');
INSERT INTO `hy_role` VALUES ('6', '超级管理员');

-- ----------------------------
-- Table structure for hy_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `hy_role_permission`;
CREATE TABLE `hy_role_permission` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(11) DEFAULT NULL,
  `permission_id` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_role_permission
-- ----------------------------
INSERT INTO `hy_role_permission` VALUES ('1', '1', '4');
INSERT INTO `hy_role_permission` VALUES ('2', '1', '7');
INSERT INTO `hy_role_permission` VALUES ('3', '2', '4');
INSERT INTO `hy_role_permission` VALUES ('4', '2', '7');
INSERT INTO `hy_role_permission` VALUES ('5', '3', '4');
INSERT INTO `hy_role_permission` VALUES ('6', '3', '7');
INSERT INTO `hy_role_permission` VALUES ('7', '4', '4');
INSERT INTO `hy_role_permission` VALUES ('8', '4', '7');
INSERT INTO `hy_role_permission` VALUES ('9', '5', '3');
INSERT INTO `hy_role_permission` VALUES ('10', '5', '4');
INSERT INTO `hy_role_permission` VALUES ('11', '5', '5');
INSERT INTO `hy_role_permission` VALUES ('12', '5', '7');
INSERT INTO `hy_role_permission` VALUES ('13', '5', '8');
INSERT INTO `hy_role_permission` VALUES ('14', '5', '9');
INSERT INTO `hy_role_permission` VALUES ('15', '6', '1');
INSERT INTO `hy_role_permission` VALUES ('16', '6', '2');
INSERT INTO `hy_role_permission` VALUES ('17', '6', '3');
INSERT INTO `hy_role_permission` VALUES ('18', '6', '4');
INSERT INTO `hy_role_permission` VALUES ('19', '6', '5');
INSERT INTO `hy_role_permission` VALUES ('20', '6', '7');
INSERT INTO `hy_role_permission` VALUES ('21', '6', '8');
INSERT INTO `hy_role_permission` VALUES ('22', '6', '9');

-- ----------------------------
-- Table structure for hy_user
-- ----------------------------
DROP TABLE IF EXISTS `hy_user`;
CREATE TABLE `hy_user` (
  `user_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `phone` varchar(24) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `recommender` varchar(24) DEFAULT NULL COMMENT '推荐人手机号',
  `register_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='user_id：id主键自增长\r\nusername：姓名\r\npassword：密码\r\nphone：手机号\r\nemail：邮箱\r\ncompany：公司名称\r\nrecommender：推荐人姓名';

-- ----------------------------
-- Records of hy_user
-- ----------------------------
INSERT INTO `hy_user` VALUES ('2', 'wmy', '123', '18156333169', '1647569712@qq.com', '无', '无', '2020-01-11 15:13:07');
INSERT INTO `hy_user` VALUES ('6', 'thy', '123456', '18725788261', 'tttttt@qq.com', 'wu', 'wu', '2020-01-10 15:13:12');
INSERT INTO `hy_user` VALUES ('7', 'wc', '$2a$10$PoGeJ96xm7VdR8.FSiccn.nQEbpdD/4mMGCsE.nyedg5MMIKnED.O', '15737831167', 'wwwwwwwwww@qq.com', 'qf', '18156333169', '2020-01-09 15:13:15');
INSERT INTO `hy_user` VALUES ('8', 'www', '$2a$10$YOmkT6Tpl5I27j1.sqtzTuAKrX/C3mjEXqfIYfsxj2OSvs92LQ/EK', '18156333169', '1647@qq.com', 'qf', '18156333169', '2020-01-11 15:13:19');
INSERT INTO `hy_user` VALUES ('9', 'zjx', '$2a$10$x9m7E7hJCqxNp9NdereiquPOkBVubgRTXUQBeXYDuUMiPUy900ejy', '13817309459', 'zjx@qq.com', 'qf', '18156333169', '2020-01-11 15:13:23');
INSERT INTO `hy_user` VALUES ('10', 'wwmmyy', '$2a$10$jhqJCFznQXY2Q0vOlGyWLu/B3GXOvGdplPvLOL8QU4j3nyOgcoxdO', '18156333169', 'wwwwwwwwww@qq.com', '', '', null);

-- ----------------------------
-- Table structure for hy_user_detail
-- ----------------------------
DROP TABLE IF EXISTS `hy_user_detail`;
CREATE TABLE `hy_user_detail` (
  `user_id` bigint(11) NOT NULL,
  `id_number` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `birthday` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL COMMENT '微信',
  `qq` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_user_detail
-- ----------------------------
INSERT INTO `hy_user_detail` VALUES ('6', '31000000000000000', '1998-01-02', '男', '20', '111111', '222222');

-- ----------------------------
-- Table structure for hy_user_role
-- ----------------------------
DROP TABLE IF EXISTS `hy_user_role`;
CREATE TABLE `hy_user_role` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(11) DEFAULT NULL,
  `role_id` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hy_user_role
-- ----------------------------
INSERT INTO `hy_user_role` VALUES ('1', '2', '3');
INSERT INTO `hy_user_role` VALUES ('2', '6', '1');
INSERT INTO `hy_user_role` VALUES ('3', '7', '1');
INSERT INTO `hy_user_role` VALUES ('4', '8', '3');
INSERT INTO `hy_user_role` VALUES ('5', '9', '3');
INSERT INTO `hy_user_role` VALUES ('6', '10', '2');
