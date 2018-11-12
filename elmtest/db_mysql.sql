-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2018-11-12 03:49:13
-- 服务器版本： 10.1.36-MariaDB
-- PHP 版本： 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `db_mysql`
--

-- --------------------------------------------------------

--
-- 表的结构 `t_food`
--

CREATE TABLE `t_food` (
  `foodId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(32) NOT NULL,
  `sellCount` int(11) NOT NULL DEFAULT '100',
  `rating` int(11) NOT NULL DEFAULT '90',
  `info` varchar(128) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `fTypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_food`
--

INSERT INTO `t_food` (`foodId`, `name`, `price`, `description`, `sellCount`, `rating`, `info`, `icon`, `image`, `fTypeId`) VALUES
(1, '皮蛋瘦肉粥', 10, '咸粥', 229, 100, '一碗皮蛋瘦肉粥，总是我到粥店时的不二之选。香浓软滑，饱腹暖心，皮蛋的Q弹与瘦肉的滑嫩伴着粥香溢于满口，让人喝这样的一碗粥也觉得心满意足', 'http://fuss10.elemecdn.com/c/cd/c12745ed8a5171e13b427dbc39401jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/c/cd/c12745ed8a5171e13b427dbc39401jpeg.jpeg?imageView2/1/w/750/h/750', 1),
(2, '扁豆焖面', 14, '', 188, 96, '', 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg?imageView2/1/w/750/h/750', 1),
(3, '葱花饼', 10, '', 124, 85, '', 'http://fuss10.elemecdn.com/f/28/a51e7b18751bcdf871648a23fd3b4jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/f/28/a51e7b18751bcdf871648a23fd3b4jpeg.jpeg?imageView2/1/w/750/h/750', 1),
(4, '牛肉馅饼', 14, '', 114, 91, '', 'http://fuss10.elemecdn.com/d/b9/bcab0e8ad97758e65ae5a62b2664ejpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/d/b9/bcab0e8ad97758e65ae5a62b2664ejpeg.jpeg?imageView2/1/w/750/h/750', 1),
(5, '招牌猪肉白菜锅贴/10个', 17, '', 101, 78, '', 'http://fuss10.elemecdn.com/7/72/9a580c1462ca1e4d3c07e112bc035jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/7/72/9a580c1462ca1e4d3c07e112bc035jpeg.jpeg?imageView2/1/w/750/h/750', 1),
(6, '南瓜粥', 9, '甜粥', 91, 100, '', 'http://fuss10.elemecdn.com/8/a6/453f65f16b1391942af11511b7a90jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/8/a6/453f65f16b1391942af11511b7a90jpeg.jpeg?imageView2/1/w/750/h/750', 1),
(7, '红豆薏米美肤粥', 12, '甜粥', 86, 100, '', 'http://fuss10.elemecdn.com/d/22/260bd78ee6ac6051136c5447fe307jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/d/22/260bd78ee6ac6051136c5447fe307jpeg.jpeg?imageView2/1/w/750/h/750', 1),
(8, '八宝酱菜', 4, '', 84, 100, '', 'http://fuss10.elemecdn.com/9/b5/469d8854f9a3a03797933fd01398bjpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/9/b5/469d8854f9a3a03797933fd01398bjpeg.jpeg?imageView2/1/w/750/h/750', 1),
(9, '红枣山药糙米粥', 10, '', 81, 91, '', 'http://fuss10.elemecdn.com/9/b5/469d8854f9a3a03797933fd01398bjpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/9/b5/469d8854f9a3a03797933fd01398bjpeg.jpeg?imageView2/1/w/750/h/750', 1),
(10, '糊塌子', 10, '', 80, 93, ' ', 'http://fuss10.elemecdn.com/0/05/097a2a59fd2a2292d08067e16380cjpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/0/05/097a2a59fd2a2292d08067e16380cjpeg.jpeg?imageView2/1/w/750/h/750', 1),
(11, '红枣山药粥套餐', 29, '', 17, 93, ' ', 'http://fuss10.elemecdn.com/6/72/cb844f0bb60c502c6d5c05e0bddf5jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/6/72/cb844f0bb60c502c6d5c05e0bddf5jpeg.jpeg?imageView2/1/w/750/h/750', 2),
(12, 'VC无限橙果汁', 8, '', 15, 100, ' ', 'http://fuss10.elemecdn.com/e/c6/f348e811772016ae24e968238bcbfjpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/e/c6/f348e811772016ae24e968238bcbfjpeg.jpeg?imageView2/1/w/750/h/750', 3),
(13, '娃娃菜炖豆腐', 17, '', 43, 92, ' ', 'http://fuss10.elemecdn.com/d/2d/b1eb45b305635d9dd04ddf157165fjpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/d/2d/b1eb45b305635d9dd04ddf157165fjpeg.jpeg?imageView2/1/w/750/h/750', 4),
(14, '手撕包菜', 16, '', 29, 100, ' ', 'http://fuss10.elemecdn.com/9/c6/f3bc84468820121112e79583c24efjpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/9/c6/f3bc84468820121112e79583c24efjpeg.jpeg?imageView2/1/w/750/h/750', 4),
(15, '香酥黄金鱼/3条', 11, '', 15, 100, ' ', 'http://fuss10.elemecdn.com/4/e7/8277a6a2ea0a2e97710290499fc41jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/4/e7/8277a6a2ea0a2e97710290499fc41jpeg.jpeg?imageView2/1/w/750/h/750', 4),
(16, '八宝酱菜', 4, '', 84, 100, ' ', 'http://fuss10.elemecdn.com/9/b5/469d8854f9a3a03797933fd01398bjpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/9/b5/469d8854f9a3a03797933fd01398bjpeg.jpeg?imageView2/1/w/750/h/750', 5),
(17, '拍黄瓜', 9, '', 28, 100, ' ', 'http://fuss10.elemecdn.com/6/54/f654985b4e185f06eb07f8fa2b2e8jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/6/54/f654985b4e185f06eb07f8fa2b2e8jpeg.jpeg?imageView2/1/w/750/h/750', 5),
(18, '红豆薏米粥套餐', 37, '', 3, 100, ' ', 'http://fuss10.elemecdn.com/f/49/27f26ed00c025b2200a9ccbb7e67ejpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/f/49/27f26ed00c025b2200a9ccbb7e67ejpeg.jpeg?imageView2/1/w/750/h/750', 6),
(19, '皮蛋瘦肉粥套餐', 31, '', 12, 100, ' ', 'http://fuss10.elemecdn.com/8/96/f444a8087f0e940ef264617f9d98ajpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/8/96/f444a8087f0e940ef264617f9d98ajpeg.jpeg?imageView2/1/w/750/h/750', 6),
(20, '蜜瓜圣女萝莉杯', 6, '', 1, 100, ' ', 'http://fuss10.elemecdn.com/b/5f/b3b04c259d5ec9fa52e1856ee50dajpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/b/5f/b3b04c259d5ec9fa52e1856ee50dajpeg.jpeg?imageView2/1/w/750/h/750', 7),
(21, '加多宝', 6, '', 7, 100, ' ', 'http://fuss10.elemecdn.com/b/9f/5e6c99c593cf65229225c5661bcdejpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/b/9f/5e6c99c593cf65229225c5661bcdejpeg.jpeg?imageView2/1/w/750/h/750', 7),
(22, 'VC无限橙果汁', 8, '', 15, 100, ' ', 'http://fuss10.elemecdn.com/e/c6/f348e811772016ae24e968238bcbfjpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/e/c6/f348e811772016ae24e968238bcbfjpeg.jpeg?imageView2/1/w/750/h/750', 7),
(23, '扁豆焖面', 14, '', 188, 96, ' ', 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/c/6b/29e3d29b0db63d36f7c500bca31d8jpeg.jpeg?imageView2/1/w/750/h/750', 8),
(24, '葱花饼', 8, '', 15, 100, ' ', 'http://fuss10.elemecdn.com/f/28/a51e7b18751bcdf871648a23fd3b4jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/f/28/a51e7b18751bcdf871648a23fd3b4jpeg.jpeg?imageView2/1/w/750/h/750', 8),
(25, '牛肉馅饼', 14, '', 114, 91, ' ', 'http://fuss10.elemecdn.com/d/b9/bcab0e8ad97758e65ae5a62b2664ejpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/d/b9/bcab0e8ad97758e65ae5a62b2664ejpeg.jpeg?imageView2/1/w/750/h/750', 8),
(26, '招牌猪肉白菜锅贴/10个', 17, '', 101, 78, ' ', 'http://fuss10.elemecdn.com/7/72/9a580c1462ca1e4d3c07e112bc035jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/7/72/9a580c1462ca1e4d3c07e112bc035jpeg.jpeg?imageView2/1/w/750/h/750', 8),
(27, '糊塌子', 10, '', 80, 93, ' ', 'http://fuss10.elemecdn.com/0/05/097a2a59fd2a2292d08067e16380cjpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/0/05/097a2a59fd2a2292d08067e16380cjpeg.jpeg?imageView2/1/w/750/h/750', 8),
(28, '皮蛋瘦肉粥', 10, '', 229, 100, ' ', 'http://fuss10.elemecdn.com/c/cd/c12745ed8a5171e13b427dbc39401jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/c/cd/c12745ed8a5171e13b427dbc39401jpeg.jpeg?imageView2/1/w/750/h/750', 9),
(29, '南瓜粥', 9, '', 91, 100, ' ', 'http://fuss10.elemecdn.com/8/a6/453f65f16b1391942af11511b7a90jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/8/a6/453f65f16b1391942af11511b7a90jpeg.jpeg?imageView2/1/w/750/h/750', 9),
(30, '红豆薏米美肤粥', 12, '', 86, 100, ' ', 'http://fuss10.elemecdn.com/d/22/260bd78ee6ac6051136c5447fe307jpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/d/22/260bd78ee6ac6051136c5447fe307jpeg.jpeg?imageView2/1/w/750/h/750', 9),
(31, '红枣山药糙米粥', 10, '', 81, 100, ' ', 'http://fuss10.elemecdn.com/9/b5/469d8854f9a3a03797933fd01398bjpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/9/b5/469d8854f9a3a03797933fd01398bjpeg.jpeg?imageView2/1/w/750/h/750', 9),
(32, '鲜蔬菌菇粥', 11, '', 65, 100, ' ', 'http://fuss10.elemecdn.com/e/a3/5317c68dd618929b6ac05804e429ajpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/e/a3/5317c68dd618929b6ac05804e429ajpeg.jpeg?imageView2/1/w/750/h/750', 9),
(33, '田园蔬菜粥', 10, '', 78, 100, ' ', 'http://fuss10.elemecdn.com/a/94/7371083792c19df00e546b29e344cjpeg.jpeg?imageView2/1/w/114/h/114', 'http://fuss10.elemecdn.com/a/94/7371083792c19df00e546b29e344cjpeg.jpeg?imageView2/1/w/750/h/750', 9);

-- --------------------------------------------------------

--
-- 表的结构 `t_foodtype`
--

CREATE TABLE `t_foodtype` (
  `foodid` int(11) NOT NULL COMMENT '食品编号',
  `foodtype` varchar(50) NOT NULL COMMENT '食品类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='食品类型表';

--
-- 转存表中的数据 `t_foodtype`
--

INSERT INTO `t_foodtype` (`foodid`, `foodtype`) VALUES
(1, '热销榜'),
(2, '单人精彩套餐'),
(3, '冰爽饮品限时特惠'),
(4, '精选热菜'),
(5, '爽口凉菜'),
(6, '精选套餐'),
(7, '果拼果汁'),
(8, '小吃主食'),
(9, '特色粥品');

-- --------------------------------------------------------

--
-- 表的结构 `t_orders`
--

CREATE TABLE `t_orders` (
  `orderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `sellerId` int(11) NOT NULL,
  `orderTime` varchar(128) NOT NULL,
  `price` int(11) NOT NULL,
  `orderType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_orders`
--

INSERT INTO `t_orders` (`orderId`, `userId`, `sellerId`, `orderTime`, `price`, `orderType`) VALUES
(1, 0, 0, '1541950644290', 51, 1),
(2, 0, 0, '1541954994343', 119, 1),
(3, 0, 0, '1541956189313', 50, 1),
(4, 0, 0, '1541958930388', 44, 1),
(5, 0, 0, '1541988809151', 50, 1);

-- --------------------------------------------------------

--
-- 表的结构 `t_seller`
--

CREATE TABLE `t_seller` (
  `sellerId` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(128) NOT NULL,
  `deliveryTime` int(11) NOT NULL,
  `score` float NOT NULL,
  `serviceScore` float NOT NULL,
  `foodScore` float NOT NULL,
  `rankRate` float NOT NULL,
  `minPrice` int(11) NOT NULL,
  `deliveryPrice` int(11) NOT NULL,
  `ratingCount` int(11) NOT NULL,
  `sellCount` int(11) NOT NULL,
  `bulletin` varchar(256) NOT NULL,
  `avatar` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_seller`
--

INSERT INTO `t_seller` (`sellerId`, `name`, `description`, `deliveryTime`, `score`, `serviceScore`, `foodScore`, `rankRate`, `minPrice`, `deliveryPrice`, `ratingCount`, `sellCount`, `bulletin`, `avatar`) VALUES
(1, '粥品香坊（回龙观）', '蜂鸟专送', 38, 4.2, 4.1, 4.3, 69.2, 20, 4, 24, 90, '粥品香坊其烹饪粥料的秘方源于中国千年古法，在融和现代制作工艺，由世界烹饪大师屈浩先生领衔研发。坚守纯天然、0添加的良心品质深得消费者青睐，发展至今成为粥类的引领品牌。是2008年奥运会和2013年园博会指定餐饮服务商。', 'http://static.galileo.xiaojukeji.com/static/tms/seller_avatar_256px.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `t_sellerinfos`
--

CREATE TABLE `t_sellerinfos` (
  `sInfoId` int(11) NOT NULL,
  `sellerId` int(11) NOT NULL,
  `info` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_sellerinfos`
--

INSERT INTO `t_sellerinfos` (`sInfoId`, `sellerId`, `info`) VALUES
(1, 1, '该商家支持发票,请下单写好发票抬头'),
(2, 1, '品类：其他菜系,包子粥店'),
(3, 1, '北京市昌平区回龙观西大街龙观置业大厦底商B座102单元1340'),
(4, 1, '营业时间:10:00-20:30');

-- --------------------------------------------------------

--
-- 表的结构 `t_sellerpics`
--

CREATE TABLE `t_sellerpics` (
  `sPicsId` int(11) NOT NULL,
  `sellerId` int(11) NOT NULL,
  `picSrc` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_sellerpics`
--

INSERT INTO `t_sellerpics` (`sPicsId`, `sellerId`, `picSrc`) VALUES
(1, 1, 'http://fuss10.elemecdn.com/8/71/c5cf5715740998d5040dda6e66abfjpeg.jpeg?imageView2/1/w/180/h/180'),
(2, 1, 'http://fuss10.elemecdn.com/b/6c/75bd250e5ba69868f3b1178afbda3jpeg.jpeg?imageView2/1/w/180/h/180'),
(3, 1, 'http://fuss10.elemecdn.com/f/96/3d608c5811bc2d902fc9ab9a5baa7jpeg.jpeg?imageView2/1/w/180/h/180'),
(4, 1, 'http://fuss10.elemecdn.com/6/ad/779f8620ff49f701cd4c58f6448b6jpeg.jpeg?imageView2/1/w/180/h/180');

-- --------------------------------------------------------

--
-- 表的结构 `t_sellersupports`
--

CREATE TABLE `t_sellersupports` (
  `sSupportId` int(11) NOT NULL,
  `description` varchar(128) NOT NULL,
  `sellerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_sellersupports`
--

INSERT INTO `t_sellersupports` (`sSupportId`, `description`, `sellerId`) VALUES
(1, '在线支付满28减5', 1),
(2, 'VC无限橙果汁全场8折', 1),
(3, '单人精彩套餐', 1),
(4, '该商家支持发票,请下单写好发票抬头', 1),
(5, '已加入“外卖保”计划,食品安全保障', 1);

-- --------------------------------------------------------

--
-- 表的结构 `t_test`
--

CREATE TABLE `t_test` (
  `id` int(11) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `t_test`
--

INSERT INTO `t_test` (`id`, `num`) VALUES
(1, 96),
(4, 200);

-- --------------------------------------------------------

--
-- 表的结构 `t_user`
--

CREATE TABLE `t_user` (
  `username` text NOT NULL COMMENT '用户名',
  `password` int(20) NOT NULL COMMENT '密码',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

--
-- 转存表中的数据 `t_user`
--

INSERT INTO `t_user` (`username`, `password`, `id`) VALUES
('覃慧红', 123456, 1),
('王小明', 111111, 2),
('admin', 1111, 3);

-- --------------------------------------------------------

--
-- 表的结构 `t_userinfos`
--

CREATE TABLE `t_userinfos` (
  `uInfoId` int(11) NOT NULL,
  `address` varchar(128) NOT NULL,
  `account` int(11) NOT NULL,
  `headSrc` varchar(128) DEFAULT NULL,
  `nick` varchar(32) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `phone` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_userinfos`
--

INSERT INTO `t_userinfos` (`uInfoId`, `address`, `account`, `headSrc`, `nick`, `userId`, `phone`) VALUES
(1, '南昌大学学生公寓6#666', 1000, 'http://www.chinadaily.com.cn/image_e/2016/a-5.jpg', '帕尼尼', 1, '13578889999');

--
-- 转储表的索引
--

--
-- 表的索引 `t_food`
--
ALTER TABLE `t_food`
  ADD PRIMARY KEY (`foodId`);

--
-- 表的索引 `t_foodtype`
--
ALTER TABLE `t_foodtype`
  ADD PRIMARY KEY (`foodid`);

--
-- 表的索引 `t_orders`
--
ALTER TABLE `t_orders`
  ADD PRIMARY KEY (`orderId`);

--
-- 表的索引 `t_seller`
--
ALTER TABLE `t_seller`
  ADD PRIMARY KEY (`sellerId`);

--
-- 表的索引 `t_sellerinfos`
--
ALTER TABLE `t_sellerinfos`
  ADD PRIMARY KEY (`sInfoId`);

--
-- 表的索引 `t_sellerpics`
--
ALTER TABLE `t_sellerpics`
  ADD PRIMARY KEY (`sPicsId`);

--
-- 表的索引 `t_sellersupports`
--
ALTER TABLE `t_sellersupports`
  ADD PRIMARY KEY (`sSupportId`);

--
-- 表的索引 `t_test`
--
ALTER TABLE `t_test`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `t_userinfos`
--
ALTER TABLE `t_userinfos`
  ADD PRIMARY KEY (`uInfoId`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `t_food`
--
ALTER TABLE `t_food`
  MODIFY `foodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- 使用表AUTO_INCREMENT `t_foodtype`
--
ALTER TABLE `t_foodtype`
  MODIFY `foodid` int(11) NOT NULL AUTO_INCREMENT COMMENT '食品编号', AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `t_orders`
--
ALTER TABLE `t_orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `t_sellerinfos`
--
ALTER TABLE `t_sellerinfos`
  MODIFY `sInfoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `t_sellerpics`
--
ALTER TABLE `t_sellerpics`
  MODIFY `sPicsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `t_sellersupports`
--
ALTER TABLE `t_sellersupports`
  MODIFY `sSupportId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `t_userinfos`
--
ALTER TABLE `t_userinfos`
  MODIFY `uInfoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
