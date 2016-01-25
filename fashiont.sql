-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 
-- Версия на сървъра: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fashiont`
--

-- --------------------------------------------------------

--
-- Структура на таблица `about_bg`
--

CREATE TABLE IF NOT EXISTS `about_bg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Схема на данните от таблица `about_bg`
--

INSERT INTO `about_bg` (`id`, `info`) VALUES
(1, '	<h3 class="sub-text">Кратка история за салоните</h3>\r\n		 <p>Салонът "Тито-Дани" до митницата е създаден през 2006.В него се предлага специалната услуга Гореща ножица.\r\n			Салонът "Тито-Дани" на Д. Списаревски е отворен през 2008.\r\n			 В салонтие се предлагат услуги като подстригване на деца, жени, мъже, боядисване, къдрене, изсушаване, кичури, плитки и различни видове прически\r\n		 </p>');

-- --------------------------------------------------------

--
-- Структура на таблица `about_en`
--

CREATE TABLE IF NOT EXISTS `about_en` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Схема на данните от таблица `about_en`
--

INSERT INTO `about_en` (`id`, `info`) VALUES
(1, '	<h3 class="sub-text">Brief history of salons </h3>\r\n		 <p>The style salon "Tito-Dani" on "Nezavisimost" street,38 was founded in 2006.There you can find a specila service "hot" \r\nscissors.The style salon "Tito-Dani" on "Dimitar Spisarevski" street, was founded in 2008.In both of the style salons you can find the following services: haircut for children, women, men, hair colouring, hair perm, hair drying, hair highlights, pigtails different types of hairstyles.\r\n\r\n		 </p>');

-- --------------------------------------------------------

--
-- Структура на таблица `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) CHARACTER SET utf8 NOT NULL,
  `pass` varchar(51) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Схема на данните от таблица `admin`
--

INSERT INTO `admin` (`id`, `user`, `pass`) VALUES
(1, 'tanya', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Структура на таблица `banners_bg`
--

CREATE TABLE IF NOT EXISTS `banners_bg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text CHARACTER SET utf32 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Схема на данните от таблица `banners_bg`
--

INSERT INTO `banners_bg` (`id`, `info`) VALUES
(1, ' <h3>Гореща ножица <br>\r\n                                    само <strong>10лв!</strong></h3>\r\n                                    <p>\r\n                                        • не позволява на косъма да цъфти <br>\r\n                                        •   	косата расте по-бързо <br>\r\n                                        • повече блясък, еластичност и здравина\r\n\r\n                                    </p>'),
(2, ' <h3>Подстиргване до 6лв</h3>\r\n									<p>Мъжко,Дамско и Детско подстригване на цени до <strong>6лв!</strong></p>'),
(3, '\r\n									<h3>Бързо и професионално обслужване</h3>\r\n									<p>Салони "Тито-Дани" са разположени на удобни  места в централната част на град Добрич<br>\r\n                                        • адрес 1: гр. Добрич, ул. "Независимост", №38  ( до митницата), <br>\r\n                                        • адрес 2: гр. Добрич, ул. "Димитър Списаревски",№2 (зад Рилата), <br>\r\n                                        • телефон за връзка -  0887844632 Татяна Иванова\r\n                                    </p>');

-- --------------------------------------------------------

--
-- Структура на таблица `banners_en`
--

CREATE TABLE IF NOT EXISTS `banners_en` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Схема на данните от таблица `banners_en`
--

INSERT INTO `banners_en` (`id`, `info`) VALUES
(1, ' <h3>Hot scissors <br>\r\n                                    only <strong>10lv!</strong></h3>\r\n                                    <p>\r\n                                        • Do not allow hair flowering <br>\r\n                                        •   	The hair grows faster <br>\r\n                                        • more shine, 	\r\npliability and strength\r\n                                    </p>'),
(2, ' <h3>Haircut for only 6lv</h3>\r\n									<p>Male,Female and Kids haircut on max prices- <strong>6lv!</strong></p>'),
(3, '\r\n									<h3>Fast and professional tendance</h3>\r\n									<p>Salons "Tito-Dani" are located on well-knows places in the central part of DObrich<br>\r\n                                        • address 1: Dobrich, "Nezavisimost" street, №38  , <br>\r\n                                        • address 2: Dobrich,"Dimitar Spisarevski",№2 , <br>\r\n                                        • contact phone -  0887844632 Tatyana Ivanova');

-- --------------------------------------------------------

--
-- Структура на таблица `contacts_bg`
--

CREATE TABLE IF NOT EXISTS `contacts_bg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Схема на данните от таблица `contacts_bg`
--

INSERT INTO `contacts_bg` (`id`, `info`) VALUES
(2, '<strong>Салони "Тито-Дани" са разположени на удобни  места в централната част на град Добрич<br>\r\n    • адрес 1: гр. Добрич, ул. "Независимост", №38  ( до митницата) <br>\r\n    • адрес 2: гр. Добрич, ул. "Димитър Списаревски",№2 (зад книжарница office one) <br>\r\n    • телефон за връзка -  0887844632 Татяна Иванова</strong>');

-- --------------------------------------------------------

--
-- Структура на таблица `contacts_en`
--

CREATE TABLE IF NOT EXISTS `contacts_en` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Схема на данните от таблица `contacts_en`
--

INSERT INTO `contacts_en` (`id`, `info`) VALUES
(1, '<strong>Hairdressing salons "Tito-Dani" are positioned on well-known  places in the central part of town Dobrich<br>\r\n    • address 1: Dobrich, "Nezavisimost" street, №38 <br>\r\n    • address 2: Dobrich, "Dimitar Spisarevski" street,№2  <br>\r\n    • contact phone -  0887844632 Tatyana Ivanova</strong>');

-- --------------------------------------------------------

--
-- Структура на таблица `homeinf_bg`
--

CREATE TABLE IF NOT EXISTS `homeinf_bg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Схема на данните от таблица `homeinf_bg`
--

INSERT INTO `homeinf_bg` (`id`, `info`) VALUES
(1, '<h4>Подстригване на цени до 6лв</h4>\r\n							<p>• Дамско <br>\r\n								• Мъжко <br>\r\n								• Детско <br>\r\n								• Пенсионери</p>\r\n							<a href="index.php?action=price" class="more"> Още</a>'),
(2, '	<h4>Боядисване на цени от 12лв</h4>\r\n							<p>• с боя на салона<br>\r\n								• с боя на клиента<br> </p>\r\n							<a href="index.php?action=price" class="more"> Още</a>'),
(3, '<h4>Кичури на цени от 15лв</h4>\r\n\r\n							<a href="index.php?action=price" class="more"> Още</a>');

-- --------------------------------------------------------

--
-- Структура на таблица `homeinf_en`
--

CREATE TABLE IF NOT EXISTS `homeinf_en` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Схема на данните от таблица `homeinf_en`
--

INSERT INTO `homeinf_en` (`id`, `info`) VALUES
(1, '<h4>Haircut max prices 6lv</h4>\r\n							<p>• Female haircut <br>\r\n								• Male haircut <br>\r\n								• Kids haircut <br>\r\n								• Pensioners</p>\r\n							<a href="index.php?action=price" class="more"> More</a>'),
(2, '<h4>hair dye prices from 12lv</h4>\r\n							<p>• hair dye with salon''s products<br>\r\n								• hair dye  with client''s products<br> </p>\r\n							<a href="index.php?action=price" class="more"> More</a>'),
(3, '	<h4>Hair curls on price 15lv</h4>\r\n\r\n							<a href="index.php?action=price" class="more"> More</a>');

-- --------------------------------------------------------

--
-- Структура на таблица `price_bg`
--

CREATE TABLE IF NOT EXISTS `price_bg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` tinytext NOT NULL,
  `hair_l` enum('къса','средна','дълга','') NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Схема на данните от таблица `price_bg`
--

INSERT INTO `price_bg` (`id`, `service_name`, `hair_l`, `price`) VALUES
(1, 'дамско подстригване', '', 6),
(2, 'мъжко подстригване', '', 5),
(3, 'Детско подстригване', '', 5),
(4, 'Подстригване за пенсионери', '', 5),
(5, 'Изсушаване', 'къса', 8),
(6, 'Изсушаване', 'средна', 12),
(7, 'Изсушаване', 'дълга', 22),
(8, 'Боядисване с боя от салона', 'къса', 12),
(9, 'Боядисване с боя от салона', 'средна', 17),
(10, 'Боядисване с боя от салона', 'дълга', 25),
(11, 'Боядисване с боя на клиената', 'къса', 10),
(12, 'Боядисване с боя на клиената', 'средна', 15),
(13, 'Боядисване с боя на клиената', 'дълга', 22),
(14, 'студено къдрене', 'къса', 14),
(15, 'студено къдрене', 'средна', 22),
(16, 'студено къдрене', 'дълга', 30),
(17, 'кичури', 'къса', 15),
(18, 'кичури', 'средна', 25),
(19, 'кичури', 'дълга', 30),
(20, 'прическа', '', 50),
(21, 'изрусяване', 'къса', 20),
(22, 'изрусяване', 'средна', 30),
(23, 'изрусяване', 'дълга', 40),
(24, 'кичури с фолио', 'средна', 35),
(25, 'кичури с фолио', 'дълга', 45),
(26, 'плитка', '', 3),
(27, 'гел', '', 2),
(28, 'пяна', '', 2),
(29, 'подстригване+измиване', '', 8);

-- --------------------------------------------------------

--
-- Структура на таблица `price_en`
--

CREATE TABLE IF NOT EXISTS `price_en` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` tinytext NOT NULL,
  `hair_l` enum('short','middle','long','') DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Схема на данните от таблица `price_en`
--

INSERT INTO `price_en` (`id`, `service_name`, `hair_l`, `price`) VALUES
(1, 'female haircut', NULL, 6),
(2, 'male haircut', NULL, 5),
(3, 'kids haircut', NULL, 5),
(4, 'pensioner haircut', NULL, 5),
(5, 'hair dye ', 'short', 8),
(6, 'hair dye ', 'middle', 12),
(7, 'hair dye ', 'long', 22),
(8, 'Coloring with our products', 'short', 12),
(9, 'Coloring with our products', 'middle', 17),
(10, 'Coloring with our products', 'long', 25),
(11, 'Coloring with your products', 'short', 10),
(12, 'Coloring with your products', 'middle', 15),
(13, 'Coloring with your products', 'long', 22),
(14, 'hair perm', 'short', 14),
(15, 'hair perm', 'middle', 22),
(16, 'hair perm', 'long', 30),
(17, 'hair highlights', 'short', 15),
(18, 'hair highlights', 'middle', 25),
(19, 'hair highlights', 'long', 30),
(20, 'hairdress', NULL, 50),
(21, 'hair bleaching', 'short', 20),
(22, 'hair bleaching', 'middle', 30),
(23, 'hair bleaching', 'long', 40),
(24, 'hair highlights folio\r\n', 'middle', 35),
(25, 'hair highlights folio', 'long', 45),
(26, 'gel', NULL, 2),
(27, 'mousse\r\n', NULL, 2),
(28, 'haircut + washing', NULL, 8);

-- --------------------------------------------------------

--
-- Структура на таблица `workt_bg`
--

CREATE TABLE IF NOT EXISTS `workt_bg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Схема на данните от таблица `workt_bg`
--

INSERT INTO `workt_bg` (`id`, `info`) VALUES
(1, 'Работно време : всеки ден от 9:00 - 19:00 <br>\r\n    • телефон за връзка -  0887844632 Татяна Иванова');

-- --------------------------------------------------------

--
-- Структура на таблица `workt_en`
--

CREATE TABLE IF NOT EXISTS `workt_en` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Схема на данните от таблица `workt_en`
--

INSERT INTO `workt_en` (`id`, `info`) VALUES
(1, 'Work time : every day from 9:00 - 19:00 <br>\r\n    • contacts phone -  0887844632 Tatyana Ivanova');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
