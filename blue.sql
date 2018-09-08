/*
Navicat MySQL Data Transfer

Source Server         : mydatabase
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-09-08 16:24:04
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_auth
-- ----------------------------
INSERT INTO `blue_auth` VALUES ('1', '超级管理员', '1527432870', '1527432870');
INSERT INTO `blue_auth` VALUES ('2', '普通用户', '1527432870', '1527432870');
INSERT INTO `blue_auth` VALUES ('20', 'vip会员', '1536287225', '1536287225');

-- ----------------------------
-- Table structure for blue_blog_log
-- ----------------------------
DROP TABLE IF EXISTS `blue_blog_log`;
CREATE TABLE `blue_blog_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) DEFAULT NULL,
  `do` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `create_time` varchar(10) DEFAULT NULL,
  `update_time` varchar(10) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `city` varchar(10) DEFAULT '未知',
  `refer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_blog_log
-- ----------------------------
INSERT INTO `blue_blog_log` VALUES ('33', '223.91.234.212', '访问主页', null, '1536392062', '1536392062', null, '河南', '直接访问');
INSERT INTO `blue_blog_log` VALUES ('34', '223.91.234.214', '阅读文章', null, '1536392065', '1536392065', null, '河南', 'http://mymyjd.cn/demo/public/');
INSERT INTO `blue_blog_log` VALUES ('35', '223.91.234.231', '点赞', '9', '1536392072', '1536392072', null, '河南', null);
INSERT INTO `blue_blog_log` VALUES ('36', '223.91.234.111', '点赞', '10', '1536392076', '1536392076', null, '河南', null);
INSERT INTO `blue_blog_log` VALUES ('37', '223.91.234.211', '点赞', '9', '1536392077', '1536392077', null, '河南', null);
INSERT INTO `blue_blog_log` VALUES ('38', '223.91.234.214', '点赞', '11', '1536392078', '1536392078', null, '河南', null);
INSERT INTO `blue_blog_log` VALUES ('39', '223.91.234.215', '点赞', '12', '1536392080', '1536392080', null, '河南', null);
INSERT INTO `blue_blog_log` VALUES ('40', '223.91.234.216', '点赞', '13', '1536392082', '1536392082', null, '河南', null);
INSERT INTO `blue_blog_log` VALUES ('41', '223.91.234.217', '点赞', '14', '1536392083', '1536392083', null, '河南', null);
INSERT INTO `blue_blog_log` VALUES ('42', '223.91.234.219', '点赞', '15', '1536392084', '1536392084', null, '河南', null);
INSERT INTO `blue_blog_log` VALUES ('43', '223.91.234.211', '点赞', '16', '1536392085', '1536392085', null, '河南', null);
INSERT INTO `blue_blog_log` VALUES ('44', '223.91.234.211', '点赞', '17', '1536392087', '1536392087', null, '河南', null);
INSERT INTO `blue_blog_log` VALUES ('45', '223.91.234.211', '点赞', '60', '1536392957', '1536392957', null, '河南', null);
INSERT INTO `blue_blog_log` VALUES ('46', '223.91.234.211', '阅读文章', null, '1536392963', '1536392963', null, '河南', 'http://mymyjd.cn/demo/public/');
INSERT INTO `blue_blog_log` VALUES ('47', '223.91.234.211', '访问主页', null, '1536393787', '1536393787', null, '河南', 'http://mymyjd.cn/demo/public/web/start/');

-- ----------------------------
-- Table structure for blue_cate
-- ----------------------------
DROP TABLE IF EXISTS `blue_cate`;
CREATE TABLE `blue_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `create_time` varchar(10) DEFAULT NULL,
  `update_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_cate
-- ----------------------------
INSERT INTO `blue_cate` VALUES ('1', '默认分类', '1536149342', '1536149342');
INSERT INTO `blue_cate` VALUES ('2', 'java', '1536149342', '1536149342');
INSERT INTO `blue_cate` VALUES ('3', '.net', '1536149342', '1536149342');
INSERT INTO `blue_cate` VALUES ('4', '生活', '1536149342', '1536149342');
INSERT INTO `blue_cate` VALUES ('5', '购物', '1536149342', '1536149342');
INSERT INTO `blue_cate` VALUES ('6', 'php', '1536149342', '1536149342');
INSERT INTO `blue_cate` VALUES ('7', 'web', '1536149342', '1536149342');
INSERT INTO `blue_cate` VALUES ('10', '12121', '1536149342', '1536149342');
INSERT INTO `blue_cate` VALUES ('11', '测试时', '1536287608', '1536149342');

-- ----------------------------
-- Table structure for blue_comment
-- ----------------------------
DROP TABLE IF EXISTS `blue_comment`;
CREATE TABLE `blue_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `content` text,
  `pid` int(11) NOT NULL COMMENT '帖子id',
  `ip` varchar(15) DEFAULT NULL,
  `create_time` varchar(10) DEFAULT NULL,
  `update_time` varchar(10) DEFAULT NULL,
  `status` int(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_comment
-- ----------------------------
INSERT INTO `blue_comment` VALUES ('1', 'bluen0308@163.com', ' 12312lalala <a target=\"_self\" href=\"http://mymyjd.cn\">http://mymyjd.cn<img src=\"http://www.blog.com/static/layui/images/face/34.gif\" alt=\"[钱]\"></a>  ', '60', '127.0.0.1', '1535993349', '1536164066', '1');
INSERT INTO `blue_comment` VALUES ('2', 'buanel0308@163.com', '1231231', '9', '127.0.0.1', '1536025756', '1536025756', '1');
INSERT INTO `blue_comment` VALUES ('6', '1231@13.com', 'qeweqwe', '60', '127.0.0.1', '1536310760', '1536310760', '1');
INSERT INTO `blue_comment` VALUES ('7', '1231@13.com', 'qeweqwe', '60', '127.0.0.1', '1536310773', '1536310773', '1');
INSERT INTO `blue_comment` VALUES ('8', '1231@13.com', 'qeweqwe', '60', '127.0.0.1', '1536310835', '1536310835', '1');
INSERT INTO `blue_comment` VALUES ('9', 'zhufdfd@163.com', '1321', '60', '127.0.0.1', '1536310995', '1536310995', '1');

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
INSERT INTO `blue_email` VALUES ('1', 'smtp.aliyun.com', '25', 'blues@mymyjd.cn', '123456', '1234567', null, null);

-- ----------------------------
-- Table structure for blue_log
-- ----------------------------
DROP TABLE IF EXISTS `blue_log`;
CREATE TABLE `blue_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `aid` int(11) DEFAULT NULL COMMENT '管理员id',
  `do` varchar(255) DEFAULT NULL COMMENT '做了什么事情',
  `create_time` varchar(10) DEFAULT NULL,
  `update_time` varchar(10) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL COMMENT '目标用户id 对某个人做',
  `pid` int(11) DEFAULT NULL COMMENT '帖子id 对帖子操作',
  `mid` int(11) DEFAULT NULL COMMENT '菜单 id',
  `db` varchar(255) DEFAULT NULL COMMENT '数据库操作',
  `ip` varchar(15) DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_log
-- ----------------------------
INSERT INTO `blue_log` VALUES ('29', null, '1', '把文章（id=22,26,)放入回收站', '1536392810', '1536392810', null, null, null, null, '223.91.234.211');
INSERT INTO `blue_log` VALUES ('30', null, '1', '把文章（id=17,)放入回收站', '1536392832', '1536392832', null, null, null, null, '223.91.234.211');
INSERT INTO `blue_log` VALUES ('31', null, '1', '把文章（id=11,)放入回收站', '1536392847', '1536392847', null, null, null, null, '223.91.234.211');
INSERT INTO `blue_log` VALUES ('32', null, '1', '清空回收站', '1536392884', '1536392884', null, null, null, null, '223.91.234.211');

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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_menu
-- ----------------------------
INSERT INTO `blue_menu` VALUES ('1', '', '主页', 'layui-icon-home', '', '0', '1', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('2', '', '控制台', null, '/', '1', '1', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('6', 'role', '角色管理', 'layui-icon-template', null, '3', '2', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('7', 'set', '设置', 'layui-icon-set', null, '0', '9', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('8', 'system', '系统设置', 'layui-icon-set', null, '7', '1', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('9', 'website', '网站设置', 'layui-icon-set', null, '8', '1', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('10', 'email', '邮件配置', 'layui-icon-set', null, '8', '2', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('11', 'user', '我的设置', 'layui-icon-set', null, '7', '2', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('12', 'info', '我的信息', 'layui-icon-user', null, '11', '1', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('13', 'password', '修改密码', 'layui-icon-password', null, '11', '2', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('14', 'menu', '菜单管理', 'layui-icon-template', null, '0', '2', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('15', 'add', '添加菜单', 'layui-icon-tianjia', null, '14', '1', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('16', 'list', '菜单管理', 'layui-icon-template', null, '14', '2', '1', '1', '1524571288', '1510212370');
INSERT INTO `blue_menu` VALUES ('3', 'user', '用户', 'layui-icon-user', null, '0', '2', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('4', 'list', '网站用户', 'layui-icon-user', '', '3', '3', '1', '1', '1524571288', null);
INSERT INTO `blue_menu` VALUES ('35', 'absc', '我的名字', 'layui-icon-rmb', null, '34', '0', '13', '1', '1529605996', '1529605996');
INSERT INTO `blue_menu` VALUES ('40', 'article', '内容管理', 'layui-icon-note', null, '0', '10', '1', '1', '1534735747', '1534735747');
INSERT INTO `blue_menu` VALUES ('41', 'cate', '分类管理', 'layui-icon-voice', null, '40', '1', '1', '1', '1534735936', '1534735936');
INSERT INTO `blue_menu` VALUES ('42', 'article', '文章管理', 'layui-icon-read', null, '40', '2', '1', '1', '1534736020', '1534736020');
INSERT INTO `blue_menu` VALUES ('43', 'write', '写文章', 'layui-icon-bianji', null, '40', '0', '1', '1', '1534743197', '1534743197');
INSERT INTO `blue_menu` VALUES ('44', 'comment', '评论管理', 'layui-icon-note', null, '40', '3', '1', '1', '1536157608', '1536157608');
INSERT INTO `blue_menu` VALUES ('45', 'recycle', '回收站', 'layui-icon-delete', null, '40', '4', '1', '1', '1536164287', '1536164287');
INSERT INTO `blue_menu` VALUES ('46', 'log', '日志管理', 'layui-icon-component', null, '0', '11', '1', '1', '1536164416', '1536164416');
INSERT INTO `blue_menu` VALUES ('47', 'syslog', '系统日志', 'layui-icon-note', null, '46', '1', '1', '1', '1536164459', '1536164459');
INSERT INTO `blue_menu` VALUES ('48', 'userlog', '用户日志', 'layui-icon-user', null, '46', '0', '1', '1', '1536164496', '1536164496');

-- ----------------------------
-- Table structure for blue_post
-- ----------------------------
DROP TABLE IF EXISTS `blue_post`;
CREATE TABLE `blue_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `title` text,
  `cate` int(1) DEFAULT NULL,
  `content` text,
  `status` int(2) DEFAULT '0',
  `zan` int(5) DEFAULT '0',
  `hit` int(6) DEFAULT '0',
  `tag` text,
  `sub` varchar(255) DEFAULT NULL,
  `rate` float(4,2) DEFAULT '0.00',
  `create_time` varchar(10) DEFAULT NULL,
  `update_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_post
-- ----------------------------
INSERT INTO `blue_post` VALUES ('2', '1', '功夫熊猫 3 网盘分享', '1', '百度网盘\r\n\r\nhttp://yun.baidu.com/share/link?shareid=279478327&amp;uk=2753127572', '1', '0', '0', '电影 功夫熊猫', null, '0.00', '1535622121', '1535622121');
INSERT INTO `blue_post` VALUES ('3', '1', 'Fatal error: Call to undefined function mysql_create_db()', '1', '当出现此类错误时可能原因1\r\n\r\nphp.ini 里面MySQL扩展默认是注释掉的\r\n在文件里搜一下\r\n;extension=php_mysql.dll\r\n找到后把分号去掉就行了\r\n\r\n可能原因2\r\n\r\n请运行以下代码段：\r\n\r\n&lt;?php\r\n$arr = get_defined_functions();\r\nprint_r($arr);\r\n?&gt;\r\n\r\n在输出页面中搜索“mysql_create_db() ”，结果你会发现搜索不到mysql_create_db() 这个函数。\r\n其实你在PHP手册上搜索mysql_create_db()，你就会发现有这样一条警告：\r\n<div class=\"warning\">\r\n\r\n<strong>警告:</strong>如果 MySQL 扩展库是基于 MySQL 4.x 客户端库建立的，则本函数不可用。\r\n\r\n有空多看看PHP手册是没错的！\r\n\r\n</div>', '1', '1', '1', 'Fatal error', null, '0.00', '1535622121', '1536049095');
INSERT INTO `blue_post` VALUES ('4', '1', '让你更加了解div+css', '1', '<a href=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/01/1.jpg\"><img class=\"alignnone size-medium wp-image-47\" src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/01/1-178x300.jpg\" alt=\"1\" width=\"178\" height=\"300\" /></a> <a href=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/01/2.jpg\"><img class=\"alignnone size-medium wp-image-48\" src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/01/2-201x300.jpg\" alt=\"2\" width=\"201\" height=\"300\" /></a> <a href=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/01/3.jpg\"><img class=\"alignnone size-medium wp-image-49\" src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/01/3-207x300.jpg\" alt=\"3\" width=\"207\" height=\"300\" /></a> <a href=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/01/4.jpg\"><img class=\"alignnone size-medium wp-image-50\" src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/01/4-300x184.jpg\" alt=\"4\" width=\"300\" height=\"184\" /></a> <a href=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/01/5.jpg\"><img class=\"alignnone size-medium wp-image-51\" src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/01/5-175x300.jpg\" alt=\"5\" width=\"175\" height=\"300\" /></a>', '1', '0', '0', null, null, '0.00', '1535622121', '1535622121');
INSERT INTO `blue_post` VALUES ('5', '1', '写给未来的‘我’', '1', '孩子，我希望你自始至终都是一个理想主义者。\r\n你可以是农民，可以是工程师，可以是演员，可以是流浪汉，但你必须是个理想主义者。\r\n童年，我们讲英雄故事给你听，并不是一定要你成为英雄，而是希望你具有纯正的品格。\r\n少年，我们让你接触诗歌、绘画、音乐，是为了让你的心灵填满高尚的情趣。\r\n这些高尚的情趣会支撑你的一生，使你在最严酷的冬天也不会忘记玫瑰的芳香。\r\n理想会使人出众。\r\n孩子，不要为自己的外形担忧。\r\n理想纯洁你的气质，而最美貌的女人也会因为庸俗而令人生厌。\r\n通向理想的途径往往不尽如人意，而你亦会为此受尽磨难。\r\n但是，孩子，你尽管去争取，理想主义者的结局悲壮而绝不可怜。\r\n在貌似坎坷的人生里，你会结识许多智者和君子，你会见到许多旁人无法遇到的风景和奇迹。\r\n选择平庸虽然稳妥，但绝无色彩。\r\n不要为蝇头小利放弃自己的理想，不要为某种潮流而改换自己的信念。\r\n物质世界的外表太过复杂，你要懂得如何去拒绝虚荣的诱惑。\r\n理想不是实惠的东西，它往往不能带给你尘世的享受。\r\n因此你必须习惯无人欣赏，学会精神享受，学会与他人不同。\r\n\r\n其次，孩子，我希望你是个踏实的人。\r\n人生太过短促，而虚的东西又太多，你很容易眼花缭乱，最终一事无成。\r\n如果你是个美貌的女孩，年轻的时候会有许多男性宠你，你得到的东西太过容易，这会使你流于浅薄和虚浮；\r\n如果你是个极聪明的男孩，又会以为自己能够成就许多大事而流于轻佻。\r\n记住，每个人的能力有限，我们活在世上能做好一件事足矣。\r\n写好一本书，做好一个主妇。\r\n不要轻视平凡的人，不要投机取巧，不要攻击自己做不到的事。\r\n你长大后会知道，做好一件事太难，但绝不要放弃。\r\n\r\n你要懂得和珍惜感情。\r\n不管男人女人，不管墙内墙外，相交一场实在不易。\r\n交友的过程会有误会和摩擦，但想一想，诺大世界，有缘结伴而行的能有几人？\r\n你要明白朋友终会离去，生活中能有人伴在身边，听你倾谈，倾谈给你听，就应该感激。\r\n要爱自己和爱他人，要懂自己和懂他人。\r\n你的心要如溪水般柔软，你的眼波要像春天般明媚。\r\n你要会流泪，会孤身一人坐在黑暗中听伤感的音乐。\r\n你要懂得欣赏悲剧，悲剧能丰富你的心灵。\r\n\r\n希望你不要媚俗。\r\n你是个独立的人，无人能抹杀你的独立性，除非你向世俗妥协。\r\n要学会欣赏真，要在重重面具下看到真。\r\n世上圆滑标准的人很多，但出类拔萃的人极少。而往往出类拔萃又隐藏在卑琐狂荡之下。\r\n在形式上我们无法与既定的世俗争斗，而在内心我们都是自己的国王。\r\n如果你的脸上出现谄媚的笑容，我将会羞愧地掩面而去。\r\n世俗的许多东西虽耀眼却无价值，不要把自己置于大众的天平上，不然你会因此无所适从，人云亦云。\r\n\r\n在具体的做人上，我希望你不要打断别人的谈话，不要娇气十足。\r\n你每天至少要拿出两小时来读书，要回信写信给你的朋友。\r\n不要老是想着别人应该为你做些什么，而要想着怎么去帮助他人。\r\n借他人的东西要还，不要随便接受别人的恩惠。\r\n要记住，别人的东西，再好也是别人的；自己的东西，再差也是自己的。\r\n\r\n孩子，还有一件事，虽然做起来很难，但相当重要，这就是要有勇气正视自己的缺点。\r\n你会一年年地长大，会渐渐遇到比你强、比你优秀的人，会发现自己身上有许多你所厌恶的缺点。\r\n这会使你沮丧和自卑。\r\n但你一定要正视它，不要躲避，要一点点地加以改正。\r\n战胜自己比征服他人还要艰巨和有意义。\r\n\r\n不管世界潮流如何变化，但人的优秀品质却是永恒的：正直、勇敢、独立。\r\n我希望你是一个优秀的人。', '1', '0', '0', '未来', null, '0.00', '1535622121', '1535622121');
INSERT INTO `blue_post` VALUES ('6', '1', '微软小冰', '1', '<a href=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2015/12/wp_ss_20151209_0001.png\"><img class=\"alignnone size-medium wp-image-31\" src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2015/12/wp_ss_20151209_0001-169x300.png\" alt=\"wp_ss_20151209_0001\" width=\"169\" height=\"300\" /></a>', '1', '0', '0', null, null, '0.00', '1535622121', '1535622121');
INSERT INTO `blue_post` VALUES ('7', '1', '淡竹', '1', '他是竹，是植物中的另类。\r\n\r\n他看上去清瘦且憔悴，相对于其他植物，像一个混称太好的中年人。\r\n\r\n稻子，正是扬花灌浆的妙龄，名牌大学新生般踌躇满腹。\r\n\r\n银杏终于褪去一身浓艳，和蓝天的高洁媲美。\r\n\r\n松树很满足，即使干瘪的果子永远得不到更饱满的收获。\r\n\r\n法国梧桐是老实人，沉浸在年代久远的优越感里，并不知道，有一种鹅掌梧桐，要悄然代替它无敌的位置。\r\n\r\n兰花三七，像极熏衣草，却更美，所有的花都虔诚地朝往一个方向，像被一种崇高使命蛊惑。据说气味能抵挡蛇对游人的侵袭。\r\n\r\n浮萍无根，却有心有肺，挣脱着随波逐流的命运。\r\n\r\n被践踏的草，总是第一时间奋力挺直腰杆，挂着最底层最灿烂的笑。\r\n\r\n贪婪的蔓，不知羞耻地攀爬在高大的冷杉上，一边噬血，一边甜言蜜语……\r\n\r\n几乎所有的植物，都躜足劲儿，在喊——哦要生存!我要开花!我要结果!\r\n\r\n他是竹，是植物中的另类。\r\n\r\n其实，名利、金钱、权势，如同阳光雨露的垂爱，蜜蜂花蝶的青睐，他不是不想要，可是，要弯下腰，要费心机——要将每一条根都变成利爪，团结土壤，虚伪地赞美越来越污浊的空气，要与昆虫讲和，与风霜妥协，对苍蝇漠视，对强加在身上的种种不公委曲求全，才能安生立命，才有飞黄腾达的可能。\r\n\r\n可是，他的节生来就是直的，他不能弯腰。他的心生来就是空的，他不愿费尽心机。\r\n\r\n于是空又成了一份豁达，一种智慧。那一节节空里，早已成就了一个美妙的小宇宙——有与生俱采的一些坚持，有对土地的感恩，有和另一棵竹的爱，与笋的亲，与周围无数青光绿匆的促膝长谈、开怀畅饮，有鸟儿偶尔驻足的呢喃，有清风明月的和唱……笑患功名利禄，荒芜繁杂的每一秒时光都格外静谧而美好。\r\n\r\n那一节节空里，是永远的满盈。\r\n\r\n更让我惊异的，他不仅直，空，而且淡。\r\n\r\n他是“淡竹”。从外表到骨子，都是竹子中的最淡——淡紫、淡红、淡褐、淡绿，淡泊、从容。所以，他与世无争到看淡生死。\r\n\r\n他可以很入世。生可以防风，成荫，美化环境，死可以做篾，成为最土最实用的晒竿、瓜架、凉席，竹桌竹椅竹篮：\r\n\r\n他也可以很出世。他是箫与笛的前世，不死的魂魄随天籁之音往来天地之间，优雅散淡而隽永。\r\n\r\n当然，这并不表示他逆来顺受，他会和压在头顶上的积雪抗争，他不允许荒草占领脚下的领地。\r\n\r\n他摇曳着枝竿向毒蛇示威，他告诉所有的竹要独善其身兼爱天下。\r\n\r\n他是李白，“安能摧眉折腰事权贵，使我不得开心颜”。\r\n\r\n他是陶渊明，“采菊东篱下，悠然见南山”。\r\n\r\n他是郑板桥，“盖竹之体，瘦劲孤高，枝枝傲雪，节节干霄，有君子之豪气凌云，不为俗屈”。\r\n\r\n他是文天祥，“人生自古谁无死，留取丹心照汗青”。\r\n\r\n他是苏轼，“宁可食元肉，不可居无竹”。\r\n\r\n他是疯疯颠颠的释道济公，“数枝淡竹翠生光，一点无尘自有香”。\r\n\r\n他是岳飞，辛弃疾，他是中国儒家，“山南之竹，不操自直，斩而为箭，射而则达”……\r\n\r\n他是我们身边那些还坚守着什么的人。他们懂得，浓墨重彩是一辈子，云淡风清也是一辈子。\r\n\r\n奴颜婢膝是一辈子，坦荡潇洒也是一辈子。他们选择了后者，等于选择了物质上的清瘦，心灵的丰衣足食。\r\n\r\n于是，这自由快乐的心灵，站在一个孤寂的阵营里，成文人世间越来越弥足珍贵的另类，风雨过处，仰天长笑。', '1', '0', '0', '文学', null, '4.80', '1535622121', '1535622121');
INSERT INTO `blue_post` VALUES ('8', '1', '彩色粉笔', '1', '<p style=\"text-align: left;\">这里依然是如此熟悉</p>\r\n我还能找到曾坐过的位置\r\n\r\n时光匆匆其实我知道它\r\n\r\n还记得我第一次的勇气\r\n\r\n那时候你沉默的问题\r\n\r\n不知道时间可以解答\r\n\r\n就像那年曾写满寄语的黑板\r\n\r\n现在才等到回执\r\n\r\n我用一根彩色的粉笔\r\n\r\n把爱写进往事里\r\n\r\n阳光里裙摆跳舞的你\r\n\r\n是我年少时最美的诗\r\n\r\n我用青春彩色的粉笔\r\n\r\n画一幅那时记忆\r\n\r\n画里我们一起的日子\r\n\r\n原来是那么花香满地\r\n\r\n那时候你沉默的问题\r\n\r\n不知道时间可以解答\r\n\r\n就像那年曾写满寄语的黑板\r\n\r\n现在才等到回执\r\n\r\n我用一根彩色的粉笔\r\n\r\n把爱写进往事里\r\n\r\n阳光里裙摆跳舞的你\r\n\r\n是我年少时最美的诗\r\n\r\n我用青春彩色的粉笔\r\n\r\n画一幅那时记忆\r\n\r\n画里我们一起的日子\r\n\r\n原来是那么花香满地\r\n\r\n我用青春彩色的粉笔\r\n\r\n画一幅那时记忆\r\n\r\n画里我们一起的日子\r\n\r\n原来是那么花香满地\r\n\r\n我们一起的日子\r\n\r\n是那么花香满地', '1', '0', '0', null, null, '5.00', '1535622121', '1535622121');
INSERT INTO `blue_post` VALUES ('9', '1', '关于div+css的资料，看过后让你更加了解css的使用', '1', '', '1', '25', '24', null, null, '0.00', '1535622122', '1536392077');
INSERT INTO `blue_post` VALUES ('10', '1', '鹊桥仙-秦观', '1', '纤云弄巧，飞星传恨，银汉迢迢暗度。金风玉露一相逢，便胜却人间无数。\r\n柔情似水，佳期如梦，忍顾鹊桥归路。两情若是久长时，又岂在朝朝暮暮。', '1', '2', '2', null, null, '0.00', '1535622122', '1536392076');
INSERT INTO `blue_post` VALUES ('12', '1', '程序猿-励志文章（收藏自网络）', '1', '前言：\r\n\r\n很多很有道理，只不过我一直认为经历可以改变命运，书籍只能改变想法或是看世界的角度而已……\r\n\r\n正文：\r\n\r\n1、一个人，如果你不逼自己一把，你根本不知道自己有多优秀。\r\n\r\n2、赚钱是一种能力，花钱是一种水平，能力可以练，水平是轻易练不出来的。\r\n\r\n3、年轻人不可以太狂。\r\n\r\n4、一个人的知识，通过学习可以得到；一个人的成长，必须通过磨练。\r\n\r\n5、这个世界上好书很多，可以改变命运的书很少。\r\n\r\n6、这个世界上朋友很多，可以用一生托付的朋友很少。\r\n\r\n7、如果发现一个人，一个地方，一件事，一本书，可以改变你的命运。一定要想办法跟他发生关系，否则，他就跟你没关系。\r\n\r\n8、当一个人没有成功的时候，装也装出成功的样子。（因为装的时候，他已经成为你性格的一部分）\r\n\r\n9、我们学习的目的，是为了使用，不是知识没有用，而是你没有使用，说明你没有用。\r\n\r\n10、别人对你的态度，决定了你的命运。\r\n\r\n11、笑由心生。\r\n\r\n12、一个人出门的时候，口袋里都装的钱，装钱的目的，就是为了花出去，那里舒服就往那里花。一个人让别人舒服，他就是一个经营者；别人让你舒服，他就是一个消费者。\r\n\r\n13、一个人，敢听真话，需要勇气;一个人敢说真话，需要魄力。\r\n\r\n14、因为你的存在，让别人快乐起来，你叫朋友；因为你的存在，让别人卓越起来，你是教练；因为你的存在，让别人强大起来，你是领导。\r\n\r\n15、一件事情，对你伤害的程度与事情本身没有任何关系，取决于你对这件事的态度。\r\n\r\n16 、你，简单了，你的世界就简单了；你，简单了，事情就简单了。\r\n\r\n17、一件事，会干了，好好干；不会干了，乱干。干的次数多了，自然会干。但是，首先，你要干。\r\n\r\n18、一个人，想要优秀，你必须要接受挑战；一个人，你想要尽快优秀，就要去寻找挑战。\r\n\r\n19、一个人想要创业，先要学会打工。\r\n\r\n20、世界上，成功的有两种人，一种人是傻子，一种人是疯子。傻子是会吃亏的人，疯子是会行动的人。', '1', '2', '24', null, null, '0.00', '1535622122', '1536392080');
INSERT INTO `blue_post` VALUES ('13', '1', 'C# 对文件与文件夹的操作包括删除、移动与复制', '1', '<h1 id=\"title\" class=\"__reading__mode__extracted__title\"><span id=\"publishdate\" class=\"__reading__mode__extracted__date\"><span style=\"font-size: medium;\"> </span></span></h1>\r\n<div id=\"__reading__mode__mainbody__id\" class=\"__reading__mode__mainbody\">\r\n<div id=\"htmlNonSecureZone\"><!-- Do not remove, see CFeedViewer::_IsElementInHTMLSecureZone -->\r\n<div id=\"content\" class=\"__reading__mode__extracted__article__body\">\r\n\r\n在.Net中，对文件（File）和文件夹（Folder）的操作可以使用File类和Directory类，也可以使用FileInfo类和DirectoryInfo类。文件夹（Folder）是只在Windows操作系统中使用的名词。在操作系统的理论中，人们更习惯于使用目录（Directory）这个名词。或许微软为了有朝一日将.Net移植到其他的操作系统中（实际上也有很多人也在做着这个项目），所以还是以Directory来命名操作文件夹的类。\r\n\r\nFile类和Directory类都是静态类。使用它们的好处是不需要初始化对象。如果你对某一个文件或文件夹只进行一次操作，那你最好使用该静态类的静态方法，比如File.Move，File.Delete等等。如果你需要对一个文件或文件夹进行多次操作，那最好还是使用FileInfo和DirectoryInfo类。因为File类和Directory是静态类，所以你每次对一个文件或文件夹进行操作之前，它们都需要对该文件或文件夹进行一些检查，比如authentication。如果使用FileInfo类和DirectoryInfo类，只在初始化类的对象时进行相关的检查工作，也就是说只需要做一次，所以如果你需要对某个文件或文件夹进行多次操作，那最好使用FileInfo类和DirectoryInfo类。\r\n\r\n下面的这段代码演示了如何获得文件夹的信息，包括获得文件夹下的子文件夹，以及文件夹下的文件。这里使用了DirectoryInfo 类来完成，当然你也可以使用Directory静态类。\r\n代码如下:\r\n<div id=\"code45681\" class=\"codebody\">\r\nvoid DisplayFolder()\r\n{\r\nstring folderFullName = @\"c:\\temp\";\r\nDirectoryInfo theFolder = new DirectoryInfo(folderFullName);\r\nif (!theFolder.Exists)\r\nthrow new DirectoryNotFoundException(\"Folder not found: \" + folderFullName);\r\n// list all subfolders in folder\r\nConsole.WriteLine(\"Subfolders:\");\r\nforeach (DirectoryInfo subFolder in theFolder.GetDirectories())\r\n{\r\nConsole.WriteLine(subFolder.Name);\r\n}\r\n// list all files in folder\r\nConsole.WriteLine();\r\nConsole.WriteLine(\"Files:\");\r\nforeach (FileInfo file in theFolder.GetFiles())\r\n{\r\nConsole.WriteLine(file.Name);\r\n}\r\n}</div>\r\n下面演示了如何使用FileInfo类来获得文件的相关信息，包括文件的创建日期，文件的大小等等。当然你同样也可以使用File静态类来完成。\r\n代码如下:\r\n<div id=\"code37395\" class=\"codebody\">\r\nvoid DisplayFileInfo()\r\n{\r\nstring folderFullName = @\"c:\\temp\";\r\nstring fileName = \"New Text Document.txt\";\r\nstring fileFullName = Path.Combine(folderFullName, fileName);\r\nFileInfo theFile = new FileInfo(fileFullName);\r\nif (!theFile.Exists)\r\nthrow new FileNotFoundException(\"File not found: \" + fileFullName);\r\nConsole.WriteLine(string.Format(\"Creation time: {0}\", theFile.CreationTime.ToString()));\r\nConsole.WriteLine(string.Format(\"Size: {0} bytes\", theFile.Length.ToString()));\r\n}</div>\r\n下面的代码分别使用了File类和FileInfo类来演示如何删除文件\r\n代码如下:\r\n<div id=\"code15369\" class=\"codebody\">\r\nvoid DeleteFile1()\r\n{\r\nstring fileToBeDeleted = @\"c:\\temp\\New Text~ Document (3).txt\";\r\nif (File.Exists(fileToBeDeleted))\r\n{\r\nFile.Delete(fileToBeDeleted);\r\n}\r\n}\r\nvoid DeleteFile2()\r\n{\r\nstring fileToBeDeleted = @\"c:\\temp\\New Text~ Document (3).txt\";\r\nFileInfo file = new FileInfo(fileToBeDeleted);\r\nif (file.Exists)\r\n{\r\nfile.Delete();\r\n}\r\n}</div>\r\n下面的代码分别使用了Directory类和DirectoryInfo类来演示如何删除文件夹\r\n代码如下:\r\n<div id=\"code54890\" class=\"codebody\">\r\nvoid DeleteFolder1()\r\n{\r\nstring folderToBeDeleted = @\"c:\\temp\\test\";\r\nif (Directory.Exists(folderToBeDeleted))\r\n{\r\n// true is recursive delete:\r\nDirectory.Delete(folderToBeDeleted, true);\r\n}\r\n}\r\n\r\nvoid DeleteFolder2()\r\n{\r\nstring folderToBeDeleted = @\"c:\\temp\\test\";\r\nDirectoryInfo folder = new DirectoryInfo(folderToBeDeleted);\r\nif (folder.Exists)\r\n{\r\nfolder.Delete(true);\r\n}\r\n}</div>\r\n下面的代码分别使用了File类和FileInfo类来演示如何移动文件\r\n代码如下:\r\n<div id=\"code36327\" class=\"codebody\">\r\nvoid MoveFile1()\r\n{\r\nstring fileToMove = @\"c:\\temp\\New Text Document.txt\";\r\nstring fileNewDestination = @\"c:\\temp\\test.txt\";\r\nif (File.Exists(fileToMove) &amp;&amp; !File.Exists(fileNewDestination))\r\n{\r\nFile.Move(fileToMove, fileNewDestination);\r\n}\r\n}\r\n\r\nvoid MoveFile2()\r\n{\r\nstring fileToMove = @\"c:\\temp\\New Text Document.txt\";\r\nstring fileNewDestination = @\"c:\\temp\\test.txt\";\r\nFileInfo file = new FileInfo(fileToMove);\r\nif (file.Exists)\r\n{\r\nfile.MoveTo(fileNewDestination);\r\n}\r\n}</div>\r\n下面的代码分别使用了Directory类和DirectoryInfo类来演示如何移动文件夹\r\n代码如下:\r\n<div id=\"code18573\" class=\"codebody\">\r\nvoid MoveFolder1()\r\n{\r\nstring folderToMove = @\"c:\\temp\\test\";\r\nstring folderNewDestination = @\"c:\\temp\\test2\";\r\nif (Directory.Exists(folderToMove))\r\n{\r\nDirectory.Move(folderToMove, folderNewDestination);\r\n}\r\n}\r\n\r\nvoid MoveFolder2()\r\n{\r\nstring folderToMove = @\"c:\\temp\\test\";\r\nstring folderNewDestination = @\"c:\\temp\\test2\";\r\nDirectoryInfo folder = new DirectoryInfo(folderToMove);\r\nif (folder.Exists)\r\n{\r\nfolder.MoveTo(folderNewDestination);\r\n}\r\n}</div>\r\n下面的代码分别使用了File类和FileInfo类来演示如何复制文件\r\n\r\n</div>\r\n</div>\r\n</div>', '1', '2', '0', null, null, '0.00', '1535622122', '1536392081');
INSERT INTO `blue_post` VALUES ('14', '1', '为什么计算机时间和众多编程语言要从1970年1月1日开始算起', '1', '<a href=\"http://s2.51cto.com/wyfs02/M00/71/39/wKiom1XJWezgIdGtAAAjXQuD2f4030.jpg\" target=\"_blank\">                                                               <img class=\"fit-image\" src=\"http://s2.51cto.com/wyfs02/M00/71/39/wKiom1XJWezgIdGtAAAjXQuD2f4030.jpg\" alt=\"\" width=\"498\" height=\"322\" border=\"0\" /></a>\r\n\r\n今天我们来讨论一个非常有意思的事，那就是你知道为什么计算机时间和众多的编程语言的时间都要从1970年1月1日开始算起呢，时间计时起点到底为什么是 1970年1月1号呢？我想大家应该都知道，但是我估计大家几乎大部分都没有想过这个问题。我们就一起来聊聊，这是为什么？\r\n\r\n<strong>1、最懒的解释</strong>\r\n\r\n很多编程语言起源于UNIX系统，而UNIX系统认为1970年1月1日0点是时间纪元，所以我们常说的UNIX时间戳是以1970年1月1日0点为计时起点时间的。\r\n\r\n说了这个懒人的解释，估计大家还没有懂得真正的意思。所以我们接下来深入的了解一下。\r\n\r\n<strong>2、深入的了解</strong>\r\n\r\n最初计算机操作系统是32位，而时间也是用32位表示。\r\n\r\nSystem.out.println(Integer.MAX_VALUE);\r\n\r\n2147483647\r\n\r\nInteger 在JAVA内用32位表示，因此32位能表示的最大值是2147483647。另外1年365天的总秒数是 31536000，2147483647/31536000 = 68.1，也就是说32位能表示的最长时间是68年，从1970年开始的话，加上68.1，实际最终到2038年01月19日03时14分07秒，便会到 达最大时间，过了这个时间点，所有32位操作系统时间便会变为10000000 00000000 00000000 00000000，算下来也就是1901年12月13日20时45分52秒，这样便会出现时间回归的现象，很多软件便会运行异常了。\r\n\r\n到 这里，我想问题的答案已经显现出来了，那就是:因为用32位来表示时间的最大间隔是68年，而最早出现的UNIX操作系统考虑到计算机产生的年代和应用的 时限综合取了1970年1月1日作为UNIX TIME的纪元时间(开始时间)，至于时间回归的现象相信随着64为操作系统的产生逐渐得到解决，因为用64位操作系统可以表示到 292,277,026,596年12月4日15时30分08秒，相信我们的N代子孙，哪怕地球毁灭那天都不用愁不够用了，因为这个时间已经是千亿年以后 了', '1', '2', '1', null, null, '0.00', '1535622122', '1536392083');
INSERT INTO `blue_post` VALUES ('15', '1', 'sublime 2 and sublime 3 package control 安装代码', '1', '一、简单的安装方法\r\n\r\n使用Ctrl+`快捷键或者通过View-&gt;Show Console菜单打开命令行，粘贴如下代码：\r\n\r\nimport urllib.request,os; pf = \'Package Control.sublime-package\'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), \'wb\').write(urllib.request.urlopen( \'http://sublime.wbond.net/\' + pf.replace(\' \',\'%20\')).read())\r\n\r\n\r\n如果顺利的话，此时就可以在Preferences菜单下看到Package Settings和Package Control两个菜单了。\r\n\r\n顺便贴下Sublime Text2 的代码：\r\n\r\nimport urllib2,os; pf=\'Package Control.sublime-package\'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler( ))); open( os.path.join( ipp, pf), \'wb\' ).write( urllib2.urlopen( \'http://sublime.wbond.net/\' +pf.replace( \' \',\'%20\' )).read()); print( \'Please restart Sublime Text to finish installation\')\r\n\r\n\r\n二、手动安装\r\n\r\n可能由于各种原因，无法使用代码安装，那可以通过以下步骤手动安装Package Control：\r\n\r\n1.点击Preferences &gt; Browse Packages菜单\r\n\r\n2.进入打开的目录的上层目录，然后再进入Installed Packages/目录\r\n\r\n3.下载Package Control.sublime-package并复制到Installed Packages/目录\r\n\r\n4.重启Sublime Text。', '1', '2', '2', null, null, '0.00', '1535622122', '1536392084');
INSERT INTO `blue_post` VALUES ('16', '1', 'Geek--极客', '1', '<a href=\"http://m.iqiyi.com/v_19rrkbrjo0.html\">geek</a>\r\n<iframe src=\"http://open.iqiyi.com/developer/player_js/coopPlayerIndex.html?vid=1cc625122679efae080ee3288da37a89&amp;tvId=423075900&amp;accessToken=2.f22860a2479ad60d8da7697274de9346&amp;appKey=3955c3425820435e86d0f4cdfe56f5e7&amp;appId=1368&amp;height=100%&amp;width=100%\" width=\"100%\" height=\"500px\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>', '1', '2', '1', null, null, '0.00', '1535622122', '1536392085');
INSERT INTO `blue_post` VALUES ('18', '1', '漫威电影观影顺序', '1', '<a href=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/05/146241643741258700_a580xH.jpg\" rel=\"attachment wp-att-89\"><img class=\"alignnone size-medium wp-image-89\" src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/05/146241643741258700_a580xH-109x300.jpg\" alt=\"146241643741258700_a580xH\" width=\"109\" height=\"300\" /></a>', '1', '0', '2', null, null, '0.00', '1535622122', '1536313964');
INSERT INTO `blue_post` VALUES ('19', '1', 'flash 听课笔记第一波', '4', '*\r\nActionScript2.0\r\n语法遵守骆驼命名发\r\n写在元件上语法格式为\r\non(press){}\r\n写在主时间轴上语法格式为\r\n_root.aa.onPress=function(){}\r\nnextFrame();\r\n转到下一帧，并停止播放\r\npreFrame();\r\n转到上一帧并停止播放，如果写在第一帧，则无效果\r\nstopAllSounds();\r\n停止所有音频\r\nstartDrag(target,[1ock,left,top,right,bottom]);\r\ntarget:要拖动的影片剪辑路径\r\nlock：true、false\r\nleft，top，right，bottom：相对于影片剪辑父级坐标的值，这些值指定该影片剪辑的约束矩形。这些参数是可选的。\r\n说明\r\n函数；使 target 影片剪辑在影片播放过程中可拖动。一次只能拖动一个影片剪辑。执行了 startDrag() 操作后，影片剪辑将保持可拖动状态，直到用 stopDrag() 明确停止拖动为止，或直到对其它影片剪辑调用了 startDrag() 动作为止。\r\n示例\r\n若要创建用户可以放在任何位置的影片剪辑，可将 startDrag() 和 stopDrag() 动作附加到该影片剪辑内的某个按钮上。\r\n\r\non (press) {  startDrag(this,true);}on (release) {  stopDrag();}\r\nsetProperty(target,property,value/expression){}\r\ntarget要设置其属性的影片剪辑实例名称的路径(实例名)。\r\n\r\nproperty要设置的属性。\r\n\r\nvalue属性的新文本值。\r\n\r\nexpression计算结果为属性新值的公式。', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('20', '1', 'phpwind 网易企业邮箱设置', '6', '<a href=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/06/2016-06-01_23-01-28.png\"><img class=\"alignnone  wp-image-100\" src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2016/06/2016-06-01_23-01-28-300x290.png\" alt=\"2016-06-01_23-01-28\" width=\"298\" height=\"288\" /></a>\r\n\r\n网易企业免费邮箱的smtp服务器名及端口号\r\n\r\nSMTP服务器:smtp.ym.163.com\r\n\r\n端口号：25', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('21', '1', '好用的.net反编译软件ILSpy', '3', 'ILspy是一个开源的.net反编译软件，使用十分方便。\r\n\r\n<a href=\"http://www.mymyjd.cn/wordp1/2016/06/04/%e5%a5%bd%e7%94%a8%e7%9a%84-net%e5%8f%8d%e7%bc%96%e8%af%91%e8%bd%af%e4%bb%b6ilspy/ilspy%e6%b1%89%e5%8c%962-1-0-1603/\" rel=\"attachment wp-att-103\">ILSpy汉化2.1.0.1603</a>', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('23', '1', 'centos', '7', '', '1', '0', '2', null, null, '0.00', '1535622122', '1536392963');
INSERT INTO `blue_post` VALUES ('41', '1', 'centos 安装中文拼音输入法', '1', '直接打开终端\r\n以管理员身份登陆\r\nsu - root\r\npassword\r\n输入以下代码即可\r\ninstall ibus-libpinyin', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('42', '1', '安装windows和linux双系统后启动无法引导windows的解决方法', '1', '如果你先安装windows系统，之后安装linux\r\n安装完liunx后可能无法进入windows或者liunx中无法识别windows ntfs分区\r\n如果可以进入liunx\r\n可以先在liunx中安装ntfs-3g\r\n先添加源\r\n\r\nwget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo\r\n然后安装ntfs-3g\r\nyum install ntfs-3g\r\n或者yum install ntfs*\r\n安装成功后\r\ngrub2-mkconfig -o /boot/grub2/grub.cfg\r\n即可自动添加引导项\r\n重启即可看到效果', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('44', '1', '微信小程序 bindlongtap事件会触发tap事件的解决方案', '7', '\r\n看懂这个逻辑就可以解决\r\n\r\n<a href=\"http://www.mymyjd.cn/wordp1/2017/11/30/%e5%be%ae%e4%bf%a1%e5%b0%8f%e7%a8%8b%e5%ba%8f-bindlongtap%e4%ba%8b%e4%bb%b6%e4%bc%9a%e8%a7%a6%e5%8f%91tap%e4%ba%8b%e4%bb%b6%e7%9a%84%e8%a7%a3%e5%86%b3%e6%96%b9%e6%a1%88/qq%e5%9b%be%e7%89%8720171130112458/\" rel=\"attachment wp-att-256\"><img src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2017/11/QQ图片20171130112458.png\" alt=\"\" width=\"445\" height=\"288\" class=\"alignnone size-full wp-image-256\" /></a>\r\n通过设置临时变量完美解决\r\n', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('46', '1', '酷我音乐 音乐搜索接口', '4', 'URL http://search.kuwo.cn/r.s?SONGNAME=歌名&ft=music&rformat=json&encoding=utf8&rn=8\r\n\r\n\r\nSONGNAME：歌名 可以加“”\r\nrn : 返回音乐数量\r\n\r\n<a href=\"http://www.mymyjd.cn/wordp1/2017/11/17/%e9%85%b7%e6%88%91%e9%9f%b3%e4%b9%90-%e9%9f%b3%e4%b9%90%e6%90%9c%e7%b4%a2%e6%8e%a5%e5%8f%a3/%e6%8d%95%e8%8e%b7/\" rel=\"attachment wp-att-249\"><img src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2017/11/捕获.png\" alt=\"\" width=\"1568\" height=\"631\" class=\"alignnone size-full wp-image-249\" /></a>', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('47', '1', '使用thinkphp5时报错 Parse error: syntax error, unexpected \'[\' in D:\\php\\WWW\\v\\thinkphp\\library\\think\\Loader.php on line 18', '6', '<code>Parse error: syntax error, unexpected \'[\' in D:\\php\\WWW\\v\\thinkphp\\library\\think\\Loader.php on line 18</code>\r\n\r\nphp版本错误\r\n\r\nthinkphp基于5.3版本\r\n只要切换到php5.3及以上版本即可', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('48', '1', 'mysql 数据库密码忘记时 修改密码的方法', '6', '首先关闭mysql服务\r\n然后打开控制台cd 到mysql\\bin目录下\r\n输入mysqld --skip-grant-tables\r\n回车此时这个shell已经没法操作\r\n然后重新打开一个控制台shell\r\ncd 到mysql\\bin目录\r\n输入mysql \r\n回车，发现成功登录mysql\r\n此时输入\r\nuse mysql;\r\nupdate user set password=password(\'你的新密码\') where user=\'root\';\r\n回车执行成功！\r\n输入flush privileges;\r\n刷新权限就ok了\r\n密码重置完成，关闭所有shell \r\n重新启动mysql test一下密码是不是已经修改了', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('49', '1', '免费永久https 协议 搭建 教程', '6', '发现篇不错的教程，\r\n亲测可用\r\n免费永久https\r\n移步<a href=\"https://www.freehao123.com/lets-encrypt/\">查看</a>\r\nhttps://www.freehao123.com/lets-encrypt/', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('50', '1', 'jquery ajax标准写法', '7', '<code>\r\n$.ajax({\r\n　　url:url,                   　　  //地址\r\n　　type：\'post\'，　　　　　　 //请求方式 还可以是get type不可写成Type 不让会导致数据发送不过去,使用post无法接受\r\n　　dataType：\'html\'，　　　　//返回格式 ,还可以是json\r\n　　async：false，　　　 　　 //同步异步 ,一般为异步flase\r\n　　data：{\"id\":\"value\"},　　 //参数值\r\n　　beforesend:function(){　//　请求前的处理\r\n　　},\r\n　　success:function(){　　//请求成功时的处理\r\n　　},\r\n　　complete:function(){　　//请求完成时的处理\r\n　　},\r\n　　error:function(){　　　　//请求出错误时的处理\r\n　　}\r\n\r\n});\r\n</code>\r\n\r\n\r\n\r\n参数\r\noptions\r\n类型：Object\r\n\r\n可选。AJAX 请求设置。所有选项都是可选的。\r\n\r\nasync\r\n类型：Boolean\r\n\r\n默认值: true。默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。\r\n\r\n注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。\r\n\r\nbeforeSend(XHR)\r\n类型：Function\r\n\r\n发送请求前可修改 XMLHttpRequest 对象的函数，如添加自定义 HTTP 头。\r\n\r\nXMLHttpRequest 对象是唯一的参数。\r\n\r\n这是一个 Ajax 事件。如果返回 false 可以取消本次 ajax 请求。\r\n\r\ncache\r\n类型：Boolean\r\n\r\n默认值: true，dataType 为 script 和 jsonp 时默认为 false。设置为 false 将不缓存此页面。\r\n\r\njQuery 1.2 新功能。\r\n\r\ncomplete(XHR, TS)\r\n类型：Function\r\n\r\n请求完成后回调函数 (请求成功或失败之后均调用)。\r\n\r\n参数： XMLHttpRequest 对象和一个描述请求类型的字符串。\r\n\r\n这是一个 Ajax 事件。\r\n\r\ncontentType\r\n类型：String\r\n\r\n默认值: \"application/x-www-form-urlencoded\"。发送信息至服务器时内容编码类型。\r\n\r\n默认值适合大多数情况。如果你明确地传递了一个 content-type 给 $.ajax() 那么它必定会发送给服务器（即使没有数据要发送）。\r\n\r\ncontext\r\n类型：Object\r\n\r\n这个对象用于设置 Ajax 相关回调函数的上下文。也就是说，让回调函数内 this 指向这个对象（如果不设定这个参数，那么 this 就指向调用本次 AJAX 请求时传递的 options 参数）。比如指定一个 DOM 元素作为 context 参数，这样就设置了 success 回调函数的上下文为这个 DOM 元素。\r\n\r\n就像这样：\r\n\r\n$.ajax({ url: \"test.html\", context: document.body, success: function(){\r\n        $(this).addClass(\"done\");\r\n      }});\r\ndata\r\n类型：String\r\n\r\n发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。查看 processData 选项说明以禁止此自动转换。必须为 Key/Value 格式。如果为数组，jQuery 将自动为不同值对应同一个名称。如 {foo:[\"bar1\", \"bar2\"]} 转换为 \'&foo=bar1&foo=bar2\'。\r\n\r\ndataFilter\r\n类型：Function\r\n\r\n给 Ajax 返回的原始数据的进行预处理的函数。提供 data 和 type 两个参数：data 是 Ajax 返回的原始数据，type 是调用 jQuery.ajax 时提供的 dataType 参数。函数返回的值将由 jQuery 进一步处理。\r\n\r\ndataType\r\n类型：String\r\n\r\n预期服务器返回的数据类型。如果不指定，jQuery 将自动根据 HTTP 包 MIME 信息来智能判断，比如 XML MIME 类型就被识别为 XML。在 1.4 中，JSON 就会生成一个 JavaScript 对象，而 script 则会执行这个脚本。随后服务器端返回的数据会根据这个值解析后，传递给回调函数。可用值:\r\n\r\n\"xml\": 返回 XML 文档，可用 jQuery 处理。\r\n\"html\": 返回纯文本 HTML 信息；包含的 script 标签会在插入 dom 时执行。\r\n\"script\": 返回纯文本 JavaScript 代码。不会自动缓存结果。除非设置了 \"cache\" 参数。注意：在远程请求时(不在同一个域下)，所有 POST 请求都将转为 GET 请求。（因为将使用 DOM 的 script标签来加载）\r\n\"json\": 返回 JSON 数据 。\r\n\"jsonp\": JSONP 格式。使用 JSONP 形式调用函数时，如 \"myurl?callback=?\" jQuery 将自动替换 ? 为正确的函数名，以执行回调函数。\r\n\"text\": 返回纯文本字符串\r\nerror\r\n类型：Function\r\n\r\n默认值: 自动判断 (xml 或 html)。请求失败时调用此函数。\r\n\r\n有以下三个参数：XMLHttpRequest 对象、错误信息、（可选）捕获的异常对象。\r\n\r\n如果发生了错误，错误信息（第二个参数）除了得到 null 之外，还可能是 \"timeout\", \"error\", \"notmodified\" 和 \"parsererror\"。\r\n\r\n这是一个 Ajax 事件。\r\n\r\nglobal\r\n类型：Boolean\r\n\r\n是否触发全局 AJAX 事件。默认值: true。设置为 false 将不会触发全局 AJAX 事件，如 ajaxStart 或 ajaxStop 可用于控制不同的 Ajax 事件。\r\n\r\nifModified\r\n类型：Boolean\r\n\r\n仅在服务器数据改变时获取新数据。默认值: false。使用 HTTP 包 Last-Modified 头信息判断。在 jQuery 1.4 中，它也会检查服务器指定的 \'etag\' 来确定数据没有被修改过。\r\n\r\njsonp\r\n类型：String\r\n\r\n在一个 jsonp 请求中重写回调函数的名字。这个值用来替代在 \"callback=?\" 这种 GET 或 POST 请求中 URL 参数里的 \"callback\" 部分，比如 {jsonp:\'onJsonPLoad\'} 会导致将 \"onJsonPLoad=?\" 传给服务器。\r\n\r\njsonpCallback\r\n类型：String\r\n\r\n为 jsonp 请求指定一个回调函数名。这个值将用来取代 jQuery 自动生成的随机函数名。这主要用来让 jQuery 生成度独特的函数名，这样管理请求更容易，也能方便地提供回调函数和错误处理。你也可以在想让浏览器缓存 GET 请求的时候，指定这个回调函数名。\r\n\r\npassword\r\n类型：String\r\n\r\n用于响应 HTTP 访问认证请求的密码\r\n\r\nprocessData\r\n类型：Boolean\r\n\r\n默认值: true。默认情况下，通过data选项传递进来的数据，如果是一个对象(技术上讲只要不是字符串)，都会处理转化成一个查询字符串，以配合默认内容类型 \"application/x-www-form-urlencoded\"。如果要发送 DOM 树信息或其它不希望转换的信息，请设置为 false。\r\n\r\nscriptCharset\r\n类型：String\r\n\r\n只有当请求时 dataType 为 \"jsonp\" 或 \"script\"，并且 type 是 \"GET\" 才会用于强制修改 charset。通常只在本地和远程的内容编码不同时使用。\r\n\r\nsuccess\r\n类型：Function\r\n\r\n请求成功后的回调函数。\r\n\r\n参数：由服务器返回，并根据 dataType 参数进行处理后的数据；描述状态的字符串。\r\n\r\n这是一个 Ajax 事件。\r\n\r\ntraditional\r\n类型：Boolean\r\n\r\n如果你想要用传统的方式来序列化数据，那么就设置为 true。请参考工具分类下面的 jQuery.param 方法。\r\n\r\ntimeout\r\n类型：Number\r\n\r\n设置请求超时时间（毫秒）。此设置将覆盖全局设置。\r\n\r\ntype\r\n类型：String\r\n\r\n默认值: \"GET\")。请求方式 (\"POST\" 或 \"GET\")， 默认为 \"GET\"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。\r\n\r\nurl\r\n类型：String\r\n\r\n默认值: 当前页地址。发送请求的地址。\r\n\r\nusername\r\n类型：String\r\n\r\n用于响应 HTTP 访问认证请求的用户名。\r\n\r\nxhr\r\n类型：Function\r\n\r\n需要返回一个 XMLHttpRequest 对象。默认在 IE 下是 ActiveXObject 而其他情况下是 XMLHttpRequest 。用于重写或者提供一个增强的 XMLHttpRequest 对象。这个参数在 jQuery 1.3 以前不可用。\r\n\r\n回调函数\r\n如果要处理 $.ajax() 得到的数据，则需要使用回调函数：beforeSend、error、dataFilter、success、complete。\r\n\r\nbeforeSend\r\n在发送请求之前调用，并且传入一个 XMLHttpRequest 作为参数。\r\n\r\nerror\r\n在请求出错时调用。传入 XMLHttpRequest 对象，描述错误类型的字符串以及一个异常对象（如果有的话）\r\n\r\ndataFilter\r\n在请求成功之后调用。传入返回的数据以及 \"dataType\" 参数的值。并且必须返回新的数据（可能是处理过的）传递给 success 回调函数。\r\n\r\nsuccess\r\n当请求之后调用。传入返回后的数据，以及包含成功代码的字符串。\r\n\r\ncomplete\r\n当请求完成之后调用这个函数，无论成功或失败。传入 XMLHttpRequest 对象，以及一个包含成功或错误代码的字符串。\r\n\r\n数据类型\r\n$.ajax() 函数依赖服务器提供的信息来处理返回的数据。如果服务器报告说返回的数据是 XML，那么返回的结果就可以用普通的 XML 方法或者 jQuery 的选择器来遍历。如果见得到其他类型，比如 HTML，则数据就以文本形式来对待。\r\n\r\n通过 dataType 选项还可以指定其他不同数据处理方式。除了单纯的 XML，还可以指定 html、json、jsonp、script 或者 text。\r\n\r\n其中，text 和 xml 类型返回的数据不会经过处理。数据仅仅简单的将 XMLHttpRequest 的 responseText 或 responseHTML 属性传递给 success 回调函数。\r\n\r\n注意：我们必须确保网页服务器报告的 MIME 类型与我们选择的 dataType 所匹配。比如说，XML的话，服务器端就必须声明 text/xml 或者 application/xml 来获得一致的结果。\r\n\r\n如果指定为 html 类型，任何内嵌的 JavaScript 都会在 HTML 作为一个字符串返回之前执行。类似地，指定 script 类型的话，也会先执行服务器端生成 JavaScript，然后再把脚本作为一个文本数据返回。\r\n\r\n如果指定为 json 类型，则会把获取到的数据作为一个 JavaScript 对象来解析，并且把构建好的对象作为结果返回。为了实现这个目的，它首先尝试使用 JSON.parse()。如果浏览器不支持，则使用一个函数来构建。\r\n\r\nJSON 数据是一种能很方便通过 JavaScript 解析的结构化数据。如果获取的数据文件存放在远程服务器上（域名不同，也就是跨域获取数据），则需要使用 jsonp 类型。使用这种类型的话，会创建一个查询字符串参数 callback=? ，这个参数会加在请求的 URL 后面。服务器端应当在 JSON 数据前加上回调函数名，以便完成一个有效的 JSONP 请求。如果要指定回调函数的参数名来取代默认的 callback，可以通过设置 $.ajax() 的 jsonp 参数。\r\n\r\n注意：JSONP 是 JSON 格式的扩展。它要求一些服务器端的代码来检测并处理查询字符串参数。\r\n\r\n如果指定了 script 或者 jsonp 类型，那么当从服务器接收到数据时，实际上是用了 <script> 标签而不是 XMLHttpRequest 对象。这种情况下，$.ajax() 不再返回一个 XMLHttpRequest 对象，并且也不会传递事件处理函数，比如 beforeSend。\r\n\r\n发送数据到服务器\r\n默认情况下，Ajax 请求使用 GET 方法。如果要使用 POST 方法，可以设定 type 参数值。这个选项也会影响 data 选项中的内容如何发送到服务器。\r\n\r\ndata 选项既可以包含一个查询字符串，比如 key1=value1&key2=value2 ，也可以是一个映射，比如 {key1: \'value1\', key2: \'value2\'} 。如果使用了后者的形式，则数据再发送器会被转换成查询字符串。这个处理过程也可以通过设置 processData 选项为 false 来回避。如果我们希望发送一个 XML 对象给服务器时，这种处理可能并不合适。并且在这种情况下，我们也应当改变 contentType 选项的值，用其他合适的 MIME 类型来取代默认的 application/x-www-form-urlencoded 。\r\n\r\n高级选项\r\nglobal 选项用于阻止响应注册的回调函数，比如 .ajaxSend，或者 ajaxError，以及类似的方法。这在有些时候很有用，比如发送的请求非常频繁且简短的时候，就可以在 ajaxSend 里禁用这个。\r\n\r\n如果服务器需要 HTTP 认证，可以使用用户名和密码可以通过 username 和 password 选项来设置。\r\n\r\nAjax 请求是限时的，所以错误警告被捕获并处理后，可以用来提升用户体验。请求超时这个参数通常就保留其默认值，要不就通过 jQuery.ajaxSetup 来全局设定，很少为特定的请求重新设置 timeout 选项。\r\n\r\n默认情况下，请求总会被发出去，但浏览器有可能从它的缓存中调取数据。要禁止使用缓存的结果，可以设置 cache 参数为 false。如果希望判断数据自从上次请求后没有更改过就报告出错的话，可以设置 ifModified 为 true。\r\n\r\nscriptCharset 允许给 <script> 标签的请求设定一个特定的字符集，用于 script 或者 jsonp 类似的数据。当脚本和页面字符集不同时，这特别好用。\r\n\r\nAjax 的第一个字母是 asynchronous 的开头字母，这意味着所有的操作都是并行的，完成的顺序没有前后关系。$.ajax() 的 async 参数总是设置成true，这标志着在请求开始后，其他代码依然能够执行。强烈不建议把这个选项设置成 false，这意味着所有的请求都不再是异步的了，这也会导致浏览器被锁死。\r\n\r\n$.ajax 函数返回它创建的 XMLHttpRequest 对象。通常 jQuery 只在内部处理并创建这个对象，但用户也可以通过 xhr 选项来传递一个自己创建的 xhr 对象。返回的对象通常已经被丢弃了，但依然提供一个底层接口来观察和操控请求。比如说，调用对象上的 .abort() 可以在请求完成前挂起请求。', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('51', '1', '一篇很实在的文章', '6', '\r\n转载自韩天峰博客\r\n\r\n看到很多PHP程序员职业规划的文章，都是直接上来就提Linux、PHP、MySQL、Nginx、Redis、Memcache、jQuery这些，然后就直接上手搭环境、做项目，中级就是学习各种PHP框架和类库，高级阶段就是MySQL优化、PHP内核与扩展、架构设计这些了。\r\n\r\n这些文章都存在一个严重的缺陷，不重视基础。就好比练武功，只求速成，不修炼内功和心法，只练各种招式，这样能高到哪里去？我所见过的PHP大牛每一个都是具备非常扎实的基础，他们之所以能成为大牛，是因为基础足够好。基础不稳，面对技术复杂的系统，如同盲人摸象、管中窥豹，只得其门不得其法。而且如果基础不扎实，也没办法进入大公司。国外的Google、Facebook，国内的腾讯、阿里、百度、滴滴、京东、新浪等知名互联网企业，无论哪一家公司面试必然会考验应聘者的技术功底。无法进入一个拥有大规模并发请求的项目中得到历练，不坚持提升自己，那也只能在小公司混日子了。\r\n\r\n我最开始工作也是在2家小公司，后来加入腾讯阿里，主要原因还是我坚持学习基础知识，从而得倒了这个机会。有几个方面的基础知识，我建议每一位PHP程序员都应该好好学习一下。我推荐几本书给大家，包括深入理解计算机系统、现代操作系统、C程序设计语言、C语言数据结构和算法、Unix环境高级编程、TCP/IP网络通信详解。另外我建议大家学习一下面向对象方面知识，PHP这方面的书不太多，建议看Java面向对象编程、Java编程思想、J2EE这些书。PHP语言基础方面，建议认真地把PHP5权威编程这本书好好读完。另外不光要读，还要照着书中的讲解动手去编程实践。\r\n\r\n总之有一个好的基础，再去学LAMP、Redis、PHP框架、前端，这样取得的成就更大。这与年龄无关、与学历无关、与智力无关，与天赋也无关。只要肯努力学习，人人可以成为技术大牛。', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('52', '1', 'Masked arrays must be 1-D', '1', '使用.scatter方法绘制散点图\r\n报错\r\nMasked arrays must be 1-D\r\n解决方法\r\nplt.scatter([dataMat[0]],[dataMat[1]])\r\n\r\n再dataMat[0]外加个[]即可', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('53', '1', '教你一步一步搭建永久免费https', '6', '<blockquote>\r\n<p style=\"text-align: left;\"><strong>此教程仅适用于windows系统的服务器</strong></p>\r\n首先需要下载这个软件\r\n\r\n<a href=\"http://test.mymyjd.cn/ssl.rar\">点我下载</a>\r\n\r\n下载好后，解压然后运行软件\r\n\r\n出现如下页面\r\n\r\n<a href=\"http://www.mymyjd.cn/wordp1/2018/04/03/%e6%95%99%e4%bd%a0%e4%b8%80%e6%ad%a5%e4%b8%80%e6%ad%a5%e6%90%ad%e5%bb%ba%e6%b0%b8%e4%b9%85%e5%85%8d%e8%b4%b9https/attachment/001/\" rel=\"attachment wp-att-284\"><img class=\"alignnone size-full wp-image-284\" src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2018/04/001.jpg\" alt=\"\" width=\"825\" height=\"248\" /></a>\r\n\r\n输入n 回车\r\n\r\n&nbsp;\r\n\r\n假设你的域名为test.mymyjd.cn\r\n\r\n按照图示输入即可\r\n\r\n<a href=\"http://www.mymyjd.cn/wordp1/2018/04/03/%e6%95%99%e4%bd%a0%e4%b8%80%e6%ad%a5%e4%b8%80%e6%ad%a5%e6%90%ad%e5%bb%ba%e6%b0%b8%e4%b9%85%e5%85%8d%e8%b4%b9https/attachment/0440/\" rel=\"attachment wp-att-292\"><img class=\"alignnone size-full wp-image-292\" src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2018/04/0440.jpg\" alt=\"\" width=\"800\" height=\"418\" /></a>\r\n\r\n<a href=\"http://www.mymyjd.cn/wordp1/2018/04/03/%e6%95%99%e4%bd%a0%e4%b8%80%e6%ad%a5%e4%b8%80%e6%ad%a5%e6%90%ad%e5%bb%ba%e6%b0%b8%e4%b9%85%e5%85%8d%e8%b4%b9https/attachment/201852/\" rel=\"attachment wp-att-290\"><img class=\"alignnone size-full wp-image-290\" src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2018/04/201852.jpg\" alt=\"\" width=\"804\" height=\"503\" /></a>\r\n\r\n看到下面的界面说明证书颁发成功\r\n\r\n<a href=\"http://www.mymyjd.cn/wordp1/2018/04/03/%e6%95%99%e4%bd%a0%e4%b8%80%e6%ad%a5%e4%b8%80%e6%ad%a5%e6%90%ad%e5%bb%ba%e6%b0%b8%e4%b9%85%e5%85%8d%e8%b4%b9https/attachment/002/\" rel=\"attachment wp-att-286\"><img class=\"alignnone size-full wp-image-286\" src=\"http://www.mymyjd.cn/wordp1/wp-content/uploads/2018/04/002.jpg\" alt=\"\" width=\"824\" height=\"295\" /></a>\r\n\r\n上图username 输入电脑的管理员名字\r\n\r\npassword 输入电脑的登录密码即可\r\n\r\n至此https搭建完成\r\n\r\n在浏览器输入https:test.mymyjd.cn 即可看到效果浏览器提示安全加锁\r\n\r\n如果浏览器依旧显示不安全，请关闭浏览器重新打开即可</blockquote>', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('54', '1', 'PDO drivers no value 或者是could not find driver 解决方法', '6', '第一步，确保你已经去掉了php.ini中 <strong>extension=php_pdo_mysql.dll前面的“；”</strong>\r\n\r\n第二步，确保php.ini中 添加了extension_dir = \"D:/php/ext\" D:/php为你的php路径，并且ext文件夹下存在php_pdo_mysql.dll\r\n\r\n如果上面都没有问题，那就是你apache配置文件有问题了\r\n\r\n检查httpd.conf 中是否有PHPIniDir 配置\r\n\r\n如果有检查路径是否正确（路径应该填写php.ini所在的路径）\r\n\r\n如果没有\r\n\r\n在apache配置文件httpd.conf 中添加一行PHP路径\r\n<blockquote>PHPIniDir \"D:/php\"</blockquote>', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('55', '1', '在linux中安装lamp时遇到 “failed to open stream: Permission denied”或者是mkdir() ：Permission denied 的解决方法', '6', '首先报这个错误的意思是权限不够\r\n\r\n第一步尝试修改目录的权限\r\n\r\nchmod -R 777  目录名\r\n\r\n如果这样不行的话\r\n\r\n设置这个selinux\r\n\r\n命令如下\r\n\r\nsetenforce<span style=\"color: #ff0000;\"> 0</span>\r\n\r\n注意红色为数字零\r\n\r\n记得每次重启httpd服务\r\n\r\n这样应该可以解决此类已经给予权限仍然报错权限不足的问题\r\n\r\n参照这个<a href=\"http://www.it610.com/article/5323876.htm\">博客</a>', '1', '0', '0', null, null, '0.00', '1535622122', '1535622122');
INSERT INTO `blue_post` VALUES ('56', '1', 'ffplay用法', '7', 'FFmpeg\r\n\r\nFFmpeg 基本用法\r\n\r\n本课要解决的问题\r\n\r\n1.FFmpeg的转码流程是什么？\r\n\r\n2.常见的视频格式包含哪些内容吗？\r\n\r\n3.如何把这些内容从视频文件中抽取出来？\r\n\r\n4.如何从一种格式转换为另一种格式？\r\n\r\n5.如何放大和缩小视频？\r\n\r\n6.如何旋转，翻转，填充，裁剪，模糊，锐化视频？\r\n\r\n7.如何给视频加logo，删除logo？\r\n\r\n8.如何给视频加文本，动态文本？\r\n\r\n9.如何处理图片？\r\n\r\n10.如何录像，添加动态logo，截图，马赛克视频？\r\n\r\n第一部分\r\n\r\n基础\r\n\r\n术语\r\n\r\n容器(Container)\r\n\r\n容器就是一种文件格式，比如flv，mkv等。包含下面5种流以及文件头信息。\r\n\r\n流(Stream)\r\n\r\n是一种视频数据信息的传输方式，5种流：音频，视频，字幕，附件，数据。\r\n\r\n帧(Frame)\r\n\r\n帧代表一幅静止的图像，分为I帧，P帧，B帧。\r\n\r\n编解码器(Codec)\r\n\r\n是对视频进行压缩或者解压缩，CODEC =COde （编码） +DECode（解码）\r\n\r\n复用/解复用(mux/demux)\r\n\r\n把不同的流按照某种容器的规则放入容器，这种行为叫做复用（mux）\r\n\r\n把不同的流从某种容器中解析出来，这种行为叫做解复用(demux)\r\n\r\n简介\r\n\r\nFFmpeg的名称来自MPEG视频编码标准，前面的“FF”代表“Fast Forward”，FFmpeg是一套可以用来记录、转换数字音频、视频，并能将其转化为流的开源计算机程序。可以轻易地实现多种视频格式之间的相互转换。\r\n\r\nFFmpeg的用户有Google，Facebook，Youtube，优酷，爱奇艺，土豆等。\r\n\r\n组成\r\n\r\n1、libavformat：用于各种音视频封装格式的生成和解析，包括获取解码所需信息以生成解码上下文结构和读取音视频帧等功能，包含demuxers和muxer库；\r\n\r\n2、libavcodec：用于各种类型声音/图像编解码；\r\n\r\n3、libavutil：包含一些公共的工具函数；\r\n\r\n4、libswscale：用于视频场景比例缩放、色彩映射转换；\r\n\r\n5、libpostproc：用于后期效果处理；\r\n\r\n6、ffmpeg：是一个命令行工具，用来对视频文件转换格式，也支持对电视卡实时编码；\r\n\r\n7、ffsever：是一个HTTP多媒体实时广播流服务器，支持时光平移；\r\n\r\n8、ffplay：是一个简单的播放器，使用ffmpeg 库解析和解码，通过SDL显示；\r\n\r\nFFmpeg处理流程\r\n\r\n过滤器(Filter)\r\n\r\n在多媒体处理中，filter的意思是被编码到输出文件之前用来修改输入文件内容的一个软件工具。如：视频翻转，旋转，缩放等。\r\n\r\n语法：[input_link_label1][input_link_label2]… filter_name=parameters [output_link_label1][output_link_label2]…\r\n\r\n过滤器图link label ：是标记过滤器的输入或输出的名称\r\n\r\n1.视频过滤器 -vf\r\n\r\n如testsrc视频按顺时针方向旋转90度\r\n\r\nffplay -f lavfi -i testsrc -vf transpose=1\r\n\r\n如testsrc视频水平翻转(左右翻转)\r\n\r\nffplay -f lavfi -i testsrc -vf hflip\r\n\r\n2.音频过滤器 -af\r\n\r\n实现慢速播放，声音速度是原始速度的50%\r\n\r\nffplay p629100.mp3 -af atempo=0.5\r\n\r\n如何实现顺时针旋转90度并水平翻转？\r\n\r\n过滤器链（Filterchain）\r\n\r\n基本语法\r\n\r\nFilterchain = 逗号分隔的一组filter\r\n\r\n语法：“filter1,filter2,filter3,…filterN-2,filterN-1,filterN”\r\n\r\n顺时针旋转90度并水平翻转\r\n\r\nffplay -f lavfi -i testsrc -vf transpose=1,hflip\r\n\r\n如何实现水平翻转视频和源视频进行比较？ 看过滤器链是如何实现的。\r\n\r\n过滤器链（Filterchain）\r\n\r\n第一步： 源视频宽度扩大两倍。\r\n\r\nffmpeg -i jidu.mp4 -t 10 -vf pad=2*iw output.mp4\r\n\r\n第二步：源视频水平翻转\r\n\r\nffmpeg -i jidu.mp4 -t 10 -vf hflip output2.mp4\r\n\r\n第三步：水平翻转视频覆盖output.mp4\r\n\r\nffmpeg -i output.mp4 -i output2.mp4 -filter_complex overlay=w compare.mp4\r\n\r\n是不是很复杂？\r\n\r\n用带有链接标记的过滤器图(Filtergraph)只需一条命令。\r\n\r\n过滤器图（Filtergraph）\r\n\r\n基本语法\r\n\r\nFiltergraph = 分号分隔的一组filterchain\r\n\r\n“filterchain1;filterchain2;…filterchainN-1;filterchainN”\r\n\r\nFiltergraph的分类\r\n\r\n1、简单(simple) 一对一\r\n\r\n2、复杂(complex）多对一， 多对多\r\n\r\n过滤器图（Filtergraph）\r\n\r\n简单过滤器图处理流程：\r\n\r\n复杂过滤器图处理流程：\r\n\r\n从图中可以发现复杂过滤器图比简单过滤器图少2个步骤，效率比简单高，ffmpeg建议尽量使用复杂过滤器图。\r\n\r\n回答上面提的问题，实现水平翻转视频和源视频进行比较\r\n\r\n过滤器图（Filtergraph）\r\n\r\n用ffplay直接观看结果：\r\n\r\nffplay -f lavfi -i testsrc -vf split[a][b];[a]pad=2*iw[1];[b]hflip[2];[1][2]overlay=w\r\n\r\nF1: split过滤器创建两个输入文件的拷贝并标记为[a],[b]\r\n\r\nF2: [a]作为pad过滤器的输入，pad过滤器产生2倍宽度并输出到[1].\r\n\r\nF3: [b]作为hflip过滤器的输入，vflip过滤器水平翻转视频并输出到[2].\r\n\r\nF4: 用overlay过滤器把 [2]覆盖到[1]的旁边.\r\n\r\n选择媒体流\r\n\r\n一些多媒体容器比如AVI，mkv，mp4等，可以包含不同种类的多个流，如何从容器中抽取各种流呢？\r\n\r\n语法：\r\n\r\n-map file_number:stream_type[:stream_number]\r\n\r\n这有一些特别流符号的说明：\r\n\r\n1、-map 0 选择第一个文件的所有流\r\n\r\n2、-map i:v 从文件序号i(index)中获取所有视频流， -map i:a 获取所有音频流，-map i:s 获取所有字幕流等等。\r\n\r\n3、特殊参数-an,-vn,-sn分别排除所有的音频，视频，字幕流。\r\n\r\n注意:文件序号和流序号从0开始计数。\r\n\r\n选择媒体流\r\n\r\n第二部分\r\n\r\n查看帮助\r\n\r\n帮助\r\n\r\nFFmpeg工具有一个巨大的控制台帮助。下表描述了可用的一些选项，斜体字表示要被替换的项，ffplay和ffprobe也有一些类似的选项。\r\n\r\n帮助\r\n\r\n可用的bit流 ：ffmpeg –bsfs\r\n\r\n可用的编解码器：ffmpeg –codecs\r\n\r\n可用的解码器：ffmpeg –decoders\r\n\r\n可用的编码器：ffmpeg –encoders\r\n\r\n可用的过滤器：ffmpeg –filters\r\n\r\n可用的视频格式：ffmpeg –formats\r\n\r\n可用的声道布局：ffmpeg –layouts\r\n\r\n可用的license：ffmpeg –L\r\n\r\n可用的像素格式：ffmpeg –pix_fmts\r\n\r\n可用的协议：ffmpeg -protocals\r\n\r\n第三部分\r\n\r\n码率、帧率和文件大小\r\n\r\n概述\r\n\r\n码率和帧率是视频文件的最重要的基本特征，对于他们的特有设置会决定视频质量。如果我们知道码率和时长那么可以很容易计算出输出文件的大小。\r\n\r\n帧率：帧率也叫帧频率，帧率是视频文件中每一秒的帧数，肉眼想看到连续移动图像至少需要15帧。\r\n\r\n码率：比特率(也叫码率，数据率)是一个确定整体视频/音频质量的参数，秒为单位处理的字节数，码率和视频质量成正比，在视频文件中中比特率用bps来表达。\r\n\r\n帧率\r\n\r\n1、用 -r 参数设置帧率\r\n\r\nffmpeg –i input –r fps output\r\n\r\n2、用fps filter设置帧率\r\n\r\nffmpeg -i clip.mpg -vf fps=fps=25 clip.webm\r\n\r\n帧率的预定义值：\r\n\r\n例如设置码率为29.97fps，下面三种方式具有相同的结果：\r\n\r\nffmpeg -i input.avi -r 29.97 output.mpg\r\n\r\nffmpeg -i input.avi -r 30000/1001 output.mpg\r\n\r\nffmpeg -i input.avi -r netsc output.mpg\r\n\r\n码率、文件大小\r\n\r\n设置码率 –b 参数\r\n\r\n-b\r\n\r\nffmpeg -i film.avi -b 1.5M film.mp4\r\n\r\n音频：-b:a 视频： - b:v\r\n\r\n设置视频码率为1500kbps\r\n\r\nffmpeg -i input.avi -b:v 1500k output.mp4\r\n\r\n控制输出文件大小\r\n\r\n-fs (file size首字母缩写)\r\n\r\nffmpeg -i input.avi -fs 1024K output.mp4\r\n\r\n计算输出文件大小\r\n\r\n(视频码率+音频码率) * 时长 /8 = 文件大小K\r\n\r\n第四部分\r\n\r\n调整视频分辨率\r\n\r\n调整视频分辨率\r\n\r\n1、用-s参数设置视频分辨率，参数值wxh，w宽度单位是像素，h高度单位是像素\r\n\r\nffmpeg -i input_file -s 320x240 output_file\r\n\r\n2、预定义的视频尺寸\r\n\r\n下面两条命令有相同效果\r\n\r\nffmpeg -i input.avi -s 640x480 output.avi\r\n\r\nffmpeg -i input.avi -s vga output.avi\r\n\r\n下表列出了所有的预定义尺寸\r\n\r\nScale filter调整分辨率\r\n\r\nScale filter的优点是可以使用一些额外的参数\r\n\r\n语法：\r\n\r\nScale=width:height[:interl={1|-1}]\r\n\r\n下表列出了常用的额外参数\r\n\r\n举例\r\n\r\n下面两条命令有相同效果\r\n\r\nffmpeg -i input.mpg -s 320x240 output.mp4\r\n\r\nffmpeg -i input.mpg -vf scale=320:240 output.mp4\r\n\r\n对输入视频成比例缩放\r\n\r\n改变为源视频一半大小\r\n\r\nffmpeg -i input.mpg -vf scale=iw/2:ih/2 output.mp4\r\n\r\n改变为原视频的90%大小：\r\n\r\nffmpeg -i input.mpg -vf scale=iw*0.9:ih*0.9 output.mp4\r\n\r\n举例\r\n\r\n在未知视频的分辨率时，保证调整的分辨率与源视频有相同的横纵比。\r\n\r\n宽度固定400，高度成比例：\r\n\r\nffmpeg -i input.avi -vf scale=400:400/a\r\n\r\nffmpeg -i input.avi -vf scale=400:-1\r\n\r\n相反地，高度固定300，宽度成比例：\r\n\r\nffmpeg -i input.avi -vf scale=-1:300\r\n\r\nffmpeg -i input.avi -vf scale=300*a:300\r\n\r\n第五部分\r\n\r\n裁剪/填充视频\r\n\r\n裁剪视频crop filter\r\n\r\n从输入文件中选取你想要的矩形区域到输出文件中,常见用来去视频黑边。\r\n\r\n语法：crop:ow[:oh[:x[:y:[:keep_aspect]]]]\r\n\r\n举例\r\n\r\n裁剪输入视频的左三分之一，中间三分之一，右三分之一:\r\n\r\nffmpeg -i input -vf crop=iw/3:ih :0:0 output\r\n\r\nffmpeg -i input -vf crop=iw/3:ih :iw/3:0 output\r\n\r\nffmpeg -i input -vf crop=iw/3:ih :iw/3*2:0 output\r\n\r\n裁剪帧的中心\r\n\r\n当我们想裁剪区域在帧的中间时，裁剪filter可以跳过输入x和y值，他们的默认值是\r\n\r\nXdefault = ( input width - output width)/2\r\n\r\nYdefault = ( input height - output height)/2\r\n\r\nffmpeg -i input_file -v crop=w:h output_file\r\n\r\n裁剪中间一半区域：\r\n\r\nffmpeg -i input.avi -vf crop=iw/2:ih/2 output.avi\r\n\r\n举例\r\n\r\n比较裁剪后的视频和源视频比较\r\n\r\nffplay -i jidu.mp4 -vf split[a][b];[a]drawbox=x=(iw-300)/2:(ih-300)/2:w=300:h=300:c=yellow[A];[A]pad=2*iw[C];[b]crop=300:300:(iw-300)/2:(ih-300)/2[B];[C][B]overlay=w*2.4:40\r\n\r\n自动检测裁剪区域\r\n\r\ncropdetect filter 自动检测黑边区域\r\n\r\nffplay jidu.mp4 -vf cropdetect\r\n\r\n然后用检测到的值来裁剪视频\r\n\r\nffplay jidu.mp4 –vf crop=672:272:0:54\r\n\r\n填充视频(pad)\r\n\r\n在视频帧上增加一快额外额区域，经常用在播放的时候显示不同的横纵比\r\n\r\n语法：pad=width[:height:[:x[:y:[:color]]]]\r\n\r\n举例\r\n\r\n创建一个30个像素的粉色宽度来包围一个SVGA尺寸的图片：\r\n\r\nffmpeg -i photo.jpg -vf pad=860:660:30:30:pink framed_photo.jpg\r\n\r\n?\r\n\r\n同理可以制作testsrc视频用30个像素粉色包围视频\r\n\r\nffplay -f lavfi -i testsrc -vf pad=iw+60:ih+60:30:30:pink\r\n\r\n4:3到16:9\r\n\r\n一些设备只能播放16:9的横纵比，4:3的横纵比必须在水平方向的两边填充成16:9，\r\n\r\n高度被保持，宽度等于高度乘以16/9，x（输入文件水平位移）值由表达式(output_width - input_width)/2来计算。\r\n\r\n4：3到16:9的通用命令是：\r\n\r\nffmpeg -i input -vf pad=ih*16/9:ih :(ow-iw)/2:0:color output\r\n\r\n举例\r\n\r\nffplay -f lavfi -i testsrc -vf pad=ih*16/9:ih:(ow-iw)/2:0:pink\r\n\r\n16:9到4:3\r\n\r\n为了用4:3的横纵比来显示16:9的横纵比，填充输入文件的垂直两边，宽度保持不变，高度是宽度的3/4，y值（输入文件的垂直偏移量）是由一个表达式（output_height-input_height）/2计算出来的。\r\n\r\n16:9到4:3的通用命令：\r\n\r\nffmpeg -i input -vf pad=iw :iw*3/4:0:(oh-ih)/2:color output\r\n\r\n举例\r\n\r\nffplay -f lavfi -i testsrc=size=320x180 -vf pad=iw:iw*3/4:0:(oh-ih)/2:pink\r\n\r\n第六部分\r\n\r\n翻转和旋转\r\n\r\n翻转\r\n\r\n水平翻转语法: -vf hflip\r\n\r\nffplay -f lavfi -i testsrc -vf hflip\r\n\r\n垂直翻转语法：-vf vflip\r\n\r\nffplay -f lavfi -i testsrc -vf vflip\r\n\r\n旋转\r\n\r\n语法：transpose={0,1,2,3}\r\n\r\n0:逆时针旋转90°然后垂直翻转\r\n\r\n1:顺时针旋转90°\r\n\r\n2:逆时针旋转90°\r\n\r\n3:顺时针旋转90°然后水平翻转\r\n\r\n第七部分\r\n\r\n模糊，锐化\r\n\r\n模糊\r\n\r\n语法：boxblur=luma_r:luma_p[:chroma_r:chram_p[:alpha_r:alpha_p]]\r\n\r\nffplay -f lavfi -i testsrc -vf boxblur=1:10:4:10\r\n\r\n注意：luma_r和alpha_r半径取值范围是0~min(w,h)/2, chroma_r半径的取值范围是0~min(cw/ch)/2\r\n\r\n锐化\r\n\r\n语法：-vf unsharp=l_msize_x:l_msize_y:l_amount:c_msize_x:c_msize_y:c_amount\r\n\r\n所有的参数是可选的，默认值是5:5:1.0:5:5:0.0\r\n\r\nl_msize_x:水平亮度矩阵，取值范围3-13，默认值为5\r\n\r\nl_msize_y:垂直亮度矩阵，取值范围3-13，默认值为5\r\n\r\nl_amount:亮度强度，取值范围-2.0-5.0，负数为模糊效果，默认值1.0\r\n\r\nc_msize_x:水平色彩矩阵，取值范围3-13，默认值5\r\n\r\nc_msize_y:垂直色彩矩阵，取值范围3-13，默认值5\r\n\r\nc_amount:色彩强度，取值范围-2.0-5.0，负数为模糊效果，默认值0.0\r\n\r\n举例\r\n\r\n使用默认值，亮度矩阵为5x5和亮度值为1.0\r\n\r\nffmpeg -i input -vf unsharp output.mp4\r\n\r\n高斯模糊效果(比较强的模糊)：\r\n\r\nffplay -f lavfi -i testsrc -vf unsharp=13:13:-2\r\n\r\n第八部分\r\n\r\n覆盖（画中画）\r\n\r\n覆盖\r\n\r\n语法：overlay[=x[:y]\r\n\r\n所有的参数都是可选，默认值都是0\r\n\r\n举例\r\n\r\nLogo在左上角\r\n\r\nffmpeg -i pair.mp4 -i logo.png -filter_complex overlay pair1.mp4\r\n\r\n举例\r\n\r\n右上角：\r\n\r\nffmpeg -i pair.mp4 -i logo.png -filter_complex overlay=W-w pair2.mp4\r\n\r\n左下角：\r\n\r\nffmpeg -i pair.mp4 -i logo.png -filter_complex overlay=0:H-h pair2.mp4\r\n\r\n右下角：\r\n\r\nffmpeg -i pair.mp4 -i logo.png -filter_complex overlay=W-w:H-h pair2.mp4\r\n\r\n删除logo\r\n\r\n语法：-vf delogo=x:y:w:h[:t[:show]]\r\n\r\nx:y 离左上角的坐标\r\n\r\nw:h logo的宽和高\r\n\r\nt: 矩形边缘的厚度默认值4\r\n\r\nshow：若设置为1有一个绿色的矩形，默认值0.\r\n\r\nffplay -i jidu.mp4 -vf delogo=50:51:60:60:100:0\r\n\r\n第九部分\r\n\r\n添加文本\r\n\r\n添加文本\r\n\r\n语法：\r\n\r\ndrawtext=fontfile=font_f:text=text1[:p3=v3[:p4=v4[…]]]\r\n\r\n常用的参数值\r\n\r\nx：离左上角的横坐标\r\n\r\ny: 离左上角的纵坐标\r\n\r\nfontcolor：字体颜色\r\n\r\nfontsize：字体大小\r\n\r\ntext:文本内容\r\n\r\ntextfile:文本文件\r\n\r\nt：时间戳，单位秒\r\n\r\nn:帧数开始位置为0\r\n\r\ndraw/enable:控制文件显示，若值为0不显示，1显示，可以使用函数\r\n\r\n简单用法\r\n\r\n1、在左上角添加Welcome文字\r\n\r\nffplay -f lavfi -i color=c=white -vf drawtext=fontfile=arial.ttf:text=Welcom\r\n\r\n2、在中央添加Good day\r\n\r\nffplay -f lavfi -i color=c=white -vf drawtext=\"fontfile=arial.ttf:text=\'Goodday\':x=(w-tw)/2:y=(h-th)/2\"\r\n\r\n3、设置字体颜色和大小\r\n\r\nffplay -f lavfi -i color=c=white -vf drawtext=\"fontfile=arial.ttf:text=\'Happy Holidays\':x=(w-tw)/2:y=(h-th)/2:fontcolor=green:fontsize=30\"\r\n\r\n动态文本\r\n\r\n用 t (时间秒)变量实现动态文本\r\n\r\n1、顶部水平滚动\r\n\r\nffplay -i jidu.mp4 -vf drawtext=\"fontfile=arial.ttf:text=\'Dynamic RTL text\':x=w-t*50:fontcolor=darkorange:fontsize=30\"\r\n\r\n2、底部水平滚动\r\n\r\nffplay -i jidu.mp4 -vf drawtext=\"fontfile=arial.ttf:textfile=textfile.txt:x=w-t*50:y=h-th:fontcolor=darkorange:fontsize=30\"\r\n\r\n3、垂直从下往上滚动\r\n\r\nffplay jidu.mp4 -vf drawtext=\"textfile=textfile:fontfile=arial.ttf:x=(w-tw)/2:y=h-t*100:fontcolor=white:fontsize=30“\r\n\r\n想实现右上角显示当前时间？\r\n\r\n动态文本\r\n\r\n在右上角显示当前时间 localtime\r\n\r\nffplay jidu.mp4 -vf drawtext=\"fontfile=arial.ttf:x=w-tw:fontcolor=white:fontsize=30:text=\'%{localtime\\:%H\\\\\\:%M\\\\\\:%S}\'“\r\n\r\n每隔3秒显示一次当前时间\r\n\r\nffplay jidu.mp4 -vf drawtext=\"fontfile=arial.ttf:x=w-tw:fontcolor=white:fontsize=30:text=\'%{localtime\\:%H\\\\\\:%M\\\\\\:%S}\':enable=lt(mod(t\\,3)\\,1)\"\r\n\r\n第十部分\r\n\r\n图片处理\r\n\r\n图片支持\r\n\r\nFFmpeg支持绝大多数图片处理, 除LJPEG（无损JPEG）之外，其他都能被解码，除了EXR,PIC,PTX之外，所有的都能被编码。\r\n\r\n截取一张图片使用 –ss(seek from start)参数.\r\n\r\nffmpeg -ss 01:23:45 -i jidu.mp4 image.jpg\r\n\r\n从视频中生成GIF图片\r\n\r\nffmpeg -i jidu.mp4 -t 10 -pix_fmt rgb24 jidu.gif\r\n\r\n转换视频为图片（每帧一张图）\r\n\r\nffmpeg -i clip.avi frame%4d.jpg\r\n\r\n图片转换为视频\r\n\r\nffmpeg -f image2 -i img%4d.jpg -r 25 video.mp4\r\n\r\n裁剪、填充\r\n\r\n和视频一样，图片也可以被裁剪和填充\r\n\r\n裁剪\r\n\r\nffmpeg -f lavfi -i rgbtestsrc -vf crop=150:150 crop_rg.png\r\n\r\n填充\r\n\r\nffmpeg -f lavfi -i smptebars -vf pad=360:280:20:20:orange pad_smpte.jpg\r\n\r\n翻转，旋转，覆盖\r\n\r\n和视频一样图片同样能翻转，旋转和覆盖\r\n\r\n翻转\r\n\r\nffmpeg -i orange.jpg -vf hflip orange_hfilp.jpg\r\n\r\nffmpeg -i orange.jpg -vf vflip orange_vfilp.jpg\r\n\r\n旋转\r\n\r\nffmpeg -i image.png -vf transpose=1 image_rotated.png\r\n\r\n覆盖\r\n\r\nffmpeg -f lavfi -i rgbtestsrc -s 400x300 rgb .png\r\n\r\nffmpeg -f lavfi -i smptebars smpte.png\r\n\r\nffmpeg -i rgb .png -i smpte.png -filter_complex overlay= (W-w)/2:(H-h)/2 rgb_smpte.png\r\n\r\n第十一部分\r\n\r\n其他高级技巧\r\n\r\n屏幕录像\r\n\r\n显示设备名称\r\n\r\nffmpeg -list_devices 1 -f dshow -i dummy\r\n\r\n调用摄像头\r\n\r\nffplay -f dshow -i video=\"Integrated Camera\"\r\n\r\n保存为文件\r\n\r\nffmpeg -y -f dshow -s 320x240 -r 25 -i video=\"Integrated Camera\" -b:v 800K -vcodec mpeg4 new.mp4\r\n\r\n添加字幕subtitles\r\n\r\n语法 –vf subtitles=file\r\n\r\nffmpeg -i jidu.mp4 -vf subtitles=rgb.srt output.mp4\r\n\r\n视频颤抖、色彩平衡\r\n\r\n视频颤抖\r\n\r\nffplay –i jidu.mp4 -vf crop=in_w/2:in_h/2:(in_w-out_w)/2+((in_w-out_w)/2)*sin(n/10):(in_h-out_h)/2 +((in_h-out_h)/2)*sin(n/7)\r\n\r\n色彩平衡\r\n\r\nffplay -i jidu.mp4 -vf curves=vintage\r\n\r\n色彩变幻\r\n\r\nffplay -i jidu.mp4 -vf hue=\"H=2*PI*t: s=sin(2*PI*t)+1“\r\n\r\n彩色转换黑白\r\n\r\nffplay -i jidu.mp4 -vf lutyuv=\"u=128:v=128\"\r\n\r\n设置音频视频播放速度\r\n\r\n3倍视频播放视频\r\n\r\nffplay -i jidu.mp4 -vf setpts=PTS/3\r\n\r\n?速度播放视频\r\n\r\nffplay -i jidu.mp4 -vf setpts=PTS/(3/4)\r\n\r\n2倍速度播放音频\r\n\r\nffplay -i speech.mp3 -af atempo=2\r\n\r\n问题：视频和音频同时3/4慢速播放\r\n\r\n截图\r\n\r\n每隔一秒截一张图\r\n\r\nffmpeg -i input.flv -f image2 -vf fps=fps=1 out%d.png\r\n\r\n每隔20秒截一张图\r\n\r\nffmpeg -i input.flv -f image2 -vf fps=fps=1/20 out%d.png\r\n\r\n注意：ffmpeg version N-57961-gec8e68c版本最多可以每隔20s截一张图。\r\n\r\n多张截图合并到一个文件里（2x3） ?每隔一千帧(秒数=1000/fps25)即40s截一张图\r\n\r\nffmpeg? -i jidu.mp4 -frames 3 -vf \"select=not(mod(n\\,1000)),scale=320:240,tile=2x3\" out.png\r\n\r\n马赛克视频\r\n\r\n马赛克视频\r\n\r\n用多个输入文件创建一个马赛克视频：\r\n\r\nffmpeg -i jidu.mp4 -i jidu.flv -i \"Day By Day SBS.mp4\" -i \"Dangerous.mp4\" -filter_complex \"nullsrc=size=640x480 [base]; [0:v] setpts=PTS-STARTPTS, scale=320x240 [upperleft]; [1:v] setpts=PTS-STARTPTS, scale=320x240 [upperright]; [2:v] setpts=PTS-STARTPTS, scale=320x240 [lowerleft]; [3:v] setpts=PTS-STARTPTS, scale=320x240 [lowerright]; [base][upperleft] overlay=shortest=1 [tmp1]; [tmp1][upperright] overlay=shortest=1:x=320 [tmp2]; [tmp2][lowerleft] overlay=shortest=1:y=240 [tmp3]; [tmp3][lowerright] overlay=shortest=1:x=320:y=240\" -c:v libx264 output.mkv\r\n\r\nLogo动态移动\r\n\r\n1、2秒后logo从左到右移动：\r\n\r\nffplay -i jidu.mp4 -vf movie=logo.png[logo];[in][logo]overlay=x=\'if(gte(t\\,2)\\,((t-2)*80)-w\\,NAN)\':y=0\r\n\r\n2、2秒后logo从左到右移动后停止在左上角\r\n\r\nffplay -i jidu.mp4 -vf movie=logo.png[logo];[in][logo]overlay=x=\'if(gte(((t-2)*80)-w\\,W)\\,0\\,((t-2)*80)-w)\':y=0\r\n\r\n3、每隔10秒交替出现logo。\r\n\r\nffmpeg -y -t 60 -i jidu.mp4 -i logo.png -i logo2.png -filter_complex \"overlay=x=if(lt(mod(t\\,20)\\,10)\\,10\\,NAN ):y=10,overlay=x=if(gt(mod(t\\,20)\\,10)\\,W-w-10\\,NAN ) :y=10\" overlay.mp4\r\n\r\n资料\r\n\r\nFFmpeg官网： http://www.ffmpeg.org\r\n\r\nFFmpeg doc : http://www.ffmpeg.org/documentation.html\r\n\r\nFFmpeg wiki : https://trac.ffmpeg.org/wiki\r\n\r\nFAQ\r\n\r\nThanks！', '1', '0', '12', null, null, '0.00', '1535622122', '1536038722');
INSERT INTO `blue_post` VALUES ('60', '1', 'ThinkPHP Call to undefined function Think\\imagecreate解决', '6', '<p>现象：验证码刷不出来。&nbsp;<br>原因：没装gd库：&nbsp;<br>GD库的配置&nbsp;<br>1、windows下&nbsp;<br>修改php.ini文件，去掉extension=php_gd2.dll 前面的分号。&nbsp;<br>修改extension_dir = “c:/kaosco/php2/extensions” 为动态库所在目录&nbsp;<br>2、Linux、unix下&nbsp;<br>需要 重新编译php。</p>', '1', '3', '58', null, null, '0.00', '1535989832', '1536392957');
INSERT INTO `blue_post` VALUES ('62', '1', '百度网盘分享链接抓取原理 那些网盘搜索是如何是现实的', '7', '<p><span>首先我们先得学会伪造请求头</span><br><span>这个知识可以看我之前发的文章</span><br><span>http://note.pc.chaoxing.com/note/noteDetail/7cf435fea4872e62</span><br><span>我们想象一下，网站后台是如何知道用户是否登录的呢，一般人都会说通过判断seesion，大家都知道session在服务器上存储，那么当有很多用户时，服务器就会有很多session，那么服务器怎么知道一个session是来自哪个用户的呢，所以肯定是用户给服务器发数据了，这样服务器就知道这个用户使用的是哪个session了，而事实上这个数据就是保存在用户端的某个cookie值，所以只要我们发请求时告诉服务器你是用哪个session，服务器就回去找，看这个session存在不，如果存在那么恭喜你，你已经通过服务器验证了。</span><br><span>就利用这个原理，当我们登录百度网盘网页版，登录成功后会发现，多了一些cookie变量，我们只要请求百度网盘的数据时带上这些变量，那么我们就直接跳过登录了，</span><br><span>下面是cookie内容 打开网页调试工具，找到network 刷新页面就可以看到所有请求，随便点击一个请求就可以看到这个请求头信息，我们可以找到请求头中带有一个cookie,这个就是客户端和服务器打交道的信物， 如图</span><br><br><br><span>我们只需要使用这个cookie向服务器发送请求就可以跳过登录了，因为服务器会认为你已经登录了。</span><br><span>下面我们就可以去爬去百度网盘分享链接了</span><br><span>由于前段时间一些事件的原因</span><br><span>只是事件链接</span><br><span>https://www.wdzj.com/hjzs/ptsj/20171114/118725-1.html</span><br><span>，百度对网盘限制了很多，例如一个用户无法查看别人分享主页里的内容，</span><br><span>我们只能从自己的个人分享页面抓取，一位你在自己的分享主页是可以看到你关注的用户的分享内容的，我们先找一些爱分享的用户加上关注，这样我们的个人分享空间里，就有了很多分享内容了，</span><br><span>在个人分享页面我们能通过</span><br><span>这个接口抓取分享链接</span><br><span>https://pan.baidu.com/pcloud/feed/getdynamiclist?auth_type=1&amp;filter_types=11000&amp;query_uk=2753127572&amp;category=0&amp;limit=50&amp;start=0&amp;bdstoken=553cf4aea600d821fc0e3407a87a9c8e&amp;channel=chunlei&amp;clienttype=0&amp;web=1&amp;logid=MTUzNjEwOTY5NDM0MzAuNDg3MzUwNjgzMzE1OTQyNDU=</span><br><span>其中</span><br><span>auth_type 默认不用管</span><br><span>filter_types，可以取10000，11000 ，01000，是对分享内容的筛选条件 对应着主页中的全部 其他</span><br><br><span>query_uk 这个不要改这个就是自己的用户id独一无二</span><br><span>category 就是分类返回数据</span><br><span>limit 就是每次取的条数，最高150条</span><br><span>start就是一个分页功能，表示从第几条开始取</span><br><br><span>后面的参数不用变就行了</span><br><span>这样就可以返回到百度分享的json</span><br><br><span>所以我们只需要编写一个程序，不停的加关注，然后不停的爬取分享主页的内容就可以了</span></p>  ', '0', null, '0', '百度网盘 盘搜', '百度网盘分享链接抓取原理', '0.00', '1536134163', '1536134163');
INSERT INTO `blue_post` VALUES ('64', '1', '盟友基地社区', '7', ' 爱分享 爱自由 ', '0', '0', '0', '社区 论坛', '一个资源分享的高端社区', '0.00', '1536150649', '1536289127');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_user
-- ----------------------------
INSERT INTO `blue_user` VALUES ('1', 'blueange', 'blues', '$2y$10$8Umq6.Z02gJ0P8.Vh7yKO.0zLy5wgXVU5hwwl83efXZp6cxAySFqq', '2', '1525415008', '1525415008', '1', null, null, 'zh_en', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJq7Gq4ayicLLRdiatCsJNDuZh5SVUnyV3trO8IupqAkvUNRIGUCr1e21l1AwGcuUFy7iarg7TbBgGjA/0', 'oGSYL0cVRK3dweKFrere8vRxdKgGEI', '15500001111');
INSERT INTO `blue_user` VALUES ('3', 'mymyjd', 'sunny', '$2y$10$8Umq6.Z02gJ0P8.Vh7yKO.0zLy5wgXVU5hwwl83efXZp6cxAySFqq', '20', '1525415008', '1525415008', '1', null, null, 'zh_cn', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJq7Gq4ayicLLRdiatCsJNDuZh5SVUnyV3trO8IupqAkvUNRIGUCr1e21l1AwGcuUFy7iarg7TbBgGjA/0', 'oGSYL0cVRK3dweKFrere8vRxdKgGEI', '15500001111');

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
  `code` text,
  `create_time` varchar(10) DEFAULT NULL,
  `update_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blue_web
-- ----------------------------
INSERT INTO `blue_web` VALUES ('1', '安久布鲁斯的博客', 'http://www.mymyjd.cn', null, '2048', '安久布鲁斯的博客', '安久布鲁斯,博客', '这是安久布鲁斯的个人博客，欢迎大家指点批评学习。', '© 2018 <a href=\"mymyjd.cn\">盟友基地社区</a>出品', '<script type=\"text/javascript\">var cnzz_protocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");document.write(unescape(\"%3Cspan id=\'cnzz_stat_icon_1260363967\'%3E%3C/span%3E%3Cscript src=\'\" + cnzz_protocol + \"s95.cnzz.com/z_stat.php%3Fid%3D1260363967\' type=\'text/javascript\'%3E%3C/script%3E\"));</script>', null, null);
