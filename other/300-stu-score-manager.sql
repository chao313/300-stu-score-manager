/*
 Navicat Premium Data Transfer

 Source Server         : mysql_local
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : 300-stu-score-manager

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 06/05/2021 16:47:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sp_admin
-- ----------------------------
DROP TABLE IF EXISTS `sp_admin`;
CREATE TABLE `sp_admin` (
  `admin_name` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `admin_pass` varchar(10) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sp_admin
-- ----------------------------
BEGIN;
INSERT INTO `sp_admin` VALUES ('校长', '0');
COMMIT;

-- ----------------------------
-- Table structure for sp_classes
-- ----------------------------
DROP TABLE IF EXISTS `sp_classes`;
CREATE TABLE `sp_classes` (
  `cs_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `cs_date` int(10) DEFAULT NULL,
  `delflag` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cs_class` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cs_adviser` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '班主任',
  PRIMARY KEY (`cs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sp_classes
-- ----------------------------
BEGIN;
INSERT INTO `sp_classes` VALUES ('G10017', 2021, '0', '1', 'T10004');
INSERT INTO `sp_classes` VALUES ('G10018', 2022, '0', '2', 'T10004');
INSERT INTO `sp_classes` VALUES ('G10021', 2021, '0', '2', 'T10005');
INSERT INTO `sp_classes` VALUES ('G10022', 2021, '0', '3', 'T10006');
INSERT INTO `sp_classes` VALUES ('G10023', 2021, '0', '4', 'T10004');
INSERT INTO `sp_classes` VALUES ('G10024', 2021, '0', '5', 'T10004');
INSERT INTO `sp_classes` VALUES ('G10025', 2021, '0', '6', 'T10004');
INSERT INTO `sp_classes` VALUES ('G10026', 2022, '0', '1', 'T10007');
INSERT INTO `sp_classes` VALUES ('G10027', 2022, '0', '3', 'T10006');
INSERT INTO `sp_classes` VALUES ('G10028', 2022, '0', '4', 'T10007');
INSERT INTO `sp_classes` VALUES ('G10029', 2022, '0', '5', 'T10004');
INSERT INTO `sp_classes` VALUES ('G10030', 2022, '0', '6', 'T10004');
INSERT INTO `sp_classes` VALUES ('G10031', 2020, '0', '1', 'T10006');
INSERT INTO `sp_classes` VALUES ('G10032', 2020, '0', '2', 'T10007');
INSERT INTO `sp_classes` VALUES ('G10033', 2020, '0', '3', 'T10006');
INSERT INTO `sp_classes` VALUES ('G10034', 2020, '0', '4', 'T10006');
INSERT INTO `sp_classes` VALUES ('G10035', 2020, '0', '5', 'T10008');
INSERT INTO `sp_classes` VALUES ('G10037', 2020, '0', '6', 'T10006');
COMMIT;

-- ----------------------------
-- Table structure for sp_course
-- ----------------------------
DROP TABLE IF EXISTS `sp_course`;
CREATE TABLE `sp_course` (
  `delflag` bit(1) DEFAULT NULL,
  `c_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `c_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sp_course
-- ----------------------------
BEGIN;
INSERT INTO `sp_course` VALUES (b'0', 'C10006', '语文');
INSERT INTO `sp_course` VALUES (b'0', 'C10007', '数学');
INSERT INTO `sp_course` VALUES (b'0', 'C10008', '英语');
INSERT INTO `sp_course` VALUES (b'0', 'C10009', '物理');
INSERT INTO `sp_course` VALUES (b'0', 'C10010', '化学');
INSERT INTO `sp_course` VALUES (b'0', 'C10011', '历史');
INSERT INTO `sp_course` VALUES (b'0', 'C10012', '政治');
INSERT INTO `sp_course` VALUES (b'0', 'C10013', '生物');
INSERT INTO `sp_course` VALUES (b'0', 'C10014', '计算机');
INSERT INTO `sp_course` VALUES (b'0', 'C10015', '音乐');
INSERT INTO `sp_course` VALUES (b'0', 'C10016', '体育');
COMMIT;

-- ----------------------------
-- Table structure for sp_ctc
-- ----------------------------
DROP TABLE IF EXISTS `sp_ctc`;
CREATE TABLE `sp_ctc` (
  `ctc_classid` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ctc_xueqi` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ctc_courseid` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ctc_teacherid` varchar(10) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sp_ctc
-- ----------------------------
BEGIN;
INSERT INTO `sp_ctc` VALUES ('G10017', '1', 'C10007', 'T10004');
INSERT INTO `sp_ctc` VALUES ('G10018', '1', 'C10007', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10018', '1', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10017', '1', 'C10006', 'T10004');
INSERT INTO `sp_ctc` VALUES ('G10018', '1', 'C10008', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10018', '1', 'C10009', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10018', '1', 'C10010', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10018', '1', 'C10011', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10018', '1', 'C10012', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10018', '1', 'C10013', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10018', '1', 'C10014', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10018', '1', 'C10015', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10018', '1', 'C10016', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10017', '2', 'C10006', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10017', '2', 'C10007', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10017', '2', 'C10008', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10017', '2', 'C10009', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10017', '2', 'C10010', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10017', '2', 'C10011', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10017', '2', 'C10012', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10017', '2', 'C10013', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10017', '2', 'C10014', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10017', '2', 'C10015', 'T10004');
INSERT INTO `sp_ctc` VALUES ('G10017', '2', 'C10016', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10018', '2', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10018', '2', 'C10007', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10018', '2', 'C10008', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10018', '2', 'C10009', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10018', '2', 'C10010', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10018', '2', 'C10011', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10018', '2', 'C10012', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10018', '2', 'C10013', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10018', '2', 'C10014', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10018', '2', 'C10015', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10018', '2', 'C10016', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10021', '1', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10021', '1', 'C10007', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10021', '1', 'C10008', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10021', '1', 'C10009', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10021', '1', 'C10010', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10021', '1', 'C10011', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10021', '1', 'C10012', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10021', '1', 'C10013', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10021', '1', 'C10014', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10021', '1', 'C10015', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10021', '1', 'C10016', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10022', '1', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10022', '1', 'C10007', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10022', '1', 'C10008', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10022', '1', 'C10009', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10022', '1', 'C10010', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10022', '1', 'C10011', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10022', '1', 'C10012', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10022', '1', 'C10013', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10022', '1', 'C10014', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10022', '1', 'C10015', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10022', '1', 'C10016', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10023', '1', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10023', '1', 'C10007', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10023', '1', 'C10008', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10023', '1', 'C10009', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10023', '1', 'C10010', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10023', '1', 'C10011', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10023', '1', 'C10012', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10023', '1', 'C10013', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10023', '1', 'C10014', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10023', '1', 'C10015', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10023', '1', 'C10016', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10024', '1', 'C10006', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10024', '1', 'C10007', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10024', '1', 'C10008', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10024', '1', 'C10009', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10024', '1', 'C10010', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10024', '1', 'C10011', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10024', '1', 'C10012', 'T10004');
INSERT INTO `sp_ctc` VALUES ('G10024', '1', 'C10013', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10024', '1', 'C10014', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10024', '1', 'C10015', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10024', '1', 'C10016', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10025', '1', 'C10006', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10025', '1', 'C10007', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10025', '1', 'C10008', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10025', '1', 'C10009', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10025', '1', 'C10010', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10025', '1', 'C10011', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10025', '1', 'C10012', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10025', '1', 'C10013', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10025', '1', 'C10014', 'T10004');
INSERT INTO `sp_ctc` VALUES ('G10025', '1', 'C10015', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10025', '1', 'C10016', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10026', '1', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10026', '1', 'C10007', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10026', '1', 'C10008', 'T10004');
INSERT INTO `sp_ctc` VALUES ('G10026', '1', 'C10009', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10026', '1', 'C10010', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10026', '1', 'C10011', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10026', '1', 'C10012', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10026', '1', 'C10013', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10026', '1', 'C10014', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10026', '1', 'C10015', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10026', '1', 'C10016', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10027', '1', 'C10006', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10027', '1', 'C10007', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10027', '1', 'C10008', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10027', '1', 'C10009', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10027', '1', 'C10010', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10027', '1', 'C10011', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10027', '1', 'C10012', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10027', '1', 'C10013', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10027', '1', 'C10014', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10027', '1', 'C10015', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10027', '1', 'C10016', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10028', '1', 'C10006', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10028', '1', 'C10007', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10028', '1', 'C10008', 'T10004');
INSERT INTO `sp_ctc` VALUES ('G10028', '1', 'C10009', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10028', '1', 'C10010', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10028', '1', 'C10011', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10028', '1', 'C10012', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10028', '1', 'C10013', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10028', '1', 'C10014', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10028', '1', 'C10015', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10028', '1', 'C10016', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10029', '1', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10029', '1', 'C10007', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10029', '1', 'C10008', 'T10004');
INSERT INTO `sp_ctc` VALUES ('G10029', '1', 'C10009', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10029', '1', 'C10010', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10029', '1', 'C10011', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10029', '1', 'C10012', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10029', '1', 'C10013', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10029', '1', 'C10014', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10029', '1', 'C10015', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10029', '1', 'C10016', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10030', '1', 'C10006', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10030', '1', 'C10007', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10030', '1', 'C10008', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10030', '1', 'C10009', 'T10004');
INSERT INTO `sp_ctc` VALUES ('G10030', '1', 'C10010', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10030', '1', 'C10011', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10030', '1', 'C10012', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10030', '1', 'C10013', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10030', '1', 'C10014', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10030', '1', 'C10015', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10030', '1', 'C10016', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10026', '2', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10026', '2', 'C10007', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10026', '2', 'C10008', 'T10009');
INSERT INTO `sp_ctc` VALUES ('G10026', '2', 'C10009', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10026', '2', 'C10010', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10026', '2', 'C10011', 'T10009');
INSERT INTO `sp_ctc` VALUES ('G10026', '2', 'C10012', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10026', '2', 'C10013', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10026', '2', 'C10014', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10026', '2', 'C10015', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10026', '2', 'C10016', 'T10010');
INSERT INTO `sp_ctc` VALUES ('G10026', '3', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10026', '3', 'C10007', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10026', '3', 'C10008', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10026', '3', 'C10009', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10026', '3', 'C10010', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10026', '3', 'C10011', 'T10009');
INSERT INTO `sp_ctc` VALUES ('G10026', '3', 'C10012', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10026', '3', 'C10013', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10026', '3', 'C10014', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10026', '3', 'C10015', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10026', '3', 'C10016', 'T10010');
INSERT INTO `sp_ctc` VALUES ('G10026', '4', 'C10006', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10026', '4', 'C10007', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10026', '4', 'C10008', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10026', '4', 'C10009', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10026', '4', 'C10010', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10026', '4', 'C10011', 'T10009');
INSERT INTO `sp_ctc` VALUES ('G10026', '4', 'C10012', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10026', '4', 'C10013', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10026', '4', 'C10014', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10026', '4', 'C10015', 'T10010');
INSERT INTO `sp_ctc` VALUES ('G10026', '4', 'C10016', 'T10010');
COMMIT;

-- ----------------------------
-- Table structure for sp_record
-- ----------------------------
DROP TABLE IF EXISTS `sp_record`;
CREATE TABLE `sp_record` (
  `id` int(10) DEFAULT NULL,
  `categorys` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sp_record
-- ----------------------------
BEGIN;
INSERT INTO `sp_record` VALUES (1, 'S', 38);
INSERT INTO `sp_record` VALUES (2, 'T', 10);
INSERT INTO `sp_record` VALUES (3, 'G', 37);
INSERT INTO `sp_record` VALUES (4, 'C', 16);
COMMIT;

-- ----------------------------
-- Table structure for sp_score_record
-- ----------------------------
DROP TABLE IF EXISTS `sp_score_record`;
CREATE TABLE `sp_score_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sr_stuid` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `sr_xueqi` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `sr_examtype` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `sr_courseid` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `sr_gradeid` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `sr_examtime` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `sr_score` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sp_score_record
-- ----------------------------
BEGIN;
INSERT INTO `sp_score_record` VALUES (1, '1', '1', '期中', 'C10007', 'G10018', '2021-03-06', '98.0');
INSERT INTO `sp_score_record` VALUES (2, '13', '1', '期中', 'C10007', 'G10018', '2021-03-06', '99.0');
INSERT INTO `sp_score_record` VALUES (3, '14', '1', '期中', 'C10007', 'G10018', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (4, '15', '1', '期中', 'C10007', 'G10018', '2021-03-06', '76.0');
INSERT INTO `sp_score_record` VALUES (5, '16', '1', '期中', 'C10007', 'G10018', '2021-03-06', '59.0');
INSERT INTO `sp_score_record` VALUES (6, '17', '1', '期中', 'C10007', 'G10018', '2021-03-06', '77.0');
INSERT INTO `sp_score_record` VALUES (7, '14', '1', '期中', 'C10007', 'G10018', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (8, '15', '1', '期中', 'C10007', 'G10018', '2021-03-06', '76.0');
INSERT INTO `sp_score_record` VALUES (9, '16', '1', '期中', 'C10007', 'G10018', '2021-03-06', '59.0');
INSERT INTO `sp_score_record` VALUES (10, '17', '1', '期中', 'C10007', 'G10018', '2021-03-06', '77.0');
INSERT INTO `sp_score_record` VALUES (11, '1', '1', '期中', 'C10006', 'G10018', '2021-03-06', '89.0');
INSERT INTO `sp_score_record` VALUES (12, '13', '1', '期中', 'C10006', 'G10018', '2021-03-06', '87.0');
INSERT INTO `sp_score_record` VALUES (13, '14', '1', '期中', 'C10006', 'G10018', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (14, '15', '1', '期中', 'C10006', 'G10018', '2021-03-06', '60.0');
INSERT INTO `sp_score_record` VALUES (15, '16', '1', '期中', 'C10006', 'G10018', '2021-03-06', '59.0');
INSERT INTO `sp_score_record` VALUES (16, '17', '1', '期中', 'C10006', 'G10018', '2021-03-06', '10.0');
INSERT INTO `sp_score_record` VALUES (17, '18', '1', '期中', 'C10007', 'G10017', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (18, '27', '1', '期中', 'C10006', 'G10026', '2021-03-06', '67.0');
INSERT INTO `sp_score_record` VALUES (19, '28', '1', '期中', 'C10006', 'G10026', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (20, '27', '1', '期中', 'C10007', 'G10026', '2021-03-06', '100.0');
INSERT INTO `sp_score_record` VALUES (21, '28', '1', '期中', 'C10007', 'G10026', '2021-03-06', '89.0');
INSERT INTO `sp_score_record` VALUES (22, '27', '1', '期中', 'C10008', 'G10026', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (23, '28', '1', '期中', 'C10008', 'G10026', '2021-03-06', '99.0');
INSERT INTO `sp_score_record` VALUES (24, '27', '1', '期中', 'C10009', 'G10026', '2021-03-06', '33.0');
INSERT INTO `sp_score_record` VALUES (25, '28', '1', '期中', 'C10009', 'G10026', '2021-03-06', '45.0');
INSERT INTO `sp_score_record` VALUES (26, '27', '1', '期中', 'C10010', 'G10026', '2021-03-06', '93.0');
INSERT INTO `sp_score_record` VALUES (27, '28', '1', '期中', 'C10010', 'G10026', '2021-03-06', '26.0');
INSERT INTO `sp_score_record` VALUES (28, '27', '1', '期中', 'C10011', 'G10026', '2021-03-06', '56.0');
INSERT INTO `sp_score_record` VALUES (29, '28', '1', '期中', 'C10011', 'G10026', '2021-03-06', '99.0');
INSERT INTO `sp_score_record` VALUES (30, '27', '1', '期中', 'C10012', 'G10026', '2021-03-06', '66.0');
INSERT INTO `sp_score_record` VALUES (31, '28', '1', '期中', 'C10012', 'G10026', '2021-03-06', '89.0');
INSERT INTO `sp_score_record` VALUES (32, '27', '1', '期中', 'C10013', 'G10026', '2021-03-06', '98.0');
INSERT INTO `sp_score_record` VALUES (33, '28', '1', '期中', 'C10013', 'G10026', '2021-03-06', '60.0');
INSERT INTO `sp_score_record` VALUES (34, '27', '1', '期中', 'C10014', 'G10026', '2021-03-06', '100.0');
INSERT INTO `sp_score_record` VALUES (35, '28', '1', '期中', 'C10014', 'G10026', '2021-03-06', '78.0');
INSERT INTO `sp_score_record` VALUES (36, '27', '1', '期中', 'C10015', 'G10026', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (37, '28', '1', '期中', 'C10015', 'G10026', '2021-03-06', '92.0');
INSERT INTO `sp_score_record` VALUES (38, '27', '1', '期中', 'C10016', 'G10026', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (39, '28', '1', '期中', 'C10016', 'G10026', '2021-03-06', '92.0');
INSERT INTO `sp_score_record` VALUES (40, '20', '1', '期中', 'C10006', 'G10027', '2021-03-06', '67.0');
INSERT INTO `sp_score_record` VALUES (41, '21', '1', '期中', 'C10006', 'G10027', '2021-03-06', '89.0');
INSERT INTO `sp_score_record` VALUES (42, '31', '1', '期中', 'C10006', 'G10026', '2021-03-06', '78.0');
INSERT INTO `sp_score_record` VALUES (43, '32', '1', '期中', 'C10006', 'G10026', '2021-03-06', '56.0');
INSERT INTO `sp_score_record` VALUES (44, '33', '1', '期中', 'C10006', 'G10026', '2021-03-06', '29.0');
INSERT INTO `sp_score_record` VALUES (45, '34', '1', '期中', 'C10006', 'G10026', '2021-03-06', '99.0');
INSERT INTO `sp_score_record` VALUES (46, '35', '1', '期中', 'C10006', 'G10026', '2021-03-06', '20.0');
INSERT INTO `sp_score_record` VALUES (47, '36', '1', '期中', 'C10006', 'G10026', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (48, '37', '1', '期中', 'C10006', 'G10026', '2021-03-06', '78.0');
INSERT INTO `sp_score_record` VALUES (49, '38', '1', '期中', 'C10006', 'G10026', '2021-03-06', '86.0');
INSERT INTO `sp_score_record` VALUES (50, '31', '1', '期中', 'C10007', 'G10026', '2021-03-06', '67.0');
INSERT INTO `sp_score_record` VALUES (51, '32', '1', '期中', 'C10007', 'G10026', '2021-03-06', '92.0');
INSERT INTO `sp_score_record` VALUES (52, '33', '1', '期中', 'C10007', 'G10026', '2021-03-06', '98.0');
INSERT INTO `sp_score_record` VALUES (53, '34', '1', '期中', 'C10007', 'G10026', '2021-03-06', '89.0');
INSERT INTO `sp_score_record` VALUES (54, '35', '1', '期中', 'C10007', 'G10026', '2021-03-06', '78.0');
INSERT INTO `sp_score_record` VALUES (55, '36', '1', '期中', 'C10007', 'G10026', '2021-03-06', '65.0');
INSERT INTO `sp_score_record` VALUES (56, '37', '1', '期中', 'C10007', 'G10026', '2021-03-06', '21.0');
INSERT INTO `sp_score_record` VALUES (57, '38', '1', '期中', 'C10007', 'G10026', '2021-03-06', '60.0');
INSERT INTO `sp_score_record` VALUES (58, '31', '1', '期中', 'C10008', 'G10026', '2021-03-06', '45.0');
INSERT INTO `sp_score_record` VALUES (59, '32', '1', '期中', 'C10008', 'G10026', '2021-03-06', '45.0');
INSERT INTO `sp_score_record` VALUES (60, '33', '1', '期中', 'C10008', 'G10026', '2021-03-06', '98.0');
INSERT INTO `sp_score_record` VALUES (61, '34', '1', '期中', 'C10008', 'G10026', '2021-03-06', '56.0');
INSERT INTO `sp_score_record` VALUES (62, '35', '1', '期中', 'C10008', 'G10026', '2021-03-06', '77.0');
INSERT INTO `sp_score_record` VALUES (63, '36', '1', '期中', 'C10008', 'G10026', '2021-03-06', '65.0');
INSERT INTO `sp_score_record` VALUES (64, '37', '1', '期中', 'C10008', 'G10026', '2021-03-06', '82.0');
INSERT INTO `sp_score_record` VALUES (65, '38', '1', '期中', 'C10008', 'G10026', '2021-03-06', '92.0');
INSERT INTO `sp_score_record` VALUES (66, '31', '1', '期中', 'C10009', 'G10026', '2021-03-06', '56.0');
INSERT INTO `sp_score_record` VALUES (67, '32', '1', '期中', 'C10009', 'G10026', '2021-03-06', '62.0');
INSERT INTO `sp_score_record` VALUES (68, '33', '1', '期中', 'C10009', 'G10026', '2021-03-06', '43.0');
INSERT INTO `sp_score_record` VALUES (69, '34', '1', '期中', 'C10009', 'G10026', '2021-03-06', '21.0');
INSERT INTO `sp_score_record` VALUES (70, '35', '1', '期中', 'C10009', 'G10026', '2021-03-06', '67.0');
INSERT INTO `sp_score_record` VALUES (71, '36', '1', '期中', 'C10009', 'G10026', '2021-03-06', '72.0');
INSERT INTO `sp_score_record` VALUES (72, '37', '1', '期中', 'C10009', 'G10026', '2021-03-06', '59.0');
INSERT INTO `sp_score_record` VALUES (73, '38', '1', '期中', 'C10009', 'G10026', '2021-03-06', '83.0');
INSERT INTO `sp_score_record` VALUES (74, '31', '1', '期中', 'C10010', 'G10026', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (75, '32', '1', '期中', 'C10010', 'G10026', '2021-03-06', '98.0');
INSERT INTO `sp_score_record` VALUES (76, '33', '1', '期中', 'C10010', 'G10026', '2021-03-06', '92.0');
INSERT INTO `sp_score_record` VALUES (77, '34', '1', '期中', 'C10010', 'G10026', '2021-03-06', '56.0');
INSERT INTO `sp_score_record` VALUES (78, '35', '1', '期中', 'C10010', 'G10026', '2021-03-06', '78.0');
INSERT INTO `sp_score_record` VALUES (79, '36', '1', '期中', 'C10010', 'G10026', '2021-03-06', '72.0');
INSERT INTO `sp_score_record` VALUES (80, '37', '1', '期中', 'C10010', 'G10026', '2021-03-06', '74.0');
INSERT INTO `sp_score_record` VALUES (81, '38', '1', '期中', 'C10010', 'G10026', '2021-03-06', '87.0');
INSERT INTO `sp_score_record` VALUES (82, '31', '1', '期中', 'C10011', 'G10026', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (83, '32', '1', '期中', 'C10011', 'G10026', '2021-03-06', '76.0');
INSERT INTO `sp_score_record` VALUES (84, '33', '1', '期中', 'C10011', 'G10026', '2021-03-06', '87.0');
INSERT INTO `sp_score_record` VALUES (85, '34', '1', '期中', 'C10011', 'G10026', '2021-03-06', '92.0');
INSERT INTO `sp_score_record` VALUES (86, '35', '1', '期中', 'C10011', 'G10026', '2021-03-06', '76.0');
INSERT INTO `sp_score_record` VALUES (87, '36', '1', '期中', 'C10011', 'G10026', '2021-03-06', '78.0');
INSERT INTO `sp_score_record` VALUES (88, '37', '1', '期中', 'C10011', 'G10026', '2021-03-06', '47.0');
INSERT INTO `sp_score_record` VALUES (89, '38', '1', '期中', 'C10011', 'G10026', '2021-03-06', '82.0');
INSERT INTO `sp_score_record` VALUES (90, '31', '1', '期中', 'C10012', 'G10026', '2021-03-06', '45.0');
INSERT INTO `sp_score_record` VALUES (91, '32', '1', '期中', 'C10012', 'G10026', '2021-03-06', '67.0');
INSERT INTO `sp_score_record` VALUES (92, '33', '1', '期中', 'C10012', 'G10026', '2021-03-06', '78.0');
INSERT INTO `sp_score_record` VALUES (93, '34', '1', '期中', 'C10012', 'G10026', '2021-03-06', '82.0');
INSERT INTO `sp_score_record` VALUES (94, '35', '1', '期中', 'C10012', 'G10026', '2021-03-06', '47.0');
INSERT INTO `sp_score_record` VALUES (95, '36', '1', '期中', 'C10012', 'G10026', '2021-03-06', '98.0');
INSERT INTO `sp_score_record` VALUES (96, '37', '1', '期中', 'C10012', 'G10026', '2021-03-06', '56.0');
INSERT INTO `sp_score_record` VALUES (97, '38', '1', '期中', 'C10012', 'G10026', '2021-03-06', '77.0');
INSERT INTO `sp_score_record` VALUES (98, '31', '1', '期中', 'C10013', 'G10026', '2021-03-06', '77.0');
INSERT INTO `sp_score_record` VALUES (99, '32', '1', '期中', 'C10013', 'G10026', '2021-03-06', '92.0');
INSERT INTO `sp_score_record` VALUES (100, '33', '1', '期中', 'C10013', 'G10026', '2021-03-06', '95.0');
INSERT INTO `sp_score_record` VALUES (101, '34', '1', '期中', 'C10013', 'G10026', '2021-03-06', '94.0');
INSERT INTO `sp_score_record` VALUES (102, '35', '1', '期中', 'C10013', 'G10026', '2021-03-06', '73.0');
INSERT INTO `sp_score_record` VALUES (103, '36', '1', '期中', 'C10013', 'G10026', '2021-03-06', '56.0');
INSERT INTO `sp_score_record` VALUES (104, '37', '1', '期中', 'C10013', 'G10026', '2021-03-06', '66.0');
INSERT INTO `sp_score_record` VALUES (105, '38', '1', '期中', 'C10013', 'G10026', '2021-03-06', '37.0');
INSERT INTO `sp_score_record` VALUES (106, '31', '1', '期中', 'C10014', 'G10026', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (107, '32', '1', '期中', 'C10014', 'G10026', '2021-03-06', '99.0');
INSERT INTO `sp_score_record` VALUES (108, '33', '1', '期中', 'C10014', 'G10026', '2021-03-06', '78.0');
INSERT INTO `sp_score_record` VALUES (109, '34', '1', '期中', 'C10014', 'G10026', '2021-03-06', '93.0');
INSERT INTO `sp_score_record` VALUES (110, '35', '1', '期中', 'C10014', 'G10026', '2021-03-06', '73.0');
INSERT INTO `sp_score_record` VALUES (111, '36', '1', '期中', 'C10014', 'G10026', '2021-03-06', '68.0');
INSERT INTO `sp_score_record` VALUES (112, '37', '1', '期中', 'C10014', 'G10026', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (113, '38', '1', '期中', 'C10014', 'G10026', '2021-03-06', '92.0');
INSERT INTO `sp_score_record` VALUES (114, '31', '1', '期中', 'C10015', 'G10026', '2021-03-06', '77.0');
INSERT INTO `sp_score_record` VALUES (115, '32', '1', '期中', 'C10015', 'G10026', '2021-03-06', '75.0');
INSERT INTO `sp_score_record` VALUES (116, '33', '1', '期中', 'C10015', 'G10026', '2021-03-06', '78.0');
INSERT INTO `sp_score_record` VALUES (117, '34', '1', '期中', 'C10015', 'G10026', '2021-03-06', '82.0');
INSERT INTO `sp_score_record` VALUES (118, '35', '1', '期中', 'C10015', 'G10026', '2021-03-06', '85.0');
INSERT INTO `sp_score_record` VALUES (119, '36', '1', '期中', 'C10015', 'G10026', '2021-03-06', '92.0');
INSERT INTO `sp_score_record` VALUES (120, '37', '1', '期中', 'C10015', 'G10026', '2021-03-06', '100.0');
INSERT INTO `sp_score_record` VALUES (121, '38', '1', '期中', 'C10015', 'G10026', '2021-03-06', '56.0');
INSERT INTO `sp_score_record` VALUES (122, '31', '1', '期中', 'C10016', 'G10026', '2021-03-06', '88.0');
INSERT INTO `sp_score_record` VALUES (123, '32', '1', '期中', 'C10016', 'G10026', '2021-03-06', '82.0');
INSERT INTO `sp_score_record` VALUES (124, '33', '1', '期中', 'C10016', 'G10026', '2021-03-06', '45.0');
INSERT INTO `sp_score_record` VALUES (125, '34', '1', '期中', 'C10016', 'G10026', '2021-03-06', '60.0');
INSERT INTO `sp_score_record` VALUES (126, '35', '1', '期中', 'C10016', 'G10026', '2021-03-06', '94.0');
INSERT INTO `sp_score_record` VALUES (127, '36', '1', '期中', 'C10016', 'G10026', '2021-03-06', '65.0');
INSERT INTO `sp_score_record` VALUES (128, '37', '1', '期中', 'C10016', 'G10026', '2021-03-06', '78.0');
INSERT INTO `sp_score_record` VALUES (129, '38', '1', '期中', 'C10016', 'G10026', '2021-03-06', '83.0');
INSERT INTO `sp_score_record` VALUES (130, '27', '2', '期中', 'C10006', 'G10026', '2021-04-06', '78.0');
INSERT INTO `sp_score_record` VALUES (131, '27', '2', '期中', 'C10007', 'G10026', '2021-04-06', '29.0');
INSERT INTO `sp_score_record` VALUES (132, '27', '2', '期中', 'C10008', 'G10026', '2021-04-06', '99.0');
INSERT INTO `sp_score_record` VALUES (133, '27', '2', '期中', 'C10009', 'G10026', '2021-04-06', '54.0');
INSERT INTO `sp_score_record` VALUES (134, '27', '2', '期中', 'C10010', 'G10026', '2021-04-06', '56.0');
INSERT INTO `sp_score_record` VALUES (135, '27', '2', '期中', 'C10011', 'G10026', '2021-04-06', '88.0');
INSERT INTO `sp_score_record` VALUES (136, '27', '2', '期中', 'C10012', 'G10026', '2021-04-06', '67.0');
INSERT INTO `sp_score_record` VALUES (137, '27', '2', '期中', 'C10013', 'G10026', '2021-04-06', '68.0');
INSERT INTO `sp_score_record` VALUES (138, '27', '2', '期中', 'C10014', 'G10026', '2021-04-06', '77.0');
INSERT INTO `sp_score_record` VALUES (139, '27', '2', '期中', 'C10015', 'G10026', '2021-04-06', '92.0');
INSERT INTO `sp_score_record` VALUES (140, '27', '2', '期中', 'C10016', 'G10026', '2021-04-06', '78.0');
INSERT INTO `sp_score_record` VALUES (141, '27', '3', '期中', 'C10006', 'G10026', '2021-05-06', '88.0');
INSERT INTO `sp_score_record` VALUES (142, '27', '3', '期中', 'C10007', 'G10026', '2021-05-06', '76.0');
INSERT INTO `sp_score_record` VALUES (143, '27', '3', '期中', 'C10008', 'G10026', '2021-05-06', '98.0');
INSERT INTO `sp_score_record` VALUES (144, '27', '3', '期中', 'C10009', 'G10026', '2021-05-06', '70.0');
INSERT INTO `sp_score_record` VALUES (145, '27', '3', '期中', 'C10010', 'G10026', '2021-05-06', '98.0');
INSERT INTO `sp_score_record` VALUES (146, '27', '3', '期中', 'C10011', 'G10026', '2021-05-06', '67.0');
INSERT INTO `sp_score_record` VALUES (147, '27', '3', '期中', 'C10012', 'G10026', '2021-05-06', '87.0');
INSERT INTO `sp_score_record` VALUES (148, '27', '3', '期中', 'C10013', 'G10026', '2021-05-06', '68.0');
INSERT INTO `sp_score_record` VALUES (149, '27', '3', '期中', 'C10014', 'G10026', '2021-05-06', '59.0');
INSERT INTO `sp_score_record` VALUES (150, '27', '3', '期中', 'C10015', 'G10026', '2021-05-06', '76.0');
INSERT INTO `sp_score_record` VALUES (151, '27', '3', '期中', 'C10016', 'G10026', '2021-05-06', '98.0');
INSERT INTO `sp_score_record` VALUES (152, '27', '4', '期中', 'C10006', 'G10026', '2021-06-06', '99.0');
INSERT INTO `sp_score_record` VALUES (153, '27', '4', '期中', 'C10007', 'G10026', '2021-06-06', '98.0');
INSERT INTO `sp_score_record` VALUES (154, '27', '4', '期中', 'C10008', 'G10026', '2021-06-06', '87.0');
INSERT INTO `sp_score_record` VALUES (155, '27', '4', '期中', 'C10009', 'G10026', '2021-06-06', '48.0');
INSERT INTO `sp_score_record` VALUES (156, '27', '4', '期中', 'C10010', 'G10026', '2021-06-06', '96.0');
INSERT INTO `sp_score_record` VALUES (157, '27', '4', '期中', 'C10011', 'G10026', '2021-06-06', '66.0');
INSERT INTO `sp_score_record` VALUES (158, '27', '4', '期中', 'C10012', 'G10026', '2021-06-06', '77.0');
INSERT INTO `sp_score_record` VALUES (159, '27', '4', '期中', 'C10013', 'G10026', '2021-06-06', '78.0');
INSERT INTO `sp_score_record` VALUES (160, '27', '4', '期中', 'C10014', 'G10026', '2021-06-06', '76.0');
INSERT INTO `sp_score_record` VALUES (161, '27', '4', '期中', 'C10015', 'G10026', '2021-06-06', '69.0');
INSERT INTO `sp_score_record` VALUES (162, '27', '4', '期中', 'C10016', 'G10026', '2021-06-06', '56.0');
INSERT INTO `sp_score_record` VALUES (163, '18', '1', '期中', 'C10006', 'G10017', '2021-03-06', '91.0');
INSERT INTO `sp_score_record` VALUES (164, '28', '2', '期中', 'C10006', 'G10026', '2021-03-06', '98.0');
INSERT INTO `sp_score_record` VALUES (165, '31', '2', '期中', 'C10006', 'G10026', '2021-03-06', '99.0');
INSERT INTO `sp_score_record` VALUES (166, '32', '2', '期中', 'C10006', 'G10026', '2021-03-06', '57.0');
INSERT INTO `sp_score_record` VALUES (167, '33', '2', '期中', 'C10006', 'G10026', '2021-03-06', '79.0');
INSERT INTO `sp_score_record` VALUES (168, '34', '2', '期中', 'C10006', 'G10026', '2021-03-06', '60.0');
INSERT INTO `sp_score_record` VALUES (169, '35', '2', '期中', 'C10006', 'G10026', '2021-03-06', '61.0');
INSERT INTO `sp_score_record` VALUES (170, '36', '2', '期中', 'C10006', 'G10026', '2021-03-06', '65.0');
INSERT INTO `sp_score_record` VALUES (171, '28', '2', '期中', 'C10006', 'G10026', '2021-03-06', '98.0');
INSERT INTO `sp_score_record` VALUES (172, '37', '2', '期中', 'C10006', 'G10026', '2021-03-06', '78.0');
INSERT INTO `sp_score_record` VALUES (173, '31', '2', '期中', 'C10006', 'G10026', '2021-03-06', '99.0');
INSERT INTO `sp_score_record` VALUES (174, '38', '2', '期中', 'C10006', 'G10026', '2021-03-06', '59.0');
INSERT INTO `sp_score_record` VALUES (175, '32', '2', '期中', 'C10006', 'G10026', '2021-03-06', '57.0');
INSERT INTO `sp_score_record` VALUES (176, '33', '2', '期中', 'C10006', 'G10026', '2021-03-06', '79.0');
INSERT INTO `sp_score_record` VALUES (177, '34', '2', '期中', 'C10006', 'G10026', '2021-03-06', '60.0');
INSERT INTO `sp_score_record` VALUES (178, '35', '2', '期中', 'C10006', 'G10026', '2021-03-06', '61.0');
INSERT INTO `sp_score_record` VALUES (179, '36', '2', '期中', 'C10006', 'G10026', '2021-03-06', '65.0');
INSERT INTO `sp_score_record` VALUES (180, '37', '2', '期中', 'C10006', 'G10026', '2021-03-06', '78.0');
INSERT INTO `sp_score_record` VALUES (181, '38', '2', '期中', 'C10006', 'G10026', '2021-03-06', '59.0');
COMMIT;

-- ----------------------------
-- Table structure for sp_student
-- ----------------------------
DROP TABLE IF EXISTS `sp_student`;
CREATE TABLE `sp_student` (
  `s_id` int(10) NOT NULL,
  `delflag` bit(1) DEFAULT NULL,
  `s_name` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `s_pass` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `s_sex` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `s_idcard` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `s_address` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `s_nation` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `s_pol_stat` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `s_school_time` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `s_household` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `s_schoolmethod` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `s_class` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sp_student
-- ----------------------------
BEGIN;
INSERT INTO `sp_student` VALUES (1, b'0', '马小跳', '214737118', '男', '321322199401256658', '1', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10018');
INSERT INTO `sp_student` VALUES (13, b'0', '王同学', '41211201', '男', '321322199401256658', '1', '汉族', '中共党员', '2021-03-06', '农村', '走读生', 'G10018');
INSERT INTO `sp_student` VALUES (14, b'0', '陈笑', '1038613857', '女', '321322199401256658', '1', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10018');
INSERT INTO `sp_student` VALUES (15, b'0', '陈刚', '1106730685', '男', '321322199401256658', '1', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10018');
INSERT INTO `sp_student` VALUES (16, b'0', '陈露', '714794150', '女', '321322199401256658', '1', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10018');
INSERT INTO `sp_student` VALUES (17, b'0', '赵昊天', '1385750259', '男', '321322199401256658', '1', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10018');
INSERT INTO `sp_student` VALUES (18, b'0', '李良', '1764203713', '男', '321322199401256699', '江苏省南京市江宁区龙眠大道102号', '汉族', '其它', '2021-03-06', '城市', '寄宿生', 'G10017');
INSERT INTO `sp_student` VALUES (19, b'0', '王照', '1159789200', '男', '321322199401256128', '江苏省南京市江宁区龙眠大道103号', '汉族', '中共党员', '2019-11-20', '城市', '走读生', 'G10029');
INSERT INTO `sp_student` VALUES (20, b'0', '李刚刚', '1583916503', '男', '321322199401256675', '江苏省南京市江宁区龙眠大道104号', '汉族', '其它', '2021-03-08', '农村', '走读生', 'G10027');
INSERT INTO `sp_student` VALUES (21, b'0', '花小美', '1775381983', '男', '321322199401256677', '江苏省徐州市江宁区龙眠大道109号', '汉族', '无党派人士', '2021-03-06', '农村', '寄宿生', 'G10027');
INSERT INTO `sp_student` VALUES (22, b'0', '钱串串', '1002997093', '男', '321322199401256155', '江苏省南京市江宁区龙眠大道106号', '汉族', '其它', '2021-03-06', '城市', '走读生', 'G10028');
INSERT INTO `sp_student` VALUES (23, b'0', '王语嫣', '1750543515', '女', '321322199401256611', '江苏省南京市江宁区龙眠大道102号', '少数民族', '中共党员', '2021-03-06', '城市', '寄宿生', 'G10028');
INSERT INTO `sp_student` VALUES (24, b'0', '张帅', '1642090298', '男', '321322199401256600', '江苏省徐州市江宁区龙眠大道109号', '少数民族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10029');
INSERT INTO `sp_student` VALUES (25, b'0', '卢现', '824672818', '男', '321322199401256687', '江苏省南京市江宁区龙眠大道102号', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10030');
INSERT INTO `sp_student` VALUES (26, b'0', '海婷', '1445391665', '女', '321322199401256123', '江苏省南京市江宁区龙眠大道102号', '少数民族', '其它', '2021-03-06', '农村', '寄宿生', 'G10029');
INSERT INTO `sp_student` VALUES (27, b'0', '于晓', '1007006137', '男', '321322199401256658', '江苏省徐州市江宁区龙眠大道109号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10026');
INSERT INTO `sp_student` VALUES (28, b'0', '刘建军', '353717829', '男', '321322199401256633', '江苏省徐州市江宁区龙眠大道109号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10026');
INSERT INTO `sp_student` VALUES (29, b'0', '秦安', '1309296179', '男', '321322199401256609', '江苏省南京市江宁区龙眠大道104号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10030');
INSERT INTO `sp_student` VALUES (30, b'0', '温就', '385159970', '男', '321322199401256122', '江苏省南京市江宁区龙眠大道104号', '汉族', '其它', '2021-03-06', '城市', '寄宿生', 'G10030');
INSERT INTO `sp_student` VALUES (31, b'0', '魏媛媛', '1239711871', '女', '321322199401256622', '江苏省徐州市江宁区龙眠大道109号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10026');
INSERT INTO `sp_student` VALUES (32, b'0', '沈天天', '1366941163', '女', '321322199401256603', '江苏省南京市江宁区龙眠大道102号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10026');
INSERT INTO `sp_student` VALUES (33, b'0', '张汉', '712595994', '男', '321322199401256658', '江苏省徐州市江宁区龙眠大道109号', '少数民族', '其它', '2021-03-06', '农村', '寄宿生', 'G10026');
INSERT INTO `sp_student` VALUES (34, b'0', '马伟', '537904669', '男', '321322199401256624', '江苏省南京市江宁区龙眠大道102号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10026');
INSERT INTO `sp_student` VALUES (35, b'0', '秦丽丽', '155986929', '女', '321322199401256677', '江苏省徐州市江宁区龙眠大道109号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10026');
INSERT INTO `sp_student` VALUES (36, b'0', '孔欢欢', '1657600589', '女', '321322199401256651', '江苏省南京市江宁区龙眠大道102号', '少数民族', '其它', '2021-03-06', '农村', '寄宿生', 'G10026');
INSERT INTO `sp_student` VALUES (37, b'0', '高可', '1905568842', '男', '321322199401256671', '江苏省徐州市江宁区龙眠大道109号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10026');
INSERT INTO `sp_student` VALUES (38, b'0', '任然', '865623213', '女', '321322199401256652', '江苏省南京市江宁区龙眠大道103号', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10026');
COMMIT;

-- ----------------------------
-- Table structure for sp_teacher
-- ----------------------------
DROP TABLE IF EXISTS `sp_teacher`;
CREATE TABLE `sp_teacher` (
  `t_id` varchar(30) COLLATE utf8_bin NOT NULL,
  `delflag` bit(1) DEFAULT NULL,
  `t_name` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `t_pass` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `t_sex` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `t_nation` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `t_pol_stat` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `t_idcard` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `t_address` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `t_job_time` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `t_edu_bg` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `t_gra_ins` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `t_phone` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `t_course` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sp_teacher
-- ----------------------------
BEGIN;
INSERT INTO `sp_teacher` VALUES ('T10004', b'0', '111', '1048377517', '男', '汉族', '中共党员', '321322199401256658', '1', '2021-03-06', '专科', '1', '15618622161', NULL);
INSERT INTO `sp_teacher` VALUES ('T10005', b'0', '王老师', '258955531', '男', '汉族', '中共党员', '321322199401256658', '1', '2021-03-06', '研究生', '1', '15618622161', 'C10006');
INSERT INTO `sp_teacher` VALUES ('T10006', b'0', '张老师', '1231302490', '男', '汉族', '中共党员', '321322199401256658', '1', '2021-03-06', '博士生', '1', '15618622161', 'C10006');
INSERT INTO `sp_teacher` VALUES ('T10007', b'0', '陈老师', '884865592', '男', '汉族', '中共党员', '321322199401256123', '江苏省淮安市', '2021-03-06', '博士生', '南师大', '15601558765', 'C10007');
INSERT INTO `sp_teacher` VALUES ('T10008', b'0', '卢老师', '1693621460', '女', '汉族', '中共党员', '321322199401256699', '江苏省南京市', '2021-03-06', '研究生', '河海大学', '15618621254', 'C10007');
INSERT INTO `sp_teacher` VALUES ('T10009', b'0', '李老师', '1329324934', '男', '汉族', '中共党员', '321322199401256651', '江苏省淮安市', '2021-03-06', '博士生', '南师大', '15618622133', 'C10011');
INSERT INTO `sp_teacher` VALUES ('T10010', b'0', '韩老师', '279356190', '男', '汉族', '中共党员', '321322199401256653', '江苏省南京市', '2021-03-06', '研究生', '河海大学', '15618622133', 'C10016');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
