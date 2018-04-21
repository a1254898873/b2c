/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : b2c

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 21/04/2018 10:46:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for think_content
-- ----------------------------
DROP TABLE IF EXISTS `think_content`;
CREATE TABLE `think_content`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sid` int(11) NOT NULL,
  `phone` bigint(13) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_content
-- ----------------------------
INSERT INTO `think_content` VALUES (7, '我是某逆风', 63, 15625788691);
INSERT INTO `think_content` VALUES (6, '你好啊，灵梦', 63, 15625788691);
INSERT INTO `think_content` VALUES (8, '某逆风到此一游', 63, 15625788691);
INSERT INTO `think_content` VALUES (9, '哇咔咔', 63, 15625788691);
INSERT INTO `think_content` VALUES (10, '33333333333', 63, 15625788691);

-- ----------------------------
-- Table structure for think_data
-- ----------------------------
DROP TABLE IF EXISTS `think_data`;
CREATE TABLE `think_data`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '状态',
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  `delete_time` int(11) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 454 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_data
-- ----------------------------
INSERT INTO `think_data` VALUES (448, '0.0.0.0', 0, '123', 30, NULL, '', 1509952516, 1509952516);
INSERT INTO `think_data` VALUES (447, 'thinkphp6-3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (446, 'thinkphp6-2', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (445, 'thinkphp6-1', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (444, 'thinkphp5', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (443, 'thinkphp4', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (442, 'thinkphp3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (441, 'thinkphp2^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (440, 'thinkphp1^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (439, 'thinkphp6-3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (438, 'thinkphp6-2', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (437, 'thinkphp6-1', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (436, 'thinkphp5', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (435, 'thinkphp4', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (434, 'thinkphp3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (433, 'thinkphp2^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (432, 'thinkphp1^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (431, 'thinkphp6-3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (430, 'thinkphp6-2', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (429, 'thinkphp6-1', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (428, 'thinkphp5', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (427, 'thinkphp4', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (426, 'thinkphp3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (425, 'thinkphp2^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (424, 'thinkphp1^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (423, 'thinkphp6-3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (422, 'thinkphp6-2', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (421, 'thinkphp6-1', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (420, 'thinkphp5', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (419, 'thinkphp4', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (418, 'thinkphp3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (417, 'thinkphp2^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (416, 'thinkphp1^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (415, 'thinkphp6-3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (414, 'thinkphp6-2', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (413, 'thinkphp6-1', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (412, 'thinkphp5', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (411, 'thinkphp4', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (410, 'thinkphp3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (409, 'thinkphp2^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (408, 'thinkphp1^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (399, 'thinkphp6-3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (400, 'thinkphp1^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (401, 'thinkphp2^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (402, 'thinkphp3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (403, 'thinkphp4', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (404, 'thinkphp5', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (405, 'thinkphp6-1', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (406, 'thinkphp6-2', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (407, 'thinkphp6-3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (396, 'thinkphp5', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (397, 'thinkphp6-1', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (398, 'thinkphp6-2', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (395, 'thinkphp4', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (393, 'thinkphp2^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (394, 'thinkphp3', 0, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (392, 'thinkphp1^_^', 1, '', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (391, '0.0.0.0', 0, '1111', 30, NULL, '', 1509767212, 1509767212);
INSERT INTO `think_data` VALUES (387, '0.0.0.0', 0, '你好啊', 30, NULL, '', 1509617334, 1509617334);
INSERT INTO `think_data` VALUES (388, '0.0.0.0', 0, '2', 30, NULL, '', 1509759891, 1509759891);
INSERT INTO `think_data` VALUES (389, '0.0.0.0', 0, '123456', 30, NULL, '45455', 1509761107, 1509761107);
INSERT INTO `think_data` VALUES (390, '0.0.0.0', 0, '1', 30, NULL, '', 1509764888, 1509764888);
INSERT INTO `think_data` VALUES (372, '', 0, '12', 0, NULL, '', 1509612295, 1509612295);
INSERT INTO `think_data` VALUES (373, '', 0, '11111', 0, NULL, '', 1509612302, 1509612302);
INSERT INTO `think_data` VALUES (374, '', 0, '555555555555', 0, NULL, '', 1509612312, 1509612312);
INSERT INTO `think_data` VALUES (375, '', 0, '4444444', 0, NULL, '', 1509612343, 1509612343);
INSERT INTO `think_data` VALUES (376, '', 0, '0.0.0.0', 1, NULL, '', 1509613536, 1509613536);
INSERT INTO `think_data` VALUES (377, '', 0, '0.0.0.0', 1, NULL, '', 1509613543, 1509613543);
INSERT INTO `think_data` VALUES (378, '', 0, '0.0.0.0', 0, NULL, '', 1509613638, 1509613638);
INSERT INTO `think_data` VALUES (379, '', 0, '0.0.0.0', 19, NULL, '', 1509613673, 1509613673);
INSERT INTO `think_data` VALUES (380, '', 0, '0.0.0.0', 1, NULL, '', 1509613707, 1509613707);
INSERT INTO `think_data` VALUES (381, '', 0, '0.0.0.0', 17, NULL, '', 1509613728, 1509613728);
INSERT INTO `think_data` VALUES (382, '', 0, '0.0.0.0', 20, NULL, '', 1509613849, 1509613849);
INSERT INTO `think_data` VALUES (383, 'tom', 0, '0.0.0.0', 20, NULL, '', 1509613998, 1509613998);
INSERT INTO `think_data` VALUES (384, 'tom', 0, '0.0.0.0', 20, NULL, '', 1509614354, 1509614354);
INSERT INTO `think_data` VALUES (385, '游客', 0, 'lll', 30, NULL, '', 1509614486, 1509614486);
INSERT INTO `think_data` VALUES (386, '0.0.0.0', 0, 'ppp', 30, NULL, '', 1509614567, 1509614567);
INSERT INTO `think_data` VALUES (371, '', 0, 'ww', 0, NULL, 'sdddd', 1509605973, 1509605973);
INSERT INTO `think_data` VALUES (370, '', 0, 'qqthinkp', 0, NULL, '', 1509605885, 1509605885);
INSERT INTO `think_data` VALUES (369, '', 0, 'ddfge', 0, NULL, '', 1509605873, 1509605873);
INSERT INTO `think_data` VALUES (368, '', 0, 'a3590023df66ac92ae35e3316026d17d', 0, NULL, '', 1509605799, 1509605799);
INSERT INTO `think_data` VALUES (367, '', 0, 'e10adc3949ba59abbe56e057f20f883e', 0, NULL, '', 1509605617, 1509605617);
INSERT INTO `think_data` VALUES (366, '', 0, 'rinuo.com', 0, NULL, '', 1509605583, 1509605583);
INSERT INTO `think_data` VALUES (365, '', 0, 'qq', 0, NULL, '', 1509605570, 1509605570);
INSERT INTO `think_data` VALUES (364, '', 0, 'aaa', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (363, '', 0, '123', 0, NULL, '', 0, 0);
INSERT INTO `think_data` VALUES (362, '', 0, 'AAFGEGEG', 0, NULL, '', 1509604876, 0);
INSERT INTO `think_data` VALUES (320, '', 0, 'thinkphp', 0, 1509517846, 'thinkphp@qq.com', 1509517476, 1509517846);
INSERT INTO `think_data` VALUES (321, '', 0, 'onethink', 0, 1509517846, 'onethink@qq.com', 1509517476, 1509517846);
INSERT INTO `think_data` VALUES (327, '', 0, 'onethink', 0, NULL, 'onethink@qq.com', 1509519616, 1509519616);
INSERT INTO `think_data` VALUES (328, '', 0, 'Rinuo.com', 0, NULL, '250285636@qq.com', 1509520087, 1509520087);
INSERT INTO `think_data` VALUES (329, '', 0, 'onethink', 0, NULL, 'onethink@qq.com', 1509520087, 1509520087);
INSERT INTO `think_data` VALUES (330, '', 0, 'Rinuo.com', 0, NULL, '250285636@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (331, '', 0, 'onethink', 0, NULL, 'onethink@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (332, '', 0, 'haha^_^123456', 0, NULL, '250285636@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (333, '', 0, 'haha^_^123456789', 0, NULL, '250285636@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (334, '', 0, 'thinkphp^_^123456', 0, NULL, '250285636@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (335, '', 0, 'Rinuo.com', 0, NULL, '250285636@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (336, '', 0, 'Rinuo.com', 0, NULL, '250285636@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (337, '', 0, 'thinkphp1212121212', 0, NULL, 'thinkphp@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (338, '', 0, 'thinkphp1212121212', 0, NULL, 'thinkphp@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (339, '', 0, 'thinkphp123456', 0, NULL, 'thinkphp@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (340, '', 0, 'Rinuo.com', 0, NULL, '250285636@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (341, '', 0, 'onethink', 0, NULL, 'onethink@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (355, '', 0, '1', 0, NULL, '', 1509530328, 0);
INSERT INTO `think_data` VALUES (356, '', 0, '2', 0, 1509517846, '', 1509585661, 0);
INSERT INTO `think_data` VALUES (357, '', 0, 'sd ', 0, 1509517846, '', 1509601014, 0);
INSERT INTO `think_data` VALUES (358, '', 0, '1', 0, NULL, '', 1509603453, 0);
INSERT INTO `think_data` VALUES (359, '', 0, '2', 0, NULL, '', 1509603461, 0);
INSERT INTO `think_data` VALUES (360, '', 0, '33', 0, NULL, '', 1509603470, 0);
INSERT INTO `think_data` VALUES (361, '', 0, '1', 0, NULL, '', 1509603481, 0);
INSERT INTO `think_data` VALUES (326, '', 0, 'thinkphp', 0, NULL, 'thinkphp@qq.com', 1509519616, 1509519616);
INSERT INTO `think_data` VALUES (323, '', 0, 'onethink', 0, NULL, 'onethink@qq.com', 1509519004, 1509519004);
INSERT INTO `think_data` VALUES (324, '', 0, 'thinkphp', 0, NULL, 'thinkphp@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (319, '', 0, 'onethink', 0, 1509517846, 'onethink@qq.com', 1509517475, 1509517846);
INSERT INTO `think_data` VALUES (325, '', 0, 'onethink', 0, NULL, 'onethink@qq.com', 0, 0);
INSERT INTO `think_data` VALUES (322, '', 0, 'thinkphp', 0, NULL, 'thinkphp@qq.com', 1509519004, 1509519004);
INSERT INTO `think_data` VALUES (313, '', 0, 'onethink', 0, NULL, 'onethink@qq.com', 1509517474, 1509517474);
INSERT INTO `think_data` VALUES (312, '', 0, 'thinkphp', 0, NULL, 'thinkphp@qq.com', 1509517474, 1509517474);
INSERT INTO `think_data` VALUES (449, '0.0.0.0', 0, '123', 30, NULL, '', 1509956644, 1509956644);
INSERT INTO `think_data` VALUES (450, '0.0.0.0', 0, '123', 30, NULL, '', 1509956670, 1509956670);
INSERT INTO `think_data` VALUES (451, '0.0.0.0', 0, '52课 去掉url中的public', 30, NULL, '', 1509956717, 1509956717);
INSERT INTO `think_data` VALUES (452, '0.0.0.0', 0, '18210787405', 30, NULL, '', 1510214163, 1510214163);
INSERT INTO `think_data` VALUES (453, '0.0.0.0', 0, '18210787405', 30, NULL, '', 1510228907, 1510228907);

-- ----------------------------
-- Table structure for think_feedback
-- ----------------------------
DROP TABLE IF EXISTS `think_feedback`;
CREATE TABLE `think_feedback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` bigint(13) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_feedback
-- ----------------------------
INSERT INTO `think_feedback` VALUES (1, '1111111111', 15625788691);
INSERT INTO `think_feedback` VALUES (2, '1111111111', 15625788691);
INSERT INTO `think_feedback` VALUES (4, '222222222', 15625788691);

-- ----------------------------
-- Table structure for think_img
-- ----------------------------
DROP TABLE IF EXISTS `think_img`;
CREATE TABLE `think_img`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `type` int(8) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_img
-- ----------------------------
INSERT INTO `think_img` VALUES (15, '图片三', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524231116014&di=3a37a8f6c7887a81448549103b6d9fa2&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F9345d688d43f879407215583d71b0ef41ad53a44.jpg', 0);
INSERT INTO `think_img` VALUES (13, '图片一', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524231116018&di=b0a54dafc4b7cd6d05c9c12d543277ab&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2Ffc1f4134970a304e861184ddd3c8a786c9175ce1.jpg', 0);
INSERT INTO `think_img` VALUES (14, '图片二', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524231116016&di=e6e34cd3dab78dcefafc2698cf6cee6e&imgtype=0&src=http%3A%2F%2Fa.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F4610b912c8fcc3ce934a8b059145d688d43f2079.jpg', 0);
INSERT INTO `think_img` VALUES (16, '图片四', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524231116012&di=a90438e86a977945d6a5b2e525ad9033&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F9213b07eca80653877687a4a95dda144ac3482ed.jpg', 0);

-- ----------------------------
-- Table structure for think_order
-- ----------------------------
DROP TABLE IF EXISTS `think_order`;
CREATE TABLE `think_order`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '状态',
  `phone` bigint(13) NOT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `delete_time` int(11) NULL DEFAULT NULL,
  `rand` int(11) NULL DEFAULT NULL,
  `ip` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  `buyer_email` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '买家支付宝手机或邮箱',
  `buyer_id` bigint(20) NULL DEFAULT NULL COMMENT '买家支付宝唯一用户号',
  `total_fee` float NOT NULL COMMENT '交易金额',
  `body` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品描述',
  `subject` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品名称',
  `out_trade_no` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '唯一订单号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for think_shop
-- ----------------------------
DROP TABLE IF EXISTS `think_shop`;
CREATE TABLE `think_shop`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `lesson` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `address` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `product` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `label` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `price` float NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '状态',
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  `delete_time` int(11) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `img` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL COMMENT '图片展示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 74 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_shop
-- ----------------------------
INSERT INTO `think_shop` VALUES (63, '0.0.0.0', '', 1, 'http://113.113.89.144/sohu/v1/TmP3o6I4fFcLfV9Dy4KDe8bA0e6Lq6WUW2EiTKw1lm47fFoGRMNiNw.mp4?k=va9now&p=XZxIWhoBoJ2svm1BqVPcNmsdytP&r=TmI20LscWOo3NMAcgSwgqK8lqps7g6eR5ey3T2x6DhdFqSKM089RPmN60SXSqTPGRDNsfhoioMycY&q=OpCGoKOyzSwWsSCG0pPAhWqDXpCGqK7AoSkyoLxdTLPWjpCAqSxdomX3oAOgzSwmqEONzSY&cip=14.215.240.2', '你好，我是灵梦\r\n', '东方', 0, 0, '博丽灵梦', 30, NULL, '这是一只野生的灵梦', 1524221392, 1524221663, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524231297742&di=d8d77547f01378a7eab10aaa78b88bc9&imgtype=0&src=http%3A%2F%2Fwww.jpgjpg.com%2Fwp-content%2Fuploads%2F2016%2F08%2F1-98.jpg');
INSERT INTO `think_shop` VALUES (64, '0.0.0.0', '', 2, 'http://113.113.89.149/sohu/v1/TmPC0EItRhcly4xvzTPV02vUD4P38FWGbT42WMK1lm47fFoGRMNiNw.mp4?k=6aI19r&p=XZxIWhoBoJ2svm1BqVPcNmsdytP&r=TmI20LscWOo3NMAcgSwgqK8lqps7g6eR5ey3T2x6DhdFqSKM089RPmN60SXSqTPGRDNsfhoioMycY&q=OpCChW7IWhodRD6XfJvSotE7ZD645GvsWDXOfF1HfJo2ZDv4WF1OWBetwm4cWhW4vmscWY&cip=14.215.240.2', '这是八云紫', '东方', 0.01, 0, '八云紫', 30, NULL, '这是一只萌哒哒的八云紫', 1524221828, 1524221828, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524231802394&di=791a12466ff1cde6509aafdf44aeb6a8&imgtype=0&src=http%3A%2F%2Fimg5q.duitang.com%2Fuploads%2Fitem%2F201503%2F12%2F20150312133855_CrcmH.jpeg');
INSERT INTO `think_shop` VALUES (65, '0.0.0.0', '', 3, 'http://113.113.89.144/sohu/v1/TmP3o6I4fFcLfV9Dy4KDe8bA0e6Lq6WUW2EiTKw1lm47fFoGRMNiNw.mp4?k=va9now&p=XZxIWhoBoJ2svm1BqVPcNmsdytP&r=TmI20LscWOo3NMAcgSwgqK8lqps7g6eR5ey3T2x6DhdFqSKM089RPmN60SXSqTPGRDNsfhoioMycY&q=OpCGoKOyzSwWsSCG0pPAhWqDXpCGqK7AoSkyoLxdTLPWjpCAqSxdomX3oAOgzSwmqEONzSY&cip=14.215.240.2', '这是时崎狂三', '约会大作战', 0.01, 0, '时崎狂三', 30, NULL, '这是一个野生的狂三', 1524221927, 1524221927, 'http://imgstore.cdn.sogou.com/app/a/100540002/792257.jpg');
INSERT INTO `think_shop` VALUES (66, '0.0.0.0', '', 4, 'http://113.113.89.144/sohu/v1/TmP3o6I4fFcLfV9Dy4KDe8bA0e6Lq6WUW2EiTKw1lm47fFoGRMNiNw.mp4?k=va9now&p=XZxIWhoBoJ2svm1BqVPcNmsdytP&r=TmI20LscWOo3NMAcgSwgqK8lqps7g6eR5ey3T2x6DhdFqSKM089RPmN60SXSqTPGRDNsfhoioMycY&q=OpCGoKOyzSwWsSCG0pPAhWqDXpCGqK7AoSkyoLxdTLPWjpCAqSxdomX3oAOgzSwmqEONzSY&cip=14.215.240.2', '这是公主', '约会大作战', 0.01, 0, '夜刀神十香', 30, NULL, '这是一个萌哒哒的十香', 1524222123, 1524222123, 'http://img01.sogoucdn.com/app/a/100540002/637930.jpg');
INSERT INTO `think_shop` VALUES (67, '0.0.0.0', '', 5, 'http://113.113.89.144/sohu/v1/TmP3o6I4fFcLfV9Dy4KDe8bA0e6Lq6WUW2EiTKw1lm47fFoGRMNiNw.mp4?k=va9now&p=XZxIWhoBoJ2svm1BqVPcNmsdytP&r=TmI20LscWOo3NMAcgSwgqK8lqps7g6eR5ey3T2x6DhdFqSKM089RPmN60SXSqTPGRDNsfhoioMycY&q=OpCGoKOyzSwWsSCG0pPAhWqDXpCGqK7AoSkyoLxdTLPWjpCAqSxdomX3oAOgzSwmqEONzSY&cip=14.215.240.2', '这是四糸乃', '约会大作战', 0, 0, '四糸乃', 30, NULL, '这是一只野生的四糸乃', 1524222331, 1524222347, 'http://i1.hdslb.com/bfs/archive/d30eddfc09617c9874e93c778e47822f7870028c.jpg');
INSERT INTO `think_shop` VALUES (68, '0.0.0.0', '', 6, 'http://113.113.89.144/sohu/v1/TmP3o6I4fFcLfV9Dy4KDe8bA0e6Lq6WUW2EiTKw1lm47fFoGRMNiNw.mp4?k=va9now&p=XZxIWhoBoJ2svm1BqVPcNmsdytP&r=TmI20LscWOo3NMAcgSwgqK8lqps7g6eR5ey3T2x6DhdFqSKM089RPmN60SXSqTPGRDNsfhoioMycY&q=OpCGoKOyzSwWsSCG0pPAhWqDXpCGqK7AoSkyoLxdTLPWjpCAqSxdomX3oAOgzSwmqEONzSY&cip=14.215.240.2', '这是saber', 'fate', 0.01, 0, 'saber', 30, NULL, '这是一个野生的saber', 1524222642, 1524222642, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524232676223&di=8ade807948987b59406c318667b8a631&imgtype=0&src=http%3A%2F%2Fpic2.16pic.com%2F00%2F48%2F50%2F16pic_4850341_b.jpg');
INSERT INTO `think_shop` VALUES (69, '0.0.0.0', '', 7, 'http://113.113.89.144/sohu/v1/TmP3o6I4fFcLfV9Dy4KDe8bA0e6Lq6WUW2EiTKw1lm47fFoGRMNiNw.mp4?k=va9now&p=XZxIWhoBoJ2svm1BqVPcNmsdytP&r=TmI20LscWOo3NMAcgSwgqK8lqps7g6eR5ey3T2x6DhdFqSKM089RPmN60SXSqTPGRDNsfhoioMycY&q=OpCGoKOyzSwWsSCG0pPAhWqDXpCGqK7AoSkyoLxdTLPWjpCAqSxdomX3oAOgzSwmqEONzSY&cip=14.215.240.2', '这是金闪闪', 'fate', 0, 0, '金闪闪', 30, NULL, '野生的金闪闪', 1524222709, 1524222709, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524232742975&di=77f6acf651a533d7ae79499b05611444&imgtype=0&src=http%3A%2F%2Fg.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2Fe61190ef76c6a7ef9821ad56fbfaaf51f3de66be.jpg');
INSERT INTO `think_shop` VALUES (70, '0.0.0.0', '', 8, 'http://113.113.89.144/sohu/v1/TmP3o6I4fFcLfV9Dy4KDe8bA0e6Lq6WUW2EiTKw1lm47fFoGRMNiNw.mp4?k=va9now&p=XZxIWhoBoJ2svm1BqVPcNmsdytP&r=TmI20LscWOo3NMAcgSwgqK8lqps7g6eR5ey3T2x6DhdFqSKM089RPmN60SXSqTPGRDNsfhoioMycY&q=OpCGoKOyzSwWsSCG0pPAhWqDXpCGqK7AoSkyoLxdTLPWjpCAqSxdomX3oAOgzSwmqEONzSY&cip=14.215.240.2', '这是红a', 'fate', 0, 0, '红a', 30, NULL, '自古弓兵多挂壁', 1524222809, 1524222809, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524232844516&di=3ece02754e9f3a5ca479f4dd8a9c785a&imgtype=0&src=http%3A%2F%2Fi2.hdslb.com%2Fbfs%2Farchive%2Fd76c24f02259e5b95ab5de396ef1844e91eb33f6.jpg');
INSERT INTO `think_shop` VALUES (71, '0.0.0.0', '', 9, 'http://113.113.89.144/sohu/v1/TmP3o6I4fFcLfV9Dy4KDe8bA0e6Lq6WUW2EiTKw1lm47fFoGRMNiNw.mp4?k=va9now&p=XZxIWhoBoJ2svm1BqVPcNmsdytP&r=TmI20LscWOo3NMAcgSwgqK8lqps7g6eR5ey3T2x6DhdFqSKM089RPmN60SXSqTPGRDNsfhoioMycY&q=OpCGoKOyzSwWsSCG0pPAhWqDXpCGqK7AoSkyoLxdTLPWjpCAqSxdomX3oAOgzSwmqEONzSY&cip=14.215.240.2', '这是贞德', 'fate', 0, 0, '贞德', 30, NULL, '萌哒哒的贞德', 1524222905, 1524222905, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524232951305&di=670915ebb04ad9e486b73b65c7643cee&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F25461b0c28967217b1da7edf27b18f154634ec5c.jpg');
INSERT INTO `think_shop` VALUES (72, '0.0.0.0', '', 10, 'http://113.113.89.144/sohu/v1/TmP3o6I4fFcLfV9Dy4KDe8bA0e6Lq6WUW2EiTKw1lm47fFoGRMNiNw.mp4?k=va9now&p=XZxIWhoBoJ2svm1BqVPcNmsdytP&r=TmI20LscWOo3NMAcgSwgqK8lqps7g6eR5ey3T2x6DhdFqSKM089RPmN60SXSqTPGRDNsfhoioMycY&q=OpCGoKOyzSwWsSCG0pPAhWqDXpCGqK7AoSkyoLxdTLPWjpCAqSxdomX3oAOgzSwmqEONzSY&cip=14.215.240.2', '这是未来', '境界的彼方', 0.01, 0, '栗山未来', 30, NULL, '没有未来的未来不是我想要的未来', 1524223078, 1524223078, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524233101976&di=a15f1fe3a98a747cca09505f6074ddec&imgtype=0&src=http%3A%2F%2Fp4.gexing.com%2FG1%2FM00%2F6D%2FB1%2FrBACFFRvKEqgDkolAAJSGnFi8nE842.jpg');
INSERT INTO `think_shop` VALUES (73, '0.0.0.0', '', 11, 'http://113.113.89.144/sohu/v1/TmP3o6I4fFcLfV9Dy4KDe8bA0e6Lq6WUW2EiTKw1lm47fFoGRMNiNw.mp4?k=va9now&p=XZxIWhoBoJ2svm1BqVPcNmsdytP&r=TmI20LscWOo3NMAcgSwgqK8lqps7g6eR5ey3T2x6DhdFqSKM089RPmN60SXSqTPGRDNsfhoioMycY&q=OpCGoKOyzSwWsSCG0pPAhWqDXpCGqK7AoSkyoLxdTLPWjpCAqSxdomX3oAOgzSwmqEONzSY&cip=14.215.240.2', '这是鲁鲁修', '鲁鲁修', 0.01, 0, '鲁鲁修', 30, NULL, '野生的鲁鲁修', 1524223152, 1524223152, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524233191002&di=204e2facc6d0edc7dcb11dc4acc454c6&imgtype=0&src=http%3A%2F%2Fimg3.100bt.com%2Fupload%2Fttq%2F20121225%2F1356437231912.jpg');

-- ----------------------------
-- Table structure for think_user
-- ----------------------------
DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '状态',
  `phone` bigint(13) NOT NULL,
  `age` int(11) NOT NULL,
  `delete_time` int(11) NULL DEFAULT NULL,
  `rand` int(11) NOT NULL,
  `ip` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `phone`(`phone`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_user
-- ----------------------------
INSERT INTO `think_user` VALUES (58, '15625788691', 0, 15625788691, 20, NULL, 2271, '0.0.0.0', 1511254005, 1511254005);
INSERT INTO `think_user` VALUES (59, '0.0.0.0', 0, 111, 20, NULL, 222, '0.0.0.0', 1522943465, 1522943465);
INSERT INTO `think_user` VALUES (60, '113.105.128.250', 0, 222, 20, NULL, 222, '113.105.128.250', 1523876934, 1523876934);
INSERT INTO `think_user` VALUES (61, '14.215.240.3', 0, 156225788691, 20, NULL, 0, '14.215.240.3', 1523887761, 1523887761);
INSERT INTO `think_user` VALUES (62, '0.0.0.0', 0, 111111111111, 20, NULL, 1111, '0.0.0.0', 1524220502, 1524220502);
INSERT INTO `think_user` VALUES (63, '0.0.0.0', 0, 22222, 20, NULL, 222, '0.0.0.0', 1524220511, 1524220511);

-- ----------------------------
-- Table structure for think_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `think_userinfo`;
CREATE TABLE `think_userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_userinfo
-- ----------------------------
INSERT INTO `think_userinfo` VALUES (1, '1111111');
INSERT INTO `think_userinfo` VALUES (2, '2222');
INSERT INTO `think_userinfo` VALUES (3, '1111111');
INSERT INTO `think_userinfo` VALUES (4, '2222');

SET FOREIGN_KEY_CHECKS = 1;
