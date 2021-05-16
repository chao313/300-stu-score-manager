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

 Date: 16/05/2021 18:03:32
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
INSERT INTO `sp_admin` VALUES ('admin', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for sp_classes
-- ----------------------------
DROP TABLE IF EXISTS `sp_classes`;
CREATE TABLE `sp_classes` (
  `cs_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `cs_date` int(10) DEFAULT NULL COMMENT '年级',
  `delflag` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cs_class` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '班级编号',
  `cs_adviser` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '班主任',
  PRIMARY KEY (`cs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sp_classes
-- ----------------------------
BEGIN;
INSERT INTO `sp_classes` VALUES ('G10039', 2020, '0', '1', 'T10005');
INSERT INTO `sp_classes` VALUES ('G10040', 2019, '0', '1', 'T10005');
INSERT INTO `sp_classes` VALUES ('G10043', 2018, '0', '1', 'T10008');
INSERT INTO `sp_classes` VALUES ('G10044', 2017, '0', '1', 'T10005');
INSERT INTO `sp_classes` VALUES ('G10045', 2016, '0', '1', 'T10005');
COMMIT;

-- ----------------------------
-- Table structure for sp_course
-- ----------------------------
DROP TABLE IF EXISTS `sp_course`;
CREATE TABLE `sp_course` (
  `delflag` bit(1) DEFAULT NULL,
  `c_id` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '学科id',
  `c_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '学科名称',
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
INSERT INTO `sp_course` VALUES (b'0', 'C10014', '地理');
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
INSERT INTO `sp_ctc` VALUES ('G10039', '1', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '1', 'C10007', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10039', '1', 'C10008', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10039', '1', 'C10009', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '1', 'C10010', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '1', 'C10011', 'T10009');
INSERT INTO `sp_ctc` VALUES ('G10039', '1', 'C10012', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '1', 'C10013', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '1', 'C10014', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10040', '1', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10040', '1', 'C10007', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10040', '1', 'C10008', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10040', '1', 'C10009', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10040', '1', 'C10010', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10040', '1', 'C10011', 'T10009');
INSERT INTO `sp_ctc` VALUES ('G10040', '1', 'C10012', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10040', '1', 'C10013', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10040', '1', 'C10014', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10043', '1', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10043', '1', 'C10007', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10043', '1', 'C10008', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10043', '1', 'C10009', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10043', '1', 'C10010', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10043', '1', 'C10011', 'T10009');
INSERT INTO `sp_ctc` VALUES ('G10043', '1', 'C10012', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10043', '1', 'C10013', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10043', '1', 'C10014', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10039', '2', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '2', 'C10007', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10039', '2', 'C10008', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10039', '2', 'C10009', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '2', 'C10010', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '2', 'C10011', 'T10009');
INSERT INTO `sp_ctc` VALUES ('G10039', '2', 'C10012', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '2', 'C10013', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10039', '2', 'C10014', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '3', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '3', 'C10007', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10039', '3', 'C10008', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '3', 'C10009', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10039', '3', 'C10010', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '3', 'C10011', 'T10009');
INSERT INTO `sp_ctc` VALUES ('G10039', '3', 'C10012', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10039', '3', 'C10013', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10039', '3', 'C10014', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '4', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '4', 'C10007', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10039', '4', 'C10008', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10039', '4', 'C10009', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10039', '4', 'C10010', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '4', 'C10011', 'T10009');
INSERT INTO `sp_ctc` VALUES ('G10039', '4', 'C10012', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10039', '4', 'C10013', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '4', 'C10014', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '5', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '5', 'C10007', 'T10008');
INSERT INTO `sp_ctc` VALUES ('G10039', '5', 'C10008', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10039', '5', 'C10009', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10039', '5', 'C10010', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10039', '5', 'C10011', 'T10009');
INSERT INTO `sp_ctc` VALUES ('G10039', '5', 'C10012', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10039', '5', 'C10013', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '5', 'C10014', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '6', 'C10006', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '6', 'C10007', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10039', '6', 'C10008', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10039', '6', 'C10009', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10039', '6', 'C10010', 'T10005');
INSERT INTO `sp_ctc` VALUES ('G10039', '6', 'C10011', 'T10009');
INSERT INTO `sp_ctc` VALUES ('G10039', '6', 'C10012', 'T10007');
INSERT INTO `sp_ctc` VALUES ('G10039', '6', 'C10013', 'T10006');
INSERT INTO `sp_ctc` VALUES ('G10039', '6', 'C10014', 'T10005');
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
INSERT INTO `sp_record` VALUES (3, 'G', 45);
INSERT INTO `sp_record` VALUES (4, 'C', 16);
COMMIT;

-- ----------------------------
-- Table structure for sp_score_record
-- ----------------------------
DROP TABLE IF EXISTS `sp_score_record`;
CREATE TABLE `sp_score_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sr_stuid` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '学生id',
  `sr_xueqi` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '学期',
  `sr_examtype` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '考试类型',
  `sr_courseid` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '课程编号',
  `sr_gradeid` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '班级编号',
  `sr_examtime` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '考试时间',
  `sr_score` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '开始成绩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=799 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sp_score_record
-- ----------------------------
BEGIN;
INSERT INTO `sp_score_record` VALUES (223, '1', '1', '期中', 'C10006', 'G10039', '2020-01-24', '99.0');
INSERT INTO `sp_score_record` VALUES (224, '13', '1', '期中', 'C10006', 'G10039', '2020-01-24', '89.0');
INSERT INTO `sp_score_record` VALUES (225, '14', '1', '期中', 'C10006', 'G10039', '2020-01-24', '54.0');
INSERT INTO `sp_score_record` VALUES (226, '15', '1', '期中', 'C10006', 'G10039', '2020-01-24', '67.0');
INSERT INTO `sp_score_record` VALUES (227, '16', '1', '期中', 'C10006', 'G10039', '2020-01-24', '55.0');
INSERT INTO `sp_score_record` VALUES (228, '17', '1', '期中', 'C10006', 'G10039', '2020-01-24', '66.0');
INSERT INTO `sp_score_record` VALUES (229, '18', '1', '期中', 'C10006', 'G10039', '2020-01-24', '77.0');
INSERT INTO `sp_score_record` VALUES (230, '19', '1', '期中', 'C10006', 'G10039', '2020-01-24', '67.0');
INSERT INTO `sp_score_record` VALUES (231, '20', '1', '期中', 'C10006', 'G10039', '2020-01-24', '89.0');
INSERT INTO `sp_score_record` VALUES (232, '21', '1', '期中', 'C10006', 'G10040', '2021-05-16', '78.0');
INSERT INTO `sp_score_record` VALUES (233, '22', '1', '期中', 'C10006', 'G10040', '2021-05-16', '56.0');
INSERT INTO `sp_score_record` VALUES (234, '23', '1', '期中', 'C10006', 'G10040', '2021-05-16', '44.0');
INSERT INTO `sp_score_record` VALUES (235, '24', '1', '期中', 'C10006', 'G10040', '2021-05-16', '76.0');
INSERT INTO `sp_score_record` VALUES (236, '25', '1', '期中', 'C10006', 'G10040', '2021-05-16', '87.0');
INSERT INTO `sp_score_record` VALUES (237, '26', '1', '期中', 'C10006', 'G10040', '2021-05-16', '45.0');
INSERT INTO `sp_score_record` VALUES (238, '27', '1', '期中', 'C10006', 'G10040', '2021-05-16', '67.0');
INSERT INTO `sp_score_record` VALUES (239, '28', '1', '期中', 'C10006', 'G10040', '2021-05-16', '88.0');
INSERT INTO `sp_score_record` VALUES (240, '29', '1', '期中', 'C10006', 'G10040', '2021-05-16', '56.0');
INSERT INTO `sp_score_record` VALUES (241, '30', '1', '期中', 'C10006', 'G10043', '2021-05-16', '76.0');
INSERT INTO `sp_score_record` VALUES (242, '31', '1', '期中', 'C10006', 'G10043', '2021-05-16', '77.0');
INSERT INTO `sp_score_record` VALUES (243, '32', '1', '期中', 'C10006', 'G10043', '2021-05-16', '56.0');
INSERT INTO `sp_score_record` VALUES (244, '33', '1', '期中', 'C10006', 'G10043', '2021-05-16', '88.0');
INSERT INTO `sp_score_record` VALUES (245, '34', '1', '期中', 'C10006', 'G10043', '2021-05-16', '56.0');
INSERT INTO `sp_score_record` VALUES (246, '35', '1', '期中', 'C10006', 'G10043', '2021-05-16', '89.0');
INSERT INTO `sp_score_record` VALUES (247, '36', '1', '期中', 'C10006', 'G10043', '2021-05-16', '87.0');
INSERT INTO `sp_score_record` VALUES (248, '37', '1', '期中', 'C10006', 'G10043', '2021-05-16', '67.0');
INSERT INTO `sp_score_record` VALUES (249, '38', '1', '期中', 'C10006', 'G10043', '2021-05-16', '68.0');
INSERT INTO `sp_score_record` VALUES (250, '1', '1', '期中', 'C10007', 'G10039', '2020-01-24', '78.0');
INSERT INTO `sp_score_record` VALUES (251, '13', '1', '期中', 'C10007', 'G10039', '2020-01-24', '77.0');
INSERT INTO `sp_score_record` VALUES (252, '14', '1', '期中', 'C10007', 'G10039', '2020-01-24', '56.0');
INSERT INTO `sp_score_record` VALUES (253, '15', '1', '期中', 'C10007', 'G10039', '2020-01-24', '77.0');
INSERT INTO `sp_score_record` VALUES (254, '16', '1', '期中', 'C10007', 'G10039', '2020-01-24', '67.0');
INSERT INTO `sp_score_record` VALUES (255, '17', '1', '期中', 'C10007', 'G10039', '2020-01-24', '56.0');
INSERT INTO `sp_score_record` VALUES (256, '18', '1', '期中', 'C10007', 'G10039', '2020-01-24', '88.0');
INSERT INTO `sp_score_record` VALUES (257, '19', '1', '期中', 'C10007', 'G10039', '2020-01-24', '67.0');
INSERT INTO `sp_score_record` VALUES (258, '20', '1', '期中', 'C10007', 'G10039', '2020-01-24', '87.0');
INSERT INTO `sp_score_record` VALUES (259, '1', '1', '期中', 'C10008', 'G10039', '2020-01-24', '45.0');
INSERT INTO `sp_score_record` VALUES (260, '13', '1', '期中', 'C10008', 'G10039', '2020-01-24', '56.0');
INSERT INTO `sp_score_record` VALUES (261, '14', '1', '期中', 'C10008', 'G10039', '2020-01-24', '78.0');
INSERT INTO `sp_score_record` VALUES (262, '15', '1', '期中', 'C10008', 'G10039', '2020-01-24', '99.0');
INSERT INTO `sp_score_record` VALUES (263, '16', '1', '期中', 'C10008', 'G10039', '2020-01-24', '67.0');
INSERT INTO `sp_score_record` VALUES (264, '17', '1', '期中', 'C10008', 'G10039', '2020-01-24', '78.0');
INSERT INTO `sp_score_record` VALUES (265, '18', '1', '期中', 'C10008', 'G10039', '2020-01-24', '99.0');
INSERT INTO `sp_score_record` VALUES (266, '19', '1', '期中', 'C10008', 'G10039', '2020-01-24', '55.0');
INSERT INTO `sp_score_record` VALUES (267, '20', '1', '期中', 'C10008', 'G10039', '2020-01-24', '67.0');
INSERT INTO `sp_score_record` VALUES (268, '1', '1', '期中', 'C10009', 'G10039', '2020-01-24', '34.0');
INSERT INTO `sp_score_record` VALUES (269, '13', '1', '期中', 'C10009', 'G10039', '2020-01-24', '55.0');
INSERT INTO `sp_score_record` VALUES (270, '14', '1', '期中', 'C10009', 'G10039', '2020-01-24', '65.0');
INSERT INTO `sp_score_record` VALUES (271, '15', '1', '期中', 'C10009', 'G10039', '2020-01-24', '55.0');
INSERT INTO `sp_score_record` VALUES (272, '16', '1', '期中', 'C10009', 'G10039', '2020-01-24', '45.0');
INSERT INTO `sp_score_record` VALUES (273, '17', '1', '期中', 'C10009', 'G10039', '2020-01-24', '77.0');
INSERT INTO `sp_score_record` VALUES (274, '18', '1', '期中', 'C10009', 'G10039', '2020-01-24', '66.0');
INSERT INTO `sp_score_record` VALUES (275, '19', '1', '期中', 'C10009', 'G10039', '2020-01-24', '44.0');
INSERT INTO `sp_score_record` VALUES (276, '20', '1', '期中', 'C10009', 'G10039', '2020-01-24', '45.0');
INSERT INTO `sp_score_record` VALUES (277, '1', '1', '期中', 'C10010', 'G10039', '2020-01-24', '67.0');
INSERT INTO `sp_score_record` VALUES (278, '13', '1', '期中', 'C10010', 'G10039', '2020-01-24', '40.0');
INSERT INTO `sp_score_record` VALUES (279, '14', '1', '期中', 'C10010', 'G10039', '2020-01-24', '40.0');
INSERT INTO `sp_score_record` VALUES (280, '15', '1', '期中', 'C10010', 'G10039', '2020-01-24', '60.0');
INSERT INTO `sp_score_record` VALUES (281, '16', '1', '期中', 'C10010', 'G10039', '2020-01-24', '70.0');
INSERT INTO `sp_score_record` VALUES (282, '17', '1', '期中', 'C10010', 'G10039', '2020-01-24', '80.0');
INSERT INTO `sp_score_record` VALUES (283, '18', '1', '期中', 'C10010', 'G10039', '2020-01-24', '90.0');
INSERT INTO `sp_score_record` VALUES (284, '19', '1', '期中', 'C10010', 'G10039', '2020-01-24', '60.0');
INSERT INTO `sp_score_record` VALUES (285, '20', '1', '期中', 'C10010', 'G10039', '2020-01-24', '70.0');
INSERT INTO `sp_score_record` VALUES (286, '1', '1', '期中', 'C10011', 'G10039', '2020-01-24', '60.0');
INSERT INTO `sp_score_record` VALUES (287, '13', '1', '期中', 'C10011', 'G10039', '2020-01-24', '70.0');
INSERT INTO `sp_score_record` VALUES (288, '14', '1', '期中', 'C10011', 'G10039', '2020-01-24', '50.0');
INSERT INTO `sp_score_record` VALUES (289, '15', '1', '期中', 'C10011', 'G10039', '2020-01-24', '70.0');
INSERT INTO `sp_score_record` VALUES (290, '16', '1', '期中', 'C10011', 'G10039', '2020-01-24', '80.0');
INSERT INTO `sp_score_record` VALUES (291, '17', '1', '期中', 'C10011', 'G10039', '2020-01-24', '90.0');
INSERT INTO `sp_score_record` VALUES (292, '18', '1', '期中', 'C10011', 'G10039', '2020-01-24', '70.0');
INSERT INTO `sp_score_record` VALUES (293, '19', '1', '期中', 'C10011', 'G10039', '2020-01-24', '80.0');
INSERT INTO `sp_score_record` VALUES (294, '20', '1', '期中', 'C10011', 'G10039', '2020-01-24', '90.0');
INSERT INTO `sp_score_record` VALUES (295, '1', '1', '期中', 'C10012', 'G10039', '2020-01-24', '50.0');
INSERT INTO `sp_score_record` VALUES (296, '13', '1', '期中', 'C10012', 'G10039', '2020-01-24', '60.0');
INSERT INTO `sp_score_record` VALUES (297, '14', '1', '期中', 'C10012', 'G10039', '2020-01-24', '70.0');
INSERT INTO `sp_score_record` VALUES (298, '15', '1', '期中', 'C10012', 'G10039', '2020-01-24', '80.0');
INSERT INTO `sp_score_record` VALUES (299, '16', '1', '期中', 'C10012', 'G10039', '2020-01-24', '60.0');
INSERT INTO `sp_score_record` VALUES (300, '17', '1', '期中', 'C10012', 'G10039', '2020-01-24', '70.0');
INSERT INTO `sp_score_record` VALUES (301, '18', '1', '期中', 'C10012', 'G10039', '2020-01-24', '67.0');
INSERT INTO `sp_score_record` VALUES (302, '19', '1', '期中', 'C10012', 'G10039', '2020-01-24', '60.0');
INSERT INTO `sp_score_record` VALUES (303, '20', '1', '期中', 'C10012', 'G10039', '2020-01-24', '70.0');
INSERT INTO `sp_score_record` VALUES (304, '1', '1', '期中', 'C10013', 'G10039', '2020-01-24', '60.0');
INSERT INTO `sp_score_record` VALUES (305, '13', '1', '期中', 'C10013', 'G10039', '2020-01-24', '70.0');
INSERT INTO `sp_score_record` VALUES (306, '14', '1', '期中', 'C10013', 'G10039', '2020-01-24', '60.0');
INSERT INTO `sp_score_record` VALUES (307, '15', '1', '期中', 'C10013', 'G10039', '2020-01-24', '60.0');
INSERT INTO `sp_score_record` VALUES (308, '16', '1', '期中', 'C10013', 'G10039', '2020-01-24', '70.0');
INSERT INTO `sp_score_record` VALUES (309, '17', '1', '期中', 'C10013', 'G10039', '2020-01-24', '60.0');
INSERT INTO `sp_score_record` VALUES (310, '18', '1', '期中', 'C10013', 'G10039', '2020-01-24', '70.0');
INSERT INTO `sp_score_record` VALUES (311, '19', '1', '期中', 'C10013', 'G10039', '2020-01-24', '80.0');
INSERT INTO `sp_score_record` VALUES (312, '20', '1', '期中', 'C10013', 'G10039', '2020-01-24', '60.0');
INSERT INTO `sp_score_record` VALUES (313, '1', '1', '期中', 'C10014', 'G10039', '2020-01-24', '60.0');
INSERT INTO `sp_score_record` VALUES (314, '13', '1', '期中', 'C10014', 'G10039', '2020-01-24', '50.0');
INSERT INTO `sp_score_record` VALUES (315, '14', '1', '期中', 'C10014', 'G10039', '2020-01-24', '60.0');
INSERT INTO `sp_score_record` VALUES (316, '15', '1', '期中', 'C10014', 'G10039', '2020-01-24', '70.0');
INSERT INTO `sp_score_record` VALUES (317, '16', '1', '期中', 'C10014', 'G10039', '2020-01-24', '80.0');
INSERT INTO `sp_score_record` VALUES (318, '17', '1', '期中', 'C10014', 'G10039', '2020-01-24', '50.0');
INSERT INTO `sp_score_record` VALUES (319, '18', '1', '期中', 'C10014', 'G10039', '2020-01-24', '70.0');
INSERT INTO `sp_score_record` VALUES (320, '19', '1', '期中', 'C10014', 'G10039', '2020-01-24', '80.0');
INSERT INTO `sp_score_record` VALUES (321, '20', '1', '期中', 'C10014', 'G10039', '2020-01-24', '90.0');
INSERT INTO `sp_score_record` VALUES (322, '21', '1', '期中', 'C10007', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (323, '22', '1', '期中', 'C10007', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (324, '23', '1', '期中', 'C10007', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (325, '24', '1', '期中', 'C10007', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (326, '25', '1', '期中', 'C10007', 'G10040', '2021-05-16', '40.0');
INSERT INTO `sp_score_record` VALUES (327, '26', '1', '期中', 'C10007', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (328, '27', '1', '期中', 'C10007', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (329, '28', '1', '期中', 'C10007', 'G10040', '2021-05-16', '80.0');
INSERT INTO `sp_score_record` VALUES (330, '29', '1', '期中', 'C10007', 'G10040', '2021-05-16', '90.0');
INSERT INTO `sp_score_record` VALUES (331, '21', '1', '期中', 'C10008', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (332, '22', '1', '期中', 'C10008', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (333, '23', '1', '期中', 'C10008', 'G10040', '2021-05-16', '40.0');
INSERT INTO `sp_score_record` VALUES (334, '24', '1', '期中', 'C10008', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (335, '25', '1', '期中', 'C10008', 'G10040', '2021-05-16', '80.0');
INSERT INTO `sp_score_record` VALUES (336, '26', '1', '期中', 'C10008', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (337, '27', '1', '期中', 'C10008', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (338, '28', '1', '期中', 'C10008', 'G10040', '2021-05-16', '80.0');
INSERT INTO `sp_score_record` VALUES (339, '29', '1', '期中', 'C10008', 'G10040', '2021-05-16', '90.0');
INSERT INTO `sp_score_record` VALUES (340, '21', '1', '期中', 'C10009', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (341, '22', '1', '期中', 'C10009', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (342, '23', '1', '期中', 'C10009', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (343, '24', '1', '期中', 'C10009', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (344, '25', '1', '期中', 'C10009', 'G10040', '2021-05-16', '40.0');
INSERT INTO `sp_score_record` VALUES (345, '26', '1', '期中', 'C10009', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (346, '27', '1', '期中', 'C10009', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (347, '28', '1', '期中', 'C10009', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (348, '29', '1', '期中', 'C10009', 'G10040', '2021-05-16', '80.0');
INSERT INTO `sp_score_record` VALUES (349, '21', '1', '期中', 'C10010', 'G10040', '2021-05-16', '34.0');
INSERT INTO `sp_score_record` VALUES (350, '22', '1', '期中', 'C10010', 'G10040', '2021-05-16', '67.0');
INSERT INTO `sp_score_record` VALUES (351, '23', '1', '期中', 'C10010', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (352, '24', '1', '期中', 'C10010', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (353, '25', '1', '期中', 'C10010', 'G10040', '2021-05-16', '66.0');
INSERT INTO `sp_score_record` VALUES (354, '26', '1', '期中', 'C10010', 'G10040', '2021-05-16', '77.0');
INSERT INTO `sp_score_record` VALUES (355, '27', '1', '期中', 'C10010', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (356, '28', '1', '期中', 'C10010', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (357, '29', '1', '期中', 'C10010', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (358, '21', '1', '期中', 'C10011', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (359, '22', '1', '期中', 'C10011', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (360, '23', '1', '期中', 'C10011', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (361, '24', '1', '期中', 'C10011', 'G10040', '2021-05-16', '40.0');
INSERT INTO `sp_score_record` VALUES (362, '25', '1', '期中', 'C10011', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (363, '26', '1', '期中', 'C10011', 'G10040', '2021-05-16', '80.0');
INSERT INTO `sp_score_record` VALUES (364, '27', '1', '期中', 'C10011', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (365, '28', '1', '期中', 'C10011', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (366, '29', '1', '期中', 'C10011', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (367, '21', '1', '期中', 'C10012', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (368, '22', '1', '期中', 'C10012', 'G10040', '2021-05-16', '30.0');
INSERT INTO `sp_score_record` VALUES (369, '23', '1', '期中', 'C10012', 'G10040', '2021-05-16', '40.0');
INSERT INTO `sp_score_record` VALUES (370, '24', '1', '期中', 'C10012', 'G10040', '2021-05-16', '66.0');
INSERT INTO `sp_score_record` VALUES (371, '25', '1', '期中', 'C10012', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (372, '26', '1', '期中', 'C10012', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (373, '27', '1', '期中', 'C10012', 'G10040', '2021-05-16', '80.0');
INSERT INTO `sp_score_record` VALUES (374, '28', '1', '期中', 'C10012', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (375, '29', '1', '期中', 'C10012', 'G10040', '2021-05-16', '80.0');
INSERT INTO `sp_score_record` VALUES (376, '21', '1', '期中', 'C10013', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (377, '22', '1', '期中', 'C10013', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (378, '23', '1', '期中', 'C10013', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (379, '24', '1', '期中', 'C10013', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (380, '25', '1', '期中', 'C10013', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (381, '26', '1', '期中', 'C10013', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (382, '27', '1', '期中', 'C10013', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (383, '28', '1', '期中', 'C10013', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (384, '29', '1', '期中', 'C10013', 'G10040', '2021-05-16', '40.0');
INSERT INTO `sp_score_record` VALUES (385, '21', '1', '期中', 'C10014', 'G10040', '2021-05-16', '50.0');
INSERT INTO `sp_score_record` VALUES (386, '22', '1', '期中', 'C10014', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (387, '23', '1', '期中', 'C10014', 'G10040', '2021-05-16', '60.0');
INSERT INTO `sp_score_record` VALUES (388, '24', '1', '期中', 'C10014', 'G10040', '2021-05-16', '80.0');
INSERT INTO `sp_score_record` VALUES (389, '25', '1', '期中', 'C10014', 'G10040', '2021-05-16', '90.0');
INSERT INTO `sp_score_record` VALUES (390, '26', '1', '期中', 'C10014', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (391, '27', '1', '期中', 'C10014', 'G10040', '2021-05-16', '70.0');
INSERT INTO `sp_score_record` VALUES (392, '28', '1', '期中', 'C10014', 'G10040', '2021-05-16', '77.0');
INSERT INTO `sp_score_record` VALUES (393, '29', '1', '期中', 'C10014', 'G10040', '2021-05-16', '67.0');
INSERT INTO `sp_score_record` VALUES (394, '1', '2', '期中', 'C10006', 'G10039', '2020-02-24', '89.0');
INSERT INTO `sp_score_record` VALUES (395, '13', '2', '期中', 'C10006', 'G10039', '2020-02-24', '98.0');
INSERT INTO `sp_score_record` VALUES (396, '14', '2', '期中', 'C10006', 'G10039', '2020-02-24', '8.0');
INSERT INTO `sp_score_record` VALUES (397, '15', '2', '期中', 'C10006', 'G10039', '2020-02-24', '99.0');
INSERT INTO `sp_score_record` VALUES (398, '16', '2', '期中', 'C10006', 'G10039', '2020-02-24', '88.0');
INSERT INTO `sp_score_record` VALUES (399, '17', '2', '期中', 'C10006', 'G10039', '2020-02-24', '88.0');
INSERT INTO `sp_score_record` VALUES (400, '18', '2', '期中', 'C10006', 'G10039', '2020-02-24', '89.0');
INSERT INTO `sp_score_record` VALUES (401, '19', '2', '期中', 'C10006', 'G10039', '2020-02-24', '89.0');
INSERT INTO `sp_score_record` VALUES (402, '20', '2', '期中', 'C10006', 'G10039', '2020-02-24', '90.0');
INSERT INTO `sp_score_record` VALUES (403, '1', '2', '期中', 'C10007', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (404, '13', '2', '期中', 'C10007', 'G10039', '2020-02-24', '88.0');
INSERT INTO `sp_score_record` VALUES (405, '14', '2', '期中', 'C10007', 'G10039', '2020-02-24', '98.0');
INSERT INTO `sp_score_record` VALUES (406, '15', '2', '期中', 'C10007', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (407, '16', '2', '期中', 'C10007', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (408, '17', '2', '期中', 'C10007', 'G10039', '2020-02-24', '99.0');
INSERT INTO `sp_score_record` VALUES (409, '18', '2', '期中', 'C10007', 'G10039', '2020-02-24', '98.0');
INSERT INTO `sp_score_record` VALUES (410, '19', '2', '期中', 'C10007', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (411, '20', '2', '期中', 'C10007', 'G10039', '2020-02-24', '88.0');
INSERT INTO `sp_score_record` VALUES (412, '1', '2', '期中', 'C10008', 'G10039', '2020-02-24', '87.0');
INSERT INTO `sp_score_record` VALUES (413, '13', '2', '期中', 'C10008', 'G10039', '2020-02-24', '87.0');
INSERT INTO `sp_score_record` VALUES (414, '14', '2', '期中', 'C10008', 'G10039', '2020-02-24', '89.0');
INSERT INTO `sp_score_record` VALUES (415, '15', '2', '期中', 'C10008', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (416, '16', '2', '期中', 'C10008', 'G10039', '2020-02-24', '97.0');
INSERT INTO `sp_score_record` VALUES (417, '17', '2', '期中', 'C10008', 'G10039', '2020-02-24', '87.0');
INSERT INTO `sp_score_record` VALUES (418, '18', '2', '期中', 'C10008', 'G10039', '2020-02-24', '76.0');
INSERT INTO `sp_score_record` VALUES (419, '19', '2', '期中', 'C10008', 'G10039', '2020-02-24', '87.0');
INSERT INTO `sp_score_record` VALUES (420, '20', '2', '期中', 'C10008', 'G10039', '2020-02-24', '67.0');
INSERT INTO `sp_score_record` VALUES (421, '1', '2', '期中', 'C10009', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (422, '13', '2', '期中', 'C10009', 'G10039', '2020-02-24', '56.0');
INSERT INTO `sp_score_record` VALUES (423, '14', '2', '期中', 'C10009', 'G10039', '2020-02-24', '87.0');
INSERT INTO `sp_score_record` VALUES (424, '15', '2', '期中', 'C10009', 'G10039', '2020-02-24', '89.0');
INSERT INTO `sp_score_record` VALUES (425, '16', '2', '期中', 'C10009', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (426, '17', '2', '期中', 'C10009', 'G10039', '2020-02-24', '87.0');
INSERT INTO `sp_score_record` VALUES (427, '18', '2', '期中', 'C10009', 'G10039', '2020-02-24', '67.0');
INSERT INTO `sp_score_record` VALUES (428, '19', '2', '期中', 'C10009', 'G10039', '2020-02-24', '87.0');
INSERT INTO `sp_score_record` VALUES (429, '20', '2', '期中', 'C10009', 'G10039', '2020-02-24', '67.0');
INSERT INTO `sp_score_record` VALUES (430, '1', '2', '期中', 'C10010', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (431, '13', '2', '期中', 'C10010', 'G10039', '2020-02-24', '67.0');
INSERT INTO `sp_score_record` VALUES (432, '14', '2', '期中', 'C10010', 'G10039', '2020-02-24', '76.0');
INSERT INTO `sp_score_record` VALUES (433, '15', '2', '期中', 'C10010', 'G10039', '2020-02-24', '89.0');
INSERT INTO `sp_score_record` VALUES (434, '16', '2', '期中', 'C10010', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (435, '17', '2', '期中', 'C10010', 'G10039', '2020-02-24', '77.0');
INSERT INTO `sp_score_record` VALUES (436, '18', '2', '期中', 'C10010', 'G10039', '2020-02-24', '88.0');
INSERT INTO `sp_score_record` VALUES (437, '19', '2', '期中', 'C10010', 'G10039', '2020-02-24', '67.0');
INSERT INTO `sp_score_record` VALUES (438, '20', '2', '期中', 'C10010', 'G10039', '2020-02-24', '77.0');
INSERT INTO `sp_score_record` VALUES (439, '1', '2', '期中', 'C10011', 'G10039', '2020-02-24', '67.0');
INSERT INTO `sp_score_record` VALUES (440, '13', '2', '期中', 'C10011', 'G10039', '2020-02-24', '98.0');
INSERT INTO `sp_score_record` VALUES (441, '14', '2', '期中', 'C10011', 'G10039', '2020-02-24', '77.0');
INSERT INTO `sp_score_record` VALUES (442, '15', '2', '期中', 'C10011', 'G10039', '2020-02-24', '67.0');
INSERT INTO `sp_score_record` VALUES (443, '16', '2', '期中', 'C10011', 'G10039', '2020-02-24', '88.0');
INSERT INTO `sp_score_record` VALUES (444, '17', '2', '期中', 'C10011', 'G10039', '2020-02-24', '77.0');
INSERT INTO `sp_score_record` VALUES (445, '18', '2', '期中', 'C10011', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (446, '19', '2', '期中', 'C10011', 'G10039', '2020-02-24', '77.0');
INSERT INTO `sp_score_record` VALUES (447, '20', '2', '期中', 'C10011', 'G10039', '2020-02-24', '88.0');
INSERT INTO `sp_score_record` VALUES (448, '1', '2', '期中', 'C10012', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (449, '13', '2', '期中', 'C10012', 'G10039', '2020-02-24', '87.0');
INSERT INTO `sp_score_record` VALUES (450, '14', '2', '期中', 'C10012', 'G10039', '2020-02-24', '87.0');
INSERT INTO `sp_score_record` VALUES (451, '15', '2', '期中', 'C10012', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (452, '16', '2', '期中', 'C10012', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (453, '17', '2', '期中', 'C10012', 'G10039', '2020-02-24', '98.0');
INSERT INTO `sp_score_record` VALUES (454, '18', '2', '期中', 'C10012', 'G10039', '2020-02-24', '77.0');
INSERT INTO `sp_score_record` VALUES (455, '19', '2', '期中', 'C10012', 'G10039', '2020-02-24', '67.0');
INSERT INTO `sp_score_record` VALUES (456, '20', '2', '期中', 'C10012', 'G10039', '2020-02-24', '77.0');
INSERT INTO `sp_score_record` VALUES (457, '1', '2', '期中', 'C10013', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (458, '13', '2', '期中', 'C10013', 'G10039', '2020-02-24', '89.0');
INSERT INTO `sp_score_record` VALUES (459, '14', '2', '期中', 'C10013', 'G10039', '2020-02-24', '67.0');
INSERT INTO `sp_score_record` VALUES (460, '15', '2', '期中', 'C10013', 'G10039', '2020-02-24', '88.0');
INSERT INTO `sp_score_record` VALUES (461, '16', '2', '期中', 'C10013', 'G10039', '2020-02-24', '56.0');
INSERT INTO `sp_score_record` VALUES (462, '17', '2', '期中', 'C10013', 'G10039', '2020-02-24', '67.0');
INSERT INTO `sp_score_record` VALUES (463, '18', '2', '期中', 'C10013', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (464, '19', '2', '期中', 'C10013', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (465, '20', '2', '期中', 'C10013', 'G10039', '2020-02-24', '67.0');
INSERT INTO `sp_score_record` VALUES (466, '1', '2', '期中', 'C10014', 'G10039', '2020-02-24', '56.0');
INSERT INTO `sp_score_record` VALUES (467, '13', '2', '期中', 'C10014', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (468, '14', '2', '期中', 'C10014', 'G10039', '2020-02-24', '77.0');
INSERT INTO `sp_score_record` VALUES (469, '15', '2', '期中', 'C10014', 'G10039', '2020-02-24', '77.0');
INSERT INTO `sp_score_record` VALUES (470, '16', '2', '期中', 'C10014', 'G10039', '2020-02-24', '78.0');
INSERT INTO `sp_score_record` VALUES (471, '17', '2', '期中', 'C10014', 'G10039', '2020-02-24', '98.0');
INSERT INTO `sp_score_record` VALUES (472, '18', '2', '期中', 'C10014', 'G10039', '2020-02-24', '77.0');
INSERT INTO `sp_score_record` VALUES (473, '19', '2', '期中', 'C10014', 'G10039', '2020-02-24', '66.0');
INSERT INTO `sp_score_record` VALUES (474, '20', '2', '期中', 'C10014', 'G10039', '2020-02-24', '76.0');
INSERT INTO `sp_score_record` VALUES (475, '1', '3', '期中', 'C10006', 'G10039', '2020-03-24', '23.0');
INSERT INTO `sp_score_record` VALUES (476, '13', '3', '期中', 'C10006', 'G10039', '2020-03-24', '45.0');
INSERT INTO `sp_score_record` VALUES (477, '14', '3', '期中', 'C10006', 'G10039', '2020-03-24', '65.0');
INSERT INTO `sp_score_record` VALUES (478, '15', '3', '期中', 'C10006', 'G10039', '2020-03-24', '60.0');
INSERT INTO `sp_score_record` VALUES (479, '16', '3', '期中', 'C10006', 'G10039', '2020-03-24', '70.0');
INSERT INTO `sp_score_record` VALUES (480, '17', '3', '期中', 'C10006', 'G10039', '2020-03-24', '80.0');
INSERT INTO `sp_score_record` VALUES (481, '18', '3', '期中', 'C10006', 'G10039', '2020-03-24', '40.0');
INSERT INTO `sp_score_record` VALUES (482, '19', '3', '期中', 'C10006', 'G10039', '2020-03-24', '50.0');
INSERT INTO `sp_score_record` VALUES (483, '20', '3', '期中', 'C10006', 'G10039', '2020-03-24', '60.0');
INSERT INTO `sp_score_record` VALUES (484, '1', '4', '期中', 'C10006', 'G10039', '2020-04-24', '20.0');
INSERT INTO `sp_score_record` VALUES (485, '13', '4', '期中', 'C10006', 'G10039', '2020-04-24', '40.0');
INSERT INTO `sp_score_record` VALUES (486, '14', '4', '期中', 'C10006', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (487, '15', '4', '期中', 'C10006', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (488, '16', '4', '期中', 'C10006', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (489, '17', '4', '期中', 'C10006', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (490, '18', '4', '期中', 'C10006', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (491, '19', '4', '期中', 'C10006', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (492, '20', '4', '期中', 'C10006', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (493, '1', '5', '期中', 'C10006', 'G10039', '2020-05-24', '45.0');
INSERT INTO `sp_score_record` VALUES (494, '13', '5', '期中', 'C10006', 'G10039', '2020-05-24', '66.0');
INSERT INTO `sp_score_record` VALUES (495, '14', '5', '期中', 'C10006', 'G10039', '2020-05-24', '67.0');
INSERT INTO `sp_score_record` VALUES (496, '15', '5', '期中', 'C10006', 'G10039', '2020-05-24', '67.0');
INSERT INTO `sp_score_record` VALUES (497, '16', '5', '期中', 'C10006', 'G10039', '2020-05-24', '77.0');
INSERT INTO `sp_score_record` VALUES (498, '17', '5', '期中', 'C10006', 'G10039', '2020-05-24', '56.0');
INSERT INTO `sp_score_record` VALUES (499, '18', '5', '期中', 'C10006', 'G10039', '2020-05-24', '78.0');
INSERT INTO `sp_score_record` VALUES (500, '19', '5', '期中', 'C10006', 'G10039', '2020-05-24', '56.0');
INSERT INTO `sp_score_record` VALUES (501, '20', '5', '期中', 'C10006', 'G10039', '2020-05-24', '54.0');
INSERT INTO `sp_score_record` VALUES (502, '1', '6', '期中', 'C10006', 'G10039', '2020-06-24', '33.0');
INSERT INTO `sp_score_record` VALUES (503, '13', '6', '期中', 'C10006', 'G10039', '2020-06-24', '5.0');
INSERT INTO `sp_score_record` VALUES (504, '14', '6', '期中', 'C10006', 'G10039', '2020-06-24', '78.0');
INSERT INTO `sp_score_record` VALUES (505, '15', '6', '期中', 'C10006', 'G10039', '2020-06-24', '66.0');
INSERT INTO `sp_score_record` VALUES (506, '16', '6', '期中', 'C10006', 'G10039', '2020-06-24', '67.0');
INSERT INTO `sp_score_record` VALUES (507, '17', '6', '期中', 'C10006', 'G10039', '2020-06-24', '67.0');
INSERT INTO `sp_score_record` VALUES (508, '18', '6', '期中', 'C10006', 'G10039', '2020-06-24', '78.0');
INSERT INTO `sp_score_record` VALUES (509, '19', '6', '期中', 'C10006', 'G10039', '2020-06-24', '56.0');
INSERT INTO `sp_score_record` VALUES (510, '20', '6', '期中', 'C10006', 'G10039', '2020-06-24', '66.0');
INSERT INTO `sp_score_record` VALUES (511, '1', '3', '期中', 'C10007', 'G10039', '2020-03-24', '23.0');
INSERT INTO `sp_score_record` VALUES (512, '13', '3', '期中', 'C10007', 'G10039', '2020-03-24', '45.0');
INSERT INTO `sp_score_record` VALUES (513, '14', '3', '期中', 'C10007', 'G10039', '2020-03-24', '66.0');
INSERT INTO `sp_score_record` VALUES (514, '15', '3', '期中', 'C10007', 'G10039', '2020-03-24', '76.0');
INSERT INTO `sp_score_record` VALUES (515, '16', '3', '期中', 'C10007', 'G10039', '2020-03-24', '78.0');
INSERT INTO `sp_score_record` VALUES (516, '17', '3', '期中', 'C10007', 'G10039', '2020-03-24', '67.0');
INSERT INTO `sp_score_record` VALUES (517, '18', '3', '期中', 'C10007', 'G10039', '2020-03-24', '7.0');
INSERT INTO `sp_score_record` VALUES (518, '19', '3', '期中', 'C10007', 'G10039', '2020-03-24', '87.0');
INSERT INTO `sp_score_record` VALUES (519, '20', '3', '期中', 'C10007', 'G10039', '2020-03-24', '77.0');
INSERT INTO `sp_score_record` VALUES (520, '1', '3', '期中', 'C10008', 'G10039', '2020-03-24', '23.0');
INSERT INTO `sp_score_record` VALUES (521, '13', '3', '期中', 'C10008', 'G10039', '2020-03-24', '46.0');
INSERT INTO `sp_score_record` VALUES (522, '14', '3', '期中', 'C10008', 'G10039', '2020-03-24', '45.0');
INSERT INTO `sp_score_record` VALUES (523, '15', '3', '期中', 'C10008', 'G10039', '2020-03-24', '45.0');
INSERT INTO `sp_score_record` VALUES (524, '16', '3', '期中', 'C10008', 'G10039', '2020-03-24', '67.0');
INSERT INTO `sp_score_record` VALUES (525, '17', '3', '期中', 'C10008', 'G10039', '2020-03-24', '77.0');
INSERT INTO `sp_score_record` VALUES (526, '18', '3', '期中', 'C10008', 'G10039', '2020-03-24', '67.0');
INSERT INTO `sp_score_record` VALUES (527, '19', '3', '期中', 'C10008', 'G10039', '2020-03-24', '56.0');
INSERT INTO `sp_score_record` VALUES (528, '20', '3', '期中', 'C10008', 'G10039', '2020-03-24', '8.0');
INSERT INTO `sp_score_record` VALUES (529, '1', '3', '期中', 'C10009', 'G10039', '2020-03-24', '23.0');
INSERT INTO `sp_score_record` VALUES (530, '13', '3', '期中', 'C10009', 'G10039', '2020-03-24', '55.0');
INSERT INTO `sp_score_record` VALUES (531, '14', '3', '期中', 'C10009', 'G10039', '2020-03-24', '65.0');
INSERT INTO `sp_score_record` VALUES (532, '15', '3', '期中', 'C10009', 'G10039', '2020-03-24', '77.0');
INSERT INTO `sp_score_record` VALUES (533, '16', '3', '期中', 'C10009', 'G10039', '2020-03-24', '86.0');
INSERT INTO `sp_score_record` VALUES (534, '17', '3', '期中', 'C10009', 'G10039', '2020-03-24', '88.0');
INSERT INTO `sp_score_record` VALUES (535, '18', '3', '期中', 'C10009', 'G10039', '2020-03-24', '77.0');
INSERT INTO `sp_score_record` VALUES (536, '19', '3', '期中', 'C10009', 'G10039', '2020-03-24', '56.0');
INSERT INTO `sp_score_record` VALUES (537, '20', '3', '期中', 'C10009', 'G10039', '2020-03-24', '45.0');
INSERT INTO `sp_score_record` VALUES (538, '1', '3', '期中', 'C10010', 'G10039', '2020-03-24', '34.0');
INSERT INTO `sp_score_record` VALUES (539, '13', '3', '期中', 'C10010', 'G10039', '2020-03-24', '45.0');
INSERT INTO `sp_score_record` VALUES (540, '14', '3', '期中', 'C10010', 'G10039', '2020-03-24', '56.0');
INSERT INTO `sp_score_record` VALUES (541, '15', '3', '期中', 'C10010', 'G10039', '2020-03-24', '67.0');
INSERT INTO `sp_score_record` VALUES (542, '16', '3', '期中', 'C10010', 'G10039', '2020-03-24', '67.0');
INSERT INTO `sp_score_record` VALUES (543, '17', '3', '期中', 'C10010', 'G10039', '2020-03-24', '87.0');
INSERT INTO `sp_score_record` VALUES (544, '18', '3', '期中', 'C10010', 'G10039', '2020-03-24', '67.0');
INSERT INTO `sp_score_record` VALUES (545, '19', '3', '期中', 'C10010', 'G10039', '2020-03-24', '76.0');
INSERT INTO `sp_score_record` VALUES (546, '20', '3', '期中', 'C10010', 'G10039', '2020-03-24', '67.0');
INSERT INTO `sp_score_record` VALUES (547, '1', '3', '期中', 'C10011', 'G10039', '2020-03-24', '23.0');
INSERT INTO `sp_score_record` VALUES (548, '13', '3', '期中', 'C10011', 'G10039', '2020-03-24', '53.0');
INSERT INTO `sp_score_record` VALUES (549, '14', '3', '期中', 'C10011', 'G10039', '2020-03-24', '66.0');
INSERT INTO `sp_score_record` VALUES (550, '15', '3', '期中', 'C10011', 'G10039', '2020-03-24', '90.0');
INSERT INTO `sp_score_record` VALUES (551, '16', '3', '期中', 'C10011', 'G10039', '2020-03-24', '80.0');
INSERT INTO `sp_score_record` VALUES (552, '17', '3', '期中', 'C10011', 'G10039', '2020-03-24', '70.0');
INSERT INTO `sp_score_record` VALUES (553, '18', '3', '期中', 'C10011', 'G10039', '2020-03-24', '56.0');
INSERT INTO `sp_score_record` VALUES (554, '19', '3', '期中', 'C10011', 'G10039', '2020-03-24', '66.0');
INSERT INTO `sp_score_record` VALUES (555, '20', '3', '期中', 'C10011', 'G10039', '2020-03-24', '69.0');
INSERT INTO `sp_score_record` VALUES (556, '1', '3', '期中', 'C10012', 'G10039', '2020-03-24', '20.0');
INSERT INTO `sp_score_record` VALUES (557, '13', '3', '期中', 'C10012', 'G10039', '2020-03-24', '40.0');
INSERT INTO `sp_score_record` VALUES (558, '14', '3', '期中', 'C10012', 'G10039', '2020-03-24', '50.0');
INSERT INTO `sp_score_record` VALUES (559, '15', '3', '期中', 'C10012', 'G10039', '2020-03-24', '60.0');
INSERT INTO `sp_score_record` VALUES (560, '16', '3', '期中', 'C10012', 'G10039', '2020-03-24', '70.0');
INSERT INTO `sp_score_record` VALUES (561, '17', '3', '期中', 'C10012', 'G10039', '2020-03-24', '80.0');
INSERT INTO `sp_score_record` VALUES (562, '18', '3', '期中', 'C10012', 'G10039', '2020-03-24', '70.0');
INSERT INTO `sp_score_record` VALUES (563, '19', '3', '期中', 'C10012', 'G10039', '2020-03-24', '80.0');
INSERT INTO `sp_score_record` VALUES (564, '20', '3', '期中', 'C10012', 'G10039', '2020-03-24', '90.0');
INSERT INTO `sp_score_record` VALUES (565, '1', '3', '期中', 'C10013', 'G10039', '2020-03-24', '10.0');
INSERT INTO `sp_score_record` VALUES (566, '13', '3', '期中', 'C10013', 'G10039', '2020-03-24', '30.0');
INSERT INTO `sp_score_record` VALUES (567, '14', '3', '期中', 'C10013', 'G10039', '2020-03-24', '40.0');
INSERT INTO `sp_score_record` VALUES (568, '15', '3', '期中', 'C10013', 'G10039', '2020-03-24', '50.0');
INSERT INTO `sp_score_record` VALUES (569, '16', '3', '期中', 'C10013', 'G10039', '2020-03-24', '30.0');
INSERT INTO `sp_score_record` VALUES (570, '17', '3', '期中', 'C10013', 'G10039', '2020-03-24', '50.0');
INSERT INTO `sp_score_record` VALUES (571, '18', '3', '期中', 'C10013', 'G10039', '2020-03-24', '60.0');
INSERT INTO `sp_score_record` VALUES (572, '19', '3', '期中', 'C10013', 'G10039', '2020-03-24', '77.0');
INSERT INTO `sp_score_record` VALUES (573, '20', '3', '期中', 'C10013', 'G10039', '2020-03-24', '70.0');
INSERT INTO `sp_score_record` VALUES (574, '1', '3', '期中', 'C10014', 'G10039', '2020-03-24', '40.0');
INSERT INTO `sp_score_record` VALUES (575, '13', '3', '期中', 'C10014', 'G10039', '2020-03-24', '50.0');
INSERT INTO `sp_score_record` VALUES (576, '14', '3', '期中', 'C10014', 'G10039', '2020-03-24', '60.0');
INSERT INTO `sp_score_record` VALUES (577, '15', '3', '期中', 'C10014', 'G10039', '2020-03-24', '50.0');
INSERT INTO `sp_score_record` VALUES (578, '16', '3', '期中', 'C10014', 'G10039', '2020-03-24', '70.0');
INSERT INTO `sp_score_record` VALUES (579, '17', '3', '期中', 'C10014', 'G10039', '2020-03-24', '80.0');
INSERT INTO `sp_score_record` VALUES (580, '18', '3', '期中', 'C10014', 'G10039', '2020-03-24', '50.0');
INSERT INTO `sp_score_record` VALUES (581, '19', '3', '期中', 'C10014', 'G10039', '2020-03-24', '60.0');
INSERT INTO `sp_score_record` VALUES (582, '20', '3', '期中', 'C10014', 'G10039', '2020-03-24', '70.0');
INSERT INTO `sp_score_record` VALUES (583, '1', '4', '期中', 'C10007', 'G10039', '2020-04-24', '23.0');
INSERT INTO `sp_score_record` VALUES (584, '13', '4', '期中', 'C10007', 'G10039', '2020-04-24', '40.0');
INSERT INTO `sp_score_record` VALUES (585, '14', '4', '期中', 'C10007', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (586, '15', '4', '期中', 'C10007', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (587, '16', '4', '期中', 'C10007', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (588, '17', '4', '期中', 'C10007', 'G10039', '2020-04-24', '80.0');
INSERT INTO `sp_score_record` VALUES (589, '18', '4', '期中', 'C10007', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (590, '19', '4', '期中', 'C10007', 'G10039', '2020-04-24', '80.0');
INSERT INTO `sp_score_record` VALUES (591, '20', '4', '期中', 'C10007', 'G10039', '2020-04-24', '90.0');
INSERT INTO `sp_score_record` VALUES (592, '1', '4', '期中', 'C10008', 'G10039', '2020-04-24', '40.0');
INSERT INTO `sp_score_record` VALUES (593, '13', '4', '期中', 'C10008', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (594, '14', '4', '期中', 'C10008', 'G10039', '2020-04-24', '40.0');
INSERT INTO `sp_score_record` VALUES (595, '15', '4', '期中', 'C10008', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (596, '16', '4', '期中', 'C10008', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (597, '17', '4', '期中', 'C10008', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (598, '18', '4', '期中', 'C10008', 'G10039', '2020-04-24', '80.0');
INSERT INTO `sp_score_record` VALUES (599, '19', '4', '期中', 'C10008', 'G10039', '2020-04-24', '90.0');
INSERT INTO `sp_score_record` VALUES (600, '20', '4', '期中', 'C10008', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (601, '1', '4', '期中', 'C10009', 'G10039', '2020-04-24', '30.0');
INSERT INTO `sp_score_record` VALUES (602, '13', '4', '期中', 'C10009', 'G10039', '2020-04-24', '40.0');
INSERT INTO `sp_score_record` VALUES (603, '14', '4', '期中', 'C10009', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (604, '15', '4', '期中', 'C10009', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (605, '16', '4', '期中', 'C10009', 'G10039', '2020-04-24', '80.0');
INSERT INTO `sp_score_record` VALUES (606, '17', '4', '期中', 'C10009', 'G10039', '2020-04-24', '40.0');
INSERT INTO `sp_score_record` VALUES (607, '18', '4', '期中', 'C10009', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (608, '19', '4', '期中', 'C10009', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (609, '20', '4', '期中', 'C10009', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (610, '1', '4', '期中', 'C10010', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (611, '13', '4', '期中', 'C10010', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (612, '14', '4', '期中', 'C10010', 'G10039', '2020-04-24', '40.0');
INSERT INTO `sp_score_record` VALUES (613, '15', '4', '期中', 'C10010', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (614, '16', '4', '期中', 'C10010', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (615, '17', '4', '期中', 'C10010', 'G10039', '2020-04-24', '49.0');
INSERT INTO `sp_score_record` VALUES (616, '18', '4', '期中', 'C10010', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (617, '19', '4', '期中', 'C10010', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (618, '20', '4', '期中', 'C10010', 'G10039', '2020-04-24', '30.0');
INSERT INTO `sp_score_record` VALUES (619, '1', '4', '期中', 'C10011', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (620, '13', '4', '期中', 'C10011', 'G10039', '2020-04-24', '40.0');
INSERT INTO `sp_score_record` VALUES (621, '14', '4', '期中', 'C10011', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (622, '15', '4', '期中', 'C10011', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (623, '16', '4', '期中', 'C10011', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (624, '17', '4', '期中', 'C10011', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (625, '18', '4', '期中', 'C10011', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (626, '19', '4', '期中', 'C10011', 'G10039', '2020-04-24', '40.0');
INSERT INTO `sp_score_record` VALUES (627, '20', '4', '期中', 'C10011', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (628, '1', '4', '期中', 'C10012', 'G10039', '2020-04-24', '40.0');
INSERT INTO `sp_score_record` VALUES (629, '13', '4', '期中', 'C10012', 'G10039', '2020-04-24', '30.0');
INSERT INTO `sp_score_record` VALUES (630, '14', '4', '期中', 'C10012', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (631, '15', '4', '期中', 'C10012', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (632, '16', '4', '期中', 'C10012', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (633, '17', '4', '期中', 'C10012', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (634, '18', '4', '期中', 'C10012', 'G10039', '2020-04-24', '40.0');
INSERT INTO `sp_score_record` VALUES (635, '19', '4', '期中', 'C10012', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (636, '20', '4', '期中', 'C10012', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (637, '1', '4', '期中', 'C10013', 'G10039', '2020-04-24', '40.0');
INSERT INTO `sp_score_record` VALUES (638, '13', '4', '期中', 'C10013', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (639, '14', '4', '期中', 'C10013', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (640, '15', '4', '期中', 'C10013', 'G10039', '2020-04-24', '40.0');
INSERT INTO `sp_score_record` VALUES (641, '16', '4', '期中', 'C10013', 'G10039', '2020-04-24', '20.0');
INSERT INTO `sp_score_record` VALUES (642, '17', '4', '期中', 'C10013', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (643, '18', '4', '期中', 'C10013', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (644, '19', '4', '期中', 'C10013', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (645, '20', '4', '期中', 'C10013', 'G10039', '2020-04-24', '80.0');
INSERT INTO `sp_score_record` VALUES (646, '1', '4', '期中', 'C10014', 'G10039', '2020-04-24', '44.0');
INSERT INTO `sp_score_record` VALUES (647, '13', '4', '期中', 'C10014', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (648, '14', '4', '期中', 'C10014', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (649, '15', '4', '期中', 'C10014', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (650, '16', '4', '期中', 'C10014', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (651, '17', '4', '期中', 'C10014', 'G10039', '2020-04-24', '70.0');
INSERT INTO `sp_score_record` VALUES (652, '18', '4', '期中', 'C10014', 'G10039', '2020-04-24', '80.0');
INSERT INTO `sp_score_record` VALUES (653, '19', '4', '期中', 'C10014', 'G10039', '2020-04-24', '60.0');
INSERT INTO `sp_score_record` VALUES (654, '20', '4', '期中', 'C10014', 'G10039', '2020-04-24', '50.0');
INSERT INTO `sp_score_record` VALUES (655, '1', '5', '期中', 'C10014', 'G10039', '2020-05-24', '20.0');
INSERT INTO `sp_score_record` VALUES (656, '13', '5', '期中', 'C10014', 'G10039', '2020-05-24', '30.0');
INSERT INTO `sp_score_record` VALUES (657, '14', '5', '期中', 'C10014', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (658, '15', '5', '期中', 'C10014', 'G10039', '2020-05-24', '30.0');
INSERT INTO `sp_score_record` VALUES (659, '16', '5', '期中', 'C10014', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (660, '17', '5', '期中', 'C10014', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (661, '18', '5', '期中', 'C10014', 'G10039', '2020-05-24', '80.0');
INSERT INTO `sp_score_record` VALUES (662, '19', '5', '期中', 'C10014', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (663, '20', '5', '期中', 'C10014', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (664, '1', '5', '期中', 'C10013', 'G10039', '2020-05-24', '40.0');
INSERT INTO `sp_score_record` VALUES (665, '13', '5', '期中', 'C10013', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (666, '14', '5', '期中', 'C10013', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (667, '15', '5', '期中', 'C10013', 'G10039', '2020-05-24', '40.0');
INSERT INTO `sp_score_record` VALUES (668, '16', '5', '期中', 'C10013', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (669, '17', '5', '期中', 'C10013', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (670, '18', '5', '期中', 'C10013', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (671, '19', '5', '期中', 'C10013', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (672, '20', '5', '期中', 'C10013', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (673, '1', '5', '期中', 'C10012', 'G10039', '2020-05-24', '30.0');
INSERT INTO `sp_score_record` VALUES (674, '13', '5', '期中', 'C10012', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (675, '14', '5', '期中', 'C10012', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (676, '15', '5', '期中', 'C10012', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (677, '16', '5', '期中', 'C10012', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (678, '17', '5', '期中', 'C10012', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (679, '18', '5', '期中', 'C10012', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (680, '19', '5', '期中', 'C10012', 'G10039', '2020-05-24', '80.0');
INSERT INTO `sp_score_record` VALUES (681, '20', '5', '期中', 'C10012', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (682, '1', '5', '期中', 'C10011', 'G10039', '2020-05-24', '30.0');
INSERT INTO `sp_score_record` VALUES (683, '13', '5', '期中', 'C10011', 'G10039', '2020-05-24', '40.0');
INSERT INTO `sp_score_record` VALUES (684, '14', '5', '期中', 'C10011', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (685, '15', '5', '期中', 'C10011', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (686, '16', '5', '期中', 'C10011', 'G10039', '2020-05-24', '40.0');
INSERT INTO `sp_score_record` VALUES (687, '17', '5', '期中', 'C10011', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (688, '18', '5', '期中', 'C10011', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (689, '19', '5', '期中', 'C10011', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (690, '20', '5', '期中', 'C10011', 'G10039', '2020-05-24', '80.0');
INSERT INTO `sp_score_record` VALUES (691, '1', '5', '期中', 'C10010', 'G10039', '2020-05-24', '40.0');
INSERT INTO `sp_score_record` VALUES (692, '13', '5', '期中', 'C10010', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (693, '14', '5', '期中', 'C10010', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (694, '15', '5', '期中', 'C10010', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (695, '16', '5', '期中', 'C10010', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (696, '17', '5', '期中', 'C10010', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (697, '18', '5', '期中', 'C10010', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (698, '19', '5', '期中', 'C10010', 'G10039', '2020-05-24', '80.0');
INSERT INTO `sp_score_record` VALUES (699, '20', '5', '期中', 'C10010', 'G10039', '2020-05-24', '90.0');
INSERT INTO `sp_score_record` VALUES (700, '1', '5', '期中', 'C10009', 'G10039', '2020-05-24', '40.0');
INSERT INTO `sp_score_record` VALUES (701, '13', '5', '期中', 'C10009', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (702, '14', '5', '期中', 'C10009', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (703, '15', '5', '期中', 'C10009', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (704, '16', '5', '期中', 'C10009', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (705, '17', '5', '期中', 'C10009', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (706, '18', '5', '期中', 'C10009', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (707, '19', '5', '期中', 'C10009', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (708, '20', '5', '期中', 'C10009', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (709, '1', '5', '期中', 'C10008', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (710, '13', '5', '期中', 'C10008', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (711, '14', '5', '期中', 'C10008', 'G10039', '2020-05-24', '40.0');
INSERT INTO `sp_score_record` VALUES (712, '15', '5', '期中', 'C10008', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (713, '16', '5', '期中', 'C10008', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (714, '17', '5', '期中', 'C10008', 'G10039', '2020-05-24', '80.0');
INSERT INTO `sp_score_record` VALUES (715, '18', '5', '期中', 'C10008', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (716, '19', '5', '期中', 'C10008', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (717, '20', '5', '期中', 'C10008', 'G10039', '2020-05-24', '80.0');
INSERT INTO `sp_score_record` VALUES (718, '1', '5', '期中', 'C10007', 'G10039', '2020-05-24', '20.0');
INSERT INTO `sp_score_record` VALUES (719, '13', '5', '期中', 'C10007', 'G10039', '2020-05-24', '30.0');
INSERT INTO `sp_score_record` VALUES (720, '14', '5', '期中', 'C10007', 'G10039', '2020-05-24', '40.0');
INSERT INTO `sp_score_record` VALUES (721, '15', '5', '期中', 'C10007', 'G10039', '2020-05-24', '50.0');
INSERT INTO `sp_score_record` VALUES (722, '16', '5', '期中', 'C10007', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (723, '17', '5', '期中', 'C10007', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (724, '18', '5', '期中', 'C10007', 'G10039', '2020-05-24', '60.0');
INSERT INTO `sp_score_record` VALUES (725, '19', '5', '期中', 'C10007', 'G10039', '2020-05-24', '70.0');
INSERT INTO `sp_score_record` VALUES (726, '20', '5', '期中', 'C10007', 'G10039', '2020-05-24', '80.0');
INSERT INTO `sp_score_record` VALUES (727, '1', '6', '期中', 'C10007', 'G10039', '2020-06-24', '30.0');
INSERT INTO `sp_score_record` VALUES (728, '13', '6', '期中', 'C10007', 'G10039', '2020-06-24', '40.0');
INSERT INTO `sp_score_record` VALUES (729, '14', '6', '期中', 'C10007', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (730, '15', '6', '期中', 'C10007', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (731, '16', '6', '期中', 'C10007', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (732, '17', '6', '期中', 'C10007', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (733, '18', '6', '期中', 'C10007', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (734, '19', '6', '期中', 'C10007', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (735, '20', '6', '期中', 'C10007', 'G10039', '2020-06-24', '70.0');
INSERT INTO `sp_score_record` VALUES (736, '1', '6', '期中', 'C10008', 'G10039', '2020-06-24', '20.0');
INSERT INTO `sp_score_record` VALUES (737, '13', '6', '期中', 'C10008', 'G10039', '2020-06-24', '40.0');
INSERT INTO `sp_score_record` VALUES (738, '14', '6', '期中', 'C10008', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (739, '15', '6', '期中', 'C10008', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (740, '16', '6', '期中', 'C10008', 'G10039', '2020-06-24', '40.0');
INSERT INTO `sp_score_record` VALUES (741, '17', '6', '期中', 'C10008', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (742, '18', '6', '期中', 'C10008', 'G10039', '2020-06-24', '40.0');
INSERT INTO `sp_score_record` VALUES (743, '19', '6', '期中', 'C10008', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (744, '20', '6', '期中', 'C10008', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (745, '1', '6', '期中', 'C10009', 'G10039', '2020-06-24', '30.0');
INSERT INTO `sp_score_record` VALUES (746, '13', '6', '期中', 'C10009', 'G10039', '2020-06-24', '40.0');
INSERT INTO `sp_score_record` VALUES (747, '14', '6', '期中', 'C10009', 'G10039', '2020-06-24', '30.0');
INSERT INTO `sp_score_record` VALUES (748, '15', '6', '期中', 'C10009', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (749, '16', '6', '期中', 'C10009', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (750, '17', '6', '期中', 'C10009', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (751, '18', '6', '期中', 'C10009', 'G10039', '2020-06-24', '70.0');
INSERT INTO `sp_score_record` VALUES (752, '19', '6', '期中', 'C10009', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (753, '20', '6', '期中', 'C10009', 'G10039', '2020-06-24', '70.0');
INSERT INTO `sp_score_record` VALUES (754, '1', '6', '期中', 'C10010', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (755, '13', '6', '期中', 'C10010', 'G10039', '2020-06-24', '40.0');
INSERT INTO `sp_score_record` VALUES (756, '14', '6', '期中', 'C10010', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (757, '15', '6', '期中', 'C10010', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (758, '16', '6', '期中', 'C10010', 'G10039', '2020-06-24', '70.0');
INSERT INTO `sp_score_record` VALUES (759, '17', '6', '期中', 'C10010', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (760, '18', '6', '期中', 'C10010', 'G10039', '2020-06-24', '70.0');
INSERT INTO `sp_score_record` VALUES (761, '19', '6', '期中', 'C10010', 'G10039', '2020-06-24', '80.0');
INSERT INTO `sp_score_record` VALUES (762, '20', '6', '期中', 'C10010', 'G10039', '2020-06-24', '70.0');
INSERT INTO `sp_score_record` VALUES (763, '1', '6', '期中', 'C10011', 'G10039', '2020-06-24', '20.0');
INSERT INTO `sp_score_record` VALUES (764, '13', '6', '期中', 'C10011', 'G10039', '2020-06-24', '30.0');
INSERT INTO `sp_score_record` VALUES (765, '14', '6', '期中', 'C10011', 'G10039', '2020-06-24', '40.0');
INSERT INTO `sp_score_record` VALUES (766, '15', '6', '期中', 'C10011', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (767, '16', '6', '期中', 'C10011', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (768, '17', '6', '期中', 'C10011', 'G10039', '2020-06-24', '70.0');
INSERT INTO `sp_score_record` VALUES (769, '18', '6', '期中', 'C10011', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (770, '19', '6', '期中', 'C10011', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (771, '20', '6', '期中', 'C10011', 'G10039', '2020-06-24', '70.0');
INSERT INTO `sp_score_record` VALUES (772, '1', '6', '期中', 'C10012', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (773, '13', '6', '期中', 'C10012', 'G10039', '2020-06-24', '40.0');
INSERT INTO `sp_score_record` VALUES (774, '14', '6', '期中', 'C10012', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (775, '15', '6', '期中', 'C10012', 'G10039', '2020-06-24', '70.0');
INSERT INTO `sp_score_record` VALUES (776, '16', '6', '期中', 'C10012', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (777, '17', '6', '期中', 'C10012', 'G10039', '2020-06-24', '70.0');
INSERT INTO `sp_score_record` VALUES (778, '18', '6', '期中', 'C10012', 'G10039', '2020-06-24', '80.0');
INSERT INTO `sp_score_record` VALUES (779, '19', '6', '期中', 'C10012', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (780, '20', '6', '期中', 'C10012', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (781, '1', '6', '期中', 'C10013', 'G10039', '2020-06-24', '30.0');
INSERT INTO `sp_score_record` VALUES (782, '13', '6', '期中', 'C10013', 'G10039', '2020-06-24', '40.0');
INSERT INTO `sp_score_record` VALUES (783, '14', '6', '期中', 'C10013', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (784, '15', '6', '期中', 'C10013', 'G10039', '2020-06-24', '30.0');
INSERT INTO `sp_score_record` VALUES (785, '16', '6', '期中', 'C10013', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (786, '17', '6', '期中', 'C10013', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (787, '18', '6', '期中', 'C10013', 'G10039', '2020-06-24', '40.0');
INSERT INTO `sp_score_record` VALUES (788, '19', '6', '期中', 'C10013', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (789, '20', '6', '期中', 'C10013', 'G10039', '2020-06-24', '70.0');
INSERT INTO `sp_score_record` VALUES (790, '1', '6', '期中', 'C10014', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (791, '13', '6', '期中', 'C10014', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (792, '14', '6', '期中', 'C10014', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (793, '15', '6', '期中', 'C10014', 'G10039', '2020-06-24', '40.0');
INSERT INTO `sp_score_record` VALUES (794, '16', '6', '期中', 'C10014', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (795, '17', '6', '期中', 'C10014', 'G10039', '2020-06-24', '70.0');
INSERT INTO `sp_score_record` VALUES (796, '18', '6', '期中', 'C10014', 'G10039', '2020-06-24', '60.0');
INSERT INTO `sp_score_record` VALUES (797, '19', '6', '期中', 'C10014', 'G10039', '2020-06-24', '50.0');
INSERT INTO `sp_score_record` VALUES (798, '20', '6', '期中', 'C10014', 'G10039', '2020-06-24', '80.0');
COMMIT;

-- ----------------------------
-- Table structure for sp_student
-- ----------------------------
DROP TABLE IF EXISTS `sp_student`;
CREATE TABLE `sp_student` (
  `s_id` int(10) NOT NULL,
  `delflag` bit(1) DEFAULT NULL,
  `s_name` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '学生姓名',
  `s_pass` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '学生密码',
  `s_sex` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '学生性别',
  `s_idcard` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '学生身份证号',
  `s_address` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '学生地址',
  `s_nation` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '学生国籍',
  `s_pol_stat` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `s_school_time` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '学生入校时间',
  `s_household` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '学生户籍',
  `s_schoolmethod` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '学生是否走读',
  `s_class` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '学生班级',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='学生信息表';

-- ----------------------------
-- Records of sp_student
-- ----------------------------
BEGIN;
INSERT INTO `sp_student` VALUES (1, b'0', '马小跳', '214737118', '男', '321322199401256658', '1', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10039');
INSERT INTO `sp_student` VALUES (13, b'0', '王同学', '41211201', '男', '321322199401256658', '1', '汉族', '中共党员', '2021-03-06', '农村', '走读生', 'G10039');
INSERT INTO `sp_student` VALUES (14, b'0', '陈笑', '1038613857', '女', '321322199401256658', '1', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10039');
INSERT INTO `sp_student` VALUES (15, b'0', '陈刚', '1106730685', '男', '321322199401256658', '1', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10039');
INSERT INTO `sp_student` VALUES (16, b'0', '陈露', '714794150', '女', '321322199401256658', '1', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10039');
INSERT INTO `sp_student` VALUES (17, b'0', '赵昊天', '1385750259', '男', '321322199401256658', '1', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10039');
INSERT INTO `sp_student` VALUES (18, b'0', '李良', '1764203713', '男', '321322199401256699', '江苏省南京市江宁区龙眠大道102号', '汉族', '其它', '2021-03-06', '城市', '寄宿生', 'G10039');
INSERT INTO `sp_student` VALUES (19, b'0', '王照', '1159789200', '男', '321322199401256128', '江苏省南京市江宁区龙眠大道103号', '汉族', '中共党员', '2019-11-20', '城市', '走读生', 'G10039');
INSERT INTO `sp_student` VALUES (20, b'0', '李刚刚', '1583916503', '男', '321322199401256675', '江苏省南京市江宁区龙眠大道104号', '汉族', '其它', '2021-03-08', '农村', '走读生', 'G10039');
INSERT INTO `sp_student` VALUES (21, b'0', '花小美', '1775381983', '男', '321322199401256677', '江苏省徐州市江宁区龙眠大道109号', '汉族', '无党派人士', '2021-03-06', '农村', '寄宿生', 'G10040');
INSERT INTO `sp_student` VALUES (22, b'0', '钱串串', '1002997093', '男', '321322199401256155', '江苏省南京市江宁区龙眠大道106号', '汉族', '其它', '2021-03-06', '城市', '走读生', 'G10040');
INSERT INTO `sp_student` VALUES (23, b'0', '王语嫣', '1750543515', '女', '321322199401256611', '江苏省南京市江宁区龙眠大道102号', '少数民族', '中共党员', '2021-03-06', '城市', '寄宿生', 'G10040');
INSERT INTO `sp_student` VALUES (24, b'0', '张帅', '1642090298', '男', '321322199401256600', '江苏省徐州市江宁区龙眠大道109号', '少数民族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10040');
INSERT INTO `sp_student` VALUES (25, b'0', '卢现', '824672818', '男', '321322199401256687', '江苏省南京市江宁区龙眠大道102号', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10040');
INSERT INTO `sp_student` VALUES (26, b'0', '海婷', '1445391665', '女', '321322199401256123', '江苏省南京市江宁区龙眠大道102号', '少数民族', '其它', '2021-03-06', '农村', '寄宿生', 'G10040');
INSERT INTO `sp_student` VALUES (27, b'0', '于晓', '1007006137', '男', '321322199401256658', '江苏省徐州市江宁区龙眠大道109号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10040');
INSERT INTO `sp_student` VALUES (28, b'0', '刘建军', '353717829', '男', '321322199401256633', '江苏省徐州市江宁区龙眠大道109号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10040');
INSERT INTO `sp_student` VALUES (29, b'0', '秦安', '1309296179', '男', '321322199401256609', '江苏省南京市江宁区龙眠大道104号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10040');
INSERT INTO `sp_student` VALUES (30, b'0', '温就', '385159970', '男', '321322199401256122', '江苏省南京市江宁区龙眠大道104号', '汉族', '其它', '2021-03-06', '城市', '寄宿生', 'G10043');
INSERT INTO `sp_student` VALUES (31, b'0', '魏媛媛', '1239711871', '女', '321322199401256622', '江苏省徐州市江宁区龙眠大道109号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10043');
INSERT INTO `sp_student` VALUES (32, b'0', '沈天天', '1366941163', '女', '321322199401256603', '江苏省南京市江宁区龙眠大道102号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10043');
INSERT INTO `sp_student` VALUES (33, b'0', '张汉', '712595994', '男', '321322199401256658', '江苏省徐州市江宁区龙眠大道109号', '少数民族', '其它', '2021-03-06', '农村', '寄宿生', 'G10043');
INSERT INTO `sp_student` VALUES (34, b'0', '马伟', '537904669', '男', '321322199401256624', '江苏省南京市江宁区龙眠大道102号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10043');
INSERT INTO `sp_student` VALUES (35, b'0', '秦丽丽', '155986929', '女', '321322199401256677', '江苏省徐州市江宁区龙眠大道109号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10043');
INSERT INTO `sp_student` VALUES (36, b'0', '孔欢欢', '1657600589', '女', '321322199401256651', '江苏省南京市江宁区龙眠大道102号', '少数民族', '其它', '2021-03-06', '农村', '寄宿生', 'G10043');
INSERT INTO `sp_student` VALUES (37, b'0', '高可', '1905568842', '男', '321322199401256671', '江苏省徐州市江宁区龙眠大道109号', '汉族', '其它', '2021-03-06', '农村', '寄宿生', 'G10043');
INSERT INTO `sp_student` VALUES (38, b'0', '任然', '865623213', '女', '321322199401256652', '江苏省南京市江宁区龙眠大道103号', '汉族', '中共党员', '2021-03-06', '农村', '寄宿生', 'G10043');
COMMIT;

-- ----------------------------
-- Table structure for sp_teacher
-- ----------------------------
DROP TABLE IF EXISTS `sp_teacher`;
CREATE TABLE `sp_teacher` (
  `t_id` varchar(30) COLLATE utf8_bin NOT NULL,
  `delflag` bit(1) DEFAULT NULL,
  `t_name` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '教师名称',
  `t_pass` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '教师密码',
  `t_sex` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '教师性别',
  `t_nation` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `t_pol_stat` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `t_idcard` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '教师身份证号',
  `t_address` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '教师地址',
  `t_job_time` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '教师工作时间',
  `t_edu_bg` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '教师学位',
  `t_gra_ins` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '教师毕业学校',
  `t_phone` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '教师号码',
  `t_course` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '教师课程',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='教师信息表';

-- ----------------------------
-- Records of sp_teacher
-- ----------------------------
BEGIN;
INSERT INTO `sp_teacher` VALUES ('T10005', b'0', '王老师', '258955531', '男', '汉族', '中共党员', '321322199401256658', '1', '2021-03-06', '研究生', '1', '15618622161', 'C10006');
INSERT INTO `sp_teacher` VALUES ('T10006', b'0', '张老师', '1231302490', '男', '汉族', '中共党员', '321322199401256658', '1', '2021-03-06', '博士生', '1', '15618622161', 'C10006');
INSERT INTO `sp_teacher` VALUES ('T10007', b'0', '陈老师', '884865592', '男', '汉族', '中共党员', '321322199401256123', '江苏省淮安市', '2021-03-06', '博士生', '南师大', '15601558765', 'C10007');
INSERT INTO `sp_teacher` VALUES ('T10008', b'0', '卢老师', '1693621460', '女', '汉族', '中共党员', '321322199401256699', '江苏省南京市', '2021-03-06', '研究生', '河海大学', '15618621254', 'C10007');
INSERT INTO `sp_teacher` VALUES ('T10009', b'0', '李老师', '1329324934', '男', '汉族', '中共党员', '321322199401256651', '江苏省淮安市', '2021-03-06', '博士生', '南师大', '15618622133', 'C10011');
INSERT INTO `sp_teacher` VALUES ('T10010', b'0', '韩老师', '279356190', '男', '汉族', '中共党员', '321322199401256653', '江苏省南京市', '2021-03-06', '研究生', '河海大学', '15618622133', 'C10016');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
