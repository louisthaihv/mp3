/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50536
Source Host           : 127.0.0.1:3306
Source Database       : mp3

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2015-07-09 21:35:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for baihat
-- ----------------------------
DROP TABLE IF EXISTS `baihat`;
CREATE TABLE `baihat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenbaihat` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `casy` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tacgia` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `theloai` int(10) NOT NULL,
  `duongdan` varchar(200) CHARACTER SET latin1 NOT NULL,
  `loibaihat` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `luotnghe` int(10) NOT NULL,
  `type` enum('hot','new','normal') CHARACTER SET latin1 DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baihat
-- ----------------------------
INSERT INTO `baihat` VALUES ('40', 'Because I Miss You', 'Jung Yong Hwa', '', '0', 'nhac/Dong Nhi - Bad Boy.mp3', '', '19', 'normal', null);
INSERT INTO `baihat` VALUES ('45', 'Gạt Đi Nước Mắt', 'Noo Phước Thịnh ft. Tonny Việt', '', '0', 'nhac/Gat di nuoc mat.mp3', '', '9', 'normal', null);
INSERT INTO `baihat` VALUES ('46', 'Khuôn Mặt Đáng Thương', 'Sơn Tùng M-TP', '', '0', 'nhac/Khuon Mat Dang Thuong.mp3', '', '12', 'normal', null);
INSERT INTO `baihat` VALUES ('47', 'Thu Cuối', 'Yanbi ft. Mr T ft. Hằng BingBoong', '', '0', 'nhac/Thu Cuoi.mp3', '', '10', 'normal', null);
INSERT INTO `baihat` VALUES ('48', 'Because I Miss You', 'Jung Yong Hwa', '', '0', 'nhac/Because I Miss You - Jung Yong Hwa.mp3', '', '7', 'normal', null);

-- ----------------------------
-- Table structure for bangquyen
-- ----------------------------
DROP TABLE IF EXISTS `bangquyen`;
CREATE TABLE `bangquyen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noidung` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bangquyen
-- ----------------------------

-- ----------------------------
-- Table structure for casy
-- ----------------------------
DROP TABLE IF EXISTS `casy`;
CREATE TABLE `casy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `casy` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of casy
-- ----------------------------
INSERT INTO `casy` VALUES ('1', '365 Daband');
INSERT INTO `casy` VALUES ('2', 'Đông Nhi');
INSERT INTO `casy` VALUES ('3', 'Sơn Tùng M-TP');

-- ----------------------------
-- Table structure for chuchay
-- ----------------------------
DROP TABLE IF EXISTS `chuchay`;
CREATE TABLE `chuchay` (
  `id` int(11) NOT NULL,
  `noidung` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chuchay
-- ----------------------------
INSERT INTO `chuchay` VALUES ('1', 'Web nghe nhạc trực tuyền Online Mp3 | Dung Ham');

-- ----------------------------
-- Table structure for chude
-- ----------------------------
DROP TABLE IF EXISTS `chude`;
CREATE TABLE `chude` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chude` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chude
-- ----------------------------
INSERT INTO `chude` VALUES ('10', 'Nhạc Hot Việt');
INSERT INTO `chude` VALUES ('11', 'Nhạc Chờ Hot');
INSERT INTO `chude` VALUES ('12', 'Nhạc Việt Mới');
INSERT INTO `chude` VALUES ('13', 'Nhạc Hot Rap Việt');
INSERT INTO `chude` VALUES ('15', 'Hôm Nay Nghe Gì? ');
INSERT INTO `chude` VALUES ('16', 'Love Songs');
INSERT INTO `chude` VALUES ('17', 'Nhạc Sàn');
INSERT INTO `chude` VALUES ('18', 'Nhạc Giáng Sinh');

-- ----------------------------
-- Table structure for footer
-- ----------------------------
DROP TABLE IF EXISTS `footer`;
CREATE TABLE `footer` (
  `id` int(10) NOT NULL,
  `noidung` varchar(9999) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of footer
-- ----------------------------
INSERT INTO `footer` VALUES ('1', '<h1 style=\"font-family: Arial, Verdana; font-size: 10pt; font-weight: normal; text-align: center;\"><hr></h1><h3 style=\"font-family: Arial, Verdana; font-size: 10pt; text-align: center;\"><br></h3><blockquote style=\"margin: 0px 0px 0px 40px; border: none; padding: 0px;\"><h1 style=\"font-family: Arial, Verdana; font-size: 10pt; text-align: center;\"></h1><h4 style=\"text-align: center;\"><font color=\"#ff0000\" size=\"5\" face=\"Courier New\"><u>Miss Dung</u></font></h4><div style=\"font-family: Arial, Verdana; font-size: 10pt;\"><font color=\"#ff0000\"><u><br></u></font></div><div style=\"font-size: 10pt; text-align: center;\"><font color=\"#ff0000\" face=\"Comic Sans MS\"><b><u>Liên hệ Facebook:</u></b>&nbsp;http://facebook.com/dung<b>&nbsp;<u>Điện Thoại:</u> </b>099999999</font></div></blockquote><hr style=\"font-family: Arial, Verdana; font-size: 10pt; font-weight: normal; font-style: normal; font-variant: normal; line-height: normal;\">');

-- ----------------------------
-- Table structure for logo
-- ----------------------------
DROP TABLE IF EXISTS `logo`;
CREATE TABLE `logo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noidung` varchar(500) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logo
-- ----------------------------
INSERT INTO `logo` VALUES ('1', 'images/logo/header.png');

-- ----------------------------
-- Table structure for luot
-- ----------------------------
DROP TABLE IF EXISTS `luot`;
CREATE TABLE `luot` (
  `luot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of luot
-- ----------------------------
INSERT INTO `luot` VALUES ('1531');

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tinhtrang` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('1', 'OK');
INSERT INTO `status` VALUES ('2', 'NO');

-- ----------------------------
-- Table structure for theloai
-- ----------------------------
DROP TABLE IF EXISTS `theloai`;
CREATE TABLE `theloai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noidung` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of theloai
-- ----------------------------
INSERT INTO `theloai` VALUES ('1', 'Nhạc Quốc Tế');
INSERT INTO `theloai` VALUES ('2', 'Việt Nam');
INSERT INTO `theloai` VALUES ('3', 'Âu Mỹ');
INSERT INTO `theloai` VALUES ('4', 'Hàn Quốc');
INSERT INTO `theloai` VALUES ('5', 'Rap Việt');
INSERT INTO `theloai` VALUES ('6', 'Cách Mạng');

-- ----------------------------
-- Table structure for timelog
-- ----------------------------
DROP TABLE IF EXISTS `timelog`;
CREATE TABLE `timelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` date NOT NULL,
  `day` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of timelog
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'OK',
  `gioitinh` varchar(4) CHARACTER SET latin1 NOT NULL,
  `ngaysinh` varchar(30) CHARACTER SET latin1 NOT NULL,
  `diachi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_group` tinyint(3) NOT NULL DEFAULT '1',
  `permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', 'Dung Ham', 'OK', '', '', 'RAH', 'dung@gmail.com', '1', 'nhacmoi,nhacdadang,theloai,nhachot');

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `maQuyen` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã quyền',
  `tenQuyen` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên quyền',
  PRIMARY KEY (`maQuyen`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bảng quyền';

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES ('1', 'Quản trị');
INSERT INTO `user_group` VALUES ('2', 'Quản lý');
INSERT INTO `user_group` VALUES ('3', 'Người dùng');
INSERT INTO `user_group` VALUES ('4', 'Khách');

-- ----------------------------
-- Table structure for user_online
-- ----------------------------
DROP TABLE IF EXISTS `user_online`;
CREATE TABLE `user_online` (
  `session` varchar(99) CHARACTER SET latin1 NOT NULL,
  `time` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_online
-- ----------------------------
INSERT INTO `user_online` VALUES ('srsomif4qrnuid5lrkud05hfl7', '1436448972');
