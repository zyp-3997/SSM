/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : spring_student

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-05-07 16:31:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `userid` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `money` double(255,0) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '张三', '200');
INSERT INTO `account` VALUES ('2', '李四', '0');

-- ----------------------------
-- Table structure for teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course` (
  `teacher_id` int NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`teacher_id`,`course_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_course
-- ----------------------------
INSERT INTO `teacher_course` VALUES ('14', '爱情的力量', '99');
INSERT INTO `teacher_course` VALUES ('17', '为爱', '98');
INSERT INTO `teacher_course` VALUES ('18', '爱情', '38');
INSERT INTO `teacher_course` VALUES ('121', 'spring', '88');
INSERT INTO `teacher_course` VALUES ('222', '数据结构', '110');
INSERT INTO `teacher_course` VALUES ('1001', 'Spring架构与设计', '50');
INSERT INTO `teacher_course` VALUES ('1001', '设计模式解析', '200');
INSERT INTO `teacher_course` VALUES ('1001', '面向对象设计与编程', '600');
INSERT INTO `teacher_course` VALUES ('1002', 'JavaWeb应用开发', '600');
INSERT INTO `teacher_course` VALUES ('1003', '数据结构', '600');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'John', '001001');
INSERT INTO `user` VALUES ('2', 'Jany', '002002');
INSERT INTO `user` VALUES ('333', '张三', '333333');
INSERT INTO `user` VALUES ('444', '王二', '444444');
INSERT INTO `user` VALUES ('1100', 'aabb', '111');
