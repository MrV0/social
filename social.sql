-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2018 at 08:17 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.0.32-3+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(17, 'Hello Utah', 'superman', 'deadpool', '2018-07-29 15:50:37', 'no', 106),
(18, 'Hello Dude!', 'deadpool', 'superman', '2018-08-26 14:11:27', 'no', 107),
(19, 'Hello Deadpool', 'hulk', 'deadpool', '2018-09-16 13:37:33', 'no', 134),
(20, 'Fuck You Deadpool', 'hulk', 'deadpool', '2018-09-16 13:38:06', 'no', 134),
(21, 'Hello Wolverine', 'deadpool', 'wolverine', '2018-09-16 13:39:26', 'no', 144),
(22, '!!!!', 'hulk', 'deadpool', '2018-09-16 16:25:39', 'no', 134),
(23, 'Hello Utah', 'hulk', 'deadpool', '2018-09-16 18:23:01', 'no', 132),
(24, 'hello hulk', 'deadpool', 'hulk', '2018-09-16 22:13:59', 'no', 146),
(25, 'Your dead!', 'hulk', 'deadpool', '2018-09-16 22:22:51', 'no', 134),
(26, 'What a beautiful day!', 'iron_man', 'deadpool', '2018-09-16 22:23:24', 'no', 134),
(27, 'Hello !', 'iron_man', 'deadpool', '2018-09-16 22:23:50', 'no', 132),
(28, 'fuck you green', 'deadpool', 'hulk', '2018-09-26 23:20:21', 'no', 146);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `user_from` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(1, 'klarkkent', 'deadpool');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(17, 'superman', 149),
(18, 'batman', 149),
(19, 'thor', 149),
(20, 'spiderman', 149),
(21, 'captain_america', 149),
(22, 'ant_man', 149),
(23, 'iron_man', 149),
(24, 'wolverine', 149),
(25, 'hulk', 149),
(26, 'Dr_strange', 149);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(8, 'superman', 'deadpool', 'Hello superman', '2018-08-28 21:57:19', 'yes', 'no', 'no'),
(9, 'deadpool', 'superman', 'Hello Utah', '2018-08-28 22:00:42', 'yes', 'yes', 'no'),
(22, 'superman', 'deadpool', 'Fuck You superman', '2018-08-29 21:48:21', 'yes', 'no', 'no'),
(23, 'batman', 'deadpool', 'Hey dude', '2018-08-31 20:17:04', 'no', 'no', 'no'),
(24, 'superman', 'deadpool', 'Fuck YOUUUUUUUUUUUUUUUUUUUUUUUUU!!!', '2018-08-31 20:19:52', 'yes', 'no', 'no'),
(34, 'superman', 'deadpool', 'No Dick head Fuck Youuuuuuu', '2018-08-31 20:43:54', 'no', 'no', 'no'),
(49, 'superman', 'deadpool', 'Hello there', '2018-09-04 23:11:55', 'no', 'no', 'no'),
(50, 'superman', 'deadpool', 'Hello there', '2018-09-04 23:13:16', 'no', 'no', 'no'),
(51, 'superman', 'deadpool', 'Hi dude', '2018-09-04 23:13:29', 'no', 'no', 'no'),
(52, 'thor', 'deadpool', 'thor', '2018-09-06 21:48:39', 'no', 'no', 'no'),
(53, 'iron_man', 'deadpool', 'ironman', '2018-09-06 21:48:53', 'yes', 'yes', 'no'),
(54, 'spiderman', 'deadpool', 'spiderman', '2018-09-06 21:49:03', 'no', 'no', 'no'),
(55, 'captain_america', 'deadpool', 'captain america', '2018-09-06 21:49:16', 'yes', 'no', 'no'),
(56, 'ant_man', 'deadpool', 'ant man', '2018-09-06 21:49:29', 'no', 'no', 'no'),
(57, 'ant_man', 'deadpool', 'ant man', '2018-09-06 21:50:23', 'no', 'no', 'no'),
(58, 'ant_man', 'deadpool', 'ant man', '2018-09-06 21:50:31', 'no', 'no', 'no'),
(59, 'ant_man', 'deadpool', 'ant man', '2018-09-06 21:50:31', 'no', 'no', 'no'),
(60, 'ant_man', 'deadpool', 'ant man', '2018-09-06 21:50:41', 'no', 'no', 'no'),
(61, 'wolverine', 'deadpool', 'wolverine', '2018-09-06 21:51:17', 'no', 'no', 'no'),
(62, 'wolverine', 'deadpool', 'wolverine', '2018-09-06 21:51:49', 'no', 'no', 'no'),
(63, 'hulk', 'deadpool', 'hulk', '2018-09-06 21:55:48', 'yes', 'yes', 'no'),
(64, 'superman', 'deadpool', 'hello', '2018-09-06 22:24:19', 'no', 'no', 'no'),
(65, 'deadpool', 'Dr_strange', 'Strange', '2018-09-06 23:00:44', 'yes', 'yes', 'no'),
(66, 'Dr_strange', 'deadpool', 'hello', '2018-09-07 23:58:35', 'no', 'no', 'no'),
(67, 'deadpool', 'deadpool', 'beatiful', '2018-09-08 01:59:32', 'yes', 'yes', 'no'),
(68, 'deadpool', 'deadpool', 'beatiful', '2018-09-08 01:59:36', 'yes', 'yes', 'no'),
(69, 'deadpool', 'deadpool', 'beatiful', '2018-09-08 01:59:48', 'yes', 'yes', 'no'),
(70, 'deadpool', 'deadpool', 'beautiful', '2018-09-08 02:03:27', 'yes', 'yes', 'no'),
(71, 'deadpool', 'deadpool', 'beautiful', '2018-09-08 02:03:34', 'yes', 'yes', 'no'),
(72, 'ant_man', 'deadpool', 'worm', '2018-09-08 02:06:06', 'no', 'no', 'no'),
(73, 'ant_man', 'deadpool', 'worm', '2018-09-08 02:06:10', 'no', 'no', 'no'),
(74, 'ant_man', 'deadpool', 'worm', '2018-09-08 02:06:17', 'no', 'no', 'no'),
(75, 'ant_man', 'deadpool', 'worm', '2018-09-08 02:11:38', 'no', 'no', 'no'),
(76, 'ant_man', 'deadpool', 'worm', '2018-09-08 02:11:55', 'no', 'no', 'no'),
(77, 'ant_man', 'deadpool', 'fuck', '2018-09-08 02:13:18', 'no', 'no', 'no'),
(78, 'ant_man', 'deadpool', 'fuck', '2018-09-08 02:13:21', 'no', 'no', 'no'),
(79, 'ant_man', 'deadpool', 'fuck', '2018-09-08 02:13:29', 'no', 'no', 'no'),
(80, 'wolverine', 'deadpool', 'Hello', '2018-09-08 02:18:40', 'no', 'no', 'no'),
(81, 'wolverine', 'deadpool', 'Hello', '2018-09-08 02:18:44', 'no', 'no', 'no'),
(82, 'wolverine', 'deadpool', 'Hello', '2018-09-08 02:18:46', 'no', 'no', 'no'),
(83, 'ant_man', 'deadpool', 'fuck', '2018-09-08 02:20:23', 'no', 'no', 'no'),
(84, 'ant_man', 'deadpool', 'fuck', '2018-09-08 02:25:26', 'no', 'no', 'no'),
(85, 'ant_man', 'deadpool', 'fuck', '2018-09-08 02:26:02', 'no', 'no', 'no'),
(86, 'wolverine', 'deadpool', 'Hello', '2018-09-08 02:26:40', 'no', 'no', 'no'),
(87, 'deadpool', 'hulk', 'Hey red\r\n', '2018-09-10 00:20:12', 'yes', 'yes', 'no'),
(88, 'deadpool', 'hulk', 'hello', '2018-09-10 00:21:17', 'yes', 'yes', 'no'),
(89, 'deadpool', 'iron_man', 'Fuck You Red', '2018-09-10 00:21:56', 'yes', 'yes', 'no'),
(90, 'deadpool', 'hulk', 'Youhou', '2018-09-10 00:36:08', 'yes', 'yes', 'no'),
(91, 'deadpool', 'hulk', 'Hello', '2018-09-11 21:02:36', 'no', 'yes', 'no'),
(92, 'deadpool', 'hulk', 'Hi', '2018-09-11 21:02:39', 'no', 'yes', 'no'),
(93, 'deadpool', 'iron_man', 'FUCK', '2018-09-11 21:05:47', 'yes', 'yes', 'no'),
(94, 'deadpool', 'iron_man', 'YOU', '2018-09-11 21:05:51', 'yes', 'yes', 'no'),
(95, 'deadpool', 'hulk', 'Green here', '2018-09-11 21:06:08', 'no', 'yes', 'no'),
(96, 'deadpool', 'hulk', 'Youhou', '2018-09-11 21:06:13', 'no', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(28, 'deadpool', 'superman', 'superman liked your post', 'post.php?id=149', '2018-09-16 16:54:59', 'yes', 'yes'),
(29, 'deadpool', 'batman', 'batman liked your post', 'post.php?id=149', '2018-09-16 16:55:12', 'yes', 'yes'),
(30, 'deadpool', 'thor', 'thor liked your post', 'post.php?id=149', '2018-09-16 16:55:24', 'yes', 'yes'),
(31, 'deadpool', 'spiderman', 'spiderman liked your post', 'post.php?id=149', '2018-09-16 17:01:12', 'yes', 'yes'),
(32, 'deadpool', 'captain_america', 'captain_america liked your post', 'post.php?id=149', '2018-09-16 17:01:25', 'yes', 'yes'),
(33, 'deadpool', 'ant_man', 'ant_man liked your post', 'post.php?id=149', '2018-09-16 17:01:36', 'yes', 'yes'),
(34, 'deadpool', 'iron_man', 'iron_man liked your post', 'post.php?id=149', '2018-09-16 17:01:50', 'yes', 'yes'),
(35, 'deadpool', 'wolverine', 'wolverine liked your post', 'post.php?id=149', '2018-09-16 17:02:01', 'yes', 'yes'),
(36, 'deadpool', 'hulk', 'hulk liked your post', 'post.php?id=149', '2018-09-16 17:02:12', 'yes', 'yes'),
(37, 'deadpool', 'Dr_strange', 'Dr_strange liked your post', 'post.php?id=149', '2018-09-16 17:02:23', 'yes', 'yes'),
(38, 'deadpool', 'hulk', 'hulk commented on your post', 'post.php?id=132', '2018-09-16 18:23:01', 'yes', 'yes'),
(39, '', 'hulk', 'hulk commented on your profile post', 'post.php?id=132', '2018-09-16 18:23:01', 'yes', 'no'),
(40, 'hulk', 'deadpool', 'deadpool commented on your post', 'post.php?id=146', '2018-09-16 22:13:59', 'no', 'no'),
(41, 'deadpool', 'hulk', 'hulk commented on your post', 'post.php?id=134', '2018-09-16 22:22:51', 'yes', 'yes'),
(42, 'deadpool', 'iron_man', 'iron_man commented on your post', 'post.php?id=134', '2018-09-16 22:23:24', 'yes', 'yes'),
(43, 'hulk', 'iron_man', 'iron_man commented on a post you commented on', 'post.php?id=134', '2018-09-16 22:23:24', 'no', 'no'),
(44, 'deadpool', 'iron_man', 'iron_man commented on your post', 'post.php?id=132', '2018-09-16 22:23:50', 'yes', 'yes'),
(45, 'hulk', 'iron_man', 'iron_man commented on a post you commented on', 'post.php?id=132', '2018-09-16 22:23:50', 'no', 'no'),
(46, 'hulk', 'deadpool', 'deadpool commented on your post', 'post.php?id=146', '2018-09-26 23:20:21', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(132, 'Hello!', 'deadpool', 'none', '2018-08-26 14:10:48', 'no', 'no', 1, ''),
(133, 'You sucks', 'deadpool', 'superman', '2018-08-26 14:11:53', 'no', 'no', 0, ''),
(134, 'Fuck You! Love You!!!', 'deadpool', 'none', '2018-08-26 14:13:37', 'no', 'no', 0, ''),
(135, 'Hello', 'deadpool', 'superman', '2018-09-02 22:22:14', 'no', 'no', 0, ''),
(136, 'hello', 'batman', 'none', '2018-09-06 21:24:19', 'no', 'no', 0, ''),
(137, 'ragnarok', 'thor', 'none', '2018-09-06 21:24:52', 'no', 'no', 0, ''),
(138, 'ironman', '', 'none', '2018-09-06 21:35:56', 'no', 'no', 0, ''),
(139, 'ironman', 'iron_man', 'none', '2018-09-06 21:40:07', 'no', 'no', 0, ''),
(140, 'spiderman', 'spiderman', 'none', '2018-09-06 21:44:47', 'no', 'no', 0, ''),
(141, 'captain america', 'captain_america', 'none', '2018-09-06 21:45:10', 'no', 'no', 0, ''),
(142, ' ant man', 'ant_man', 'none', '2018-09-06 21:45:28', 'no', 'no', 0, ''),
(143, 'wolverine', 'james_howlett', 'none', '2018-09-06 21:47:44', 'no', 'no', 0, ''),
(144, 'wolverine', 'wolverine', 'none', '2018-09-06 21:51:03', 'no', 'no', 0, ''),
(145, 'hulk', 'robert_banner', 'none', '2018-09-06 21:53:45', 'no', 'no', 0, ''),
(146, 'hulk', 'hulk', 'none', '2018-09-06 21:55:32', 'no', 'no', 0, ''),
(147, 'hello Scot', 'deadpool', 'ant_man', '2018-09-08 02:25:56', 'no', 'no', 1, ''),
(148, 'Hello my friend', 'deadpool', 'wolverine', '2018-09-08 02:26:40', 'no', 'no', 0, ''),
(149, 'Hello ', 'deadpool', 'wolverine', '2018-09-13 22:24:34', 'no', 'no', 10, ''),
(182, 'Hello Dummy\' s. It\'s a beautiful day', 'deadpool', 'none', '2018-09-25 23:34:50', 'no', 'no', 0, ''),
(183, 'gjkjhhl;', 'deadpool', 'none', '2018-09-26 23:06:49', 'no', 'yes', 0, 'assets/images/posts/5babe6d9157a331764702_10156180813431487_212579603884015616_n.jpg'),
(184, 'gjkjhhl;', 'deadpool', 'none', '2018-09-26 23:06:59', 'no', 'yes', 0, 'assets/images/posts/5babe6e3a730331764702_10156180813431487_212579603884015616_n.jpg'),
(185, 'gjkjhhl;', 'deadpool', 'none', '2018-09-26 23:07:37', 'no', 'yes', 0, 'assets/images/posts/5babe7090487a31764702_10156180813431487_212579603884015616_n.jpg'),
(186, 'bxcvbx', 'deadpool', 'none', '2018-09-26 23:09:35', 'no', 'yes', 0, 'assets/images/posts/5babe77f4422036485510_843155929227020_7323441958674759680_n.jpg'),
(187, 'helo', 'deadpool', 'none', '2018-09-26 23:14:50', 'no', 'no', 0, 'assets/images/posts/5babe8ba9fbc023172467_10215388685619370_7891338565433011950_n.jpg'),
(188, '', 'deadpool', 'none', '2018-09-26 23:23:41', 'no', 'no', 0, 'assets/images/posts/5babeacdc2a5336485510_843155929227020_7323441958674759680_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Hello', 1),
('Dummy', 1),
('Beautiful', 1),
('Day', 1),
('Gjkjhhl', 3),
('Bxcvbx', 1),
('Helo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(2, 'Dead', 'Pool', 'deadpool', 'deadpool@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-07-01', 'assets/images/profile_pics/deadpool38418eb1820e241205b34da70bbe4974n.jpeg', 46, 22, 'no', ',superman,batman,thor,spiderman,iron_man,wolverine,hulk,dr_strange,ant_man,captain_america,'),
(3, 'Clark', 'Kent', 'superman', 'superman@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-07-01', 'assets/images/profile_pics/superman9a3193da453965e269dc25770e862238n.jpeg', 1, 0, 'no', ',deadpool,batman,thor,'),
(4, 'Bruce', 'Wayne', 'batman', 'batman@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-07-01', 'assets/images/profile_pics/batmane8dc58b4dc6720291e7e3f84371851bcn.jpeg', 1, 0, 'no', ',superman,deadpool,thor,'),
(5, 'Thor', 'Ragnarok', 'thor', 'thor@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-07-01', 'assets/images/profile_pics/thorf53874facb9690e1cdecf7a6c0497724n.jpeg', 1, 0, 'no', ',deadpool,superman,batman,'),
(6, 'Peter', 'Parker', 'spiderman', 'spiderman@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-06', 'assets/images/profile_pics/spidermanc1570e4ebccdad51e4100e4f0dc6c3e3n.jpeg', 1, 0, 'no', ',deadpool,'),
(7, 'Steve', 'Rogers', 'captain_america', 'captainamerica@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-06', 'assets/images/profile_pics/captain_americab0ad0f8a91f588651d62d06811780333n.jpeg', 1, 0, 'no', ',deadpool,'),
(8, 'Scott', 'Lang', 'ant_man', 'antman@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-06', 'assets/images/profile_pics/ant_manb548c30854e568ba92b729ce08387d16n.jpeg', 1, 0, 'no', ',deadpool,'),
(9, 'Tony', 'Stark', 'iron_man', 'ironman@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-06', 'assets/images/profile_pics/iron_manb6af602e2bfd8ccf59553fa2db2477d0n.jpeg', 1, 0, 'no', ',deadpool,'),
(11, 'James', 'Howlett', 'wolverine', 'wolverine@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-06', 'assets/images/profile_pics/wolverined6bce563e94c710890c58d6e25c6bea2n.jpeg', 2, 0, 'no', ',deadpool,hulk,'),
(12, 'Robert', 'Banner', 'hulk', 'hulk@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-06', 'assets/images/profile_pics/hulk3a3d8faf8aba33fe6aa0c12e96f47f71n.jpeg', 2, 0, 'no', ',deadpool,wolverine,'),
(13, 'Stephen', 'Strange', 'dr_strange', 'strange@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-09-06', 'assets/images/profile_pics/Dr_strangecf853f2fd8b532a6dedb0045279158c9n.jpeg', 0, 0, 'no', ',deadpool,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
