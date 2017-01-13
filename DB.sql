-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2017 at 01:40 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spanishlessons_db`
--
CREATE DATABASE IF NOT EXISTS `spanishlessons_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `spanishlessons_db`;

-- --------------------------------------------------------

--
-- Table structure for table `lesson1catalogue`
--

DROP TABLE IF EXISTS `lesson1catalogue`;
CREATE TABLE IF NOT EXISTS `lesson1catalogue` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `contains` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `lesson1catalogue`
--

INSERT INTO `lesson1catalogue` (`id`, `name`, `contains`) VALUES
(1, 'Numbers', 10),
(2, 'Colors', 10),
(3, 'Days of the Week', 7),
(4, 'Months of the Year', 12);

-- --------------------------------------------------------

--
-- Table structure for table `lesson1flashcards`
--

DROP TABLE IF EXISTS `lesson1flashcards`;
CREATE TABLE IF NOT EXISTS `lesson1flashcards` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `category` int(6) unsigned NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `spanishterm` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- Dumping data for table `lesson1flashcards`
--

INSERT INTO `lesson1flashcards` (`id`, `category`, `name`, `image`, `spanishterm`) VALUES
(1, 1, 'One', 'one.jpg', 'Uno'),
(2, 1, 'Two', 'two.png', 'Dos'),
(3, 1, 'Three', 'three.png', 'Tres'),
(4, 1, 'Four', 'four.png', 'Cuatro'),
(5, 1, 'Five', 'three.png', 'Cinco'),
(6, 1, 'Six', 'three.png', 'Seis'),
(7, 1, 'Seven', 'three.png', 'Siete'),
(8, 1, 'Eight', 'three.png', 'Ocho'),
(9, 1, 'Nine', 'three.png', 'Nueve'),
(10, 1, 'Ten', 'three.png', 'Diez'),
(11, 2, 'White', 'white.png', 'Blanco'),
(12, 2, 'Yellow', 'yellow.png', 'Amarillo'),
(13, 2, 'Blue', 'blue.png', 'Azul'),
(14, 2, 'Green', 'green.png', 'Verde'),
(15, 2, 'Orange', 'orange.png', 'Anaranjado'),
(16, 2, 'Purple', 'purple.png', 'Púrpura'),
(17, 2, 'Red', 'red.png', 'Rojo'),
(18, 2, 'Pink', 'pink.png', 'Rosado'),
(19, 2, 'Brown', 'brown.png', 'Café'),
(20, 2, 'Black', 'black.png', 'Negro'),
(21, 3, 'Monday', 'monday.png', 'Lunes'),
(22, 3, 'Tuesday', 'tuesday.png', 'Martes'),
(23, 3, 'Wednesday', 'wednesday.png', 'Miércoles'),
(24, 3, 'Thursday', 'thursday.png', 'Jueves'),
(25, 3, 'Friday', 'friday.png', 'Viernes'),
(26, 3, 'Saturday', 'saturday.png', 'Sábado'),
(27, 3, 'Sunday', 'sunday.png', 'Domingo'),
(28, 4, 'January', 'january.png', 'Enero'),
(29, 4, 'February', 'february.png', 'Febrero'),
(30, 4, 'March', 'march.pnh', 'Marzo'),
(31, 4, 'April', 'april.png', 'Abril'),
(32, 4, 'May', 'may.png', 'Mayo'),
(33, 4, 'June', 'june.png', 'Junio'),
(34, 4, 'July', 'july.png', 'Julio'),
(35, 4, 'August', 'august.png', 'Agosto'),
(36, 4, 'September', 'september.png', 'Septiembre'),
(37, 4, 'October', 'october.png', 'Octubre'),
(38, 4, 'November', 'november.png', 'Noviembre'),
(39, 4, 'December', 'december.png', 'Diciembre');



-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `is_paid` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `is_active`, `is_paid`) VALUES
(1, 'User', '7a3ac46cededd08c8779582f947089c6dbc48194', 'User', 'Admin', '1', '0');



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
