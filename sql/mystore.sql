/*
 Navicat Premium Data Transfer

 Source Server         : connection
 Source Server Type    : MySQL
 Source Server Version : 80014
 Source Host           : localhost:3306
 Source Schema         : mystore

 Target Server Type    : MySQL
 Target Server Version : 80014
 File Encoding         : 65001

 Date: 29/07/2019 14:27:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456');
INSERT INTO `admin` VALUES ('2', 'luzhibin', '764323221');
INSERT INTO `admin` VALUES ('3', 'shabiweiguangyi', 'sb');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cid` int(50) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '电脑办公');
INSERT INTO `category` VALUES (2, '家具家居');
INSERT INTO `category` VALUES (3, '鲜果时光');
INSERT INTO `category` VALUES (4, '图书音像');
INSERT INTO `category` VALUES (5, '潮流服饰');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `image` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_hot` int(1) NULL DEFAULT 0,
  `cid` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE,
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '梵希曼短袖衬衣女2019新款夏季气质韩版通勤', 159.00, 'goods_001.png', NULL, 0, 5);
INSERT INTO `goods` VALUES (2, '姿忆秀五分袖宽松衬衫女2019夏季新款竖条纹\r\n', 88.00, 'goods_002.png', NULL, 0, 5);
INSERT INTO `goods` VALUES (3, '梵希曼短袖雪纺衬衫短款2019夏季新款女装韩\r\n', 176.00, 'goods_003.png', NULL, 0, 5);
INSERT INTO `goods` VALUES (4, '2019夏季新款雪纺衬衫女上衣职业OL短袖衬衣韩版修身休闲', 159.00, 'goods_004.png', NULL, 0, 5);
INSERT INTO `goods` VALUES (5, '电脑椅家用电竞椅 人体工学椅子座椅可躺老板椅办公椅', 269.00, 'goods_005.png', NULL, 0, 2);
INSERT INTO `goods` VALUES (6, '电脑椅家用座椅办公椅主播椅游戏椅网吧电竞椅可躺午休', 699.00, 'goods_006.png', NULL, 0, 2);
INSERT INTO `goods` VALUES (7, '白图 李玲条纹衬衫女套头短袖百搭雪纺衫上\r\n', 179.15, 'goods_007.png', NULL, 0, 5);
INSERT INTO `goods` VALUES (8, '不锈钢卫浴室柜组合小户型挂墙式洗手洗脸盆卫生间厕所洗漱盆', 305.00, 'goods_008.png', NULL, 0, 2);
INSERT INTO `goods` VALUES (9, '北欧双盆浴室柜组合简约卫浴柜镜柜卫生间洗手盆洗脸洗漱台盆', 900.00, 'goods_009.png', NULL, 0, 2);
INSERT INTO `goods` VALUES (10, '简约现代浴室柜洗手盆柜组合洗脸卫生间小户型厕所洗漱台卫浴吊柜', 948.00, 'goods_010.png', NULL, 0, 2);
INSERT INTO `goods` VALUES (11, '三只鸟旅行箱拉杆箱女铝制框20寸学生密码箱登机箱24寸', 268.00, 'goods_011.png', NULL, 0, 1);
INSERT INTO `goods` VALUES (12, '全铝镁铝合金拉杆箱金属旅行箱子商务行李箱学生登机箱', 375.00, 'goods_012.png', NULL, 0, 1);
INSERT INTO `goods` VALUES (13, '床上双人电脑桌 台式电脑桌家用笔记本电脑桌', 89.00, 'goods_013.png', NULL, 0, 2);
INSERT INTO `goods` VALUES (14, '男童鞋儿童鞋运动鞋2019春秋新款夏季网面休闲透气鞋', 79.00, 'goods_014.png', NULL, 0, 5);
INSERT INTO `goods` VALUES (15, '大码宽松休闲立领短袖纯棉衬衫格子上衣衬衣', 149.00, 'goods_015.png', NULL, 0, 5);
INSERT INTO `goods` VALUES (24, '魏广逸的大头照 高清2K 4K', 123.00, 'goods_016.png', '可以拿来做头像', 1, 4);
INSERT INTO `goods` VALUES (26, '测试1', 314.59, 'goods_016.png', NULL, 1, 1);
INSERT INTO `goods` VALUES (35, '测试2', 899.00, 'goods_016.png', 'asd ', 1, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0303a133-eebb-461c-be76-b5f458e0a090', 'LZB031', 'LZB03100', '13159462365');
INSERT INTO `user` VALUES ('1b2ed149-e361-40b7-862b-59ce30b92572', 'qiuchengquan', 'qiuchengquan', '13000000000');
INSERT INTO `user` VALUES ('1f73b524-a5c2-4fa7-a8a2-8f6c7fc1917e', '1255863672', '1255863672', '13512345678');
INSERT INTO `user` VALUES ('210224f9-7579-435b-b69e-efe922ab2f57', 'huangyuhong', '12345678', '13222222245');
INSERT INTO `user` VALUES ('375db435-052a-4301-ab00-ddfb64ac77c8', '123456789', '123456789', '18255544444');
INSERT INTO `user` VALUES ('40f951c6-1ff1-4d46-bb13-64a2aad62341', 'chenliwei', 'chenliweisb', '13213213255');
INSERT INTO `user` VALUES ('59cd71f1-37b7-425d-abe2-5c5d13433b08', 'Administrator', 'rootroot', '18088188188');
INSERT INTO `user` VALUES ('638ffc34-e0c1-47d9-a96a-bd837045fddd', '123456', '123456789', '18977745646');
INSERT INTO `user` VALUES ('c6c70fe4-18b6-482c-abf2-5b869ccfb227', 'qwe789', 'qwe789789', '13065555548');
INSERT INTO `user` VALUES ('fd5f139e-0897-4295-8c6b-49956a10c315', 'weiguangyi', 'weiguangyisb', '18245645455');

SET FOREIGN_KEY_CHECKS = 1;
