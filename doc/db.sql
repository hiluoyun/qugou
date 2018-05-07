-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: qugou
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `cai_quan`
--

DROP TABLE IF EXISTS `cai_quan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cai_quan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qihao` varchar(255) NOT NULL DEFAULT '' COMMENT '期号',
  `wan` varchar(255) NOT NULL DEFAULT '' COMMENT '万位',
  `qian` varchar(255) NOT NULL DEFAULT '' COMMENT '千位',
  `bai` varchar(255) NOT NULL DEFAULT '' COMMENT '百位',
  `shi` varchar(255) NOT NULL DEFAULT '' COMMENT '十位',
  `ge` varchar(255) NOT NULL DEFAULT '' COMMENT '个位',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COMMENT='全天彩票';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cai_quan`
--

LOCK TABLES `cai_quan` WRITE;
/*!40000 ALTER TABLE `cai_quan` DISABLE KEYS */;
INSERT INTO `cai_quan` VALUES (133,'171018004','5','2','3','4','2',1508257876,1508257876),(134,'171018005','8','7','7','0','5',1508257941,1508257941),(135,'171018288','8','7','7','0','5',1508258085,1508258085),(138,'171018008','4','5','1','7','1',1508258557,1508258557),(140,'171018008','5','9','8','9','9',1508258963,1508258963),(141,'171018009','3','7','1','2','3',1508259082,1508259082),(142,'171018009','3','7','1','2','3',1508259211,1508259211),(143,'171018010','7','5','2','2','5',1508259356,1508259356),(144,'171018010','7','5','2','2','5',1508259404,1508259404),(145,'171018011','7','5','2','2','5',1508259471,1508259471),(146,'171018011','4','9','1','6','1',1508259791,1508259791),(147,'171018012','4','6','8','6','8',1508259969,1508259969),(148,'171018012','4','6','8','6','8',1508260006,1508260006),(149,'171018013','4','6','8','6','8',1508260079,1508260079),(150,'171018154','1','8','5','5','8',1508302345,1508302345);
/*!40000 ALTER TABLE `cai_quan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cai_quan_huihe`
--

DROP TABLE IF EXISTS `cai_quan_huihe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cai_quan_huihe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wei` varchar(255) DEFAULT NULL COMMENT '位',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '连出类型，单双大小',
  `qihaos` text COMMENT '连出期号',
  `repeat_num` int(11) NOT NULL DEFAULT '0' COMMENT '连出次数',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='全天回合记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cai_quan_huihe`
--

LOCK TABLES `cai_quan_huihe` WRITE;
/*!40000 ALTER TABLE `cai_quan_huihe` DISABLE KEYS */;
INSERT INTO `cai_quan_huihe` VALUES (123,'万','单','171018005(5)',1,'2017-10-18 00:31:05','0000-00-00 00:00:00'),(124,'万','大','171018005(5),171018006(8)',2,'2017-10-18 00:31:12','0000-00-00 00:00:00'),(125,'万','双','171018006(8)',1,'2017-10-18 00:34:41','0000-00-00 00:00:00'),(126,'万','单','171018007(3)',1,'2017-10-18 00:40:46','0000-00-00 00:00:00'),(127,'万','小','171018007(3),171018008(4)',2,'2017-10-18 00:40:46','0000-00-00 00:00:00'),(128,'万','双','171018008(4)',1,'2017-10-18 00:42:37','0000-00-00 00:00:00'),(129,'万','单','171018009(5),171018010(3)',2,'2017-10-18 00:48:52','0000-00-00 00:00:00'),(130,'万','大','171018009(5)',1,'2017-10-18 00:49:20','0000-00-00 00:00:00'),(131,'万','小','171018010(3)',1,'2017-10-18 00:51:19','0000-00-00 00:00:00'),(132,'千','单','171018010(7)',1,'2017-10-18 00:53:14','0000-00-00 00:00:00'),(133,'千','大','171018010(7)',1,'2017-10-18 00:53:28','0000-00-00 00:00:00'),(134,'百','双','171018011(2),171018011(2)',2,'2017-10-18 00:56:33','0000-00-00 00:00:00'),(135,'百','小','171018011(2),171018011(2),171018012(1)',7,'2017-10-18 00:56:42','0000-00-00 00:00:00'),(136,'百','单','171018012(1)',1,'2017-10-18 01:02:50','0000-00-00 00:00:00'),(137,'百','双','171018013(8),171018013(8)',2,'2017-10-18 01:06:41','2015-08-26 00:01:00'),(138,'百','大','171018013(8),171018013(8)',8,'2017-10-18 01:06:44','2015-08-26 00:04:00');
/*!40000 ALTER TABLE `cai_quan_huihe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_addonnews`
--

DROP TABLE IF EXISTS `fa_addonnews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_addonnews` (
  `id` int(10) NOT NULL,
  `content` longtext NOT NULL,
  `author` varchar(255) DEFAULT '' COMMENT '作者',
  `age` enum('1-18','19-29','30-39') DEFAULT '1-18' COMMENT '年龄',
  `gender` enum('male','female') DEFAULT 'male' COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_addonnews`
--

LOCK TABLES `fa_addonnews` WRITE;
/*!40000 ALTER TABLE `fa_addonnews` DISABLE KEYS */;
INSERT INTO `fa_addonnews` VALUES (84,'<p>测试新闻1</p>','KS','1-18','male'),(85,'<p>测试新闻2</p>','FX','19-29','male'),(91,'<p>新闻2<br></p>','FF','1-18','male'),(92,'<p>新闻2<br></p>','EE','30-39','male'),(93,'<p>新闻2<br></p>','AA','30-39','male'),(94,'<p>新闻2<br></p>','AE','1-18','male');
/*!40000 ALTER TABLE `fa_addonnews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_addonproduct`
--

DROP TABLE IF EXISTS `fa_addonproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_addonproduct` (
  `id` int(10) NOT NULL,
  `content` longtext NOT NULL,
  `productdata` varchar(1500) DEFAULT '' COMMENT '产品列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='产品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_addonproduct`
--

LOCK TABLES `fa_addonproduct` WRITE;
/*!40000 ALTER TABLE `fa_addonproduct` DISABLE KEYS */;
INSERT INTO `fa_addonproduct` VALUES (89,'<p>product1<br></p>',''),(90,'<p>产品2</p>','');
/*!40000 ALTER TABLE `fa_addonproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_admin`
--

DROP TABLE IF EXISTS `fa_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_admin`
--

LOCK TABLES `fa_admin` WRITE;
/*!40000 ALTER TABLE `fa_admin` DISABLE KEYS */;
INSERT INTO `fa_admin` VALUES (1,'admin','Admin','075eaec83636846f51c152f29b98a2fd','s4f3','/assets/img/avatar.png','admin@fastadmin.net',0,1508003953,1492186163,1508003953,'3d03a34d-d2c8-4ddc-b104-3d319177f06f','normal'),(2,'admin2','admin2','9a28ce07ce875fbd14172a9ca5357d3c','2dHDmj','/assets/img/avatar.png','admin2@fastadmin.net',0,1505450906,1492186163,1505450906,'df45fdd5-26f4-45ca-83b3-47e4491a315a','normal'),(3,'admin3','admin3','1c11f945dfcd808a130a8c2a8753fe62','WOKJEn','/assets/img/avatar.png','admin3@fastadmin.net',0,1501980868,1492186201,1501982377,'','normal'),(4,'admin22','admin22','1c1a0aa0c3c56a8c1a908aab94519648','Aybcn5','/assets/img/avatar.png','admin22@fastadmin.net',0,0,1492186240,1492186240,'','normal'),(5,'admin32','admin32','ade94d5d7a7033afa7d84ac3066d0a02','FvYK0u','/assets/img/avatar.png','admin32@fastadmin.net',0,0,1492186263,1492186263,'','normal');
/*!40000 ALTER TABLE `fa_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_admin_log`
--

DROP TABLE IF EXISTS `fa_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1421 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_admin_log`
--

--
-- Table structure for table `fa_archives`
--

DROP TABLE IF EXISTS `fa_archives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_archives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `model_id` int(10) NOT NULL COMMENT '模型ID',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '文章标题',
  `flag` set('hot','new','recommend') NOT NULL DEFAULT '' COMMENT '标志',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `tags` varbinary(255) NOT NULL DEFAULT '' COMMENT 'TAG',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论次数',
  `likes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislikes` int(10) unsigned NOT NULL COMMENT '点踩数',
  `diyname` varchar(50) NOT NULL COMMENT '自定义URL',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `publishtime` int(10) DEFAULT NULL COMMENT '发布时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `status` (`channel_id`,`status`),
  KEY `channel` (`channel_id`,`weigh`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='内容表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_archives`
--

LOCK TABLES `fa_archives` WRITE;
/*!40000 ALTER TABLE `fa_archives` DISABLE KEYS */;
INSERT INTO `fa_archives` VALUES (84,35,0,'测试新闻1','','','','','极速,FastAdmin,新闻1',84,2,0,0,0,'news1',1508990778,1508992752,1508947200,NULL,'normal'),(85,35,0,'测试新闻2','','','','','FastAdmin,极速',85,0,0,0,0,'news2',1508991029,1508992725,1508947200,NULL,'normal'),(89,38,0,'产品1','','','','','产品1,FastAdmin',89,1,0,0,0,'product1',1508992836,1508992836,1508947200,NULL,'normal'),(90,38,0,'产品2','','','','','产品2,FastAdmin',90,0,0,0,0,'',1508992861,1508992861,1508947200,NULL,'normal'),(91,35,0,'新闻2','','','','','新闻2',91,0,0,0,0,'news2-2',1508993329,1508993329,1508947200,NULL,'normal'),(92,36,0,'新闻2-2','','','','','新闻2',92,0,0,0,0,'n2',1508993357,1508993357,1508947200,NULL,'normal'),(93,35,0,'新闻X','','','','','新闻1',93,0,0,0,0,'n23',1508993390,1508993390,1508947200,NULL,'normal'),(94,36,0,'新闻2X','','','','','新闻2',94,0,0,0,0,'2x',1508993412,1508993412,1508947200,NULL,'normal');
/*!40000 ALTER TABLE `fa_archives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_attachment`
--

DROP TABLE IF EXISTS `fa_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(30) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建日期',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `storage` enum('local','upyun','qiniu') NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_attachment`
--

LOCK TABLES `fa_attachment` WRITE;
/*!40000 ALTER TABLE `fa_attachment` DISABLE KEYS */;
INSERT INTO `fa_attachment` VALUES (1,'/assets/img/qrcode.png','150','150','png',0,21859,'image/png','',1499681848,1499681848,1499681848,'local','17163603d0263e4838b9387ff2cd4877e8b018f6'),(2,'/uploads/20171113/19b6c36db5011f076725e8f06281d037.jpg','1680','580','jpg',0,123872,'image/jpeg','',1510503101,1510503101,1510503101,'local','5cc096cd0221b6962e46f41a7f2cdfcf41fe8155'),(3,'/uploads/20171113/cd19dd33ac832dbad31fa51c3da802d5.png','1430','1120','png',0,952495,'image/png','',1510503331,1510503331,1510503331,'local','5ca0d266c746dd680f80eaa0b0ed39dd86dab5fb'),(4,'/uploads/20171113/e5e2da25aea4a77d05accabb16187789.png','1918','298','png',0,401503,'image/png','',1510503362,1510503362,1510503362,'local','10cfce41d5f386342b332fdcbe26b315580aca2d'),(5,'/uploads/20171113/85d740a1575a1ec3bc3ec4f43b1a3af8.png','1762','1258','png',0,195856,'image/png','',1510503420,1510503420,1510503420,'local','b78a5e9fdd1148c4cc7c2b25eb7a354a9ae61d1d');
/*!40000 ALTER TABLE `fa_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_auth_group`
--

DROP TABLE IF EXISTS `fa_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_auth_group`
--

LOCK TABLES `fa_auth_group` WRITE;
/*!40000 ALTER TABLE `fa_auth_group` DISABLE KEYS */;
INSERT INTO `fa_auth_group` VALUES (1,0,'Admin group','*',1490883540,149088354,'normal'),(2,1,'Second group','13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5',1490883540,1505465692,'normal'),(3,2,'Third group','1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5',1490883540,1502205322,'normal'),(4,1,'Second group 2','1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65',1490883540,1502205350,'normal'),(5,2,'Third group 2','1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34',1490883540,1502205344,'normal');
/*!40000 ALTER TABLE `fa_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_auth_group_access`
--

DROP TABLE IF EXISTS `fa_auth_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_auth_group_access`
--

LOCK TABLES `fa_auth_group_access` WRITE;
/*!40000 ALTER TABLE `fa_auth_group_access` DISABLE KEYS */;
INSERT INTO `fa_auth_group_access` VALUES (1,1),(2,2),(3,3),(4,5),(5,5);
/*!40000 ALTER TABLE `fa_auth_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_auth_rule`
--

DROP TABLE IF EXISTS `fa_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_auth_rule`
--

LOCK TABLES `fa_auth_rule` WRITE;
/*!40000 ALTER TABLE `fa_auth_rule` DISABLE KEYS */;
INSERT INTO `fa_auth_rule` VALUES (1,'file',0,'dashboard','Dashboard','fa fa-dashboard\r','','Dashboard tips',1,1497429920,1497429920,143,'normal'),(2,'file',0,'general','General','fa fa-cogs','','',1,1497429920,1497430169,137,'normal'),(3,'file',0,'category','Category','fa fa-list\r','','Category tips',1,1497429920,1497429920,119,'normal'),(4,'file',0,'addon','Addon','fa fa-rocket','','Addon tips',1,1502035509,1502035509,0,'normal'),(5,'file',0,'auth','Auth','fa fa-group','','',1,1497429920,1497430092,99,'normal'),(6,'file',2,'general/config','Config','fa fa-cog','','Config tips',1,1497429920,1497430683,60,'normal'),(7,'file',2,'general/attachment','Attachment','fa fa-file-image-o','','Attachment tips',1,1497429920,1497430699,53,'normal'),(8,'file',2,'general/profile','Profile','fa fa-user\r','','',1,1497429920,1497429920,34,'normal'),(9,'file',5,'auth/admin','Admin','fa fa-user','','Admin tips',1,1497429920,1497430320,118,'normal'),(10,'file',5,'auth/adminlog','Admin log','fa fa-list-alt','','Admin log tips',1,1497429920,1497430307,113,'normal'),(11,'file',5,'auth/group','Group','fa fa-group','','Group tips',1,1497429920,1497429920,109,'normal'),(12,'file',5,'auth/rule','Rule','fa fa-bars','','Rule tips',1,1497429920,1497430581,104,'normal'),(13,'file',1,'dashboard/index','View','fa fa-circle-o','','',0,1497429920,1497429920,136,'normal'),(14,'file',1,'dashboard/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,135,'normal'),(15,'file',1,'dashboard/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,133,'normal'),(16,'file',1,'dashboard/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,134,'normal'),(17,'file',1,'dashboard/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,132,'normal'),(18,'file',6,'general/config/index','View','fa fa-circle-o','','',0,1497429920,1497429920,52,'normal'),(19,'file',6,'general/config/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,51,'normal'),(20,'file',6,'general/config/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,50,'normal'),(21,'file',6,'general/config/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,49,'normal'),(22,'file',6,'general/config/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,48,'normal'),(23,'file',7,'general/attachment/index','View','fa fa-circle-o','','',0,1497429920,1497429920,59,'normal'),(24,'file',7,'general/attachment/select','Select attachment','fa fa-circle-o','','',0,1497429920,1497429920,58,'normal'),(25,'file',7,'general/attachment/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,57,'normal'),(26,'file',7,'general/attachment/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,56,'normal'),(27,'file',7,'general/attachment/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,55,'normal'),(28,'file',7,'general/attachment/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,54,'normal'),(29,'file',8,'general/profile/index','View','fa fa-circle-o','','',0,1497429920,1497429920,33,'normal'),(30,'file',8,'general/profile/update','Update profile','fa fa-circle-o','','',0,1497429920,1497429920,32,'normal'),(31,'file',8,'general/profile/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,31,'normal'),(32,'file',8,'general/profile/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,30,'normal'),(33,'file',8,'general/profile/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,29,'normal'),(34,'file',8,'general/profile/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,28,'normal'),(35,'file',3,'category/index','View','fa fa-circle-o','','',0,1497429920,1497429920,142,'normal'),(36,'file',3,'category/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,141,'normal'),(37,'file',3,'category/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,140,'normal'),(38,'file',3,'category/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,139,'normal'),(39,'file',3,'category/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,138,'normal'),(40,'file',9,'auth/admin/index','View','fa fa-circle-o','','',0,1497429920,1497429920,117,'normal'),(41,'file',9,'auth/admin/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,116,'normal'),(42,'file',9,'auth/admin/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,115,'normal'),(43,'file',9,'auth/admin/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,114,'normal'),(44,'file',10,'auth/adminlog/index','View','fa fa-circle-o','','',0,1497429920,1497429920,112,'normal'),(45,'file',10,'auth/adminlog/detail','Detail','fa fa-circle-o','','',0,1497429920,1497429920,111,'normal'),(46,'file',10,'auth/adminlog/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,110,'normal'),(47,'file',11,'auth/group/index','View','fa fa-circle-o','','',0,1497429920,1497429920,108,'normal'),(48,'file',11,'auth/group/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,107,'normal'),(49,'file',11,'auth/group/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,106,'normal'),(50,'file',11,'auth/group/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,105,'normal'),(51,'file',12,'auth/rule/index','View','fa fa-circle-o','','',0,1497429920,1497429920,103,'normal'),(52,'file',12,'auth/rule/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,102,'normal'),(53,'file',12,'auth/rule/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,101,'normal'),(54,'file',12,'auth/rule/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,100,'normal'),(55,'file',4,'addon/index','View','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(56,'file',4,'addon/add','Add','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(57,'file',4,'addon/edit','Edit','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(58,'file',4,'addon/del','Delete','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(59,'file',4,'addon/local','Local install','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(60,'file',4,'addon/state','Update state','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(61,'file',4,'addon/install','Install','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(62,'file',4,'addon/uninstall','Uninstall','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(63,'file',4,'addon/config','Setting','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(64,'file',4,'addon/refresh','Refresh','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(65,'file',4,'addon/multi','Multi','fa fa-circle-o','','',0,1502035509,1502035509,0,'normal'),(109,'file',2,'general/crontab','定时任务','fa fa-tasks','','类似于Linux的Crontab定时任务,可以按照设定的时间进行任务的执行,目前仅支持三种任务:请求URL、执行SQL、执行Shell',1,1507964300,1507964300,0,'normal'),(110,'file',109,'general/crontab/index','查看','fa fa-circle-o','','',0,1507964300,1507964300,0,'normal'),(111,'file',109,'general/crontab/add','添加','fa fa-circle-o','','',0,1507964300,1507964300,0,'normal'),(112,'file',109,'general/crontab/edit','编辑 ','fa fa-circle-o','','',0,1507964300,1507964300,0,'normal'),(113,'file',109,'general/crontab/del','删除','fa fa-circle-o','','',0,1507964300,1507964300,0,'normal'),(114,'file',109,'general/crontab/multi','批量更新','fa fa-circle-o','','',0,1507964300,1507964300,0,'normal'),(171,'file',0,'qu','qu','fa fa-list','','',1,1510369336,1510369336,0,'normal'),(172,'file',171,'qu/ad','广告','fa fa-circle-o\r','','',1,1510369336,1510369336,0,'normal'),(173,'file',172,'qu/ad/index','查看','fa fa-circle-o','','',0,1510369336,1510369336,0,'normal'),(174,'file',172,'qu/ad/add','添加','fa fa-circle-o','','',0,1510369336,1510369336,0,'normal'),(175,'file',172,'qu/ad/edit','编辑','fa fa-circle-o','','',0,1510369336,1510369336,0,'normal'),(176,'file',172,'qu/ad/del','删除','fa fa-circle-o','','',0,1510369336,1510369336,0,'normal'),(177,'file',172,'qu/ad/multi','批量更新','fa fa-circle-o','','',0,1510369336,1510369336,0,'normal'),(178,'file',171,'qu/browser','浏览记录','fa fa-circle-o\r','','',1,1510369351,1510369351,0,'normal'),(179,'file',178,'qu/browser/index','查看','fa fa-circle-o','','',0,1510369351,1510369351,0,'normal'),(180,'file',178,'qu/browser/add','添加','fa fa-circle-o','','',0,1510369351,1510369351,0,'normal'),(181,'file',178,'qu/browser/edit','编辑','fa fa-circle-o','','',0,1510369351,1510369351,0,'normal'),(182,'file',178,'qu/browser/del','删除','fa fa-circle-o','','',0,1510369351,1510369351,0,'normal'),(183,'file',178,'qu/browser/multi','批量更新','fa fa-circle-o','','',0,1510369352,1510369352,0,'normal'),(184,'file',171,'qu/buy','购买记录','fa fa-circle-o\r','','',1,1510369357,1510369357,0,'normal'),(185,'file',184,'qu/buy/index','查看','fa fa-circle-o','','',0,1510369357,1510369357,0,'normal'),(186,'file',184,'qu/buy/add','添加','fa fa-circle-o','','',0,1510369357,1510369357,0,'normal'),(187,'file',184,'qu/buy/edit','编辑','fa fa-circle-o','','',0,1510369357,1510369357,0,'normal'),(188,'file',184,'qu/buy/del','删除','fa fa-circle-o','','',0,1510369357,1510369357,0,'normal'),(189,'file',184,'qu/buy/multi','批量更新','fa fa-circle-o','','',0,1510369357,1510369357,0,'normal'),(190,'file',171,'qu/collection','收藏夹','fa fa-circle-o\r','','',1,1510369365,1510369365,0,'normal'),(191,'file',190,'qu/collection/index','查看','fa fa-circle-o','','',0,1510369365,1510369365,0,'normal'),(192,'file',190,'qu/collection/add','添加','fa fa-circle-o','','',0,1510369365,1510369365,0,'normal'),(193,'file',190,'qu/collection/edit','编辑','fa fa-circle-o','','',0,1510369365,1510369365,0,'normal'),(194,'file',190,'qu/collection/del','删除','fa fa-circle-o','','',0,1510369365,1510369365,0,'normal'),(195,'file',190,'qu/collection/multi','批量更新','fa fa-circle-o','','',0,1510369365,1510369365,0,'normal'),(196,'file',171,'qu/details','商品详情','fa fa-circle-o\r','','',1,1510369372,1510369372,0,'normal'),(197,'file',196,'qu/details/index','查看','fa fa-circle-o','','',0,1510369372,1510369372,0,'normal'),(198,'file',196,'qu/details/add','添加','fa fa-circle-o','','',0,1510369372,1510369372,0,'normal'),(199,'file',196,'qu/details/edit','编辑','fa fa-circle-o','','',0,1510369372,1510369372,0,'normal'),(200,'file',196,'qu/details/del','删除','fa fa-circle-o','','',0,1510369372,1510369372,0,'normal'),(201,'file',196,'qu/details/multi','批量更新','fa fa-circle-o','','',0,1510369372,1510369372,0,'normal'),(202,'file',171,'qu/goods','商品','fa fa-circle-o\r','','',1,1510369376,1510369376,0,'normal'),(203,'file',202,'qu/goods/index','查看','fa fa-circle-o','','',0,1510369376,1510369376,0,'normal'),(204,'file',202,'qu/goods/add','添加','fa fa-circle-o','','',0,1510369376,1510369376,0,'normal'),(205,'file',202,'qu/goods/edit','编辑','fa fa-circle-o','','',0,1510369376,1510369376,0,'normal'),(206,'file',202,'qu/goods/del','删除','fa fa-circle-o','','',0,1510369376,1510369376,0,'normal'),(207,'file',202,'qu/goods/multi','批量更新','fa fa-circle-o','','',0,1510369376,1510369376,0,'normal'),(208,'file',171,'qu/recommend','推荐','fa fa-circle-o\r','','',1,1510369386,1510369386,0,'normal'),(209,'file',208,'qu/recommend/index','查看','fa fa-circle-o','','',0,1510369386,1510369386,0,'normal'),(210,'file',208,'qu/recommend/add','添加','fa fa-circle-o','','',0,1510369386,1510369386,0,'normal'),(211,'file',208,'qu/recommend/edit','编辑','fa fa-circle-o','','',0,1510369386,1510369386,0,'normal'),(212,'file',208,'qu/recommend/del','删除','fa fa-circle-o','','',0,1510369386,1510369386,0,'normal'),(213,'file',208,'qu/recommend/multi','批量更新','fa fa-circle-o','','',0,1510369386,1510369386,0,'normal'),(214,'file',171,'qu/share','分享','fa fa-circle-o\r','','',1,1510369391,1510369391,0,'normal'),(215,'file',214,'qu/share/index','查看','fa fa-circle-o','','',0,1510369391,1510369391,0,'normal'),(216,'file',214,'qu/share/add','添加','fa fa-circle-o','','',0,1510369391,1510369391,0,'normal'),(217,'file',214,'qu/share/edit','编辑','fa fa-circle-o','','',0,1510369391,1510369391,0,'normal'),(218,'file',214,'qu/share/del','删除','fa fa-circle-o','','',0,1510369391,1510369391,0,'normal'),(219,'file',214,'qu/share/multi','批量更新','fa fa-circle-o','','',0,1510369391,1510369391,0,'normal'),(220,'file',171,'qu/superme','精选','fa fa-circle-o\r','','',1,1510369396,1510369396,0,'normal'),(221,'file',220,'qu/superme/index','查看','fa fa-circle-o','','',0,1510369396,1510369396,0,'normal'),(222,'file',220,'qu/superme/add','添加','fa fa-circle-o','','',0,1510369396,1510369396,0,'normal'),(223,'file',220,'qu/superme/edit','编辑','fa fa-circle-o','','',0,1510369396,1510369396,0,'normal'),(224,'file',220,'qu/superme/del','删除','fa fa-circle-o','','',0,1510369396,1510369396,0,'normal'),(225,'file',220,'qu/superme/multi','批量更新','fa fa-circle-o','','',0,1510369396,1510369396,0,'normal'),(226,'file',171,'qu/top','榜单','fa fa-circle-o\r','','',1,1510369402,1510369402,0,'normal'),(227,'file',226,'qu/top/index','查看','fa fa-circle-o','','',0,1510369402,1510369402,0,'normal'),(228,'file',226,'qu/top/add','添加','fa fa-circle-o','','',0,1510369402,1510369402,0,'normal'),(229,'file',226,'qu/top/edit','编辑','fa fa-circle-o','','',0,1510369402,1510369402,0,'normal'),(230,'file',226,'qu/top/del','删除','fa fa-circle-o','','',0,1510369402,1510369402,0,'normal'),(231,'file',226,'qu/top/multi','批量更新','fa fa-circle-o','','',0,1510369402,1510369402,0,'normal'),(232,'file',171,'qu/user','用户','fa fa-circle-o\r','','',1,1510369406,1510369406,0,'normal'),(233,'file',232,'qu/user/index','查看','fa fa-circle-o','','',0,1510369406,1510369406,0,'normal'),(234,'file',232,'qu/user/add','添加','fa fa-circle-o','','',0,1510369406,1510369406,0,'normal'),(235,'file',232,'qu/user/edit','编辑','fa fa-circle-o','','',0,1510369406,1510369406,0,'normal'),(236,'file',232,'qu/user/del','删除','fa fa-circle-o','','',0,1510369406,1510369406,0,'normal'),(237,'file',232,'qu/user/multi','批量更新','fa fa-circle-o','','',0,1510369406,1510369406,0,'normal'),(238,'file',171,'qu/hot','Hot','fa fa-circle-o\r','','',1,1510555774,1510555774,0,'normal'),(239,'file',238,'qu/hot/index','查看','fa fa-circle-o','','',0,1510555774,1510555774,0,'normal'),(240,'file',238,'qu/hot/add','添加','fa fa-circle-o','','',0,1510555774,1510555774,0,'normal'),(241,'file',238,'qu/hot/edit','编辑','fa fa-circle-o','','',0,1510555774,1510555774,0,'normal'),(242,'file',238,'qu/hot/del','删除','fa fa-circle-o','','',0,1510555774,1510555774,0,'normal'),(243,'file',238,'qu/hot/multi','批量更新','fa fa-circle-o','','',0,1510555774,1510555774,0,'normal'),(244,'file',171,'qu/shistory','Shistory','fa fa-circle-o\r','','',1,1510555778,1510555778,0,'normal'),(245,'file',244,'qu/shistory/index','查看','fa fa-circle-o','','',0,1510555778,1510555778,0,'normal'),(246,'file',244,'qu/shistory/add','添加','fa fa-circle-o','','',0,1510555778,1510555778,0,'normal'),(247,'file',244,'qu/shistory/edit','编辑','fa fa-circle-o','','',0,1510555778,1510555778,0,'normal'),(248,'file',244,'qu/shistory/del','删除','fa fa-circle-o','','',0,1510555778,1510555778,0,'normal'),(249,'file',244,'qu/shistory/multi','批量更新','fa fa-circle-o','','',0,1510555778,1510555778,0,'normal');
/*!40000 ALTER TABLE `fa_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_block`
--

DROP TABLE IF EXISTS `fa_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_block` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `content` mediumtext NOT NULL COMMENT '内容',
  `createtime` int(10) NOT NULL COMMENT '添加时间',
  `updatetime` int(10) NOT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='区块表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_block`
--

LOCK TABLES `fa_block` WRITE;
/*!40000 ALTER TABLE `fa_block` DISABLE KEYS */;
INSERT INTO `fa_block` VALUES (1,'focus','focus','幻灯图片1','/assets/addons/cms/img/focus/1.jpg','http://www.fastadmin.net','111',0,0,'normal'),(2,'focus','focus','幻灯图片2','/assets/addons/cms/img/focus/2.jpg','http://www.fastadmin.net','222',0,0,'normal'),(3,'focus','focus','幻灯图片3','/assets/addons/cms/img/focus/3.jpg','http://www.fastadmin.net','333',0,0,'normal'),(4,'other','contactus','联系我们','','','',0,0,'normal'),(6,'other','footer','底部链接','','','<div class=\"col-md-3 col-sm-3\">\n                            <div class=\"footer-logo\">\n                                <a href=“#”><i class=\"fa fa-bookmark\"></i></a>\n                            </div>\n                            <p class=\"copyright\"><small>© 2017. All Rights Reserved. <br>\n                                    FastAdmin\n                                </small>\n                            </p>\n                        </div>\n                        <div class=\"col-md-5 col-md-push-1 col-sm-5 col-sm-push-1\">\n                            <div class=\"row\">\n                                <div class=\"col-md-4 col-sm-4\">\n                                    <ul class=\"links\">\n                                        <li><a href=\"#\">关于我们</a></li>\n                                        <li><a href=\"#\">发展历程</a></li>\n                                        <li><a href=\"#\">服务项目</a></li>\n                                        <li><a href=\"#\">团队成员</a></li>\n                                    </ul>\n                                </div>\n                                <div class=\"col-md-4 col-sm-4\">\n                                    <ul class=\"links\">\n                                        <li><a href=\"#\">新闻</a></li>\n                                        <li><a href=\"#\">资讯</a></li>\n                                        <li><a href=\"#\">推荐</a></li>\n                                        <li><a href=\"#\">博客</a></li>\n                                    </ul>\n                                </div>\n                                <div class=\"col-md-4 col-sm-4\">\n                                    <ul class=\"links\">\n                                        <li><a href=\"#\">服务</a></li>\n                                        <li><a href=\"#\">圈子</a></li>\n                                        <li><a href=\"#\">论坛</a></li>\n                                        <li><a href=\"#\">广告</a></li>\n                                    </ul>\n                                </div>\n                            </div>\n                        </div>\n                        <div class=\"col-md-3 col-sm-3 col-md-push-1 col-sm-push-1\">\n                            <div class=\"footer-social\">\n                                <a href=\"#\"><i class=\"fa fa-weibo\"></i></a>\n                                <a href=\"#\"><i class=\"fa fa-qq\"></i></a>\n                                <a href=\"#\"><i class=\"fa fa-wechat\"></i></a>\n                            </div>\n                        </div>',0,0,'normal'),(7,'other','bannerad','通栏广告','/assets/addons/cms/img/banner/1.jpg','http://www.fastadmin.net','',0,0,'normal'),(8,'other','sidebarad1','边栏广告1','/assets/addons/cms/img/sidebar/1.jpg','http://www.fastadmin.net','',0,0,'normal'),(9,'other','sidebarad2','边栏广告2','/assets/addons/cms/img/sidebar/2.jpg','http://www.fastadmin.net','',0,0,'normal');
/*!40000 ALTER TABLE `fa_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_blog_category`
--

DROP TABLE IF EXISTS `fa_blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_blog_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父分类ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '分类名称',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '分类昵称',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '分类标志',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='博客分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_blog_category`
--

LOCK TABLES `fa_blog_category` WRITE;
/*!40000 ALTER TABLE `fa_blog_category` DISABLE KEYS */;
INSERT INTO `fa_blog_category` VALUES (1,0,'默认分类','default','','/assets/img/qrcode.png','','','',1502112587,1502112587,0,'normal');
/*!40000 ALTER TABLE `fa_blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_blog_comment`
--

DROP TABLE IF EXISTS `fa_blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_blog_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `post_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '父ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `website` varchar(100) NOT NULL DEFAULT '' COMMENT '网址',
  `content` text NOT NULL COMMENT '内容',
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(50) NOT NULL DEFAULT '' COMMENT 'User Agent',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订阅',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`,`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='博客评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_blog_comment`
--

LOCK TABLES `fa_blog_comment` WRITE;
/*!40000 ALTER TABLE `fa_blog_comment` DISABLE KEYS */;
INSERT INTO `fa_blog_comment` VALUES (1,4,0,'Lily','','','博客的出现才是近几年的事情，但是要书写博客历史，却不是一件轻松的事情。许多史料必须像挖掘“古董”一样去求证，而且分歧和争议颇多。',0,'','',0,1502112587,1502112587,'normal'),(2,4,0,'约翰','','','博客天然的草根性，也决定了人们很难来认定一个正式的“博客之父”，也没有人敢于戴上这顶帽子，否则，一定会打得头破血流。',0,'','',0,1502112587,1502112587,'normal'),(3,4,0,'小杜','','','Blog中最简单的形式。单个的作者对于特定的话题提供相关的资源，发表简短的评论。',0,'','',0,1502112587,1502112587,'normal'),(4,4,2,'John','','','按照博客主人的知名度、博客文章受欢迎的程度，可以将博客分为名人博客、一般博客、热门博客等。',0,'','',0,1502112587,1502112587,'normal');
/*!40000 ALTER TABLE `fa_blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_blog_post`
--

DROP TABLE IF EXISTS `fa_blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_blog_post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `summary` varchar(1500) NOT NULL DEFAULT '' COMMENT '摘要',
  `content` text NOT NULL COMMENT '内容',
  `thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '大图',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='博客日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_blog_post`
--

LOCK TABLES `fa_blog_post` WRITE;
/*!40000 ALTER TABLE `fa_blog_post` DISABLE KEYS */;
INSERT INTO `fa_blog_post` VALUES (1,1,'','关于FastAdmin','<p>FastAdmin是一款基于ThinkPHP5和Bootstrap的极速后台开发框架，其强大的CRUD一键生成功能和丰富的插件扩展，让你的后台开发更加简单、快速。</p>','<p>FastAdmin是一款基于ThinkPHP5和Bootstrap的极速后台开发框架，其强大的CRUD一键生成功能和丰富的插件扩展，让你的后台开发更加简单、快速。</p>','/assets/addons/blog/img/thumb.jpg','','','',113,0,1502112587,1502112587,0,'normal'),(2,1,'','博客的来源','<p>        博客最早是由Jorn Barger在1997年12月提出博客这个名称，但是在1998年，互联网上的博客网站却屈指可数。那时，Infosift的编辑Jesse J.Garrett想列举一个博客类似站点的名单，便在互联网上开始了艰难的搜索， 终于在1998年的12月，他的搜集好了部分网站的名单。他把这份名单发给了Cameron Barrett，Cameron觉得这份名单非常有用，就将它在Camworld网站上公布于众。其它的博客站点维护者发现此举后，也纷纷把自己的网址和网站名称、主要特色都发了过来，这个名单也就日渐丰富。到了1999年初，Jesse的“完全博客站点”名单所列的站点已达23个。<br></p>','<div label-module=\"para\"><p>&nbsp; &nbsp; &nbsp; &nbsp; 博客最早是由Jorn Barger在1997年12月提出博客这个名称，但是在1998年，互联网上的博客网站却屈指可数。那时，Infosift的编辑Jesse J.Garrett想列举一个博客类似站点的名单，便在互联网上开始了艰难的搜索， 终于在1998年的12月，他的搜集好了部分网站的名单。他把这份名单发给了Cameron Barrett，Cameron觉得这份名单非常有用，就将它在Camworld网站上公布于众。其它的博客站点维护者发现此举后，也纷纷把自己的网址和网站名称、主要特色都发了过来，这个名单也就日渐丰富。到了1999年初，Jesse的“完全博客站点”名单所列的站点已达23个。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;由于Cameron与Jesse共同维护的博客站点列表既有趣又易于阅读，吸引了很多人的眼球。在这种情况下，Peter Merholz宣称：“这个新鲜事物必将引起大多数人的注意。作为未来的一个常用词语，web-log将不可避免地被简称为blog，而那些编写网络日志的人，也就顺理成章地成为blogger——博客”。这代表着博客被正式命名。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随着博客数量的增多，每个博客网站上编写的网络日志的内容也混杂起来，以至把每一个新出的站点主要内容和特色都不可能搞清楚。Cameron后来就只在网站上登载熟悉的博客站点了。时隔不久，Brigitte Eaton也搜集出了一个名叫“Eaton网络门户”的博客站点名单，并且提出应该以日期为基础组织内容。这也建立了blog分类排列的一大标准。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1999年7月，一个专门制作博客站点的“Pitas”免费工具软件发布了，这对于博客站点的快速搭建起着很关键的作用。随后，上百个同类工具也如雨后春笋般制作出来。这种工具对于加速建立博客站点的数量，是意义重大的。同年的8月份，Pyra发布了Blogger网站，Groksoup也投入运营，使用这些企业所提供的简单的基于互联网的工具，博客站点的数量终于出现了一种爆炸性增长。1999年末，软件研发商Dave Winer向大家推荐Edit This Page网站，Jeff A. Campbell发布了Velocinews网站。所有的这些服务都是免费的，他们的目的也很明确：让更多的人成为博客，来网上发表意见和见解。</p><div label-module=\"para\"><br></div></div>','/assets/addons/blog/img/thumb.jpg','','','',41,0,1502111289,1502111289,0,'normal'),(3,1,'','博客的崛起','<p>&nbsp; &nbsp; &nbsp; &nbsp; 这几年，对于所有新闻媒体来说，都品尝到了技术变革的滋味。如今，再没有任何人会否认互联网对媒体带来的革命，但是，好像也没有多少人感知到互联网的神奇：颠覆性的力量似乎并没有来到人间。所有的核心在于时间。对于性急的人来说，时间如同缓慢的河流，对于从容的人来说，时间又是急流。互联网的力量的确还没有充分施展，因为互联网的商业化起始，到今天仅仅才10年；互联网作为一种新的媒体方式，从尝试到今天，也刚刚跨过10年。</p>','<p>        这几年，对于所有新闻媒体来说，都品尝到了技术变革的滋味。如今，再没有任何人会否认互联网对媒体带来的革命，但是，好像也没有多少人感知到互联网的神奇：颠覆性的力量似乎并没有来到人间。</p><p>        所有的核心在于时间。对于性急的人来说，时间如同缓慢的河流，对于从容的人来说，时间又是急流。互联网的力量的确还没有充分施展，因为互联网的商业化起始，到今天仅仅才10年；互联网作为一种新的媒体方式，从尝试到今天，也刚刚跨过10年。<br>        对于一种全新的媒体形式来说，10年实在过于短暂。但是，10年也足以让人们感受到势不可挡的力量，以及依然静静潜伏着的冲击力。而今，随着博客的崭露头角，网络媒体异常的力量开始展现了，声势逐渐发大。虽然，博客依然在大多数人的视野之外，但是，他们改变历史的征程已经启动。<br>1998年，个人博客网站“德拉吉报道”率先捅出克林顿莱温斯基绯闻案；<br>2001年，911事件使得博客成为重要的新闻之源，而步入主流；<br>2002年12月，多数党领袖洛特的不慎之言被博客网站盯住，而丢掉了乌纱帽；<br>2003年，围绕新闻报道的传统媒体和互联网上的伊拉克战争也同时开打，美国传统媒体公信力遭遇空前质疑，博客大获全胜；<br>2003年6月，《纽约时报》执行主编和总编辑也被“博客”揭开的真相而下台，引爆了新闻媒体史上最大的丑闻之一；<br>2004年4月，轰动一时的Gmail测试者大部分从bloggers中产生；<br>……<br></p><p>这一系列发源于博客世界的颠覆性力量，不但塑造着博客自身全新的形象，而且，也在深刻地改变着媒体的传统和未来走向。</p>','/assets/addons/blog/img/thumb.jpg','','','',58,0,1502112074,1502112074,0,'normal'),(4,1,'','博客的时代正在到来','<p>&nbsp; &nbsp; &nbsp; &nbsp; 全世界每天传播的媒体内容，有一半是由6大媒体巨头所控制。其利益驱动、意识形态以及传统的审查制度，使得这些经过严重加工处理的内容已经越来越不适应人们的需求。媒体的工业化，内容出口的工厂化，都在严重影响其发展。<br>比如，以美联社为例，有近4000人专业记者，每天“制造并出厂”2000万字的内容，每天发布在8500多种报纸、杂志和广播中，把读者当作“信息动物”一样。这种大教堂式的模式主导了整个媒体世界。这时，以个人为中心的博客潮流却开始有力冲击传统媒体，尤其是对新闻界多年形成的传统观念和道德规范。<br></p>','<p>        全世界每天传播的媒体内容，有一半是由6大媒体巨头所控制。其利益驱动、意识形态以及传统的审查制度，使得这些经过严重加工处理的内容已经越来越不适应人们的需求。媒体的工业化，内容出口的工厂化，都在严重影响其发展。<br>比如，以美联社为例，有近4000人专业记者，每天“制造并出厂”2000万字的内容，每天发布在8500多种报纸、杂志和广播中，把读者当作“信息动物”一样。这种大教堂式的模式主导了整个媒体世界。这时，以个人为中心的博客潮流却开始有力冲击传统媒体，尤其是对新闻界多年形成的传统观念和道德规范。<br>        博客是一种满足“五零”条件(零编辑、零技术、零体制、零成本、零形式)而实现的“零进入壁垒”的网上个人出版方式，从媒体价值链最重要的三个环节：作者、内容和读者三大层次，实现了“源代码的开放”。并同时在道德规范、运作机制和经济规律等层次，将逐步完成体制层面的真正开放，使未来媒体世界完成从大教堂模式到集市模式的根本转变。<br>        博客的出现集中体现了互联网时代媒体界所体现的商业化垄断与非商业化自由，大众化传播与个性化(分众化，小众化)表达，单向传播与双向传播3个基本矛盾、方向和互动。这几个矛盾因为博客引发的开放源代码运动，至少在技术层面上得到了根本的解决。</p>\r\n                <p><img src=\"/assets/addons/blog/img/thumb.jpg\" alt=\"\"></p>','/assets/addons/blog/img/thumb.jpg','','','',71,4,1502111626,1502111626,0,'normal');
/*!40000 ALTER TABLE `fa_blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_calendar`
--

DROP TABLE IF EXISTS `fa_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_calendar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL COMMENT '管理员ID',
  `title` varchar(100) NOT NULL COMMENT '任务标题',
  `url` varchar(100) NOT NULL COMMENT '链接',
  `starttime` int(10) NOT NULL COMMENT '开始时间',
  `endtime` int(10) NOT NULL COMMENT '结束时间',
  `background` varchar(10) NOT NULL COMMENT '背景颜色',
  `classname` varchar(30) NOT NULL COMMENT '自定义类名',
  `createtime` int(10) NOT NULL COMMENT '创建时间',
  `updatetime` int(10) NOT NULL COMMENT '更新时间',
  `status` enum('normal','hidden','expired','completed') NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 COMMENT='日历表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_calendar`
--

LOCK TABLES `fa_calendar` WRITE;
/*!40000 ALTER TABLE `fa_calendar` DISABLE KEYS */;
INSERT INTO `fa_calendar` VALUES (148,1,'外部链接事件','http://www.baidu.com',1505059200,1505059200,'#f012be','',1505125111,1505125111,'normal'),(149,1,'新选项卡事件','dashboard',1505235600,1505235600,'#e74c3c','btn-addtabs',1505125095,1505125559,'normal'),(150,1,'弹窗事件','general/profile',1505498400,1505539800,'#0073b7','btn-dialog',1505125066,1505125555,'completed'),(151,1,'普通事件','',1506009600,1506009600,'#18bc9c','',1505125044,1505125044,'normal'),(152,1,'普通事件','',1505244600,1505428200,'#18bc9c','',1505125044,1505125575,'normal'),(153,1,'新选项卡事件','dashboard',1506009600,1506009600,'#e74c3c','btn-addtabs',1505125095,1505125095,'normal'),(154,1,'外部链接事件','http://www.baidu.com',1506009600,1506009600,'#f012be','',1505125111,1505125111,'normal'),(155,1,'新选项卡事件','dashboard',1505491200,1505491200,'#e74c3c','btn-addtabs',1505125095,1505125095,'normal'),(156,1,'新选项卡事件','dashboard',1504886400,1504886400,'#e74c3c','btn-addtabs',1505125095,1505125095,'normal'),(157,1,'新选项卡事件','dashboard',1504713600,1505059200,'#e74c3c','btn-addtabs',1505125095,1505125631,'completed'),(158,1,'弹窗事件','general/profile',1504713600,1504713600,'#0073b7','btn-dialog',1505125066,1505125066,'completed'),(159,1,'弹窗事件','general/profile',1505232000,1505232000,'#0073b7','btn-dialog',1505125066,1505125066,'normal');
/*!40000 ALTER TABLE `fa_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_calendar_event`
--

DROP TABLE IF EXISTS `fa_calendar_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_calendar_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL COMMENT '管理员ID',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '任务标题',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `background` varchar(10) NOT NULL COMMENT '背景颜色',
  `classname` varchar(30) NOT NULL COMMENT '自定义类名',
  `createtime` int(10) NOT NULL COMMENT '添加时间',
  `updatetime` int(10) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='事件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_calendar_event`
--

LOCK TABLES `fa_calendar_event` WRITE;
/*!40000 ALTER TABLE `fa_calendar_event` DISABLE KEYS */;
INSERT INTO `fa_calendar_event` VALUES (42,1,'普通事件','','#18bc9c','',1505125044,1505125044),(43,1,'弹窗事件','general/profile','#0073b7','btn-dialog',1505125066,1505125066),(44,1,'新选项卡事件','dashboard','#e74c3c','btn-addtabs',1505125095,1505125095),(45,1,'外部链接事件','http://www.baidu.com','#f012be','',1505125111,1505125111);
/*!40000 ALTER TABLE `fa_calendar_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_category`
--

DROP TABLE IF EXISTS `fa_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_category`
--

LOCK TABLES `fa_category` WRITE;
/*!40000 ALTER TABLE `fa_category` DISABLE KEYS */;
INSERT INTO `fa_category` VALUES (1,0,'page','官方新闻','news','recommend','/assets/img/qrcode.png','','','news',1495262190,1495262190,1,'normal'),(2,0,'page','移动应用','mobileapp','hot','/assets/img/qrcode.png','','','mobileapp',1495262244,1495262244,2,'normal'),(3,2,'page','微信公众号','wechatpublic','index','/assets/img/qrcode.png','','','wechatpublic',1495262288,1495262288,3,'normal'),(4,2,'page','Android开发','android','recommend','/assets/img/qrcode.png','','','android',1495262317,1495262317,4,'normal'),(5,0,'page','软件产品','software','recommend','/assets/img/qrcode.png','','','software',1495262336,1499681850,5,'normal'),(6,5,'page','网站建站','website','recommend','/assets/img/qrcode.png','','','website',1495262357,1495262357,6,'normal'),(7,5,'page','企业管理软件','company','index','/assets/img/qrcode.png','','','company',1495262391,1495262391,7,'normal'),(8,6,'page','PC端','website-pc','recommend','/assets/img/qrcode.png','','','website-pc',1495262424,1495262424,8,'normal'),(9,6,'page','移动端','website-mobile','recommend','/assets/img/qrcode.png','','','website-mobile',1495262456,1495262456,9,'normal'),(10,7,'page','CRM系统 ','company-crm','recommend','/assets/img/qrcode.png','','','company-crm',1495262487,1495262487,10,'normal'),(11,7,'page','SASS平台软件','company-sass','recommend','/assets/img/qrcode.png','','','company-sass',1495262515,1495262515,11,'normal'),(12,0,'test','测试1','test1','recommend','/assets/img/qrcode.png','','','test1',1497015727,1497015727,12,'normal'),(13,0,'test','测试2','test2','recommend','/assets/img/qrcode.png','','','test2',1497015738,1497015738,13,'normal');
/*!40000 ALTER TABLE `fa_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_channel`
--

DROP TABLE IF EXISTS `fa_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_channel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('channel','page','link','list') NOT NULL COMMENT '类型',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `image` varchar(100) NOT NULL COMMENT '图片',
  `keywords` varchar(255) NOT NULL COMMENT '关键字',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `diyname` varchar(30) NOT NULL COMMENT '自定义名称',
  `outlink` varbinary(255) NOT NULL DEFAULT '' COMMENT '外部链接',
  `items` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '文章数量',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `channeltpl` varchar(100) NOT NULL DEFAULT '' COMMENT '栏目页模板',
  `listtpl` varchar(100) NOT NULL COMMENT '列表页模板',
  `showtpl` varchar(100) NOT NULL COMMENT '详情页模板',
  `pagesize` smallint(5) NOT NULL COMMENT '分页大小',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diyname` (`diyname`),
  KEY `weigh` (`weigh`,`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_channel`
--

LOCK TABLES `fa_channel` WRITE;
/*!40000 ALTER TABLE `fa_channel` DISABLE KEYS */;
INSERT INTO `fa_channel` VALUES (34,'channel',7,0,'新闻中心','','','','news','',0,9,'channel.html','','',10,1508990697,1508992553,'normal'),(35,'list',7,34,'新闻1','','','','news1','',6,5,'channel.html','list_news.html','show_news.html',10,1508990707,1508992563,'normal'),(36,'list',7,35,'新闻1-1','','','','news1-1','',2,8,'channel.html','list_news.html','show_news.html',10,1508990716,1508992574,'normal'),(37,'channel',7,0,'产品中心','','','','product','',0,10,'channel.html','','',10,1508992541,1508992541,'normal'),(38,'list',8,37,'产品1','','','','product1','',2,4,'channel.html','list_product.html','show_product.html',10,1508992598,1508992598,'normal'),(39,'list',8,38,'产品1-1','','','','product1-1','',0,7,'channel.html','list_product.html','show_product.html',10,1508992623,1508992623,'normal'),(40,'link',7,0,'关于我们','','','','aboutus','/p/aboutus.html',0,1,'channel.html','','',10,1508994681,1508994681,'normal'),(41,'link',7,0,'官网首页','','','','official','http://www.fastadmin.net',0,6,'channel.html','','',10,1508994753,1508994753,'normal'),(42,'link',7,0,'交流社区','','','','forum','http://forum.fastadmin.net',0,3,'channel.html','','',10,1508994772,1508994772,'normal'),(43,'link',7,0,'文档','','','','docs','http://doc.fastadmin.net',0,2,'channel.html','','',10,1508994788,1508994788,'normal');
/*!40000 ALTER TABLE `fa_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_config`
--

DROP TABLE IF EXISTS `fa_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='系统配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_config`
--

LOCK TABLES `fa_config` WRITE;
/*!40000 ALTER TABLE `fa_config` DISABLE KEYS */;
INSERT INTO `fa_config` VALUES (1,'name','basic','Site name','请填写站点名称','string','FastAdmin','','required',''),(2,'beian','basic','Beian','粤ICP备15054802号-4','string','','','',''),(3,'cdnurl','basic','Cdn url','如果使用CDN云储存请配置该值','string','','','',''),(4,'version','basic','Version','如果静态资源有变动请重新配置该值','string','1.0.1','','required',''),(5,'timezone','basic','Timezone','','string','Asia/Shanghai','','required',''),(6,'forbiddenip','basic','Forbidden ip','一行一条记录','text','','','',''),(7,'languages','basic','Languages','','array','{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}','','required',''),(8,'fixedpage','basic','Fixed page','请尽量输入左侧菜单栏存在的链接','string','dashboard','','required',''),(9,'categorytype','dictionary','Cateogry type','','array','{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}','','',''),(10,'configgroup','dictionary','Config group','','array','{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}','','',''),(11,'mail_type','email','Mail type','选择邮件发送方式','select','1','[\"Please select\",\"SMTP\",\"Mail\"]','',''),(12,'mail_smtp_host','email','Mail smtp host','错误的配置发送邮件会导致服务器超时','string','smtp.qq.com','','',''),(13,'mail_smtp_port','email','Mail smtp port','(不加密默认25,SSL默认465,TLS默认587)','string','465','','',''),(14,'mail_smtp_user','email','Mail smtp user','（填写完整用户名）','string','904693433@qq.com','','',''),(15,'mail_smtp_pass','email','Mail smtp password','（填写您的密码）','string','ygojtjqghsivbdbi','','',''),(16,'mail_verify_type','email','Mail vertify type','（SMTP验证方式[推荐SSL]）','select','2','[\"None\",\"TLS\",\"SSL\"]','',''),(17,'mail_from','email','Mail from','','string','904693433@qq.com','','',''),(18,'cookie','dictionary','cookie','cookie 值','text','__cfduid=d8932a40c7f2ea86d748382029a6157371507897948; PHPSESSID=fktedq95sdc54fjg9mg88cafn3','','',''),(19,'basicmoney','dictionary','下注底数(2代表角,1代表元)','下注底数(2代表角,1代表元)','select','2','[\"2\",\"1\"]','',''),(20,'lixucount','dictionary','到达连出次数下注','到达连出次数下注','number','8','','',''),(21,'bei','dictionary','下注倍数','下注倍数','number','1','','','');
/*!40000 ALTER TABLE `fa_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_crontab`
--

DROP TABLE IF EXISTS `fa_crontab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_crontab` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '事件类型',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '事件标题',
  `content` text NOT NULL COMMENT '事件内容',
  `schedule` varchar(100) NOT NULL DEFAULT '' COMMENT 'Crontab格式',
  `sleep` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '延迟秒数执行',
  `maximums` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大执行次数 0为不限',
  `executes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '已经执行的次数',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `begintime` int(10) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `executetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后执行时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` enum('completed','expired','hidden','normal') NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定时任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_crontab`
--

LOCK TABLES `fa_crontab` WRITE;
/*!40000 ALTER TABLE `fa_crontab` DISABLE KEYS */;
INSERT INTO `fa_crontab` VALUES (1,'url','请求FastAdmin','http://www.fastadmin.net','* * * * *',0,0,13548,1497070825,1507967530,1483200000,1546272000,1501253101,1,'hidden'),(2,'sql','查询一条SQL','SELECT 1;','* * * * *',0,0,13548,1497071095,1507967533,1483200000,1546272000,1501253101,2,'hidden'),(3,'url','定时获取全天时时彩数据','http://yangqihua.com/allfastadmin/public/index.php/admin/cai/quan/getData','*/1 * * * *',0,0,444,1507967497,1507995541,1507967480,1704527482,1507995541,0,'normal');
/*!40000 ALTER TABLE `fa_crontab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_fields`
--

DROP TABLE IF EXISTS `fa_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_fields` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `model_id` int(10) NOT NULL COMMENT '模型ID',
  `name` char(30) NOT NULL COMMENT '名称',
  `type` varchar(30) NOT NULL COMMENT '类型',
  `title` varchar(30) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `defaultvalue` varchar(100) NOT NULL DEFAULT '' COMMENT '默认值',
  `rule` varchar(30) DEFAULT NULL COMMENT '验证规则',
  `msg` varchar(30) DEFAULT '0' COMMENT '错误消息',
  `ok` varchar(30) DEFAULT '0' COMMENT '成功消息',
  `tip` varchar(30) DEFAULT NULL COMMENT '提示消息',
  `decimals` tinyint(1) NOT NULL COMMENT '小数点',
  `length` mediumint(8) NOT NULL COMMENT '长度',
  `minimum` smallint(6) NOT NULL COMMENT '最小数量',
  `maximum` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '最大数量',
  `extend` varchar(30) NOT NULL COMMENT '扩展信息',
  `weigh` int(10) NOT NULL COMMENT '排序',
  `createtime` int(10) NOT NULL COMMENT '添加时间',
  `updatetime` int(10) NOT NULL COMMENT '更新时间',
  `isfilter` tinyint(1) NOT NULL COMMENT '筛选',
  `status` enum('normal','hidden') NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `model_id` (`model_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='模型字段表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_fields`
--

LOCK TABLES `fa_fields` WRITE;
/*!40000 ALTER TABLE `fa_fields` DISABLE KEYS */;
INSERT INTO `fa_fields` VALUES (136,7,'author','string','作者','value1|title1\r\nvalue2|title2','','','','','',0,255,0,0,'',136,1508990735,1508991985,1,'normal'),(137,7,'age','select','年龄','1-18|1-18岁\r\n19-29|19-29岁\r\n30-39|30-39岁','','required','','','',0,255,0,0,'',137,1508990746,1508992045,1,'normal'),(138,7,'gender','radio','性别','male|男\r\nfemale|女','','required','','','',0,255,0,0,'',138,1508992093,1508992093,1,'normal'),(139,8,'productdata','images','产品列表','value1|title1\r\nvalue2|title2','','required','','','',0,1500,0,20,'',139,1508992518,1508992518,1,'normal');
/*!40000 ALTER TABLE `fa_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_model`
--

DROP TABLE IF EXISTS `fa_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_model` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL COMMENT '模型名称',
  `table` char(20) NOT NULL COMMENT '表名',
  `fields` text NOT NULL COMMENT '字段列表',
  `channeltpl` varchar(30) NOT NULL COMMENT '栏目页模板',
  `listtpl` varchar(30) NOT NULL COMMENT '列表页模板',
  `showtpl` varchar(30) NOT NULL COMMENT '详情页模板',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `setting` text NOT NULL COMMENT '模型配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='内容模型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_model`
--

LOCK TABLES `fa_model` WRITE;
/*!40000 ALTER TABLE `fa_model` DISABLE KEYS */;
INSERT INTO `fa_model` VALUES (7,'新闻','addonnews','author,age','channel.html','list_news.html','show_news.html',1508990659,1508992045,''),(8,'产品','addonproduct','','channel.html','list_product.html','show_product.html',1508992445,1508992445,'');
/*!40000 ALTER TABLE `fa_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_page`
--

DROP TABLE IF EXISTS `fa_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `category_id` int(10) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `type` varchar(50) NOT NULL COMMENT '类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `content` text NOT NULL COMMENT '内容',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论',
  `diyname` varchar(50) NOT NULL COMMENT '自定义',
  `showtpl` varchar(50) NOT NULL COMMENT '视图模板',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='单页表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_page`
--

LOCK TABLES `fa_page` WRITE;
/*!40000 ALTER TABLE `fa_page` DISABLE KEYS */;
INSERT INTO `fa_page` VALUES (28,0,'page','基于ThinkPHP5和Bootstrap的极速后台开发框架','fds','fdsfdsdsf','','fds','<p>基于ThinkPHP5和Bootstrap进行二次开发,手机、平板、PC均自动适配,无需要担心兼容性问题</p>','',0,0,'aboutus','page',1508933935,1508934150,28,'normal');
/*!40000 ALTER TABLE `fa_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_tags`
--

DROP TABLE IF EXISTS `fa_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '标签名称',
  `archives` text NOT NULL COMMENT '文档ID集合',
  `nums` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `nums` (`nums`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='标签表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_tags`
--

LOCK TABLES `fa_tags` WRITE;
/*!40000 ALTER TABLE `fa_tags` DISABLE KEYS */;
INSERT INTO `fa_tags` VALUES (30,'FastAdmin','85,84,89,90',4),(31,'极速','85,84',2),(32,'新闻1','84,93',2),(33,'产品1','89',1),(34,'产品2','90',1),(35,'新闻2','91,92,94',3);
/*!40000 ALTER TABLE `fa_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_test`
--

DROP TABLE IF EXISTS `fa_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_test`
--

LOCK TABLES `fa_test` WRITE;
/*!40000 ALTER TABLE `fa_test` DISABLE KEYS */;
INSERT INTO `fa_test` VALUES (1,0,12,'12,13','monday','hot,index','male','music,reading','我是一篇测试文章','<p>我是测试内容</p>','/assets/img/avatar.png','/assets/img/avatar.png,/assets/img/qrcode.png','/assets/img/avatar.png','关键字','描述','广西壮族自治区/百色市/平果县',0.00,0,'2017-07-10','2017-07-10 18:24:45',2017,'18:24:45',1499682285,1499682526,1499682526,0,1,'normal','1');
/*!40000 ALTER TABLE `fa_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_ad`
--

DROP TABLE IF EXISTS `qu_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `img_url` varchar(1024) DEFAULT NULL COMMENT '图片url',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(11) DEFAULT '1',
  `weight` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='广告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_ad`
--

LOCK TABLES `qu_ad` WRITE;
/*!40000 ALTER TABLE `qu_ad` DISABLE KEYS */;
INSERT INTO `qu_ad` VALUES (1,2,'123','123.jpg',1509617304,1509617304,1,0);
/*!40000 ALTER TABLE `qu_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_browser`
--

DROP TABLE IF EXISTS `qu_browser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_browser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `user_id` int(11) NOT NULL,
  `is_delete` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='浏览记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_browser`
--

LOCK TABLES `qu_browser` WRITE;
/*!40000 ALTER TABLE `qu_browser` DISABLE KEYS */;
/*!40000 ALTER TABLE `qu_browser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_buy`
--

DROP TABLE IF EXISTS `qu_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `user_id` int(11) NOT NULL,
  `is_delete` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购买记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_buy`
--

LOCK TABLES `qu_buy` WRITE;
/*!40000 ALTER TABLE `qu_buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `qu_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_collection`
--

DROP TABLE IF EXISTS `qu_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_collection` (
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `is_delete` int(11) DEFAULT '1' COMMENT '0代表取消收藏，1代表收藏\n',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`,`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏夹';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_collection`
--

LOCK TABLES `qu_collection` WRITE;
/*!40000 ALTER TABLE `qu_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `qu_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_details`
--

DROP TABLE IF EXISTS `qu_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL COMMENT '商品逻辑外键',
  `img_urls` text COMMENT '详情图片url集合',
  `video_urls` text COMMENT '详情视频url集合',
  `desc` text NOT NULL COMMENT '文案',
  `tb_link` text NOT NULL COMMENT '淘宝链接',
  `jd_link` text COMMENT '京东链接',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(11) DEFAULT '1',
  `category` int(11) NOT NULL DEFAULT '1' COMMENT '1代表京东，2代表淘宝，3代表其他',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_details`
--

LOCK TABLES `qu_details` WRITE;
/*!40000 ALTER TABLE `qu_details` DISABLE KEYS */;
INSERT INTO `qu_details` VALUES (1,2,'[{\"url\":\"xx1.jpg\",\"desc\":\"图片1描述\"},{\"url\":\"xx2.jpg\",\"desc\":\"图片2描述\"}]','[{\"url\":\"xx1.mp4\",\"desc\":\"视频1描述\"},{\"url\":\"xx2.mp4\",\"desc\":\"视频2描述\"}]','描述','xxx.html',NULL,0,0,0,1);
/*!40000 ALTER TABLE `qu_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_goods`
--

DROP TABLE IF EXISTS `qu_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `desc` varchar(1024) NOT NULL DEFAULT '' COMMENT '描述',
  `home_url` varchar(255) NOT NULL DEFAULT '' COMMENT '首页图片url',
  `category` int(11) NOT NULL DEFAULT '1' COMMENT '1.代表实用，2.黑科技，3.代表有趣，4.代表冷门类',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '排序权重',
  `share_num` int(11) NOT NULL DEFAULT '0' COMMENT '分享数',
  `buy_num` int(11) NOT NULL DEFAULT '0' COMMENT '购买数',
  `browse_num` int(11) NOT NULL DEFAULT '0' COMMENT '浏览数',
  `price` double NOT NULL DEFAULT '0' COMMENT '价格',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '是否上架，0代表下架，1代表上架',
  `collection_num` int(11) NOT NULL DEFAULT '0' COMMENT '收藏数',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `create_user` varchar(255) NOT NULL DEFAULT '' COMMENT '创建者姓名',
  `is_delete` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_goods`
--

LOCK TABLES `qu_goods` WRITE;
/*!40000 ALTER TABLE `qu_goods` DISABLE KEYS */;
INSERT INTO `qu_goods` VALUES (1,'商品1','11','xxx.jpg',1,10,1,1,1,1,1,1,NULL,NULL,'',0),(2,'商品2','11','xxx.jpg',2,10,1,1,1,1,1,1,NULL,NULL,'',0),(3,'商品3','11','xxx.jpg',1,10,1,1,1,1,1,1,NULL,NULL,'',0);
/*!40000 ALTER TABLE `qu_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_hot`
--

DROP TABLE IF EXISTS `qu_hot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_hot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL DEFAULT '' COMMENT '标签',
  `weight` int(11) DEFAULT '0' COMMENT '权重',
  `createtime` int(11) DEFAULT '0',
  `updatetime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_hot`
--

LOCK TABLES `qu_hot` WRITE;
/*!40000 ALTER TABLE `qu_hot` DISABLE KEYS */;
/*!40000 ALTER TABLE `qu_hot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_recommend`
--

DROP TABLE IF EXISTS `qu_recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `desc` text COMMENT '推荐文案',
  `weight` int(11) DEFAULT '0',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `goods_id` int(11) DEFAULT NULL,
  `is_delete` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推荐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_recommend`
--

LOCK TABLES `qu_recommend` WRITE;
/*!40000 ALTER TABLE `qu_recommend` DISABLE KEYS */;
/*!40000 ALTER TABLE `qu_recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_share`
--

DROP TABLE IF EXISTS `qu_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `user_id` int(11) NOT NULL,
  `is_delete` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分享';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_share`
--

LOCK TABLES `qu_share` WRITE;
/*!40000 ALTER TABLE `qu_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `qu_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_shistory`
--

DROP TABLE IF EXISTS `qu_shistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_shistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(1024) NOT NULL DEFAULT '' COMMENT '搜索内容',
  `createtime` int(11) DEFAULT '0',
  `updatetime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_shistory`
--

LOCK TABLES `qu_shistory` WRITE;
/*!40000 ALTER TABLE `qu_shistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `qu_shistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_superme`
--

DROP TABLE IF EXISTS `qu_superme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_superme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `is_delete` int(11) DEFAULT '1',
  `weight` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='精选';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_superme`
--

LOCK TABLES `qu_superme` WRITE;
/*!40000 ALTER TABLE `qu_superme` DISABLE KEYS */;
/*!40000 ALTER TABLE `qu_superme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_top`
--

DROP TABLE IF EXISTS `qu_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_top` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `category` int(11) NOT NULL DEFAULT '2' COMMENT '1代表每日，2代表每周，3代表每月，4.总排行',
  `weight` int(11) DEFAULT '0' COMMENT '榜单排序',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='榜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_top`
--

LOCK TABLES `qu_top` WRITE;
/*!40000 ALTER TABLE `qu_top` DISABLE KEYS */;
/*!40000 ALTER TABLE `qu_top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_user`
--

DROP TABLE IF EXISTS `qu_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wx_token` varchar(1024) DEFAULT NULL COMMENT '微信token',
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `img_url` varchar(255) DEFAULT NULL COMMENT '头像url',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_user`
--

LOCK TABLES `qu_user` WRITE;
/*!40000 ALTER TABLE `qu_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `qu_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-14 23:23:13
