/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t366`;
CREATE DATABASE IF NOT EXISTS `t366` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t366`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '提问学员',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态',
  `chat_types` int DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='咨询信息';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `yonghu_id`, `chat_issue`, `issue_time`, `chat_reply`, `reply_time`, `zhuangtai_types`, `chat_types`, `insert_time`) VALUES
	(1, 1, '咨询问题', '2023-04-18 07:17:57', NULL, NULL, 2, 1, '2023-04-18 07:17:57'),
	(2, 1, NULL, NULL, '为回复的信息可以回复 ，回复后就看不到了', '2023-04-18 07:20:06', NULL, 2, '2023-04-18 07:20:07');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(3, 'single_seach_types', '单页数据类型', 1, '机构介绍', NULL, NULL, '2023-04-18 05:54:42'),
	(4, 'chat_types', '数据类型', 1, '问题', NULL, NULL, '2023-04-18 05:54:42'),
	(5, 'chat_types', '数据类型', 2, '回复', NULL, NULL, '2023-04-18 05:54:42'),
	(6, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2023-04-18 05:54:42'),
	(7, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2023-04-18 05:54:42'),
	(8, 'kecheng_types', '课程类型', 1, '课程类型1', NULL, NULL, '2023-04-18 05:54:42'),
	(9, 'kecheng_types', '课程类型', 2, '课程类型2', NULL, NULL, '2023-04-18 05:54:42'),
	(10, 'kecheng_types', '课程类型', 3, '课程类型3', NULL, NULL, '2023-04-18 05:54:42'),
	(11, 'kecheng_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-18 05:54:42'),
	(12, 'kecheng_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-18 05:54:42'),
	(13, 'kecheng_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-18 05:54:42'),
	(14, 'kecheng_yuyue_yesno_types', '选课状态', 1, '待审核', NULL, NULL, '2023-04-18 05:54:42'),
	(15, 'kecheng_yuyue_yesno_types', '选课状态', 2, '同意', NULL, NULL, '2023-04-18 05:54:42'),
	(16, 'kecheng_yuyue_yesno_types', '选课状态', 3, '拒绝', NULL, NULL, '2023-04-18 05:54:42'),
	(17, 'huodong_types', '活动类型', 1, '活动类型1', NULL, NULL, '2023-04-18 05:54:42'),
	(18, 'huodong_types', '活动类型', 2, '活动类型2', NULL, NULL, '2023-04-18 05:54:42'),
	(19, 'huodong_types', '活动类型', 3, '活动类型3', NULL, NULL, '2023-04-18 05:54:42'),
	(20, 'huodong_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-18 05:54:42'),
	(21, 'huodong_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-18 05:54:42'),
	(22, 'huodong_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-18 05:54:42'),
	(23, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-18 05:54:43'),
	(24, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-18 05:54:43'),
	(25, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-04-18 05:54:43'),
	(26, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-18 05:54:43'),
	(27, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-18 05:54:43'),
	(28, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-04-18 05:54:43'),
	(29, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-04-18 05:54:43');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `yonghu_id` int DEFAULT NULL COMMENT '学员',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `jiaoshi_id`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', NULL, 3, NULL, '发布内容1', 161, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(2, '帖子标题2', NULL, 3, NULL, '发布内容2', 45, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(3, '帖子标题3', NULL, 3, NULL, '发布内容3', 143, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(4, '帖子标题4', NULL, 2, NULL, '发布内容4', 116, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(5, '帖子标题5', NULL, 3, NULL, '发布内容5', 476, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(6, '帖子标题6', NULL, 1, NULL, '发布内容6', 136, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(7, '帖子标题7', NULL, 1, NULL, '发布内容7', 278, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(8, '帖子标题8', NULL, 1, NULL, '发布内容8', 424, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(9, '帖子标题9', NULL, 3, NULL, '发布内容9', 216, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(10, '帖子标题10', NULL, 3, NULL, '发布内容10', 2, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(11, '帖子标题11', NULL, 1, NULL, '发布内容11', 444, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(12, '帖子标题12', NULL, 3, NULL, '发布内容12', 443, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(13, '帖子标题13', NULL, 1, NULL, '发布内容13', 424, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(14, '帖子标题14', NULL, 3, NULL, '发布内容14', 375, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(16, NULL, NULL, 1, NULL, '111111111111', 14, 2, '2023-04-18 07:17:46', NULL, '2023-04-18 07:17:46'),
	(17, '123', NULL, 1, NULL, '<p>123</p>', NULL, 1, '2023-04-18 07:18:05', NULL, '2023-04-18 07:18:05'),
	(18, NULL, 1, NULL, NULL, '123', 17, 2, '2023-04-18 07:19:00', NULL, '2023-04-18 07:19:00'),
	(19, NULL, NULL, NULL, 1, '2222222222', 17, 2, '2023-04-18 07:20:16', NULL, '2023-04-18 07:20:16'),
	(20, NULL, NULL, 1, NULL, '33455', 17, 2, '2024-08-12 06:20:09', NULL, '2024-08-12 06:20:09');

DROP TABLE IF EXISTS `huodong`;
CREATE TABLE IF NOT EXISTS `huodong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '活动标题  Search111 ',
  `huodong_types` int DEFAULT NULL COMMENT '活动类型  Search111 ',
  `huodong_photo` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `huodong_clicknum` int DEFAULT NULL COMMENT '点击量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `huodong_content` longtext COMMENT '活动详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='活动';

DELETE FROM `huodong`;
INSERT INTO `huodong` (`id`, `huodong_name`, `huodong_types`, `huodong_photo`, `zan_number`, `cai_number`, `huodong_clicknum`, `insert_time`, `huodong_content`, `create_time`) VALUES
	(1, '活动标题1', 1, 'upload/huodong1.jpg', 392, 71, 196, '2023-04-18 05:54:50', '活动详情1', '2023-04-18 05:54:50'),
	(2, '活动标题2', 3, 'upload/huodong2.jpg', 5, 63, 35, '2023-04-18 05:54:50', '活动详情2', '2023-04-18 05:54:50'),
	(3, '活动标题3', 1, 'upload/huodong3.jpg', 238, 88, 449, '2023-04-18 05:54:50', '活动详情3', '2023-04-18 05:54:50'),
	(4, '活动标题4', 2, 'upload/huodong4.jpg', 482, 460, 498, '2023-04-18 05:54:50', '活动详情4', '2023-04-18 05:54:50'),
	(5, '活动标题5', 2, 'upload/huodong5.jpg', 178, 181, 226, '2023-04-18 05:54:50', '活动详情5', '2023-04-18 05:54:50'),
	(6, '活动标题6', 1, 'upload/huodong6.jpg', 247, 42, 293, '2023-04-18 05:54:50', '活动详情6', '2023-04-18 05:54:50'),
	(7, '活动标题7', 2, 'upload/huodong7.jpg', 19, 493, 95, '2023-04-18 05:54:50', '活动详情7', '2023-04-18 05:54:50'),
	(8, '活动标题8', 1, 'upload/huodong8.jpg', 150, 99, 288, '2023-04-18 05:54:50', '活动详情8', '2023-04-18 05:54:50'),
	(9, '活动标题9', 2, 'upload/huodong9.jpg', 159, 42, 488, '2023-04-18 05:54:50', '活动详情9', '2023-04-18 05:54:50'),
	(10, '活动标题10', 1, 'upload/huodong10.jpg', 94, 463, 385, '2023-04-18 05:54:50', '活动详情10', '2023-04-18 05:54:50'),
	(11, '活动标题11', 1, 'upload/huodong11.jpg', 416, 326, 202, '2023-04-18 05:54:50', '活动详情11', '2023-04-18 05:54:50'),
	(12, '活动标题12', 1, 'upload/huodong12.jpg', 413, 43, 421, '2023-04-18 05:54:50', '活动详情12', '2023-04-18 05:54:50'),
	(13, '活动标题13', 1, 'upload/huodong13.jpg', 389, 457, 407, '2023-04-18 05:54:50', '活动详情13', '2023-04-18 05:54:50'),
	(14, '活动标题14', 3, 'upload/huodong14.jpg', 298, 103, 117, '2023-04-18 05:54:50', '活动详情14', '2023-04-18 05:54:50');

DROP TABLE IF EXISTS `huodong_collection`;
CREATE TABLE IF NOT EXISTS `huodong_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_id` int DEFAULT NULL COMMENT '活动',
  `yonghu_id` int DEFAULT NULL COMMENT '学员',
  `huodong_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='活动收藏';

DELETE FROM `huodong_collection`;
INSERT INTO `huodong_collection` (`id`, `huodong_id`, `yonghu_id`, `huodong_collection_types`, `insert_time`, `create_time`) VALUES
	(2, 2, 2, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(5, 5, 1, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(6, 6, 3, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(7, 7, 1, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(8, 8, 1, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(9, 9, 3, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(10, 10, 2, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(11, 11, 1, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(12, 12, 2, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(13, 13, 2, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(14, 14, 2, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(15, 3, 1, 2, '2023-04-18 07:16:55', '2023-04-18 07:16:55');

DROP TABLE IF EXISTS `huodong_liuyan`;
CREATE TABLE IF NOT EXISTS `huodong_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_id` int DEFAULT NULL COMMENT '活动',
  `yonghu_id` int DEFAULT NULL COMMENT '学员',
  `huodong_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='活动留言';

DELETE FROM `huodong_liuyan`;
INSERT INTO `huodong_liuyan` (`id`, `huodong_id`, `yonghu_id`, `huodong_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2023-04-18 05:54:50', '回复信息1', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(2, 2, 2, '留言内容2', '2023-04-18 05:54:50', '回复信息2', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(3, 3, 3, '留言内容3', '2023-04-18 05:54:50', '回复信息3', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(4, 4, 2, '留言内容4', '2023-04-18 05:54:50', '回复信息4', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(5, 5, 3, '留言内容5', '2023-04-18 05:54:50', '回复信息5', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(6, 6, 3, '留言内容6', '2023-04-18 05:54:50', '回复信息6', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(7, 7, 3, '留言内容7', '2023-04-18 05:54:50', '回复信息7', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(8, 8, 3, '留言内容8', '2023-04-18 05:54:50', '回复信息8', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(9, 9, 3, '留言内容9', '2023-04-18 05:54:50', '回复信息9', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(10, 10, 2, '留言内容10', '2023-04-18 05:54:50', '回复信息10', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(11, 11, 1, '留言内容11', '2023-04-18 05:54:50', '回复信息11', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(12, 12, 2, '留言内容12', '2023-04-18 05:54:50', '回复信息12', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(13, 13, 2, '留言内容13', '2023-04-18 05:54:50', '回复信息13', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(15, 3, 1, '123', '2023-04-18 07:16:57', '123123', '2023-04-18 07:19:25', '2023-04-18 07:16:57');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师名称 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '教师身份证号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  `jiaoshi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `username`, `password`, `jiaoshi_name`, `jiaoshi_phone`, `jiaoshi_id_number`, `jiaoshi_photo`, `sex_types`, `jiaoshi_email`, `jiaoshi_delete`, `insert_time`, `create_time`) VALUES
	(1, '教师1', '123456', '教师名称1', '17703786901', '410224199010102001', 'upload/jiaoshi1.jpg', 1, '1@qq.com', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(2, '教师2', '123456', '教师名称2', '17703786902', '410224199010102002', 'upload/jiaoshi2.jpg', 2, '2@qq.com', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(3, '教师3', '123456', '教师名称3', '17703786903', '410224199010102003', 'upload/jiaoshi3.jpg', 2, '3@qq.com', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50');

DROP TABLE IF EXISTS `kecheng`;
CREATE TABLE IF NOT EXISTS `kecheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程标题  Search111 ',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '展示照片',
  `kecheng_types` int DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_da` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `kecheng_file` varchar(200) DEFAULT NULL COMMENT '课表信息',
  `kecheng_clicknum` int DEFAULT NULL COMMENT '热度',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `kecheng_content` longtext COMMENT '课程详情',
  `kecheng_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='课程';

DELETE FROM `kecheng`;
INSERT INTO `kecheng` (`id`, `kecheng_name`, `kecheng_photo`, `kecheng_types`, `kecheng_da`, `kecheng_file`, `kecheng_clicknum`, `jiaoshi_id`, `zan_number`, `cai_number`, `kecheng_content`, `kecheng_delete`, `insert_time`, `create_time`) VALUES
	(1, '课程标题1', 'upload/kecheng1.jpg', 3, '上课时间1', 'upload/file.rar', 172, 1, 71, 389, '课程详情1', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(2, '课程标题2', 'upload/kecheng2.jpg', 2, '上课时间2', 'upload/file.rar', 203, 3, 461, 358, '课程详情2', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(3, '课程标题3', 'upload/kecheng3.jpg', 2, '上课时间3', 'upload/file.rar', 132, 2, 295, 13, '课程详情3', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(4, '课程标题4', 'upload/kecheng4.jpg', 3, '上课时间4', 'upload/file.rar', 99, 3, 394, 444, '课程详情4', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(5, '课程标题5', 'upload/kecheng5.jpg', 2, '上课时间5', 'upload/file.rar', 350, 2, 95, 496, '课程详情5', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(6, '课程标题6', 'upload/kecheng6.jpg', 2, '上课时间6', 'upload/file.rar', 287, 3, 356, 234, '课程详情6', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(7, '课程标题7', 'upload/kecheng7.jpg', 1, '上课时间7', 'upload/file.rar', 278, 2, 51, 113, '课程详情7', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(8, '课程标题8', 'upload/kecheng8.jpg', 2, '上课时间8', 'upload/file.rar', 70, 1, 130, 18, '课程详情8', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(9, '课程标题9', 'upload/kecheng9.jpg', 1, '上课时间9', 'upload/file.rar', 250, 1, 210, 305, '课程详情9', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(10, '课程标题10', 'upload/kecheng10.jpg', 2, '上课时间10', 'upload/file.rar', 253, 3, 403, 207, '课程详情10', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(11, '课程标题11', 'upload/kecheng11.jpg', 1, '上课时间11', 'upload/file.rar', 170, 1, 370, 6, '课程详情11', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(12, '课程标题12', 'upload/kecheng12.jpg', 2, '上课时间12', 'upload/file.rar', 96, 1, 70, 123, '课程详情12', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(13, '课程标题13', 'upload/kecheng13.jpg', 2, '上课时间13', 'upload/file.rar', 176, 1, 176, 346, '课程详情13', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(14, '课程标题14', 'upload/kecheng14.jpg', 3, '上课时间14', 'upload/file.rar', 354, 2, 377, 207, '课程详情14', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50');

DROP TABLE IF EXISTS `kecheng_collection`;
CREATE TABLE IF NOT EXISTS `kecheng_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int DEFAULT NULL COMMENT '课程',
  `yonghu_id` int DEFAULT NULL COMMENT '学员',
  `kecheng_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='课程收藏';

DELETE FROM `kecheng_collection`;
INSERT INTO `kecheng_collection` (`id`, `kecheng_id`, `yonghu_id`, `kecheng_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(5, 5, 2, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(6, 6, 1, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(7, 7, 1, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(8, 8, 1, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(9, 9, 3, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(10, 10, 2, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(11, 11, 3, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(12, 12, 3, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(14, 14, 3, 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(15, 14, 1, 2, '2023-04-18 07:17:15', '2023-04-18 07:17:15'),
	(16, 5, 1, 1, '2024-08-12 06:20:22', '2024-08-12 06:20:22');

DROP TABLE IF EXISTS `kecheng_liuyan`;
CREATE TABLE IF NOT EXISTS `kecheng_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int DEFAULT NULL COMMENT '课程',
  `yonghu_id` int DEFAULT NULL COMMENT '学员',
  `kecheng_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='课程留言';

DELETE FROM `kecheng_liuyan`;
INSERT INTO `kecheng_liuyan` (`id`, `kecheng_id`, `yonghu_id`, `kecheng_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2023-04-18 05:54:50', '回复信息1', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(2, 2, 2, '留言内容2', '2023-04-18 05:54:50', '回复信息2', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(3, 3, 2, '留言内容3', '2023-04-18 05:54:50', '回复信息3', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(4, 4, 1, '留言内容4', '2023-04-18 05:54:50', '回复信息4', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(5, 5, 2, '留言内容5', '2023-04-18 05:54:50', '回复信息5', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(6, 6, 2, '留言内容6', '2023-04-18 05:54:50', '回复信息6', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(7, 7, 1, '留言内容7', '2023-04-18 05:54:50', '回复信息7', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(8, 8, 1, '留言内容8', '2023-04-18 05:54:50', '回复信息8', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(9, 9, 2, '留言内容9', '2023-04-18 05:54:50', '回复信息9', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(10, 10, 2, '留言内容10', '2023-04-18 05:54:50', '回复信息10', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(11, 11, 3, '留言内容11', '2023-04-18 05:54:50', '回复信息11', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(12, 12, 1, '留言内容12', '2023-04-18 05:54:50', '回复信息12', '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(13, 13, 2, '留言内容13', '2023-04-18 05:54:50', '回复信息13111111', '2023-04-18 07:18:25', '2023-04-18 05:54:50'),
	(14, 14, 2, '留言内容14', '2023-04-18 05:54:50', '回复信息14', '2023-04-18 05:54:50', '2023-04-18 05:54:50');

DROP TABLE IF EXISTS `kecheng_yuyue`;
CREATE TABLE IF NOT EXISTS `kecheng_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '选课编号 Search111 ',
  `kecheng_id` int DEFAULT NULL COMMENT '课程',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `kecheng_yuyue_text` longtext COMMENT '选课理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `kecheng_yuyue_yesno_types` int DEFAULT NULL COMMENT '选课状态 Search111 ',
  `kecheng_yuyue_yesno_text` longtext COMMENT '审核回复',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='选课信息';

DELETE FROM `kecheng_yuyue`;
INSERT INTO `kecheng_yuyue` (`id`, `kecheng_yuyue_uuid_number`, `kecheng_id`, `yonghu_id`, `kecheng_yuyue_text`, `insert_time`, `kecheng_yuyue_yesno_types`, `kecheng_yuyue_yesno_text`, `create_time`) VALUES
	(2, '1681797290560', 2, 3, '选课理由2', '2023-04-18 05:54:50', 1, NULL, '2023-04-18 05:54:50'),
	(4, '1681797290632', 4, 2, '选课理由4', '2023-04-18 05:54:50', 1, NULL, '2023-04-18 05:54:50'),
	(6, '1681797290560', 6, 3, '选课理由6', '2023-04-18 05:54:50', 1, NULL, '2023-04-18 05:54:50'),
	(7, '1681797290648', 7, 2, '选课理由7', '2023-04-18 05:54:50', 1, NULL, '2023-04-18 05:54:50'),
	(9, '1681797290625', 9, 3, '选课理由9', '2023-04-18 05:54:50', 1, NULL, '2023-04-18 05:54:50'),
	(11, '1681797290642', 11, 2, '选课理由11', '2023-04-18 05:54:50', 3, '人数够了', '2023-04-18 05:54:50'),
	(12, '1681797290646', 12, 2, '选课理由12', '2023-04-18 05:54:50', 2, '112312', '2023-04-18 05:54:50'),
	(14, '1681797290607', 14, 3, '选课理由14', '2023-04-18 05:54:50', 1, NULL, '2023-04-18 05:54:50'),
	(15, '1681799094789', 5, 1, '12312', '2023-04-18 06:24:55', 1, NULL, '2023-04-18 06:24:55'),
	(16, '1681802238837', 14, 1, '1111111111111111111', '2023-04-18 07:17:19', 2, '11111111', '2023-04-18 07:17:19');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告通知';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'upload/news1.jpg', '2023-04-18 05:54:50', '公告详情1', '2023-04-18 05:54:50'),
	(2, '公告标题2', 1, 'upload/news2.jpg', '2023-04-18 05:54:50', '公告详情2', '2023-04-18 05:54:50'),
	(3, '公告标题3', 3, 'upload/news3.jpg', '2023-04-18 05:54:50', '公告详情3', '2023-04-18 05:54:50'),
	(4, '公告标题4', 1, 'upload/news4.jpg', '2023-04-18 05:54:50', '公告详情4', '2023-04-18 05:54:50'),
	(5, '公告标题5', 1, 'upload/news5.jpg', '2023-04-18 05:54:50', '公告详情5', '2023-04-18 05:54:50'),
	(6, '公告标题6', 2, 'upload/news6.jpg', '2023-04-18 05:54:50', '公告详情6', '2023-04-18 05:54:50'),
	(7, '公告标题7', 2, 'upload/news7.jpg', '2023-04-18 05:54:50', '公告详情7', '2023-04-18 05:54:50'),
	(8, '公告标题8', 2, 'upload/news8.jpg', '2023-04-18 05:54:50', '公告详情8', '2023-04-18 05:54:50'),
	(9, '公告标题9', 1, 'upload/news9.jpg', '2023-04-18 05:54:50', '公告详情9', '2023-04-18 05:54:50'),
	(10, '公告标题10', 3, 'upload/news10.jpg', '2023-04-18 05:54:50', '公告详情10', '2023-04-18 05:54:50'),
	(11, '公告标题11', 1, 'upload/news11.jpg', '2023-04-18 05:54:50', '公告详情11', '2023-04-18 05:54:50'),
	(12, '公告标题12', 3, 'upload/news12.jpg', '2023-04-18 05:54:50', '公告详情12', '2023-04-18 05:54:50'),
	(13, '公告标题13', 3, 'upload/news13.jpg', '2023-04-18 05:54:50', '公告详情13', '2023-04-18 05:54:50'),
	(14, '公告标题14', 1, 'upload/news14.jpg', '2023-04-18 05:54:50', '公告详情14', '2023-04-18 05:54:50');

DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `single_seach_content` longtext COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='单页数据';

DELETE FROM `single_seach`;
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_photo`, `single_seach_content`, `create_time`) VALUES
	(1, '机构介绍', 1, '/upload/1681798586197.jpeg', '<p>机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍</p><p><img src="upload/1681798598219.jpeg"></p><p>机构介绍机构介绍机构介绍</p><p>机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍机构介绍</p>', '2023-04-18 06:16:49');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '学员', 'ohffe8rqujp0xnoqybe75gvp2gr4rpv5', '2023-04-18 06:00:43', '2024-08-12 07:19:54'),
	(2, 1, 'admin', 'users', '管理员', 'rkg8hgfzhuvu8btl49nu593hs04x9ngb', '2023-04-18 06:13:04', '2024-08-12 07:18:11'),
	(3, 1, 'a1', 'jiaoshi', '教师', '4lgkfix9cpi2clu89gdl6t8kz4yplj7t', '2023-04-18 07:15:28', '2024-08-12 07:19:40');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-18 05:54:42');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学员名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学员手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学员身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学员头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '学员邮箱',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学员';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '学员1', '123456', '学员名称1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(2, '学员2', '123456', '学员名称2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50'),
	(3, '学员3', '123456', '学员名称3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 1, '2023-04-18 05:54:50', '2023-04-18 05:54:50');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
