/*
MySQL Data Transfer
Source Host: localhost
Source Database: resume_system
Target Host: localhost
Target Database: resume_system
Date: 2016/8/24 16:00:12
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
CREATE TABLE `admin` (
  `admin_name` varchar(6) default NULL,
  `admin_password` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for career_intention
-- ----------------------------
CREATE TABLE `career_intention` (
  `cIntention_id` int(6) NOT NULL auto_increment,
  `industry_id` int(6) default NULL,
  `position_id` int(6) default NULL,
  `expect_worksite` varchar(20) default NULL,
  `expect_salary` double(10,0) default NULL,
  `current_salary` double(10,0) default NULL,
  `is_discuss` int(2) default NULL,
  `is_show` int(2) default NULL,
  PRIMARY KEY  (`cIntention_id`),
  KEY `industry_id` (`industry_id`),
  KEY `position_id` (`position_id`),
  CONSTRAINT `career_intention_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`industry_id`),
  CONSTRAINT `career_intention_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for company
-- ----------------------------
CREATE TABLE `company` (
  `company_id` int(6) NOT NULL auto_increment,
  `company_name` varchar(10) default NULL,
  `company_login_name` varchar(20) default NULL,
  `company_password` varchar(100) default NULL,
  `company_location` varchar(20) default NULL,
  `industry_id` int(6) default NULL,
  `chatter_name` varchar(10) default NULL,
  `chatter_sex` varchar(2) default NULL,
  `company_email` varchar(20) default NULL,
  `chatter_phone` varchar(20) default NULL,
  `phone_number` varchar(20) default NULL,
  `company_description` varchar(10000) default NULL,
  PRIMARY KEY  (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for education_experience
-- ----------------------------
CREATE TABLE `education_experience` (
  `eExperience_id` int(6) NOT NULL auto_increment,
  `school_name` varchar(10) default NULL,
  `major_name` varchar(10) default NULL,
  `start_time` date default NULL,
  `end_time` date default NULL,
  `qualification` varchar(10) default NULL,
  `is_unify` int(2) default NULL,
  PRIMARY KEY  (`eExperience_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for industry
-- ----------------------------
CREATE TABLE `industry` (
  `industry_id` int(6) NOT NULL auto_increment,
  `industry_name` varchar(6) default NULL,
  `parentId` int(6) default NULL,
  PRIMARY KEY  (`industry_id`),
  KEY `parentId` (`parentId`),
  CONSTRAINT `industry_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `industry` (`industry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for job
-- ----------------------------
CREATE TABLE `job` (
  `job_id` int(6) NOT NULL auto_increment,
  `job_name` varchar(20) default NULL,
  `worksite` varchar(100) default NULL,
  `job_subtime` date default NULL,
  `industry_id` int(6) default NULL,
  `job_salary` double(10,0) default NULL,
  `job_status` int(2) default NULL,
  `job_description` varchar(10000) default NULL,
  `job_email` varchar(20) default NULL,
  `company_id` int(6) default NULL,
  `is_hot` int(2) default NULL,
  `job_acquire` varchar(10000) default NULL,
  PRIMARY KEY  (`job_id`),
  KEY `company_id` (`company_id`),
  KEY `industry_id` (`industry_id`),
  CONSTRAINT `job_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job_ibfk_3` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`industry_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for job_acquire
-- ----------------------------
CREATE TABLE `job_acquire` (
  `jAcquire_id` int(6) NOT NULL auto_increment,
  `language_acquire` varchar(10) default NULL,
  `major_acquire` varchar(10) default NULL,
  `qualification_acquire` varchar(10) default NULL,
  `is_unify` int(2) default NULL,
  `age_min` int(6) default NULL,
  `age_max` int(6) default NULL,
  `sex_acquire` varchar(2) default NULL,
  `job_id` int(6) default NULL,
  PRIMARY KEY  (`jAcquire_id`),
  KEY `job_id` (`job_id`),
  CONSTRAINT `job_acquire_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jobhunter
-- ----------------------------
CREATE TABLE `jobhunter` (
  `jobhunter_id` int(6) NOT NULL auto_increment,
  `jobhunter_name` varchar(6) default NULL,
  `jobhunter_real_name` varchar(6) default NULL,
  `jobhunter_password` varchar(100) default NULL,
  `jobhunter_sex` varchar(2) default NULL,
  `jobhunter_birthday` date default NULL,
  `jobhunter_marital_status` varchar(6) default NULL,
  `jobhunter_phone` varchar(15) default NULL,
  `jobhunter_email` varchar(50) default NULL,
  `jobhunter_native_place` varchar(15) default NULL,
  `jobhunt_entrance_status` varchar(20) default NULL,
  `jobhunter_self_appraisal` varchar(1000) default NULL,
  `jobhunter_graduate_school` varchar(50) default NULL,
  `jobhunter_qualification` varchar(10) default NULL,
  `jobhunter_address` varchar(100) default NULL,
  `jobhunter_joindate` date default NULL,
  `jobhunter_last_logindate` date default NULL,
  `jobhunter_edit_status` int(2) default NULL,
  `jobhunter_extra_message` varchar(1000) default NULL,
  PRIMARY KEY  (`jobhunter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jobhunter_upload
-- ----------------------------
CREATE TABLE `jobhunter_upload` (
  `upload_id` int(6) NOT NULL auto_increment,
  `jobhunter_id` int(6) default NULL,
  `company_id` int(6) default NULL,
  `upload_location` varchar(100) default NULL,
  `upload_name` varchar(50) default NULL,
  `upload_time` date default NULL,
  `upload_type` varchar(20) default NULL,
  PRIMARY KEY  (`upload_id`),
  KEY `jobhunter_id` (`jobhunter_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `jobhunter_upload_ibfk_1` FOREIGN KEY (`jobhunter_id`) REFERENCES `jobhunter` (`jobhunter_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jobhunter_upload_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mail
-- ----------------------------
CREATE TABLE `mail` (
  `mail_id` int(6) NOT NULL auto_increment,
  `mail_from` varchar(10) default NULL,
  `mail_msg` varchar(100) default NULL,
  `mail_title` varchar(20) default NULL,
  `mail_to` varchar(10) default NULL,
  `mail_date` date default NULL,
  PRIMARY KEY  (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
CREATE TABLE `notice` (
  `notice_id` int(6) NOT NULL auto_increment,
  `notice_title` varchar(20) default NULL,
  `notice_content` varchar(100) default NULL,
  `notice_author` varchar(10) default NULL,
  `notice_date` date default NULL,
  PRIMARY KEY  (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for position
-- ----------------------------
CREATE TABLE `position` (
  `position_id` int(6) NOT NULL auto_increment,
  `position_name` varchar(20) default NULL,
  `industry_id` int(6) default NULL,
  PRIMARY KEY  (`position_id`),
  KEY `industry_id` (`industry_id`),
  CONSTRAINT `position_ibfk_2` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`industry_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for project_experience
-- ----------------------------
CREATE TABLE `project_experience` (
  `pExperience_id` int(6) NOT NULL auto_increment,
  `project_name` varchar(10) default NULL,
  `company_name` varchar(10) default NULL,
  `project_position` varchar(10) default NULL,
  `start_time` date default NULL,
  `end_time` date default NULL,
  `project_description` varchar(100) default NULL,
  `project_responsibility` varchar(100) default NULL,
  `project_achievement` varchar(100) default NULL,
  PRIMARY KEY  (`pExperience_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for resume
-- ----------------------------
CREATE TABLE `resume` (
  `resume_id` int(6) NOT NULL auto_increment,
  `jobhunter_id` int(6) default NULL,
  `career_intention_id` int(6) default NULL,
  `work_experience_ids` varchar(15) default NULL,
  `education_experience_ids` varchar(15) default NULL,
  `project_experience_ids` varchar(15) default NULL,
  `visibility` int(2) default NULL,
  `visit_number` int(6) default NULL,
  `last_edit_time` date default NULL,
  PRIMARY KEY  (`resume_id`),
  KEY `jobhunter_id` (`jobhunter_id`),
  KEY `career_intention_id` (`career_intention_id`),
  CONSTRAINT `resume_ibfk_3` FOREIGN KEY (`jobhunter_id`) REFERENCES `jobhunter` (`jobhunter_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `resume_ibfk_4` FOREIGN KEY (`career_intention_id`) REFERENCES `career_intention` (`cIntention_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for resume_job
-- ----------------------------
CREATE TABLE `resume_job` (
  `resume_id` int(6) default NULL,
  `job_id` int(6) default NULL,
  `submitTime` date default NULL,
  KEY `resume_id` (`resume_id`),
  KEY `job_id` (`job_id`),
  CONSTRAINT `resume_job_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`resume_id`),
  CONSTRAINT `resume_job_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for work_experience
-- ----------------------------
CREATE TABLE `work_experience` (
  `wExperience_id` int(6) NOT NULL auto_increment,
  `company_name` varchar(20) default NULL,
  `company_industry_id` int(6) default NULL,
  `position_name` varchar(20) default NULL,
  `worksite` varchar(20) default NULL,
  `subordinate_number` int(10) default NULL,
  `start_time` date default NULL,
  `end_time` date default NULL,
  `duty` varchar(20) default NULL,
  PRIMARY KEY  (`wExperience_id`),
  KEY `company_industry_id` (`company_industry_id`),
  CONSTRAINT `work_experience_ibfk_1` FOREIGN KEY (`company_industry_id`) REFERENCES `industry` (`industry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');
INSERT INTO `career_intention` VALUES ('1', '1', '2', '广东省广州市', '8888', '8888', '1', '1');
INSERT INTO `career_intention` VALUES ('2', '4', '2', '12313123', '1231312', '123123', '1', '1');
INSERT INTO `company` VALUES ('1', '科易光电', '雾醉澜海', 'fe546daf817a2454b46ba978f0088b8a', '河北省广州市', '1', '张海彪', '男', '1473209216@qq.com', '18814092579', '18814092579', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；\r\n2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；\r\n3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；\r\n4、充满创意与活力，具有颠覆传统的理念；\r\n5、能充分管理个人以及团队时间，有良好的统筹意识；\r\n6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `company` VALUES ('2', '中信证券', '中信证券', 'b59c67bf196a4758191e42f76670ceba', '河北省上海市', '1', '张海彪', '男', '1473209216@qq.com', '18814092579', '18814092579', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；\r\n2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；\r\n3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；\r\n4、充满创意与活力，具有颠覆传统的理念；\r\n5、能充分管理个人以及团队时间，有良好的统筹意识；\r\n6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `company` VALUES ('3', '美的集团', '美的集团', '81dc9bdb52d04dc20036dbd8313ed055', '广东省广州市', '3', '张海彪', '男', '1111111111@qq.com', '18814092579', '11111111111', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；\r\n2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；\r\n3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；\r\n4、充满创意与活力，具有颠覆传统的理念；\r\n5、能充分管理个人以及团队时间，有良好的统筹意识；\r\n6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `company` VALUES ('4', '康泽药业', '康泽药业', '81dc9bdb52d04dc20036dbd8313ed055', '广东省广州市', '2', '张海彪', '男', '1473209216@qq.com', '18814092579', '18814092579', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；\r\n2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；\r\n3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；\r\n4、充满创意与活力，具有颠覆传统的理念；\r\n5、能充分管理个人以及团队时间，有良好的统筹意识；\r\n6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `company` VALUES ('5', '农商银行', '农商银行', 'e10adc3949ba59abbe56e057f20f883e', '广东省北京市', '2', '张海彪', '男', 'willberchang@qq.com', '18814092579', '13232411200', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；\r\n2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；\r\n3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；\r\n4、充满创意与活力，具有颠覆传统的理念；\r\n5、能充分管理个人以及团队时间，有良好的统筹意识；\r\n6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `company` VALUES ('6', '百度集团', '百度集团', 'b59c67bf196a4758191e42f76670ceba', '广东省北京市', '4', '张海彪', '男', '1111111111@qq.com', '18814092579', '11111111111', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；\r\n2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；\r\n3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；\r\n4、充满创意与活力，具有颠覆传统的理念；\r\n5、能充分管理个人以及团队时间，有良好的统筹意识；\r\n6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `company` VALUES ('7', 'GO桌面', 'GO桌面', '81dc9bdb52d04dc20036dbd8313ed055', '广东省广州市', '5', '张海彪', '男', '1473209216@qq.com', '18814092579', '18814092579', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；\r\n2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；\r\n3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；\r\n4、充满创意与活力，具有颠覆传统的理念；\r\n5、能充分管理个人以及团队时间，有良好的统筹意识；\r\n6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `company` VALUES ('8', '建辉建材', '建辉建材', '81dc9bdb52d04dc20036dbd8313ed055', '广东省广州市', '5', '张海彪', '男', '1111111111@qq.com', '18814092579', '11111111111', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；\r\n2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；\r\n3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；\r\n4、充满创意与活力，具有颠覆传统的理念；\r\n5、能充分管理个人以及团队时间，有良好的统筹意识；\r\n6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `company` VALUES ('9', '美的集团（分）', '美的集团（分）', '81dc9bdb52d04dc20036dbd8313ed055', '广东省广州市', '6', '张海彪', '男', '1111111111@qq.com', '18814092579', '11111111111', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；\r\n2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；\r\n3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；\r\n4、充满创意与活力，具有颠覆传统的理念；\r\n5、能充分管理个人以及团队时间，有良好的统筹意识；\r\n6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `company` VALUES ('10', '长城汽车', '长城汽车', '81dc9bdb52d04dc20036dbd8313ed055', '广东省广州市', '6', '张海彪', '男', '1111111111@qq.com', '18814092579', '11111111111', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；\r\n2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；\r\n3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；\r\n4、充满创意与活力，具有颠覆传统的理念；\r\n5、能充分管理个人以及团队时间，有良好的统筹意识；\r\n6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `education_experience` VALUES ('1', '华农', '软件工程', '2014-09-01', '2016-02-01', '博士', '1');
INSERT INTO `education_experience` VALUES ('2', '湛实', '理综', '2013-08-01', '2016-01-01', '高中', '1');
INSERT INTO `education_experience` VALUES ('3', '中山大学', '软件工程', '2015-01-01', '2016-01-01', '博士', '1');
INSERT INTO `education_experience` VALUES ('6', '汕头金山中学', '理科煞笔', '2010-09-01', '2013-09-01', '高中', '1');
INSERT INTO `education_experience` VALUES ('8', '123123', '123123', '2016-01-01', '2016-01-01', '博士', '1');
INSERT INTO `industry` VALUES ('1', '互联网·IT', null);
INSERT INTO `industry` VALUES ('2', '金融业', null);
INSERT INTO `industry` VALUES ('3', '快销行业', null);
INSERT INTO `industry` VALUES ('4', '建筑业', null);
INSERT INTO `industry` VALUES ('5', '汽车·制造', null);
INSERT INTO `industry` VALUES ('6', '医疗·化工', null);
INSERT INTO `industry` VALUES ('10', '软件', '1');
INSERT INTO `industry` VALUES ('11', '硬件', '1');
INSERT INTO `job` VALUES ('1', 'php工程师', '广东省广州市天河区科韵路科创大厦8楼', '2016-07-29', '1', '4000', '1', '1、负责公司软件产品、项目的流程设计、视觉设计、体验设计的把控；<br />2、负责设计团队的设计品质和工作效率，保质保量完成公司设计任务；<br />3、完善公司UI设计体系，根据不同的产品项目提出整体设计思路，并制定相应的设计规范和标准；<br />4、参与重点产品的具体设计工作及产品创作过程，提供专业意见；<br /> 5、负责设计组的人员管理，稳步提升设计团队的专业能力。<br />', '1473209216@qq.com', '1', '1', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；<br />2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；<br />3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；<br />4、充满创意与活力，具有颠覆传统的理念；<br />5、能充分管理个人以及团队时间，有良好的统筹意识；<br />6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `job` VALUES ('2', '运营分析师', '广东省广州市萝岗区光谱大道万科云大楼A栋12层-15层开发部', '2016-07-28', '1', '5000', '1', '1、负责公司软件产品、项目的流程设计、视觉设计、体验设计的把控；<br />2、负责设计团队的设计品质和工作效率，保质保量完成公司设计任务；<br />3、完善公司UI设计体系，根据不同的产品项目提出整体设计思路，并制定相应的设计规范和标准；<br />4、参与重点产品的具体设计工作及产品创作过程，提供专业意见；<br /> 5、负责设计组的人员管理，稳步提升设计团队的专业能力。<br />', '1473209216@qq.com', '1', '1', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；<br />2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；<br />3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；<br />4、充满创意与活力，具有颠覆传统的理念；<br />5、能充分管理个人以及团队时间，有良好的统筹意识；<br />6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `job` VALUES ('3', '销售经理', '广东省广州市白云区开创大道阿里巴巴园区D栋2楼', '2016-08-08', '2', '6000', '1', '岗位职责：\r\n1、负责公司软件产品、项目的流程设计、视觉设计、体验设计的把控；<br />2、负责设计团队的设计品质和工作效率，保质保量完成公司设计任务；<br />3、完善公司UI设计体系，根据不同的产品项目提出整体设计思路，并制定相应的设计规范和标准；<br />4、参与重点产品的具体设计工作及产品创作过程，提供专业意见；<br /> 5、负责设计组的人员管理，稳步提升设计团队的专业能力。<br />', '1473209216@qq.com', '1', '1', '岗位要求：\r\n1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；<br />2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；<br />3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；<br />4、充满创意与活力，具有颠覆传统的理念；<br />5、能充分管理个人以及团队时间，有良好的统筹意识；<br />6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `job` VALUES ('4', '研究项目经理', '广东省广州市海珠区江南大道新云大厦23楼', '2016-08-07', '2', '4000', '1', '1、负责公司软件产品、项目的流程设计、视觉设计、体验设计的把控；<br />2、负责设计团队的设计品质和工作效率，保质保量完成公司设计任务；<br />3、完善公司UI设计体系，根据不同的产品项目提出整体设计思路，并制定相应的设计规范和标准；<br />4、参与重点产品的具体设计工作及产品创作过程，提供专业意见；<br /> 5、负责设计组的人员管理，稳步提升设计团队的专业能力。<br />', '1473209216@qq.com', '4', '1', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；<br />2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；<br />3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；<br />4、充满创意与活力，具有颠覆传统的理念；<br />5、能充分管理个人以及团队时间，有良好的统筹意识；<br />6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `job` VALUES ('5', '分行经理', '广东省广州市海珠区江南大道新云大厦23楼', '2016-08-06', '3', '8000', '1', '1、负责公司软件产品、项目的流程设计、视觉设计、体验设计的把控；<br />2、负责设计团队的设计品质和工作效率，保质保量完成公司设计任务；<br />3、完善公司UI设计体系，根据不同的产品项目提出整体设计思路，并制定相应的设计规范和标准；<br />4、参与重点产品的具体设计工作及产品创作过程，提供专业意见；<br /> 5、负责设计组的人员管理，稳步提升设计团队的专业能力。<br />', '1473209216@qq.com', '5', '1', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；<br />2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；<br />3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；<br />4、充满创意与活力，具有颠覆传统的理念；<br />5、能充分管理个人以及团队时间，有良好的统筹意识；<br />6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `job` VALUES ('6', '项目经理', '广东省广州市海珠区江南大道新云大厦23楼', '2016-08-05', '3', '7000', '1', '1、负责公司软件产品、项目的流程设计、视觉设计、体验设计的把控；<br />2、负责设计团队的设计品质和工作效率，保质保量完成公司设计任务；<br />3、完善公司UI设计体系，根据不同的产品项目提出整体设计思路，并制定相应的设计规范和标准；<br />4、参与重点产品的具体设计工作及产品创作过程，提供专业意见；<br /> 5、负责设计组的人员管理，稳步提升设计团队的专业能力。<br />', '1473209216@qq.com', '6', '1', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；<br />2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；<br />3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；<br />4、充满创意与活力，具有颠覆传统的理念；<br />5、能充分管理个人以及团队时间，有良好的统筹意识；<br />6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `job` VALUES ('7', 'UI设计师', '广东省广州市海珠区江南大道新云大厦23楼', '2016-08-04', '4', '6000', '1', '1、负责公司软件产品、项目的流程设计、视觉设计、体验设计的把控；<br />2、负责设计团队的设计品质和工作效率，保质保量完成公司设计任务；<br />3、完善公司UI设计体系，根据不同的产品项目提出整体设计思路，并制定相应的设计规范和标准；<br />4、参与重点产品的具体设计工作及产品创作过程，提供专业意见；<br /> 5、负责设计组的人员管理，稳步提升设计团队的专业能力。<br />', '1473209216@qq.com', '7', '1', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；<br />2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；<br />3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；<br />4、充满创意与活力，具有颠覆传统的理念；<br />5、能充分管理个人以及团队时间，有良好的统筹意识；<br />6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `job` VALUES ('8', '销售经理', '广东省广州市海珠区江南大道新云大厦23楼', '2016-08-03', '4', '5000', '1', '1、负责公司软件产品、项目的流程设计、视觉设计、体验设计的把控；<br />2、负责设计团队的设计品质和工作效率，保质保量完成公司设计任务；<br />3、完善公司UI设计体系，根据不同的产品项目提出整体设计思路，并制定相应的设计规范和标准；<br />4、参与重点产品的具体设计工作及产品创作过程，提供专业意见；<br /> 5、负责设计组的人员管理，稳步提升设计团队的专业能力。<br />', '1473209216@qq.com', '8', '1', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；<br />2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；<br />3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；<br />4、充满创意与活力，具有颠覆传统的理念；<br />5、能充分管理个人以及团队时间，有良好的统筹意识；<br />6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `job` VALUES ('9', '广告部经理', '广东省广州市海珠区江南大道新云大厦23楼', '2016-08-02', '5', '5000', '1', '1、负责公司软件产品、项目的流程设计、视觉设计、体验设计的把控；<br />2、负责设计团队的设计品质和工作效率，保质保量完成公司设计任务；<br />3、完善公司UI设计体系，根据不同的产品项目提出整体设计思路，并制定相应的设计规范和标准；<br />4、参与重点产品的具体设计工作及产品创作过程，提供专业意见；<br /> 5、负责设计组的人员管理，稳步提升设计团队的专业能力。<br />', '1473209216@qq.com', '9', '1', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；<br />2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；<br />3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；<br />4、充满创意与活力，具有颠覆传统的理念；<br />5、能充分管理个人以及团队时间，有良好的统筹意识；<br />6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `job` VALUES ('10', '研究项目经理', '广东省广州市海珠区江南大道新云大厦23楼', '2016-08-01', '6', '8000', '1', '1、负责公司软件产品、项目的流程设计、视觉设计、体验设计的把控；<br />2、负责设计团队的设计品质和工作效率，保质保量完成公司设计任务；<br />3、完善公司UI设计体系，根据不同的产品项目提出整体设计思路，并制定相应的设计规范和标准；<br />4、参与重点产品的具体设计工作及产品创作过程，提供专业意见；<br /> 5、负责设计组的人员管理，稳步提升设计团队的专业能力。<br />', '1473209216@qq.com', '10', '1', '1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；<br />2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；<br />3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；<br />4、充满创意与活力，具有颠覆传统的理念；<br />5、能充分管理个人以及团队时间，有良好的统筹意识；<br />6、具有良好的提案能力、领导能力和团队管理能力。');
INSERT INTO `job` VALUES ('11', '洗头妹', '你好靓洗剪吹', '2016-08-24', '6', '5000', '1', '专业洗头30年', '1111111111@qq.com', '1', '1', '长得漂亮');
INSERT INTO `job` VALUES ('12', '张伟桐', '12313', '2016-08-24', '4', '123', '1', '123123123', '1111111111@qq.com', '1', '1', '1321231231');
INSERT INTO `job` VALUES ('13', '张伟桐23123', '241231', '2016-08-24', '5', '3123', '1', '123123', '1111111111@qq.com', '1', '1', '12312');
INSERT INTO `job_acquire` VALUES ('1', '普通话', '软件工程', '本科生', '1', '18', '30', '男', '1');
INSERT INTO `jobhunter` VALUES ('2', '雾醉澜海', '张伟桐', 'fe546daf817a2454b46ba978f0088b8a', '男', '1994-03-01', '未婚', '18814092579', '1473209216@qq.com', '广东省广州市', '在职，暂无跳槽打算', '11111', '234242', '本科', '广东省广州市华南农业大学', '2016-07-28', null, '0', '88888');
INSERT INTO `jobhunter` VALUES ('3', '雾醉澜海1', '张海彪', 'fe546daf817a2454b46ba978f0088b8a', '男', '1990-01-01', '未婚', '11111111111', '1111111111@qq.com', '河北省广州市', '在职，看看新机会', '大大大', '1231231', '高中以下', '广东省广州市xxxxxxx', '2016-08-04', null, '0', '123123123');
INSERT INTO `jobhunter` VALUES ('4', '雾醉澜海2', '张海彪', 'e10adc3949ba59abbe56e057f20f883e', '女', '1996-04-01', '未婚', '18814092579', '1473209216@qq.com', '广东省上海市', '离职，正在找工作', '1231', '123', '高中以下', '广东省广州市xxxxxxx', '2016-08-04', null, '0', '4123123');
INSERT INTO `jobhunter` VALUES ('5', '雾醉澜海3', '张海彪', '934b535800b1cba8f96a5d72f72f1611', '女', '1990-01-01', '未婚', '18814092579', '1473209216@qq.com', '广东省北京市', '在职，暂无跳槽打算', '1231', '123131', '高中', '广东省广州市xxxxxxx', '2016-08-04', null, '0', '112312');
INSERT INTO `jobhunter` VALUES ('6', '雾醉澜海4', '12', '2be9bd7a3434f7038ca27d1918de58bd', '女', '1990-02-01', '未婚', '18814092579', '1473209216@qq.com', '广东省上海市', '离职，正在找工作', '12312', '12312', '本科', '广东省广州市xxxxxxx', '2016-08-04', null, '0', '12312');
INSERT INTO `jobhunter` VALUES ('7', '雾醉澜海5', '123', 'dbc4d84bfcfe2284ba11beffb853a8c4', '女', '1990-02-01', '未婚', '11111111111', '1473209216@qq.com', '河北省上海市', '离职，正在找工作', '123131', '1231231', '本科', '广东省广州市xxxxxxx', '2016-08-04', null, '0', '31312321');
INSERT INTO `jobhunter` VALUES ('8', '雾醉澜海6', '张伟桐', '934b535800b1cba8f96a5d72f72f1611', '女', '1992-04-01', '已婚', '22222222222', '1473209216@qq.com', '河北省上海市', '离职，正在找工作', '1231231', '123131', '高中', '广东省广州市xxxxxxx', '2016-08-04', null, '0', '31231');
INSERT INTO `jobhunter` VALUES ('9', '雾醉澜海7', '张傻彪', '316928e0d260556eaccb6627f2ed657b', '女', '1990-01-01', '已婚', '12345678910', '12345678@qq.com', '广东省广州市', '在职，看看新机会', '我很丑', '蓝翔', '高中以下', '广东省广州市xxxxxxx', '2016-08-04', null, '0', '31231231');
INSERT INTO `jobhunter` VALUES ('10', '雾醉澜海8', '张伟波', 'b59c67bf196a4758191e42f76670ceba', '女', '1991-02-01', '已婚', '18814092579', '1473209216@qq.com', '广东省上海市', '离职，正在找工作', '1231312', '1231231', '高中', '广东省广州市xxxxxxx', '2016-08-05', null, '0', '2313123');
INSERT INTO `jobhunter` VALUES ('11', '123', '张海彪', 'b59c67bf196a4758191e42f76670ceba', '女', '1994-03-01', '未婚', '11111111111', '1111111111@qq.com', '广东省北京市', '离职，正在找工作', '12312312', '12312313', '博士', '1231321', '2016-08-12', null, '1', null);
INSERT INTO `jobhunter` VALUES ('12', '云天河', '云天河', 'e10adc3949ba59abbe56e057f20f883e', '男', '1993-04-01', '不显示', '18814092579', '21312313414@dd.com', '广东省广州市', '在职，看看新机会', '我很帅', '华南农业大学', '高中', '华山十五大', '2016-08-24', null, '1', null);
INSERT INTO `jobhunter_upload` VALUES ('3', '2', null, '/resume/uploads/2016/08/18/', 'f68188cb-0206-494a-a2e1-7036961cabea.jpg', '2016-08-18', 'image/jpeg');
INSERT INTO `jobhunter_upload` VALUES ('4', null, '1', '/resume/uploads/2016/08/23/', '25f95378-71cf-4688-8278-fdf7450b87e9.png', '2016-08-23', 'image/png');
INSERT INTO `jobhunter_upload` VALUES ('5', '3', null, '/resume/uploads/2016/08/24/', 'd3aa1f6f-5ad4-4c23-97ed-8b4136c65e1f.png', '2016-08-24', 'image/png');
INSERT INTO `mail` VALUES ('1', '管理员', '感谢注册本网站！', '欢迎', '张海彪', '2016-07-29');
INSERT INTO `notice` VALUES ('1', 'zhangsan', 'zhang', 'san', '2016-07-27');
INSERT INTO `notice` VALUES ('2', '张', '12', '123', '2016-07-27');
INSERT INTO `notice` VALUES ('3', '张', '12', '1222', '2016-07-27');
INSERT INTO `notice` VALUES ('4', '1', '7', '212', '2016-07-27');
INSERT INTO `notice` VALUES ('5', '123', '123', '123', '2016-07-27');
INSERT INTO `notice` VALUES ('6', '213', '21', '123', '2016-07-27');
INSERT INTO `notice` VALUES ('7', '000', '000', '000', '2016-07-27');
INSERT INTO `notice` VALUES ('8', '0001', '0001', '0001', '2016-07-27');
INSERT INTO `notice` VALUES ('9', '在', '12', '212', '2016-07-27');
INSERT INTO `notice` VALUES ('10', '啊', '啊', '123', '2016-07-27');
INSERT INTO `notice` VALUES ('11', '22啊2', '3是', '的2', '2016-07-27');
INSERT INTO `notice` VALUES ('12', '张', '海', '彪', '2016-07-28');
INSERT INTO `position` VALUES ('1', 'php工程师', '1');
INSERT INTO `position` VALUES ('2', 'java工程师', '1');
INSERT INTO `project_experience` VALUES ('1', '微简历', '东软1', '实习生', '2016-06-01', '2016-07-01', '搭建一个类似猎聘网的个人小网站', '本人主要负责项目的前端页面实现和交互设计', '据统计，网站投入使用后，经过一段时间的宣传，在网络同行的网站点击率占比百分之20%,在广告销售方面取得非常高的利润。');
INSERT INTO `project_experience` VALUES ('6', '的撒打算的', '12313123', null, '2014-01-01', '2016-01-01', '123123', '12312312', '1212312312');
INSERT INTO `project_experience` VALUES ('7', '123123123', '12312312', null, '2016-01-01', '2016-01-01', '1241213', '123123123', '123123');
INSERT INTO `resume` VALUES ('1', '2', '1', '2,3,5,7', '1,2,3,6', '1,6', '0', '0', '2016-07-28');
INSERT INTO `resume` VALUES ('2', '3', '2', '11', '8', '7', '0', '0', null);
INSERT INTO `resume_job` VALUES ('1', '2', '2016-08-01');
INSERT INTO `resume_job` VALUES ('1', '4', '2016-08-08');
INSERT INTO `resume_job` VALUES ('1', '5', '2016-08-07');
INSERT INTO `resume_job` VALUES ('1', '6', '2016-07-31');
INSERT INTO `resume_job` VALUES ('1', '7', '2016-07-19');
INSERT INTO `resume_job` VALUES ('1', '8', '2016-06-22');
INSERT INTO `resume_job` VALUES ('1', '9', '2016-06-21');
INSERT INTO `resume_job` VALUES ('1', '10', '2016-08-18');
INSERT INTO `resume_job` VALUES ('1', '3', '2016-08-19');
INSERT INTO `resume_job` VALUES ('1', '1', '2016-08-23');
INSERT INTO `resume_job` VALUES ('2', '2', '2016-08-24');
INSERT INTO `resume_job` VALUES ('2', '3', '2016-08-24');
INSERT INTO `resume_job` VALUES ('2', '11', '2016-08-24');
INSERT INTO `work_experience` VALUES ('2', '微软', '1', 'java工程师', '广东珠海', '88', '2016-06-01', '2016-07-22', '234242');
INSERT INTO `work_experience` VALUES ('3', '腾讯', '1', 'java工程师', '广东省深圳市xxxxx', '88', '2010-06-01', '2016-06-01', '哈哈哈哈');
INSERT INTO `work_experience` VALUES ('5', '阿里', '1', 'php工程师', '浙江杭州', '1223', '2013-01-01', '2016-01-01', '123');
INSERT INTO `work_experience` VALUES ('7', '哔哩哔哩', '1', 'java工程师', '中国上海', '88', '2010-12-01', '2016-12-01', '12312313');
INSERT INTO `work_experience` VALUES ('11', '12123', '1', '12312', '1231', '123123', '2016-01-01', '2016-01-01', '1231312312');
