/*
 Navicat Premium Data Transfer

 Source Server         : auto
 Source Server Type    : MySQL
 Source Server Version : 50610
 Source Host           : localhost:3306
 Source Schema         : shejiao

 Target Server Type    : MySQL
 Target Server Version : 50610
 File Encoding         : 65001

 Date: 10/10/2021 23:05:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for advertising
-- ----------------------------
DROP TABLE IF EXISTS `advertising`;
CREATE TABLE `advertising`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `imgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `gopath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转跳地址',
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of advertising
-- ----------------------------

-- ----------------------------
-- Table structure for dataconfigs
-- ----------------------------
DROP TABLE IF EXISTS `dataconfigs`;
CREATE TABLE `dataconfigs`  (
  `did` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `indexgg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页顶部滚动',
  `indexb` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页底部代码',
  `fabugg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布页顶部公告',
  `sougg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '爱情来了顶部公告',
  `fnum` int(11) NULL DEFAULT NULL COMMENT '几秒发一次',
  `cnum` int(11) NULL DEFAULT NULL COMMENT '几秒查一次',
  `fmsg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '频繁发布提示语',
  `cmsg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '频繁查询提示语',
  `dcode` int(255) NULL DEFAULT NULL COMMENT '抽奖模式，0-地址，1-全站随机',
  `tcpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图床地址',
  `cjcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '抽奖卡密模式，0-不需要，1-需要',
  `kmpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卡密购买地址',
  `tcgg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '弹窗公告',
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系QQ',
  `ewmpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二维码生成地址，为空不生成',
  `fhpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '防红生成网址，为空不生成',
  `fcode` int(255) NULL DEFAULT NULL COMMENT '是否开启助力，0-全部关闭，1-全部打开，2-只开投放盲盒，3-只开抽奖盲盒',
  `fhcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模式\r\n0-普通链接\r\n1-防红短链接\r\n2-普通链接二维码\r\n3-防红链接二维码',
  `fdate` bigint(225) NULL DEFAULT NULL COMMENT '助力有效时间，时间戳',
  `tccode` int(255) NULL DEFAULT NULL COMMENT '是否开启抽奖必须投放',
  `crnum` int(255) NULL DEFAULT 0 COMMENT '抽奖助力人数',
  `trnum` int(255) NULL DEFAULT NULL COMMENT '投放助力人数',
  `yhxz` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户须知',
  `js` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '红娘介绍',
  `one1` int(255) NULL DEFAULT NULL COMMENT '一级分销',
  `one2` int(255) NULL DEFAULT NULL COMMENT '二级分销',
  `one3` int(255) NULL DEFAULT NULL COMMENT '三级分销',
  `fjj` double(255, 2) NULL DEFAULT NULL COMMENT '发布价格',
  `cjj` double(255, 2) NULL DEFAULT NULL COMMENT '抽奖价格',
  `hjj` double(255, 2) NULL DEFAULT NULL COMMENT '分销价格',
  `fuwupath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后端服务路径',
  `imgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片统一地址',
  `tfcode` int(255) NULL DEFAULT NULL COMMENT '是否开启卡密投放，0-免费投放，1-卡密投放',
  `img1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '男生头像',
  `img2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '男生头像',
  `notice` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页太弹窗公告',
  `bjimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '背景图片',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '站点名字',
  `nan` int(255) NULL DEFAULT 0,
  `nv` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dataconfigs
-- ----------------------------
INSERT INTO `dataconfigs` VALUES (77, '首页顶部公告', NULL, NULL, NULL, 1, 1, '发布频繁了~', '查询频繁了~', NULL, NULL, '0', NULL, NULL, '111', 'https://api.pwmqr.com/qrcode/create/?url=', NULL, NULL, '', NULL, 1, 0, NULL, '010101023455678', '01011撒高蛋白卡萨发货吧SV就恢复马萨戒不掉几会锁卡，打哈萨克，和巴萨卡的仨打的卡萨但是代码思密达是的撒多所大的  大是的是啊的阿萨德 阿萨德 ', 1, 1, 1, 0.01, 0.01, 0.01, 'http://156.233.26.27:5678', 'http://156.233.26.27/img/', 0, '/static/nan.png', '/static/nv.png', '测试弹窗公告<h1>HTML</h1>', 'https://api.uomg.com/api/rand.img2?sort=二次元&format=images', '盲盒', 10, 10);

-- ----------------------------
-- Table structure for help
-- ----------------------------
DROP TABLE IF EXISTS `help`;
CREATE TABLE `help`  (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '助力唯一标识',
  `km` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卡密',
  `type` int(255) NULL DEFAULT NULL COMMENT '助力类型',
  `num` int(11) NULL DEFAULT NULL COMMENT '需要人数',
  `code` int(255) NULL DEFAULT 0 COMMENT '助力状态，0-未结束，1-已结束',
  `adddate` bigint(20) NULL DEFAULT NULL COMMENT '添加时间',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of help
-- ----------------------------

-- ----------------------------
-- Table structure for helps
-- ----------------------------
DROP TABLE IF EXISTS `helps`;
CREATE TABLE `helps`  (
  `uuid` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '助力标识',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `adddaate` bigint(255) NULL DEFAULT NULL COMMENT '助力时间，时间戳'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of helps
-- ----------------------------

-- ----------------------------
-- Table structure for ipconfig
-- ----------------------------
DROP TABLE IF EXISTS `ipconfig`;
CREATE TABLE `ipconfig`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip地址',
  `adddate` bigint(20) NULL DEFAULT NULL COMMENT '时间，时间戳',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封禁原因',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ipconfig
-- ----------------------------

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `adddate` bigint(20) NULL DEFAULT NULL COMMENT '添加时间',
  `uid` int(11) NULL DEFAULT NULL COMMENT '关联用户',
  `type` int(255) NULL DEFAULT 0 COMMENT '类别，0-普通日志，1-收益日志',
  PRIMARY KEY (`lid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1585 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for mystery
-- ----------------------------
DROP TABLE IF EXISTS `mystery`;
CREATE TABLE `mystery`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人ip',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `sid` int(11) NULL DEFAULT NULL COMMENT '分类学校',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `sex` int(255) NULL DEFAULT NULL COMMENT '性别',
  `code` int(255) NULL DEFAULT 0 COMMENT '状态',
  `uuid` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '唯一标识',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `adddate` bigint(20) NULL DEFAULT NULL COMMENT '时间',
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq',
  `ms` int(255) NULL DEFAULT NULL COMMENT '模式',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户外键',
  `type` int(255) NULL DEFAULT NULL COMMENT '类型，0-微信，1-QQ',
  `num` int(11) NULL DEFAULT 0,
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'n' COMMENT '理论删除，y-删除，n-没删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mystery
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单状态，0-未支付',
  `out_trade_no` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `code` int(255) NULL DEFAULT 0 COMMENT '订单状态，0-未支付，1-已支付',
  `money` bigint(255) NULL DEFAULT NULL COMMENT '金额',
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名',
  `uid` int(11) NULL DEFAULT NULL COMMENT '发起用户，0-游客',
  `adddate` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 190 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for pays
-- ----------------------------
DROP TABLE IF EXISTS `pays`;
CREATE TABLE `pays`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pay_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网址',
  `pay_id` int(11) NULL DEFAULT NULL COMMENT 'id',
  `pay_keys` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '秘钥',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pays
-- ----------------------------

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校名字',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of school
-- ----------------------------

-- ----------------------------
-- Table structure for siberian
-- ----------------------------
DROP TABLE IF EXISTS `siberian`;
CREATE TABLE `siberian`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卡密',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '使用ip',
  `adddate` bigint(225) NULL DEFAULT NULL COMMENT '生成时间，时间戳',
  `num` int(11) NULL DEFAULT NULL COMMENT '使用次数',
  `type` int(255) NULL DEFAULT NULL COMMENT '使用类型，\r\n0-抽奖卡密，\r\n1-发布卡密',
  `code` int(255) NULL DEFAULT 0 COMMENT '状态，0-未使用，1-已使用',
  `updatedate` bigint(20) NULL DEFAULT NULL COMMENT '使用时间',
  `adduid` int(11) NULL DEFAULT NULL COMMENT '生成用户id',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 453 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of siberian
-- ----------------------------

-- ----------------------------
-- Table structure for slideshow
-- ----------------------------
DROP TABLE IF EXISTS `slideshow`;
CREATE TABLE `slideshow`  (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`lid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of slideshow
-- ----------------------------
INSERT INTO `slideshow` VALUES (3, '/static/img1.jpg', '/static/img1.jpg', '测试轮播地址');

-- ----------------------------
-- Table structure for tx
-- ----------------------------
DROP TABLE IF EXISTS `tx`;
CREATE TABLE `tx`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `phone` int(255) NULL DEFAULT NULL COMMENT '手机号',
  `money` double(255, 2) NULL DEFAULT NULL COMMENT '提现金额',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收款图',
  `type` int(255) NULL DEFAULT NULL COMMENT '提现方式，0-微信，1-支付宝，2-QQ',
  `uid` int(11) NULL DEFAULT NULL COMMENT '关联用户',
  `code` int(255) NULL DEFAULT 0 COMMENT '提现状态，0-待处理，1-已处理，2-已驳回',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原因',
  `adddate` bigint(20) NULL DEFAULT NULL COMMENT '提现时间',
  `updatedate` bigint(20) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tx
-- ----------------------------

-- ----------------------------
-- Table structure for tx_img
-- ----------------------------
DROP TABLE IF EXISTS `tx_img`;
CREATE TABLE `tx_img`  (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `uid` int(11) NULL DEFAULT NULL COMMENT 'uid',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tx_img
-- ----------------------------

-- ----------------------------
-- Table structure for u_m
-- ----------------------------
DROP TABLE IF EXISTS `u_m`;
CREATE TABLE `u_m`  (
  `mid` int(11) NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `adddate` bigint(20) NULL DEFAULT NULL,
  `wx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of u_m
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'yh' COMMENT '角色',
  `one1` int(255) NULL DEFAULT NULL COMMENT '1',
  `one2` int(255) NULL DEFAULT NULL COMMENT '2',
  `one3` int(255) NULL DEFAULT NULL COMMENT '3',
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系QQ',
  `money` bigint(255) NULL DEFAULT 0 COMMENT '余额，分',
  `adddate` bigint(20) NULL DEFAULT NULL COMMENT '注册时间',
  `code` int(255) NULL DEFAULT 1 COMMENT '状态',
  `moneyc` bigint(255) NULL DEFAULT 0 COMMENT '总收益',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '$2a$10$SrPi1HEJZzSag48gLLhuwe38GctwyaZiQA98d5hHrMAkb39E/fU.O', 'admin', NULL, NULL, NULL, '1772891600', 500, NULL, 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
