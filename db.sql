-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm278i6
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssm278i6`
--

/*!40000 DROP DATABASE IF EXISTS `ssm278i6`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm278i6` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm278i6`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianmingce`
--

DROP TABLE IF EXISTS `dianmingce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianmingce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiandaobianhao` varchar(200) DEFAULT NULL COMMENT '签到编号',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kaoqinzhuangkuang` varchar(200) DEFAULT NULL COMMENT '考勤状况',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `qiandaotupian` varchar(200) DEFAULT NULL COMMENT '签到图片',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiandaobianhao` (`qiandaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='点名册';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianmingce`
--

LOCK TABLES `dianmingce` WRITE;
/*!40000 ALTER TABLE `dianmingce` DISABLE KEYS */;
INSERT INTO `dianmingce` VALUES (31,'2022-02-09 08:56:45','1111111111','2022-02-09','教师姓名1','考勤状况1','备注1','upload/dianmingce_qiandaotupian1.jpg','学号1','姓名1',1),(32,'2022-02-09 08:56:45','2222222222','2022-02-09','教师姓名2','考勤状况2','备注2','upload/dianmingce_qiandaotupian2.jpg','学号2','姓名2',2),(33,'2022-02-09 08:56:45','3333333333','2022-02-09','教师姓名3','考勤状况3','备注3','upload/dianmingce_qiandaotupian3.jpg','学号3','姓名3',3),(34,'2022-02-09 08:56:45','4444444444','2022-02-09','教师姓名4','考勤状况4','备注4','upload/dianmingce_qiandaotupian4.jpg','学号4','姓名4',4),(35,'2022-02-09 08:56:45','5555555555','2022-02-09','教师姓名5','考勤状况5','备注5','upload/dianmingce_qiandaotupian5.jpg','学号5','姓名5',5),(36,'2022-02-09 08:56:45','6666666666','2022-02-09','教师姓名6','考勤状况6','备注6','upload/dianmingce_qiandaotupian6.jpg','学号6','姓名6',6);
/*!40000 ALTER TABLE `dianmingce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstiyujiaoan`
--

DROP TABLE IF EXISTS `discusstiyujiaoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstiyujiaoan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='体育教案评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstiyujiaoan`
--

LOCK TABLES `discusstiyujiaoan` WRITE;
/*!40000 ALTER TABLE `discusstiyujiaoan` DISABLE KEYS */;
INSERT INTO `discusstiyujiaoan` VALUES (141,'2022-02-09 08:56:45',1,1,'用户名1','评论内容1','回复内容1'),(142,'2022-02-09 08:56:45',2,2,'用户名2','评论内容2','回复内容2'),(143,'2022-02-09 08:56:45',3,3,'用户名3','评论内容3','回复内容3'),(144,'2022-02-09 08:56:45',4,4,'用户名4','评论内容4','回复内容4'),(145,'2022-02-09 08:56:45',5,5,'用户名5','评论内容5','回复内容5'),(146,'2022-02-09 08:56:45',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusstiyujiaoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) NOT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshixingming` (`jiaoshixingming`)
) ENGINE=InnoDB AUTO_INCREMENT=1644397112790 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2022-02-09 08:56:45','教师姓名1','123456','男','职称1','13823888881','773890001@qq.com','upload/jiaoshi_touxiang1.jpg','班级1','备注1'),(22,'2022-02-09 08:56:45','教师姓名2','123456','男','职称2','13823888882','773890002@qq.com','upload/jiaoshi_touxiang2.jpg','班级2','备注2'),(23,'2022-02-09 08:56:45','教师姓名3','123456','男','职称3','13823888883','773890003@qq.com','upload/jiaoshi_touxiang3.jpg','班级3','备注3'),(24,'2022-02-09 08:56:45','教师姓名4','123456','男','职称4','13823888884','773890004@qq.com','upload/jiaoshi_touxiang4.jpg','班级4','备注4'),(25,'2022-02-09 08:56:45','教师姓名5','123456','男','职称5','13823888885','773890005@qq.com','upload/jiaoshi_touxiang5.jpg','班级5','备注5'),(26,'2022-02-09 08:56:45','教师姓名6','123456','男','职称6','13823888886','773890006@qq.com','upload/jiaoshi_touxiang6.jpg','班级6','备注6'),(1644397112789,'2022-02-09 08:58:32','李四','11',NULL,NULL,'13922222222',NULL,NULL,'111',NULL);
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoxuebisaichengji`
--

DROP TABLE IF EXISTS `jiaoxuebisaichengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoxuebisaichengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yundongxiangmu` varchar(200) NOT NULL COMMENT '运动项目',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xiangmutupian` varchar(200) DEFAULT NULL COMMENT '项目图片',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `chengji` varchar(200) NOT NULL COMMENT '成绩',
  `pingyu` varchar(200) DEFAULT NULL COMMENT '评语',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='教学比赛成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoxuebisaichengji`
--

LOCK TABLES `jiaoxuebisaichengji` WRITE;
/*!40000 ALTER TABLE `jiaoxuebisaichengji` DISABLE KEYS */;
INSERT INTO `jiaoxuebisaichengji` VALUES (91,'2022-02-09 08:56:45','运动项目1','姓名1','upload/jiaoxuebisaichengji_xiangmutupian1.jpg','学号1','成绩1','评语1','2022-02-09','教师姓名1',1),(92,'2022-02-09 08:56:45','运动项目2','姓名2','upload/jiaoxuebisaichengji_xiangmutupian2.jpg','学号2','成绩2','评语2','2022-02-09','教师姓名2',2),(93,'2022-02-09 08:56:45','运动项目3','姓名3','upload/jiaoxuebisaichengji_xiangmutupian3.jpg','学号3','成绩3','评语3','2022-02-09','教师姓名3',3),(94,'2022-02-09 08:56:45','运动项目4','姓名4','upload/jiaoxuebisaichengji_xiangmutupian4.jpg','学号4','成绩4','评语4','2022-02-09','教师姓名4',4),(95,'2022-02-09 08:56:45','运动项目5','姓名5','upload/jiaoxuebisaichengji_xiangmutupian5.jpg','学号5','成绩5','评语5','2022-02-09','教师姓名5',5),(96,'2022-02-09 08:56:45','运动项目6','姓名6','upload/jiaoxuebisaichengji_xiangmutupian6.jpg','学号6','成绩6','评语6','2022-02-09','教师姓名6',6);
/*!40000 ALTER TABLE `jiaoxuebisaichengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoxuepingfen`
--

DROP TABLE IF EXISTS `jiaoxuepingfen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoxuepingfen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketangmingcheng` varchar(200) DEFAULT NULL COMMENT '课堂名称',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupianfengmian` varchar(200) DEFAULT NULL COMMENT '图片封面',
  `jiaochengfenxi` varchar(200) DEFAULT NULL COMMENT '教程分析',
  `shejilinian` varchar(200) DEFAULT NULL COMMENT '设计理念',
  `jiaoxuemubiao` varchar(200) DEFAULT NULL COMMENT '教学目标',
  `jiaoxuezhunbei` varchar(200) DEFAULT NULL COMMENT '教学准备',
  `jiaoxuezhongdian` varchar(200) DEFAULT NULL COMMENT '教学重点',
  `jiaoxuepingfen` float NOT NULL COMMENT '教学评分',
  `yijianjianyi` varchar(200) DEFAULT NULL COMMENT '意见建议',
  `pingfenshijian` datetime DEFAULT NULL COMMENT '评分时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='教学评分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoxuepingfen`
--

LOCK TABLES `jiaoxuepingfen` WRITE;
/*!40000 ALTER TABLE `jiaoxuepingfen` DISABLE KEYS */;
INSERT INTO `jiaoxuepingfen` VALUES (61,'2022-02-09 08:56:45','课堂名称1','教师姓名1','类型1','upload/jiaoxuepingfen_tupianfengmian1.jpg','教程分析1','设计理念1','教学目标1','教学准备1','教学重点1',1,'意见建议1','2022-02-09 16:56:45','学号1','姓名1'),(62,'2022-02-09 08:56:45','课堂名称2','教师姓名2','类型2','upload/jiaoxuepingfen_tupianfengmian2.jpg','教程分析2','设计理念2','教学目标2','教学准备2','教学重点2',2,'意见建议2','2022-02-09 16:56:45','学号2','姓名2'),(63,'2022-02-09 08:56:45','课堂名称3','教师姓名3','类型3','upload/jiaoxuepingfen_tupianfengmian3.jpg','教程分析3','设计理念3','教学目标3','教学准备3','教学重点3',3,'意见建议3','2022-02-09 16:56:45','学号3','姓名3'),(64,'2022-02-09 08:56:45','课堂名称4','教师姓名4','类型4','upload/jiaoxuepingfen_tupianfengmian4.jpg','教程分析4','设计理念4','教学目标4','教学准备4','教学重点4',4,'意见建议4','2022-02-09 16:56:45','学号4','姓名4'),(65,'2022-02-09 08:56:45','课堂名称5','教师姓名5','类型5','upload/jiaoxuepingfen_tupianfengmian5.jpg','教程分析5','设计理念5','教学目标5','教学准备5','教学重点5',5,'意见建议5','2022-02-09 16:56:45','学号5','姓名5'),(66,'2022-02-09 08:56:45','课堂名称6','教师姓名6','类型6','upload/jiaoxuepingfen_tupianfengmian6.jpg','教程分析6','设计理念6','教学目标6','教学准备6','教学重点6',6,'意见建议6','2022-02-09 16:56:45','学号6','姓名6');
/*!40000 ALTER TABLE `jiaoxuepingfen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ketangxiaojie`
--

DROP TABLE IF EXISTS `ketangxiaojie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ketangxiaojie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketangmingcheng` varchar(200) NOT NULL COMMENT '课堂名称',
  `ketangneirong` longtext NOT NULL COMMENT '课堂内容',
  `xiaojieneirong` longtext NOT NULL COMMENT '小结内容',
  `yijian` varchar(200) NOT NULL COMMENT '意见',
  `ketangshijian` datetime DEFAULT NULL COMMENT '课堂时间',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='课堂小结';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ketangxiaojie`
--

LOCK TABLES `ketangxiaojie` WRITE;
/*!40000 ALTER TABLE `ketangxiaojie` DISABLE KEYS */;
INSERT INTO `ketangxiaojie` VALUES (101,'2022-02-09 08:56:45','课堂名称1','课堂内容1','小结内容1','意见1','2022-02-09 16:56:45','班级1','教师姓名1','2022-02-09 16:56:45'),(102,'2022-02-09 08:56:45','课堂名称2','课堂内容2','小结内容2','意见2','2022-02-09 16:56:45','班级2','教师姓名2','2022-02-09 16:56:45'),(103,'2022-02-09 08:56:45','课堂名称3','课堂内容3','小结内容3','意见3','2022-02-09 16:56:45','班级3','教师姓名3','2022-02-09 16:56:45'),(104,'2022-02-09 08:56:45','课堂名称4','课堂内容4','小结内容4','意见4','2022-02-09 16:56:45','班级4','教师姓名4','2022-02-09 16:56:45'),(105,'2022-02-09 08:56:45','课堂名称5','课堂内容5','小结内容5','意见5','2022-02-09 16:56:45','班级5','教师姓名5','2022-02-09 16:56:45'),(106,'2022-02-09 08:56:45','课堂名称6','课堂内容6','小结内容6','意见6','2022-02-09 16:56:45','班级6','教师姓名6','2022-02-09 16:56:45');
/*!40000 ALTER TABLE `ketangxiaojie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leixing`
--

DROP TABLE IF EXISTS `leixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leixing` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leixing`
--

LOCK TABLES `leixing` WRITE;
/*!40000 ALTER TABLE `leixing` DISABLE KEYS */;
INSERT INTO `leixing` VALUES (41,'2022-02-09 08:56:45','类型1'),(42,'2022-02-09 08:56:45','类型2'),(43,'2022-02-09 08:56:45','类型3'),(44,'2022-02-09 08:56:45','类型4'),(45,'2022-02-09 08:56:45','类型5'),(46,'2022-02-09 08:56:45','类型6');
/*!40000 ALTER TABLE `leixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='校园风采';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (131,'2022-02-09 08:56:45','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(132,'2022-02-09 08:56:45','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(133,'2022-02-09 08:56:45','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(134,'2022-02-09 08:56:45','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(135,'2022-02-09 08:56:45','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(136,'2022-02-09 08:56:45','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shentisuzhiceping`
--

DROP TABLE IF EXISTS `shentisuzhiceping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shentisuzhiceping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `shengao` float DEFAULT NULL COMMENT '身高',
  `tizhong` float DEFAULT NULL COMMENT '体重',
  `xuetang` float DEFAULT NULL COMMENT '血糖',
  `xinlv` float DEFAULT NULL COMMENT '心率',
  `xiongwei` float DEFAULT NULL COMMENT '胸围',
  `xuezhi` float DEFAULT NULL COMMENT '血脂',
  `feihuoliang` float DEFAULT NULL COMMENT '肺活量',
  `woli` varchar(200) DEFAULT NULL COMMENT '握力',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='身体素质测评';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shentisuzhiceping`
--

LOCK TABLES `shentisuzhiceping` WRITE;
/*!40000 ALTER TABLE `shentisuzhiceping` DISABLE KEYS */;
INSERT INTO `shentisuzhiceping` VALUES (81,'2022-02-09 08:56:45','学号1','姓名1','upload/shentisuzhiceping_zhaopian1.jpg','性别1','教师姓名1',1,1,1,1,1,1,1,'握力1','备注1','2022-02-09',1),(82,'2022-02-09 08:56:45','学号2','姓名2','upload/shentisuzhiceping_zhaopian2.jpg','性别2','教师姓名2',2,2,2,2,2,2,2,'握力2','备注2','2022-02-09',2),(83,'2022-02-09 08:56:45','学号3','姓名3','upload/shentisuzhiceping_zhaopian3.jpg','性别3','教师姓名3',3,3,3,3,3,3,3,'握力3','备注3','2022-02-09',3),(84,'2022-02-09 08:56:45','学号4','姓名4','upload/shentisuzhiceping_zhaopian4.jpg','性别4','教师姓名4',4,4,4,4,4,4,4,'握力4','备注4','2022-02-09',4),(85,'2022-02-09 08:56:45','学号5','姓名5','upload/shentisuzhiceping_zhaopian5.jpg','性别5','教师姓名5',5,5,5,5,5,5,5,'握力5','备注5','2022-02-09',5),(86,'2022-02-09 08:56:45','学号6','姓名6','upload/shentisuzhiceping_zhaopian6.jpg','性别6','教师姓名6',6,6,6,6,6,6,6,'握力6','备注6','2022-02-09',6);
/*!40000 ALTER TABLE `shentisuzhiceping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiyujiaoan`
--

DROP TABLE IF EXISTS `tiyujiaoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiyujiaoan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ketangmingcheng` varchar(200) DEFAULT NULL COMMENT '课堂名称',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupianfengmian` varchar(200) DEFAULT NULL COMMENT '图片封面',
  `jibenshuoming` longtext COMMENT '基本说明',
  `jiaochengfenxi` varchar(200) DEFAULT NULL COMMENT '教程分析',
  `shejilinian` varchar(200) DEFAULT NULL COMMENT '设计理念',
  `jiaoxuemubiao` varchar(200) DEFAULT NULL COMMENT '教学目标',
  `jiaoxuezhunbei` varchar(200) DEFAULT NULL COMMENT '教学准备',
  `jiaoxuezhongdian` varchar(200) DEFAULT NULL COMMENT '教学重点',
  `jiaoxuewenjian` varchar(200) DEFAULT NULL COMMENT '教学文件',
  `zhidingshijian` datetime DEFAULT NULL COMMENT '制定时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='体育教案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiyujiaoan`
--

LOCK TABLES `tiyujiaoan` WRITE;
/*!40000 ALTER TABLE `tiyujiaoan` DISABLE KEYS */;
INSERT INTO `tiyujiaoan` VALUES (51,'2022-02-09 08:56:45','课堂名称1','教师姓名1','类型1','upload/tiyujiaoan_tupianfengmian1.jpg','基本说明1','教程分析1','设计理念1','教学目标1','教学准备1','教学重点1','','2022-02-09 16:56:45','2022-02-09 16:56:45'),(52,'2022-02-09 08:56:45','课堂名称2','教师姓名2','类型2','upload/tiyujiaoan_tupianfengmian2.jpg','基本说明2','教程分析2','设计理念2','教学目标2','教学准备2','教学重点2','','2022-02-09 16:56:45','2022-02-09 16:56:45'),(53,'2022-02-09 08:56:45','课堂名称3','教师姓名3','类型3','upload/tiyujiaoan_tupianfengmian3.jpg','基本说明3','教程分析3','设计理念3','教学目标3','教学准备3','教学重点3','','2022-02-09 16:56:45','2022-02-09 16:56:45'),(54,'2022-02-09 08:56:45','课堂名称4','教师姓名4','类型4','upload/tiyujiaoan_tupianfengmian4.jpg','基本说明4','教程分析4','设计理念4','教学目标4','教学准备4','教学重点4','','2022-02-09 16:56:45','2022-02-09 16:56:45'),(55,'2022-02-09 08:56:45','课堂名称5','教师姓名5','类型5','upload/tiyujiaoan_tupianfengmian5.jpg','基本说明5','教程分析5','设计理念5','教学目标5','教学准备5','教学重点5','','2022-02-09 16:56:45','2022-02-09 16:56:45'),(56,'2022-02-09 08:56:45','课堂名称6','教师姓名6','类型6','upload/tiyujiaoan_tupianfengmian6.jpg','基本说明6','教程分析6','设计理念6','教学目标6','教学准备6','教学重点6','','2022-02-09 16:56:45','2022-02-09 16:56:45');
/*!40000 ALTER TABLE `tiyujiaoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1644397096903,'11','xuesheng','学生','w6wscgs5t6dh0iikgufya1w6tmey2u3u','2022-02-09 08:58:36','2022-02-09 09:58:37'),(2,1644397112789,'李四','jiaoshi','教师','tvbk72bqephbrr5q58rocn36kq8be8e3','2022-02-09 08:59:40','2022-02-09 09:59:40');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-02-09 08:56:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1644397096904 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2022-02-09 08:56:45','学号1','姓名1','123456','男','440300199101010001','13823888881','773890001@qq.com','学院1','专业1','班级1','upload/xuesheng_zhaopian1.jpg','教师姓名1'),(12,'2022-02-09 08:56:45','学号2','姓名2','123456','男','440300199202020002','13823888882','773890002@qq.com','学院2','专业2','班级2','upload/xuesheng_zhaopian2.jpg','教师姓名2'),(13,'2022-02-09 08:56:45','学号3','姓名3','123456','男','440300199303030003','13823888883','773890003@qq.com','学院3','专业3','班级3','upload/xuesheng_zhaopian3.jpg','教师姓名3'),(14,'2022-02-09 08:56:45','学号4','姓名4','123456','男','440300199404040004','13823888884','773890004@qq.com','学院4','专业4','班级4','upload/xuesheng_zhaopian4.jpg','教师姓名4'),(15,'2022-02-09 08:56:45','学号5','姓名5','123456','男','440300199505050005','13823888885','773890005@qq.com','学院5','专业5','班级5','upload/xuesheng_zhaopian5.jpg','教师姓名5'),(16,'2022-02-09 08:56:45','学号6','姓名6','123456','男','440300199606060006','13823888886','773890006@qq.com','学院6','专业6','班级6','upload/xuesheng_zhaopian6.jpg','教师姓名6'),(1644397096903,'2022-02-09 08:58:16','11','11','11','男',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'李四');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengxinlv`
--

DROP TABLE IF EXISTS `xueshengxinlv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengxinlv` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `wodexinlv` int(11) DEFAULT NULL COMMENT '我的心率',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1644397172288 DEFAULT CHARSET=utf8 COMMENT='学生心率';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengxinlv`
--

LOCK TABLES `xueshengxinlv` WRITE;
/*!40000 ALTER TABLE `xueshengxinlv` DISABLE KEYS */;
INSERT INTO `xueshengxinlv` VALUES (71,'2022-02-09 08:56:45','学号1','性别1','姓名1','upload/xueshengxinlv_zhaopian1.jpg',1,'备注1','教师姓名1','2022-02-09 16:56:45',1),(72,'2022-02-09 08:56:45','学号2','性别2','姓名2','upload/xueshengxinlv_zhaopian2.jpg',2,'备注2','教师姓名2','2022-02-09 16:56:45',2),(73,'2022-02-09 08:56:45','学号3','性别3','姓名3','upload/xueshengxinlv_zhaopian3.jpg',3,'备注3','教师姓名3','2022-02-09 16:56:45',3),(74,'2022-02-09 08:56:45','学号4','性别4','姓名4','upload/xueshengxinlv_zhaopian4.jpg',4,'备注4','教师姓名4','2022-02-09 16:56:45',4),(75,'2022-02-09 08:56:45','学号5','性别5','姓名5','upload/xueshengxinlv_zhaopian5.jpg',5,'备注5','教师姓名5','2022-02-09 16:56:45',5),(76,'2022-02-09 08:56:45','学号6','性别6','姓名6','upload/xueshengxinlv_zhaopian6.jpg',6,'备注6','教师姓名6','2022-02-09 16:56:45',6),(1644397140487,'2022-02-09 08:59:00','11','男','11','upload/1644397135695.jpg',99,'测试','李四','2022-02-09 16:58:13',1644397096903),(1644397162055,'2022-02-09 08:59:21','11','男','11','upload/1644397156053.jpg',55,'11','李四','2022-02-09 16:58:37',1644397096903),(1644397172287,'2022-02-09 08:59:32','11','男','11','upload/1644397170391.jpg',63,'11','李四','2022-02-09 16:58:47',1644397096903);
/*!40000 ALTER TABLE `xueshengxinlv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yundongbaogaojilu`
--

DROP TABLE IF EXISTS `yundongbaogaojilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yundongbaogaojilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baogaomingcheng` varchar(200) NOT NULL COMMENT '报告名称',
  `yundongdidian` varchar(200) DEFAULT NULL COMMENT '运动地点',
  `yundongshizhang` varchar(200) DEFAULT NULL COMMENT '运动时长',
  `yundongtupian` varchar(200) DEFAULT NULL COMMENT '运动图片',
  `yundongneirong` longtext COMMENT '运动内容',
  `baogaoneirong` longtext COMMENT '报告内容',
  `jiluriqi` date DEFAULT NULL COMMENT '记录日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='运动报告记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yundongbaogaojilu`
--

LOCK TABLES `yundongbaogaojilu` WRITE;
/*!40000 ALTER TABLE `yundongbaogaojilu` DISABLE KEYS */;
INSERT INTO `yundongbaogaojilu` VALUES (111,'2022-02-09 08:56:45','报告名称1','运动地点1','运动时长1','upload/yundongbaogaojilu_yundongtupian1.jpg','运动内容1','报告内容1','2022-02-09','备注1','学号1','姓名1','班级1','教师姓名1',1),(112,'2022-02-09 08:56:45','报告名称2','运动地点2','运动时长2','upload/yundongbaogaojilu_yundongtupian2.jpg','运动内容2','报告内容2','2022-02-09','备注2','学号2','姓名2','班级2','教师姓名2',2),(113,'2022-02-09 08:56:45','报告名称3','运动地点3','运动时长3','upload/yundongbaogaojilu_yundongtupian3.jpg','运动内容3','报告内容3','2022-02-09','备注3','学号3','姓名3','班级3','教师姓名3',3),(114,'2022-02-09 08:56:45','报告名称4','运动地点4','运动时长4','upload/yundongbaogaojilu_yundongtupian4.jpg','运动内容4','报告内容4','2022-02-09','备注4','学号4','姓名4','班级4','教师姓名4',4),(115,'2022-02-09 08:56:45','报告名称5','运动地点5','运动时长5','upload/yundongbaogaojilu_yundongtupian5.jpg','运动内容5','报告内容5','2022-02-09','备注5','学号5','姓名5','班级5','教师姓名5',5),(116,'2022-02-09 08:56:45','报告名称6','运动地点6','运动时长6','upload/yundongbaogaojilu_yundongtupian6.jpg','运动内容6','报告内容6','2022-02-09','备注6','学号6','姓名6','班级6','教师姓名6',6);
/*!40000 ALTER TABLE `yundongbaogaojilu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-17 11:40:22
