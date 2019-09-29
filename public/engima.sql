-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2019 at 06:22 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `engima`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id_film` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `release` datetime NOT NULL,
  `synopsis` varchar(1000) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `rating` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id_film`, `title`, `genre`, `duration`, `release`, `synopsis`, `picture`, `rating`) VALUES
(1, 'Avengers: Endgame', 'Action, Adventure, Sci-Fi', 181, '2019-04-26 00:00:00', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.', '/film/pic1', 8.60),
(2, 'Captain Marvel', 'Action, Adventure, Sci-Fi', 123, '2019-03-08 00:00:00', 'Carol Danvers becomes one of the universe\'s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.', '/film/pic2', 7.00),
(3, 'Gundala', 'Action, Crime, Drama', 123, '2019-08-29 00:00:00', 'Indonesia\'s preeminent comic book superhero and his alter ego Sancaka enter the cinematic universe to battle the wicked Pengkor and his diabolical squad of orphan assassins.', '/film/pic3', 7.60),
(4, 'Skyfall', 'Action, Adventure, Thriller', 143, '2012-11-09 00:00:00', 'Bond\'s loyalty to M is tested when her past comes back to haunt her. When MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.', '/film/pic4', 7.70),
(5, 'Dua Garis Biru', 'Drama, Family', 113, '2019-07-11 00:00:00', 'Dara (Zara JKT48) and Bima (Angga Yunanda) violated the boundary without knowing the consequences. They try to take responsibility for their choices. They think they are ready to become adults to face all the consequences. Their innocence was immediately tested when families who really loved them knew, then forced into their chosen journey.', '/film/pic5', 8.20),
(6, 'Spider-Man 3', 'Action, Sci-Fi', 139, '2007-05-04 00:00:00', 'A strange black entity from another world bonds with Peter Parker and causes inner turmoil as he contends with new villains, temptations, and revenge.', '/film/pic6', 6.20),
(7, 'Weathering with You', 'Animation, Drama, Fantasy', 111, '2019-10-18 00:00:00', 'A high-school boy who has run away to Tokyo be friends a girl who appears to be able to manipulate the weather.', '/film/pic7', 7.80);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id_schedule` int(10) UNSIGNED NOT NULL,
  `id_film` int(10) UNSIGNED NOT NULL,
  `show_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id_schedule`, `id_film`, `show_time`) VALUES
(1, 1, '2019-09-28 10:00:00'),
(2, 1, '2019-09-28 13:00:00'),
(3, 1, '2019-09-29 17:00:00'),
(4, 1, '2019-09-30 10:00:00'),
(5, 1, '2019-09-30 14:00:00'),
(6, 1, '2019-09-30 17:00:00'),
(7, 1, '2019-09-30 20:00:00'),
(8, 2, '2019-09-28 10:00:00'),
(9, 2, '2019-09-28 13:00:00'),
(10, 2, '2019-09-29 17:00:00'),
(11, 2, '2019-09-30 10:00:00'),
(12, 2, '2019-09-30 14:00:00'),
(13, 2, '2019-09-30 17:00:00'),
(14, 2, '2019-09-30 20:00:00'),
(15, 3, '2019-09-28 10:00:00'),
(16, 3, '2019-09-28 13:00:00'),
(17, 3, '2019-09-29 17:00:00'),
(18, 3, '2019-09-30 10:00:00'),
(19, 3, '2019-09-30 14:00:00'),
(20, 3, '2019-09-30 17:00:00'),
(21, 3, '2019-09-30 20:00:00'),
(22, 4, '2019-09-28 10:00:00'),
(23, 4, '2019-09-28 13:00:00'),
(24, 4, '2019-09-29 17:00:00'),
(25, 4, '2019-09-30 10:00:00'),
(26, 4, '2019-09-30 14:00:00'),
(27, 4, '2019-09-30 17:00:00'),
(28, 4, '2019-09-30 20:00:00'),
(29, 5, '2019-09-28 10:00:00'),
(30, 5, '2019-09-28 13:00:00'),
(31, 5, '2019-09-29 17:00:00'),
(32, 5, '2019-09-30 10:00:00'),
(33, 5, '2019-09-30 14:00:00'),
(34, 5, '2019-09-30 17:00:00'),
(35, 5, '2019-09-30 20:00:00'),
(36, 6, '2019-09-28 10:00:00'),
(37, 6, '2019-09-28 13:00:00'),
(38, 6, '2019-09-29 17:00:00'),
(39, 6, '2019-09-30 10:00:00'),
(40, 6, '2019-09-30 14:00:00'),
(41, 6, '2019-09-30 17:00:00'),
(42, 6, '2019-09-30 20:00:00'),
(43, 7, '2019-09-28 10:00:00'),
(44, 7, '2019-09-28 13:00:00'),
(45, 7, '2019-09-29 17:00:00'),
(46, 7, '2019-09-30 10:00:00'),
(47, 7, '2019-09-30 14:00:00'),
(48, 7, '2019-09-30 17:00:00'),
(49, 7, '2019-09-30 20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `chair_number` int(11) NOT NULL,
  `id_schedule` int(10) UNSIGNED NOT NULL,
  `taken` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`chair_number`, `id_schedule`, `taken`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 0),
(7, 1, 0),
(8, 1, 0),
(9, 1, 0),
(10, 1, 0),
(11, 1, 0),
(12, 1, 0),
(13, 1, 0),
(14, 1, 0),
(15, 1, 0),
(16, 1, 0),
(17, 1, 0),
(18, 1, 0),
(19, 1, 0),
(20, 1, 0),
(21, 1, 0),
(22, 1, 0),
(23, 1, 0),
(24, 1, 0),
(25, 1, 0),
(26, 1, 0),
(27, 1, 0),
(28, 1, 0),
(29, 1, 0),
(30, 1, 0),
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(1, 3, 0),
(2, 3, 0),
(3, 3, 0),
(4, 3, 0),
(5, 3, 0),
(6, 3, 0),
(7, 3, 0),
(8, 3, 0),
(9, 3, 0),
(10, 3, 0),
(11, 3, 0),
(12, 3, 0),
(13, 3, 0),
(14, 3, 0),
(15, 3, 0),
(16, 3, 0),
(17, 3, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(22, 3, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(1, 4, 0),
(2, 4, 0),
(3, 4, 0),
(4, 4, 0),
(5, 4, 0),
(6, 4, 0),
(7, 4, 0),
(8, 4, 0),
(9, 4, 0),
(10, 4, 0),
(11, 4, 0),
(12, 4, 0),
(13, 4, 0),
(14, 4, 0),
(15, 4, 0),
(16, 4, 0),
(17, 4, 0),
(18, 4, 0),
(19, 4, 0),
(20, 4, 0),
(21, 4, 0),
(22, 4, 0),
(23, 4, 0),
(24, 4, 0),
(25, 4, 0),
(26, 4, 0),
(27, 4, 0),
(28, 4, 0),
(29, 4, 0),
(30, 4, 0),
(1, 5, 0),
(2, 5, 0),
(3, 5, 0),
(4, 5, 0),
(5, 5, 0),
(6, 5, 0),
(7, 5, 0),
(8, 5, 0),
(9, 5, 0),
(10, 5, 0),
(11, 5, 0),
(12, 5, 0),
(13, 5, 0),
(14, 5, 0),
(15, 5, 0),
(16, 5, 0),
(17, 5, 0),
(18, 5, 0),
(19, 5, 0),
(20, 5, 0),
(21, 5, 0),
(22, 5, 0),
(23, 5, 0),
(24, 5, 0),
(25, 5, 0),
(26, 5, 0),
(27, 5, 0),
(28, 5, 0),
(29, 5, 0),
(30, 5, 0),
(1, 6, 0),
(2, 6, 0),
(3, 6, 0),
(4, 6, 0),
(5, 6, 0),
(6, 6, 0),
(7, 6, 0),
(8, 6, 0),
(9, 6, 0),
(10, 6, 0),
(11, 6, 0),
(12, 6, 0),
(13, 6, 0),
(14, 6, 0),
(15, 6, 0),
(16, 6, 0),
(17, 6, 0),
(18, 6, 0),
(19, 6, 0),
(20, 6, 0),
(21, 6, 0),
(22, 6, 0),
(23, 6, 0),
(24, 6, 0),
(25, 6, 0),
(26, 6, 0),
(27, 6, 0),
(28, 6, 0),
(29, 6, 0),
(30, 6, 0),
(1, 7, 0),
(2, 7, 0),
(3, 7, 0),
(4, 7, 0),
(5, 7, 0),
(6, 7, 0),
(7, 7, 0),
(8, 7, 0),
(9, 7, 0),
(10, 7, 0),
(11, 7, 0),
(12, 7, 0),
(13, 7, 0),
(14, 7, 0),
(15, 7, 0),
(16, 7, 0),
(17, 7, 0),
(18, 7, 0),
(19, 7, 0),
(20, 7, 0),
(21, 7, 0),
(22, 7, 0),
(23, 7, 0),
(24, 7, 0),
(25, 7, 0),
(26, 7, 0),
(27, 7, 0),
(28, 7, 0),
(29, 7, 0),
(30, 7, 0),
(1, 8, 0),
(2, 8, 0),
(3, 8, 0),
(4, 8, 0),
(5, 8, 0),
(6, 8, 0),
(7, 8, 0),
(8, 8, 0),
(9, 8, 0),
(10, 8, 0),
(11, 8, 0),
(12, 8, 0),
(13, 8, 0),
(14, 8, 0),
(15, 8, 0),
(16, 8, 0),
(17, 8, 0),
(18, 8, 0),
(19, 8, 0),
(20, 8, 0),
(21, 8, 0),
(22, 8, 0),
(23, 8, 0),
(24, 8, 0),
(25, 8, 0),
(26, 8, 0),
(27, 8, 0),
(28, 8, 0),
(29, 8, 0),
(30, 8, 0),
(1, 9, 0),
(2, 9, 0),
(3, 9, 0),
(4, 9, 0),
(5, 9, 0),
(6, 9, 0),
(7, 9, 0),
(8, 9, 0),
(9, 9, 0),
(10, 9, 0),
(11, 9, 0),
(12, 9, 0),
(13, 9, 0),
(14, 9, 0),
(15, 9, 0),
(16, 9, 0),
(17, 9, 0),
(18, 9, 0),
(19, 9, 0),
(20, 9, 0),
(21, 9, 0),
(22, 9, 0),
(23, 9, 0),
(24, 9, 0),
(25, 9, 0),
(26, 9, 0),
(27, 9, 0),
(28, 9, 0),
(29, 9, 0),
(30, 9, 0),
(1, 10, 0),
(2, 10, 0),
(3, 10, 0),
(4, 10, 0),
(5, 10, 0),
(6, 10, 0),
(7, 10, 0),
(8, 10, 0),
(9, 10, 0),
(10, 10, 0),
(11, 10, 0),
(12, 10, 0),
(13, 10, 0),
(14, 10, 0),
(15, 10, 0),
(16, 10, 0),
(17, 10, 0),
(18, 10, 0),
(19, 10, 0),
(20, 10, 0),
(21, 10, 0),
(22, 10, 0),
(23, 10, 0),
(24, 10, 0),
(25, 10, 0),
(26, 10, 0),
(27, 10, 0),
(28, 10, 0),
(29, 10, 0),
(30, 10, 0),
(1, 11, 0),
(2, 11, 0),
(3, 11, 0),
(4, 11, 0),
(5, 11, 0),
(6, 11, 0),
(7, 11, 0),
(8, 11, 0),
(9, 11, 0),
(10, 11, 0),
(11, 11, 0),
(12, 11, 0),
(13, 11, 0),
(14, 11, 0),
(15, 11, 0),
(16, 11, 0),
(17, 11, 0),
(18, 11, 0),
(19, 11, 0),
(20, 11, 0),
(21, 11, 0),
(22, 11, 0),
(23, 11, 0),
(24, 11, 0),
(25, 11, 0),
(26, 11, 0),
(27, 11, 0),
(28, 11, 0),
(29, 11, 0),
(30, 11, 0),
(1, 12, 0),
(2, 12, 0),
(3, 12, 0),
(4, 12, 0),
(5, 12, 0),
(6, 12, 0),
(7, 12, 0),
(8, 12, 0),
(9, 12, 0),
(10, 12, 0),
(11, 12, 0),
(12, 12, 0),
(13, 12, 0),
(14, 12, 0),
(15, 12, 0),
(16, 12, 0),
(17, 12, 0),
(18, 12, 0),
(19, 12, 0),
(20, 12, 0),
(21, 12, 0),
(22, 12, 0),
(23, 12, 0),
(24, 12, 0),
(25, 12, 0),
(26, 12, 0),
(27, 12, 0),
(28, 12, 0),
(29, 12, 0),
(30, 12, 0),
(1, 13, 0),
(2, 13, 0),
(3, 13, 0),
(4, 13, 0),
(5, 13, 0),
(6, 13, 0),
(7, 13, 0),
(8, 13, 0),
(9, 13, 0),
(10, 13, 0),
(11, 13, 0),
(12, 13, 0),
(13, 13, 0),
(14, 13, 0),
(15, 13, 0),
(16, 13, 0),
(17, 13, 0),
(18, 13, 0),
(19, 13, 0),
(20, 13, 0),
(21, 13, 0),
(22, 13, 0),
(23, 13, 0),
(24, 13, 0),
(25, 13, 0),
(26, 13, 0),
(27, 13, 0),
(28, 13, 0),
(29, 13, 0),
(30, 13, 0),
(1, 14, 0),
(2, 14, 0),
(3, 14, 0),
(4, 14, 0),
(5, 14, 0),
(6, 14, 0),
(7, 14, 0),
(8, 14, 0),
(9, 14, 0),
(10, 14, 0),
(11, 14, 0),
(12, 14, 0),
(13, 14, 0),
(14, 14, 0),
(15, 14, 0),
(16, 14, 0),
(17, 14, 0),
(18, 14, 0),
(19, 14, 0),
(20, 14, 0),
(21, 14, 0),
(22, 14, 0),
(23, 14, 0),
(24, 14, 0),
(25, 14, 0),
(26, 14, 0),
(27, 14, 0),
(28, 14, 0),
(29, 14, 0),
(30, 14, 0),
(1, 15, 0),
(2, 15, 0),
(3, 15, 0),
(4, 15, 0),
(5, 15, 0),
(6, 15, 0),
(7, 15, 0),
(8, 15, 0),
(9, 15, 0),
(10, 15, 0),
(11, 15, 0),
(12, 15, 0),
(13, 15, 0),
(14, 15, 0),
(15, 15, 0),
(16, 15, 0),
(17, 15, 0),
(18, 15, 0),
(19, 15, 0),
(20, 15, 0),
(21, 15, 0),
(22, 15, 0),
(23, 15, 0),
(24, 15, 0),
(25, 15, 0),
(26, 15, 0),
(27, 15, 0),
(28, 15, 0),
(29, 15, 0),
(30, 15, 0),
(1, 16, 0),
(2, 16, 0),
(3, 16, 0),
(4, 16, 0),
(5, 16, 0),
(6, 16, 0),
(7, 16, 0),
(8, 16, 0),
(9, 16, 0),
(10, 16, 0),
(11, 16, 0),
(12, 16, 0),
(13, 16, 0),
(14, 16, 0),
(15, 16, 0),
(16, 16, 0),
(17, 16, 0),
(18, 16, 0),
(19, 16, 0),
(20, 16, 0),
(21, 16, 0),
(22, 16, 0),
(23, 16, 0),
(24, 16, 0),
(25, 16, 0),
(26, 16, 0),
(27, 16, 0),
(28, 16, 0),
(29, 16, 0),
(30, 16, 0),
(1, 17, 0),
(2, 17, 0),
(3, 17, 0),
(4, 17, 0),
(5, 17, 0),
(6, 17, 0),
(7, 17, 0),
(8, 17, 0),
(9, 17, 0),
(10, 17, 0),
(11, 17, 0),
(12, 17, 0),
(13, 17, 0),
(14, 17, 0),
(15, 17, 0),
(16, 17, 0),
(17, 17, 0),
(18, 17, 0),
(19, 17, 0),
(20, 17, 0),
(21, 17, 0),
(22, 17, 0),
(23, 17, 0),
(24, 17, 0),
(25, 17, 0),
(26, 17, 0),
(27, 17, 0),
(28, 17, 0),
(29, 17, 0),
(30, 17, 0),
(1, 18, 0),
(2, 18, 0),
(3, 18, 0),
(4, 18, 0),
(5, 18, 0),
(6, 18, 0),
(7, 18, 0),
(8, 18, 0),
(9, 18, 0),
(10, 18, 0),
(11, 18, 0),
(12, 18, 0),
(13, 18, 0),
(14, 18, 0),
(15, 18, 0),
(16, 18, 0),
(17, 18, 0),
(18, 18, 0),
(19, 18, 0),
(20, 18, 0),
(21, 18, 0),
(22, 18, 0),
(23, 18, 0),
(24, 18, 0),
(25, 18, 0),
(26, 18, 0),
(27, 18, 0),
(28, 18, 0),
(29, 18, 0),
(30, 18, 0),
(1, 19, 0),
(2, 19, 0),
(3, 19, 0),
(4, 19, 0),
(5, 19, 0),
(6, 19, 0),
(7, 19, 0),
(8, 19, 0),
(9, 19, 0),
(10, 19, 0),
(11, 19, 0),
(12, 19, 0),
(13, 19, 0),
(14, 19, 0),
(15, 19, 0),
(16, 19, 0),
(17, 19, 0),
(18, 19, 0),
(19, 19, 0),
(20, 19, 0),
(21, 19, 0),
(22, 19, 0),
(23, 19, 0),
(24, 19, 0),
(25, 19, 0),
(26, 19, 0),
(27, 19, 0),
(28, 19, 0),
(29, 19, 0),
(30, 19, 0),
(1, 20, 0),
(2, 20, 0),
(3, 20, 0),
(4, 20, 0),
(5, 20, 0),
(6, 20, 0),
(7, 20, 0),
(8, 20, 0),
(9, 20, 0),
(10, 20, 0),
(11, 20, 0),
(12, 20, 0),
(13, 20, 0),
(14, 20, 0),
(15, 20, 0),
(16, 20, 0),
(17, 20, 0),
(18, 20, 0),
(19, 20, 0),
(20, 20, 0),
(21, 20, 0),
(22, 20, 0),
(23, 20, 0),
(24, 20, 0),
(25, 20, 0),
(26, 20, 0),
(27, 20, 0),
(28, 20, 0),
(29, 20, 0),
(30, 20, 0),
(1, 21, 0),
(2, 21, 0),
(3, 21, 0),
(4, 21, 0),
(5, 21, 0),
(6, 21, 0),
(7, 21, 0),
(8, 21, 0),
(9, 21, 0),
(10, 21, 0),
(11, 21, 0),
(12, 21, 0),
(13, 21, 0),
(14, 21, 0),
(15, 21, 0),
(16, 21, 0),
(17, 21, 0),
(18, 21, 0),
(19, 21, 0),
(20, 21, 0),
(21, 21, 0),
(22, 21, 0),
(23, 21, 0),
(24, 21, 0),
(25, 21, 0),
(26, 21, 0),
(27, 21, 0),
(28, 21, 0),
(29, 21, 0),
(30, 21, 0),
(1, 22, 0),
(2, 22, 0),
(3, 22, 0),
(4, 22, 0),
(5, 22, 0),
(6, 22, 0),
(7, 22, 0),
(8, 22, 0),
(9, 22, 0),
(10, 22, 0),
(11, 22, 0),
(12, 22, 0),
(13, 22, 0),
(14, 22, 0),
(15, 22, 0),
(16, 22, 0),
(17, 22, 0),
(18, 22, 0),
(19, 22, 0),
(20, 22, 0),
(21, 22, 0),
(22, 22, 0),
(23, 22, 0),
(24, 22, 0),
(25, 22, 0),
(26, 22, 0),
(27, 22, 0),
(28, 22, 0),
(29, 22, 0),
(30, 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id_transaction` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_schedule` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `accesstoken` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `phone_number`, `password`, `picture`, `accesstoken`) VALUES
(1, 'username1', 'userone@gmail.com', '081111111111', 'password', 'user/pic1', NULL),
(2, 'username2', 'usertwo@gmail.com', '082222222222', 'password', 'user/pic2', NULL),
(3, 'username3', 'userthree@gmail.com', '083333333333', 'password', 'user/pic3', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id_schedule`),
  ADD KEY `schedule_id_film_foreign` (`id_film`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`id_schedule`,`chair_number`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id_transaction`),
  ADD KEY `transaction_id_user_foreign` (`id_user`),
  ADD KEY `transaction_id_schedule_foreign` (`id_schedule`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `user_username_unique` (`username`),
  ADD UNIQUE KEY `user_email_unique` (`email`),
  ADD UNIQUE KEY `user_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `user_picture_unique` (`picture`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id_film` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id_schedule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id_transaction` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_id_film_foreign` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`);

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_id_schedule_foreign` FOREIGN KEY (`id_schedule`) REFERENCES `schedule` (`id_schedule`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_id_schedule_foreign` FOREIGN KEY (`id_schedule`) REFERENCES `schedule` (`id_schedule`),
  ADD CONSTRAINT `transaction_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
