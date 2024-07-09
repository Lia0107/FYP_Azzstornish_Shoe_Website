-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2023-11-27 02:08:47
-- 服务器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `finalproject`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@gmail.com', '11111111');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `cID` int(11) NOT NULL,
  `cName` varchar(200) NOT NULL,
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`cID`, `cName`, `Image`) VALUES
(12, 'Women', '0c315f284b84f4041c50ad58dbab7afe.webp'),
(14, 'Children', '63007c7165a7b7369b3511632f576a50.webp'),
(21, 'Men', '123c51eb27569af63af742eb1adf4177.webp');

-- --------------------------------------------------------

--
-- 表的结构 `discount`
--

CREATE TABLE `discount` (
  `Oid` int(11) NOT NULL,
  `offer` varchar(200) NOT NULL,
  `percentage` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `userID` varchar(123) NOT NULL,
  `available` varchar(123) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 转存表中的数据 `discount`
--

INSERT INTO `discount` (`Oid`, `offer`, `percentage`, `qty`, `userID`, `available`, `date`) VALUES
(33, 'abpesI', '0.15', 0, '24', 'unavailable', '2023-12-15'),
(34, 'uJsIFo', '0.4', 0, '24', 'available', '2023-12-15'),
(35, 'iq4oCZ', '0.1', 0, '25', 'unavailable', '2023-12-17'),
(36, 'eQY5hi', '0.15', 0, '25', 'unavailable', '2023-12-17'),
(37, 'nQH1IR', '0.15', 0, '25', 'unavailable', '2023-12-17'),
(38, 'u2tD68', '0.15', 0, '25', 'unavailable', '2023-12-17'),
(39, 'kWRKcu', '0.15', 0, '25', 'unavailable', '2023-12-17'),
(40, 'zA53yC', '0.15', 0, '25', 'unavailable', '2023-12-17'),
(41, 'TeXVxz', '0.15', 0, '25', 'available', '2023-12-17'),
(42, '43aQQG', '0.15', 0, '25', 'available', '2023-12-17'),
(43, 'CEmx2Y', '0.15', 0, '25', 'available', '2023-12-24'),
(44, 'wBR9LP', '0.15', 0, '25', 'available', '2023-12-24'),
(45, 'hguIa3', '0.15', 0, '25', 'available', '2023-12-24'),
(46, 'lc5ePs', '0.15', 0, '25', 'available', '2023-12-24'),
(47, 'JWwwKB', '0.15', 0, '25', 'available', '2023-12-24'),
(48, 'LHltSu', '0.15', 0, '25', 'available', '2023-12-24'),
(49, 'G3qjbm', '0.15', 0, '25', 'available', '2023-12-24'),
(50, 'h20VWT', '0.15', 0, '25', 'available', '2023-12-24'),
(51, 'CqhB6C', '0.15', 0, '25', 'available', '2023-12-24'),
(52, 'Nh7QFi', '0.15', 0, '25', 'available', '2023-12-24'),
(53, 'Jy6z7v', '0.15', 0, '25', 'available', '2023-12-24'),
(54, 'GQEQvL', '0.15', 0, '25', 'available', '2023-12-24'),
(55, 'httkyN', '0.15', 0, '25', 'available', '2023-12-24');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `pID` int(11) NOT NULL,
  `pName` varchar(200) NOT NULL,
  `image` text NOT NULL,
  `size` varchar(123) NOT NULL,
  `price` double NOT NULL,
  `details` text NOT NULL,
  `qty` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `series` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`pID`, `pName`, `image`, `size`, `price`, `details`, `qty`, `status`, `color`, `series`, `category`, `video`) VALUES
(1, 'Jordan Nu Retro 1 Low', '780dd0fdf7708f069f70d3fedb1e3178.jpg', '7', 469, 'Twenty years later and these low tops are back. Inspired by the original Wings logo and design of the Jordan 1, these all-day, everyday shoes are ready for whatever. Rock \'em with some baggy jeans, skate in \'em or just look fly—it\'s up to you. Smooth leather uppers and a big embossed logo will help you stand out whether you\'re dressed up or down.\r\n\r\n<br><br>\r\nBenefits:\r\n<br>\r\n <b>•</b>Nike Air technology absorbs impact for cushioning with every step.<br><br>\r\n<b>•</b>Low-cut, cushioned collar fits comfortably around your ankle.<br><br>\r\n<b>•</b>Rubber sole gives you ample traction.<br><br>\r\n<b>•</b>Colour Shown: Varsity Red/White/Black<br><br>\r\n<b>•</b>Style: DV5141-611<br><br>\r\n<b>•</b>Country/Region of Origin: Vietnam<br>', 2, 'Top', 'WHITE', 'Jordan ', 'Men', 'https://www.youtube.com/watch?v=9vEIYkwdaaU'),
(2, 'Jordan Nu Retro 1 Low', '0d29ae4383d8da1243f56f1c979a3842.jpg', '7', 469, 'Twenty years later and these low tops are back. Inspired by the original Wings logo and design of the Jordan 1, these all-day, everyday shoes are ready for whatever. Rock \'em with some baggy jeans, skate in \'em or just look fly—it\'s up to you. Smooth leather uppers and a big embossed logo will help you stand out whether you\'re dressed up or down.\r\n\r\n<br><br>\r\nBenefits:\r\n<br>\r\n <b>•</b>Nike Air technology absorbs impact for cushioning with every step.<br><br>\r\n<b>•</b>Low-cut, cushioned collar fits comfortably around your ankle.<br><br>\r\n<b>•</b>Rubber sole gives you ample traction.<br><br>\r\n<b>•</b>Colour Shown: Varsity Red/White/Black<br><br>\r\n<b>•</b>Style: DV5141-611<br><br>\r\n<b>•</b>Country/Region of Origin: Vietnam<br>', 3, 'Top', 'RED', 'Jordan ', 'Men', 'https://www.youtube.com/watch?v=9vEIYkwdaaU'),
(3, 'Jordan Nu Retro 1 Low', 'Jordan3MEn.jpg', '7', 469, 'Twenty years later and these low tops are back. Inspired by the original Wings logo and design of the Jordan 1, these all-day, everyday shoes are ready for whatever. Rock \'em with some baggy jeans, skate in \'em or just look fly—it\'s up to you. Smooth leather uppers and a big embossed logo will help you stand out whether you\'re dressed up or down.\r\n\r\n<br><br>\r\nBenefits:\r\n<br>\r\n <b>•</b>Nike Air technology absorbs impact for cushioning with every step.<br><br>\r\n<b>•</b>Low-cut, cushioned collar fits comfortably around your ankle.<br><br>\r\n<b>•</b>Rubber sole gives you ample traction.<br><br>\r\n<b>•</b>Colour Shown: Varsity Red/White/Black<br><br>\r\n<b>•</b>Style: DV5141-611<br><br>\r\n<b>•</b>Country/Region of Origin: Vietnam<br>', 12, 'Top', 'PURPLE', 'Jordan ', 'Men', 'https://www.youtube.com/watch?v=9vEIYkwdaaU'),
(4, 'Jordan Nu Retro 1 Low', 'Jordan4MEn.jpg', '7', 469, 'Twenty years later and these low tops are back. Inspired by the original Wings logo and design of the Jordan 1, these all-day, everyday shoes are ready for whatever. Rock \'em with some baggy jeans, skate in \'em or just look fly—it\'s up to you. Smooth leather uppers and a big embossed logo will help you stand out whether you\'re dressed up or down.\r\n\r\n<br><br>\r\nBenefits:\r\n<br>\r\n <b>•</b>Nike Air technology absorbs impact for cushioning with every step.<br><br>\r\n<b>•</b>Low-cut, cushioned collar fits comfortably around your ankle.<br><br>\r\n<b>•</b>Rubber sole gives you ample traction.<br><br>\r\n<b>•</b>Colour Shown: Varsity Red/White/Black<br><br>\r\n<b>•</b>Style: DV5141-611<br><br>\r\n<b>•</b>Country/Region of Origin: Vietnam<br>', 26, 'Top', 'YELLOW', 'Jordan ', 'Men', 'https://www.youtube.com/watch?v=9vEIYkwdaaU'),
(5, 'Nike Pegasus Trail 4 GORE-TEX By You', 'RedWomen1.jpg', '4', 869, 'Make sure your Peg Trail 4 GORE-TEX By You gets the necessary drip it deserves, so you can shimmer from the trailhead to the top. Bright, punchy colours pack a visual pop while unique styling selections, like a splattered midsole and hazard-stripe logo, will turn heads, whether you\'re walking the dog in the dark rain or racing up a watery path. Responsive Nike React foam and waterproof GORE-TEX help you take your wet run from the road to the trail without breaking your stride.\r\n<br><br>\r\nPAINT YOUR PEG\r\n<br>\r\nWhether you want style that stands out or to keep it a little more low key with colours, we\'ve got you covered. Deck out the upper with a Space Dust colour option or a more traditional tint. The Swoosh design, triangular Trail and GORE-TEX logos can be touched up to your liking.<br>\r\n<br>\r\nSPLATTER IT UP\r\n<br>\r\nPick a midsole splatter option that comes out of the box looking like you\'ve been in the elements for days or opt for a solid colour. Above the remnants? Opt for a solid or hazard-striped Swoosh design. The GORE-TEX logo can be coloured or clear or you can go for the hazard stripe again.<br><br>\r\n\r\nADD THE FINISHING TOUCH\r\n<br>\r\nPut the finishing touch on your new favourite trail shoe with an upper heel personal ID, up to 6 characters (numbers 0–9 and letters A–Z) and 11 colours to choose from.\r\n\r\nSTORM AHEAD<br><br>\r\n<br>\r\nGORE-TEX along the upper helps your feet stay dry from precipitation without sacrificing that comfortable feel of the Peg Trail. Its flexible, lightweight design helps keep out the rain when running between the wet roads and trails.\r\n<br><br>\r\nTRACTION IN ALL DIRECTIONS\r\n<br>\r\nLess rubber along the outsole creates a smooth transition from road to trail while preserving the full-length React midsole. The rubber outsole wraps around the front of the shoe to provide extra durability. A generative traction pattern combined with rubber in the forefoot provides extra grip for technical trails while maintaining a smooth ride for the road.<br><br>\r\n\r\nSMOOTH AND STABLE\r\n<br>\r\nNike React technology is a lightweight, durable foam that delivers a smooth, responsive ride. Its full-length design provides stability as you brave rocky terrain.\r\n<br><br>\r\nPRODUCT DETAILS\r\n<br>\r\n• Heel and tongue pull tabs <br>• Reflective design elements <br>• Not intended for use as Personal Protective Equipment (PPE) \r\n<br>• Our members are one of a kind, and your shoes are, too. Each pair is proudly made one at a time, by hand. Good things are worth the wait. <br>• With our 3D builder, watch your creation come alive as you experiment with all kinds of design choices.<br>', 17, 'Top', 'GREEN', 'Nike By you', 'Women', 'https://www.youtube.com/watch?v=qz84Tb7-Xlk'),
(6, 'Nike Pegasus Trail 4 GORE-TEX By You', 'RedWomen2.jpg', '4', 869, 'Make sure your Peg Trail 4 GORE-TEX By You gets the necessary drip it deserves, so you can shimmer from the trailhead to the top. Bright, punchy colours pack a visual pop while unique styling selections, like a splattered midsole and hazard-stripe logo, will turn heads, whether you\'re walking the dog in the dark rain or racing up a watery path. Responsive Nike React foam and waterproof GORE-TEX help you take your wet run from the road to the trail without breaking your stride.\r\n<br><br>\r\nPAINT YOUR PEG\r\n<br>\r\nWhether you want style that stands out or to keep it a little more low key with colours, we\'ve got you covered. Deck out the upper with a Space Dust colour option or a more traditional tint. The Swoosh design, triangular Trail and GORE-TEX logos can be touched up to your liking.<br>\r\n<br>\r\nSPLATTER IT UP\r\n<br>\r\nPick a midsole splatter option that comes out of the box looking like you\'ve been in the elements for days or opt for a solid colour. Above the remnants? Opt for a solid or hazard-striped Swoosh design. The GORE-TEX logo can be coloured or clear or you can go for the hazard stripe again.<br><br>\r\n\r\nADD THE FINISHING TOUCH\r\n<br>\r\nPut the finishing touch on your new favourite trail shoe with an upper heel personal ID, up to 6 characters (numbers 0–9 and letters A–Z) and 11 colours to choose from.\r\n\r\nSTORM AHEAD<br><br>\r\n<br>\r\nGORE-TEX along the upper helps your feet stay dry from precipitation without sacrificing that comfortable feel of the Peg Trail. Its flexible, lightweight design helps keep out the rain when running between the wet roads and trails.\r\n<br><br>\r\nTRACTION IN ALL DIRECTIONS\r\n<br>\r\nLess rubber along the outsole creates a smooth transition from road to trail while preserving the full-length React midsole. The rubber outsole wraps around the front of the shoe to provide extra durability. A generative traction pattern combined with rubber in the forefoot provides extra grip for technical trails while maintaining a smooth ride for the road.<br><br>\r\n\r\nSMOOTH AND STABLE\r\n<br>\r\nNike React technology is a lightweight, durable foam that delivers a smooth, responsive ride. Its full-length design provides stability as you brave rocky terrain.\r\n<br><br>\r\nPRODUCT DETAILS\r\n<br>\r\n• Heel and tongue pull tabs <br>• Reflective design elements <br>• Not intended for use as Personal Protective Equipment (PPE) \r\n<br>• Our members are one of a kind, and your shoes are, too. Each pair is proudly made one at a time, by hand. Good things are worth the wait. <br>• With our 3D builder, watch your creation come alive as you experiment with all kinds of design choices.<br>', 19, 'Top', 'PURPLE', 'Nike By you', 'Women', 'https://www.youtube.com/watch?v=qz84Tb7-Xlk'),
(7, 'Nike Pegasus Trail 4 GORE-TEX By You', 'RedWomen3.jpg', '4', 869, 'Make sure your Peg Trail 4 GORE-TEX By You gets the necessary drip it deserves, so you can shimmer from the trailhead to the top. Bright, punchy colours pack a visual pop while unique styling selections, like a splattered midsole and hazard-stripe logo, will turn heads, whether you\'re walking the dog in the dark rain or racing up a watery path. Responsive Nike React foam and waterproof GORE-TEX help you take your wet run from the road to the trail without breaking your stride.\r\n<br><br>\r\nPAINT YOUR PEG\r\n<br>\r\nWhether you want style that stands out or to keep it a little more low key with colours, we\'ve got you covered. Deck out the upper with a Space Dust colour option or a more traditional tint. The Swoosh design, triangular Trail and GORE-TEX logos can be touched up to your liking.<br>\r\n<br>\r\nSPLATTER IT UP\r\n<br>\r\nPick a midsole splatter option that comes out of the box looking like you\'ve been in the elements for days or opt for a solid colour. Above the remnants? Opt for a solid or hazard-striped Swoosh design. The GORE-TEX logo can be coloured or clear or you can go for the hazard stripe again.<br><br>\r\n\r\nADD THE FINISHING TOUCH\r\n<br>\r\nPut the finishing touch on your new favourite trail shoe with an upper heel personal ID, up to 6 characters (numbers 0–9 and letters A–Z) and 11 colours to choose from.\r\n\r\nSTORM AHEAD<br><br>\r\n<br>\r\nGORE-TEX along the upper helps your feet stay dry from precipitation without sacrificing that comfortable feel of the Peg Trail. Its flexible, lightweight design helps keep out the rain when running between the wet roads and trails.\r\n<br><br>\r\nTRACTION IN ALL DIRECTIONS\r\n<br>\r\nLess rubber along the outsole creates a smooth transition from road to trail while preserving the full-length React midsole. The rubber outsole wraps around the front of the shoe to provide extra durability. A generative traction pattern combined with rubber in the forefoot provides extra grip for technical trails while maintaining a smooth ride for the road.<br><br>\r\n\r\nSMOOTH AND STABLE\r\n<br>\r\nNike React technology is a lightweight, durable foam that delivers a smooth, responsive ride. Its full-length design provides stability as you brave rocky terrain.\r\n<br><br>\r\nPRODUCT DETAILS\r\n<br>\r\n• Heel and tongue pull tabs <br>• Reflective design elements <br>• Not intended for use as Personal Protective Equipment (PPE) \r\n<br>• Our members are one of a kind, and your shoes are, too. Each pair is proudly made one at a time, by hand. Good things are worth the wait. <br>• With our 3D builder, watch your creation come alive as you experiment with all kinds of design choices.<br>', 30, 'Top', 'BLACK', 'Nike By you', 'Women', 'https://www.youtube.com/watch?v=qz84Tb7-Xlk'),
(8, 'Nike Pegasus Trail 4 GORE-TEX By You', 'RedWomen4.jpg', '4', 869, 'Make sure your Peg Trail 4 GORE-TEX By You gets the necessary drip it deserves, so you can shimmer from the trailhead to the top. Bright, punchy colours pack a visual pop while unique styling selections, like a splattered midsole and hazard-stripe logo, will turn heads, whether you\'re walking the dog in the dark rain or racing up a watery path. Responsive Nike React foam and waterproof GORE-TEX help you take your wet run from the road to the trail without breaking your stride.\r\n<br><br>\r\nPAINT YOUR PEG\r\n<br>\r\nWhether you want style that stands out or to keep it a little more low key with colours, we\'ve got you covered. Deck out the upper with a Space Dust colour option or a more traditional tint. The Swoosh design, triangular Trail and GORE-TEX logos can be touched up to your liking.<br>\r\n<br>\r\nSPLATTER IT UP\r\n<br>\r\nPick a midsole splatter option that comes out of the box looking like you\'ve been in the elements for days or opt for a solid colour. Above the remnants? Opt for a solid or hazard-striped Swoosh design. The GORE-TEX logo can be coloured or clear or you can go for the hazard stripe again.<br><br>\r\n\r\nADD THE FINISHING TOUCH\r\n<br>\r\nPut the finishing touch on your new favourite trail shoe with an upper heel personal ID, up to 6 characters (numbers 0–9 and letters A–Z) and 11 colours to choose from.\r\n\r\nSTORM AHEAD<br><br>\r\n<br>\r\nGORE-TEX along the upper helps your feet stay dry from precipitation without sacrificing that comfortable feel of the Peg Trail. Its flexible, lightweight design helps keep out the rain when running between the wet roads and trails.\r\n<br><br>\r\nTRACTION IN ALL DIRECTIONS\r\n<br>\r\nLess rubber along the outsole creates a smooth transition from road to trail while preserving the full-length React midsole. The rubber outsole wraps around the front of the shoe to provide extra durability. A generative traction pattern combined with rubber in the forefoot provides extra grip for technical trails while maintaining a smooth ride for the road.<br><br>\r\n\r\nSMOOTH AND STABLE\r\n<br>\r\nNike React technology is a lightweight, durable foam that delivers a smooth, responsive ride. Its full-length design provides stability as you brave rocky terrain.\r\n<br><br>\r\nPRODUCT DETAILS\r\n<br>\r\n• Heel and tongue pull tabs <br>• Reflective design elements <br>• Not intended for use as Personal Protective Equipment (PPE) \r\n<br>• Our members are one of a kind, and your shoes are, too. Each pair is proudly made one at a time, by hand. Good things are worth the wait. <br>• With our 3D builder, watch your creation come alive as you experiment with all kinds of design choices.<br>', 28, 'Top', 'YELLOW', 'Nike By you', 'Women', 'https://www.youtube.com/watch?v=qz84Tb7-Xlk'),
(29, 'Jordan Nu Retro 1 Low', '780dd0fdf7708f069f70d3fedb1e3178.jpg', '5', 469, 'Twenty years later and these low tops are back. Inspired by the original Wings logo and design of the Jordan 1, these all-day, everyday shoes are ready for whatever. Rock \'em with some baggy jeans, skate in \'em or just look fly—it\'s up to you. Smooth leather uppers and a big embossed logo will help you stand out whether you\'re dressed up or down.\r\n\r\n<br><br>\r\nBenefits:\r\n<br>\r\n <b>•</b>Nike Air technology absorbs impact for cushioning with every step.<br><br>\r\n<b>•</b>Low-cut, cushioned collar fits comfortably around your ankle.<br><br>\r\n<b>•</b>Rubber sole gives you ample traction.<br><br>\r\n<b>•</b>Colour Shown: Varsity Red/White/Black<br><br>\r\n<b>•</b>Style: DV5141-611<br><br>\r\n<b>•</b>Country/Region of Origin: Vietnam<br>', 28, 'Top', 'WHITE', 'Jordan ', 'Women', 'https://www.youtube.com/watch?v=9vEIYkwdaaU'),
(30, 'Jordan Nu Retro 1 Low', '0d29ae4383d8da1243f56f1c979a3842.jpg', '5', 469, 'Twenty years later and these low tops are back. Inspired by the original Wings logo and design of the Jordan 1, these all-day, everyday shoes are ready for whatever. Rock \'em with some baggy jeans, skate in \'em or just look fly—it\'s up to you. Smooth leather uppers and a big embossed logo will help you stand out whether you\'re dressed up or down.\r\n\r\n<br><br>\r\nBenefits:\r\n<br>\r\n <b>•</b>Nike Air technology absorbs impact for cushioning with every step.<br><br>\r\n<b>•</b>Low-cut, cushioned collar fits comfortably around your ankle.<br><br>\r\n<b>•</b>Rubber sole gives you ample traction.<br><br>\r\n<b>•</b>Colour Shown: Varsity Red/White/Black<br><br>\r\n<b>•</b>Style: DV5141-611<br><br>\r\n<b>•</b>Country/Region of Origin: Vietnam<br>', 29, 'Top', 'RED', 'Jordan ', 'Women', 'https://www.youtube.com/watch?v=9vEIYkwdaaU'),
(31, 'Jordan Nu Retro 1 Low', 'Jordan3MEn.jpg', '5', 469, 'Twenty years later and these low tops are back. Inspired by the original Wings logo and design of the Jordan 1, these all-day, everyday shoes are ready for whatever. Rock \'em with some baggy jeans, skate in \'em or just look fly—it\'s up to you. Smooth leather uppers and a big embossed logo will help you stand out whether you\'re dressed up or down.\r\n\r\n<br><br>\r\nBenefits:\r\n<br>\r\n <b>•</b>Nike Air technology absorbs impact for cushioning with every step.<br><br>\r\n<b>•</b>Low-cut, cushioned collar fits comfortably around your ankle.<br><br>\r\n<b>•</b>Rubber sole gives you ample traction.<br><br>\r\n<b>•</b>Colour Shown: Varsity Red/White/Black<br><br>\r\n<b>•</b>Style: DV5141-611<br><br>\r\n<b>•</b>Country/Region of Origin: Vietnam<br>', 30, 'Top', 'PURPLE', 'Jordan ', 'Women', 'https://www.youtube.com/watch?v=9vEIYkwdaaU'),
(32, 'Jordan Nu Retro 1 Low', 'Jordan4MEn.jpg', '5', 469, 'Twenty years later and these low tops are back. Inspired by the original Wings logo and design of the Jordan 1, these all-day, everyday shoes are ready for whatever. Rock \'em with some baggy jeans, skate in \'em or just look fly—it\'s up to you. Smooth leather uppers and a big embossed logo will help you stand out whether you\'re dressed up or down.\r\n\r\n<br><br>\r\nBenefits:\r\n<br>\r\n <b>•</b>Nike Air technology absorbs impact for cushioning with every step.<br><br>\r\n<b>•</b>Low-cut, cushioned collar fits comfortably around your ankle.<br><br>\r\n<b>•</b>Rubber sole gives you ample traction.<br><br>\r\n<b>•</b>Colour Shown: Varsity Red/White/Black<br><br>\r\n<b>•</b>Style: DV5141-611<br><br>\r\n<b>•</b>Country/Region of Origin: Vietnam<br>', 30, 'Top', 'YELLOW', 'Jordan ', 'Women', 'https://www.youtube.com/watch?v=9vEIYkwdaaU'),
(33, 'Nike Air Force 1 07', 'Children1.jpg', '3', 349, 'LEGENDARY STYLE REFINED\r\n<br><br>\r\n\r\nThe radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine.<br>\r\n\r\n<br>\r\nBenefits\r\n<br>\r\nThe stitched leather overlays on the upper add heritage style, durability and support.<br>\r\nOriginally designed for hoops, Nike Air cushioning adds lightweight, all-day comfort.<br>\r\nThe low-cut silhouette adds a clean, streamlined look.<br>\r\nThe padded collar feels soft and comfortable.<br>\r\n<br>\r\nProduct Details\r\n<br>\r\nFoam midsole<br>\r\nPerforations on the toe<br>\r\nColour Shown: Sand Drift/White/Wolf <br>Grey/Coconut Milk<br>\r\nStyle: DD8959-111<br>\r\nCountry/Region of Origin: Vietnam<br>\r\n<br>\r\nAir Force 1 Origins<br>\r\n\r\nDebuting in 1982, the AF-1 was the first basketball shoe to house Nike Air, revolutionising the game while rapidly gaining traction around the world. <br>Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.', 29, 'Top', 'White', 'Air Force', 'Children', 'https://www.youtube.com/watch?v=uQeiiqRhqAA'),
(34, 'Nike Air Force 1 07', 'Children2.jpg', '3', 349, 'LEGENDARY STYLE REFINED\r\n<br><br>\r\n\r\nThe radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine.<br>\r\n\r\n<br>\r\nBenefits\r\n<br>\r\nThe stitched leather overlays on the upper add heritage style, durability and support.<br>\r\nOriginally designed for hoops, Nike Air cushioning adds lightweight, all-day comfort.<br>\r\nThe low-cut silhouette adds a clean, streamlined look.<br>\r\nThe padded collar feels soft and comfortable.<br>\r\n<br>\r\nProduct Details\r\n<br>\r\nFoam midsole<br>\r\nPerforations on the toe<br>\r\nColour Shown: Sand Drift/White/Wolf <br>Grey/Coconut Milk<br>\r\nStyle: DD8959-111<br>\r\nCountry/Region of Origin: Vietnam<br>\r\n<br>\r\nAir Force 1 Origins<br>\r\n\r\nDebuting in 1982, the AF-1 was the first basketball shoe to house Nike Air, revolutionising the game while rapidly gaining traction around the world. <br>Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.', 30, 'Top', 'BLACK', 'Air Force', 'Children', 'https://www.youtube.com/watch?v=uQeiiqRhqAA'),
(35, 'Nike Air Force 1 07', 'Children3.jpg', '3', 349, 'LEGENDARY STYLE REFINED\r\n<br><br>\r\n\r\nThe radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine.<br>\r\n\r\n<br>\r\nBenefits\r\n<br>\r\nThe stitched leather overlays on the upper add heritage style, durability and support.<br>\r\nOriginally designed for hoops, Nike Air cushioning adds lightweight, all-day comfort.<br>\r\nThe low-cut silhouette adds a clean, streamlined look.<br>\r\nThe padded collar feels soft and comfortable.<br>\r\n<br>\r\nProduct Details\r\n<br>\r\nFoam midsole<br>\r\nPerforations on the toe<br>\r\nColour Shown: Sand Drift/White/Wolf <br>Grey/Coconut Milk<br>\r\nStyle: DD8959-111<br>\r\nCountry/Region of Origin: Vietnam<br>\r\n<br>\r\nAir Force 1 Origins<br>\r\n\r\nDebuting in 1982, the AF-1 was the first basketball shoe to house Nike Air, revolutionising the game while rapidly gaining traction around the world. <br>Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.', 30, 'Top', 'GREEN', 'Air Force', 'Children', 'https://www.youtube.com/watch?v=uQeiiqRhqAA'),
(36, 'Nike Air Force 1 07', 'Children4.jpg', '3', 349, 'LEGENDARY STYLE REFINED\r\n<br><br>\r\n\r\nThe radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine.<br>\r\n\r\n<br>\r\nBenefits\r\n<br>\r\nThe stitched leather overlays on the upper add heritage style, durability and support.<br>\r\nOriginally designed for hoops, Nike Air cushioning adds lightweight, all-day comfort.<br>\r\nThe low-cut silhouette adds a clean, streamlined look.<br>\r\nThe padded collar feels soft and comfortable.<br>\r\n<br>\r\nProduct Details\r\n<br>\r\nFoam midsole<br>\r\nPerforations on the toe<br>\r\nColour Shown: Sand Drift/White/Wolf <br>Grey/Coconut Milk<br>\r\nStyle: DD8959-111<br>\r\nCountry/Region of Origin: Vietnam<br>\r\n<br>\r\nAir Force 1 Origins<br>\r\n\r\nDebuting in 1982, the AF-1 was the first basketball shoe to house Nike Air, revolutionising the game while rapidly gaining traction around the world. <br>Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.', 29, 'Top', 'YELLOW', 'Air Force', 'Children', 'https://www.youtube.com/watch?v=uQeiiqRhqAA'),
(37, 'Jordan Nu Retro 1 Low', '780dd0fdf7708f069f70d3fedb1e3178.jpg', '8', 469, 'Twenty years later and these low tops are back. Inspired by the original Wings logo and design of the Jordan 1, these all-day, everyday shoes are ready for whatever. Rock \'em with some baggy jeans, skate in \'em or just look fly—it\'s up to you. Smooth leather uppers and a big embossed logo will help you stand out whether you\'re dressed up or down.\r\n\r\n<br><br>\r\nBenefits:\r\n<br>\r\n <b>•</b>Nike Air technology absorbs impact for cushioning with every step.<br><br>\r\n<b>•</b>Low-cut, cushioned collar fits comfortably around your ankle.<br><br>\r\n<b>•</b>Rubber sole gives you ample traction.<br><br>\r\n<b>•</b>Colour Shown: Varsity Red/White/Black<br><br>\r\n<b>•</b>Style: DV5141-611<br><br>\r\n<b>•</b>Country/Region of Origin: Vietnam<br>', 30, 'Top', 'WHITE', 'Jordan ', 'Men', 'https://www.youtube.com/watch?v=9vEIYkwdaaU'),
(38, 'Jordan Nu Retro 1 Low', '0d29ae4383d8da1243f56f1c979a3842.jpg', '8', 469, 'Twenty years later and these low tops are back. Inspired by the original Wings logo and design of the Jordan 1, these all-day, everyday shoes are ready for whatever. Rock \'em with some baggy jeans, skate in \'em or just look fly—it\'s up to you. Smooth leather uppers and a big embossed logo will help you stand out whether you\'re dressed up or down.\r\n\r\n<br><br>\r\nBenefits:\r\n<br>\r\n <b>•</b>Nike Air technology absorbs impact for cushioning with every step.<br><br>\r\n<b>•</b>Low-cut, cushioned collar fits comfortably around your ankle.<br><br>\r\n<b>•</b>Rubber sole gives you ample traction.<br><br>\r\n<b>•</b>Colour Shown: Varsity Red/White/Black<br><br>\r\n<b>•</b>Style: DV5141-611<br><br>\r\n<b>•</b>Country/Region of Origin: Vietnam<br>', 30, 'Top', 'RED', 'Jordan ', 'Men', 'https://www.youtube.com/watch?v=9vEIYkwdaaU'),
(39, 'Jordan Nu Retro 1 Low', 'Jordan3MEn.jpg', '8', 469, 'Twenty years later and these low tops are back. Inspired by the original Wings logo and design of the Jordan 1, these all-day, everyday shoes are ready for whatever. Rock \'em with some baggy jeans, skate in \'em or just look fly—it\'s up to you. Smooth leather uppers and a big embossed logo will help you stand out whether you\'re dressed up or down.\r\n\r\n<br><br>\r\nBenefits:\r\n<br>\r\n <b>•</b>Nike Air technology absorbs impact for cushioning with every step.<br><br>\r\n<b>•</b>Low-cut, cushioned collar fits comfortably around your ankle.<br><br>\r\n<b>•</b>Rubber sole gives you ample traction.<br><br>\r\n<b>•</b>Colour Shown: Varsity Red/White/Black<br><br>\r\n<b>•</b>Style: DV5141-611<br><br>\r\n<b>•</b>Country/Region of Origin: Vietnam<br>', 30, 'Top', 'PURPLE', 'Jordan ', 'Men', 'https://www.youtube.com/watch?v=9vEIYkwdaaU'),
(40, 'Jordan Nu Retro 1 Low', 'Jordan4MEn.jpg', '8', 469, 'Twenty years later and these low tops are back. Inspired by the original Wings logo and design of the Jordan 1, these all-day, everyday shoes are ready for whatever. Rock \'em with some baggy jeans, skate in \'em or just look fly—it\'s up to you. Smooth leather uppers and a big embossed logo will help you stand out whether you\'re dressed up or down.\r\n\r\n<br><br>\r\nBenefits:\r\n<br>\r\n <b>•</b>Nike Air technology absorbs impact for cushioning with every step.<br><br>\r\n<b>•</b>Low-cut, cushioned collar fits comfortably around your ankle.<br><br>\r\n<b>•</b>Rubber sole gives you ample traction.<br><br>\r\n<b>•</b>Colour Shown: Varsity Red/White/Black<br><br>\r\n<b>•</b>Style: DV5141-611<br><br>\r\n<b>•</b>Country/Region of Origin: Vietnam<br>', 30, 'Top', 'YELLOW', 'Jordan ', 'Men', 'https://www.youtube.com/watch?v=9vEIYkwdaaU'),
(41, 'Jordan Nu Retro 1 Low', '780dd0fdf7708f069f70d3fedb1e3178.jpg', '7', 469, 'Twenty years later and these low tops are back. Inspired by the original Wings logo and design of the Jordan 1, these all-day, everyday shoes are ready for whatever. Rock \'em with some baggy jeans, skate in \'em or just look fly—it\'s up to you. Smooth leather uppers and a big embossed logo will help you stand out whether you\'re dressed up or down.\r\n\r\n<br><br>\r\nBenefits:\r\n<br>\r\n <b>•</b>Nike Air technology absorbs impact for cushioning with every step.<br><br>\r\n<b>•</b>Low-cut, cushioned collar fits comfortably around your ankle.<br><br>\r\n<b>•</b>Rubber sole gives you ample traction.<br><br>\r\n<b>•</b>Colour Shown: Varsity Red/White/Black<br><br>\r\n<b>•</b>Style: DV5141-611<br><br>\r\n<b>•</b>Country/Region of Origin: Vietnam<br>', 0, 'Top', 'WHITE', 'Jordan ', 'Children', 'https://www.youtube.com/watch?v=9vEIYkwdaaU'),
(42, 'Nike Pegasus Trail 4 GORE-TEX By You', 'RedWomen1.jpg', '4', 869, 'Make sure your Peg Trail 4 GORE-TEX By You gets the necessary drip it deserves, so you can shimmer from the trailhead to the top. Bright, punchy colours pack a visual pop while unique styling selections, like a splattered midsole and hazard-stripe logo, will turn heads, whether you\'re walking the dog in the dark rain or racing up a watery path. Responsive Nike React foam and waterproof GORE-TEX help you take your wet run from the road to the trail without breaking your stride.\r\n<br><br>\r\nPAINT YOUR PEG\r\n<br>\r\nWhether you want style that stands out or to keep it a little more low key with colours, we\'ve got you covered. Deck out the upper with a Space Dust colour option or a more traditional tint. The Swoosh design, triangular Trail and GORE-TEX logos can be touched up to your liking.<br>\r\n<br>\r\nSPLATTER IT UP\r\n<br>\r\nPick a midsole splatter option that comes out of the box looking like you\'ve been in the elements for days or opt for a solid colour. Above the remnants? Opt for a solid or hazard-striped Swoosh design. The GORE-TEX logo can be coloured or clear or you can go for the hazard stripe again.<br><br>\r\n\r\nADD THE FINISHING TOUCH\r\n<br>\r\nPut the finishing touch on your new favourite trail shoe with an upper heel personal ID, up to 6 characters (numbers 0–9 and letters A–Z) and 11 colours to choose from.\r\n\r\nSTORM AHEAD<br><br>\r\n<br>\r\nGORE-TEX along the upper helps your feet stay dry from precipitation without sacrificing that comfortable feel of the Peg Trail. Its flexible, lightweight design helps keep out the rain when running between the wet roads and trails.\r\n<br><br>\r\nTRACTION IN ALL DIRECTIONS\r\n<br>\r\nLess rubber along the outsole creates a smooth transition from road to trail while preserving the full-length React midsole. The rubber outsole wraps around the front of the shoe to provide extra durability. A generative traction pattern combined with rubber in the forefoot provides extra grip for technical trails while maintaining a smooth ride for the road.<br><br>\r\n\r\nSMOOTH AND STABLE\r\n<br>\r\nNike React technology is a lightweight, durable foam that delivers a smooth, responsive ride. Its full-length design provides stability as you brave rocky terrain.\r\n<br><br>\r\nPRODUCT DETAILS\r\n<br>\r\n• Heel and tongue pull tabs <br>• Reflective design elements <br>• Not intended for use as Personal Protective Equipment (PPE) \r\n<br>• Our members are one of a kind, and your shoes are, too. Each pair is proudly made one at a time, by hand. Good things are worth the wait. <br>• With our 3D builder, watch your creation come alive as you experiment with all kinds of design choices.<br>', 0, 'Top', 'GREEN', 'Nike By you', 'Children', 'https://www.youtube.com/watch?v=qz84Tb7-Xlk'),
(43, 'Nike Air Force 1 07', 'Children1.jpg', '3', 349, 'LEGENDARY STYLE REFINED\r\n<br><br>\r\n\r\nThe radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine.<br>\r\n\r\n<br>\r\nBenefits\r\n<br>\r\nThe stitched leather overlays on the upper add heritage style, durability and support.<br>\r\nOriginally designed for hoops, Nike Air cushioning adds lightweight, all-day comfort.<br>\r\nThe low-cut silhouette adds a clean, streamlined look.<br>\r\nThe padded collar feels soft and comfortable.<br>\r\n<br>\r\nProduct Details\r\n<br>\r\nFoam midsole<br>\r\nPerforations on the toe<br>\r\nColour Shown: Sand Drift/White/Wolf <br>Grey/Coconut Milk<br>\r\nStyle: DD8959-111<br>\r\nCountry/Region of Origin: Vietnam<br>\r\n<br>\r\nAir Force 1 Origins<br>\r\n\r\nDebuting in 1982, the AF-1 was the first basketball shoe to house Nike Air, revolutionising the game while rapidly gaining traction around the world. <br>Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.', 29, 'Top', 'White', 'Air Force', 'Women', 'https://www.youtube.com/watch?v=uQeiiqRhqAA'),
(44, 'Nike Air Force 1 07', 'Children4.jpg', '3', 349, 'LEGENDARY STYLE REFINED\r\n<br><br>\r\n\r\nThe radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine.<br>\r\n\r\n<br>\r\nBenefits\r\n<br>\r\nThe stitched leather overlays on the upper add heritage style, durability and support.<br>\r\nOriginally designed for hoops, Nike Air cushioning adds lightweight, all-day comfort.<br>\r\nThe low-cut silhouette adds a clean, streamlined look.<br>\r\nThe padded collar feels soft and comfortable.<br>\r\n<br>\r\nProduct Details\r\n<br>\r\nFoam midsole<br>\r\nPerforations on the toe<br>\r\nColour Shown: Sand Drift/White/Wolf <br>Grey/Coconut Milk<br>\r\nStyle: DD8959-111<br>\r\nCountry/Region of Origin: Vietnam<br>\r\n<br>\r\nAir Force 1 Origins<br>\r\n\r\nDebuting in 1982, the AF-1 was the first basketball shoe to house Nike Air, revolutionising the game while rapidly gaining traction around the world. <br>Today, the Air Force 1 stays true to its roots with the same soft and springy cushioning that changed sneaker history.', 30, 'Top', 'YELLOW', 'Air Force', 'Men', 'https://www.youtube.com/watch?v=uQeiiqRhqAA'),
(45, 'Nike Pegasus Trail 4 GORE-TEX By You', 'RedWomen1.jpg', '4', 869, 'Make sure your Peg Trail 4 GORE-TEX By You gets the necessary drip it deserves, so you can shimmer from the trailhead to the top. Bright, punchy colours pack a visual pop while unique styling selections, like a splattered midsole and hazard-stripe logo, will turn heads, whether you\'re walking the dog in the dark rain or racing up a watery path. Responsive Nike React foam and waterproof GORE-TEX help you take your wet run from the road to the trail without breaking your stride.\r\n<br><br>\r\nPAINT YOUR PEG\r\n<br>\r\nWhether you want style that stands out or to keep it a little more low key with colours, we\'ve got you covered. Deck out the upper with a Space Dust colour option or a more traditional tint. The Swoosh design, triangular Trail and GORE-TEX logos can be touched up to your liking.<br>\r\n<br>\r\nSPLATTER IT UP\r\n<br>\r\nPick a midsole splatter option that comes out of the box looking like you\'ve been in the elements for days or opt for a solid colour. Above the remnants? Opt for a solid or hazard-striped Swoosh design. The GORE-TEX logo can be coloured or clear or you can go for the hazard stripe again.<br><br>\r\n\r\nADD THE FINISHING TOUCH\r\n<br>\r\nPut the finishing touch on your new favourite trail shoe with an upper heel personal ID, up to 6 characters (numbers 0–9 and letters A–Z) and 11 colours to choose from.\r\n\r\nSTORM AHEAD<br><br>\r\n<br>\r\nGORE-TEX along the upper helps your feet stay dry from precipitation without sacrificing that comfortable feel of the Peg Trail. Its flexible, lightweight design helps keep out the rain when running between the wet roads and trails.\r\n<br><br>\r\nTRACTION IN ALL DIRECTIONS\r\n<br>\r\nLess rubber along the outsole creates a smooth transition from road to trail while preserving the full-length React midsole. The rubber outsole wraps around the front of the shoe to provide extra durability. A generative traction pattern combined with rubber in the forefoot provides extra grip for technical trails while maintaining a smooth ride for the road.<br><br>\r\n\r\nSMOOTH AND STABLE\r\n<br>\r\nNike React technology is a lightweight, durable foam that delivers a smooth, responsive ride. Its full-length design provides stability as you brave rocky terrain.\r\n<br><br>\r\nPRODUCT DETAILS\r\n<br>\r\n• Heel and tongue pull tabs <br>• Reflective design elements <br>• Not intended for use as Personal Protective Equipment (PPE) \r\n<br>• Our members are one of a kind, and your shoes are, too. Each pair is proudly made one at a time, by hand. Good things are worth the wait. <br>• With our 3D builder, watch your creation come alive as you experiment with all kinds of design choices.<br>', 0, 'Top', 'GREEN', 'Nike By you', 'Men', 'https://www.youtube.com/watch?v=qz84Tb7-Xlk');

-- --------------------------------------------------------

--
-- 表的结构 `purchase`
--

CREATE TABLE `purchase` (
  `purchaseID` int(11) NOT NULL,
  `purchaseTime` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `totalPrice` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `qr` text NOT NULL,
  `payMethod` varchar(222) NOT NULL,
  `userID` int(11) NOT NULL,
  `status` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 转存表中的数据 `purchase`
--

INSERT INTO `purchase` (`purchaseID`, `purchaseTime`, `item`, `price`, `totalPrice`, `qty`, `qr`, `payMethod`, `userID`, `status`) VALUES
(232, '10:41:56 2023-11-15', 'Jordan Nu Retro 1 Low', '469', '398.65', '1', 'qrcodes/10_41_562023-11-15Jordan Nu Retro 1 Low469469.001.png', 'Cash', 24, 'Order En Route'),
(235, '16:33:47 2023-11-17', 'Jordan Nu Retro 1 Low\nJordan Nu Retro 1 Low', '469\n469', '469.00\n469.00', '1\n1', 'qrcodes/16_33_472023-11-17Jordan Nu Retro 1 Low_Jordan Nu Retro 1 Low469_469469.00_469.001_1.png', 'Cash', 25, 'Order Processed'),
(236, '16:37:10 2023-11-17', 'Jordan Nu Retro 1 Low', '469', '469.00', '1', 'qrcodes/16_37_102023-11-17Jordan Nu Retro 1 Low469469.001.png', 'Cash', 25, 'Order Processed'),
(237, '16:37:33 2023-11-17', 'Nike Pegasus Trail 4 GORE-TEX By You', '869', '4,345.00', '5', 'qrcodes/16_37_332023-11-17Nike Pegasus Trail 4 GORE-TEX By You8694,345.005.png', 'Cash', 25, 'Order Processed'),
(238, '16:40:06 2023-11-17', 'Jordan Nu Retro 1 Low', '469', '1,407.00', '3', 'qrcodes/16_40_062023-11-17Jordan Nu Retro 1 Low4691,407.003.png', 'Cash', 25, 'Order Processed'),
(239, '17:00:30 2023-11-17', 'Jordan Nu Retro 1 Low\nJordan Nu Retro 1 Low', '469\n469', '469.00\n1,407.00', '1\n3', 'qrcodes/17_00_302023-11-17Jordan Nu Retro 1 Low_Jordan Nu Retro 1 Low469_469469.00_1,407.001_3.png', 'Cash', 25, 'Order Processed'),
(240, '17:05:33 2023-11-17', 'Jordan Nu Retro 1 Low', '469', '1407', '3', 'qrcodes/17_05_332023-11-17Jordan Nu Retro 1 Low4691,407.003.png', 'Cash', 25, 'Order Processed'),
(241, '17:06:12 2023-11-17', 'Nike Pegasus Trail 4 GORE-TEX By You', '869', '1738', '2', 'qrcodes/17_06_122023-11-17Nike Pegasus Trail 4 GORE-TEX By You8691,738.002.png', 'Cash', 25, 'Order Processed'),
(242, '17:08:05 2023-11-17', 'Jordan Nu Retro 1 Low', '469', '1407', '3', 'qrcodes/17_08_052023-11-17Jordan Nu Retro 1 Low4691,407.003.png', 'Cash', 25, 'Order Processed'),
(243, '17:17:43 2023-11-17', 'Jordan Nu Retro 1 Low', '469', '797.3', '2', 'qrcodes/17_17_432023-11-17Jordan Nu Retro 1 Low469938.002.png', 'Cash', 25, 'Order Processed'),
(244, '17:19:04 2023-11-17', 'Nike Pegasus Trail 4 GORE-TEX By You', '869', '1738', '2', 'qrcodes/17_19_042023-11-17Nike Pegasus Trail 4 GORE-TEX By You8691,738.002.png', 'Cash', 25, 'Order Processed'),
(245, '17:20:50 2023-11-17', 'Jordan Nu Retro 1 Low', '469', '469', '1', 'qrcodes/17_20_502023-11-17Jordan Nu Retro 1 Low469469.001.png', 'Cash', 25, 'Order Processed'),
(246, '17:21:57 2023-11-17', 'Jordan Nu Retro 1 Low', '469', '938', '2', 'qrcodes/17_21_572023-11-17Jordan Nu Retro 1 Low469938.002.png', 'Online', 25, 'Order Processed'),
(247, '17:24:00 2023-11-17', 'Jordan Nu Retro 1 Low', '469', '938', '2', 'qrcodes/17_24_002023-11-17Jordan Nu Retro 1 Low469938.002.png', 'Online', 25, 'Order Processed'),
(248, '03:31:08 2023-11-24', 'Nike Air Force 1 07', '349', '349', '1', 'qrcodes/03_31_082023-11-24Nike Air Force 1 07349349.001.png', 'Online', 25, 'Order Processed'),
(249, '03:32:26 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '938', '2', 'qrcodes/03_32_262023-11-24Jordan Nu Retro 1 Low469938.002.png', 'Online', 25, 'Order Processed'),
(250, '03:37:12 2023-11-24', 'Jordan Nu Retro 1 Low\nJordan Nu Retro 1 Low', '469\n469', '469.00469', '1\n1', 'qrcodes/03_37_122023-11-24Jordan Nu Retro 1 Low_Jordan Nu Retro 1 Low469_469469.00_469.001_1.png', 'Online', 25, 'Order Processed'),
(251, '03:44:32 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '469', '1', 'qrcodes/03_44_322023-11-24Jordan Nu Retro 1 Low469469.001.png', 'Cash', 25, 'Order Processed'),
(252, '03:45:25 2023-11-24', 'Jordan Nu Retro 1 Low\nJordan Nu Retro 1 Low', '469\n469', '469.00469', '1\n1', 'qrcodes/03_45_252023-11-24Jordan Nu Retro 1 Low_Jordan Nu Retro 1 Low469_469469.00_469.001_1.png', 'Cash', 25, 'Order Processed'),
(253, '03:57:28 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '938', '2', 'qrcodes/03_57_282023-11-24Jordan Nu Retro 1 Low469938.002.png', 'Cash', 25, 'Order Processed'),
(254, '03:59:49 2023-11-24', 'Jordan Nu Retro 1 Low\nJordan Nu Retro 1 Low', '469\n469', '938', '1\n1', 'qrcodes/03_59_492023-11-24Jordan Nu Retro 1 Low_Jordan Nu Retro 1 Low469_469469.00_469.001_1.png', 'Online', 25, 'Order Processed'),
(255, '04:08:53 2023-11-24', 'Jordan Nu Retro 1 Low\nJordan Nu Retro 1 Low', '469\n469', '469', '1\n1', 'qrcodes/04_08_532023-11-24Jordan Nu Retro 1 Low_Jordan Nu Retro 1 Low469_469469.00_469.001_1.png', 'Online', 25, 'Order Processed'),
(256, '04:12:02 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '469', '1', 'qrcodes/04_12_022023-11-24Jordan Nu Retro 1 Low469469.001.png', 'Cash', 25, 'Order Processed'),
(257, '04:12:42 2023-11-24', 'Jordan Nu Retro 1 Low\nJordan Nu Retro 1 Low', '469\n469', '469.00469', '1\n1', 'qrcodes/04_12_422023-11-24Jordan Nu Retro 1 Low_Jordan Nu Retro 1 Low469_469469.00_469.001_1.png', 'Cash', 25, 'Order Processed'),
(258, '04:14:22 2023-11-24', 'Jordan Nu Retro 1 Low\nJordan Nu Retro 1 Low', '469\n469', '469', '1\n1', 'qrcodes/04_14_222023-11-24Jordan Nu Retro 1 Low_Jordan Nu Retro 1 Low469_469469.00_469.001_1.png', 'Cash', 25, 'Order Processed'),
(259, '04:45:05 2023-11-24', 'Jordan Nu Retro 1 Low\nNike Pegasus Trail 4 GORE-TEX By You', '469\n869', '469.00\n869.00', '1\n1', 'qrcodes/04_45_052023-11-24Jordan Nu Retro 1 Low_Nike Pegasus Trail 4 GORE-TEX By You469_869469.00_869.001_1.png', 'Cash', 25, 'Order Processed'),
(260, '04:45:53 2023-11-24', 'Jordan Nu Retro 1 Low\nJordan Nu Retro 1 Low', '469\n469', '469.00\n469.00', '1\n1', 'qrcodes/04_45_532023-11-24Jordan Nu Retro 1 Low_Jordan Nu Retro 1 Low469_469469.00_469.001_1.png', 'Cash', 25, 'Order Processed'),
(261, '04:47:11 2023-11-24', 'Jordan Nu Retro 1 Low\nJordan Nu Retro 1 Low', '469\n469', '469.00\n469.00', '1\n1', 'qrcodes/04_47_112023-11-24Jordan Nu Retro 1 Low_Jordan Nu Retro 1 Low469_469469.00_469.001_1.png', 'Cash', 25, 'Order Processed'),
(262, '04:48:12 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '469', '1', 'qrcodes/04_48_122023-11-24Jordan Nu Retro 1 Low469469.001.png', 'Online', 25, 'Order Processed'),
(263, '04:49:18 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '469.00', '1', 'qrcodes/04_49_182023-11-24Jordan Nu Retro 1 Low469469.001.png', 'Cash', 25, 'Order Processed'),
(264, '05:26:02 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '469.00', '1', 'qrcodes/05_26_022023-11-24Jordan Nu Retro 1 Low469469.001.png', 'Cash', 25, 'Order Processed'),
(265, '05:29:06 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '469.00', '1', 'qrcodes/05_29_062023-11-24Jordan Nu Retro 1 Low469469.001.png', 'Cash', 25, 'Order Processed'),
(266, '05:31:57 2023-11-24', 'Jordan Nu Retro 1 Low\nJordan Nu Retro 1 Low', '469\n469', '469.00\n469.00', '1\n1', 'qrcodes/05_31_572023-11-24Jordan Nu Retro 1 Low_Jordan Nu Retro 1 Low469_469469.00_469.001_1.png', 'Online', 25, 'Order Processed'),
(267, '05:33:42 2023-11-24', 'Nike Pegasus Trail 4 GORE-TEX By You', '869', '869.00', '1', 'qrcodes/05_33_422023-11-24Nike Pegasus Trail 4 GORE-TEX By You869869.001.png', 'Online', 25, 'Order Processed'),
(268, '05:34:38 2023-11-24', 'Jordan Nu Retro 1 Low\nNike Pegasus Trail 4 GORE-TEX By You', '469\n869', '469.00\n869.00', '1\n1', 'qrcodes/05_34_382023-11-24Jordan Nu Retro 1 Low_Nike Pegasus Trail 4 GORE-TEX By You469_869469.00_869.001_1.png', 'Cash', 25, 'Order Processed'),
(269, '05:35:14 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '469.00', '1', 'qrcodes/05_35_142023-11-24Jordan Nu Retro 1 Low469469.001.png', 'Cash', 25, 'Order Processed'),
(270, '05:35:59 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '398.65', '1', 'qrcodes/05_35_592023-11-24Jordan Nu Retro 1 Low469469.001.png', 'Online', 25, 'Order Processed'),
(271, '05:39:13 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '398.65', '1', 'qrcodes/05_39_132023-11-24Jordan Nu Retro 1 Low469469.001.png', 'Cash', 25, 'Order Processed'),
(272, '05:40:02 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '398.65', '1', 'qrcodes/05_40_022023-11-24Jordan Nu Retro 1 Low469469.001.png', 'Online', 25, 'Order Processed'),
(273, '05:41:18 2023-11-24', 'Jordan Nu Retro 1 Low\nJordan Nu Retro 1 Low', '469\n469', '398.65\n398.65', '1\n1', 'qrcodes/05_41_182023-11-24Jordan Nu Retro 1 Low_Jordan Nu Retro 1 Low469_469469.00_469.001_1.png', 'Online', 25, 'Order Processed'),
(274, '06:09:10 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '469.00', '1', 'qrcodes/06_09_102023-11-24Jordan Nu Retro 1 Low469469.001.png', 'Online', 25, 'Order Processed'),
(275, '06:10:41 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '469.00', '1', 'qrcodes/06_10_412023-11-24Jordan Nu Retro 1 Low469469.001.png', 'Online', 25, 'Order Processed'),
(276, '06:11:27 2023-11-24', 'Nike Pegasus Trail 4 GORE-TEX By You', '869', '869.00', '1', 'qrcodes/06_11_272023-11-24Nike Pegasus Trail 4 GORE-TEX By You869869.001.png', 'Online', 25, 'Order Processed'),
(277, '06:14:15 2023-11-24', 'Jordan Nu Retro 1 Low', '469', '469.00', '1', 'qrcodes/06_14_152023-11-24Jordan Nu Retro 1 Low469469.001.png', 'Online', 25, 'Order Processed'),
(278, '06:16:39 2023-11-24', 'Nike Pegasus Trail 4 GORE-TEX By You', '869', '869.00', '1', 'qrcodes/06_16_392023-11-24Nike Pegasus Trail 4 GORE-TEX By You869869.001.png', 'Online', 25, 'Order Processed'),
(279, '06:19:14 2023-11-24', 'Nike Pegasus Trail 4 GORE-TEX By You', '869', '869.00', '1', 'qrcodes/06_19_142023-11-24Nike Pegasus Trail 4 GORE-TEX By You869869.001.png', 'Online', 25, 'Order Processed'),
(280, '06:20:23 2023-11-24', 'Nike Pegasus Trail 4 GORE-TEX By You', '869', '869.00', '1', 'qrcodes/06_20_232023-11-24Nike Pegasus Trail 4 GORE-TEX By You869869.001.png', 'Cash', 25, 'Order Processed'),
(281, '06:22:11 2023-11-24', 'Nike Air Force 1 07\nNike Air Force 1 07', '349\n349', '296.65\n296.65', '1\n1', 'qrcodes/06_22_112023-11-24Nike Air Force 1 07_Nike Air Force 1 07349_349349.00_349.001_1.png', 'Online', 25, 'Order Processed');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Image` text NOT NULL,
  `TimeOfLogin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`userID`, `Name`, `Password`, `Email`, `Image`, `TimeOfLogin`) VALUES
(24, 'perth', '$2y$10$yrf5RjianLnwZJsYQXDAhuCtVSV7khnOB0TRjkFgq6hiPvD.s9W3.', 'wonglooperth0@gmail.com', 'images.png', 3),
(25, 'wong loo perth', '$2y$10$g.EBywRM74HosXqb8pTZFOqYq7X9Vh/b00kbwLWCCbxpzm6zHrEB6', 'perth_0@hotmail.com', 'images.png', 5);

--
-- 转储表的索引
--

--
-- 表的索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cID`);

--
-- 表的索引 `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`Oid`);

--
-- 表的索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pID`);

--
-- 表的索引 `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseID`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `cID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `discount`
--
ALTER TABLE `discount`
  MODIFY `Oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- 使用表AUTO_INCREMENT `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
