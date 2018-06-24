/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50711
Source Host           : 127.0.0.1:3306
Source Database       : blues

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-06-24 09:52:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blue_admin
-- ----------------------------
DROP TABLE IF EXISTS `blue_admin`;
CREATE TABLE `blue_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickName` varchar(30) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `role` int(2) DEFAULT NULL,
  `create_time` varchar(10) DEFAULT NULL,
  `update_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_admin
-- ----------------------------
INSERT INTO `blue_admin` VALUES ('1', '管理员', 'admin', '$2y$10$mWovv5xwQER8MhOi1YfMVubIdGCOTJM9jsQm6ihKNcealqkt4t0mu', 'mymyjd@163.com', '12345678909', 'sunny后台管理系统', '1', '1525415008', '1525415008');

-- ----------------------------
-- Table structure for blue_auth
-- ----------------------------
DROP TABLE IF EXISTS `blue_auth`;
CREATE TABLE `blue_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_auth
-- ----------------------------
INSERT INTO `blue_auth` VALUES ('1', '超级管理员', '1527432870', '1527432870');
INSERT INTO `blue_auth` VALUES ('2', '普通用户', '1527432870', '1527432870');

-- ----------------------------
-- Table structure for blue_email
-- ----------------------------
DROP TABLE IF EXISTS `blue_email`;
CREATE TABLE `blue_email` (
  `id` int(11) NOT NULL,
  `smtp_server` varchar(255) DEFAULT NULL,
  `port` int(6) DEFAULT NULL,
  `send_email` varchar(255) DEFAULT NULL,
  `send_password` varchar(255) DEFAULT NULL,
  `send_nickname` varchar(50) DEFAULT NULL,
  `create_time` varchar(10) DEFAULT NULL,
  `update_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_email
-- ----------------------------
INSERT INTO `blue_email` VALUES ('1', 'smtp.aliyun.com', '25', 'blues@mymyjd.cn', '123456', 'blue', null, null);

-- ----------------------------
-- Table structure for blue_menu
-- ----------------------------
DROP TABLE IF EXISTS `blue_menu`;
CREATE TABLE `blue_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '模板文件所在的文件夹一般在views下',
  `title` varchar(20) DEFAULT NULL COMMENT '菜单内容',
  `icon` varchar(20) DEFAULT NULL COMMENT '菜单图标',
  `jump` varchar(20) DEFAULT NULL COMMENT '跳转位置',
  `parentId` int(11) DEFAULT NULL COMMENT '父菜单id',
  `orders` int(11) DEFAULT NULL COMMENT '菜单顺序索引',
  `auth` int(11) DEFAULT NULL COMMENT '角色id',
  `status` int(1) DEFAULT '1',
  `create_time` varchar(10) DEFAULT NULL,
  `update_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_menu
-- ----------------------------
INSERT INTO `blue_menu` VALUES ('1', '', '主页', 'layui-icon-home', '', '0', '1', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('2', '', '控制台', null, '/', '1', '1', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('6', 'role', '角色管理', 'layui-icon-template', null, '3', '2', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('7', 'set', '设置', 'layui-icon-set', null, '0', '9', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('8', 'system', '系统设置', 'layui-icon-template', null, '7', '1', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('9', 'website', '网站设置', 'layui-icon-user', null, '8', '1', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('10', 'email', '邮件配置', 'layui-icon-user', null, '8', '2', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('11', 'user', '我的设置', 'layui-icon-user', null, '7', '2', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('12', 'info', '我的信息', 'layui-icon-user', null, '11', '1', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('13', 'password', '修改密码', 'layui-icon-user', null, '11', '2', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('14', 'menu', '菜单管理', 'layui-icon-template', null, '0', '2', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('15', 'add', '添加菜单', 'layui-icon-template', null, '14', '1', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('16', 'list', '菜单管理', 'layui-icon-template', null, '14', '2', '1', '1', '1524571288', '1510212370');
INSERT INTO `blue_menu` VALUES ('3', 'user', '用户', 'layui-icon-user', null, '0', '2', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('4', 'list', '网站用户', 'layui-icon-user', '', '3', '3', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('35', 'absc', '我的名字', 'layui-icon-rmb', null, '34', '0', '13', '1', '1529605996', '1529605996');

-- ----------------------------
-- Table structure for blue_user
-- ----------------------------
DROP TABLE IF EXISTS `blue_user`;
CREATE TABLE `blue_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户唯一id',
  `username` varchar(25) DEFAULT NULL COMMENT '用户名',
  `nickName` varchar(30) DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `role` int(2) DEFAULT NULL COMMENT '权限',
  `create_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `provices` varchar(15) DEFAULT NULL,
  `avatarUrl` varchar(255) DEFAULT NULL,
  `openid` varchar(35) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_user
-- ----------------------------
INSERT INTO `blue_user` VALUES ('1', 'blueange', 'blues', '$2y$10$8Umq6.Z02gJ0P8.Vh7yKO.0zLy5wgXVU5hwwl83efXZp6cxAySFqq', '2', '1525415008', '1525415008', '1', null, null, null, null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJq7Gq4ayicLLRdiatCsJNDuZh5SVUnyV3trO8IupqAkvUNRIGUCr1e21l1AwGcuUFy7iarg7TbBgGjA/0', 'oGSYL0cVRKnPUKFX4F8vRxdKgGEI', '15736950607');

-- ----------------------------
-- Table structure for blue_web
-- ----------------------------
DROP TABLE IF EXISTS `blue_web`;
CREATE TABLE `blue_web` (
  `id` int(11) NOT NULL,
  `sitename` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `cache` int(5) DEFAULT NULL,
  `max_upload_size` int(8) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `create_time` varchar(10) DEFAULT NULL,
  `update_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_web
-- ----------------------------
INSERT INTO `blue_web` VALUES ('1', 'blues', 'http://www.mymyjd.cn', null, '2048', 'sunny后台管理系统开发框架', 'sunny', 'sunny 后台管理系统开发框架， 前端基于 layui ，后台基于thinkphp5.1。sunny是给后台开发人员用的快速开发框架。解放后端开发人员，让专业的人做专业的事。', '© 2018 mymyjd.com MIT license', '', null, null);
