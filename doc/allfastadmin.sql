-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-19 08:15:50
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allfastadmin`
--

-- --------------------------------------------------------

--
-- 表的结构 `cai_quan`
--

CREATE TABLE `cai_quan` (
  `id` int(11) NOT NULL COMMENT '主键',
  `qihao` varchar(255) NOT NULL DEFAULT '' COMMENT '期号',
  `wan` varchar(255) NOT NULL DEFAULT '' COMMENT '万位',
  `qian` varchar(255) NOT NULL DEFAULT '' COMMENT '千位',
  `bai` varchar(255) NOT NULL DEFAULT '' COMMENT '百位',
  `shi` varchar(255) NOT NULL DEFAULT '' COMMENT '十位',
  `ge` varchar(255) NOT NULL DEFAULT '' COMMENT '个位',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全天彩票';

--
-- 转存表中的数据 `cai_quan`
--

INSERT INTO `cai_quan` (`id`, `qihao`, `wan`, `qian`, `bai`, `shi`, `ge`, `update_time`, `create_time`) VALUES
(133, '171018004', '5', '2', '3', '4', '2', 1508257876, 1508257876),
(134, '171018005', '8', '7', '7', '0', '5', 1508257941, 1508257941),
(135, '171018288', '8', '7', '7', '0', '5', 1508258085, 1508258085),
(138, '171018008', '4', '5', '1', '7', '1', 1508258557, 1508258557),
(140, '171018008', '5', '9', '8', '9', '9', 1508258963, 1508258963),
(141, '171018009', '3', '7', '1', '2', '3', 1508259082, 1508259082),
(142, '171018009', '3', '7', '1', '2', '3', 1508259211, 1508259211),
(143, '171018010', '7', '5', '2', '2', '5', 1508259356, 1508259356),
(144, '171018010', '7', '5', '2', '2', '5', 1508259404, 1508259404),
(145, '171018011', '7', '5', '2', '2', '5', 1508259471, 1508259471),
(146, '171018011', '4', '9', '1', '6', '1', 1508259791, 1508259791),
(147, '171018012', '4', '6', '8', '6', '8', 1508259969, 1508259969),
(148, '171018012', '4', '6', '8', '6', '8', 1508260006, 1508260006),
(149, '171018013', '4', '6', '8', '6', '8', 1508260079, 1508260079),
(150, '171018154', '1', '8', '5', '5', '8', 1508302345, 1508302345);

-- --------------------------------------------------------

--
-- 表的结构 `cai_quan_huihe`
--

CREATE TABLE `cai_quan_huihe` (
  `id` int(11) NOT NULL COMMENT '主键',
  `wei` varchar(255) DEFAULT NULL COMMENT '位',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '连出类型，单双大小',
  `qihaos` text COMMENT '连出期号',
  `repeat_num` int(11) NOT NULL DEFAULT '0' COMMENT '连出次数',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全天回合记录';

--
-- 转存表中的数据 `cai_quan_huihe`
--

INSERT INTO `cai_quan_huihe` (`id`, `wei`, `type`, `qihaos`, `repeat_num`, `create_time`, `update_time`) VALUES
(123, '万', '单', '171018005(5)', 1, '2017-10-18 00:31:05', '0000-00-00 00:00:00'),
(124, '万', '大', '171018005(5),171018006(8)', 2, '2017-10-18 00:31:12', '0000-00-00 00:00:00'),
(125, '万', '双', '171018006(8)', 1, '2017-10-18 00:34:41', '0000-00-00 00:00:00'),
(126, '万', '单', '171018007(3)', 1, '2017-10-18 00:40:46', '0000-00-00 00:00:00'),
(127, '万', '小', '171018007(3),171018008(4)', 2, '2017-10-18 00:40:46', '0000-00-00 00:00:00'),
(128, '万', '双', '171018008(4)', 1, '2017-10-18 00:42:37', '0000-00-00 00:00:00'),
(129, '万', '单', '171018009(5),171018010(3)', 2, '2017-10-18 00:48:52', '0000-00-00 00:00:00'),
(130, '万', '大', '171018009(5)', 1, '2017-10-18 00:49:20', '0000-00-00 00:00:00'),
(131, '万', '小', '171018010(3)', 1, '2017-10-18 00:51:19', '0000-00-00 00:00:00'),
(132, '千', '单', '171018010(7)', 1, '2017-10-18 00:53:14', '0000-00-00 00:00:00'),
(133, '千', '大', '171018010(7)', 1, '2017-10-18 00:53:28', '0000-00-00 00:00:00'),
(134, '百', '双', '171018011(2),171018011(2)', 2, '2017-10-18 00:56:33', '0000-00-00 00:00:00'),
(135, '百', '小', '171018011(2),171018011(2),171018012(1)', 7, '2017-10-18 00:56:42', '0000-00-00 00:00:00'),
(136, '百', '单', '171018012(1)', 1, '2017-10-18 01:02:50', '0000-00-00 00:00:00'),
(137, '百', '双', '171018013(8),171018013(8)', 2, '2017-10-18 01:06:41', '2015-08-26 00:01:00'),
(138, '百', '大', '171018013(8),171018013(8)', 8, '2017-10-18 01:06:44', '2015-08-26 00:04:00');

-- --------------------------------------------------------

--
-- 表的结构 `fa_addonnews`
--

CREATE TABLE `fa_addonnews` (
  `id` int(10) NOT NULL,
  `content` longtext NOT NULL,
  `author` varchar(255) DEFAULT '' COMMENT '作者',
  `age` enum('1-18','19-29','30-39') DEFAULT '1-18' COMMENT '年龄',
  `gender` enum('male','female') DEFAULT 'male' COMMENT '性别'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_addonnews`
--

INSERT INTO `fa_addonnews` (`id`, `content`, `author`, `age`, `gender`) VALUES
(84, '<p>测试新闻1</p>', 'KS', '1-18', 'male'),
(85, '<p>测试新闻2</p>', 'FX', '19-29', 'male'),
(91, '<p>新闻2<br></p>', 'FF', '1-18', 'male'),
(92, '<p>新闻2<br></p>', 'EE', '30-39', 'male'),
(93, '<p>新闻2<br></p>', 'AA', '30-39', 'male'),
(94, '<p>新闻2<br></p>', 'AE', '1-18', 'male');

-- --------------------------------------------------------

--
-- 表的结构 `fa_addonproduct`
--

CREATE TABLE `fa_addonproduct` (
  `id` int(10) NOT NULL,
  `content` longtext NOT NULL,
  `productdata` varchar(1500) DEFAULT '' COMMENT '产品列表'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_addonproduct`
--

INSERT INTO `fa_addonproduct` (`id`, `content`, `productdata`) VALUES
(89, '<p>product1<br></p>', ''),
(90, '<p>产品2</p>', '');

-- --------------------------------------------------------

--
-- 表的结构 `fa_admin`
--

CREATE TABLE `fa_admin` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录时间',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `fa_admin`
--

INSERT INTO `fa_admin` (`id`, `username`, `nickname`, `password`, `salt`, `avatar`, `email`, `loginfailure`, `logintime`, `createtime`, `updatetime`, `token`, `status`) VALUES
(1, 'admin', 'Admin', '075eaec83636846f51c152f29b98a2fd', 's4f3', '/assets/img/avatar.png', 'admin@fastadmin.net', 0, 1510986762, 1492186163, 1510986762, 'bebba79a-9904-4b2e-b279-e78a6c552b14', 'normal'),
(2, 'admin2', 'admin2', '9a28ce07ce875fbd14172a9ca5357d3c', '2dHDmj', '/assets/img/avatar.png', 'admin2@fastadmin.net', 0, 1505450906, 1492186163, 1505450906, 'df45fdd5-26f4-45ca-83b3-47e4491a315a', 'normal'),
(3, 'admin3', 'admin3', '1c11f945dfcd808a130a8c2a8753fe62', 'WOKJEn', '/assets/img/avatar.png', 'admin3@fastadmin.net', 0, 1501980868, 1492186201, 1501982377, '', 'normal'),
(4, 'admin22', 'admin22', '1c1a0aa0c3c56a8c1a908aab94519648', 'Aybcn5', '/assets/img/avatar.png', 'admin22@fastadmin.net', 0, 0, 1492186240, 1492186240, '', 'normal'),
(5, 'admin32', 'admin32', 'ade94d5d7a7033afa7d84ac3066d0a02', 'FvYK0u', '/assets/img/avatar.png', 'admin32@fastadmin.net', 0, 0, 1492186263, 1492186263, '', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_admin_log`
--

CREATE TABLE `fa_admin_log` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1024) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '操作时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员日志表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_admin_log`
--

INSERT INTO `fa_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(1317, 1, 'admin', '/allfastadmin/public/index.php/admin/index/login.html', '登录', '{"__token__":"d752d545227fbc12eff229f3459c2dff","username":"admin","keeplogin":"1"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506871891),
(1318, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/install', '插件管理 安装', '{"name":"qiniu","force":"0","uid":"0","token":""}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506871988),
(1319, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"qiniu","action":"enable","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506872010),
(1320, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506872375),
(1321, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506872384),
(1322, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/install', '插件管理 安装', '{"name":"wangeditor","force":"0","uid":"535","token":"04fa7af8-4b10-4c08-ad21-37aefd1bf8a9"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506873979),
(1323, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"wangeditor","action":"enable","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506873986),
(1324, 0, 'Unknown', '/allfastadmin/public/index.php/admin/index/login', '登录', '{"__token__":"629cba1d5b3e6e15fdb8b5f2992ddc1f","username":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506874043),
(1325, 1, 'admin', '/allfastadmin/public/index.php/admin/index/login', '登录', '{"__token__":"c27824f0e8d506fe83a3c9ff90eb3199","username":"admin","keeplogin":"1"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506874048),
(1326, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506874848),
(1327, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/config?name=qiniu&dialog=1', '插件管理 配置', '{"name":"qiniu","dialog":"1","row":{"app_key":"AJQ7Ds2L0eXn5ryaIVt6fbpVOaAKD4I1EDshmRLN","secret_key":"dWyTk3vQNfFJpl-fVGdSg4JwTmHGCAQf0HBxdkXU","bucket":"yourbucket","uploadurl":"http:\\/\\/upload-z2.qiniu.com","cdnurl":"http:\\/\\/yourbucket.bkt.clouddn.com","notifyenabled":"0","notifyurl":"http:\\/\\/www.yoursite.com\\/addons\\/qiniu\\/index\\/notify","savekey":"\\/uploads\\/$(year)$(mon)$(day)\\/$(etag)$(ext)","expire":"600","maxsize":"10M","mimetype":"*","multiple":"0"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506875758),
(1328, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/install', '插件管理 安装', '{"name":"filemanager","force":"0","uid":"535","token":"04fa7af8-4b10-4c08-ad21-37aefd1bf8a9"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506988664),
(1329, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"filemanager","action":"enable","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506988697),
(1330, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"filemanager","action":"enable","force":"1"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506988735),
(1331, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506988820),
(1332, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/install', '插件管理 安装', '{"name":"blog","force":"0","uid":"535","token":"04fa7af8-4b10-4c08-ad21-37aefd1bf8a9"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507128896),
(1333, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507128901),
(1334, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507128915),
(1335, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/install', '插件管理 安装', '{"name":"docs","force":"0","uid":"535","token":"04fa7af8-4b10-4c08-ad21-37aefd1bf8a9"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507300069),
(1336, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/install', '插件管理 安装', '{"name":"calendar","force":"0","uid":"535","token":"04fa7af8-4b10-4c08-ad21-37aefd1bf8a9"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507380436),
(1337, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/install', '插件管理 安装', '{"name":"cms","force":"0","uid":"535","token":"04fa7af8-4b10-4c08-ad21-37aefd1bf8a9"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507443692),
(1338, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/refresh', '插件管理 刷新', '[]', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507443881),
(1339, 1, 'admin', '/allfastadmin/public/index.php/admin/index/login?url=/allfastadmin/public/index.php/admin/cai/quan/g', '登录', '{"url":"\\/allfastadmin\\/public\\/index.php\\/admin\\/cai\\/quan\\/getData","__token__":"e3da709f0eacf8327e6825efc27e8a19","username":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 1507905028),
(1340, 1, 'admin', '/allfastadmin/public/index.php/admin/general/config/check', '', '{"row":{"name":"cookie"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507963372),
(1341, 1, 'admin', '/allfastadmin/public/index.php/admin/general.config/add', '常规管理 系统配置 添加', '{"row":{"type":"text","group":"dictionary","name":"cookie","title":"cookie","value":"__cfduid=d8932a40c7f2ea86d748382029a6157371507897948; PHPSESSID=fktedq95sdc54fjg9mg88cafn3","content":"key1|value1\\r\\nkey2|value2","tip":"cookie \\u503c","rule":"","extend":""}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507963497),
(1342, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/install', '插件管理 安装', '{"name":"crontab","force":"0","uid":"535","token":"04fa7af8-4b10-4c08-ad21-37aefd1bf8a9"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507964300),
(1343, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"crontab","action":"enable","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507964402),
(1344, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"crontab","action":"enable","force":"1"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507964413),
(1345, 1, 'admin', '/allfastadmin/public/index.php/admin/general.config/edit', '常规管理 系统配置 编辑', '{"row":{"categorytype":{"field":{"default":"default","page":"page","article":"article","test":"test"},"value":{"default":"Default","page":"Page","article":"Article","test":"Test"}},"configgroup":{"field":{"basic":"basic","email":"email","dictionary":"dictionary","user":"user","example":"example"},"value":{"basic":"Basic","email":"Email","dictionary":"Dictionary","user":"User","example":"Example"}},"cookie":"PHPSESSID=fktedq95sdc54fjg9mg88cafn3"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507966363),
(1346, 1, 'admin', '/allfastadmin/public/index.php/admin/general.config/edit', '常规管理 系统配置 编辑', '{"row":{"categorytype":{"field":{"default":"default","page":"page","article":"article","test":"test"},"value":{"default":"Default","page":"Page","article":"Article","test":"Test"}},"configgroup":{"field":{"basic":"basic","email":"email","dictionary":"dictionary","user":"user","example":"example"},"value":{"basic":"Basic","email":"Email","dictionary":"Dictionary","user":"User","example":"Example"}},"cookie":"__cfduid=d8932a40c7f2ea86d748382029a6157371507897948; PHPSESSID=fktedq95sdc54fjg9mg88cafn3"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507966524),
(1347, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/get_schedule_future', '', '{"schedule":"* * * * *","days":"7"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507966925),
(1348, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/check_schedule', '', '{"row":{"schedule":"*\\/1 * * * *"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507967475),
(1349, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/get_schedule_future', '', '{"schedule":"*\\/1 * * * *","days":"7"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507967475),
(1350, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/get_schedule_future', '', '{"schedule":"*\\/1 * * * *","days":"7"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507967480),
(1351, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/get_schedule_future', '', '{"schedule":"*\\/1 * * * *","days":"7"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507967497),
(1352, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/add?dialog=1', '常规管理 定时任务 添加', '{"dialog":"1","row":{"title":"\\u5b9a\\u65f6\\u83b7\\u53d6\\u5168\\u5929\\u65f6\\u65f6\\u5f69\\u6570\\u636e","type":"url","content":"http:\\/\\/yangqihua.com\\/allfastadmin\\/public\\/index.php\\/admin\\/cai\\/getData","schedule":"*\\/1 * * * *","maximums":"0","begintime":"2017-10-14 15:51:20","endtime":"2024-01-06 15:51:22","weigh":"0","status":"normal"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507967497),
(1353, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/get_schedule_future', '', '{"schedule":"* * * * *","days":"7"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507967521),
(1354, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/get_schedule_future', '', '{"schedule":"* * * * *","days":"7"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507967521),
(1355, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/check_schedule', '', '{"row":{"schedule":"* * * * *"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507967529),
(1356, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/get_schedule_future', '', '{"schedule":"* * * * *","days":"7"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507967530),
(1357, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/edit/ids/1?dialog=1', '常规管理 定时任务 编辑 ', '{"dialog":"1","row":{"title":"\\u8bf7\\u6c42FastAdmin","type":"url","content":"http:\\/\\/www.fastadmin.net","schedule":"* * * * *","maximums":"0","begintime":"2017-01-01 00:00:00","endtime":"2019-01-01 00:00:00","weigh":"1","status":"hidden"},"ids":"1"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507967530),
(1358, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/check_schedule', '', '{"row":{"schedule":"* * * * *"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507967533),
(1359, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/get_schedule_future', '', '{"schedule":"* * * * *","days":"7"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507967533),
(1360, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/edit/ids/2?dialog=1', '常规管理 定时任务 编辑 ', '{"dialog":"1","row":{"title":"\\u67e5\\u8be2\\u4e00\\u6761SQL","type":"sql","content":"SELECT 1;","schedule":"* * * * *","maximums":"0","begintime":"2017-01-01 00:00:00","endtime":"2019-01-01 00:00:00","weigh":"2","status":"hidden"},"ids":"2"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507967533),
(1361, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/get_schedule_future', '', '{"schedule":"*\\/1 * * * *","days":"7"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507968298),
(1362, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/get_schedule_future', '', '{"schedule":"*\\/1 * * * *","days":"7"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507969090),
(1363, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/check_schedule', '', '{"row":{"schedule":"*\\/1 * * * *"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507969115),
(1364, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/get_schedule_future', '', '{"schedule":"*\\/1 * * * *","days":"7"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507969115),
(1365, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/edit/ids/3?dialog=1', '常规管理 定时任务 编辑 ', '{"dialog":"1","row":{"title":"\\u5b9a\\u65f6\\u83b7\\u53d6\\u5168\\u5929\\u65f6\\u65f6\\u5f69\\u6570\\u636e","type":"url","content":"http:\\/\\/yangqihua.com\\/allfastadmin\\/public\\/index.php\\/admin\\/cai\\/quan\\/getData","schedule":"*\\/1 * * * *","maximums":"0","begintime":"2017-10-14 15:51:20","endtime":"2024-01-06 15:51:22","weigh":"0","status":"normal"},"ids":"3"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507969115),
(1366, 1, 'admin', '/allfastadmin/public/index.php/admin/general/crontab/get_schedule_future', '', '{"schedule":"*\\/1 * * * *","days":"7"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1507969119),
(1367, 0, 'Unknown', '/allfastadmin/public/index.php/admin/index/login?url=/allfastadmin/public/index.php/admin/general/cr', '登录', '{"url":"\\/allfastadmin\\/public\\/index.php\\/admin\\/general\\/crontab\\/edit\\/ids\\/3?dialog=1","__token__":"f46d24a619d6d592dee4d60c39b05f1f","username":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508003190),
(1368, 0, 'Unknown', '/allfastadmin/public/index.php/admin/general.config/edit', '', '{"row":{"mail_type":"1","mail_smtp_host":"smtp.qq.com","mail_smtp_port":"465","mail_smtp_user":"904693433@qq.com","mail_smtp_pass":"ygojtjqghsivbdbi","mail_verify_type":"2","mail_from":"904693433@qq.com"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508003932),
(1369, 0, 'Unknown', '/allfastadmin/public/index.php/admin/index/login?url=/allfastadmin/public/index.php/admin/general/co', '登录', '{"url":"\\/allfastadmin\\/public\\/index.php\\/admin\\/general\\/config?ref=addtabs","__token__":"b6b4fe795d3122ba969e5f1edc3fb11e","username":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508003947),
(1370, 1, 'admin', '/allfastadmin/public/index.php/admin/index/login?url=/allfastadmin/public/index.php/admin/general/co', '登录', '{"url":"\\/allfastadmin\\/public\\/index.php\\/admin\\/general\\/config?ref=addtabs","__token__":"b8b59110446b7536a70c722a2356dccd","username":"admin","keeplogin":"1"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508003953),
(1371, 1, 'admin', '/allfastadmin/public/index.php/admin/general.config/edit', '常规管理 系统配置 编辑', '{"row":{"mail_type":"1","mail_smtp_host":"smtp.qq.com","mail_smtp_port":"465","mail_smtp_user":"904693433@qq.com","mail_smtp_pass":"ygojtjqghsivbdbi","mail_verify_type":"2","mail_from":"904693433@qq.com"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508003971),
(1372, 1, 'admin', '/allfastadmin/public/index.php/admin/general/config/emailtest', '', '{"receiver":"904693433@qq.com"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508003975),
(1373, 1, 'admin', '/allfastadmin/public/index.php/admin/general.config/edit', '常规管理 系统配置 编辑', '{"row":{"categorytype":{"field":{"default":"default","page":"page","article":"article","test":"test"},"value":{"default":"Default","page":"Page","article":"Article","test":"Test"}},"configgroup":{"field":{"basic":"basic","email":"email","dictionary":"dictionary","user":"user","example":"example"},"value":{"basic":"Basic","email":"Email","dictionary":"Dictionary","user":"User","example":"Example"}},"cookie":"__cfduid=d8932a40c7f2ea86d748382029a615737150789794; PHPSESSID=fktedq95sdc54fjg9mg88cafn3"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508004778),
(1374, 1, 'admin', '/allfastadmin/public/index.php/admin/general.config/edit', '常规管理 系统配置 编辑', '{"row":{"categorytype":{"field":{"default":"default","page":"page","article":"article","test":"test"},"value":{"default":"Default","page":"Page","article":"Article","test":"Test"}},"configgroup":{"field":{"basic":"basic","email":"email","dictionary":"dictionary","user":"user","example":"example"},"value":{"basic":"Basic","email":"Email","dictionary":"Dictionary","user":"User","example":"Example"}},"cookie":""}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508004816),
(1375, 1, 'admin', '/allfastadmin/public/index.php/admin/general.config/edit', '常规管理 系统配置 编辑', '{"row":{"categorytype":{"field":{"default":"default","page":"page","article":"article","test":"test"},"value":{"default":"Default","page":"Page","article":"Article","test":"Test"}},"configgroup":{"field":{"basic":"basic","email":"email","dictionary":"dictionary","user":"user","example":"example"},"value":{"basic":"Basic","email":"Email","dictionary":"Dictionary","user":"User","example":"Example"}},"cookie":"__cfduid=d8932a40c7f2ea86d748382029a6157371507897948; PHPSESSID=fktedq95sdc54fjg9mg88cafn3"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508004865),
(1376, 1, 'admin', '/allfastadmin/public/index.php/admin/general/config/check', '', '{"row":{"name":"\\u4e0b\\u6ce8\\u5e95\\u6570"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508233774),
(1377, 1, 'admin', '/allfastadmin/public/index.php/admin/general.config/add', '常规管理 系统配置 添加', '{"row":{"type":"radio","group":"basic","name":"\\u4e0b\\u6ce8\\u5e95\\u6570","title":"\\u4e0b\\u6ce8\\u5e95\\u6570","value":"2","content":"\\u89d2|2\\r\\n\\u5143|1","tip":"\\u4e0b\\u6ce8\\u5e95\\u6570","rule":"","extend":""}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508233807),
(1378, 1, 'admin', '/allfastadmin/public/index.php/admin/general/config/check', '', '{"row":{"name":"lixucount"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508234244),
(1379, 1, 'admin', '/allfastadmin/public/index.php/admin/general.config/add', '常规管理 系统配置 添加', '{"row":{"type":"number","group":"dictionary","name":"lixucount","title":"\\u5230\\u8fbe\\u8fde\\u51fa\\u6b21\\u6570\\u4e0b\\u6ce8","value":"8","content":"key1|value1\\r\\nkey2|value2","tip":"\\u5230\\u8fbe\\u8fde\\u51fa\\u6b21\\u6570\\u4e0b\\u6ce8","rule":"","extend":""}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508234272),
(1380, 1, 'admin', '/allfastadmin/public/index.php/admin/general/config/check', '', '{"row":{"name":"bei"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508241202),
(1381, 1, 'admin', '/allfastadmin/public/index.php/admin/general.config/add', '常规管理 系统配置 添加', '{"row":{"type":"string","group":"dictionary","name":"bei","title":"\\u4e0b\\u6ce8\\u500d\\u6570","value":"1","content":"key1|value1\\r\\nkey2|value2","tip":"\\u4e0b\\u6ce8\\u500d\\u6570","rule":"","extend":""}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1508241216),
(1382, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"cms","action":"disable","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509587415),
(1383, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/uninstall', '插件管理 卸载', '{"name":"cms","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509587477),
(1384, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/install', '插件管理 安装', '{"name":"cms","force":"0","uid":"535","token":"04fa7af8-4b10-4c08-ad21-37aefd1bf8a9"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509587490),
(1385, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"cms","action":"enable","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509587510),
(1386, 1, 'admin', '/allfastadmin/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"cms","action":"enable","force":"1"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509587520),
(1387, 1, 'admin', '/allfastadmin/public/index.php/admin/cms/archives/get_channel_fields', '', '{"channel_id":"38"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509588281),
(1388, 1, 'admin', '/qugou/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"cms","action":"disable","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611669),
(1389, 1, 'admin', '/qugou/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"cms","action":"disable","force":"1"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611673),
(1390, 1, 'admin', '/qugou/public/index.php/admin/addon/uninstall', '插件管理 卸载', '{"name":"cms","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611676),
(1391, 1, 'admin', '/qugou/public/index.php/admin/addon/uninstall', '插件管理 卸载', '{"name":"calendar","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611685),
(1392, 1, 'admin', '/qugou/public/index.php/admin/addon/uninstall', '插件管理 卸载', '{"name":"calendar","force":"1"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611689),
(1393, 1, 'admin', '/qugou/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"docs","action":"disable","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611701),
(1394, 1, 'admin', '/qugou/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"docs","action":"disable","force":"1"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611702),
(1395, 1, 'admin', '/qugou/public/index.php/admin/addon/uninstall', '插件管理 卸载', '{"name":"docs","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611705),
(1396, 1, 'admin', '/qugou/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"blog","action":"disable","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611725),
(1397, 1, 'admin', '/qugou/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"blog","action":"disable","force":"1"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611727),
(1398, 1, 'admin', '/qugou/public/index.php/admin/addon/uninstall', '插件管理 卸载', '{"name":"blog","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611730),
(1399, 1, 'admin', '/qugou/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"qiniu","action":"disable","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611762),
(1400, 1, 'admin', '/qugou/public/index.php/admin/addon/uninstall', '插件管理 卸载', '{"name":"qiniu","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611766),
(1401, 1, 'admin', '/qugou/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"wangeditor","action":"disable","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611771),
(1402, 1, 'admin', '/qugou/public/index.php/admin/addon/uninstall', '插件管理 卸载', '{"name":"wangeditor","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611776),
(1403, 1, 'admin', '/qugou/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"filemanager","action":"disable","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611785),
(1404, 1, 'admin', '/qugou/public/index.php/admin/addon/state', '插件管理 禁用启用', '{"name":"filemanager","action":"disable","force":"1"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611787),
(1405, 1, 'admin', '/qugou/public/index.php/admin/addon/uninstall', '插件管理 卸载', '{"name":"filemanager","force":"0"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611789),
(1406, 1, 'admin', '/qugou/public/index.php/admin/auth/rule/del/ids/102,103', '权限管理 规则管理 删除', '{"action":"del","ids":"102,103","params":""}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509611806),
(1407, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/index', 'qu 商品 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","page":"1","per_page":"10","and_or":"AND","order_by":[["name","ASC"]],"field":"name","pkey_name":"id","search_field":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509617258),
(1408, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/index', 'qu 商品 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","page":"1","per_page":"10","and_or":"AND","order_by":[["name","ASC"]],"field":"name","pkey_name":"id","search_field":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509617262),
(1409, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/index', 'qu 商品 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","page":"1","per_page":"10","and_or":"AND","order_by":[["name","ASC"]],"field":"name","pkey_name":"id","search_field":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509617278),
(1410, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/index', 'qu 商品 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","page":"1","per_page":"10","and_or":"AND","order_by":[["name","ASC"]],"field":"name","pkey_name":"id","search_field":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509617283),
(1411, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/index', 'qu 商品 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","page":"1","per_page":"10","and_or":"AND","order_by":[["name","ASC"]],"field":"name","pkey_name":"id","search_field":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509617288),
(1412, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/index', 'qu 商品 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","page":"1","per_page":"10","and_or":"AND","order_by":[["name","ASC"]],"field":"name","pkey_name":"id","search_field":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509617290),
(1413, 1, 'admin', '/qugou/public/index.php/admin/qu/ad/add?dialog=1', 'qu 广告 添加', '{"dialog":"1","row_goods_id_text":"\\u5546\\u54c12","row":{"goods_id":"2","desc":"123","img_url":"123.jpg"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1509617304),
(1414, 1, 'admin', '/qugou/public/index.php/admin/addon/config?name=qiniu&dialog=1', '插件管理 配置', '{"name":"qiniu","dialog":"1","row":{"app_key":"AJQ7Ds2L0eXn5ryaIVt6fbpVOaAKD4I1EDshmRLN","secret_key":"dWyTk3vQNfFJpl-fVGdSg4JwTmHGCAQf0HBxdkXU","bucket":"qugou","uploadurl":"http:\\/\\/upload-z2.qiniu.com","cdnurl":"http:\\/\\/qugou.bkt.clouddn.com","notifyenabled":"0","notifyurl":"http:\\/\\/yangqihua.com\\/qugou\\/public\\/index.php\\/addons\\/qiniu\\/index\\/notify","savekey":"\\/uploads\\/$(year)$(mon)$(day)\\/$(etag)$(ext)","expire":"600","maxsize":"10M","mimetype":"*","multiple":"1"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1510503079),
(1415, 1, 'admin', '/qugou/public/index.php/admin/ajax/upload', '', '{"name":"145514179.jpg"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1510503101),
(1416, 1, 'admin', '/qugou/public/index.php/admin/ajax/upload', '', '{"name":"\\u5c4f\\u5e55\\u5feb\\u7167 2017-04-17 \\u4e0b\\u53484.32.44.png"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1510503331),
(1417, 1, 'admin', '/qugou/public/index.php/admin/ajax/upload', '', '{"name":"\\u5c4f\\u5e55\\u5feb\\u7167 2017-06-13 \\u4e0b\\u534811.39.04.png"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1510503362),
(1418, 1, 'admin', '/qugou/public/index.php/admin/ajax/upload', '', '{"name":"\\u5c4f\\u5e55\\u5feb\\u7167 2017-04-16 \\u4e0b\\u534811.35.46.png"}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1510503420),
(1419, 1, 'admin', '/qugou/public/index.php/admin/general/attachment/add?dialog=1', '常规管理 附件管理 添加', '{"dialog":"1","row":{"third":"","local":"","editor":""}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1510503540),
(1420, 1, 'admin', '/qugou/public/index.php/admin/addon/config?name=qiniu&dialog=1', '插件管理 配置', '{"name":"qiniu","dialog":"1","row":{"app_key":"AJQ7Ds2L0eXn5ryaIVt6fbpVOaAKD4I1EDshmRLN","secret_key":"dWyTk3vQNfFJpl-fVGdSg4JwTmHGCAQf0HBxdkXU","bucket":"qugou","uploadurl":"http:\\/\\/upload-z2.qiniu.com","cdnurl":"http:\\/\\/qugou.bkt.clouddn.com","notifyenabled":"1","notifyurl":"http:\\/\\/yangqihua.com\\/qugou\\/public\\/index.php\\/addons\\/qiniu\\/index\\/notify","savekey":"\\/uploads\\/$(year)$(mon)$(day)\\/$(etag)$(ext)","expire":"600","maxsize":"10M","mimetype":"*","multiple":"1"}}', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1510504921),
(1421, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadExcel', '', '{"name":"database50.xls"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510673396),
(1422, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadExcel', '', '{"name":"database50.xls"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510673507),
(1423, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadZip', '', '{"name":"pic_1_20.zip"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510673576),
(1424, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadZip', '', '{"name":"pic_1_20.zip"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510673807),
(1425, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadZip', '', '{"name":"pic_1_20.zip"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510673904),
(1426, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadZip', '', '{"name":"pic_1_20.zip"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510674138),
(1427, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadZip', '', '{"name":"pic_21_40.zip"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510674206),
(1428, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadZip', '', '{"name":"pic_41_50.zip"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510674230),
(1429, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadHomePic', '', '{"name":"home_pics.zip"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510674239),
(1430, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/upload_file?dialog=1', '', '{"dialog":"1","row":{"local":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510674607),
(1431, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadAdPic', '', '{"name":"ads.zip"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510675117),
(1432, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadAdPic', '', '{"name":"ads.zip"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510675127),
(1433, 1, 'admin', '/qugou/public/index.php/admin/addon/config?name=qiniu&dialog=1', '插件管理 配置', '{"name":"qiniu","dialog":"1","row":{"app_key":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ","secret_key":"0YjDdiDUKV0PxAWoYVFOgXhfIFjNNXzXlocqKoHg","bucket":"qu-gou","uploadurl":"http:\\/\\/upload-z2.qiniu.com","cdnurl":"http:\\/\\/qu-gou.bkt.clouddn.com","notifyenabled":"0","notifyurl":"http:\\/\\/yangqihua.com\\/qugou\\/public\\/index.php\\/addons\\/qiniu\\/index\\/notify","savekey":"\\/uploads\\/$(year)$(mon)$(day)\\/$(etag)$(ext)","expire":"600","maxsize":"10M","mimetype":"*","multiple":"1"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510729694),
(1434, 1, 'admin', '/qugou/public/index.php/admin/general/attachment/add?dialog=1', '常规管理 附件管理 添加', '{"dialog":"1","row":{"third":"","local":"","editor":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510729701),
(1435, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadZip', '', '{"name":"pic_1_20.zip","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:qkiRsJYJsVpJ_YS8pnkqGB7k-7w=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA3NDgwNTh9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510748245),
(1436, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadPicExcel', '', '{"name":"goods_url.xls","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:qkiRsJYJsVpJ_YS8pnkqGB7k-7w=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA3NDgwNTh9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510748485),
(1437, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadPicExcel', '', '{"name":"goods_url.xls","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:qkiRsJYJsVpJ_YS8pnkqGB7k-7w=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA3NDgwNTh9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510748772),
(1438, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadPicExcel', '', '{"name":"goods_url.xls","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:qkiRsJYJsVpJ_YS8pnkqGB7k-7w=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA3NDgwNTh9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510748856),
(1439, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadPicExcel', '', '{"name":"goods_url.xls","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:qkiRsJYJsVpJ_YS8pnkqGB7k-7w=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA3NDgwNTh9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510749155),
(1440, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadPicExcel', '', '{"name":"goods_url.xls","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:qkiRsJYJsVpJ_YS8pnkqGB7k-7w=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA3NDgwNTh9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510749233),
(1441, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadPicExcel', '', '{"name":"goods_url.xls","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:qkiRsJYJsVpJ_YS8pnkqGB7k-7w=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA3NDgwNTh9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510751698),
(1442, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadHomePic', '', '{"name":"home_pics.zip","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:qkiRsJYJsVpJ_YS8pnkqGB7k-7w=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA3NDgwNTh9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510752002),
(1443, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadZip', '', '{"name":"pic_1_20.zip","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:qkiRsJYJsVpJ_YS8pnkqGB7k-7w=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA3NDgwNTh9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510753141),
(1444, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadZip', '', '{"name":"pic_21_40.zip","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:qkiRsJYJsVpJ_YS8pnkqGB7k-7w=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA3NDgwNTh9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510753238),
(1445, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadZip', '', '{"name":"pic_41_50.zip","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:qkiRsJYJsVpJ_YS8pnkqGB7k-7w=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA3NDgwNTh9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510753283),
(1446, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadZip', '', '{"name":"detail_pics.zip","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:MXu33J-osEThreesvxVUrNE1gGw=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA3NTQ1ODB9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510753997),
(1447, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/dealUploadAdPic', '', '{"name":"ads.zip","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:sFqMIEBQqn1ijDs9pq2ooGpEUOg=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA3NjEyNzd9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510760731),
(1448, 0, 'Unknown', '/qugou/public/index.php/admin/index/login?url=%2Fqugou%2Fpublic%2Findex.php%2Fadmin%2Fqu%2Frecommend%3Fref%3Daddtabs', '登录', '{"url":"\\/qugou\\/public\\/index.php\\/admin\\/qu\\/recommend?ref=addtabs","__token__":"e428469fff2f82fcac024970b953416a","username":"admin"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510907812),
(1449, 0, 'Unknown', '/qugou/public/index.php/admin/index/login?url=%2Fqugou%2Fpublic%2Findex.php%2Fadmin%2Fqu%2Frecommend%3Fref%3Daddtabs', '登录', '{"url":"\\/qugou\\/public\\/index.php\\/admin\\/qu\\/recommend?ref=addtabs","__token__":"b752d27132bcdb966e04c3811b2bab67","username":"admin"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510907818),
(1450, 0, 'Unknown', '/qugou/public/index.php/admin/index/login?url=%2Fqugou%2Fpublic%2Findex.php%2Fadmin%2Fqu%2Frecommend%3Fref%3Daddtabs', '登录', '{"url":"\\/qugou\\/public\\/index.php\\/admin\\/qu\\/recommend?ref=addtabs","__token__":"ba2cc2274cf7cfc34c2d2448e8b98519","username":"admin"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510907825),
(1451, 0, 'Unknown', '/qugou/public/index.php/admin/index/login?url=%2Fqugou%2Fpublic%2Findex.php%2Fadmin%2Fqu%2Fgoods%2Ftest', '登录', '{"url":"\\/qugou\\/public\\/index.php\\/admin\\/qu\\/goods\\/test","__token__":"fcb5d1724979857017b047900d90bf8f","username":"admin"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510907857),
(1452, 1, 'admin', '/qugou/public/index.php/admin/index/login?url=%2Fqugou%2Fpublic%2Findex.php%2Fadmin%2F', '登录', '{"url":"\\/qugou\\/public\\/index.php\\/admin\\/","__token__":"04cbd55c235e889a31df6f805d52bd76","username":"admin"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510907875),
(1453, 1, 'admin', '/qugou/public/index.php/admin/qu/superme/add_superme?dialog=1', '', '{"dialog":"1","row":{"local":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510907898),
(1454, 1, 'admin', '/qugou/public/index.php/admin/qu/superme/dealUploadExcel', '', '{"name":"superme.xls","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:WJfvOwY0wUxvImv6-OBpbIrgcrM=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5MDg0OTZ9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510908118);
INSERT INTO `fa_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(1455, 1, 'admin', '/qugou/public/index.php/admin/qu/recommend/dealUploadExcel', '', '{"name":"weeks.xls","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:c-9oZlpcSX9DCrw7BZW0NA-FRGo=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5MTE0MjJ9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510910922),
(1456, 1, 'admin', '/qugou/public/index.php/admin/index/login?url=%2Fqugou%2Fpublic%2Findex.php%2Fadmin%2Fdashboard%3Fref%3Daddtabs', '登录', '{"url":"\\/qugou\\/public\\/index.php\\/admin\\/dashboard?ref=addtabs","__token__":"5af7b8e56bba67e6377de216c92edb10","username":"admin","keeplogin":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510924735),
(1457, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealVideoDescExcel', '', '{"name":"video_desc_1.xls","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:Ll4jS6qe9jdoOp7YBHU-lU5kvis=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5MzA5MjB9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510930523),
(1458, 1, 'admin', '/qugou/public/index.php/admin/qu/details/upload_video_desc?dialog=1', '', '{"dialog":"1","row":{"local":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510930647),
(1459, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealVideoDescExcel', '', '{"name":"video_desc_1.xls","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:_YjSTvNHiDC9-x3A-YuSBRW23Io=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5MzEyNDd9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510930655),
(1460, 1, 'admin', '/qugou/public/index.php/admin/qu/details/edit/ids/7?dialog=1', 'qu 商品详情 编辑', '{"dialog":"1","row_goods_id_text":"","row":{"goods_id":"7","img_urls":"[{\\"desc\\":\\"\\",\\"url\\":\\"detail_pics\\\\\\/7\\\\\\/bc6a56e46979b88f5b71e22c1dcc0124.jpg\\"},{\\"desc\\":\\"\\",\\"url\\":\\"detail_pics\\\\\\/7\\\\\\/f1aabee1656951ce9257a8abd33e3600.jpg\\"},{\\"desc\\":\\"\\",\\"url\\":\\"detail_pics\\\\\\/7\\\\\\/f5b658a8d13e4c8c4a242b9057b39169.jpg\\"},{\\"desc\\":\\"\\",\\"url\\":\\"detail_pics\\\\\\/7\\\\\\/fd659b23dea978d5dfbe5d9bf3dbd3e6.jpg\\"}]","video_urls":"[{\\"desc\\":\\"\\u8981\\u7684\\u5c31\\u662f\\u8fd9\\u4e48\\u4f18\\u96c5\\uff1f\\",\\"url\\":\\"videos\\\\\\/7\\\\\\/0hiy51o6LZivlzJF92j@@hd.mp4\\"}]","desc":"\\u4f60\\u9047\\u5230\\u4e00\\u4e0b\\u95ee\\u9898\\u5417\\uff1f$1,\\u624b\\u673a\\u5c4f\\u5e55\\u8fc7\\u5c0f\\u7ecf\\u5e38\\u8bef\\u64cd\\u4f5c$2,\\u952e\\u76d8\\u592a\\u5c0f\\uff0c\\u6253\\u5b57\\u901f\\u5ea6\\u6162$3,\\u5f00\\u8f66\\u6253\\u7535\\u8bdd\\uff0c\\u4e0d\\u65b9\\u4fbf\\u4e5f\\u4e0d\\u5b89\\u5168$\\u5b83\\u662f\\u968f\\u65f6\\u968f\\u5730\\u7684\\u84dd\\u7259\\u97f3\\u54cd\\uff1b\\u5b83\\u662f\\u65f6\\u5c1a\\u4eab\\u53d7\\u7684\\u956d\\u5c04\\u952e\\u76d8\\uff1b\\u5b83\\u662f\\u524d\\u6240\\u672a\\u6709\\u7684\\u9f20\\u6807\\u529f\\u80fd\\uff1b\\u5b83\\u53ef\\u4ee5\\u4e00\\u673a\\u591a\\u7528\\u63a5\\u542c\\u7535\\u8bdd\\uff01","tb_link":"https:\\/\\/s.click.taobao.com\\/BQgc8Yw;\\uffe5NkFp0hw5Ff5\\uffe5","jd_link":"","is_delete":"1","category":"1"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 1510930707),
(1461, 1, 'admin', '/qugou/public/admin/index/login.html', 'Login', '{"__token__":"af448e77f03c8cea48279e3bbfa8f861","username":"admin"}', '0.0.0.0', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0)', 1510934972),
(1462, 1, 'admin', '/qugou/public/index.php/admin/index/login?url=%2Fqugou%2Fpublic%2Findex.php%2Fadmin%2Fdashboard%3Fref%3Daddtabs', '登录', '{"url":"\\/qugou\\/public\\/index.php\\/admin\\/dashboard?ref=addtabs","__token__":"716aa7841002fb164ba1bf5c5c8c321d","username":"admin","keeplogin":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510986762),
(1463, 1, 'admin', '/qugou/public/index.php/admin/qu/details/upload_video_desc?dialog=1', '', '{"dialog":"1","row":{"local":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510989276),
(1464, 1, 'admin', '/qugou/public/index.php/admin/qu/details/upload_video_desc?dialog=1', '', '{"dialog":"1","row":{"local":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510989278),
(1465, 1, 'admin', '/qugou/public/index.php/admin/qu/details/upload_video_desc?dialog=1', '', '{"dialog":"1","row":{"local":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510989279),
(1466, 1, 'admin', '/qugou/public/index.php/admin/qu/details/upload_video_desc?dialog=1', '', '{"dialog":"1","row":{"local":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510989293),
(1467, 1, 'admin', '/qugou/public/index.php/admin/qu/details/upload_video_desc?dialog=1', '', '{"dialog":"1","row":{"local":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510989294),
(1468, 1, 'admin', '/qugou/public/index.php/admin/qu/details/upload_video_desc?dialog=1', '', '{"dialog":"1","row":{"local":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510989295),
(1469, 1, 'admin', '/qugou/public/index.php/admin/qu/details/upload_video_desc?dialog=1', '', '{"dialog":"1","row":{"local":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510989296),
(1470, 1, 'admin', '/qugou/public/index.php/admin/qu/details/upload_video_desc?dialog=1', '', '{"dialog":"1","row":{"local":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510989326),
(1471, 1, 'admin', '/qugou/public/index.php/admin/qu/details/upload_video_desc?dialog=1', '', '{"dialog":"1","row":{"local":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510989346),
(1472, 1, 'admin', '/qugou/public/index.php/admin/qu/details/upload_video_desc?dialog=1', '', '{"dialog":"1","row":{"local":""}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510989434),
(1473, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealFontDescTxt', '', '{"name":"\\u8be6\\u60c5\\u6587\\u6848.txt","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:3iliEQOY4F0lqCDXbfcFW633q7A=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5OTM2MDJ9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510993015),
(1474, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealFontDescTxt', '', '{"name":"\\u8be6\\u60c5\\u6587\\u6848.txt","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:3iliEQOY4F0lqCDXbfcFW633q7A=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5OTM2MDJ9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510993078),
(1475, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealFontDescTxt', '', '{"name":"\\u8be6\\u60c5\\u6587\\u6848.txt","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:3iliEQOY4F0lqCDXbfcFW633q7A=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5OTM2MDJ9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510993144),
(1476, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealFontDescTxt', '', '{"name":"\\u8be6\\u60c5\\u6587\\u6848.txt","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:3iliEQOY4F0lqCDXbfcFW633q7A=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5OTM2MDJ9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510993707),
(1477, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealFontDescTxt', '', '{"name":"\\u8be6\\u60c5\\u6587\\u6848.txt","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:3iliEQOY4F0lqCDXbfcFW633q7A=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5OTM2MDJ9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510993827),
(1478, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealFontDescTxt', '', '{"name":"\\u8be6\\u60c5\\u6587\\u6848.txt","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:3iliEQOY4F0lqCDXbfcFW633q7A=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5OTM2MDJ9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510993890),
(1479, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealFontDescTxt', '', '{"name":"\\u8be6\\u60c5\\u6587\\u6848.txt","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:3iliEQOY4F0lqCDXbfcFW633q7A=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5OTM2MDJ9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510994078),
(1480, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealFontDescTxt', '', '{"name":"\\u8be6\\u60c5\\u6587\\u6848.txt","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:3iliEQOY4F0lqCDXbfcFW633q7A=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5OTM2MDJ9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510994245),
(1481, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealFontDescTxt', '', '{"name":"\\u8be6\\u60c5\\u6587\\u6848.txt","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:3iliEQOY4F0lqCDXbfcFW633q7A=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5OTM2MDJ9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510995187),
(1482, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealFontDescTxt', '', '{"name":"\\u8be6\\u60c5\\u6587\\u6848.txt","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:3iliEQOY4F0lqCDXbfcFW633q7A=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTA5OTM2MDJ9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1510995344),
(1483, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealFontDescTxt', '', '{"name":"\\u8be6\\u60c5\\u6587\\u6848.txt","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:Appxn6nQTtunS3iWzAWm3xhJhZ4=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTEwMDQzMzF9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1511003746),
(1484, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealFontDescTxt', '', '{"name":"\\u8be6\\u60c5\\u6587\\u6848.txt","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:Appxn6nQTtunS3iWzAWm3xhJhZ4=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTEwMDQzMzF9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1511004485),
(1485, 1, 'admin', '/qugou/public/index.php/admin/qu/goods/edit/ids/35?dialog=1', 'qu 商品 编辑', '{"dialog":"1","row":{"name":"\\u78c1\\u529b\\u6c99\\u6f0f","desc":"\\u53ef\\u4ee5\\u5f00\\u82b1\\u7684\\u78c1\\u529b\\u6c99\\u6f0f","home_url":"[{","category":"3","weight":"0","share_num":"0","buy_num":"0","browse_num":"0","price":"28","status":"1","collection_num":"0","create_user":"qugou","is_delete":"1"},"ids":"35"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1511015001),
(1486, 1, 'admin', '/qugou/public/index.php/admin/qu/details/dealFontDescTxt', '', '{"name":"\\u8be6\\u60c5\\u6587\\u6848.txt","token":"2E_Mh3JMQbtCGPpCOc79qQxNN8Gqs5k1rCGampjZ:EffVbL4Jt3-7Xubx992zigZxamI=:eyJzYXZlS2V5IjoidXBsb2Fkc1wvJCh5ZWFyKSQobW9uKSQoZGF5KVwvJChldGFnKSQoZXh0KSIsInNjb3BlIjoicXUtZ291IiwiZGVhZGxpbmUiOjE1MTEwMjQzNTR9"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 1511023772);

-- --------------------------------------------------------

--
-- 表的结构 `fa_archives`
--

CREATE TABLE `fa_archives` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `model_id` int(10) NOT NULL COMMENT '模型ID',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '文章标题',
  `flag` set('hot','new','recommend') NOT NULL DEFAULT '' COMMENT '标志',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `tags` varbinary(255) NOT NULL DEFAULT '' COMMENT 'TAG',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论次数',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislikes` int(10) UNSIGNED NOT NULL COMMENT '点踩数',
  `diyname` varchar(50) NOT NULL COMMENT '自定义URL',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `publishtime` int(10) DEFAULT NULL COMMENT '发布时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内容表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_archives`
--

INSERT INTO `fa_archives` (`id`, `channel_id`, `model_id`, `title`, `flag`, `image`, `keywords`, `description`, `tags`, `weigh`, `views`, `comments`, `likes`, `dislikes`, `diyname`, `createtime`, `updatetime`, `publishtime`, `deletetime`, `status`) VALUES
(84, 35, 0, '测试新闻1', '', '', '', '', 0xe69e81e9809f2c4661737441646d696e2ce696b0e997bb31, 84, 2, 0, 0, 0, 'news1', 1508990778, 1508992752, 1508947200, NULL, 'normal'),
(85, 35, 0, '测试新闻2', '', '', '', '', 0x4661737441646d696e2ce69e81e9809f, 85, 0, 0, 0, 0, 'news2', 1508991029, 1508992725, 1508947200, NULL, 'normal'),
(89, 38, 0, '产品1', '', '', '', '', 0xe4baa7e59381312c4661737441646d696e, 89, 1, 0, 0, 0, 'product1', 1508992836, 1508992836, 1508947200, NULL, 'normal'),
(90, 38, 0, '产品2', '', '', '', '', 0xe4baa7e59381322c4661737441646d696e, 90, 0, 0, 0, 0, '', 1508992861, 1508992861, 1508947200, NULL, 'normal'),
(91, 35, 0, '新闻2', '', '', '', '', 0xe696b0e997bb32, 91, 0, 0, 0, 0, 'news2-2', 1508993329, 1508993329, 1508947200, NULL, 'normal'),
(92, 36, 0, '新闻2-2', '', '', '', '', 0xe696b0e997bb32, 92, 0, 0, 0, 0, 'n2', 1508993357, 1508993357, 1508947200, NULL, 'normal'),
(93, 35, 0, '新闻X', '', '', '', '', 0xe696b0e997bb31, 93, 0, 0, 0, 0, 'n23', 1508993390, 1508993390, 1508947200, NULL, 'normal'),
(94, 36, 0, '新闻2X', '', '', '', '', 0xe696b0e997bb32, 94, 0, 0, 0, 0, '2x', 1508993412, 1508993412, 1508947200, NULL, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_attachment`
--

CREATE TABLE `fa_attachment` (
  `id` int(20) UNSIGNED NOT NULL COMMENT 'ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(30) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建日期',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uploadtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上传时间',
  `storage` enum('local','upyun','qiniu') NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_attachment`
--

INSERT INTO `fa_attachment` (`id`, `url`, `imagewidth`, `imageheight`, `imagetype`, `imageframes`, `filesize`, `mimetype`, `extparam`, `createtime`, `updatetime`, `uploadtime`, `storage`, `sha1`) VALUES
(1, '/assets/img/qrcode.png', '150', '150', 'png', 0, 21859, 'image/png', '', 1499681848, 1499681848, 1499681848, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6'),
(2, '/uploads/20171113/19b6c36db5011f076725e8f06281d037.jpg', '1680', '580', 'jpg', 0, 123872, 'image/jpeg', '', 1510503101, 1510503101, 1510503101, 'local', '5cc096cd0221b6962e46f41a7f2cdfcf41fe8155'),
(3, '/uploads/20171113/cd19dd33ac832dbad31fa51c3da802d5.png', '1430', '1120', 'png', 0, 952495, 'image/png', '', 1510503331, 1510503331, 1510503331, 'local', '5ca0d266c746dd680f80eaa0b0ed39dd86dab5fb'),
(4, '/uploads/20171113/e5e2da25aea4a77d05accabb16187789.png', '1918', '298', 'png', 0, 401503, 'image/png', '', 1510503362, 1510503362, 1510503362, 'local', '10cfce41d5f386342b332fdcbe26b315580aca2d'),
(5, '/uploads/20171113/85d740a1575a1ec3bc3ec4f43b1a3af8.png', '1762', '1258', 'png', 0, 195856, 'image/png', '', 1510503420, 1510503420, 1510503420, 'local', 'b78a5e9fdd1148c4cc7c2b25eb7a354a9ae61d1d');

-- --------------------------------------------------------

--
-- 表的结构 `fa_auth_group`
--

CREATE TABLE `fa_auth_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分组表';

--
-- 转存表中的数据 `fa_auth_group`
--

INSERT INTO `fa_auth_group` (`id`, `pid`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
(1, 0, 'Admin group', '*', 1490883540, 149088354, 'normal'),
(2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1490883540, 1505465692, 'normal'),
(3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1490883540, 1502205322, 'normal'),
(4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1490883540, 1502205350, 'normal'),
(5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1490883540, 1502205344, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_auth_group_access`
--

CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限分组表';

--
-- 转存表中的数据 `fa_auth_group_access`
--

INSERT INTO `fa_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 5),
(5, 5);

-- --------------------------------------------------------

--
-- 表的结构 `fa_auth_rule`
--

CREATE TABLE `fa_auth_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='节点表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `fa_auth_rule`
--

INSERT INTO `fa_auth_rule` (`id`, `type`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `ismenu`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard\r', '', 'Dashboard tips', 1, 1497429920, 1497429920, 143, 'normal'),
(2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', 1, 1497429920, 1497430169, 137, 'normal'),
(3, 'file', 0, 'category', 'Category', 'fa fa-list\r', '', 'Category tips', 1, 1497429920, 1497429920, 119, 'normal'),
(4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', 1, 1502035509, 1502035509, 0, 'normal'),
(5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', 1, 1497429920, 1497430092, 99, 'normal'),
(6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', 1, 1497429920, 1497430683, 60, 'normal'),
(7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', 1, 1497429920, 1497430699, 53, 'normal'),
(8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user\r', '', '', 1, 1497429920, 1497429920, 34, 'normal'),
(9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', 1, 1497429920, 1497430320, 118, 'normal'),
(10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', 1, 1497429920, 1497430307, 113, 'normal'),
(11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', 1, 1497429920, 1497429920, 109, 'normal'),
(12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', 1, 1497429920, 1497430581, 104, 'normal'),
(13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 136, 'normal'),
(14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 135, 'normal'),
(15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 133, 'normal'),
(16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 134, 'normal'),
(17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 132, 'normal'),
(18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 52, 'normal'),
(19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 51, 'normal'),
(20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 50, 'normal'),
(21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 49, 'normal'),
(22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 48, 'normal'),
(23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 59, 'normal'),
(24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 58, 'normal'),
(25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 57, 'normal'),
(26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 56, 'normal'),
(27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 55, 'normal'),
(28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 54, 'normal'),
(29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 33, 'normal'),
(30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 32, 'normal'),
(31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 31, 'normal'),
(32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 30, 'normal'),
(33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 29, 'normal'),
(34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 28, 'normal'),
(35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 142, 'normal'),
(36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 141, 'normal'),
(37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 140, 'normal'),
(38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 139, 'normal'),
(39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 138, 'normal'),
(40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 117, 'normal'),
(41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 116, 'normal'),
(42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 115, 'normal'),
(43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 114, 'normal'),
(44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 112, 'normal'),
(45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 111, 'normal'),
(46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 110, 'normal'),
(47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 108, 'normal'),
(48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 107, 'normal'),
(49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 106, 'normal'),
(50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 105, 'normal'),
(51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 103, 'normal'),
(52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 102, 'normal'),
(53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 101, 'normal'),
(54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 100, 'normal'),
(55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
(56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
(57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
(58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
(59, 'file', 4, 'addon/local', 'Local install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
(60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
(61, 'file', 4, 'addon/install', 'Install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
(62, 'file', 4, 'addon/uninstall', 'Uninstall', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
(63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
(64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
(65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
(109, 'file', 2, 'general/crontab', '定时任务', 'fa fa-tasks', '', '类似于Linux的Crontab定时任务,可以按照设定的时间进行任务的执行,目前仅支持三种任务:请求URL、执行SQL、执行Shell', 1, 1507964300, 1507964300, 0, 'normal'),
(110, 'file', 109, 'general/crontab/index', '查看', 'fa fa-circle-o', '', '', 0, 1507964300, 1507964300, 0, 'normal'),
(111, 'file', 109, 'general/crontab/add', '添加', 'fa fa-circle-o', '', '', 0, 1507964300, 1507964300, 0, 'normal'),
(112, 'file', 109, 'general/crontab/edit', '编辑 ', 'fa fa-circle-o', '', '', 0, 1507964300, 1507964300, 0, 'normal'),
(113, 'file', 109, 'general/crontab/del', '删除', 'fa fa-circle-o', '', '', 0, 1507964300, 1507964300, 0, 'normal'),
(114, 'file', 109, 'general/crontab/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1507964300, 1507964300, 0, 'normal'),
(171, 'file', 0, 'qu', 'qu', 'fa fa-list', '', '', 1, 1510369336, 1510369336, 0, 'normal'),
(172, 'file', 171, 'qu/ad', '广告', 'fa fa-circle-o\r', '', '', 1, 1510369336, 1510369336, 0, 'normal'),
(173, 'file', 172, 'qu/ad/index', '查看', 'fa fa-circle-o', '', '', 0, 1510369336, 1510369336, 0, 'normal'),
(174, 'file', 172, 'qu/ad/add', '添加', 'fa fa-circle-o', '', '', 0, 1510369336, 1510369336, 0, 'normal'),
(175, 'file', 172, 'qu/ad/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1510369336, 1510369336, 0, 'normal'),
(176, 'file', 172, 'qu/ad/del', '删除', 'fa fa-circle-o', '', '', 0, 1510369336, 1510369336, 0, 'normal'),
(177, 'file', 172, 'qu/ad/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1510369336, 1510369336, 0, 'normal'),
(178, 'file', 171, 'qu/browser', '浏览记录', 'fa fa-circle-o\r', '', '', 1, 1510369351, 1510369351, 0, 'normal'),
(179, 'file', 178, 'qu/browser/index', '查看', 'fa fa-circle-o', '', '', 0, 1510369351, 1510369351, 0, 'normal'),
(180, 'file', 178, 'qu/browser/add', '添加', 'fa fa-circle-o', '', '', 0, 1510369351, 1510369351, 0, 'normal'),
(181, 'file', 178, 'qu/browser/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1510369351, 1510369351, 0, 'normal'),
(182, 'file', 178, 'qu/browser/del', '删除', 'fa fa-circle-o', '', '', 0, 1510369351, 1510369351, 0, 'normal'),
(183, 'file', 178, 'qu/browser/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1510369352, 1510369352, 0, 'normal'),
(184, 'file', 171, 'qu/buy', '购买记录', 'fa fa-circle-o\r', '', '', 1, 1510369357, 1510369357, 0, 'normal'),
(185, 'file', 184, 'qu/buy/index', '查看', 'fa fa-circle-o', '', '', 0, 1510369357, 1510369357, 0, 'normal'),
(186, 'file', 184, 'qu/buy/add', '添加', 'fa fa-circle-o', '', '', 0, 1510369357, 1510369357, 0, 'normal'),
(187, 'file', 184, 'qu/buy/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1510369357, 1510369357, 0, 'normal'),
(188, 'file', 184, 'qu/buy/del', '删除', 'fa fa-circle-o', '', '', 0, 1510369357, 1510369357, 0, 'normal'),
(189, 'file', 184, 'qu/buy/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1510369357, 1510369357, 0, 'normal'),
(190, 'file', 171, 'qu/collection', '收藏夹', 'fa fa-circle-o\r', '', '', 1, 1510369365, 1510369365, 0, 'normal'),
(191, 'file', 190, 'qu/collection/index', '查看', 'fa fa-circle-o', '', '', 0, 1510369365, 1510369365, 0, 'normal'),
(192, 'file', 190, 'qu/collection/add', '添加', 'fa fa-circle-o', '', '', 0, 1510369365, 1510369365, 0, 'normal'),
(193, 'file', 190, 'qu/collection/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1510369365, 1510369365, 0, 'normal'),
(194, 'file', 190, 'qu/collection/del', '删除', 'fa fa-circle-o', '', '', 0, 1510369365, 1510369365, 0, 'normal'),
(195, 'file', 190, 'qu/collection/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1510369365, 1510369365, 0, 'normal'),
(196, 'file', 171, 'qu/details', '商品详情', 'fa fa-circle-o\r', '', '', 1, 1510369372, 1510369372, 0, 'normal'),
(197, 'file', 196, 'qu/details/index', '查看', 'fa fa-circle-o', '', '', 0, 1510369372, 1510369372, 0, 'normal'),
(198, 'file', 196, 'qu/details/add', '添加', 'fa fa-circle-o', '', '', 0, 1510369372, 1510369372, 0, 'normal'),
(199, 'file', 196, 'qu/details/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1510369372, 1510369372, 0, 'normal'),
(200, 'file', 196, 'qu/details/del', '删除', 'fa fa-circle-o', '', '', 0, 1510369372, 1510369372, 0, 'normal'),
(201, 'file', 196, 'qu/details/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1510369372, 1510369372, 0, 'normal'),
(202, 'file', 171, 'qu/goods', '商品', 'fa fa-circle-o\r', '', '', 1, 1510369376, 1510369376, 0, 'normal'),
(203, 'file', 202, 'qu/goods/index', '查看', 'fa fa-circle-o', '', '', 0, 1510369376, 1510369376, 0, 'normal'),
(204, 'file', 202, 'qu/goods/add', '添加', 'fa fa-circle-o', '', '', 0, 1510369376, 1510369376, 0, 'normal'),
(205, 'file', 202, 'qu/goods/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1510369376, 1510369376, 0, 'normal'),
(206, 'file', 202, 'qu/goods/del', '删除', 'fa fa-circle-o', '', '', 0, 1510369376, 1510369376, 0, 'normal'),
(207, 'file', 202, 'qu/goods/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1510369376, 1510369376, 0, 'normal'),
(208, 'file', 171, 'qu/recommend', '推荐', 'fa fa-circle-o\r', '', '', 1, 1510369386, 1510369386, 0, 'normal'),
(209, 'file', 208, 'qu/recommend/index', '查看', 'fa fa-circle-o', '', '', 0, 1510369386, 1510369386, 0, 'normal'),
(210, 'file', 208, 'qu/recommend/add', '添加', 'fa fa-circle-o', '', '', 0, 1510369386, 1510369386, 0, 'normal'),
(211, 'file', 208, 'qu/recommend/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1510369386, 1510369386, 0, 'normal'),
(212, 'file', 208, 'qu/recommend/del', '删除', 'fa fa-circle-o', '', '', 0, 1510369386, 1510369386, 0, 'normal'),
(213, 'file', 208, 'qu/recommend/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1510369386, 1510369386, 0, 'normal'),
(214, 'file', 171, 'qu/share', '分享', 'fa fa-circle-o\r', '', '', 1, 1510369391, 1510369391, 0, 'normal'),
(215, 'file', 214, 'qu/share/index', '查看', 'fa fa-circle-o', '', '', 0, 1510369391, 1510369391, 0, 'normal'),
(216, 'file', 214, 'qu/share/add', '添加', 'fa fa-circle-o', '', '', 0, 1510369391, 1510369391, 0, 'normal'),
(217, 'file', 214, 'qu/share/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1510369391, 1510369391, 0, 'normal'),
(218, 'file', 214, 'qu/share/del', '删除', 'fa fa-circle-o', '', '', 0, 1510369391, 1510369391, 0, 'normal'),
(219, 'file', 214, 'qu/share/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1510369391, 1510369391, 0, 'normal'),
(220, 'file', 171, 'qu/superme', '精选', 'fa fa-circle-o\r', '', '', 1, 1510369396, 1510369396, 0, 'normal'),
(221, 'file', 220, 'qu/superme/index', '查看', 'fa fa-circle-o', '', '', 0, 1510369396, 1510369396, 0, 'normal'),
(222, 'file', 220, 'qu/superme/add', '添加', 'fa fa-circle-o', '', '', 0, 1510369396, 1510369396, 0, 'normal'),
(223, 'file', 220, 'qu/superme/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1510369396, 1510369396, 0, 'normal'),
(224, 'file', 220, 'qu/superme/del', '删除', 'fa fa-circle-o', '', '', 0, 1510369396, 1510369396, 0, 'normal'),
(225, 'file', 220, 'qu/superme/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1510369396, 1510369396, 0, 'normal'),
(226, 'file', 171, 'qu/top', '榜单', 'fa fa-circle-o\r', '', '', 1, 1510369402, 1510369402, 0, 'normal'),
(227, 'file', 226, 'qu/top/index', '查看', 'fa fa-circle-o', '', '', 0, 1510369402, 1510369402, 0, 'normal'),
(228, 'file', 226, 'qu/top/add', '添加', 'fa fa-circle-o', '', '', 0, 1510369402, 1510369402, 0, 'normal'),
(229, 'file', 226, 'qu/top/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1510369402, 1510369402, 0, 'normal'),
(230, 'file', 226, 'qu/top/del', '删除', 'fa fa-circle-o', '', '', 0, 1510369402, 1510369402, 0, 'normal'),
(231, 'file', 226, 'qu/top/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1510369402, 1510369402, 0, 'normal'),
(232, 'file', 171, 'qu/user', '用户', 'fa fa-circle-o\r', '', '', 1, 1510369406, 1510369406, 0, 'normal'),
(233, 'file', 232, 'qu/user/index', '查看', 'fa fa-circle-o', '', '', 0, 1510369406, 1510369406, 0, 'normal'),
(234, 'file', 232, 'qu/user/add', '添加', 'fa fa-circle-o', '', '', 0, 1510369406, 1510369406, 0, 'normal'),
(235, 'file', 232, 'qu/user/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1510369406, 1510369406, 0, 'normal'),
(236, 'file', 232, 'qu/user/del', '删除', 'fa fa-circle-o', '', '', 0, 1510369406, 1510369406, 0, 'normal'),
(237, 'file', 232, 'qu/user/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1510369406, 1510369406, 0, 'normal'),
(238, 'file', 171, 'qu/hot', 'Hot', 'fa fa-circle-o\r', '', '', 1, 1510555774, 1510555774, 0, 'normal'),
(239, 'file', 238, 'qu/hot/index', '查看', 'fa fa-circle-o', '', '', 0, 1510555774, 1510555774, 0, 'normal'),
(240, 'file', 238, 'qu/hot/add', '添加', 'fa fa-circle-o', '', '', 0, 1510555774, 1510555774, 0, 'normal'),
(241, 'file', 238, 'qu/hot/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1510555774, 1510555774, 0, 'normal'),
(242, 'file', 238, 'qu/hot/del', '删除', 'fa fa-circle-o', '', '', 0, 1510555774, 1510555774, 0, 'normal'),
(243, 'file', 238, 'qu/hot/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1510555774, 1510555774, 0, 'normal'),
(244, 'file', 171, 'qu/shistory', 'Shistory', 'fa fa-circle-o\r', '', '', 1, 1510555778, 1510555778, 0, 'normal'),
(245, 'file', 244, 'qu/shistory/index', '查看', 'fa fa-circle-o', '', '', 0, 1510555778, 1510555778, 0, 'normal'),
(246, 'file', 244, 'qu/shistory/add', '添加', 'fa fa-circle-o', '', '', 0, 1510555778, 1510555778, 0, 'normal'),
(247, 'file', 244, 'qu/shistory/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1510555778, 1510555778, 0, 'normal'),
(248, 'file', 244, 'qu/shistory/del', '删除', 'fa fa-circle-o', '', '', 0, 1510555778, 1510555778, 0, 'normal'),
(249, 'file', 244, 'qu/shistory/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1510555778, 1510555778, 0, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_block`
--

CREATE TABLE `fa_block` (
  `id` smallint(8) UNSIGNED NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `content` mediumtext NOT NULL COMMENT '内容',
  `createtime` int(10) NOT NULL COMMENT '添加时间',
  `updatetime` int(10) NOT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区块表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_block`
--

INSERT INTO `fa_block` (`id`, `type`, `name`, `title`, `image`, `url`, `content`, `createtime`, `updatetime`, `status`) VALUES
(1, 'focus', 'focus', '幻灯图片1', '/assets/addons/cms/img/focus/1.jpg', 'http://www.fastadmin.net', '111', 0, 0, 'normal'),
(2, 'focus', 'focus', '幻灯图片2', '/assets/addons/cms/img/focus/2.jpg', 'http://www.fastadmin.net', '222', 0, 0, 'normal'),
(3, 'focus', 'focus', '幻灯图片3', '/assets/addons/cms/img/focus/3.jpg', 'http://www.fastadmin.net', '333', 0, 0, 'normal'),
(4, 'other', 'contactus', '联系我们', '', '', '', 0, 0, 'normal'),
(6, 'other', 'footer', '底部链接', '', '', '<div class="col-md-3 col-sm-3">\n                            <div class="footer-logo">\n                                <a href=“#”><i class="fa fa-bookmark"></i></a>\n                            </div>\n                            <p class="copyright"><small>© 2017. All Rights Reserved. <br>\n                                    FastAdmin\n                                </small>\n                            </p>\n                        </div>\n                        <div class="col-md-5 col-md-push-1 col-sm-5 col-sm-push-1">\n                            <div class="row">\n                                <div class="col-md-4 col-sm-4">\n                                    <ul class="links">\n                                        <li><a href="#">关于我们</a></li>\n                                        <li><a href="#">发展历程</a></li>\n                                        <li><a href="#">服务项目</a></li>\n                                        <li><a href="#">团队成员</a></li>\n                                    </ul>\n                                </div>\n                                <div class="col-md-4 col-sm-4">\n                                    <ul class="links">\n                                        <li><a href="#">新闻</a></li>\n                                        <li><a href="#">资讯</a></li>\n                                        <li><a href="#">推荐</a></li>\n                                        <li><a href="#">博客</a></li>\n                                    </ul>\n                                </div>\n                                <div class="col-md-4 col-sm-4">\n                                    <ul class="links">\n                                        <li><a href="#">服务</a></li>\n                                        <li><a href="#">圈子</a></li>\n                                        <li><a href="#">论坛</a></li>\n                                        <li><a href="#">广告</a></li>\n                                    </ul>\n                                </div>\n                            </div>\n                        </div>\n                        <div class="col-md-3 col-sm-3 col-md-push-1 col-sm-push-1">\n                            <div class="footer-social">\n                                <a href="#"><i class="fa fa-weibo"></i></a>\n                                <a href="#"><i class="fa fa-qq"></i></a>\n                                <a href="#"><i class="fa fa-wechat"></i></a>\n                            </div>\n                        </div>', 0, 0, 'normal'),
(7, 'other', 'bannerad', '通栏广告', '/assets/addons/cms/img/banner/1.jpg', 'http://www.fastadmin.net', '', 0, 0, 'normal'),
(8, 'other', 'sidebarad1', '边栏广告1', '/assets/addons/cms/img/sidebar/1.jpg', 'http://www.fastadmin.net', '', 0, 0, 'normal'),
(9, 'other', 'sidebarad2', '边栏广告2', '/assets/addons/cms/img/sidebar/2.jpg', 'http://www.fastadmin.net', '', 0, 0, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_blog_category`
--

CREATE TABLE `fa_blog_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父分类ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '分类名称',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '分类昵称',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '分类标志',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客分类表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_blog_category`
--

INSERT INTO `fa_blog_category` (`id`, `pid`, `name`, `nickname`, `flag`, `image`, `keywords`, `description`, `diyname`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 0, '默认分类', 'default', '', '/assets/img/qrcode.png', '', '', '', 1502112587, 1502112587, 0, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_blog_comment`
--

CREATE TABLE `fa_blog_comment` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类ID',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '父ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `website` varchar(100) NOT NULL DEFAULT '' COMMENT '网址',
  `content` text NOT NULL COMMENT '内容',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论数',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(50) NOT NULL DEFAULT '' COMMENT 'User Agent',
  `subscribe` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '订阅',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客评论表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `fa_blog_comment`
--

INSERT INTO `fa_blog_comment` (`id`, `post_id`, `pid`, `username`, `email`, `website`, `content`, `comments`, `ip`, `useragent`, `subscribe`, `createtime`, `updatetime`, `status`) VALUES
(1, 4, 0, 'Lily', '', '', '博客的出现才是近几年的事情，但是要书写博客历史，却不是一件轻松的事情。许多史料必须像挖掘“古董”一样去求证，而且分歧和争议颇多。', 0, '', '', 0, 1502112587, 1502112587, 'normal'),
(2, 4, 0, '约翰', '', '', '博客天然的草根性，也决定了人们很难来认定一个正式的“博客之父”，也没有人敢于戴上这顶帽子，否则，一定会打得头破血流。', 0, '', '', 0, 1502112587, 1502112587, 'normal'),
(3, 4, 0, '小杜', '', '', 'Blog中最简单的形式。单个的作者对于特定的话题提供相关的资源，发表简短的评论。', 0, '', '', 0, 1502112587, 1502112587, 'normal'),
(4, 4, 2, 'John', '', '', '按照博客主人的知名度、博客文章受欢迎的程度，可以将博客分为名人博客、一般博客、热门博客等。', 0, '', '', 0, 1502112587, 1502112587, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_blog_post`
--

CREATE TABLE `fa_blog_post` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类ID',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `summary` varchar(1500) NOT NULL DEFAULT '' COMMENT '摘要',
  `content` text NOT NULL COMMENT '内容',
  `thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '大图',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点击',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论数',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客日志表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `fa_blog_post`
--

INSERT INTO `fa_blog_post` (`id`, `category_id`, `flag`, `title`, `summary`, `content`, `thumb`, `image`, `keywords`, `description`, `views`, `comments`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 1, '', '关于FastAdmin', '<p>FastAdmin是一款基于ThinkPHP5和Bootstrap的极速后台开发框架，其强大的CRUD一键生成功能和丰富的插件扩展，让你的后台开发更加简单、快速。</p>', '<p>FastAdmin是一款基于ThinkPHP5和Bootstrap的极速后台开发框架，其强大的CRUD一键生成功能和丰富的插件扩展，让你的后台开发更加简单、快速。</p>', '/assets/addons/blog/img/thumb.jpg', '', '', '', 113, 0, 1502112587, 1502112587, 0, 'normal'),
(2, 1, '', '博客的来源', '<p>        博客最早是由Jorn Barger在1997年12月提出博客这个名称，但是在1998年，互联网上的博客网站却屈指可数。那时，Infosift的编辑Jesse J.Garrett想列举一个博客类似站点的名单，便在互联网上开始了艰难的搜索， 终于在1998年的12月，他的搜集好了部分网站的名单。他把这份名单发给了Cameron Barrett，Cameron觉得这份名单非常有用，就将它在Camworld网站上公布于众。其它的博客站点维护者发现此举后，也纷纷把自己的网址和网站名称、主要特色都发了过来，这个名单也就日渐丰富。到了1999年初，Jesse的“完全博客站点”名单所列的站点已达23个。<br></p>', '<div label-module="para"><p>&nbsp; &nbsp; &nbsp; &nbsp; 博客最早是由Jorn Barger在1997年12月提出博客这个名称，但是在1998年，互联网上的博客网站却屈指可数。那时，Infosift的编辑Jesse J.Garrett想列举一个博客类似站点的名单，便在互联网上开始了艰难的搜索， 终于在1998年的12月，他的搜集好了部分网站的名单。他把这份名单发给了Cameron Barrett，Cameron觉得这份名单非常有用，就将它在Camworld网站上公布于众。其它的博客站点维护者发现此举后，也纷纷把自己的网址和网站名称、主要特色都发了过来，这个名单也就日渐丰富。到了1999年初，Jesse的“完全博客站点”名单所列的站点已达23个。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;由于Cameron与Jesse共同维护的博客站点列表既有趣又易于阅读，吸引了很多人的眼球。在这种情况下，Peter Merholz宣称：“这个新鲜事物必将引起大多数人的注意。作为未来的一个常用词语，web-log将不可避免地被简称为blog，而那些编写网络日志的人，也就顺理成章地成为blogger——博客”。这代表着博客被正式命名。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随着博客数量的增多，每个博客网站上编写的网络日志的内容也混杂起来，以至把每一个新出的站点主要内容和特色都不可能搞清楚。Cameron后来就只在网站上登载熟悉的博客站点了。时隔不久，Brigitte Eaton也搜集出了一个名叫“Eaton网络门户”的博客站点名单，并且提出应该以日期为基础组织内容。这也建立了blog分类排列的一大标准。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1999年7月，一个专门制作博客站点的“Pitas”免费工具软件发布了，这对于博客站点的快速搭建起着很关键的作用。随后，上百个同类工具也如雨后春笋般制作出来。这种工具对于加速建立博客站点的数量，是意义重大的。同年的8月份，Pyra发布了Blogger网站，Groksoup也投入运营，使用这些企业所提供的简单的基于互联网的工具，博客站点的数量终于出现了一种爆炸性增长。1999年末，软件研发商Dave Winer向大家推荐Edit This Page网站，Jeff A. Campbell发布了Velocinews网站。所有的这些服务都是免费的，他们的目的也很明确：让更多的人成为博客，来网上发表意见和见解。</p><div label-module="para"><br></div></div>', '/assets/addons/blog/img/thumb.jpg', '', '', '', 41, 0, 1502111289, 1502111289, 0, 'normal'),
(3, 1, '', '博客的崛起', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 这几年，对于所有新闻媒体来说，都品尝到了技术变革的滋味。如今，再没有任何人会否认互联网对媒体带来的革命，但是，好像也没有多少人感知到互联网的神奇：颠覆性的力量似乎并没有来到人间。所有的核心在于时间。对于性急的人来说，时间如同缓慢的河流，对于从容的人来说，时间又是急流。互联网的力量的确还没有充分施展，因为互联网的商业化起始，到今天仅仅才10年；互联网作为一种新的媒体方式，从尝试到今天，也刚刚跨过10年。</p>', '<p>        这几年，对于所有新闻媒体来说，都品尝到了技术变革的滋味。如今，再没有任何人会否认互联网对媒体带来的革命，但是，好像也没有多少人感知到互联网的神奇：颠覆性的力量似乎并没有来到人间。</p><p>        所有的核心在于时间。对于性急的人来说，时间如同缓慢的河流，对于从容的人来说，时间又是急流。互联网的力量的确还没有充分施展，因为互联网的商业化起始，到今天仅仅才10年；互联网作为一种新的媒体方式，从尝试到今天，也刚刚跨过10年。<br>        对于一种全新的媒体形式来说，10年实在过于短暂。但是，10年也足以让人们感受到势不可挡的力量，以及依然静静潜伏着的冲击力。而今，随着博客的崭露头角，网络媒体异常的力量开始展现了，声势逐渐发大。虽然，博客依然在大多数人的视野之外，但是，他们改变历史的征程已经启动。<br>1998年，个人博客网站“德拉吉报道”率先捅出克林顿莱温斯基绯闻案；<br>2001年，911事件使得博客成为重要的新闻之源，而步入主流；<br>2002年12月，多数党领袖洛特的不慎之言被博客网站盯住，而丢掉了乌纱帽；<br>2003年，围绕新闻报道的传统媒体和互联网上的伊拉克战争也同时开打，美国传统媒体公信力遭遇空前质疑，博客大获全胜；<br>2003年6月，《纽约时报》执行主编和总编辑也被“博客”揭开的真相而下台，引爆了新闻媒体史上最大的丑闻之一；<br>2004年4月，轰动一时的Gmail测试者大部分从bloggers中产生；<br>……<br></p><p>这一系列发源于博客世界的颠覆性力量，不但塑造着博客自身全新的形象，而且，也在深刻地改变着媒体的传统和未来走向。</p>', '/assets/addons/blog/img/thumb.jpg', '', '', '', 58, 0, 1502112074, 1502112074, 0, 'normal'),
(4, 1, '', '博客的时代正在到来', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 全世界每天传播的媒体内容，有一半是由6大媒体巨头所控制。其利益驱动、意识形态以及传统的审查制度，使得这些经过严重加工处理的内容已经越来越不适应人们的需求。媒体的工业化，内容出口的工厂化，都在严重影响其发展。<br>比如，以美联社为例，有近4000人专业记者，每天“制造并出厂”2000万字的内容，每天发布在8500多种报纸、杂志和广播中，把读者当作“信息动物”一样。这种大教堂式的模式主导了整个媒体世界。这时，以个人为中心的博客潮流却开始有力冲击传统媒体，尤其是对新闻界多年形成的传统观念和道德规范。<br></p>', '<p>        全世界每天传播的媒体内容，有一半是由6大媒体巨头所控制。其利益驱动、意识形态以及传统的审查制度，使得这些经过严重加工处理的内容已经越来越不适应人们的需求。媒体的工业化，内容出口的工厂化，都在严重影响其发展。<br>比如，以美联社为例，有近4000人专业记者，每天“制造并出厂”2000万字的内容，每天发布在8500多种报纸、杂志和广播中，把读者当作“信息动物”一样。这种大教堂式的模式主导了整个媒体世界。这时，以个人为中心的博客潮流却开始有力冲击传统媒体，尤其是对新闻界多年形成的传统观念和道德规范。<br>        博客是一种满足“五零”条件(零编辑、零技术、零体制、零成本、零形式)而实现的“零进入壁垒”的网上个人出版方式，从媒体价值链最重要的三个环节：作者、内容和读者三大层次，实现了“源代码的开放”。并同时在道德规范、运作机制和经济规律等层次，将逐步完成体制层面的真正开放，使未来媒体世界完成从大教堂模式到集市模式的根本转变。<br>        博客的出现集中体现了互联网时代媒体界所体现的商业化垄断与非商业化自由，大众化传播与个性化(分众化，小众化)表达，单向传播与双向传播3个基本矛盾、方向和互动。这几个矛盾因为博客引发的开放源代码运动，至少在技术层面上得到了根本的解决。</p>\r\n                <p><img src="/assets/addons/blog/img/thumb.jpg" alt=""></p>', '/assets/addons/blog/img/thumb.jpg', '', '', '', 71, 4, 1502111626, 1502111626, 0, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_calendar`
--

CREATE TABLE `fa_calendar` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL COMMENT '管理员ID',
  `title` varchar(100) NOT NULL COMMENT '任务标题',
  `url` varchar(100) NOT NULL COMMENT '链接',
  `starttime` int(10) NOT NULL COMMENT '开始时间',
  `endtime` int(10) NOT NULL COMMENT '结束时间',
  `background` varchar(10) NOT NULL COMMENT '背景颜色',
  `classname` varchar(30) NOT NULL COMMENT '自定义类名',
  `createtime` int(10) NOT NULL COMMENT '创建时间',
  `updatetime` int(10) NOT NULL COMMENT '更新时间',
  `status` enum('normal','hidden','expired','completed') NOT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日历表';

--
-- 转存表中的数据 `fa_calendar`
--

INSERT INTO `fa_calendar` (`id`, `admin_id`, `title`, `url`, `starttime`, `endtime`, `background`, `classname`, `createtime`, `updatetime`, `status`) VALUES
(148, 1, '外部链接事件', 'http://www.baidu.com', 1505059200, 1505059200, '#f012be', '', 1505125111, 1505125111, 'normal'),
(149, 1, '新选项卡事件', 'dashboard', 1505235600, 1505235600, '#e74c3c', 'btn-addtabs', 1505125095, 1505125559, 'normal'),
(150, 1, '弹窗事件', 'general/profile', 1505498400, 1505539800, '#0073b7', 'btn-dialog', 1505125066, 1505125555, 'completed'),
(151, 1, '普通事件', '', 1506009600, 1506009600, '#18bc9c', '', 1505125044, 1505125044, 'normal'),
(152, 1, '普通事件', '', 1505244600, 1505428200, '#18bc9c', '', 1505125044, 1505125575, 'normal'),
(153, 1, '新选项卡事件', 'dashboard', 1506009600, 1506009600, '#e74c3c', 'btn-addtabs', 1505125095, 1505125095, 'normal'),
(154, 1, '外部链接事件', 'http://www.baidu.com', 1506009600, 1506009600, '#f012be', '', 1505125111, 1505125111, 'normal'),
(155, 1, '新选项卡事件', 'dashboard', 1505491200, 1505491200, '#e74c3c', 'btn-addtabs', 1505125095, 1505125095, 'normal'),
(156, 1, '新选项卡事件', 'dashboard', 1504886400, 1504886400, '#e74c3c', 'btn-addtabs', 1505125095, 1505125095, 'normal'),
(157, 1, '新选项卡事件', 'dashboard', 1504713600, 1505059200, '#e74c3c', 'btn-addtabs', 1505125095, 1505125631, 'completed'),
(158, 1, '弹窗事件', 'general/profile', 1504713600, 1504713600, '#0073b7', 'btn-dialog', 1505125066, 1505125066, 'completed'),
(159, 1, '弹窗事件', 'general/profile', 1505232000, 1505232000, '#0073b7', 'btn-dialog', 1505125066, 1505125066, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_calendar_event`
--

CREATE TABLE `fa_calendar_event` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL COMMENT '管理员ID',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '任务标题',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `background` varchar(10) NOT NULL COMMENT '背景颜色',
  `classname` varchar(30) NOT NULL COMMENT '自定义类名',
  `createtime` int(10) NOT NULL COMMENT '添加时间',
  `updatetime` int(10) NOT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='事件表';

--
-- 转存表中的数据 `fa_calendar_event`
--

INSERT INTO `fa_calendar_event` (`id`, `admin_id`, `title`, `url`, `background`, `classname`, `createtime`, `updatetime`) VALUES
(42, 1, '普通事件', '', '#18bc9c', '', 1505125044, 1505125044),
(43, 1, '弹窗事件', 'general/profile', '#0073b7', 'btn-dialog', 1505125066, 1505125066),
(44, 1, '新选项卡事件', 'dashboard', '#e74c3c', 'btn-addtabs', 1505125095, 1505125095),
(45, 1, '外部链接事件', 'http://www.baidu.com', '#f012be', '', 1505125111, 1505125111);

-- --------------------------------------------------------

--
-- 表的结构 `fa_category`
--

CREATE TABLE `fa_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_category`
--

INSERT INTO `fa_category` (`id`, `pid`, `type`, `name`, `nickname`, `flag`, `image`, `keywords`, `description`, `diyname`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1495262190, 1495262190, 1, 'normal'),
(2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1495262244, 1495262244, 2, 'normal'),
(3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1495262288, 1495262288, 3, 'normal'),
(4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1495262317, 1495262317, 4, 'normal'),
(5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1495262336, 1499681850, 5, 'normal'),
(6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1495262357, 1495262357, 6, 'normal'),
(7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1495262391, 1495262391, 7, 'normal'),
(8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1495262424, 1495262424, 8, 'normal'),
(9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1495262456, 1495262456, 9, 'normal'),
(10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1495262487, 1495262487, 10, 'normal'),
(11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1495262515, 1495262515, 11, 'normal'),
(12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1497015727, 1497015727, 12, 'normal'),
(13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1497015738, 1497015738, 13, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_channel`
--

CREATE TABLE `fa_channel` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('channel','page','link','list') NOT NULL COMMENT '类型',
  `model_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '模型ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `image` varchar(100) NOT NULL COMMENT '图片',
  `keywords` varchar(255) NOT NULL COMMENT '关键字',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `diyname` varchar(30) NOT NULL COMMENT '自定义名称',
  `outlink` varbinary(255) NOT NULL DEFAULT '' COMMENT '外部链接',
  `items` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文章数量',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `channeltpl` varchar(100) NOT NULL DEFAULT '' COMMENT '栏目页模板',
  `listtpl` varchar(100) NOT NULL COMMENT '列表页模板',
  `showtpl` varchar(100) NOT NULL COMMENT '详情页模板',
  `pagesize` smallint(5) NOT NULL COMMENT '分页大小',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_channel`
--

INSERT INTO `fa_channel` (`id`, `type`, `model_id`, `parent_id`, `name`, `image`, `keywords`, `description`, `diyname`, `outlink`, `items`, `weigh`, `channeltpl`, `listtpl`, `showtpl`, `pagesize`, `createtime`, `updatetime`, `status`) VALUES
(34, 'channel', 7, 0, '新闻中心', '', '', '', 'news', '', 0, 9, 'channel.html', '', '', 10, 1508990697, 1508992553, 'normal'),
(35, 'list', 7, 34, '新闻1', '', '', '', 'news1', '', 6, 5, 'channel.html', 'list_news.html', 'show_news.html', 10, 1508990707, 1508992563, 'normal'),
(36, 'list', 7, 35, '新闻1-1', '', '', '', 'news1-1', '', 2, 8, 'channel.html', 'list_news.html', 'show_news.html', 10, 1508990716, 1508992574, 'normal'),
(37, 'channel', 7, 0, '产品中心', '', '', '', 'product', '', 0, 10, 'channel.html', '', '', 10, 1508992541, 1508992541, 'normal'),
(38, 'list', 8, 37, '产品1', '', '', '', 'product1', '', 2, 4, 'channel.html', 'list_product.html', 'show_product.html', 10, 1508992598, 1508992598, 'normal'),
(39, 'list', 8, 38, '产品1-1', '', '', '', 'product1-1', '', 0, 7, 'channel.html', 'list_product.html', 'show_product.html', 10, 1508992623, 1508992623, 'normal'),
(40, 'link', 7, 0, '关于我们', '', '', '', 'aboutus', 0x2f702f61626f757475732e68746d6c, 0, 1, 'channel.html', '', '', 10, 1508994681, 1508994681, 'normal'),
(41, 'link', 7, 0, '官网首页', '', '', '', 'official', 0x687474703a2f2f7777772e6661737461646d696e2e6e6574, 0, 6, 'channel.html', '', '', 10, 1508994753, 1508994753, 'normal'),
(42, 'link', 7, 0, '交流社区', '', '', '', 'forum', 0x687474703a2f2f666f72756d2e6661737461646d696e2e6e6574, 0, 3, 'channel.html', '', '', 10, 1508994772, 1508994772, 'normal'),
(43, 'link', 7, 0, '文档', '', '', '', 'docs', 0x687474703a2f2f646f632e6661737461646d696e2e6e6574, 0, 2, 'channel.html', '', '', 10, 1508994788, 1508994788, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_config`
--

CREATE TABLE `fa_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统配置';

--
-- 转存表中的数据 `fa_config`
--

INSERT INTO `fa_config` (`id`, `name`, `group`, `title`, `tip`, `type`, `value`, `content`, `rule`, `extend`) VALUES
(1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', 'FastAdmin', '', 'required', ''),
(2, 'beian', 'basic', 'Beian', '粤ICP备15054802号-4', 'string', '', '', '', ''),
(3, 'cdnurl', 'basic', 'Cdn url', '如果使用CDN云储存请配置该值', 'string', '', '', '', ''),
(4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', ''),
(5, 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', ''),
(6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', ''),
(7, 'languages', 'basic', 'Languages', '', 'array', '{"backend":"zh-cn","frontend":"zh-cn"}', '', 'required', ''),
(8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', ''),
(9, 'categorytype', 'dictionary', 'Cateogry type', '', 'array', '{"default":"Default","page":"Page","article":"Article","test":"Test"}', '', '', ''),
(10, 'configgroup', 'dictionary', 'Config group', '', 'array', '{"basic":"Basic","email":"Email","dictionary":"Dictionary","user":"User","example":"Example"}', '', '', ''),
(11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '["Please select","SMTP","Mail"]', '', ''),
(12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', ''),
(13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', ''),
(14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '904693433@qq.com', '', '', ''),
(15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'ygojtjqghsivbdbi', '', '', ''),
(16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '["None","TLS","SSL"]', '', ''),
(17, 'mail_from', 'email', 'Mail from', '', 'string', '904693433@qq.com', '', '', ''),
(18, 'cookie', 'dictionary', 'cookie', 'cookie 值', 'text', '__cfduid=d8932a40c7f2ea86d748382029a6157371507897948; PHPSESSID=fktedq95sdc54fjg9mg88cafn3', '', '', ''),
(19, 'basicmoney', 'dictionary', '下注底数(2代表角,1代表元)', '下注底数(2代表角,1代表元)', 'select', '2', '["2","1"]', '', ''),
(20, 'lixucount', 'dictionary', '到达连出次数下注', '到达连出次数下注', 'number', '8', '', '', ''),
(21, 'bei', 'dictionary', '下注倍数', '下注倍数', 'number', '1', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `fa_crontab`
--

CREATE TABLE `fa_crontab` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '事件类型',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '事件标题',
  `content` text NOT NULL COMMENT '事件内容',
  `schedule` varchar(100) NOT NULL DEFAULT '' COMMENT 'Crontab格式',
  `sleep` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '延迟秒数执行',
  `maximums` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最大执行次数 0为不限',
  `executes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '已经执行的次数',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `begintime` int(10) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '结束时间',
  `executetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后执行时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` enum('completed','expired','hidden','normal') NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_crontab`
--

INSERT INTO `fa_crontab` (`id`, `type`, `title`, `content`, `schedule`, `sleep`, `maximums`, `executes`, `createtime`, `updatetime`, `begintime`, `endtime`, `executetime`, `weigh`, `status`) VALUES
(1, 'url', '请求FastAdmin', 'http://www.fastadmin.net', '* * * * *', 0, 0, 13548, 1497070825, 1507967530, 1483200000, 1546272000, 1501253101, 1, 'hidden'),
(2, 'sql', '查询一条SQL', 'SELECT 1;', '* * * * *', 0, 0, 13548, 1497071095, 1507967533, 1483200000, 1546272000, 1501253101, 2, 'hidden'),
(3, 'url', '定时获取全天时时彩数据', 'http://yangqihua.com/allfastadmin/public/index.php/admin/cai/quan/getData', '*/1 * * * *', 0, 0, 444, 1507967497, 1507995541, 1507967480, 1704527482, 1507995541, 0, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_fields`
--

CREATE TABLE `fa_fields` (
  `id` smallint(5) UNSIGNED NOT NULL,
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
  `maximum` smallint(6) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最大数量',
  `extend` varchar(30) NOT NULL COMMENT '扩展信息',
  `weigh` int(10) NOT NULL COMMENT '排序',
  `createtime` int(10) NOT NULL COMMENT '添加时间',
  `updatetime` int(10) NOT NULL COMMENT '更新时间',
  `isfilter` tinyint(1) NOT NULL COMMENT '筛选',
  `status` enum('normal','hidden') NOT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模型字段表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_fields`
--

INSERT INTO `fa_fields` (`id`, `model_id`, `name`, `type`, `title`, `content`, `defaultvalue`, `rule`, `msg`, `ok`, `tip`, `decimals`, `length`, `minimum`, `maximum`, `extend`, `weigh`, `createtime`, `updatetime`, `isfilter`, `status`) VALUES
(136, 7, 'author', 'string', '作者', 'value1|title1\r\nvalue2|title2', '', '', '', '', '', 0, 255, 0, 0, '', 136, 1508990735, 1508991985, 1, 'normal'),
(137, 7, 'age', 'select', '年龄', '1-18|1-18岁\r\n19-29|19-29岁\r\n30-39|30-39岁', '', 'required', '', '', '', 0, 255, 0, 0, '', 137, 1508990746, 1508992045, 1, 'normal'),
(138, 7, 'gender', 'radio', '性别', 'male|男\r\nfemale|女', '', 'required', '', '', '', 0, 255, 0, 0, '', 138, 1508992093, 1508992093, 1, 'normal'),
(139, 8, 'productdata', 'images', '产品列表', 'value1|title1\r\nvalue2|title2', '', 'required', '', '', '', 0, 1500, 0, 20, '', 139, 1508992518, 1508992518, 1, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_model`
--

CREATE TABLE `fa_model` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` char(30) NOT NULL COMMENT '模型名称',
  `table` char(20) NOT NULL COMMENT '表名',
  `fields` text NOT NULL COMMENT '字段列表',
  `channeltpl` varchar(30) NOT NULL COMMENT '栏目页模板',
  `listtpl` varchar(30) NOT NULL COMMENT '列表页模板',
  `showtpl` varchar(30) NOT NULL COMMENT '详情页模板',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `setting` text NOT NULL COMMENT '模型配置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内容模型表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_model`
--

INSERT INTO `fa_model` (`id`, `name`, `table`, `fields`, `channeltpl`, `listtpl`, `showtpl`, `createtime`, `updatetime`, `setting`) VALUES
(7, '新闻', 'addonnews', 'author,age', 'channel.html', 'list_news.html', 'show_news.html', 1508990659, 1508992045, ''),
(8, '产品', 'addonproduct', '', 'channel.html', 'list_product.html', 'show_product.html', 1508992445, 1508992445, '');

-- --------------------------------------------------------

--
-- 表的结构 `fa_page`
--

CREATE TABLE `fa_page` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `category_id` int(10) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `type` varchar(50) NOT NULL COMMENT '类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `content` text NOT NULL COMMENT '内容',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点击',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论',
  `diyname` varchar(50) NOT NULL COMMENT '自定义',
  `showtpl` varchar(50) NOT NULL COMMENT '视图模板',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单页表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `fa_page`
--

INSERT INTO `fa_page` (`id`, `category_id`, `type`, `title`, `keywords`, `description`, `flag`, `image`, `content`, `icon`, `views`, `comments`, `diyname`, `showtpl`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(28, 0, 'page', '基于ThinkPHP5和Bootstrap的极速后台开发框架', 'fds', 'fdsfdsdsf', '', 'fds', '<p>基于ThinkPHP5和Bootstrap进行二次开发,手机、平板、PC均自动适配,无需要担心兼容性问题</p>', '', 0, 0, 'aboutus', 'page', 1508933935, 1508934150, 28, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_tags`
--

CREATE TABLE `fa_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '标签名称',
  `archives` text NOT NULL COMMENT '文档ID集合',
  `nums` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签表';

--
-- 转存表中的数据 `fa_tags`
--

INSERT INTO `fa_tags` (`id`, `name`, `archives`, `nums`) VALUES
(30, 'FastAdmin', '85,84,89,90', 4),
(31, '极速', '85,84', 2),
(32, '新闻1', '84,93', 2),
(33, '产品1', '89', 1),
(34, '产品2', '90', 1),
(35, '新闻2', '91,92,94', 3);

-- --------------------------------------------------------

--
-- 表的结构 `fa_test`
--

CREATE TABLE `fa_test` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `admin_id` int(10) NOT NULL COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
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
  `price` float(10,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `fa_test`
--

INSERT INTO `fa_test` (`id`, `admin_id`, `category_id`, `category_ids`, `week`, `flag`, `genderdata`, `hobbydata`, `title`, `content`, `image`, `images`, `attachfile`, `keywords`, `description`, `city`, `price`, `views`, `startdate`, `activitytime`, `year`, `times`, `refreshtime`, `createtime`, `updatetime`, `weigh`, `switch`, `status`, `state`) VALUES
(1, 0, 12, '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', 0.00, 0, '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1499682285, 1499682526, 1499682526, 0, 1, 'normal', '1');

-- --------------------------------------------------------

--
-- 表的结构 `qu_ad`
--

CREATE TABLE `qu_ad` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `img_url` varchar(1024) DEFAULT NULL COMMENT '图片url',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(11) DEFAULT '1',
  `weight` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告';

--
-- 转存表中的数据 `qu_ad`
--

INSERT INTO `qu_ad` (`id`, `goods_id`, `desc`, `img_url`, `createtime`, `updatetime`, `is_delete`, `weight`) VALUES
(1, 1, '懒人福利', 'ad_pics/1/d817e8ffbf8660ccce6d0cdc84fc846ae705fd7a.jpg', 1511078449, 1511078449, 1, 0),
(2, 27, '表白神器', 'ad_pics/27/e2776e976257c7ef70e37ba283a81d48.jpg', 1511078449, 1511078449, 1, 0),
(3, 3, '真正的时间从指尖流逝', 'ad_pics/3/55ee8934338bf.jpg', 1511078449, 1511078449, 1, 0),
(4, 36, '创意开瓶器', 'ad_pics/36/169b831f517cd7ebb8aa516163a502e3.jpg', 1511078450, 1511078450, 1, 0),
(5, 37, '无聊？就玩无聊盒子', 'ad_pics/37/818a59764011d6eeb89a192e150f466a.jpg', 1511078450, 1511078450, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `qu_browser`
--

CREATE TABLE `qu_browser` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `user_id` int(11) NOT NULL,
  `is_delete` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='浏览记录';

-- --------------------------------------------------------

--
-- 表的结构 `qu_buy`
--

CREATE TABLE `qu_buy` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `user_id` int(11) NOT NULL,
  `is_delete` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购买记录';

-- --------------------------------------------------------

--
-- 表的结构 `qu_collection`
--

CREATE TABLE `qu_collection` (
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `is_delete` int(11) DEFAULT '1' COMMENT '0代表取消收藏，1代表收藏\n',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏夹';

-- --------------------------------------------------------

--
-- 表的结构 `qu_details`
--

CREATE TABLE `qu_details` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) DEFAULT NULL COMMENT '商品逻辑外键',
  `img_urls` text COMMENT '详情图片url集合',
  `video_urls` text COMMENT '详情视频url集合',
  `desc` text NOT NULL COMMENT '文案',
  `tb_link` text NOT NULL COMMENT '淘宝链接',
  `jd_link` text COMMENT '京东链接',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(11) DEFAULT '1',
  `category` int(11) NOT NULL DEFAULT '1' COMMENT '1代表京东，2代表淘宝，3代表其他'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品详情';

--
-- 转存表中的数据 `qu_details`
--

INSERT INTO `qu_details` (`id`, `goods_id`, `img_urls`, `video_urls`, `desc`, `tb_link`, `jd_link`, `createtime`, `updatetime`, `is_delete`, `category`) VALUES
(1, 1, '[{"desc":"","url":"detail_pics\\/1\\/9541c6ddb80275b4f72e4b45a7904189.jpg"},{"desc":"","url":"detail_pics\\/1\\/9bc8d53377a02af113ddb496f1be1c10.jpg"},{"desc":"","url":"detail_pics\\/1\\/a2647851c788f78fa434ef24f2d54a24.jpg"},{"desc":"","url":"detail_pics\\/1\\/b4c7c0432d1d59b7405f328ef516658b.jpg"}]', '', '["有时候偷懒也是一种享受。","折射眼睛是躺着看电影，看书，追剧的神器。"]', 'https://s.click.taobao.com/Bxnw8Yw;￥gCdB0hEgm5A￥', NULL, 1510673507, 1510753995, 1, 1),
(2, 2, '[{"desc":"","url":"detail_pics\\/2\\/2fb9b051eb208244f05e89ae3594db06.jpg"},{"desc":"","url":"detail_pics\\/2\\/3b58ab66e417bbfd7e7d1c038fb493fa.jpg"},{"desc":"","url":"detail_pics\\/2\\/64d8374d3ce10cbe771fd227652b0131.jpg"},{"desc":"","url":"detail_pics\\/2\\/e73780ee098008ef3c6def1a46e2f538.jpg"}]', NULL, '["随着智能手机的普及，无论是旅途中，休闲时都会用手机看电影，上网。手机屏幕增大器，不会因为放大而不清晰，轻松享受大屏感觉。","在路途中，让漫漫的路途变得轻松简单；","在卧室里，让生活变得更温馨舒适。"]', 'https://s.click.taobao.com/Mols8Yw;￥C29O0hEkfVY￥', NULL, 1510673507, 1510753996, 1, 1),
(3, 3, '[{"desc":"","url":"detail_pics\\/3\\/4966df6f62e77e2722c248a5a0ed2421.jpg"},{"desc":"","url":"detail_pics\\/3\\/897f1f59d41af56b2ee4f788f5cf797d.jpg"},{"desc":"","url":"detail_pics\\/3\\/cd490c8deeef641e36d47724bfb8cff6.jpg"},{"desc":"","url":"detail_pics\\/3\\/d2ea44a3954d4dec982309300432be03.jpg"}]', NULL, '["时间戒指是一款将手表和戒指合二为一的产品，采用独特的时间显示方式吸引着无数人的目光.","时间戒指融入了诸多先进技术，如超薄电池和超节能LED 等，并将它的科技感淋漓尽致地表现出来。大家来随意感受一下，什么叫做时间从指间流逝。"]', 'https://s.click.taobao.com/10Wr8Yw;￥UvJ90hEm4Hx￥', NULL, 1510673507, 1510753996, 1, 1),
(4, 4, '[{"desc":"","url":"detail_pics\\/4\\/623f6bfa4a8eb26a829186d354730a48.jpg"},{"desc":"","url":"detail_pics\\/4\\/65d3fba54d11f5ce579543096b502224.jpg"},{"desc":"","url":"detail_pics\\/4\\/8801184616d5164403d0d701a02e9db8.jpg"},{"desc":"","url":"detail_pics\\/4\\/882d039f29fdf7ded0d43ecf993b643c.jpg"}]', NULL, '["想必所有人的键盘在使用一段时间之后，都会脏的不成样了吧~就算平时比较注意，尽量不在电脑旁边吃零食、喝饮料、抽烟等，但灰尘之类的也是不可避免。而且清洁键盘也是比较麻烦的一件事，就算把键帽都拔下来清洗，键盘的轴体和钢板里面也会隐藏着很多灰尘或是饼干渣、碎头发、烟灰等垃圾。键盘清洗软胶在使用上非常便捷，效果也非常棒！"]', 'https://s.click.taobao.com/HUAr8Yw;￥72qR0hEN7CB￥', NULL, 1510673507, 1510753997, 1, 1),
(5, 5, '[{"desc":"","url":"detail_pics\\/5\\/5cbdc7c6bf70fbfe8518a0a505636ff5.jpg"},{"desc":"","url":"detail_pics\\/5\\/9f3011d236e90381ed8722ea42e458a7.jpg"},{"desc":"","url":"detail_pics\\/5\\/cbcdad7455171942c5bf525d77a7d927.jpg"},{"desc":"","url":"detail_pics\\/5\\/de5e680fcc94363d2f977e513c1b33ab.jpg"}]', NULL, '["说起折叠购物袋，大伙儿脑子里第一反应就是奶奶们去超市的时候带着的，银行或者果汁赠送的折叠手提购物袋。","小圆盘购物袋曾经获得2013年Gift Of Year设计奖等四项国际大奖。","从实用性上讲，真的是太有用了！比如最基本的购物的时候用作购物袋（尽量不使用塑料袋，要保护环境哈）。最让我感到兴奋的是，出门旅行尤其是短途的时候，如果想尽量减少行囊，常常最后是一个双肩背就了事。但是如果再想出门逛街带些随手的东西就比较麻烦了。背包里放上它，问题就解决咯。"]', 'https://s.click.taobao.com/Nc8m8Yw;￥zwwO0hEuGoq￥', NULL, 1510673507, 1510753997, 1, 1),
(6, 6, '[{"desc":"","url":"detail_pics\\/6\\/470c8e66da29fd910aebbbdf09d107cd.jpg"},{"desc":"","url":"detail_pics\\/6\\/4bdba9ebe122592a9ade21766b928be1.jpg"},{"desc":"","url":"detail_pics\\/6\\/cb6a096fc519f0598c13859552cfbf2d.jpg"},{"desc":"","url":"detail_pics\\/6\\/cc94b813398d08c7e912f49176d289a0.jpg"}]', NULL, '["上厕所时会不会遇到长时间排队？上厕所会不会遇到：脏、乱、差。。。","美国GoGirl是一款女性应急小便器，当身处户外找不到厕所，或者你只是想证明自己是真的女汉子，就可以拿出它，以站立姿势霸气的小便！GoGirl小巧，可以轻松放入随身包包或者是汽车手套箱中，是各位女汉子户外运动旅行的必备物件。采用柔韧性极佳的医用硅树脂制成，无毒卫生，清洁后可反复使用。专利设计使其可以有效防止溅溢，练习数次后，您可能会爱上这种特别的小便方式。","如果站着真方便~那就勇敢接受它！"]', 'https://s.click.taobao.com/uU1k8Yw;￥BxvL0hEC8MD￥', NULL, 1510673507, 1510753997, 1, 1),
(7, 7, '[{"desc":"","url":"detail_pics\\/7\\/bc6a56e46979b88f5b71e22c1dcc0124.jpg"},{"desc":"","url":"detail_pics\\/7\\/f1aabee1656951ce9257a8abd33e3600.jpg"},{"desc":"","url":"detail_pics\\/7\\/f5b658a8d13e4c8c4a242b9057b39169.jpg"},{"desc":"","url":"detail_pics\\/7\\/fd659b23dea978d5dfbe5d9bf3dbd3e6.jpg"}]', '[{"desc":"要的就是这么优雅？","url":"videos\\/7\\/0hiy51o6LZivlzJF92j@@hd.mp4"}]', '["你遇到一下问题吗？","1,手机屏幕过小经常误操作","2,键盘太小，打字速度慢","3,开车打电话，不方便也不安全","它是随时随地的蓝牙音响；它是时尚享受的镭射键盘；它是前所未有的鼠标功能；它可以一机多用接听电话！"]', 'https://s.click.taobao.com/BQgc8Yw;￥NkFp0hw5Ff5￥', '', 1510673507, 1510930706, 1, 1),
(8, 8, '[{"desc":"","url":"detail_pics\\/8\\/046426e8c22535271b36ba316e86a6f1.jpg"},{"desc":"","url":"detail_pics\\/8\\/2e8c28762b9b09a30eafadd128c8fad8.jpg"},{"desc":"","url":"detail_pics\\/8\\/bd058e4f25268a0094c3175c9bc2c5ad.jpg"},{"desc":"","url":"detail_pics\\/8\\/e414a63bcc4ef51b6947b1d13040a5e9.jpg"}]', '[{"desc":"用了它，你就是王者","url":"videos\\/8\\/DTixIdGhRJxyex69HIx@@hd.mp4"}]', '["喜欢玩王者荣耀的朋友，都会为英雄的移动不灵敏感到烦恼，这个摇杆吸盘为广大玩家带来福音。","从此不在坑队友，犀利走位，轻松超神。","你值得拥有！"]', 'https://s.click.taobao.com/CgZV8Yw;￥xDuH0hwpa4A￥', NULL, 1510673507, 1510753997, 1, 1),
(9, 9, '[{"desc":"","url":"detail_pics\\/9\\/1be81c5ec6ada4932358145b16da42ec.gif"},{"desc":"","url":"detail_pics\\/9\\/7cf7bfa3fc6e810172899db68e27a2ee.jpg"},{"desc":"","url":"detail_pics\\/9\\/9421e2dfdf26125e1f4455d3692b2e65.jpg"},{"desc":"","url":"detail_pics\\/9\\/b9f7984d61ebcc2391795953d7177628.jpg"}]', '[{"desc":"为什么小时候没有这么好的雨伞？","url":"videos\\/9\\/aBAD3H4bo4mwe1XF8yr@@ld.mp4"}]', '["想在雨中优雅行走依然是目前人类难以达成的课题，撑雨伞就会少一只手拿东西，强风一来就把雨伞吹翻，穿雨衣又只防得了自己防不了手上的东西淋湿，而且雨衣里总有一种臭臭酸酸的味道（捏鼻）。","雨伞帽也许可以撼动雨具界！"]', 'https://s.click.taobao.com/aSbS8Yw;￥FulL0hwGgrY￥', NULL, 1510673507, 1510753997, 1, 1),
(10, 10, '[{"desc":"","url":"detail_pics\\/10\\/17058c1f4db5526b715073faf7f60897.jpg"},{"desc":"","url":"detail_pics\\/10\\/1ea8f773e4c5d05b65a79778c48940e4.jpg"},{"desc":"","url":"detail_pics\\/10\\/9e589561c29a8e1ec3fd0d87b9d1f5b3.jpg"},{"desc":"","url":"detail_pics\\/10\\/fb6430ad168554d431e647d2f6410b59.jpg"}]', '[{"desc":"妈妈再也不用担心找不到钥匙了","url":"videos\\/10\\/tnFIieYxx4T3IQZPQtz@@hd.mp4"}]', '["许多人粗心大意，常常随手乱放钥匙，等到要用到的时候却不知道去哪找了，翻遍书桌、沙发甚至冰箱都找不到。","现在有了这款蓝牙钥匙扣，只要通过手机上相关应用的提示就可以轻松找到钥匙，气死开锁师傅。"]', 'https://s.click.taobao.com/vxXQ8Yw;￥1JsW0hwxV0a￥', NULL, 1510673507, 1510753995, 1, 1),
(11, 11, '[{"desc":"","url":"detail_pics\\/11\\/1157fa08da452b3219a4d11ff27a7059.jpg"},{"desc":"","url":"detail_pics\\/11\\/312e38db6e345dec497feb4a837fbd44.jpg"},{"desc":"","url":"detail_pics\\/11\\/33e78e2930139434f9c00f042bb07116.jpg"},{"desc":"","url":"detail_pics\\/11\\/edbd9f949b3bdcdfd5f94d6d3d434763.jpg"}]', '[{"desc":"不再为销毁快递上的信息而苦恼","url":"videos\\/11\\/ko5KMdxm2ZFBQump0v5@@ld.mp4"}]', '["可以在需要遮挡的表面拉出字符构成的乱码，有效保护信息印刷面宽15毫米，大约30米长的总使用长度，信封地址的长度为60mm左右时可用约500次","盖字长度可自由调整，凹凸不平的地方也可以使用。纸箱和桶状包裹上粘贴的地址遮盖不用时，请扣紧保护帽"]', 'https://s.click.taobao.com/Y88S6Yw;￥h5TX0hzfQsL￥', NULL, 1510673507, 1510753995, 1, 1),
(12, 12, '[{"desc":"","url":"detail_pics\\/12\\/0cb3686687c35a8127cf6749fe35b136.jpg"},{"desc":"","url":"detail_pics\\/12\\/5ba8557d841fadaf33f00b7944e6e441.jpg"},{"desc":"","url":"detail_pics\\/12\\/ba71bf6c5d66844293d34d02bb3abe3b.jpg"},{"desc":"","url":"detail_pics\\/12\\/df70932a4b1ca61cd2c68949b47ad301.jpg"}]', '[{"desc":"传说中的马良神笔","url":"videos\\/12\\/IeUUPm065wVdf34T1B5@@sd.mp4"}]', '["这是一只可以在空气中书写的笔,帮你把想象力从纸张上解放出来。我们都觉得二维的画面不够生动,想让它变成三维的物体,它能帮你做到。"]', 'https://s.click.taobao.com/gpzG6Yw;￥PkMA0hzqC8q￥', NULL, 1510673507, 1510753995, 1, 1),
(13, 13, '[{"desc":"","url":"detail_pics\\/13\\/0eccf9f614c05ed2e352a2f47f08851f.jpg"},{"desc":"","url":"detail_pics\\/13\\/223b21c83be2b6a2b24308ed0d97f64b.jpg"},{"desc":"","url":"detail_pics\\/13\\/690910fd9c3a8bd68bcbc11223b868d4.jpg"},{"desc":"","url":"detail_pics\\/13\\/f3407ee36d5fb04cbf2da8e9cd80f631.jpg"}]', '[{"desc":"让你想睡就睡的枕头","url":"videos\\/13\\/dM9GURTNaA1qqoGby0Q@@hd.mp4"}]', '["繁重的互作,沉重的学习,休息时间越来越少,我们需要更方便、更高效的睡眠方式! $因为遮光所以高效,不用去关门、关灯、关窗帘、带眼罩,一切的琐碎统统不需要!而且前面有开口，鼻子嘴巴露在外面，顺畅呼吸。"]', 'https://s.click.taobao.com/ALBE6Yw;￥mWON0hzuYKC￥', NULL, 1510673507, 1510753995, 1, 1),
(14, 14, '[{"desc":"","url":"detail_pics\\/14\\/30c5a490570a8cb5902d702af9453918.jpg"},{"desc":"","url":"detail_pics\\/14\\/32c3bcd96d5963b7cc26df00ff623fa3.jpg"},{"desc":"","url":"detail_pics\\/14\\/c6ecfb32f0c9178c03bd9ca7c6ba8d25.jpg"},{"desc":"","url":"detail_pics\\/14\\/d37314387d9bd7995096ad46cf838c7d.jpg"}]', NULL, '["多功能饮料机，创意地球仪设计，水龙头关闸，表面电镀银色，高档实用，是您家居不可缺少的聚餐好帮手和家居装饰品！送给朋友也不错哦！"]', 'https://s.click.taobao.com/DD6A6Yw;￥GZ7i0hzzZgb￥', NULL, 1510673507, 1510753996, 1, 1),
(15, 15, '[{"desc":"","url":"detail_pics\\/15\\/452ddb65d6d47e35bb7977468b2a5036.jpg"},{"desc":"","url":"detail_pics\\/15\\/8d4ee879d1da275d6f59392f8930afd3.jpg"},{"desc":"","url":"detail_pics\\/15\\/c23018151382a52fd527e8146bd55a8d.jpg"},{"desc":"","url":"detail_pics\\/15\\/f549fd2924063383362e3f920eb74db7.jpg"}]', NULL, '["降暑神器","跑男夏天创意懒人饮料帽","球赛用品","逗逼礼物","啤酒帽,喝酒帽子"]', 'https://s.click.taobao.com/TCX86Yw;￥xAlX0hAZuxj￥', NULL, 1510673507, 1510753996, 1, 1),
(16, 16, '[{"desc":"","url":"detail_pics\\/16\\/73fe5b971216531baada32e34ee8f9a8.jpg"},{"desc":"","url":"detail_pics\\/16\\/a6eba71baee5e758d5fda26eb018cd90.jpg"},{"desc":"","url":"detail_pics\\/16\\/debfccec4be2b449387c50f65df19c8f.jpg"},{"desc":"","url":"detail_pics\\/16\\/f9620fe3bb158989beefb6839d3d3313.jpg"}]', NULL, '["用优雅的冰箱享受健康的生活","usb冰箱采用全包式铝内胆来打造小冰箱，线条简洁美观; 15度的冷藏温度更是能保持冰箱内饮料的营养不流失。加上美观的外表，让他无论是摆放在客厅的茶几上还是厨房的吧台，亦是书桌的一角她简约、精致的外观每个角度都很美，在设计师眼里她不单单是一个冰箱，更是生活的一部分，每个细节的设计都至关重要。"]', 'https://s.click.taobao.com/DAW36Yw;￥u4tt0hA4bCf￥', NULL, 1510673507, 1510753996, 1, 1),
(17, 17, '[{"desc":"","url":"detail_pics\\/17\\/259d8a3c92fad72344e71af6e599f5ba.jpg"},{"desc":"","url":"detail_pics\\/17\\/2731147a738ab0b30da444eec00cc27d.jpg"},{"desc":"","url":"detail_pics\\/17\\/3480b0a303d8547ef0b9973355300767.jpg"},{"desc":"","url":"detail_pics\\/17\\/cb5d35ebd18db75bc3512e6608a98467.jpg"}]', '[{"desc":"原来鸡蛋还可以这么开","url":"videos\\/17\\/YSZniKNghsYiwyNKpAC@@ld.mp4"}]', '["乐享生活，从开蛋开始！"]', 'https://s.click.taobao.com/gSk06Yw;￥2LvO0hAhj8r￥', NULL, 1510673507, 1510753996, 1, 1),
(18, 18, '[{"desc":"","url":"detail_pics\\/18\\/45543dbc9c922c3c00027d7fd83e2d88.jpg"},{"desc":"","url":"detail_pics\\/18\\/57279169bf19454a6c37f7457b9a34b3.jpg"},{"desc":"","url":"detail_pics\\/18\\/ecd94890690f66bf2d9059a83d39906f.jpg"},{"desc":"","url":"detail_pics\\/18\\/f5ad50ab45b599e6577a41a01f550ec9.jpg"}]', NULL, '["整套包括30个批头、内嵌磁性防滑螺丝刀，再加上塑料盒，俗称31合1拆机工具。优美塔形设计，便于携带，整合性高，是全套，是生活日用必备的家庭配件工具。","应用范围: 拆卸电脑、手机、手表眼镜精密测试仪器以及家用各类。"]', 'https://s.click.taobao.com/NUux5Yw;￥xwdG0hAQv0Z￥', NULL, 1510673507, 1510753996, 1, 1),
(19, 19, '[{"desc":"","url":"detail_pics\\/19\\/2f8c5b9120334d1f4c5b16470aa18c61.jpg"},{"desc":"","url":"detail_pics\\/19\\/45757358ca68f46f9ab29fe776f607e0.jpg"},{"desc":"","url":"detail_pics\\/19\\/cab08cab26cfd88767739d02443b2e1e.jpg"},{"desc":"","url":"detail_pics\\/19\\/d772cdbaafd7d2d12e4763cf23786966.jpg"}]', NULL, '["外出带着一个盾牌，感觉很酷，时尚的设计不会让你失望！"]', 'https://s.click.taobao.com/gGgf5Yw;￥KvBI0Sa6Tqk￥', NULL, 1510673507, 1510753996, 1, 1),
(20, 20, '[{"desc":"","url":"detail_pics\\/20\\/35ce617b6a6fbcc2970c53ea7817f00e.jpg"},{"desc":"","url":"detail_pics\\/20\\/90129d74b1da7606ae278f5a19a59930.jpg"},{"desc":"","url":"detail_pics\\/20\\/9d74f0fb6f03fbc0896fa8c8142982af.jpg"},{"desc":"","url":"detail_pics\\/20\\/a2532caedd7d41e1234979f60b608086.jpg"}]', '[{"desc":"让你心动的数据线","url":"videos\\/20\\/q1NbTM5Ph3omZNLnGkV@@hd.mp4"}]', '["创意设计，一扣一转靠别复杂缠绕$钛合金高品质外观，随身变身时尚挂饰"]', 'https://s.click.taobao.com/X0Mc5Yw;￥nY9k0Sak83s￥', NULL, 1510673507, 1510753996, 1, 1),
(21, 21, '[{"desc":"","url":"detail_pics\\/21\\/28bcdbfb06f6e7f06dc3637a48e1f97f.jpg"},{"desc":"","url":"detail_pics\\/21\\/487bfcfad2e02b745c1f73a4c957f21c.jpg"},{"desc":"","url":"detail_pics\\/21\\/cce9e0fb0615f88a038d7a16d13758a3.jpg"},{"desc":"","url":"detail_pics\\/21\\/d0595be2dd21686aefed88ba35ccdb56.jpg"}]', NULL, '["贴心的双面设计，只要你想带，我都能装$交错格局设计，增加回弹力的同时也为不同大小的设备提供了多样的选择$挂绳设计，还您整洁有序的家，墙上、书架、床头随心挂"]', 'https://s.click.taobao.com/eo8b5Yw;￥155z0SamJuK￥', NULL, 1510673507, 1510753996, 1, 1),
(22, 22, '[{"desc":"","url":"detail_pics\\/22\\/8e3f4bf665e886cd74e34b17d3900deb.jpg"},{"desc":"","url":"detail_pics\\/22\\/a52149f18f366c730f8b28f4fe8541f7.jpg"},{"desc":"","url":"detail_pics\\/22\\/bb09050f7a2e2fe56dc135be3162cb15.jpg"},{"desc":"","url":"detail_pics\\/22\\/f2634f241941b1b3cf2dc33e2a8d98f1.jpg"}]', NULL, '["相信大家为开核桃都使过浑身解数，有用门缝夹的，有用凳角压的，也有用两个核桃相互伤害的，但是结果往往不尽人意，人还容易被划伤。","这款开核桃神器，让你告别烦恼！"]', 'https://s.click.taobao.com/pZtZ5Yw;￥My8u0Sao6It￥', NULL, 1510673507, 1510753996, 1, 1),
(23, 23, '[{"desc":"","url":"detail_pics\\/23\\/16bf0668753f95ada8c1d330bbac622b.jpg"},{"desc":"","url":"detail_pics\\/23\\/24a72e8873e186824da3c35c38425d81.jpg"},{"desc":"","url":"detail_pics\\/23\\/9a6422c5f445a371ebb8f277ce1cc849.jpg"},{"desc":"","url":"detail_pics\\/23\\/feb49cb156184b3c3ccc36e163ce2cf0.jpg"}]', NULL, '["对于一个年轻人来说，除了时尚的发型、服装、包包能衬托出一个潮人的气质，出门佩戴一款外形时尚的耳机也是宣扬自我的一种方式。但是拥有一款外形拉风同时音质也不逊色的耳机是非常困难的，因为很多耳机能做到音质非凡，但往往做不出时尚的外观，令潮男潮女十分苦恼。如果你想在2015年选择一款最潮耳机，那么就不要错过亿觅这款小恶魔耳机。"]', 'https://s.click.taobao.com/aObX5Yw;￥Tyxf0SaIl5c￥', NULL, 1510673507, 1510753996, 1, 1),
(24, 24, '[{"desc":"","url":"detail_pics\\/24\\/13c1388952e55159df3c5d69ffc3d077.jpg"},{"desc":"","url":"detail_pics\\/24\\/41a85b5e7af6f955866367aad4935172.jpg"},{"desc":"","url":"detail_pics\\/24\\/8c74a74722a6ccd2e3c882056d0bcdee.jpg"},{"desc":"","url":"detail_pics\\/24\\/f5a44ca4329d968cbe7cd816c9837fdd.jpg"}]', '[{"desc":"找回我们失去的童真","url":"videos\\/24\\/q2dbhyIXywVbSjbL2x2@@sd.mp4"}]', '["美丽的樱花在日本被视为日本精神的象征，也有着新生入学，祈愿与爱的含义。观赏樱花勿需再去追逐樱花的脚步，也不用等到每年樱花盛开的时节。","魔力樱花可以让你在家就可以享受春日的气息，作为摆饰纪念品赠送给同学或者爱人都非常的浪漫。"]', 'https://s.click.taobao.com/oZrW5Yw;￥R3Bf0SaHG7r￥', NULL, 1510673507, 1510753996, 1, 1),
(25, 25, '[{"desc":"","url":"detail_pics\\/25\\/cfb4d97f50d54cb18f9fdfa834187d63.jpg"},{"desc":"","url":"detail_pics\\/25\\/ed7412497ffc387c5ff524fe847f0814.jpg"},{"desc":"","url":"detail_pics\\/25\\/ed76a2f7a3deae2aa8c6379673d8edcd.jpg"},{"desc":"","url":"detail_pics\\/25\\/fb611b800e3a42309a42b5c1707fbeb1.jpg"}]', NULL, '["你以为下面我要介绍的是一个砖头，实际上你看到的这个砖头其实是一个抱枕，他的样式就是按砖头的样子和大小设计的。","这个小巧的创意抱枕设计可以应用在许多的场景。比如拍死人不偿命系列！"]', 'https://s.click.taobao.com/DjTV5Yw;￥KGnU0Sav7xq￥', NULL, 1510673507, 1510753996, 1, 1),
(26, 26, '[{"desc":"","url":"detail_pics\\/26\\/74832a772eaef4a1f53596c6363021f2.jpg"},{"desc":"","url":"detail_pics\\/26\\/b5814e5fae910150b8d67df64722f25c.jpg"},{"desc":"","url":"detail_pics\\/26\\/ef3867a856a2463cf0571b6cb92401e9.jpg"},{"desc":"","url":"detail_pics\\/26\\/f1e82276f3ab35b06c29403dcbed30a3.jpg"}]', '[{"desc":"汤勺也可以这么萌","url":"videos\\/26\\/video.mp4"}]', '["小水怪汤勺拥有四只可爱小短腿，让它可以直接站立在桌上或是汤锅里，这样站立的功能可以避免时常遇到汤匙滑进汤锅的问题，也让拿汤勺变得很方便，不过就算小短腿没有站稳，不小心滑倒，小水怪还是能靠下巴勾住汤锅边缘。"]', 'https://s.click.taobao.com/kJqU5Yw;￥E1Gk0SawF5n￥', NULL, 1510673507, 1510753996, 1, 1),
(27, 27, '[{"desc":"","url":"detail_pics\\/27\\/34034a83bcf4779d7e4fdb3914b6ab5d.jpg"},{"desc":"","url":"detail_pics\\/27\\/5db303dda9b178a1a23c9adc8243820c.jpg"},{"desc":"","url":"detail_pics\\/27\\/d09043a14407d3909238ab22c0310806.jpg"},{"desc":"","url":"detail_pics\\/27\\/e2776e976257c7ef70e37ba283a81d48.jpg"}]', NULL, '["字里行间，都是你！","这是只属于你和我和光的秘密！"]', 'https://s.click.taobao.com/HurT5Yw;￥bijL0SayfGA￥', NULL, 1510673507, 1510753996, 1, 1),
(28, 28, '[{"desc":"","url":"detail_pics\\/28\\/3d1ab5c3a32e82628272225688e550d6.jpg"},{"desc":"","url":"detail_pics\\/28\\/500648cc3c7f64ffba75f38f8965409a.jpg"},{"desc":"","url":"detail_pics\\/28\\/7f092c301c8f27762495c9673f2b7c96.jpg"},{"desc":"","url":"detail_pics\\/28\\/89c963d02d655b4839d9de5fceedeed7.jpg"}]', NULL, '["还让不让人好好吃泡面了！"]', 'https://s.click.taobao.com/rDtS5Yw;￥awIn0SaAY2K￥', NULL, 1510673507, 1510753996, 1, 1),
(29, 29, '[{"desc":"","url":"detail_pics\\/29\\/5dff6ed240fa3df2d4e4cfefd540184e.jpg"},{"desc":"","url":"detail_pics\\/29\\/623b66b6accd6b51d420b4a2ca28d393.jpg"},{"desc":"","url":"detail_pics\\/29\\/9eddc6504e78b06ad42be67e9f15eafa.jpg"},{"desc":"","url":"detail_pics\\/29\\/ec7480f5ccfe91cb804963d88a134a22.jpg"}]', '[{"desc":"双层雨伞，多一层呵护","url":"videos\\/29\\/QYPf7pddew0n93IxszI@@hd.mp4"}]', '["1.你再也不用担心弄湿地板！","伞的打开方式刚好与传统雨伞相反，而在收合起来的时候，雨伞的里层（即干燥层）会在外面，而接触雨水的外层则会在里面。","2.雨天上下车，拒绝湿身！","通常我们在雨天上下车时，无论怎么样去极力避免，开收伞时候都会碰见“伞大车门小”的困境，兼带着淋湿衣服的效果。但是反向伞可以让你轻松避免以上的状况，同时雨伞放进里面也不怕弄湿车子。","3.在人群中毫无顾忌地开收伞！","由于KAZbrella独特的开收伞方式，我们再也不用担心在人群中使用伞时蹭到别人，一个劲儿地说对不起。"]', 'https://s.click.taobao.com/2HtR5Yw;￥oKdm0SZ0irC￥', NULL, 1510673507, 1510753996, 1, 1),
(30, 30, '[{"desc":"","url":"detail_pics\\/30\\/53b63d4be251e38ef91080b4443799d0.jpg"},{"desc":"","url":"detail_pics\\/30\\/5af959a800490224a25ec82f4b2132e0.jpg"},{"desc":"","url":"detail_pics\\/30\\/689bc72bcb5f635cca3e1117d3c9d9a9.jpg"},{"desc":"","url":"detail_pics\\/30\\/d0873c2831bba5bb9d31fb11cd7d81c1.jpg"}]', '[{"desc":"防污喷剂鞋油球鞋神器","url":"videos\\/30\\/hgf4nYLXZV5c9P0OUfb@@hd.mp4"}]', '["对于爱鞋的人来说，想象一下如果穿上爱鞋出门，突然到下雨天… 四不四就懵逼了。","SUPBRO 纳米防水喷雾在手，以上情况都没在害怕的，什么污渍什么雨水都是浮云，给鞋喷上 SUPBRO 鞋面防水喷雾，即可目空一切。"]', 'https://s.click.taobao.com/76ER5Yw;￥dRds0SZYEM5￥', NULL, 1510673507, 1510753996, 1, 1),
(31, 31, '[{"desc":"","url":"detail_pics\\/31\\/206eb53aecf140b1689f31c352026081.jpg"},{"desc":"","url":"detail_pics\\/31\\/5e095a38f8f42a501d26b0ac50e677d4.jpg"},{"desc":"","url":"detail_pics\\/31\\/bd3a6c7d0be5d928ae9c0cf3eaf357d5.jpg"},{"desc":"","url":"detail_pics\\/31\\/f4dc5e6991a328de0f22bfff97c2528e.png"}]', '[{"desc":"指尖操作鼠标不是梦","url":"videos\\/31\\/VGzM6KeuWWRn74XSo9x@@ld.mp4"}]', '["对于一些需要经常携带笔记本电脑外出办公的用户来说，最令他们烦恼的自然就是一些必不可少的外设，如鼠标、移动硬盘、光驱等等。由于笔记本电脑上的触摸板使用起来很不方便，因此鼠标是最为常见的移动外设。市面上有着很多针对笔记本电脑用户而推出的鼠标，这些类型往往都仅是追求便携性，把鼠标的体积做得很小，使鼠标失去了手感，而且手型较大的男士用户，操作起来很困难。","这些产品就是专为解决这个问题而设计的：到哪儿都灵活自如！"]', 'https://s.click.taobao.com/xJhP5Yw;￥2trr0SZWZqj￥', NULL, 1510673507, 1510753996, 1, 1),
(32, 32, '[{"desc":"","url":"detail_pics\\/32\\/571f4425a3facdfbbe9406f425f8ec92.png"},{"desc":"","url":"detail_pics\\/32\\/7eff93d6cc0764e3ad39a85924b17eee.jpg"},{"desc":"","url":"detail_pics\\/32\\/88885cc859540008d1a8acf16017cf47.jpg"},{"desc":"","url":"detail_pics\\/32\\/c8aeeea28d06e7db4ff9cfca4e7cab92.jpg"}]', NULL, '["3D打印的月球灯是件神奇的艺术品，它的美就像你抬头望见的家乡圆月，它赋予的浪漫还承载了你浓浓的温情..."]', 'https://s.click.taobao.com/krpO5Yw;￥m4iw0SZeM7F￥', NULL, 1510673507, 1510753996, 1, 1),
(33, 33, '[{"desc":"","url":"detail_pics\\/33\\/887c09d35eda834684bcd8df0f1b1182.jpg"},{"desc":"","url":"detail_pics\\/33\\/a2735e4d3b6ab75d5e83ffaa1a90726f.jpg"},{"desc":"","url":"detail_pics\\/33\\/dac62a125fbac247deb1669d6f612269.jpg"}]', NULL, '["自行车激光尾灯可投射出美丽的图案，既拉风又提高安全性，是夜骑必备装备。"]', 'https://s.click.taobao.com/TeTN5Yw;￥y8Qe0SZUyBW￥', NULL, 1510673507, 1510753996, 1, 1),
(34, 34, '[{"desc":"","url":"detail_pics\\/34\\/4e1aa4dd214d108360ab28dd32ceef7f.jpg"},{"desc":"","url":"detail_pics\\/34\\/676f28a54a282fd6146baf572aec7e05.jpg"},{"desc":"","url":"detail_pics\\/34\\/825c90a905eeaf26e291a7e4d2d99cfe.jpg"},{"desc":"","url":"detail_pics\\/34\\/d22653596b6fbbc10fb6950c046fd5e3.jpg"}]', '[{"desc":"","url":"videos\\/34\\/123123.mp4"}]', '["Polar Pen无疑件非常出色的创意产品，它打破了以往我们对于传统书写笔的认知，将科技与传统进行了完美的融合，同时也不会显得十分突兀。Polar不仅是一支书写笔，更是一支极具时尚感的触控笔，工具以及玩具，相信如此geek味十足的产品定不会让你失望。"]', 'https://s.click.taobao.com/j4lM5Yw;￥QdqF0SZTpA6￥', NULL, 1510673507, 1510753996, 1, 1),
(35, 35, '[{"desc":"","url":"detail_pics\\/35\\/131f819038535a831353ebf392696dbd.jpg"},{"desc":"","url":"detail_pics\\/35\\/9a2dcaaf58746dbb0b83de0b9767e575.jpg"},{"desc":"","url":"detail_pics\\/35\\/b7e2bd89a03fa0062cfaa56a0e08196e.jpg"},{"desc":"","url":"detail_pics\\/35\\/cd1207337e0fbd23ed7cb4952cd6de73.jpg"}]', '[{"desc":"沙漏里面也会有雪花","url":"videos\\/35\\/video.mp4"}]', '["沙漏象征友谊、爱情和幸福。","时间在流逝，事物在变迁，回忆在消失。","当思念已无，回忆便成了奢望，所有的美好记忆便尘封在了心底。","砂子洒落的过程就是回忆朋友爱人之间美好片段的过程~。"]', 'https://s.click.taobao.com/ygqL5Yw;￥uTHc0SZSlBm￥', NULL, 1510673507, 1510753996, 1, 1),
(36, 36, '[{"desc":"","url":"detail_pics\\/36\\/169b831f517cd7ebb8aa516163a502e3.jpg"},{"desc":"","url":"detail_pics\\/36\\/a9c3a938cabc36bb855e6a7dfc88e45f.jpg"}]', NULL, '["易拉环的造型新奇有趣，看上去像是废旧的拉环。实际上是能干的开瓶器，小巧玲珑，方便随身携带。"]', 'https://s.click.taobao.com/nLdI5Yw;￥xYPM0SZOAc0￥', NULL, 1510673507, 1510753996, 1, 1),
(37, 37, '[{"desc":"","url":"detail_pics\\/37\\/818a59764011d6eeb89a192e150f466a.jpg"},{"desc":"","url":"detail_pics\\/37\\/c8a6cd6a3bf8c7c715e54214e35ddce5.jpg"},{"desc":"","url":"detail_pics\\/37\\/d26f751ce4313104e04501b8d3bb6e59.jpg"},{"desc":"","url":"detail_pics\\/37\\/e45bba6d7298d3f369c62facd6551cee.jpg"}]', '[{"desc":"无聊到玩一整天都不累","url":"videos\\/37\\/9ZxzT9Hy6JJIWqqkwdX@@hd.mp4"}]', '["一玩就是一整天的无聊盒子，太魔性以至于天天无聊的时候想着！"]', 'https://s.click.taobao.com/0aOH5Yw;￥G5l20SZocCN￥', NULL, 1510673507, 1510753996, 1, 1),
(38, 38, '[{"desc":"","url":"detail_pics\\/38\\/26b16b46adb7b054b0f2a25a3ca9e96b.jpg"},{"desc":"","url":"detail_pics\\/38\\/4eef71a118dd18dbdb66fd050c43947a.jpg"},{"desc":"","url":"detail_pics\\/38\\/ad1d5b18bef430450053349f939189b1.jpg"},{"desc":"","url":"detail_pics\\/38\\/e297691a91a6c9c6c254bdc20f0470d2.jpg"}]', '[{"desc":"狗狗不够萌，试试这个吧","url":"videos\\/38\\/zl0lGq1PJm1pjuykZgo@@hd.mp4"}]', '["这款让狗狗变得老实的鸭嘴套，就是为那些还在训练或是容易暴躁的狗狗设计的。将它套在狗狗嘴巴上时，俨然变成了一只可爱的鸭子，因为设置有开口，所以狗狗的嘴还是能够略微张开，舌头也能吐出来，所以短时佩戴不会给狗狗带来不适感。"]', 'https://s.click.taobao.com/lMQG5Yw;￥7AqS0SZKUJs￥', NULL, 1510673507, 1510753997, 1, 1),
(39, 39, '[{"desc":"","url":"detail_pics\\/39\\/54240d0d24fe9bd8f557d03d33edef5f.jpg"},{"desc":"","url":"detail_pics\\/39\\/83f065887da23fb18d68b17514a9aa08.jpg"},{"desc":"","url":"detail_pics\\/39\\/e10d9924a2e103768c375e651234e9d0.jpg"},{"desc":"","url":"detail_pics\\/39\\/e5769575fc473b220f4c212ade75890b.jpg"}]', NULL, '["磁悬浮地球仪，顾名思义，是用磁悬浮的科学原理，将地球仪在无任何支撑接触点的空中自转,展示地球的真实状态，具有独特的视觉效果，给人以奇特新颖的感觉和精神享受。"]', 'https://s.click.taobao.com/B0cF5Yw;￥ZoXo0SZrNPu￥', NULL, 1510673507, 1510753997, 1, 1),
(40, 40, '[{"desc":"","url":"detail_pics\\/40\\/14b65df90ee4d86ee79b0b673b2d8ce9.jpg"},{"desc":"","url":"detail_pics\\/40\\/4a6a54d19c8c74a7818829c59bb6fac5.jpg"},{"desc":"","url":"detail_pics\\/40\\/5ce99fcd43c71936191e2b8033c7ef0c.jpg"},{"desc":"","url":"detail_pics\\/40\\/a5435925b2cb6b948930019da941e6a0.jpg"}]', NULL, '["天气预报瓶。它的原理根据起源于17世纪欧洲的天气预测器“Storm Glass” 当瓶中液体清澈干净，代表天气将晴朗无云； 当瓶中液体混浊朦胧，代表天空也将多云阴郁； 当瓶中出现结晶，代表将降温甚至下雪。","送Ta一个靠谱的“天气预报员”创意产品设计，冷暖阴晴早知道。"]', 'https://s.click.taobao.com/sE8MyXw;￥gx6n0S6stPb￥', NULL, 1510673507, 1510753997, 1, 1),
(41, 41, '[{"desc":"","url":"detail_pics\\/41\\/169062d86cb9e0e6e256c19bb9696d50.jpg"},{"desc":"","url":"detail_pics\\/41\\/3d77250ab36d74d7410a3d9c9e6999cc.jpg"},{"desc":"","url":"detail_pics\\/41\\/a8ee1361f84dad82f49b76c60a38e780.jpg"},{"desc":"","url":"detail_pics\\/41\\/a96b732f4ca667ec8cb4c6f0a34d7696.jpg"}]', NULL, '["去过的地方用硬币像刮奖一样刮开，等终有一天整个中国版图都挂出来了，多有成就感~人生就是要这样，不断用新的方法激励自己向前！"]', 'https://s.click.taobao.com/g2rF3Yw;￥BhVe0SX4DGZ￥', NULL, 1510673507, 1510753997, 1, 1),
(42, 42, '[{"desc":"","url":"detail_pics\\/42\\/0e83507a9b5eba4e2e40311144791337.jpg"},{"desc":"","url":"detail_pics\\/42\\/38f048caf2524017171209b07758aaea.jpg"},{"desc":"","url":"detail_pics\\/42\\/88ad70a3670eb612723f65e87abedd49.jpg"},{"desc":"","url":"detail_pics\\/42\\/951c8ea9e2955847387a1b23514f4b49.jpg"}]', NULL, '["夏目友人帐猫咪老师卡通可爱陶瓷小盆栽花盆动漫周边。"]', 'https://s.click.taobao.com/ktLD3Yw;￥gTUa0SXhfDq￥', NULL, 1510673507, 1510753997, 1, 1),
(43, 43, '[{"desc":"","url":"detail_pics\\/43\\/5e2dd987769c4294798b0064898d3183.jpg"},{"desc":"","url":"detail_pics\\/43\\/806fff955b4e90723eeab56a35e7a0e5.jpg"},{"desc":"","url":"detail_pics\\/43\\/84059a53627573420e8452b140c9b63d.jpg"},{"desc":"","url":"detail_pics\\/43\\/e08aed4095a6f4bf530d2792babebc8f.jpg"}]', NULL, '["桌面玩具，好玩不腻！"]', 'https://s.click.taobao.com/xrUC3Yw;￥VQe00SX7pP0￥', NULL, 1510673507, 1510753997, 1, 1),
(44, 44, '[{"desc":"","url":"detail_pics\\/44\\/2a997ae3cbcd5c9f711c40cfbf90a555.jpg"},{"desc":"","url":"detail_pics\\/44\\/70324aef63ec5effaa7b31a1b305267c.jpg"},{"desc":"","url":"detail_pics\\/44\\/8bc47b05be86df26917d033fb94c8c57.jpg"},{"desc":"","url":"detail_pics\\/44\\/a2c5e8044bad43bca729c39f5e8309d6.jpg"}]', '[{"desc":"好玩的牛顿摆球（桌面摆件）","url":"videos\\/44\\/0aaBfmZK3klunxTASKX@@ld.mp4"}]', '["牛顿摆是由法国物理学家伊丹·马略特（Edme Mariotte）最早于1676年提出的。当摆动最右侧的球并在回摆时碰撞紧密排列的另外四个球，最左边的球将被弹出，并仅有最左边的球被弹出。牛顿摆可近似看做完全弹性碰撞！"]', 'https://s.click.taobao.com/r6CB3Yw;￥XYIc0SX8GqJ￥', NULL, 1510673507, 1510753997, 1, 1),
(45, 45, '[{"desc":"","url":"detail_pics\\/45\\/1c711e46260817f4aef4c8d091d3862a.jpg"},{"desc":"","url":"detail_pics\\/45\\/47af52f1650e3cd8d258d34614198d3a.jpg"},{"desc":"","url":"detail_pics\\/45\\/4d5543c5d645ca9818dcdba49610bddf.jpg"},{"desc":"","url":"detail_pics\\/45\\/5b7d7450ff41f51eb10d651d9432c5d4.jpg"}]', '[{"desc":"魔幻减压指尖陀螺","url":"videos\\/45\\/yrR1yf2F5uvPIa7yCXt@@hd.mp4"}]', '["长大后，笔和捏泡泡都不见了 压力却没有消失，突然发现，手上已没有了可以消遣的东西","直到遇见它：指尖陀螺！"]', 'https://s.click.taobao.com/XT9A3Yw;￥nkDy0SX96pZ￥', NULL, 1510673507, 1510753997, 1, 1),
(46, 46, '[{"desc":"","url":"detail_pics\\/46\\/37a469d8fc0496ee186908b1b468f0ce.jpg"},{"desc":"","url":"detail_pics\\/46\\/867fac9cb9214ec0ab16bd1ab63dfdde.jpg"},{"desc":"","url":"detail_pics\\/46\\/95a4dcfc5a3c1ff83e3e12d773024285.jpg"},{"desc":"","url":"detail_pics\\/46\\/ee2b765b3ee0f3dda11c08770cfb303e.jpg"}]', '[{"desc":"坚果创意迷你低音炮","url":"videos\\/46\\/0IdZ7rL2vr6sRGT0cu4@@ld.mp4"}]', '["没有颜值的音箱不是好音箱！","木质的自然材质，坚果的特别造型！"]', 'https://s.click.taobao.com/Vfy83Yw;￥70AB0SXlbUR￥', NULL, 1510673507, 1510753997, 1, 1),
(47, 47, '[{"desc":"","url":"detail_pics\\/47\\/1bca3862cc4b1bca6dc291064b40adc5.jpg"},{"desc":"","url":"detail_pics\\/47\\/2fe7164d795d5f1296c16735d5815ded.jpg"},{"desc":"","url":"detail_pics\\/47\\/5b30edc87af1f4f9a8fa7c164276b088.jpg"},{"desc":"","url":"detail_pics\\/47\\/b99e215e7f50ef3af01ea1309d43764b.jpg"}]', NULL, '["杯外柔雾温润，杯内晶釉明亮，黑白双色双质感，变换视觉和心情，沥水盘面仿电路设计，兼具功能和趣味。"]', 'https://s.click.taobao.com/1TN83Yw;￥seQ80SXOJy9￥', NULL, 1510673507, 1510753997, 1, 1),
(48, 48, '[{"desc":"","url":"detail_pics\\/48\\/406326cbc438adb0950a2577e9e13f29.jpg"},{"desc":"","url":"detail_pics\\/48\\/5b6599e6d310a8eec038d92ebd29c980.jpg"},{"desc":"","url":"detail_pics\\/48\\/7f390264a7a1e79ae302d31e7536fcb7.jpg"},{"desc":"","url":"detail_pics\\/48\\/c9e3e9d975876c9801dad8d0500bd6e8.jpg"}]', '[{"desc":"异地恋神器","url":"videos\\/48\\/v01rLHnzvBVxbcC94qW@@ld.mp4"}]', '["咕咕机，又叫memobird，咕咕热敏打印机是盈趣科技推出的一款面向大众消费群体的小巧、可爱的热敏打印机，WIFI连接，通过手机APP端进行远程打印，能帮助你更好的备忘、记录、传递留言，立拍立打、截屏立打，用户只要在手机屏上看到的所有内容信息都可以即时无线远程打印。小纸条、大方传，无论是心情小语、迷你情书、亲友锦囊、工作备忘，随时随地一网打尽。让快节奏的互联网生活饱含情怀、充满乐趣、更加便利。","未来，纸为你来，Memobird咕咕机。"]', 'https://s.click.taobao.com/xSf63Yw;￥PWSL0SXo0te￥', NULL, 1510673507, 1510753997, 1, 1),
(49, 49, '[{"desc":"","url":"detail_pics\\/49\\/44267ffb5abe758602744b6dc9a8fb88.jpg"},{"desc":"","url":"detail_pics\\/49\\/928e74a2c5cf9985aeda1e0c192b0c79.jpg"},{"desc":"","url":"detail_pics\\/49\\/9d1e17044318ed28c2f11a6b043a8644.jpg"},{"desc":"","url":"detail_pics\\/49\\/fa2c766fb341c0a9e9eefd06b896d922.jpg"}]', NULL, '["给人吃的狗饼干？？你怎么知道我一直想试试隔壁阿黄的粮食呢！看它总是吃得津津有味的样子，一定很美味啊！正好解解馋！什么？不是真的狗粮？哦给单身狗的..."]', 'https://s.click.taobao.com/Wj053Yw;￥gIwp0SXq8Cb￥', NULL, 1510673507, 1510753997, 1, 1),
(50, 50, '[{"desc":"","url":"detail_pics\\/50\\/039fe3e8ebf2a9231d5ba12364d0f5a8.jpg"},{"desc":"","url":"detail_pics\\/50\\/11c677f8de6e112e69753935ff88e8f5.jpg"},{"desc":"","url":"detail_pics\\/50\\/8969a461334073a804cf01cd6a2847e9.jpg"},{"desc":"","url":"detail_pics\\/50\\/d3d519b16f8b7d28e47b916beb6dfd53.jpg"}]', '[{"desc":"梦幻、温馨（送女生神器）","url":"videos\\/50\\/F7pbm5gF0eRBPbTIC3I@@hd.mp4"}]', '["3D立体灯亮起来后的感觉是3D立体的，但其实都是2D的，厚度只有5毫米，非常节省空间。原理就是用LED和光导设备制成的一块扁平光网。","一盏好看的台灯，会给房间带来不错的视觉效果！"]', 'https://s.click.taobao.com/I6343Yw;￥UAtw0SXrenp￥', NULL, 1510673507, 1510753997, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `qu_goods`
--

CREATE TABLE `qu_goods` (
  `id` int(11) NOT NULL,
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
  `is_delete` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品';

--
-- 转存表中的数据 `qu_goods`
--

INSERT INTO `qu_goods` (`id`, `name`, `desc`, `home_url`, `category`, `weight`, `share_num`, `buy_num`, `browse_num`, `price`, `status`, `collection_num`, `createtime`, `updatetime`, `create_user`, `is_delete`) VALUES
(1, '折射眼睛', '什么东西能为爱躺着电影的懒人带来方便', '[{"desc":"","url":"home_pics\\/1\\/a2647851c788f78fa434ef24f2d54a24.jpg"}]', 3, 0, 0, 0, 0, 19.98, 1, 0, 1510673506, 1510852637, '', 1),
(2, '手机屏幕增大器', '什么东西让我在火车上用手机看电影时,可以享受到大屏的感觉', '[{"desc":"","url":"home_pics\\/2\\/64d8374d3ce10cbe771fd227652b0131.jpg"}]', 3, 0, 0, 0, 0, 29, 1, 0, 1510673506, 1510852641, '', 1),
(3, '时间戒指', '你们随意感受一下，什么叫做时间从你的指间流逝', '[{"desc":"","url":"home_pics\\/3\\/cd490c8deeef641e36d47724bfb8cff6.jpg"}]', 3, 0, 0, 0, 0, 39, 1, 0, 1510673506, 1510852644, '', 1),
(4, '键盘清洁软胶', '什么东西用来清洁键盘既方便又有效', '[{"desc":"","url":"home_pics\\/4\\/882d039f29fdf7ded0d43ecf993b643c.jpg"}]', 1, 0, 0, 0, 0, 9.9, 1, 0, 1510673506, 1510852650, '', 1),
(5, '小圆盘购物袋', '什么东西体积小、方便携带，却又可以装很多东西', '[{"desc":"","url":"home_pics\\/5\\/9f3011d236e90381ed8722ea42e458a7.jpg"}]', 1, 0, 0, 0, 0, 27.5, 1, 0, 1510673506, 1510852654, '', 1),
(6, '女性站立小便器', '一款让女性站立小便的应急神器', '[{"desc":"","url":"home_pics\\/6\\/470c8e66da29fd910aebbbdf09d107cd.jpg"}]', 2, 0, 0, 0, 0, 9.9, 1, 0, 1510673506, 1510852654, '', 1),
(7, '虚拟投影键盘', '一款随身携带的神器，使用和装逼效果俱佳', '[{"desc":"","url":"home_pics\\/7\\/f5b658a8d13e4c8c4a242b9057b39169.jpg"}]', 3, 0, 0, 0, 0, 189, 1, 0, 1510673506, 1510852655, '', 1),
(8, '手游游戏手柄', '让你农药超神之路的一款必备神器', '[{"desc":"","url":"home_pics\\/8\\/e414a63bcc4ef51b6947b1d13040a5e9.jpg"}]', 1, 0, 0, 0, 0, 9.9, 1, 0, 1510673506, 1510852656, '', 1),
(9, '飞碟雨伞帽子', '小孩子超喜欢、又可以玩的雨伞', '[{"desc":"","url":"home_pics\\/9\\/1be81c5ec6ada4932358145b16da42ec.gif"}]', 1, 0, 0, 0, 0, 23.8, 1, 0, 1510673506, 1510852657, '', 1),
(10, '蓝牙钥匙扣', '找不到钥匙给它打电话啊 -- 健忘党的福音', '[{"desc":"","url":"home_pics\\/10\\/1ea8f773e4c5d05b65a79778c48940e4.jpg"}]', 1, 0, 0, 0, 0, 19.9, 1, 0, 1510673506, 1510852638, '', 1),
(11, '隐私保密印章', '一款轻松保护隐私的利器', '[{"desc":"","url":"home_pics\\/11\\/33e78e2930139434f9c00f042bb07116.jpg"}]', 1, 0, 0, 0, 0, 25, 1, 0, 1510673506, 1510852638, '', 1),
(12, '3D立体涂鸦笔', '传说中的马良神笔', '[{"desc":"","url":"home_pics\\/12\\/0cb3686687c35a8127cf6749fe35b136.jpg"}]', 3, 0, 0, 0, 0, 80, 1, 0, 1510673506, 1510852638, '', 1),
(13, '鸵鸟枕', '让你想睡就睡的枕头', '[{"desc":"","url":"home_pics\\/13\\/0eccf9f614c05ed2e352a2f47f08851f.jpg"}]', 1, 0, 0, 0, 0, 29.9, 1, 0, 1510673506, 1510852639, '', 1),
(14, '迷你地球饮料机', '一样的地球，不一样的饮料机', '[{"desc":"","url":"home_pics\\/14\\/d37314387d9bd7995096ad46cf838c7d.jpg"}]', 2, 0, 0, 0, 0, 56, 1, 0, 1510673506, 1510852639, '', 1),
(15, '懒人饮料帽子', '解放双手的个性创意帽子', '[{"desc":"","url":"home_pics\\/15\\/c23018151382a52fd527e8146bd55a8d.jpg"}]', 2, 0, 0, 0, 0, 23, 1, 0, 1510673506, 1510852639, '', 1),
(16, 'usb冷暖冰箱', '冷暖两用,宿舍神器！', '[{"desc":"","url":"home_pics\\/16\\/f9620fe3bb158989beefb6839d3d3313.jpg"}]', 1, 0, 0, 0, 0, 68, 1, 0, 1510673506, 1510852639, '', 1),
(17, '计量球鸡蛋开壳器', '一款优雅、花式的鸡蛋开壳工具', '[{"desc":"","url":"home_pics\\/17\\/259d8a3c92fad72344e71af6e599f5ba.jpg"}]', 1, 0, 0, 0, 0, 17.82, 1, 0, 1510673506, 1510852640, '', 1),
(18, '多功能螺丝刀组合', '电脑拆机维修小工具组合套装', '[{"desc":"","url":"home_pics\\/18\\/45543dbc9c922c3c00027d7fd83e2d88.jpg"}]', 1, 0, 0, 0, 0, 5.9, 1, 0, 1510673506, 1510852640, '', 1),
(19, '美国队长移动电源', '一款很酷的盾牌，不，移动电源', '[{"desc":"","url":"home_pics\\/19\\/45757358ca68f46f9ab29fe776f607e0.jpg"}]', 2, 0, 0, 0, 0, 138, 1, 0, 1510673506, 1510852641, '', 1),
(20, '钥匙扣数据线', '设计精美，方便携带的数据线', '[{"desc":"","url":"home_pics\\/20\\/90129d74b1da7606ae278f5a19a59930.jpg"}]', 1, 0, 0, 0, 0, 35, 1, 0, 1510673506, 1510852641, '', 1),
(21, '弹性收纳板 ', '归类数码配件，出行更方便', '[{"desc":"","url":"home_pics\\/21\\/cce9e0fb0615f88a038d7a16d13758a3.jpg"}]', 1, 0, 0, 0, 0, 29, 1, 0, 1510673506, 1510852641, '', 1),
(22, ' 全封闭螺旋核桃夹', '用过最好的开核桃工具', '[{"desc":"","url":"home_pics\\/22\\/f2634f241941b1b3cf2dc33e2a8d98f1.jpg"}]', 1, 0, 0, 0, 0, 38, 1, 0, 1510673506, 1510852642, '', 1),
(23, '小恶魔耳机', '重低音运动创意魔音', '[{"desc":"","url":"home_pics\\/23\\/9a6422c5f445a371ebb8f277ce1cc849.jpg"}]', 2, 0, 0, 0, 0, 119, 1, 0, 1510673506, 1510852642, '', 1),
(24, '魔法樱花树', '神奇纸树开花魔法', '[{"desc":"","url":"home_pics\\/24\\/41a85b5e7af6f955866367aad4935172.jpg"}]', 3, 0, 0, 0, 0, 9.9, 1, 0, 1510673506, 1510852642, '', 1),
(25, '砖头枕头', '给你一砖头的温柔', '[{"desc":"","url":"home_pics\\/25\\/ed76a2f7a3deae2aa8c6379673d8edcd.jpg"}]', 3, 0, 0, 0, 0, 9, 1, 0, 1510673506, 1510852643, '', 1),
(26, '尼斯湖汤勺', '再也不用担心汤勺会不见了', '[{"desc":"","url":"home_pics\\/26\\/74832a772eaef4a1f53596c6363021f2.jpg"}]', 1, 0, 0, 0, 0, 7.5, 1, 0, 1510673506, 1510852643, '', 1),
(27, '隐形透光语藏字卡', '只有透过光才能看到TA的心思', '[{"desc":"","url":"home_pics\\/27\\/e2776e976257c7ef70e37ba283a81d48.jpg"}]', 2, 0, 0, 0, 0, 11.8, 1, 0, 1510673506, 1510852643, '', 1),
(28, '泡面压杯', '冷静地等待一碗泡面', '[{"desc":"","url":"home_pics\\/28\\/89c963d02d655b4839d9de5fceedeed7.jpg"}]', 3, 0, 0, 0, 0, 44.9, 1, 0, 1510673506, 1510852643, '', 1),
(29, '双层反向雨伞', '收伞再也不用担心雨水了！', '[{"desc":"","url":"home_pics\\/29\\/ec7480f5ccfe91cb804963d88a134a22.jpg"}]', 1, 0, 0, 0, 0, 35, 1, 0, 1510673506, 1510852644, '', 1),
(30, '纳米鞋子喷雾', '防污喷剂鞋油球鞋神器', '[{"desc":"","url":"home_pics\\/30\\/d0873c2831bba5bb9d31fb11cd7d81c1.jpg"}]', 1, 0, 0, 0, 0, 29.8, 1, 0, 1510673506, 1510852644, '', 1),
(31, '无线迷你指环鼠标', '指尖操作鼠标不是梦', '[{"desc":"","url":"home_pics\\/31\\/5e095a38f8f42a501d26b0ac50e677d4.jpg"}]', 2, 0, 0, 0, 0, 38.9, 1, 0, 1510673506, 1510852644, '', 1),
(32, ' 3D打印月亮灯 ', '揽月在手，我愿意为你摘下月亮。', '[{"desc":"","url":"home_pics\\/32\\/c8aeeea28d06e7db4ff9cfca4e7cab92.jpg"}]', 3, 0, 0, 0, 0, 58.8, 1, 0, 1510673506, 1510852645, '', 1),
(33, '自行车激光尾灯', '既安全又拉风', '[{"desc":"","url":"home_pics\\/33\\/a2735e4d3b6ab75d5e83ffaa1a90726f.jpg"}]', 1, 0, 0, 0, 0, 39, 1, 0, 1510673506, 1510852645, '', 1),
(34, 'Polar Pen', '一支爱不释手的磁性笔', '[{"desc":"","url":"home_pics\\/34\\/676f28a54a282fd6146baf572aec7e05.jpg"}]', 3, 0, 0, 0, 0, 35, 1, 0, 1510673506, 1510852646, '', 1),
(35, '磁力沙漏', '可以开花的磁力沙漏', '[{"desc":"","url":"home_pics\\/35\\/cd1207337e0fbd23ed7cb4952cd6de73.jpg"}]', 3, 0, 0, 0, 0, 28, 1, 0, 1510673506, 1511015001, 'qugou', 1),
(36, '易拉环开瓶器', '创意开瓶器 造型独特', '[{"desc":"","url":"home_pics\\/36\\/169b831f517cd7ebb8aa516163a502e3.jpg"}]', 3, 0, 0, 0, 0, 9, 1, 0, 1510673506, 1510852646, '', 1),
(37, '无聊盒子', '无聊到玩一整天', '[{"desc":"","url":"home_pics\\/37\\/818a59764011d6eeb89a192e150f466a.jpg"}]', 2, 0, 0, 0, 0, 48, 1, 0, 1510673506, 1510852647, '', 1),
(38, '狗狗鸭嘴套', '狗狗嘴套防咬叫乱吃', '[{"desc":"","url":"home_pics\\/38\\/ad1d5b18bef430450053349f939189b1.jpg"}]', 4, 0, 0, 0, 0, 9.8, 1, 0, 1510673506, 1510852650, '', 1),
(39, '悬浮地球仪', '可以凌空自转的地球', '[{"desc":"","url":"home_pics\\/39\\/83f065887da23fb18d68b17514a9aa08.jpg"}]', 2, 0, 0, 0, 0, 88, 1, 0, 1510673506, 1510852650, '', 1),
(40, '天气预报瓶', '一个可以预报天气的神奇瓶子', '[{"desc":"","url":"home_pics\\/40\\/5ce99fcd43c71936191e2b8033c7ef0c.jpg"}]', 2, 0, 0, 0, 0, 88, 1, 0, 1510673506, 1510852651, '', 1),
(41, '刮刮地图中国', '画出自己的人生轨迹', '[{"desc":"","url":"home_pics\\/41\\/3d77250ab36d74d7410a3d9c9e6999cc.jpg"}]', 3, 0, 0, 0, 0, 28, 1, 0, 1510673506, 1510852651, '', 1),
(42, '歪瓜猫咪老师盆栽', '长草的良口三三', '[{"desc":"","url":"home_pics\\/42\\/88ad70a3670eb612723f65e87abedd49.jpg"}]', 4, 0, 0, 0, 0, 35, 1, 0, 1510673507, 1510852651, '', 1),
(43, '迷你保龄球', '桌面减压神器', '[{"desc":"","url":"home_pics\\/43\\/e08aed4095a6f4bf530d2792babebc8f.jpg"}]', 3, 0, 0, 0, 0, 13.9, 1, 0, 1510673507, 1510852652, '', 1),
(44, '牛顿摆球', '时不时拉几下让心灵放空一下', '[{"desc":"","url":"home_pics\\/44\\/a2c5e8044bad43bca729c39f5e8309d6.jpg"}]', 2, 0, 0, 0, 0, 48, 1, 0, 1510673507, 1510852652, '', 1),
(45, '指尖陀螺', '魔幻减压指尖陀螺', '[{"desc":"","url":"home_pics\\/45\\/47af52f1650e3cd8d258d34614198d3a.jpg"}]', 3, 0, 0, 0, 0, 15.6, 1, 0, 1510673507, 1510852652, '', 1),
(46, '坚果音响', '坚果创意迷你低音炮', '[{"desc":"","url":"home_pics\\/46\\/37a469d8fc0496ee186908b1b468f0ce.jpg"}]', 2, 0, 0, 0, 0, 69, 1, 0, 1510673507, 1510852652, '', 1),
(47, '按键水杯', '简约、方便', '[{"desc":"","url":"home_pics\\/47\\/1bca3862cc4b1bca6dc291064b40adc5.jpg"}]', 1, 0, 0, 0, 0, 11.9, 1, 0, 1510673507, 1510852653, '', 1),
(48, '咕咕机--口袋打印机', '有时候你和爱情只差一个打印机的距离', '[{"desc":"","url":"home_pics\\/48\\/406326cbc438adb0950a2577e9e13f29.jpg"}]', 2, 0, 0, 0, 0, 239, 1, 0, 1510673507, 1510852653, '', 1),
(49, '歪瓜单身狗狗粮', '金坷垃doge送基友', '[{"desc":"","url":"home_pics\\/49\\/fa2c766fb341c0a9e9eefd06b896d922.jpg"}]', 2, 0, 0, 0, 0, 29, 1, 0, 1510673507, 1510852653, '', 1),
(50, '3D立体台灯', '创意梦幻、温馨节能小夜灯', '[{"desc":"","url":"home_pics\\/50\\/d3d519b16f8b7d28e47b916beb6dfd53.jpg"}]', 1, 0, 0, 0, 0, 39.9, 1, 0, 1510673507, 1510852654, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `qu_hot`
--

CREATE TABLE `qu_hot` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL DEFAULT '' COMMENT '标签',
  `weight` int(11) DEFAULT '0' COMMENT '权重',
  `createtime` int(11) DEFAULT '0',
  `updatetime` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `qu_recommend`
--

CREATE TABLE `qu_recommend` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `desc` text COMMENT '推荐文案',
  `weight` int(11) DEFAULT '0',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `goods_id` int(11) DEFAULT NULL,
  `is_delete` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推荐';

--
-- 转存表中的数据 `qu_recommend`
--

INSERT INTO `qu_recommend` (`id`, `user_id`, `desc`, `weight`, `updatetime`, `createtime`, `goods_id`, `is_delete`) VALUES
(1, NULL, 'test', 0, 1510910921, 1510910921, 10, 1),
(2, NULL, 'test', 0, 1510910922, 1510910922, 11, 1),
(3, NULL, 'test', 0, 1510910922, 1510910922, 12, 1),
(4, NULL, 'test', 0, 1510910922, 1510910922, 13, 1),
(5, NULL, 'test', 0, 1510910922, 1510910922, 14, 1),
(6, NULL, 'test', 0, 1510910922, 1510910922, 15, 1),
(7, NULL, 'test', 0, 1510910922, 1510910922, 16, 1),
(8, NULL, 'test', 0, 1510910922, 1510910922, 17, 1),
(9, NULL, 'test', 0, 1510910922, 1510910922, 18, 1),
(10, NULL, 'test', 0, 1510910922, 1510910922, 19, 1);

-- --------------------------------------------------------

--
-- 表的结构 `qu_share`
--

CREATE TABLE `qu_share` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `user_id` int(11) NOT NULL,
  `is_delete` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分享';

-- --------------------------------------------------------

--
-- 表的结构 `qu_shistory`
--

CREATE TABLE `qu_shistory` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(1024) NOT NULL DEFAULT '' COMMENT '搜索内容',
  `createtime` int(11) DEFAULT '0',
  `updatetime` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `qu_superme`
--

CREATE TABLE `qu_superme` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `is_delete` int(11) DEFAULT '1',
  `weight` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='精选';

--
-- 转存表中的数据 `qu_superme`
--

INSERT INTO `qu_superme` (`id`, `goods_id`, `is_delete`, `weight`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 3, 1, 0),
(4, 4, 1, 0),
(5, 5, 1, 0),
(6, 6, 1, 0),
(7, 7, 1, 0),
(8, 8, 1, 0),
(9, 9, 1, 0),
(10, 10, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `qu_top`
--

CREATE TABLE `qu_top` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `category` int(11) NOT NULL DEFAULT '2' COMMENT '1代表每日，2代表每周，3代表每月，4.总排行',
  `weight` int(11) DEFAULT '0' COMMENT '榜单排序',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='榜单';

-- --------------------------------------------------------

--
-- 表的结构 `qu_user`
--

CREATE TABLE `qu_user` (
  `id` int(11) NOT NULL,
  `wx_token` varchar(1024) DEFAULT NULL COMMENT '微信token',
  `name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `img_url` varchar(255) DEFAULT NULL COMMENT '头像url',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cai_quan`
--
ALTER TABLE `cai_quan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cai_quan_huihe`
--
ALTER TABLE `cai_quan_huihe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_addonnews`
--
ALTER TABLE `fa_addonnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_addonproduct`
--
ALTER TABLE `fa_addonproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_admin`
--
ALTER TABLE `fa_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `fa_admin_log`
--
ALTER TABLE `fa_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`username`);

--
-- Indexes for table `fa_archives`
--
ALTER TABLE `fa_archives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`channel_id`,`status`),
  ADD KEY `channel` (`channel_id`,`weigh`,`id`);

--
-- Indexes for table `fa_attachment`
--
ALTER TABLE `fa_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_auth_group`
--
ALTER TABLE `fa_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_auth_group_access`
--
ALTER TABLE `fa_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `fa_auth_rule`
--
ALTER TABLE `fa_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD KEY `pid` (`pid`),
  ADD KEY `weigh` (`weigh`);

--
-- Indexes for table `fa_block`
--
ALTER TABLE `fa_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_blog_category`
--
ALTER TABLE `fa_blog_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weigh` (`weigh`,`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `fa_blog_comment`
--
ALTER TABLE `fa_blog_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`,`pid`) USING BTREE;

--
-- Indexes for table `fa_blog_post`
--
ALTER TABLE `fa_blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `fa_calendar`
--
ALTER TABLE `fa_calendar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `fa_calendar_event`
--
ALTER TABLE `fa_calendar_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `fa_category`
--
ALTER TABLE `fa_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weigh` (`weigh`,`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `fa_channel`
--
ALTER TABLE `fa_channel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `diyname` (`diyname`),
  ADD KEY `weigh` (`weigh`,`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `fa_config`
--
ALTER TABLE `fa_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `fa_crontab`
--
ALTER TABLE `fa_crontab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_fields`
--
ALTER TABLE `fa_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_id` (`model_id`) USING BTREE;

--
-- Indexes for table `fa_model`
--
ALTER TABLE `fa_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_page`
--
ALTER TABLE `fa_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `fa_tags`
--
ALTER TABLE `fa_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD KEY `nums` (`nums`);

--
-- Indexes for table `fa_test`
--
ALTER TABLE `fa_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qu_ad`
--
ALTER TABLE `qu_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qu_browser`
--
ALTER TABLE `qu_browser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qu_buy`
--
ALTER TABLE `qu_buy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qu_collection`
--
ALTER TABLE `qu_collection`
  ADD PRIMARY KEY (`user_id`,`goods_id`);

--
-- Indexes for table `qu_details`
--
ALTER TABLE `qu_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qu_goods`
--
ALTER TABLE `qu_goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qu_hot`
--
ALTER TABLE `qu_hot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qu_recommend`
--
ALTER TABLE `qu_recommend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qu_share`
--
ALTER TABLE `qu_share`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qu_shistory`
--
ALTER TABLE `qu_shistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qu_superme`
--
ALTER TABLE `qu_superme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qu_top`
--
ALTER TABLE `qu_top`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qu_user`
--
ALTER TABLE `qu_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cai_quan`
--
ALTER TABLE `cai_quan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=151;
--
-- 使用表AUTO_INCREMENT `cai_quan_huihe`
--
ALTER TABLE `cai_quan_huihe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=139;
--
-- 使用表AUTO_INCREMENT `fa_admin`
--
ALTER TABLE `fa_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `fa_admin_log`
--
ALTER TABLE `fa_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=1487;
--
-- 使用表AUTO_INCREMENT `fa_archives`
--
ALTER TABLE `fa_archives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- 使用表AUTO_INCREMENT `fa_attachment`
--
ALTER TABLE `fa_attachment`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `fa_auth_group`
--
ALTER TABLE `fa_auth_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `fa_auth_rule`
--
ALTER TABLE `fa_auth_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
--
-- 使用表AUTO_INCREMENT `fa_block`
--
ALTER TABLE `fa_block`
  MODIFY `id` smallint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `fa_blog_category`
--
ALTER TABLE `fa_blog_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `fa_blog_comment`
--
ALTER TABLE `fa_blog_comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `fa_blog_post`
--
ALTER TABLE `fa_blog_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `fa_calendar`
--
ALTER TABLE `fa_calendar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- 使用表AUTO_INCREMENT `fa_calendar_event`
--
ALTER TABLE `fa_calendar_event`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- 使用表AUTO_INCREMENT `fa_category`
--
ALTER TABLE `fa_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `fa_channel`
--
ALTER TABLE `fa_channel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- 使用表AUTO_INCREMENT `fa_config`
--
ALTER TABLE `fa_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `fa_crontab`
--
ALTER TABLE `fa_crontab`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `fa_fields`
--
ALTER TABLE `fa_fields`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- 使用表AUTO_INCREMENT `fa_model`
--
ALTER TABLE `fa_model`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `fa_page`
--
ALTER TABLE `fa_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=29;
--
-- 使用表AUTO_INCREMENT `fa_tags`
--
ALTER TABLE `fa_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- 使用表AUTO_INCREMENT `fa_test`
--
ALTER TABLE `fa_test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `qu_ad`
--
ALTER TABLE `qu_ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `qu_browser`
--
ALTER TABLE `qu_browser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `qu_buy`
--
ALTER TABLE `qu_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `qu_details`
--
ALTER TABLE `qu_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- 使用表AUTO_INCREMENT `qu_goods`
--
ALTER TABLE `qu_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- 使用表AUTO_INCREMENT `qu_hot`
--
ALTER TABLE `qu_hot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `qu_recommend`
--
ALTER TABLE `qu_recommend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `qu_share`
--
ALTER TABLE `qu_share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `qu_shistory`
--
ALTER TABLE `qu_shistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `qu_superme`
--
ALTER TABLE `qu_superme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `qu_top`
--
ALTER TABLE `qu_top`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `qu_user`
--
ALTER TABLE `qu_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
