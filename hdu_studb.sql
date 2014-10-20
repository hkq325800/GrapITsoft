/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : hdu_studb

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2014-03-06 15:17:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `ca_id` int(11) NOT NULL COMMENT '项目编号',
  `ca_name` varchar(255) NOT NULL COMMENT '类别名称',
  `co_id` int(11) NOT NULL COMMENT '学院编号',
  PRIMARY KEY  (`ca_id`),
  KEY `co_id` (`co_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '杭电要闻', '1000');
INSERT INTO `category` VALUES ('2', '通知公告', '1000');
INSERT INTO `category` VALUES ('3', '讲座论坛', '1000');
INSERT INTO `category` VALUES ('4', '校园动态', '1000');
INSERT INTO `category` VALUES ('5', '学院公告', '1001');
INSERT INTO `category` VALUES ('6', '学院新闻', '1001');
INSERT INTO `category` VALUES ('7', '教学信息', '1001');
INSERT INTO `category` VALUES ('8', '科研信息', '1001');
INSERT INTO `category` VALUES ('9', '通知通告', '1002');
INSERT INTO `category` VALUES ('10', '学院新闻', '1002');
INSERT INTO `category` VALUES ('11', '教学通知', '1002');
INSERT INTO `category` VALUES ('12', '学术交流', '1002');
INSERT INTO `category` VALUES ('13', '学生活动', '1002');
INSERT INTO `category` VALUES ('14', '教研公告', '1003');
INSERT INTO `category` VALUES ('15', '通知公告', '1003');
INSERT INTO `category` VALUES ('16', '专题讲座', '1003');
INSERT INTO `category` VALUES ('17', '学生动态', '1003');
INSERT INTO `category` VALUES ('18', '学院公告', '1004');
INSERT INTO `category` VALUES ('19', '本科教学', '1004');
INSERT INTO `category` VALUES ('20', '学工动态', '1004');
INSERT INTO `category` VALUES ('21', '科学研究', '1004');
INSERT INTO `category` VALUES ('22', '研究生教育', '1004');
INSERT INTO `category` VALUES ('23', '通知公告', '1005');
INSERT INTO `category` VALUES ('24', '本科教学', '1005');
INSERT INTO `category` VALUES ('25', '研究生教学', '1005');
INSERT INTO `category` VALUES ('26', '学院新闻', '1005');
INSERT INTO `category` VALUES ('27', '学工信息', '1005');
INSERT INTO `category` VALUES ('28', '科研信息', '1005');
INSERT INTO `category` VALUES ('29', '学术动态', '1005');
INSERT INTO `category` VALUES ('30', '学院动态', '1006');
INSERT INTO `category` VALUES ('31', '教学工作', '1006');
INSERT INTO `category` VALUES ('32', '学生活动', '1006');
INSERT INTO `category` VALUES ('33', '科研信息', '1006');
INSERT INTO `category` VALUES ('34', '通知公告', '1007');
INSERT INTO `category` VALUES ('35', '科研信息', '1007');
INSERT INTO `category` VALUES ('36', '教学通知', '1007');
INSERT INTO `category` VALUES ('37', '学工动态', '1007');
INSERT INTO `category` VALUES ('38', '教学信息', '1008');
INSERT INTO `category` VALUES ('39', '通知公告', '1008');
INSERT INTO `category` VALUES ('40', '科研信息', '1008');
INSERT INTO `category` VALUES ('41', '学院新闻', '1008');
INSERT INTO `category` VALUES ('42', '学工动态', '1008');
INSERT INTO `category` VALUES ('43', '学院新闻', '1009');
INSERT INTO `category` VALUES ('44', '通知公告', '1009');
INSERT INTO `category` VALUES ('45', '教学信息', '1009');
INSERT INTO `category` VALUES ('46', '科研信息', '1009');
INSERT INTO `category` VALUES ('47', '学生工作', '1009');
INSERT INTO `category` VALUES ('48', '学院新闻', '1010');
INSERT INTO `category` VALUES ('49', '通知公告', '1010');
INSERT INTO `category` VALUES ('50', '教学工作', '1010');
INSERT INTO `category` VALUES ('51', '科研动态', '1010');
INSERT INTO `category` VALUES ('52', '学院动态', '1011');
INSERT INTO `category` VALUES ('53', '学院通知', '1011');
INSERT INTO `category` VALUES ('54', '教学通知', '1011');
INSERT INTO `category` VALUES ('55', '科研通知', '1011');
INSERT INTO `category` VALUES ('56', '重要通知', '1011');
INSERT INTO `category` VALUES ('57', '新闻速递', '1011');
INSERT INTO `category` VALUES ('58', '学术活动', '1011');
INSERT INTO `category` VALUES ('59', '学院新闻', '1012');
INSERT INTO `category` VALUES ('60', '通知公告', '1012');
INSERT INTO `category` VALUES ('61', '教学信息', '1012');
INSERT INTO `category` VALUES ('62', '科研信息', '1012');
INSERT INTO `category` VALUES ('63', '优秀学子', '1012');
INSERT INTO `category` VALUES ('64', '学生天地', '1012');
INSERT INTO `category` VALUES ('65', '学院新闻', '1013');
INSERT INTO `category` VALUES ('66', '通知公告', '1013');
INSERT INTO `category` VALUES ('67', '学院公告', '1014');
INSERT INTO `category` VALUES ('68', '教学信息', '1014');
INSERT INTO `category` VALUES ('69', '学工资讯', '1014');
INSERT INTO `category` VALUES ('70', '学院新闻', '1014');
INSERT INTO `category` VALUES ('71', '学院新闻', '1015');
INSERT INTO `category` VALUES ('72', '通知公告', '1015');
INSERT INTO `category` VALUES ('73', '教研信息', '1015');
INSERT INTO `category` VALUES ('74', '学生信息', '1015');
INSERT INTO `category` VALUES ('75', '学院新闻', '1016');
INSERT INTO `category` VALUES ('76', '学院通知', '1016');
INSERT INTO `category` VALUES ('77', '新闻速递', '1017');
INSERT INTO `category` VALUES ('78', '通知公告', '1017');
INSERT INTO `category` VALUES ('79', '教学工作', '1017');
INSERT INTO `category` VALUES ('80', '群体竞赛', '1017');
INSERT INTO `category` VALUES ('81', '通知公告', '1018');
INSERT INTO `category` VALUES ('82', '学院新闻', '1018');
INSERT INTO `category` VALUES ('83', '荣誉学院之窗', '1018');
INSERT INTO `category` VALUES ('84', '社会热点放大镜', '1018');
INSERT INTO `category` VALUES ('85', '国际交流视角', '1018');
INSERT INTO `category` VALUES ('86', '卓越讲座', '1018');
INSERT INTO `category` VALUES ('87', '学苑沙龙', '1018');
INSERT INTO `category` VALUES ('88', 'Notice', '1019');
INSERT INTO `category` VALUES ('89', 'News', '1019');
INSERT INTO `category` VALUES ('90', 'Campus Life', '1019');
INSERT INTO `category` VALUES ('91', 'Student Handbook', '1019');
INSERT INTO `category` VALUES ('92', '通知公告', '1020');
INSERT INTO `category` VALUES ('93', '教学动态', '1020');
INSERT INTO `category` VALUES ('94', '学院动态', '1020');
INSERT INTO `category` VALUES ('95', '学院新闻', '1021');
INSERT INTO `category` VALUES ('96', '通知公告', '1021');

-- ----------------------------
-- Table structure for `college`
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `co_id` int(11) NOT NULL auto_increment COMMENT '学院编号',
  `co_name` varchar(255) default NULL COMMENT '许愿名称',
  PRIMARY KEY  (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1022 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1000', '学校');
INSERT INTO `college` VALUES ('1001', '机械学院');
INSERT INTO `college` VALUES ('1002', '电子学院');
INSERT INTO `college` VALUES ('1003', '通信学院');
INSERT INTO `college` VALUES ('1004', '自动化学院');
INSERT INTO `college` VALUES ('1005', '计算机学院');
INSERT INTO `college` VALUES ('1006', '材环学院');
INSERT INTO `college` VALUES ('1007', '生仪学院');
INSERT INTO `college` VALUES ('1008', '软件学院');
INSERT INTO `college` VALUES ('1009', '理学院');
INSERT INTO `college` VALUES ('1010', '经济学院');
INSERT INTO `college` VALUES ('1011', '管理学院');
INSERT INTO `college` VALUES ('1012', '会计学院');
INSERT INTO `college` VALUES ('1013', '外国语学院');
INSERT INTO `college` VALUES ('1014', '数媒学院');
INSERT INTO `college` VALUES ('1015', '人法学院');
INSERT INTO `college` VALUES ('1016', '马克思学院');
INSERT INTO `college` VALUES ('1017', '体艺教学部');
INSERT INTO `college` VALUES ('1018', '卓越学院');
INSERT INTO `college` VALUES ('1019', '国际学院');
INSERT INTO `college` VALUES ('1020', '继续教育学院');
INSERT INTO `college` VALUES ('1021', '信息学院');

-- ----------------------------
-- Table structure for `dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `dic_id` int(11) NOT NULL COMMENT '字典编号',
  `dic_value` varchar(255) default NULL COMMENT '字典含义',
  PRIMARY KEY  (`dic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('3001', '男');
INSERT INTO `dictionary` VALUES ('3002', '女');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL auto_increment COMMENT '自动标识列',
  `title` varchar(255) NOT NULL COMMENT '抓取标题',
  `date` date NOT NULL COMMENT '信息日期',
  `text` text NOT NULL COMMENT '截取的文本内容',
  `inserttime` datetime NOT NULL COMMENT '插入时间',
  `co_id` int(11) NOT NULL COMMENT '学院编号',
  `ca_id` int(11) NOT NULL COMMENT '类别编号',
  PRIMARY KEY  (`id`),
  KEY `co_id` (`co_id`),
  KEY `ca_id` (`ca_id`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`ca_id`) REFERENCES `category` (`ca_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for `profession`
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `pr_id` int(11) NOT NULL COMMENT '专业编号',
  `pr_name` varchar(255) default NULL COMMENT '专业名称',
  `co_id` int(11) default NULL COMMENT '所属学院id',
  PRIMARY KEY  (`pr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES ('2001', '软件工程', '1008');
INSERT INTO `profession` VALUES ('2002', '软件工程(专升本)', '1008');
INSERT INTO `profession` VALUES ('2003', '软件工程(卓越工程师计划)', '1008');
INSERT INTO `profession` VALUES ('2004', '计算机科学与技术(专升本)', '1005');
INSERT INTO `profession` VALUES ('2005', '理工类实验班', '1018');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `us_id` int(11) NOT NULL COMMENT '用户账号',
  `us_name` varchar(255) default NULL COMMENT '用户名字',
  `us_sex` varchar(255) default NULL COMMENT '用户性别',
  `co_id` int(11) default NULL COMMENT '学院编号',
  `pr_id` int(11) default NULL COMMENT '专业id',
  `us_grade` varchar(255) default NULL COMMENT '用户年级',
  `us_class` varchar(255) default NULL COMMENT '用户班级',
  PRIMARY KEY  (`us_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('10109202', '陈卓丹', '3002', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109206', '金紫薇', '3002', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109216', '付敏强', '3001', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109223', '林贤聪', '3001', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109227', '马成龙', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('10109229', '彭功海', '3001', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109235', '王如雷', '3001', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109240', '谢振东', '3001', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109249', '赵泽洋', '3001', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109251', '蔡婧怡', '3002', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109252', '范梅玲', '3002', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109259', '杨雨婷', '3002', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109260', '白钢', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109261', '陈文琦', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109262', '陈卓杰', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109263', '崔志强', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109264', '戴伟平', '3001', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109274', '刘剑波', '3001', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109283', '王振浩', '3001', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109288', '章臣', '3001', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109290', '张瑞', '3001', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109291', '张翼春', '3001', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109295', '赵翼昂', '3001', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109303', '管沛伦', '3002', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109314', '冯宇波', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109315', '傅海彬', '3001', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109316', '葛立海', '3001', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109317', '韩阔', '3001', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109324', '孟彬', '3001', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109340', '颜铵', '3001', '1008', '2001', '2010', '10108413');
INSERT INTO `user` VALUES ('10109341', '杨亮', '3001', '1008', '2001', '2010', '10108413');
INSERT INTO `user` VALUES ('10109343', '章炜', '3001', '1008', '2003', '2010', '10108415');
INSERT INTO `user` VALUES ('10109344', '张黄羿', '3001', '1008', '2001', '2010', '10108413');
INSERT INTO `user` VALUES ('10109346', '赵达伟', '3001', '1008', '2001', '2010', '10108413');
INSERT INTO `user` VALUES ('10109347', '郑潇轶', '3001', '1008', '2001', '2010', '10108413');
INSERT INTO `user` VALUES ('10109348', '周鸿顺', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('10109349', '朱潇伟', '3001', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109350', '蒿应云', '3001', '1008', '2001', '2010', '10108413');
INSERT INTO `user` VALUES ('10109351', '董嫁嫁', '3002', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109352', '冯小霞', '3002', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109353', '韩晶', '3002', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109354', '何慧琳', '3002', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109355', '李霞', '3002', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109356', '李怡弘', '3002', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109357', '李媛', '3002', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109358', '刘溢辉', '3002', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109359', '唐芳', '3002', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109360', '吴秋蕾', '3002', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109362', '陈春富', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109364', '陈士辛', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109365', '邓悟宇', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109374', '李健', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109375', '李一佳', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109376', '林小辉', '3001', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109377', '陆斌伟', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109378', '吕晓冬', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109379', '骆国康', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109380', '孟凌云', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109381', '任诗谋', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109382', '沈校达', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109383', '孙海', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109384', '汤斌臻', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109385', '王宽', '3001', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109386', '王强', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109387', '王彤', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109388', '王臻佳', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109389', '吴可强', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109391', '徐攀', '3001', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109393', '张家维', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109394', '张炉青', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109395', '张翔宇', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109396', '张岩岩', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109397', '张业明', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109398', '赵佳辉', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109399', '朱敦', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109400', '朱银福', '3001', '1008', '2003', '2010', '10108416');
INSERT INTO `user` VALUES ('10109401', '裘震宇', '3001', '1008', '2001', '2010', '10108414');
INSERT INTO `user` VALUES ('10109402', '林元东', '3001', '1008', '2001', '2010', '10108413');
INSERT INTO `user` VALUES ('10109403', '王帅锋', '3001', '1008', '2001', '2010', '10108413');
INSERT INTO `user` VALUES ('11101002', '潘黎丽', '3002', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101003', '施丽娜', '3002', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101004', '孙雨雪', '3002', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101005', '汪露雲', '3002', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101006', '王兴菲', '3002', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101007', '杨薇', '3002', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101008', '毕华健', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101010', '黄开成', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101011', '黄熙龙', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101012', '金鑫', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101013', '鞠振宇', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101015', '李梦龙', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101016', '李平康', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101017', '李平新', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101018', '李智', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101019', '刘俊杰', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101020', '刘宁', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101021', '刘益利', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101022', '刘永晴', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101023', '刘远生', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101024', '倪怀远', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101025', '潘科', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101026', '彭勇善', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101027', '沈立宇', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101029', '魏鑫', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101030', '徐金康', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101031', '杨云翔', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101032', '杨泽斌', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101033', '袁梦杰', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101034', '张旦军', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101035', '郑士超', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101036', '钟建勇', '3001', '1008', '2001', '2011', '11108411');
INSERT INTO `user` VALUES ('11101037', '董林芳', '3002', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101038', '何庭竹', '3002', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101039', '卢淑敏', '3002', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101040', '王汝冰', '3002', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101041', '王羽', '3002', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101042', '卫蓉', '3002', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101044', '陈俊杰', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101046', '杜义楠', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101047', '郭峰', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101048', '郭维', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101049', '韩岳东', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101050', '胡宝华', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101051', '黎廷炜', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101052', '李钟磊', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101053', '刘兆奎', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101054', '潘庆庆', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101055', '孙剑飞', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101056', '孙子博', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101058', '汪灿丰', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101059', '王智利', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101060', '吴彬武', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101061', '吴亚峰', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101062', '夏家栋', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101063', '许杨', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101064', '曾荣', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101065', '占晓锋', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101066', '张初卫', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101067', '张世阳', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101068', '张翔', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101069', '张行', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101071', '赵伯亮', '3001', '1008', '2001', '2011', '11108412');
INSERT INTO `user` VALUES ('11101073', '林杉丹', '3002', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101076', '杨思佳', '3002', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101077', '叶智梅', '3002', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101079', '郑甜丽', '3002', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101080', '曹杨', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101082', '戴利刚', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101083', '范悉斌', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101084', '冯琦垚', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101086', '杭伟', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101087', '黄长彬', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101088', '黄东云', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101089', '黄乐炯', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101092', '李志', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101093', '梁国伟', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101094', '柳欢', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101096', '马笑冬', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101097', '任飞虎', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101098', '石旭勇', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101099', '王玉超', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101100', '徐博敏', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101101', '薛圣柜', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101102', '杨旭', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101103', '周科凯', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101104', '朱博伦', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101105', '朱文阳', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101107', '缪冬冬', '3001', '1008', '2001', '2011', '11108413');
INSERT INTO `user` VALUES ('11101108', '曹秋丹', '3002', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101109', '胡瑞琪', '3002', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101113', '张洁', '3002', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101115', '丁一帆', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101116', '方鑫', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101117', '黄鹏杰', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101118', '姬亮', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101122', '罗峰', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101123', '齐啸', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101124', '秦迪', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101125', '卿夏旭', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101126', '盛鑫', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101127', '王初冬', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101128', '吴博', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101129', '谢弘庆', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101131', '杨敏', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101133', '袁思俊', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101135', '张金星', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101137', '张煜', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101138', '赵雪恒', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101139', '郑宇驰', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101140', '周仕豪', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101141', '周湛', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101142', '逯轩', '3001', '1008', '2001', '2011', '11108414');
INSERT INTO `user` VALUES ('11101145', '赖伟玲', '3002', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101146', '李美琦', '3002', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101148', '薛依玲', '3002', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101150', '蔡潜清', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101152', '杜沛霖', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101153', '方端慧', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101156', '柯光炽', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101159', '刘楠', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101161', '孙雪松', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101163', '魏冶天', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101166', '徐俊杰', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101169', '尹航', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101170', '袁俊力', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101171', '曾宁忠', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101172', '章加波', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101173', '张辉', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101174', '赵建凯', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101177', '朱伟杰', '3001', '1008', '2001', '2011', '11108415');
INSERT INTO `user` VALUES ('11101179', '冯林', '3002', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101180', '李昕悦', '3002', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101183', '施晶晶', '3002', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101184', '包俊', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101186', '崔灿', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101187', '龚铮一', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101188', '韩易臻', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101189', '姜享涛', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101190', '蒋斌峰', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101191', '蒋超政', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101192', '孔德曰', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101193', '李坤银', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101195', '刘明伟', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101196', '茅俊夫', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101197', '任航斌', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101198', '时继开', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101199', '王红志', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101200', '王磊', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101202', '王平', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101205', '徐林', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101206', '徐梓渊', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101207', '杨尧', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11101209', '游通秋', '3001', '1008', '2001', '2011', '11108416');
INSERT INTO `user` VALUES ('11102013', '傅俊文', '3001', '1008', '2004', '2011', '11106711');
INSERT INTO `user` VALUES ('12105101', '陈丽', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105102', '樊彩棣', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105103', '范丽芳', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105104', '方慧婷', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105105', '胡昌聪', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105106', '胡洁静', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105107', '贾鸿琴', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105108', '李瑞敏', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105109', '邵琦', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105110', '孙茜雯', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105111', '王君丽', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105112', '王露', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105113', '吴佳颖', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105114', '颜晨璟', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105115', '颜梦思', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105117', '余莎娜', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105118', '郑婷', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105119', '周瑶瑶', '3002', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105120', '毕磊', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105121', '陈兆剑', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105122', '陈昕', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105123', '单金伟', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105124', '丁特战', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105125', '洪小龙', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105126', '黄建川', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105127', '黄天赐', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105128', '江剑峰', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105129', '蒋翀', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105130', '李建华', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105131', '骆镖杰', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105132', '庞盼祥', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105133', '钱溢', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105134', '沈乐涛', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105135', '宋瑞国', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105136', '孙丁超', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105137', '唐春禹', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105138', '陶鹏俊', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105139', '王波', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105140', '王卓宁', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105141', '吴嘉洋', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105142', '杨光', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105143', '虞军', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105144', '钟山', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105145', '周史超', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105146', '朱亚光', '3001', '1008', '2002', '2012', '12105811');
INSERT INTO `user` VALUES ('12105201', '陈夏', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105202', '杜双', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105203', '郭妤婕', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105204', '胡小柳', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105205', '黄少永', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105206', '孔巧燕', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105207', '李倩', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105208', '骆水琴', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105209', '穆丁楠', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105210', '潘颖佼', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105211', '沈滢滢', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105212', '王茹茹', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105213', '吴超颖', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105214', '吴慧华', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105215', '吴莉莉', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105216', '谢宏天辰', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105217', '薛娴', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105218', '殷利萍', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105219', '张沈婷', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105220', '郑晓蓓', '3002', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105221', '陈维斌', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105222', '傅栋华', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105223', '金理聘', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105224', '李飞林', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105225', '林斌', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105226', '沈渊锋', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105227', '施佳伟', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105228', '陶力', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105229', '王华豫', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105230', '王凯鹏', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105231', '王文杰', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105232', '文威', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105233', '吾雨森', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105234', '徐林尉', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105235', '徐容广', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105236', '徐文峰', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105237', '徐侃', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105238', '许义', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105239', '杨建兴', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105240', '姚卓君', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105241', '叶春华', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105242', '张忆勇', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105243', '赵星宇', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105244', '朱林峰', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12105245', '邹午陈', '3001', '1008', '2002', '2012', '12105812');
INSERT INTO `user` VALUES ('12106101', '鲍盈廷', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106102', '陈霞', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106103', '陈杨丽', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106105', '方敏敏', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106106', '费唯', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106107', '傅利红', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106108', '葛琦虹', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106109', '胡君丽', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106110', '姜丽丽', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106111', '林晓芳', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106112', '林云云', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106113', '潘晓燕', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106115', '沈秀芳', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106116', '童颖婷', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106117', '王颖慧', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106118', '王玉', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106119', '谢芳芳', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106120', '杨志银', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106121', '叶丹丹', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106122', '余丽萍', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106123', '郑宇玲', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106124', '祖敏', '3002', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106125', '毕凯达', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106126', '陈峰', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106127', '陈嘉浩', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106128', '干玄之', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106129', '顾晨路', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106130', '顾硕斌', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106131', '何佳俊', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106132', '李涛', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106133', '林立峰', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106134', '刘嘉军', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106135', '任家辉', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106136', '孙中泽', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106137', '唐明焰', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106138', '王焕云', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106139', '王蒙', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106140', '吴彬彬', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106141', '吴正跃', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106142', '章罗涛', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106143', '张斌斌', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106144', '张礼玉', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106145', '张力', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12106146', '郑克', '3001', '1008', '2004', '2012', '12106711');
INSERT INTO `user` VALUES ('12108102', '刘莹', '3002', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108104', '郑倩', '3002', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108107', '戴俊奇', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108108', '邓小健', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108109', '丁清', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108112', '付佳伟', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108114', '韩心太', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108116', '景天俊', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108118', '李晓伟', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108119', '刘明', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108120', '柳钟泉', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108121', '吕玉杰', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108122', '吕作祺', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108124', '石冬健', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108125', '王汉昆', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108126', '王健', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('12108127', '王茂森', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108128', '王沛彦', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108129', '吴伟', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108130', '徐传威', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108131', '杨凯丰', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108132', '杨政', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108133', '杨子江', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108135', '张坚革', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108139', '郑齐阳', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108140', '左曦', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12108201', '白林林', '3002', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108202', '邓紫薇', '3002', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108203', '彭雅丽', '3002', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108204', '杨丽', '3002', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108205', '周丽蕊', '3002', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108206', '边涛', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108208', '陈浩', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108209', '陈露耿', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108210', '陈轲', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108211', '段鹏飞', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108213', '何定飞', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108216', '李金祥', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108217', '刘春忆', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108219', '楼晓凯', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108220', '乔远航', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108222', '沈之川', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108223', '史泰猛', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108227', '熊君睿', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108229', '杨俊樟', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108230', '章晨昱', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108231', '张董朝', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108232', '张家珲', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108234', '张旭', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108237', '郑欢', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108238', '钟云昶', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108240', '左伟材', '3001', '1008', '2001', '2012', '12108412');
INSERT INTO `user` VALUES ('12108303', '李强晓', '3002', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108304', '谭静静', '3002', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108305', '王雪莹', '3002', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108306', '曹平涛', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108307', '陈波', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108308', '陈海树', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108309', '程彦', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108310', '冯江', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108311', '龚文', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108312', '胡启鹏', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108313', '姜浩', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108314', '蒋琼宇', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108315', '刘宏志', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108316', '刘铁', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108317', '陆奕合', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108318', '罗鹏展', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108320', '涂斌', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108321', '王鹏', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108322', '王帅', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108323', '王晓星', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108324', '吴伟', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108325', '夏天成', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108326', '夏延廷', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108327', '谢俊杰', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108328', '邢庭澍', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108330', '徐利斌', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108331', '许鹏飞', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108334', '叶远', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108335', '易庚', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108336', '郁加奇', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108337', '张志峰', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108338', '郑斌', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108339', '郑元冲', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108340', '周冠中', '3001', '1008', '2001', '2012', '12108413');
INSERT INTO `user` VALUES ('12108402', '王茂玉', '3002', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108403', '易寒冰', '3002', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108405', '张萌', '3002', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108407', '陈景辉', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108410', '呼斯楞', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108411', '黄芳雄', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108412', '黄嘉文', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108413', '黄可庆', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108414', '贾拓', '3001', '1018', '2005', '2012', '12184112');
INSERT INTO `user` VALUES ('12108415', '江登位', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108416', '李平楠', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108417', '刘威', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108418', '刘霄', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108419', '时鸿江', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108420', '王聪', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108421', '韦威康靖', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108422', '吴飞德', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108423', '许宇迪', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108426', '叶家伟', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108428', '游冰', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108430', '袁远腾', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108431', '章学', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108432', '张加竺', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108433', '张鹏升', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108434', '张仁佳', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108435', '张帅', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108438', '张昊', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108439', '郑波宇', '3001', '1008', '2001', '2012', '12108414');
INSERT INTO `user` VALUES ('12108503', '王希', '3002', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108505', '岳迪', '3002', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108506', '白龙', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108507', '陈杰', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108508', '陈俊鹏', '3001', '1018', '2005', '2012', '12184112');
INSERT INTO `user` VALUES ('12108509', '崔翔', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108510', '丁彪', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108512', '范锦涛', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108513', '黄翔', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108514', '计矜巍', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108515', '纪润', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108518', '李彦飞', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108519', '潘芳波', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108520', '邵成杰', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108521', '帅煜韬', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108522', '苏响', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108523', '王董阳', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108524', '王圣成', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108526', '吴楷章', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108527', '吴凯佳', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108528', '许旺柯', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108529', '杨凇', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108530', '杨睿龙', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108531', '于金龙', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108532', '余涛', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108534', '张孟', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108535', '张先文', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108537', '郑建民', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108538', '郑朋心', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108539', '钟昌斌', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12108540', '庄宇平', '3001', '1008', '2001', '2012', '12108415');
INSERT INTO `user` VALUES ('12150738', '钟益发', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('12224652', '刘波', '3001', '1008', '2001', '2012', '12108411');
INSERT INTO `user` VALUES ('13105101', '柴晓芳', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105102', '陈玙', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105103', '郭颖晓', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105104', '何益婷', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105105', '江黎旻', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105106', '李秋华', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105107', '林娴', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105108', '吕凡瑜', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105109', '倪瑞英', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105110', '沈佳丽', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105112', '王嘉欢', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105113', '王影杰', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105114', '谢倩倩', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105115', '杨春园', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105116', '俞辉', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105117', '张莹', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105118', '郑晓琴', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105119', '周夏', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105120', '邹利', '3002', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105121', '包威鹏', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105122', '常青', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105123', '顾海剑', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105124', '姜恒', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105125', '金浩侠', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105126', '刘云春', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105127', '骆晓航', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105128', '普建达', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105129', '石彩峰', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105130', '童涛', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105131', '王琨', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105132', '吴樟伟', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105133', '徐越奇', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105134', '姚飞', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105135', '章荣炎', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105136', '张龙斌', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105137', '朱沧', '3001', '1008', '2002', '2013', '13105811');
INSERT INTO `user` VALUES ('13105201', '陈欢', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105202', '程琳', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105203', '韩露', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105204', '洪闻', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105205', '金凯伦', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105206', '李晓明', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105207', '林怡', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105208', '毛瑜婕', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105209', '戚金飞', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105210', '沈佳萍', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105211', '童露香', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105212', '王菊仙', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105213', '吴纯璐', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105214', '许娟娟', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105215', '叶莎莎', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105216', '章露婷', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105217', '张春花', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105218', '周程宇', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105219', '朱思梅', '3002', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105220', '蔡盼辉', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105221', '陈红军', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105222', '傅程', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105223', '郭斗', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105224', '蒋建才', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105225', '金盛', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105226', '卢学远', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105227', '梅天航', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105228', '钱鹏正', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105229', '宋艺', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105230', '汪志', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105231', '王浙', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105232', '熊坤', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105233', '许骜', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105234', '虞越', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105235', '张兴治', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105236', '郑骅', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105237', '朱晶琦', '3001', '1008', '2002', '2013', '13105812');
INSERT INTO `user` VALUES ('13105301', '鲍王婷', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105302', '陈佳露', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105303', '董燕萍', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105304', '何佳丽', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105305', '黄冬珠', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105306', '雷刘甄', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105307', '廖冬冬', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105308', '林盈盈', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105309', '缪佳美', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105310', '阮琦', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105311', '孙佳露', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105312', '王超', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105313', '王蓉蓉', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105314', '吴文娟', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105315', '叶晓娟', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105316', '闫文玮', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105317', '张妞', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105318', '郑洁', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105319', '周淇敏', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105320', '朱子樱', '3002', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105321', '曹杭波', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105322', '陈佳伟', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105323', '单豪迪', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105324', '高鹏', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105325', '韩唯', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105326', '蒋萧逸', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105327', '李杰', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105328', '吕超', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105329', '濮晓炜', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105330', '沈伟峰', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105331', '孙晓龙', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105332', '王铖', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105333', '吴晨熙', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105334', '徐佳炳', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105335', '杨凯', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105336', '张聪', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105337', '张炎祥', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13105338', '郑之杰', '3001', '1008', '2002', '2013', '13105813');
INSERT INTO `user` VALUES ('13108101', '丛思安', '3002', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108102', '毛楠', '3002', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108103', '万佳琦', '3002', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108104', '王海利', '3002', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108105', '王燕', '3002', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108106', '郑咪咪', '3002', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108107', '曹禹', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108108', '陈登帅', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108109', '陈云帆', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108110', '方振浩', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108111', '和帅', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108113', '黄友秋', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108114', '江宇', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108115', '兰威举', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108116', '李强', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108117', '李响', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108118', '李自明', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108119', '刘震', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108120', '吕劲峰', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108121', '倪金辉', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108122', '石方红', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108123', '石云烽', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108124', '宋祥俊', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108125', '孙东', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108126', '王帅', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108127', '王廷兴', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108128', '王叶', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108129', '文凯', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108130', '吴军艺', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108131', '伍维', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108132', '徐晨', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108133', '杨汉松', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108134', '杨皓凯', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108135', '俞振海', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108136', '张棱隆', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108137', '张琛垚', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108138', '赵志伟', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108139', '周培彬', '3001', '1008', '2001', '2013', '13108411');
INSERT INTO `user` VALUES ('13108201', '李芳萍', '3002', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108202', '孟良', '3002', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108203', '唐一巧', '3002', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108204', '王雯静', '3002', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108205', '吴晨璐', '3002', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108206', '周思君', '3002', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108207', '艾鑫', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108208', '鲍家豪', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108209', '陈希灿', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108212', '冯攀', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108213', '韩泽鹏', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108214', '黄庆', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108215', '江雷', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108216', '赖扬芃', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108217', '李嘉晨', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108218', '李森勃', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108219', '李天骄', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108220', '李迅', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108221', '李正强', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108222', '林奇', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108223', '钱龙生', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108224', '任志鹏', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108225', '宋茂林', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108226', '孙铖', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108227', '田世袭', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108229', '温学佳', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108230', '殷香旺', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108231', '余肖祥', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108232', '余映钟', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108234', '章锴男', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108235', '张林佳', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108236', '张勇', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108237', '张致荣', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108238', '郑琪', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108239', '朱晨浩', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108240', '祝毅', '3001', '1008', '2001', '2013', '13108412');
INSERT INTO `user` VALUES ('13108301', '刘龙琼', '3002', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108302', '陆勤伟', '3002', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108303', '罗文灼', '3002', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108304', '钱丽云', '3002', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108305', '宋国英', '3002', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108306', '王雨婷', '3002', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108307', '杨雅迪', '3002', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108308', '陈纪宇', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108309', '陈振兴', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108310', '崔健', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108311', '郭明喆', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108312', '郝晓辰', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108313', '胡飘平', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108314', '黄义刚', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108315', '蒋凡', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108316', '蓝毅杰', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108317', '李东', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108318', '李富涛', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108319', '刘昆', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108320', '刘泽文', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108321', '罗杰宇', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108322', '潘广强', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108323', '曲家慷', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108324', '史文韬', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108325', '苏杨', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108326', '唐波', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108327', '汪诗峰', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108328', '王建楼', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108329', '王翊凡', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108330', '文军', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108331', '徐逸玮', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108332', '闫磊磊', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108333', '杨东晏', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108335', '游晨阳', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108336', '苑新建', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108337', '张天蔚', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108338', '赵望', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108339', '郑高鹏', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108340', '郑章', '3001', '1008', '2001', '2013', '13108413');
INSERT INTO `user` VALUES ('13108401', '方璟', '3002', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108402', '罗彩天', '3002', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108403', '史梦茹', '3002', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108404', '王晶晶', '3002', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108405', '吴昀珠', '3002', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108406', '张若南', '3002', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108407', '白树明', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108408', '曹秀士', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108409', '陈健', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108410', '陈志强', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108411', '戴王炯', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108412', '顾梦超', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108413', '郭洪建', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108414', '霍贝迪', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108415', '赖俊贤', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108416', '李波', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108417', '李刚', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108418', '李剑', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108419', '李帅', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108420', '刘昌荣', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108421', '刘振俊', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108422', '刘琛', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108423', '孟永涛', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108424', '冉梦', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108425', '孙瑜', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108426', '唐民强', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108427', '王超建', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108428', '王震宇', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108429', '翁凌翔', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108430', '徐世国', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108431', '徐伟男', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108432', '薛傲', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108434', '杨晴贺', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108435', '杨一波', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108436', '詹建恩', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108437', '张华兴', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108438', '张锦涛', '3001', '1008', '2001', '2013', '13108414');
INSERT INTO `user` VALUES ('13108439', '郑扬', '3001', '1008', '2001', '2013', '13108414');

-- ----------------------------
-- Table structure for `website`
-- ----------------------------
DROP TABLE IF EXISTS `website`;
CREATE TABLE `website` (
  `ca_id` int(11) NOT NULL auto_increment COMMENT '类别编号',
  `co_id` int(11) default NULL COMMENT '学院编号',
  `website` varchar(255) default NULL COMMENT '对应网址',
  PRIMARY KEY  (`ca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of website
-- ----------------------------
INSERT INTO `website` VALUES ('1', '1000', 'http://news.hdu.edu.cn/plus/rss.php?tid=3');
INSERT INTO `website` VALUES ('2', '1000', 'http://news.hdu.edu.cn/plus/list.php?tid=9');
INSERT INTO `website` VALUES ('3', '1000', 'http://news.hdu.edu.cn/plus/list.php?tid=10');
INSERT INTO `website` VALUES ('4', '1000', 'http://news.hdu.edu.cn/plus/rss.php?tid=11');
INSERT INTO `website` VALUES ('6', '1001', 'mechanical.hdu.edu.cn/xueyuan.php');
INSERT INTO `website` VALUES ('7', '1001', 'mechanical.hdu.edu.cn/jiaoxue.php');
INSERT INTO `website` VALUES ('8', '1001', 'mechanical.hdu.edu.cn/keyan.php');
INSERT INTO `website` VALUES ('9', '1002', 'http://elec.hdu.edu.cn/news/class/?1.html');
INSERT INTO `website` VALUES ('10', '1002', 'http://elec.hdu.edu.cn/news/class/?57.html');
INSERT INTO `website` VALUES ('11', '1002', 'http://elec.hdu.edu.cn/jiaoan/class/?4.html');
INSERT INTO `website` VALUES ('12', '1002', 'http://elec.hdu.edu.cn/kexueyanjiu/class/?81.html');
INSERT INTO `website` VALUES ('13', '1002', 'http://elec.hdu.edu.cn/student/class/?22.html');
INSERT INTO `website` VALUES ('14', '1003', 'http://comm.hdu.edu.cn/jygg/Index.aspx?Name=%e6%95%99%e7%a0%94%e5%85%ac%e5%91%8a');
INSERT INTO `website` VALUES ('15', '1003', 'http://comm.hdu.edu.cn/xsdt/Index.aspx?Name=%e9%80%9a%e7%9f%a5%e5%85%ac%e5%91%8a');
INSERT INTO `website` VALUES ('16', '1003', 'http://comm.hdu.edu.cn/xsdt/Index.aspx?TypeId=6&Name=%e4%b8%93%e9%a2%98%e8%ae%b2%e5%ba%a7');
INSERT INTO `website` VALUES ('17', '1003', 'http://comm.hdu.edu.cn/xsdt/Index.aspx?Name=%e5%ad%a6%e7%94%9f%e5%8a%a8%e6%80%81');
INSERT INTO `website` VALUES ('18', '1004', 'http://auto.hdu.edu.cn/Col/Col46/Index.aspx');
INSERT INTO `website` VALUES ('19', '1004', 'http://auto.hdu.edu.cn/Col/Col47/Index.aspx');
INSERT INTO `website` VALUES ('20', '1004', 'http://auto.hdu.edu.cn/Col/Col48/Index.aspx');
INSERT INTO `website` VALUES ('21', '1004', 'http://auto.hdu.edu.cn/Col/Col49/Index.aspx');
INSERT INTO `website` VALUES ('22', '1004', 'http://auto.hdu.edu.cn/Col/Col50/Index.aspx');
INSERT INTO `website` VALUES ('23', '1005', 'http://computer.hdu.edu.cn/index.php/list/57');
INSERT INTO `website` VALUES ('24', '1005', 'http://computer.hdu.edu.cn/index.php/list/23');
INSERT INTO `website` VALUES ('25', '1005', 'http://computer.hdu.edu.cn/index.php/list/31');
INSERT INTO `website` VALUES ('26', '1005', 'http://computer.hdu.edu.cn/index.php/list/56');
INSERT INTO `website` VALUES ('27', '1005', 'http://computer.hdu.edu.cn/index.php/list/49');
INSERT INTO `website` VALUES ('28', '1005', 'http://computer.hdu.edu.cn/index.php/list/37');
INSERT INTO `website` VALUES ('29', '1005', 'http://computer.hdu.edu.cn/index.php/list/44');
INSERT INTO `website` VALUES ('30', '1006', 'http://cmee.hdu.edu.cn/content/newslist.aspx?id=90');
INSERT INTO `website` VALUES ('31', '1006', 'http://cmee.hdu.edu.cn/content/newslist.aspx?id=50');
INSERT INTO `website` VALUES ('32', '1006', 'http://cmee.hdu.edu.cn/content/newslist.aspx?id=49');
INSERT INTO `website` VALUES ('33', '1006', 'http://cmee.hdu.edu.cn/content/newslist.aspx?id=48');
INSERT INTO `website` VALUES ('34', '1007', 'http://lisie.hdu.edu.cn/?cat=62');
INSERT INTO `website` VALUES ('35', '1007', 'http://lisie.hdu.edu.cn/?cat=76');
INSERT INTO `website` VALUES ('36', '1007', 'http://lisie.hdu.edu.cn/?cat=66');
INSERT INTO `website` VALUES ('37', '1007', 'http://lisie.hdu.edu.cn/?cat=84');
INSERT INTO `website` VALUES ('38', '1008', 'http://itsoft.hdu.edu.cn/default/category/index/categoryid/82');
INSERT INTO `website` VALUES ('39', '1008', 'http://itsoft.hdu.edu.cn/default/category/index/categoryid/42');
INSERT INTO `website` VALUES ('40', '1008', 'http://itsoft.hdu.edu.cn/default/category/index/categoryid/94');
INSERT INTO `website` VALUES ('41', '1008', 'http://itsoft.hdu.edu.cn/default/category/index/categoryid/41');
INSERT INTO `website` VALUES ('42', '1008', 'http://itsoft.hdu.edu.cn/default/category/index/categoryid/65');
INSERT INTO `website` VALUES ('43', '1009', 'http://sci.hdu.edu.cn/content/index_show.aspx?id=2');
INSERT INTO `website` VALUES ('44', '1009', 'http://sci.hdu.edu.cn/content/index_show.aspx?id=4');
INSERT INTO `website` VALUES ('45', '1009', 'http://sci.hdu.edu.cn/content/index_show.aspx?id=5');
INSERT INTO `website` VALUES ('46', '1009', 'http://sci.hdu.edu.cn/content/index_show.aspx?id=6');
INSERT INTO `website` VALUES ('47', '1009', 'http://sci.hdu.edu.cn/content/newslist.aspx?id=20');
INSERT INTO `website` VALUES ('48', '1010', 'http://economics.hdu.edu.cn/chinese/column.php?id=16');
INSERT INTO `website` VALUES ('49', '1010', 'http://economics.hdu.edu.cn/chinese/column.php?id=3');
INSERT INTO `website` VALUES ('50', '1010', 'http://economics.hdu.edu.cn/chinese/column.php?id=25');
INSERT INTO `website` VALUES ('51', '1010', 'http://economics.hdu.edu.cn/chinese/column.php?id=36');
INSERT INTO `website` VALUES ('52', '1011', 'http://management.hdu.edu.cn/Col/Col15/Index.aspx');
INSERT INTO `website` VALUES ('53', '1011', 'http://management.hdu.edu.cn/Col/Col53/Index.aspx');
INSERT INTO `website` VALUES ('54', '1011', 'http://management.hdu.edu.cn/Col/Col54/Index.aspx');
INSERT INTO `website` VALUES ('55', '1011', 'http://management.hdu.edu.cn/Col/Col55/Index.aspx');
INSERT INTO `website` VALUES ('56', '1011', 'http://management.hdu.edu.cn/Col/Col56/Index.aspx');
INSERT INTO `website` VALUES ('57', '1011', 'http://management.hdu.edu.cn/Col/Col59/Index.aspx');
INSERT INTO `website` VALUES ('58', '1011', 'http://management.hdu.edu.cn/Col/Col60/Index.aspx');
INSERT INTO `website` VALUES ('59', '1012', 'http://accounting.hdu.edu.cn/?list-596.html');
INSERT INTO `website` VALUES ('60', '1012', 'http://accounting.hdu.edu.cn/?list-589');
INSERT INTO `website` VALUES ('61', '1012', 'http://accounting.hdu.edu.cn/?list-595');
INSERT INTO `website` VALUES ('62', '1012', 'http://accounting.hdu.edu.cn/?list-592');
INSERT INTO `website` VALUES ('63', '1012', 'http://accounting.hdu.edu.cn/?list-659');
INSERT INTO `website` VALUES ('64', '1012', 'http://accounting.hdu.edu.cn/?list-593');
INSERT INTO `website` VALUES ('65', '1013', 'http://foreignedu.hdu.edu.cn/list.php?cid=34');
INSERT INTO `website` VALUES ('66', '1013', 'http://foreignedu.hdu.edu.cn/list.php?cid=35');
INSERT INTO `website` VALUES ('67', '1014', 'http://syxy.hdu.edu.cn/index.php?c=content&a=list&catid=31');
INSERT INTO `website` VALUES ('68', '1014', 'http://syxy.hdu.edu.cn/index.php?c=content&a=list&catid=101');
INSERT INTO `website` VALUES ('69', '1014', 'http://syxy.hdu.edu.cn/index.php?c=content&a=list&catid=23');
INSERT INTO `website` VALUES ('70', '1014', 'http://syxy.hdu.edu.cn/index.php?c=content&a=list&catid=30');
INSERT INTO `website` VALUES ('71', '1015', 'http://rwxy.hdu.edu.cn/home/articlelist.php?arcid=76');
INSERT INTO `website` VALUES ('72', '1015', 'http://rwxy.hdu.edu.cn/home/articlelist.php?arcid=80');
INSERT INTO `website` VALUES ('73', '1015', 'http://rwxy.hdu.edu.cn/home/articlelist.php?arcid=6');
INSERT INTO `website` VALUES ('74', '1015', 'http://rwxy.hdu.edu.cn/home/articlelist.php?arcid=101');
INSERT INTO `website` VALUES ('75', '1016', 'http://marx.hdu.edu.cn/article_more.php?list=47');
INSERT INTO `website` VALUES ('76', '1016', 'http://marx.hdu.edu.cn/article_more.php?list=48');
INSERT INTO `website` VALUES ('77', '1017', 'http://ped.hdu.edu.cn/default/category/index/id/53');
INSERT INTO `website` VALUES ('78', '1017', 'http://ped.hdu.edu.cn/default/category/index/categoryid/13');
INSERT INTO `website` VALUES ('79', '1017', 'http://ped.hdu.edu.cn/default/category/index/id/54');
INSERT INTO `website` VALUES ('80', '1017', 'http://ped.hdu.edu.cn/default/category/index/id/55');
INSERT INTO `website` VALUES ('81', '1018', 'http://zhuoyue.hdu.edu.cn/news.aspx?channelid=210');
INSERT INTO `website` VALUES ('82', '1018', 'http://zhuoyue.hdu.edu.cn/zysc.aspx?channelid=179');
INSERT INTO `website` VALUES ('83', '1018', 'http://zhuoyue.hdu.edu.cn/news.aspx?channelid=203');
INSERT INTO `website` VALUES ('84', '1018', 'http://zhuoyue.hdu.edu.cn/news.aspx?channelid=204');
INSERT INTO `website` VALUES ('85', '1018', 'http://zhuoyue.hdu.edu.cn/news.aspx?channelid=207');
INSERT INTO `website` VALUES ('86', '1018', 'http://zhuoyue.hdu.edu.cn/news.aspx?channelid=205');
INSERT INTO `website` VALUES ('87', '1018', 'http://zhuoyue.hdu.edu.cn/news.aspx?channelid=206');
INSERT INTO `website` VALUES ('88', '1019', 'http://sie.hdu.edu.cn/Col/Col66/Index.aspx');
INSERT INTO `website` VALUES ('89', '1019', 'http://sie.hdu.edu.cn/Col/Col67/Index.aspx');
INSERT INTO `website` VALUES ('90', '1019', 'http://sie.hdu.edu.cn/Col/Col71/Index.aspx');
INSERT INTO `website` VALUES ('91', '1019', 'http://sie.hdu.edu.cn/Col/Col149/Index.aspx');
INSERT INTO `website` VALUES ('92', '1020', 'http://adultedu.hdu.edu.cn/showmore.asp?classid=7');
INSERT INTO `website` VALUES ('93', '1020', 'http://adultedu.hdu.edu.cn/showmore.asp?classid=95');
INSERT INTO `website` VALUES ('94', '1020', 'http://adultedu.hdu.edu.cn/showmore.asp?classid=8');
INSERT INTO `website` VALUES ('95', '1021', 'http://www.hziee.edu.cn/html/news/index.html');
INSERT INTO `website` VALUES ('96', '1021', 'http://www.hziee.edu.cn/html/news/index.html');
