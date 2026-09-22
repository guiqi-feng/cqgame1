-- MySQL dump 10.13  Distrib 5.7.44, for linux-glibc2.12 (x86_64)
--
-- Host: localhost    Database: database
-- ------------------------------------------------------
-- Server version	5.7.44-log

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
-- Table structure for table `game_account_data`
--

DROP TABLE IF EXISTS `game_account_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_account_data` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `account_account` varchar(140) NOT NULL DEFAULT '' COMMENT '邮箱账号',
  `account_password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `account_name` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `account_number` varchar(140) NOT NULL DEFAULT '' COMMENT '身份证号码',
  `account_question_a` varchar(140) NOT NULL DEFAULT '' COMMENT '问题一',
  `account_question_b` varchar(140) NOT NULL DEFAULT '' COMMENT '问题二',
  `account_answer_a` varchar(140) NOT NULL DEFAULT '' COMMENT '答案一',
  `account_answer_b` varchar(140) NOT NULL DEFAULT '' COMMENT '答案二',
  `account_status` tinyint(2) NOT NULL DEFAULT '2' COMMENT '状态 1：停用 2：启用',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_at` int(11) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`account_id`),
  KEY `status` (`account_status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='游戏账号数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_code_data`
--

DROP TABLE IF EXISTS `game_code_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_code_data` (
  `code_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `code_mail` varchar(140) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `code_content` varchar(20) NOT NULL DEFAULT '' COMMENT '验证码',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`code_id`),
  KEY `mail` (`code_mail`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='验证码数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_level_data`
--

DROP TABLE IF EXISTS `game_level_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_level_data` (
  `level_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `level_server_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏编号',
  `level_career` varchar(20) NOT NULL DEFAULT '' COMMENT '职业',
  `level_name` int(50) NOT NULL DEFAULT '0' COMMENT '等级名称',
  `level_min` int(11) NOT NULL DEFAULT '0' COMMENT '最小值',
  `level_max` int(11) NOT NULL DEFAULT '0' COMMENT '最大值',
  `level_life_value` int(11) NOT NULL DEFAULT '0' COMMENT '生命值',
  `level_magic_value` int(11) NOT NULL DEFAULT '0' COMMENT '魔法值',
  `level_status` tinyint(2) NOT NULL DEFAULT '2' COMMENT '状态 1：停用 2：启用',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`level_id`),
  KEY `status` (`level_status`),
  KEY `server_id` (`level_server_id`) USING BTREE,
  KEY `career` (`level_career`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='游戏等级数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_map_data`
--

DROP TABLE IF EXISTS `game_map_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_map_data` (
  `map_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `map_server_id` int(11) NOT NULL DEFAULT '0' COMMENT '服务器编号',
  `map_number` varchar(50) NOT NULL DEFAULT '' COMMENT '地图编号',
  `map_name` varchar(50) NOT NULL DEFAULT '' COMMENT '地图名称',
  `map_default_x` int(11) NOT NULL DEFAULT '0' COMMENT '默认X坐标',
  `map_default_y` int(11) NOT NULL DEFAULT '0' COMMENT '默认Y坐标',
  `map_status` tinyint(2) NOT NULL DEFAULT '2' COMMENT '状态 1：停用 2：启用',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`map_id`),
  KEY `status` (`map_status`) USING BTREE,
  KEY `server_id` (`map_server_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='游戏地图数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_player_data`
--

DROP TABLE IF EXISTS `game_player_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_player_data` (
  `player_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `player_account_id` int(11) NOT NULL DEFAULT '0' COMMENT '账号编号',
  `player_server_id` int(11) NOT NULL DEFAULT '0' COMMENT '服务器编号',
  `player_nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `player_career` varchar(20) NOT NULL DEFAULT '' COMMENT '职业',
  `player_gender` varchar(20) NOT NULL DEFAULT '' COMMENT '性别',
  `player_angle` int(11) NOT NULL DEFAULT '2' COMMENT '角度',
  `player_map` varchar(50) NOT NULL DEFAULT '' COMMENT '地图',
  `player_map_x` int(11) NOT NULL DEFAULT '0' COMMENT '地图X坐标',
  `player_map_y` int(11) NOT NULL DEFAULT '0' COMMENT '地图Y坐标',
  `player_asset_life` int(11) NOT NULL DEFAULT '0' COMMENT '生命值',
  `player_asset_magic` int(11) NOT NULL DEFAULT '0' COMMENT '魔法值',
  `player_asset_experience` int(11) NOT NULL DEFAULT '0' COMMENT '经验值',
  `player_body_clothe` varchar(50) NOT NULL DEFAULT '' COMMENT '衣服',
  `player_body_weapon` varchar(50) NOT NULL DEFAULT '' COMMENT '武器',
  `player_body_wing` varchar(50) NOT NULL DEFAULT '' COMMENT '翅膀',
  `player_group_id` int(11) NOT NULL DEFAULT '1' COMMENT '权限组',
  `player_status` tinyint(2) NOT NULL DEFAULT '2' COMMENT '状态 1：停用 2：启用',
  `player_client_id` int(11) NOT NULL DEFAULT '0' COMMENT '客户端连接ID',
  `player_balance` int(11) NOT NULL DEFAULT '0' COMMENT '余额',
  `player_integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`player_id`),
  KEY `status` (`player_status`) USING BTREE,
  KEY `account_id` (`player_account_id`) USING BTREE,
  KEY `server_id` (`player_server_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='游戏玩家数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_server_data`
--

DROP TABLE IF EXISTS `game_server_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_server_data` (
  `server_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `server_name` varchar(50) NOT NULL DEFAULT '' COMMENT '服务器名称',
  `server_status` tinyint(2) NOT NULL DEFAULT '2' COMMENT '状态 1：停用 2：启用',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_at` int(11) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`server_id`),
  KEY `status` (`server_status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='游戏服务器数据表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-22 17:40:13
