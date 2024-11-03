/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - lvyouwangzhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lvyouwangzhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lvyouwangzhan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (6,'轮播图1','http://localhost:8080/lvyouwangzhan/upload/1617443345333.jpg'),(7,'2222','http://localhost:8080/lvyouwangzhan/upload/1617443352899.jpg'),(8,'3333','http://localhost:8080/lvyouwangzhan/upload/1617455521487.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-03 13:42:10'),(2,'sex_types','性别',2,'女',NULL,'2021-04-03 13:42:10'),(3,'jingdian_types','景点类型名称',3,'公园',NULL,'2021-04-03 13:42:10'),(4,'jingdian_types','景点类型名称',2,'山脉',NULL,'2021-04-03 13:42:10'),(5,'jingdian_types','景点类型名称',1,'其他',NULL,'2021-04-03 13:42:10'),(6,'jingdian_dengji_types','景点等级名称',1,'五A景点',NULL,'2021-04-03 13:42:10'),(7,'jingdian_dengji_types','景点等级名称',2,'国家景点',NULL,'2021-04-03 13:42:10'),(8,'jingdian_dengji_types','景点等级名称',3,'市级景点',NULL,'2021-04-03 13:42:11'),(9,'jingdian_dengji_types','景点等级名称',4,'其他',NULL,'2021-04-03 13:42:11'),(10,'jiudian_types','酒店星级名称',1,'一星酒店',NULL,'2021-04-03 13:42:11'),(11,'jiudian_types','酒店星级名称',2,'二星酒店',NULL,'2021-04-03 13:42:11'),(12,'jiudian_types','酒店星级名称',3,'三星酒店',NULL,'2021-04-03 13:42:11'),(13,'jiudian_types','酒店星级名称',4,'四星酒店',NULL,'2021-04-03 13:42:11'),(14,'jiudian_types','酒店星级名称',5,'五星酒店',NULL,'2021-04-03 13:42:11'),(15,'feiji_types','飞机名称',1,'飞机一',NULL,'2021-04-03 13:42:11'),(16,'feiji_types','飞机名称',2,'飞机二',NULL,'2021-04-03 13:42:11'),(17,'feiji_types','飞机名称',3,'飞机三',NULL,'2021-04-03 13:42:11'),(18,'feijipiao_xinghao_types','飞机型号名称',1,'大型',NULL,'2021-04-03 13:42:11'),(19,'feijipiao_xinghao_types','飞机型号名称',2,'中型',NULL,'2021-04-03 13:42:11'),(20,'feijipiao_xinghao_types','飞机型号名称',3,'小型',NULL,'2021-04-03 13:42:11'),(21,'huochepiao_types','火车名称',1,'火车一',NULL,'2021-04-03 13:42:11'),(22,'huochepiao_types','火车名称',2,'火车二',NULL,'2021-04-03 13:42:11'),(23,'huochepiao_types','火车名称',3,'火车三',NULL,'2021-04-03 13:42:11'),(24,'huochepiao_xinghao_types','火车型号名称',1,'火车型号一',NULL,'2021-04-03 13:42:11'),(25,'huochepiao_xinghao_types','火车型号名称',2,'火车型号二',NULL,'2021-04-03 13:42:11'),(26,'huochepiao_xinghao_types','火车型号名称',3,'火车型号三',NULL,'2021-04-03 13:42:11'),(27,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-04-03 13:42:11'),(28,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-04-03 13:42:11'),(29,'feiji_types','飞机名称',4,'飞机4',NULL,'2021-04-03 17:49:42'),(30,'huochepiao_types','火车名称',9,'9999',NULL,'2021-04-03 21:22:43');

/*Table structure for table `feijipiao` */

DROP TABLE IF EXISTS `feijipiao`;

CREATE TABLE `feijipiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `feijipiao_name` varchar(200) DEFAULT NULL COMMENT '飞机班次   ',
  `feiji_types` int(11) DEFAULT NULL COMMENT '飞机   ',
  `feijipiao_xinghao_types` int(11) DEFAULT NULL COMMENT '飞机型号',
  `feijipiao_chufadi` varchar(200) DEFAULT NULL COMMENT '出发地   ',
  `feijipiao_mudidi` varchar(200) DEFAULT NULL COMMENT '目的地   ',
  `feijipiao_photo` varchar(200) DEFAULT NULL COMMENT '飞机照片',
  `feijipiao_time` varchar(200) DEFAULT NULL COMMENT '出发时间',
  `feijipiao_new_money` int(11) DEFAULT NULL COMMENT '票价',
  `feijipiao_content` text COMMENT '飞机票详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='飞机票';

/*Data for the table `feijipiao` */

insert  into `feijipiao`(`id`,`feijipiao_name`,`feiji_types`,`feijipiao_xinghao_types`,`feijipiao_chufadi`,`feijipiao_mudidi`,`feijipiao_photo`,`feijipiao_time`,`feijipiao_new_money`,`feijipiao_content`,`create_time`) values (1,'f11',3,2,'郑州','北京','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617452702244.webp','03:00:00',1000,'f11的飞机详情\r\n','2021-04-03 20:25:27'),(2,'f22',1,1,'郑州','杭州','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617452750634.webp','15:00:00',999,'晚上撒的详情<img src=\"http://localhost:8080/lvyouwangzhan/upload/1617452762779.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/lvyouwangzhan/upload/1617452762779.webp\"><img src=\"http://localhost:8080/lvyouwangzhan/upload/1617452767844.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/lvyouwangzhan/upload/1617452767844.webp\"><img src=\"http://localhost:8080/lvyouwangzhan/upload/1617452773286.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/lvyouwangzhan/upload/1617452773286.webp\">\r\n','2021-04-03 20:26:24'),(3,'f33',2,2,'郑州','洛阳','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617455562970.webp','21:00:00',999,'777\r\n','2021-04-03 21:12:52');

/*Table structure for table `feijipiao_collection` */

DROP TABLE IF EXISTS `feijipiao_collection`;

CREATE TABLE `feijipiao_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `feijipiao_id` int(11) DEFAULT NULL COMMENT '飞机票id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='飞机收藏';

/*Data for the table `feijipiao_collection` */

insert  into `feijipiao_collection`(`id`,`feijipiao_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,2,2,'2021-04-03 20:45:52','2021-04-03 20:45:52');

/*Table structure for table `feijipiao_order` */

DROP TABLE IF EXISTS `feijipiao_order`;

CREATE TABLE `feijipiao_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `feijipiao_id` int(11) DEFAULT NULL COMMENT '飞机票id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `feijipiao_fache_time` timestamp NULL DEFAULT NULL COMMENT '发车日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='飞机订单';

/*Data for the table `feijipiao_order` */

insert  into `feijipiao_order`(`id`,`feijipiao_id`,`yonghu_id`,`feijipiao_fache_time`,`insert_time`,`create_time`) values (1,2,2,'2021-04-07 00:00:00','2021-04-03 20:45:22','2021-04-03 20:45:22');

/*Table structure for table `huochepiao` */

DROP TABLE IF EXISTS `huochepiao`;

CREATE TABLE `huochepiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huochepiao_name` varchar(200) DEFAULT NULL COMMENT '火车班次   ',
  `huochepiao_types` int(11) DEFAULT NULL COMMENT '火车   ',
  `huochepiao_xinghao_types` int(11) DEFAULT NULL COMMENT '火车型号',
  `huochepiao_chufadi` varchar(200) DEFAULT NULL COMMENT '出发地   ',
  `huochepiao_mudidi` varchar(200) DEFAULT NULL COMMENT '目的地   ',
  `huochepiao_photo` varchar(200) DEFAULT NULL COMMENT '飞机照片',
  `huochepiao_time` varchar(200) DEFAULT NULL COMMENT '出发时间',
  `huochepiao_new_money` int(11) DEFAULT NULL COMMENT '票价',
  `huochepiao_content` text COMMENT '火车票详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='火车票';

/*Data for the table `huochepiao` */

insert  into `huochepiao`(`id`,`huochepiao_name`,`huochepiao_types`,`huochepiao_xinghao_types`,`huochepiao_chufadi`,`huochepiao_mudidi`,`huochepiao_photo`,`huochepiao_time`,`huochepiao_new_money`,`huochepiao_content`,`create_time`) values (1,'h11',1,2,'杭州','北京','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617452824305.jpg','21:00:00',322,'萨达萨达撒\r\n','2021-04-03 20:27:16'),(2,'h2233',3,3,'杭州','湖南','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617452852987.jpg','20:00:00',222,'硕大的撒撒旦法阿萨德\r\n','2021-04-03 20:27:41');

/*Table structure for table `huochepiao_collection` */

DROP TABLE IF EXISTS `huochepiao_collection`;

CREATE TABLE `huochepiao_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huochepiao_id` int(11) DEFAULT NULL COMMENT '火车票id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='火车票收藏';

/*Data for the table `huochepiao_collection` */

insert  into `huochepiao_collection`(`id`,`huochepiao_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,2,2,'2021-04-03 20:46:06','2021-04-03 20:46:06');

/*Table structure for table `huochepiao_order` */

DROP TABLE IF EXISTS `huochepiao_order`;

CREATE TABLE `huochepiao_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huochepiao_id` int(11) DEFAULT NULL COMMENT '火车票id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `huoche_fache_time` timestamp NULL DEFAULT NULL COMMENT '发车日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='火车票订单';

/*Data for the table `huochepiao_order` */

insert  into `huochepiao_order`(`id`,`huochepiao_id`,`yonghu_id`,`huoche_fache_time`,`insert_time`,`create_time`) values (1,1,1,'2021-04-23 00:00:00','2021-04-03 20:40:47','2021-04-03 20:40:47'),(2,1,1,'2021-04-20 00:00:00','2021-04-03 20:40:54','2021-04-03 20:40:54'),(3,2,2,'2021-04-28 00:00:00','2021-04-03 20:46:13','2021-04-03 20:46:13');

/*Table structure for table `jingdian` */

DROP TABLE IF EXISTS `jingdian`;

CREATE TABLE `jingdian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名   ',
  `jingdian_types` int(11) DEFAULT NULL COMMENT '景点类型   ',
  `jingdian_dengji_types` int(11) DEFAULT NULL COMMENT '景点等级   ',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点缩略图',
  `jingdian_tese` varchar(200) DEFAULT NULL COMMENT '景点特色   ',
  `jingdian_luxian` varchar(200) DEFAULT NULL COMMENT '景点路线',
  `jingdian_content` text COMMENT '景点详情',
  `jingdian_new_money` int(11) DEFAULT NULL COMMENT '门票参考价格',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='景点';

/*Data for the table `jingdian` */

insert  into `jingdian`(`id`,`jingdian_name`,`jingdian_types`,`jingdian_dengji_types`,`jingdian_photo`,`jingdian_tese`,`jingdian_luxian`,`jingdian_content`,`jingdian_new_money`,`create_time`) values (1,'景点1',2,3,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617452894891.jpg','景点1','湖-桥-小卖部-景点1-虎头铡','稳啊多撒萨达大萨达萨达as萨达萨达阿萨德<img src=\"http://localhost:8080/lvyouwangzhan/upload/1617452931596.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/lvyouwangzhan/upload/1617452931596.jpg\"><img src=\"http://localhost:8080/lvyouwangzhan/upload/1617452943549.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/lvyouwangzhan/upload/1617452943549.jpg\">\r\n',999,'2021-04-03 20:29:05'),(2,'景点2',2,2,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617452956838.jfif','景点1','湖-桥-小卖部-景点1-虎头铡1111','<img src=\"http://localhost:8080/lvyouwangzhan/upload/1617452967521.jfif\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/lvyouwangzhan/upload/1617452967521.jfif\">是大大说打算撒\r\n',777,'2021-04-03 20:29:35'),(3,'景点3',2,1,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617452996217.jpg','风光好','湖-桥-小卖部-22222景点1-虎头铡','萨达萨达撒方式阿萨德撒\r\n',11,'2021-04-03 20:30:12');

/*Table structure for table `jingdian_collection` */

DROP TABLE IF EXISTS `jingdian_collection`;

CREATE TABLE `jingdian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='景点收藏';

/*Data for the table `jingdian_collection` */

/*Table structure for table `jingdian_liuyan` */

DROP TABLE IF EXISTS `jingdian_liuyan`;

CREATE TABLE `jingdian_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jingdian_liuyan_content` text COMMENT '评价内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='景点评价';

/*Data for the table `jingdian_liuyan` */

insert  into `jingdian_liuyan`(`id`,`jingdian_id`,`yonghu_id`,`jingdian_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,3,2,'111',NULL,'2021-04-03 20:47:23','2021-04-03 20:47:23'),(2,3,2,'三十三\r\n','99999\r\n','2021-04-03 20:58:32','2021-04-03 20:58:32'),(3,3,2,'大萨达撒多\r\n','777\r\n','2021-04-03 20:58:47','2021-04-03 20:58:47');

/*Table structure for table `jiudian` */

DROP TABLE IF EXISTS `jiudian`;

CREATE TABLE `jiudian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_name` varchar(200) DEFAULT NULL COMMENT '酒店名称   ',
  `jiudian_types` int(11) DEFAULT NULL COMMENT '酒店星级   ',
  `jiudian_weizhi` varchar(200) DEFAULT NULL COMMENT '酒店位置   ',
  `jiudian_photo` varchar(200) DEFAULT NULL COMMENT '酒店缩略图',
  `jiudian_new_money` int(11) DEFAULT NULL COMMENT '单价',
  `jiudian_content` text COMMENT '酒店详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='酒店';

/*Data for the table `jiudian` */

insert  into `jiudian`(`id`,`jiudian_name`,`jiudian_types`,`jiudian_weizhi`,`jiudian_photo`,`jiudian_new_money`,`jiudian_content`,`create_time`) values (1,'酒店1',3,'酒店位置2','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617453027266.jpg',11,'打发撒发\r\n','2021-04-03 20:30:32');

/*Table structure for table `jiudian_collection` */

DROP TABLE IF EXISTS `jiudian_collection`;

CREATE TABLE `jiudian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '景点id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='酒店收藏';

/*Data for the table `jiudian_collection` */

insert  into `jiudian_collection`(`id`,`jiudian_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2021-04-03 20:41:53','2021-04-03 20:41:53'),(2,1,2,'2021-04-03 21:09:14','2021-04-03 21:09:14');

/*Table structure for table `jiudian_liuyan` */

DROP TABLE IF EXISTS `jiudian_liuyan`;

CREATE TABLE `jiudian_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '酒店id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jiudian_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='酒店留言';

/*Data for the table `jiudian_liuyan` */

insert  into `jiudian_liuyan`(`id`,`jiudian_id`,`yonghu_id`,`jiudian_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,1,2,'99\r\n','77\r\n','2021-04-03 21:09:19','2021-04-03 21:09:19');

/*Table structure for table `jiudian_order` */

DROP TABLE IF EXISTS `jiudian_order`;

CREATE TABLE `jiudian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '酒店id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jiudian_order_start_time` timestamp NULL DEFAULT NULL COMMENT '预定开始时间',
  `jiudian_order_end_time` timestamp NULL DEFAULT NULL COMMENT '预定结束时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='酒店订单';

/*Data for the table `jiudian_order` */

insert  into `jiudian_order`(`id`,`jiudian_id`,`yonghu_id`,`jiudian_order_start_time`,`jiudian_order_end_time`,`insert_time`,`create_time`) values (1,1,2,'2021-04-14 00:00:00','2021-04-30 00:00:00','2021-04-03 21:10:50','2021-04-03 21:10:50'),(2,1,2,'2021-04-14 00:00:00','2021-04-30 00:00:00','2021-04-03 21:10:51','2021-04-03 21:10:51');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称   ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型   ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻1',2,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617453040665.jfif','2021-04-03 20:30:44','萨达 萨达\r\n','2021-04-03 20:30:44'),(2,'新闻2',1,'http://localhost:8080/lvyouwangzhan/file/download?fileName=1617453054393.jpg','2021-04-03 20:30:57','萨达安慰萨达as打的\r\n','2021-04-03 20:30:57');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','8r4dg0qcq6u6juwc1bw00u7ssjsqn9zr','2021-04-03 16:42:37','2021-04-03 21:59:06'),(2,1,'a1','yonghu','用户','t0u0k1divfm75wrjjwzo26h9gpd4sspx','2021-04-03 20:31:41','2021-04-03 22:23:47'),(3,2,'a2','yonghu','用户','4skblijuthfn2kld66qmb9goft2ne5fs','2021-04-03 20:44:47','2021-04-03 21:44:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'a1','123456','张1',1,'410224199610232011','17703786969','http://localhost:8080/lvyouwangzhan/file/download?fileName=1617443312117.jpg','2021-04-03 17:48:33'),(2,'a2','123456','张2',2,'410224199610232012','17703786931','http://localhost:8080/lvyouwangzhan/upload/1617455429845.jpg',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
