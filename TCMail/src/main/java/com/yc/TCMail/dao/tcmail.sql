/*
 Navicat MySQL Data Transfer

 Source Server         : connection
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : tcmail

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 12/05/2019 01:09:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '默认地址 1是    0非',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `recvaddr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detailaddr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '0', '吕球', '17674765600', 1, '湖南省/衡阳市/珠晖区', '衡花路湖南工学院顺丰公寓');
INSERT INTO `address` VALUES (2, '1', '张三', '17674765600', 1, '湖南省/湘潭市/湘潭县', '**路凤凰中学');
INSERT INTO `address` VALUES (6, '0', '张三', '17674765600', 4, '北京市/北京市/朝阳区', '衡花路湖南工学院顺丰公寓');
INSERT INTO `address` VALUES (7, '1', '小周', '18627661346', 3, '湖南省/衡阳市/珠晖区', '湖南工学院');
INSERT INTO `address` VALUES (8, '2', '皇家流浪汉', NULL, 1, NULL, NULL);
INSERT INTO `address` VALUES (9, '0', 'jack', '12312313211', 4, '甘肃省/平凉市/华亭县', '茅家村,18号');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `sid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `gid`(`gid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  CONSTRAINT `car_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `car_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, 5, 3, 2, 3);
INSERT INTO `car` VALUES (10, 5, 3, 3, 3);
INSERT INTO `car` VALUES (11, 5, 3, 3, 3);
INSERT INTO `car` VALUES (12, 5, 3, 3, 3);
INSERT INTO `car` VALUES (17, 5, 4, 1, 5);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `atti` int(11) NULL DEFAULT NULL,
  `commenttime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gfit` int(11) NULL DEFAULT NULL,
  `img` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `msg` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `satisf` int(11) NULL DEFAULT NULL,
  `see` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `speed` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `watti` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 3, '2019-02-10  12:02:16', 3, ',D:/image/', '哼好看', 4, NULL, 2, 3, 3);
INSERT INTO `comment` VALUES (2, 5, '2019-01-10  13:01:44', 3, ',D:/image/u=1831785465,700445365&fm=26&gp=0.jpg,D:/image/u=1831785465,700445365&fm=26&gp=0.jpg', '非常的好看', 5, NULL, 5, 3, 5);
INSERT INTO `comment` VALUES (3, 3, '2019-12-10  19:12:57', 4, ',http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/timg.jpg,http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/xiaomi9.jpg,upload have problem!,upload have problem!', '很给力', 5, NULL, 5, 3, 5);
INSERT INTO `comment` VALUES (4, 4, '2019-17-10  19:17:35', 4, ',http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/u=1831785465,700445365&fm=26&gp=0.jpg,http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/zhousir.jpg,upload have problem!,upload have problem!', '给力', 4, NULL, 4, 3, 4);
INSERT INTO `comment` VALUES (5, 5, '2019-19-10  19:19:49', 4, ',http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/xiaomi9.jpg,upload have problem!,upload have problem!,upload have problem!', '', 5, NULL, 5, 3, 4);
INSERT INTO `comment` VALUES (6, 2, '2019-01-12  01:01:03', 5, ',http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/01efd530e01f73f2632d1204c9b68189.jpg,upload have problem!,upload have problem!,upload have problem!', 'sdfsdf', 5, NULL, 4, 4, 1);
INSERT INTO `comment` VALUES (7, 2, '2019-01-12  01:01:11', 5, ',http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/01efd530e01f73f2632d1204c9b68189.jpg,http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/h1.jpg,upload have problem!,upload have problem!', 'sdfsdf', 5, NULL, 4, 4, 1);
INSERT INTO `comment` VALUES (8, 2, '2019-01-12  01:01:12', 5, ',http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/01efd530e01f73f2632d1204c9b68189.jpg,http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/h1.jpg,upload have problem!,upload have problem!', 'sdfsdf', 5, NULL, 4, 4, 1);
INSERT INTO `comment` VALUES (9, 2, '2019-01-12  01:01:12', 5, ',http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/01efd530e01f73f2632d1204c9b68189.jpg,http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/h1.jpg,upload have problem!,upload have problem!', 'sdfsdf', 5, NULL, 4, 4, 1);
INSERT INTO `comment` VALUES (10, 2, '2019-01-12  01:01:13', 5, ',http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/01efd530e01f73f2632d1204c9b68189.jpg,http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/h1.jpg,upload have problem!,upload have problem!', 'sdfsdf', 5, NULL, 4, 4, 1);
INSERT INTO `comment` VALUES (11, 2, '2019-01-12  01:01:13', 5, ',http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/01efd530e01f73f2632d1204c9b68189.jpg,http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/h1.jpg,upload have problem!,upload have problem!', 'sdfsdf', 5, NULL, 4, 4, 1);
INSERT INTO `comment` VALUES (12, 2, '2019-01-12  01:01:14', 5, ',http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/01efd530e01f73f2632d1204c9b68189.jpg,http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/h1.jpg,upload have problem!,upload have problem!', 'sdfsdf', 5, NULL, 4, 4, 1);
INSERT INTO `comment` VALUES (13, 2, '2019-01-12  01:01:15', 5, ',http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/01efd530e01f73f2632d1204c9b68189.jpg,http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/h1.jpg,upload have problem!,upload have problem!', 'sdfsdf', 5, NULL, 4, 4, 1);
INSERT INTO `comment` VALUES (14, 2, '2019-01-12  01:01:14', 5, ',http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/01efd530e01f73f2632d1204c9b68189.jpg,http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/h1.jpg,upload have problem!,upload have problem!', 'sdfsdf', 5, NULL, 4, 4, 1);
INSERT INTO `comment` VALUES (15, 3, '2019-05-12  01:05:22', 4, ',http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/01efd530e01f73f2632d1204c9b68189.jpg,upload have problem!,upload have problem!,upload have problem!', 'dfdf', 5, NULL, 4, 4, 4);

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ftime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsid` int(11) NULL DEFAULT NULL,
  `shopid` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `shopid`(`shopid`) USING BTREE,
  INDEX `goodsid`(`goodsid`) USING BTREE,
  CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`shopid`) REFERENCES `shop` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `favorite_ibfk_3` FOREIGN KEY (`goodsid`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of favorite
-- ----------------------------
INSERT INTO `favorite` VALUES (14, '2019-05-12 00:52:36', 7, 5, 4);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `commnum` int(11) NULL DEFAULT NULL,
  `image` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `point` int(11) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `sid` int(11) NULL DEFAULT NULL,
  `size` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tid` int(11) NULL DEFAULT NULL,
  `regtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tid`(`tid`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `gtype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `shop` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '黑色', NULL, NULL, '小米mix2s', 10000, 10, 2499, 1, '6g+128g', 1, NULL);
INSERT INTO `goods` VALUES (2, '凝光白', NULL, NULL, '魅族16s', 10000, 12, 3199, 2, '6g+128g', 1, NULL);
INSERT INTO `goods` VALUES (3, '绿色', NULL, NULL, 'T恤', 200, 8, 200, 3, 'XL码', 2, NULL);
INSERT INTO `goods` VALUES (4, '黑色', NULL, NULL, '帆布鞋', 100, 8, 211, 4, '41码', 2, NULL);
INSERT INTO `goods` VALUES (5, '白色', 50, 'images/lieb_tupi2.jpg', '法国婚纱', 100, 100, 1099, 5, 'L码', 3, NULL);
INSERT INTO `goods` VALUES (6, '白色', 100, 'images/lieb_tupi1.jpg', '丽人长裙', 200, 150, 2999, 5, 'L码', 3, NULL);
INSERT INTO `goods` VALUES (7, '白色', 99, 'images/lieb_tupi3.jpg', '柔软被套', 20, 50, 999, 5, '188cm', 3, NULL);
INSERT INTO `goods` VALUES (8, '蓝色', 1000, 'images/timg.jpg', '华为P30让您拥有50倍焦距', 2000, 100, 450, 5, '6.9寸', 3, NULL);

-- ----------------------------
-- Table structure for goodsmsg
-- ----------------------------
DROP TABLE IF EXISTS `goodsmsg`;
CREATE TABLE `goodsmsg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sid` int(11) NULL DEFAULT NULL,
  `size` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tid` int(11) NULL DEFAULT NULL,
  `gid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `tid`(`tid`) USING BTREE,
  CONSTRAINT `goodsmsg_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `shop` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `goodsmsg_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `gtype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goodsmsg
-- ----------------------------
INSERT INTO `goodsmsg` VALUES (1, '白', 5, 'L', 3, NULL);
INSERT INTO `goodsmsg` VALUES (2, '白', 5, 'L', 3, NULL);

-- ----------------------------
-- Table structure for gtype
-- ----------------------------
DROP TABLE IF EXISTS `gtype`;
CREATE TABLE `gtype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  `sunid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gtype
-- ----------------------------
INSERT INTO `gtype` VALUES (1, '手机', NULL, NULL);
INSERT INTO `gtype` VALUES (2, '服装', NULL, NULL);
INSERT INTO `gtype` VALUES (3, '女装', NULL, NULL);
INSERT INTO `gtype` VALUES (4, '华为', 1, NULL);
INSERT INTO `gtype` VALUES (5, '荣耀9', 4, NULL);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NULL DEFAULT NULL,
  `path` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `gid`(`gid`) USING BTREE,
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NULL DEFAULT NULL,
  `gid` int(11) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `orderid`(`orderid`) USING BTREE,
  INDEX `gid`(`gid`) USING BTREE,
  CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `uorder` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`gid`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES (1, 1, 1, 1);
INSERT INTO `orderdetail` VALUES (2, 1, 2, 2);
INSERT INTO `orderdetail` VALUES (3, 2, 2, 3);
INSERT INTO `orderdetail` VALUES (4, 3, 3, 1);
INSERT INTO `orderdetail` VALUES (5, 4, 4, 1);
INSERT INTO `orderdetail` VALUES (6, 2, 4, 1);
INSERT INTO `orderdetail` VALUES (7, 5, 4, 2);
INSERT INTO `orderdetail` VALUES (8, 6, 5, 1);
INSERT INTO `orderdetail` VALUES (9, 7, 6, 1);
INSERT INTO `orderdetail` VALUES (10, 8, 7, 1);
INSERT INTO `orderdetail` VALUES (11, 6, 6, 1);

-- ----------------------------
-- Table structure for point
-- ----------------------------
DROP TABLE IF EXISTS `point`;
CREATE TABLE `point`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  CONSTRAINT `point_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of point
-- ----------------------------
INSERT INTO `point` VALUES (1, 100, 3);

-- ----------------------------
-- Table structure for retgoods
-- ----------------------------
DROP TABLE IF EXISTS `retgoods`;
CREATE TABLE `retgoods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` int(11) NULL DEFAULT NULL,
  `odetailid` int(11) NULL DEFAULT NULL,
  `reason` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rimage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of retgoods
-- ----------------------------
INSERT INTO `retgoods` VALUES (1, '2019-05-12 00:59:23', 'vhjhjhvj', 211, 5, '0', 'http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/h1.jpg', '已申请退款');

-- ----------------------------
-- Table structure for return
-- ----------------------------
DROP TABLE IF EXISTS `return`;
CREATE TABLE `return`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` int(11) NULL DEFAULT NULL,
  `odetailid` int(11) NULL DEFAULT NULL,
  `reason` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oid`(`odetailid`) USING BTREE,
  CONSTRAINT `return_ibfk_1` FOREIGN KEY (`odetailid`) REFERENCES `orderdetail` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bustime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `describe` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES (1, '贵州贵阳市云岩区城区下合群路达亨大厦1601', NULL, NULL, '小米旗舰店', NULL, 1, NULL);
INSERT INTO `shop` VALUES (2, '贵州贵阳市云岩区城区下合群路达亨大厦1602', NULL, NULL, '魅族旗舰店', NULL, 1, NULL);
INSERT INTO `shop` VALUES (3, '贵州贵阳市云岩区城区下合群路达亨大厦1603', NULL, NULL, '李宁直营店', NULL, 1, NULL);
INSERT INTO `shop` VALUES (4, '贵州贵阳市云岩区城区下合群路达亨大厦1606', NULL, NULL, '匡威旗舰店', NULL, 1, NULL);
INSERT INTO `shop` VALUES (5, '湖南省衡阳市', '2019-05-10', NULL, '漂亮女神服装店', '女装', 3, NULL);
INSERT INTO `shop` VALUES (6, '江苏杭州', '8：00-22：00', NULL, '华为专营店', '手机电脑', 1, NULL);

-- ----------------------------
-- Table structure for totalreason
-- ----------------------------
DROP TABLE IF EXISTS `totalreason`;
CREATE TABLE `totalreason`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderstatu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tid`(`tid`) USING BTREE,
  CONSTRAINT `totalreason_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `gtype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of totalreason
-- ----------------------------
INSERT INTO `totalreason` VALUES (1, '已收到货', 'Soc没点胶', 1);
INSERT INTO `totalreason` VALUES (2, '已收到货', '屏幕有刮痕', 1);
INSERT INTO `totalreason` VALUES (3, '已收到货', '充电器没送', 1);
INSERT INTO `totalreason` VALUES (4, '未收到货', '不想要了', 1);
INSERT INTO `totalreason` VALUES (5, '未收到货', '地址填错了', 1);

-- ----------------------------
-- Table structure for uorder
-- ----------------------------
DROP TABLE IF EXISTS `uorder`;
CREATE TABLE `uorder`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NULL DEFAULT NULL,
  `orderstatu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '待发货 待收货 待评价 已评价',
  `ordertime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paystatu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '待支付 已支付',
  `paytype` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tcomp` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `totalprice` double(11, 0) NULL DEFAULT NULL,
  `recivetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `visiable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除订单 状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `aid`(`aid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  CONSTRAINT `uorder_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `address` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `uorder_ibfk_3` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of uorder
-- ----------------------------
INSERT INTO `uorder` VALUES (1, 1, '', '2019-05-01 17:16:00', '待支付', '支付宝', '顺丰', 1, 8897, NULL, NULL);
INSERT INTO `uorder` VALUES (2, 2, '待评价', '2019-05-02 17:16:00', '已支付', '支付宝', '京东', 1, 9597, NULL, NULL);
INSERT INTO `uorder` VALUES (3, 6, '已评价', '2019-05-03 17:16:00', '已支付', '银联', '中通', 4, 200, '2019-05-05 17:16:00', NULL);
INSERT INTO `uorder` VALUES (4, 1, '待收货', '2019-05-05 17:16:00', '已支付', '支付宝', '圆通', 4, 211, NULL, NULL);
INSERT INTO `uorder` VALUES (5, 2, '待收货', '2019-05-08 17:16:00', '已支付', '支付宝', '中通', 2, 422, NULL, NULL);
INSERT INTO `uorder` VALUES (6, 7, '待评价', '2019-05-08 17:16:00', '已支付', '支付宝', '申通快递', 3, 1009, '2019-05-05 17:16:00', NULL);
INSERT INTO `uorder` VALUES (7, 7, '待评价', '2019-05-08 17:16:00', '已支付', '支付宝', '申通快递', 3, 2999, '2019-05-05 17:16:00', NULL);
INSERT INTO `uorder` VALUES (8, 7, '待评价', '2019-05-08 17:16:00', '已支付', '支付宝', '申通快递', 3, 999, '2019-05-05 17:16:00', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `edu` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marry` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `favtypeid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `familynum` int(11) NULL DEFAULT NULL,
  `income` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `account`(`account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '吕球', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO `user` VALUES (2, '张三', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '456', NULL, NULL, '男', NULL, '1', NULL, NULL);
INSERT INTO `user` VALUES (3, '小周', 20, 'bachelor', '2250034912@qq.com', 'images/zhousir.jpg', '军人', '保密', '周', '1896487235', 'zhou789', '周', '2019-05-09 07:30:19', '男', NULL, '2,', 4, '5000元以下');
INSERT INTO `user` VALUES (4, 'admin', 21, 'master', '', 'http://doki-l.oss-cn-beijing.aliyuncs.com/UploadFile/header/h1.jpg', '高级行政人员(总裁、总经理、董事等)', '已婚', '皇家流浪汉', '15773283676', '123456', '黄大林', NULL, '保密', NULL, '1,4,', 5, '10000-15000元');

SET FOREIGN_KEY_CHECKS = 1;
