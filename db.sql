-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm8o1q4
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
-- Current Database: `ssm8o1q4`
--

/*!40000 DROP DATABASE IF EXISTS `ssm8o1q4`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm8o1q4` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm8o1q4`;

--
-- Table structure for table `cantuanxinxi`
--

DROP TABLE IF EXISTS `cantuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cantuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pintuanmingcheng` varchar(200) DEFAULT NULL COMMENT '拼团名称',
  `pintuantupian` varchar(200) DEFAULT NULL COMMENT '拼团图片',
  `kaituanrenshu` int(11) DEFAULT NULL COMMENT '开团人数',
  `pintuanrenshu` int(11) NOT NULL COMMENT '拼团人数',
  `pintuanjiage` int(11) DEFAULT NULL COMMENT '拼团价格',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `lvyoutianshu` varchar(200) DEFAULT NULL COMMENT '旅游天数',
  `faqizhanghao` varchar(200) DEFAULT NULL COMMENT '发起账号',
  `faqixingming` varchar(200) DEFAULT NULL COMMENT '发起姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `cantuanbeizhu` varchar(200) DEFAULT NULL COMMENT '参团备注',
  `cantuanshijian` datetime DEFAULT NULL COMMENT '参团时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `cheliangzhuangtai` varchar(200) NOT NULL COMMENT '车辆状态',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652237226269 DEFAULT CHARSET=utf8 COMMENT='参团信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cantuanxinxi`
--

LOCK TABLES `cantuanxinxi` WRITE;
/*!40000 ALTER TABLE `cantuanxinxi` DISABLE KEYS */;
INSERT INTO `cantuanxinxi` VALUES (61,'2022-05-11 02:38:58','拼团名称1','upload/cantuanxinxi_pintuantupian1.jpg',1,1,1,1,'旅游天数1','发起账号1','发起姓名1','联系手机1','参团备注1','2022-05-11 10:38:58','账号1','姓名1','手机号码1','有车','是','',1),(62,'2022-05-11 02:38:58','拼团名称2','upload/cantuanxinxi_pintuantupian2.jpg',2,2,2,2,'旅游天数2','发起账号2','发起姓名2','联系手机2','参团备注2','2022-05-11 10:38:58','账号2','姓名2','手机号码2','有车','是','',2),(63,'2022-05-11 02:38:58','拼团名称3','upload/cantuanxinxi_pintuantupian3.jpg',3,3,3,3,'旅游天数3','发起账号3','发起姓名3','联系手机3','参团备注3','2022-05-11 10:38:58','账号3','姓名3','手机号码3','有车','是','',3),(64,'2022-05-11 02:38:58','拼团名称4','upload/cantuanxinxi_pintuantupian4.jpg',4,4,4,4,'旅游天数4','发起账号4','发起姓名4','联系手机4','参团备注4','2022-05-11 10:38:58','账号4','姓名4','手机号码4','有车','是','',4),(65,'2022-05-11 02:38:58','拼团名称5','upload/cantuanxinxi_pintuantupian5.jpg',5,5,5,5,'旅游天数5','发起账号5','发起姓名5','联系手机5','参团备注5','2022-05-11 10:38:58','账号5','姓名5','手机号码5','有车','是','',5),(66,'2022-05-11 02:38:58','拼团名称6','upload/cantuanxinxi_pintuantupian6.jpg',6,6,6,6,'旅游天数6','发起账号6','发起姓名6','联系手机6','参团备注6','2022-05-11 10:38:58','账号6','姓名6','手机号码6','有车','是','',6),(1652237226268,'2022-05-11 02:47:05','某某拼团','upload/1652237125955.jpg',3,2,58,116,'三天两夜','22','李四','13333333333','这里是用户参团的地方','2022-05-11 10:47:23','11','张三','13111111111','有车','是','这里是审核用户的参团信息的地方，',1652236870653);
/*!40000 ALTER TABLE `cantuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `config` VALUES (1,'picture1','upload/1652237479352.png'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjingdianxinxi`
--

DROP TABLE IF EXISTS `discussjingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652237059867 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjingdianxinxi`
--

LOCK TABLES `discussjingdianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjingdianxinxi` DISABLE KEYS */;
INSERT INTO `discussjingdianxinxi` VALUES (121,'2022-05-11 02:38:58',1,1,'用户名1','评论内容1','回复内容1'),(122,'2022-05-11 02:38:58',2,2,'用户名2','评论内容2','回复内容2'),(123,'2022-05-11 02:38:58',3,3,'用户名3','评论内容3','回复内容3'),(124,'2022-05-11 02:38:58',4,4,'用户名4','评论内容4','回复内容4'),(125,'2022-05-11 02:38:58',5,5,'用户名5','评论内容5','回复内容5'),(126,'2022-05-11 02:38:58',6,6,'用户名6','评论内容6','回复内容6'),(1652237059866,'2022-05-11 02:44:19',33,1652236957808,'22','这里是评论的地方，这里的推荐是根据用户的点击次数决定的，次数越高，在首页的推荐就越靠前','这里是回复用户的评论或者删除不良评论的地方');
/*!40000 ALTER TABLE `discussjingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqiren`
--

DROP TABLE IF EXISTS `faqiren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqiren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `faqizhanghao` varchar(200) NOT NULL COMMENT '发起账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `faqixingming` varchar(200) NOT NULL COMMENT '发起姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `faqizhanghao` (`faqizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1652236957809 DEFAULT CHARSET=utf8 COMMENT='发起人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqiren`
--

LOCK TABLES `faqiren` WRITE;
/*!40000 ALTER TABLE `faqiren` DISABLE KEYS */;
INSERT INTO `faqiren` VALUES (21,'2022-05-11 02:38:57','发起账号1','123456','发起姓名1','男','773890001@qq.com','13823888881','upload/faqiren_xiangpian1.jpg'),(22,'2022-05-11 02:38:57','发起账号2','123456','发起姓名2','男','773890002@qq.com','13823888882','upload/faqiren_xiangpian2.jpg'),(23,'2022-05-11 02:38:57','发起账号3','123456','发起姓名3','男','773890003@qq.com','13823888883','upload/faqiren_xiangpian3.jpg'),(24,'2022-05-11 02:38:57','发起账号4','123456','发起姓名4','男','773890004@qq.com','13823888884','upload/faqiren_xiangpian4.jpg'),(25,'2022-05-11 02:38:57','发起账号5','123456','发起姓名5','男','773890005@qq.com','13823888885','upload/faqiren_xiangpian5.jpg'),(26,'2022-05-11 02:38:57','发起账号6','123456','发起姓名6','男','773890006@qq.com','13823888886','upload/faqiren_xiangpian6.jpg'),(1652236957808,'2022-05-11 02:42:37','22','22','李四','女','133@163.com','13333333333','upload/1652237106872.jpg');
/*!40000 ALTER TABLE `faqiren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652237172020 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (92,'2022-05-11 02:38:58','帖子标题2','帖子内容2',0,2,'用户名2','开放'),(93,'2022-05-11 02:38:58','帖子标题3','帖子内容3',0,3,'用户名3','开放'),(94,'2022-05-11 02:38:58','帖子标题4','帖子内容4',0,4,'用户名4','开放'),(95,'2022-05-11 02:38:58','帖子标题5','帖子内容5',0,5,'用户名5','开放'),(96,'2022-05-11 02:38:58','帖子标题6','帖子内容6',0,6,'用户名6','开放'),(1652237090928,'2022-05-11 02:44:50',NULL,'这里是评论论坛的地方',91,1652236957808,'22',NULL),(1652237172019,'2022-05-11 02:46:11','这里是发布帖子的地方','这里输入帖子的内容',0,1652236957808,'22','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianfenlei`
--

DROP TABLE IF EXISTS `jingdianfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianfenlei` varchar(200) NOT NULL COMMENT '景点分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652237374894 DEFAULT CHARSET=utf8 COMMENT='景点分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianfenlei`
--

LOCK TABLES `jingdianfenlei` WRITE;
/*!40000 ALTER TABLE `jingdianfenlei` DISABLE KEYS */;
INSERT INTO `jingdianfenlei` VALUES (41,'2022-05-11 02:38:57','景点分类1'),(42,'2022-05-11 02:38:57','景点分类2'),(43,'2022-05-11 02:38:57','景点分类3'),(44,'2022-05-11 02:38:57','景点分类4'),(45,'2022-05-11 02:38:57','景点分类5'),(46,'2022-05-11 02:38:57','景点分类6'),(1652237374893,'2022-05-11 02:49:34','AAA类');
/*!40000 ALTER TABLE `jingdianfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianxinxi`
--

DROP TABLE IF EXISTS `jingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdianfenlei` varchar(200) NOT NULL COMMENT '景点分类',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdiandizhi` varchar(200) NOT NULL COMMENT '景点地址',
  `jingdianjianjie` longtext COMMENT '景点简介',
  `jingdianxiangqing` longtext COMMENT '景点详情',
  `kaifashijian` varchar(200) DEFAULT NULL COMMENT '开发时间',
  `menpiaojiage` int(11) DEFAULT NULL COMMENT '门票价格',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652237431213 DEFAULT CHARSET=utf8 COMMENT='景点信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianxinxi`
--

LOCK TABLES `jingdianxinxi` WRITE;
/*!40000 ALTER TABLE `jingdianxinxi` DISABLE KEYS */;
INSERT INTO `jingdianxinxi` VALUES (31,'2022-05-11 02:38:57','景点名称1','景点分类1','upload/jingdianxinxi_jingdiantupian1.jpg','景点地址1','景点简介1','景点详情1','开发时间1',1,'2022-05-11','2022-05-11 10:38:57',1),(32,'2022-05-11 02:38:57','景点名称2','景点分类2','upload/jingdianxinxi_jingdiantupian2.jpg','景点地址2','景点简介2','景点详情2','开发时间2',2,'2022-05-11','2022-05-11 10:44:34',3),(33,'2022-05-11 02:38:57','景点名称3','景点分类3','upload/jingdianxinxi_jingdiantupian3.jpg','景点地址3','景点简介3','景点详情3','开发时间3',3,'2022-05-11','2022-05-11 10:44:21',5),(34,'2022-05-11 02:38:57','景点名称4','景点分类4','upload/jingdianxinxi_jingdiantupian4.jpg','景点地址4','景点简介4','景点详情4','开发时间4',4,'2022-05-11','2022-05-11 10:38:57',4),(35,'2022-05-11 02:38:57','景点名称5','景点分类5','upload/jingdianxinxi_jingdiantupian5.jpg','景点地址5','景点简介5','景点详情5','开发时间5',5,'2022-05-11','2022-05-11 10:38:57',5),(36,'2022-05-11 02:38:57','景点名称6','景点分类6','upload/jingdianxinxi_jingdiantupian6.jpg','景点地址6','景点简介6','景点详情6','开发时间6',6,'2022-05-11','2022-05-11 10:38:57',6),(1652237431212,'2022-05-11 02:50:30','某某景点','AAA类','upload/1652237394149.jpeg','某某地点','这里输入景点的简介','<p>这里输入景点的详情，还可以适当的插入图片</p><p><img src=\"http://localhost:8080/ssm8o1q4/upload/1652237429188.jpg\"></p>','早上9点至下午5点',58,'2022-05-11',NULL,0);
/*!40000 ALTER TABLE `jingdianxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1652237515243 DEFAULT CHARSET=utf8 COMMENT='旅游资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (113,'2022-05-11 02:38:58','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(114,'2022-05-11 02:38:58','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(115,'2022-05-11 02:38:58','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(116,'2022-05-11 02:38:58','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(1652237515242,'2022-05-11 02:51:55','这里是发布旅游资讯的地方','资讯的简介','upload/1652237504839.jpg','<p>资讯的内容</p><p><img src=\"http://localhost:8080/ssm8o1q4/upload/1652237514214.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pingjiaxinxi`
--

DROP TABLE IF EXISTS `pingjiaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pingjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pintuanmingcheng` varchar(200) DEFAULT NULL COMMENT '拼团名称',
  `pintuantupian` varchar(200) DEFAULT NULL COMMENT '拼团图片',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `lvyoutianshu` varchar(200) DEFAULT NULL COMMENT '旅游天数',
  `faqizhanghao` varchar(200) DEFAULT NULL COMMENT '发起账号',
  `faqixingming` varchar(200) DEFAULT NULL COMMENT '发起姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `kaituanshijian` varchar(200) DEFAULT NULL COMMENT '开团时间',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652237302070 DEFAULT CHARSET=utf8 COMMENT='评价信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pingjiaxinxi`
--

LOCK TABLES `pingjiaxinxi` WRITE;
/*!40000 ALTER TABLE `pingjiaxinxi` DISABLE KEYS */;
INSERT INTO `pingjiaxinxi` VALUES (81,'2022-05-11 02:38:58','拼团名称1','upload/pingjiaxinxi_pintuantupian1.jpg',1,'旅游天数1','发起账号1','发起姓名1','联系手机1','账号1','姓名1','手机号码1','开团时间1','评价内容1','2022-05-11 10:38:58',1),(82,'2022-05-11 02:38:58','拼团名称2','upload/pingjiaxinxi_pintuantupian2.jpg',2,'旅游天数2','发起账号2','发起姓名2','联系手机2','账号2','姓名2','手机号码2','开团时间2','评价内容2','2022-05-11 10:38:58',2),(83,'2022-05-11 02:38:58','拼团名称3','upload/pingjiaxinxi_pintuantupian3.jpg',3,'旅游天数3','发起账号3','发起姓名3','联系手机3','账号3','姓名3','手机号码3','开团时间3','评价内容3','2022-05-11 10:38:58',3),(84,'2022-05-11 02:38:58','拼团名称4','upload/pingjiaxinxi_pintuantupian4.jpg',4,'旅游天数4','发起账号4','发起姓名4','联系手机4','账号4','姓名4','手机号码4','开团时间4','评价内容4','2022-05-11 10:38:58',4),(85,'2022-05-11 02:38:58','拼团名称5','upload/pingjiaxinxi_pintuantupian5.jpg',5,'旅游天数5','发起账号5','发起姓名5','联系手机5','账号5','姓名5','手机号码5','开团时间5','评价内容5','2022-05-11 10:38:58',5),(86,'2022-05-11 02:38:58','拼团名称6','upload/pingjiaxinxi_pintuantupian6.jpg',6,'旅游天数6','发起账号6','发起姓名6','联系手机6','账号6','姓名6','手机号码6','开团时间6','评价内容6','2022-05-11 10:38:58',6),(1652237302069,'2022-05-11 02:48:21','某某拼团','upload/1652237125955.jpg',116,'三天两夜','22','李四','13333333333','11','张三','13111111111','2022-05-11 10:48:17','这里是评价的地方','2022-05-11 10:48:48',1652236870653);
/*!40000 ALTER TABLE `pingjiaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pintuandingdan`
--

DROP TABLE IF EXISTS `pintuandingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pintuandingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pintuanmingcheng` varchar(200) DEFAULT NULL COMMENT '拼团名称',
  `pintuantupian` varchar(200) DEFAULT NULL COMMENT '拼团图片',
  `kaituanrenshu` int(11) DEFAULT NULL COMMENT '开团人数',
  `pintuanrenshu` int(11) NOT NULL COMMENT '拼团人数',
  `pintuanjiage` int(11) DEFAULT NULL COMMENT '拼团价格',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `lvyoutianshu` varchar(200) DEFAULT NULL COMMENT '旅游天数',
  `faqizhanghao` varchar(200) DEFAULT NULL COMMENT '发起账号',
  `faqixingming` varchar(200) DEFAULT NULL COMMENT '发起姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `cantuanbeizhu` varchar(200) DEFAULT NULL COMMENT '参团备注',
  `cantuanshijian` varchar(200) DEFAULT NULL COMMENT '参团时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `cheliangzhuangtai` varchar(200) NOT NULL COMMENT '车辆状态',
  `kaituanshijian` datetime DEFAULT NULL COMMENT '开团时间',
  `kaituanbeizhu` longtext COMMENT '开团备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652237272573 DEFAULT CHARSET=utf8 COMMENT='拼团订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pintuandingdan`
--

LOCK TABLES `pintuandingdan` WRITE;
/*!40000 ALTER TABLE `pintuandingdan` DISABLE KEYS */;
INSERT INTO `pintuandingdan` VALUES (71,'2022-05-11 02:38:58','拼团名称1','upload/pintuandingdan_pintuantupian1.jpg',1,1,1,1,'旅游天数1','发起账号1','发起姓名1','联系手机1','参团备注1','参团时间1','账号1','姓名1','手机号码1','车辆状态1','2022-05-11 10:38:58','开团备注1','未支付',1),(72,'2022-05-11 02:38:58','拼团名称2','upload/pintuandingdan_pintuantupian2.jpg',2,2,2,2,'旅游天数2','发起账号2','发起姓名2','联系手机2','参团备注2','参团时间2','账号2','姓名2','手机号码2','车辆状态2','2022-05-11 10:38:58','开团备注2','未支付',2),(73,'2022-05-11 02:38:58','拼团名称3','upload/pintuandingdan_pintuantupian3.jpg',3,3,3,3,'旅游天数3','发起账号3','发起姓名3','联系手机3','参团备注3','参团时间3','账号3','姓名3','手机号码3','车辆状态3','2022-05-11 10:38:58','开团备注3','未支付',3),(74,'2022-05-11 02:38:58','拼团名称4','upload/pintuandingdan_pintuantupian4.jpg',4,4,4,4,'旅游天数4','发起账号4','发起姓名4','联系手机4','参团备注4','参团时间4','账号4','姓名4','手机号码4','车辆状态4','2022-05-11 10:38:58','开团备注4','未支付',4),(75,'2022-05-11 02:38:58','拼团名称5','upload/pintuandingdan_pintuantupian5.jpg',5,5,5,5,'旅游天数5','发起账号5','发起姓名5','联系手机5','参团备注5','参团时间5','账号5','姓名5','手机号码5','车辆状态5','2022-05-11 10:38:58','开团备注5','未支付',5),(76,'2022-05-11 02:38:58','拼团名称6','upload/pintuandingdan_pintuantupian6.jpg',6,6,6,6,'旅游天数6','发起账号6','发起姓名6','联系手机6','参团备注6','参团时间6','账号6','姓名6','手机号码6','车辆状态6','2022-05-11 10:38:58','开团备注6','未支付',6),(1652237272572,'2022-05-11 02:47:52','某某拼团','upload/1652237125955.jpg',3,2,58,116,'三天两夜','22','李四','13333333333','这里是用户参团的地方','2022-05-11 10:47:23','11','张三','13111111111','有车','2022-05-11 10:48:17','这里是开团的地方，','已支付',1652236957808);
/*!40000 ALTER TABLE `pintuandingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pintuanlvyou`
--

DROP TABLE IF EXISTS `pintuanlvyou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pintuanlvyou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pintuanmingcheng` varchar(200) NOT NULL COMMENT '拼团名称',
  `pintuantupian` varchar(200) DEFAULT NULL COMMENT '拼团图片',
  `kaituanrenshu` int(11) NOT NULL COMMENT '开团人数',
  `pintuanrenshu` int(11) NOT NULL COMMENT '拼团人数',
  `pintuanjiage` varchar(200) DEFAULT NULL COMMENT '拼团价格',
  `lvyoutianshu` varchar(200) DEFAULT NULL COMMENT '旅游天数',
  `lvyoujingdian` longtext COMMENT '旅游景点',
  `xiangqing` longtext COMMENT '详情',
  `faqizhanghao` varchar(200) DEFAULT NULL COMMENT '发起账号',
  `faqixingming` varchar(200) DEFAULT NULL COMMENT '发起姓名',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652237149935 DEFAULT CHARSET=utf8 COMMENT='拼团旅游';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pintuanlvyou`
--

LOCK TABLES `pintuanlvyou` WRITE;
/*!40000 ALTER TABLE `pintuanlvyou` DISABLE KEYS */;
INSERT INTO `pintuanlvyou` VALUES (51,'2022-05-11 02:38:57','拼团名称1','upload/pintuanlvyou_pintuantupian1.jpg',1,1,'拼团价格1','旅游天数1','旅游景点1','详情1','发起账号1','发起姓名1','联系手机1',1),(52,'2022-05-11 02:38:57','拼团名称2','upload/pintuanlvyou_pintuantupian2.jpg',2,2,'拼团价格2','旅游天数2','旅游景点2','详情2','发起账号2','发起姓名2','联系手机2',2),(53,'2022-05-11 02:38:57','拼团名称3','upload/pintuanlvyou_pintuantupian3.jpg',3,3,'拼团价格3','旅游天数3','旅游景点3','详情3','发起账号3','发起姓名3','联系手机3',3),(54,'2022-05-11 02:38:57','拼团名称4','upload/pintuanlvyou_pintuantupian4.jpg',4,4,'拼团价格4','旅游天数4','旅游景点4','详情4','发起账号4','发起姓名4','联系手机4',4),(55,'2022-05-11 02:38:57','拼团名称5','upload/pintuanlvyou_pintuantupian5.jpg',5,5,'拼团价格5','旅游天数5','旅游景点5','详情5','发起账号5','发起姓名5','联系手机5',5),(56,'2022-05-11 02:38:57','拼团名称6','upload/pintuanlvyou_pintuantupian6.jpg',6,6,'拼团价格6','旅游天数6','旅游景点6','详情6','发起账号6','发起姓名6','联系手机6',6),(1652237149934,'2022-05-11 02:45:49','某某拼团','upload/1652237125955.jpg',3,3,'58','三天两夜','这里输入途径的景点信息','这里输入拼团的具体详情','22','李四','13333333333',1652236957808);
/*!40000 ALTER TABLE `pintuanlvyou` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1652237193574 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1652236969881,'2022-05-11 02:42:49',1652236957808,33,'jingdianxinxi','景点名称3','upload/jingdianxinxi_jingdiantupian3.jpg','1',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1652236957808,'22','faqiren','发起人','grqffmyy7h0ma7jgfrhkab66ga4smsyl','2022-05-11 02:42:44','2022-05-11 03:48:32'),(2,1652236870653,'11','yonghu','用户','eezn70f06um328oa59sofidgyn08415r','2022-05-11 02:46:20','2022-05-11 03:48:02'),(3,1,'abo','users','管理员','pqbghr937n1tt7g8arl4vcz7h0l9hdch','2022-05-11 02:49:15','2022-05-11 03:49:15');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-05-11 02:38:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1652236870654 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-05-11 02:38:57','账号1','123456','姓名1','男','773890001@qq.com','13823888881','upload/yonghu_xiangpian1.jpg'),(12,'2022-05-11 02:38:57','账号2','123456','姓名2','男','773890002@qq.com','13823888882','upload/yonghu_xiangpian2.jpg'),(13,'2022-05-11 02:38:57','账号3','123456','姓名3','男','773890003@qq.com','13823888883','upload/yonghu_xiangpian3.jpg'),(14,'2022-05-11 02:38:57','账号4','123456','姓名4','男','773890004@qq.com','13823888884','upload/yonghu_xiangpian4.jpg'),(15,'2022-05-11 02:38:57','账号5','123456','姓名5','男','773890005@qq.com','13823888885','upload/yonghu_xiangpian5.jpg'),(16,'2022-05-11 02:38:57','账号6','123456','姓名6','男','773890006@qq.com','13823888886','upload/yonghu_xiangpian6.jpg'),(1652236870653,'2022-05-11 02:41:10','11','11','张三','男','131@163.com','13111111111','upload/1652237204884.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-12 15:09:08
