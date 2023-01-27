-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 06:56 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cit`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `about_desc` text NOT NULL,
  `about_status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `about_img` text NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `about_desc`, `about_status`, `user_id`, `about_img`, `created_at`) VALUES
(8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum, sed repudiandae odit deserunt, quas quibusdam necessitatibus nesciunt eligendi esse sit non reprehenderit quisquam asperiores maxime blanditiis culpa vitae velit. Numquam!', 1, 32, '8.png', '2021-12-24 04:15:00 pm'),
(10, 'Non placeat reprehe', 0, 124, '', '2021-12-23 11:16:20 pm');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `info` text NOT NULL,
  `office_add` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `office_city` varchar(150) DEFAULT NULL,
  `city_num` int(11) DEFAULT NULL,
  `city_add` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `info`, `office_add`, `number`, `email`, `office_city`, `city_num`, `city_add`, `created_at`) VALUES
(4, 'Event definition is - somthing that happens occurre How evesnt sentence. Synonym when an unknown printer took a galley.', '123/A, Miranda City Likaoli Prikano, Dope', 1630555406, 'info@example.com', 'NEW YORK', 1712859072, 'Event Center park WT 22 New York', '2021-12-26 12:20:46 am'),
(5, 'Ipsum labore assumen', 'Earum quas eos incid', 0, 'zohebaqe@mailinator.com', 'Ad vel necessitatibu', 0, 'Natus explicabo Ill', '2021-12-25 11:35:31 pm');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `first_title` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `button` varchar(255) NOT NULL,
  `banner_img` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `first_title`, `title`, `description`, `button`, `banner_img`, `status`, `created_at`) VALUES
(1, 'HELLO!', 'Voluptatem pariatur', 'Molestiae occaecat i', 'Dolores sit eiusmod', '1.jpg', 0, '2021-12-23 11:43:21 am'),
(3, 'HELLO!', 'Hey, I am Ababukker.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 'Let\'s talk', '3.jpg', 0, '2021-12-23 11:43:15 am'),
(5, 'HELLO!', 'I AM WILL SMITH', 'I\'m Will Smith, professional web developer with long time experience in this field​.', 'SEE PORTFOLIOS', '5.png', 1, '2021-12-23 11:42:25 am'),
(6, 'Quos minus ea dolore', 'Dolore ab beatae ani', 'Minim reiciendis exc', 'Commodi modi molesti', NULL, 0, '2021-12-24 11:56:02 am');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand_img` text NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_img`, `created_at`) VALUES
(1, '1.png', '2021-12-26 12:20:51 pm'),
(2, '2.png', '2021-12-26 12:20:58 pm'),
(3, '3.png', '2021-12-26 12:21:02 pm'),
(4, '4.png', '2021-12-26 12:21:06 pm'),
(5, '5.png', '2021-12-26 12:21:11 pm'),
(6, '6.png', '2021-12-26 12:21:15 pm'),
(7, '7.png', '2021-12-26 12:21:21 pm');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `percent` int(11) NOT NULL,
  `years` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `subject`, `percent`, `years`, `status`, `user_id`, `created_at`) VALUES
(2, 'Master of Database Administration', 85, 2011, 1, 32, '2022-01-03 11:18:56 pm'),
(3, 'PHD of Interaction Design & Animation', 80, 2019, 1, 32, '2022-01-03 11:17:20 pm'),
(7, 'Diploma of Computer', 11, 1991, 1, 32, '2022-01-03 11:20:00 pm'),
(8, 'Quod ipsum aliqua P', 17, 2009, 0, 95, '2021-12-24 12:07:34 pm'),
(9, 'Bachelor of Computer Engineering', 55, 2009, 1, 32, '2022-01-03 11:19:31 pm'),
(10, 'Ea sapiente molestia', 87, 1981, 0, 32, '2021-12-24 04:19:14 pm');

-- --------------------------------------------------------

--
-- Table structure for table `facts`
--

CREATE TABLE `facts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `icon` text NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facts`
--

INSERT INTO `facts` (`id`, `title`, `number`, `icon`, `created_at`) VALUES
(2, 'Feature Item', 245, 'fas fa-award', '2021-12-28 09:23:30 pm'),
(3, 'Active Products', 345, 'far fa-thumbs-up', '2021-12-28 09:24:54 pm'),
(4, 'Year Experience', 39, 'far fa-calendar-minus', '2021-12-28 09:27:16 pm'),
(5, 'Our Clients', 3000, 'fas fa-users', '2021-12-28 10:39:51 pm'),
(6, 'Project', 56, 'fas fa-project-diagram', '2021-12-28 10:36:09 pm');

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` int(11) NOT NULL,
  `icon_code` varchar(200) NOT NULL,
  `created_at` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `icon_code`, `created_at`) VALUES
(2, '&#xf09a;', '2021-12-24 11:55:14 am'),
(3, '&#xf099;', '2021-12-24 11:55:55 am'),
(4, '&#xf16d;', '2021-12-24 12:52:34 pm'),
(18, '&#xf0d2;', '2021-12-24 12:53:22 pm'),
(19, '&#xf08c;', '2021-12-24 12:54:20 pm'),
(20, '&#xf232;', '2021-12-24 12:55:49 pm'),
(21, '&#xf0d5;', '2021-12-24 12:56:22 pm');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `logo_name` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `img_cat` int(11) NOT NULL DEFAULT 0,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `logo_name`, `status`, `img_cat`, `created_at`) VALUES
(5, '5.jpg', 0, 0, '2021-12-25 10:41:14 am'),
(6, '6.jpg', 0, 1, '2021-12-25 02:33:45 pm'),
(7, '7.png', 1, 1, '2021-12-25 02:34:56 pm'),
(8, '8.png', 1, 2, '2021-12-25 02:28:17 pm');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `link`, `status`, `created_at`) VALUES
(1, 'home', '#home', 1, '2021-12-24 10:41:26 pm'),
(2, 'about', '#about', 1, '2021-12-24 10:41:43 pm'),
(3, 'service', '#service', 1, '2021-12-24 10:42:16 pm'),
(4, 'portfolio', '#portfolio', 1, '2021-12-24 10:42:43 pm'),
(5, 'contact', '#contact', 1, '2021-12-24 10:43:18 pm'),
(6, 'blog', '#', 0, '2021-12-21 08:51:36 pm');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(105) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(8, 'Ababukker', 'abubakker@gmail.com', 'Lorem ipsum dolor, sit, amet consectetur adipisicing elit. Sed illum, ratione quis sequi architecto dolores vel. Aliquam, in voluptates incidunt.', '2021-12-03 05:11:24 pm'),
(25, 'Sydney Stout', 'bagybamij@mailinator.com', 'Voluptatum ab illo a', '2021-12-04 11:50:01 pm'),
(32, 'Dai Parker', 'tysowidoce@mailinator.com', 'Ut nobis recusandae', '2021-12-05 03:26:47 pm');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `desc_title` varchar(255) NOT NULL,
  `descr` text NOT NULL,
  `category` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `user_comment` text NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `desc_title`, `descr`, `category`, `title`, `img`, `status`, `user_id`, `user_comment`, `created_at`) VALUES
(1, 'Sunt sunt cupidatat ', '<p>vbmnb</p>', 'Eu nisi inventore te', 'Enim illo iusto comm', '1.jpg', 1, 124, 'Magna qui ullamco di', '2021-12-27 10:50:52 pm'),
(2, 'CONSECTETUR NEQUE ELIT QUIS NUNC CRAS ELEMENTUM', 'Express dolor sit amet, consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus. Was popularised in the 1960s withs the release of Letraset sheets containing Lorem Ipsum passags, and more recently with desktop publishing software like Aldus PageMaker including versions.\r\n<br>\r\nRxpress dolor sit amet, consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestlibers dolosr auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus.\r\n<br>\r\nVehicula dolor amet consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus.Express dolor sit amet, consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus, eu consectetur neque elit quis nunc.\r\n<br>\r\nExpress dolor sit amet, consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus. Was popularised in the 1960s withs the release of Letraset sheets containing Lorem Ipsum passags, and more recently with desktop publishing software like Aldus PageMaker including versions.\r\n<br>\r\nVehicula dolor amet consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus.', 'DESIGN', 'HAMBLE TRIANGLE', '2.jpg', 1, 124, 'Vehicula dolor amet consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus.', '2021-12-28 11:57:32 am'),
(3, 'Fuga Iste esse ab d', 'Asperiores molestiae. vbncv', 'Deleniti nesciunt a', 'Enim ad repudiandae ', '3.jpg', 1, 124, '', '2021-12-28 12:00:23 pm'),
(4, 'Molestiae perspiciat', 'Totam ut non distinc. vbn', 'Expedita ut Nam in l', 'Omnis velit et mini', '4.jpg', 1, 124, '', '2021-12-28 12:00:38 pm'),
(5, 'CONSECTETUR NEQUE ELIT QUIS NUNC CRAS ELEMENTUM', 'Express dolor sit amet, consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus. Was popularised in the 1960s withs the release of Letraset sheets containing Lorem Ipsum passags, and more recently with desktop publishing software like Aldus PageMaker including versions.\r\n<br>\r\nRxpress dolor sit amet, consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestlibers dolosr auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus.\r\n<br>\r\nVehicula dolor amet consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus.Express dolor sit amet, consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus, eu consectetur neque elit quis nunc.\r\n<br>\r\nExpress dolor sit amet, consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus. Was popularised in the 1960s withs the release of Letraset sheets containing Lorem Ipsum passags, and more recently with desktop publishing software like Aldus PageMaker including versions.\r\n<br>\r\nVehicula dolor amet consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus, eu consectetur neque elit quis nunc. Cras elementum pretiumi Nullam justo efficitur, trist ligula pellentesque ipsum. Quisque thsr augue ipsum, vehicula tellus maximus.', 'CREATIVE', 'EIUSMOD TEMPOR', '5.jpg', 1, 124, 'Vehicula dolor amet consectetur adipiscing elit. Cras sollicitudin, tellus vitae condimem egestliberos dolor auctor tellus.', '2022-01-03 11:34:47 pm'),
(6, 'Voluptatibus volupta', 'Voluptatem ut incidu. vbnbv', 'Ut Nam aut maxime es', 'Ad aut iusto ut pari', '6.jpg', 0, 124, '', '2021-12-28 12:01:06 pm'),
(8, 'Quo dignissimos veli', 'Velit aliquip enim e. ', 'video', 'Tempore sint tempo', '8.jpg', 1, 124, 'Id nobis non esse vi', '2022-01-03 11:36:44 pm'),
(9, 'Aut molestiae rerum ', 'Rem rerum at iste mo. b', 'Doloribus pariatur ', 'Eos sed qui sequi ea', '9.jpg', 1, 124, 'Anim proident ad et', '2021-12-28 12:02:24 pm'),
(10, 'Consequatur Ipsa e', 'Consequatur voluptat.b', 'Quis velit natus ist', 'Quo consectetur rec', '10.jpg', 0, 124, 'Eius eum fugiat dol', '2021-12-28 12:02:34 pm');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `service_desc` text NOT NULL,
  `service_icon` text DEFAULT NULL,
  `service_status` int(11) NOT NULL DEFAULT 0,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_title`, `service_desc`, `service_icon`, `service_status`, `created_at`) VALUES
(1, 'sass', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'fab fa-free-code-camp', 1, '2021-12-24 10:11:47 pm'),
(4, 'HTML5', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the', 'fas fa-desktop', 1, '2021-12-24 10:14:29 pm'),
(5, 'WEB DESIGN', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.', 'fab fa-react', 1, '2022-01-03 11:21:32 pm'),
(7, 'SUPPER SUPPORT', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.', 'fas fa-headset', 1, '2022-01-03 11:22:04 pm'),
(8, 'UNLIMITED FEATURES', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.', 'far fa-edit', 1, '2021-12-24 10:18:11 pm'),
(9, 'Velit nihil quis ven', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum indust.', 'far fa-lightbulb', 1, '2022-01-03 11:22:33 pm'),
(10, 'Eos unde cumque ill', 'Minima quia voluptat', 'Omnis consequatur al', 0, '2021-12-24 10:22:30 pm'),
(11, 'Et provident possim', 'Eius cillum ut ipsum', 'Est aut similique n', 0, '2021-12-24 10:22:33 pm');

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` int(11) NOT NULL,
  `icons_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `icons_id`, `link`, `created_at`) VALUES
(1, 2, 'https://www.facebook.com/', '2021-12-24 03:52:24 pm'),
(2, 3, 'https://twitter.com/', '2021-12-24 03:51:51 pm'),
(6, 4, 'https://www.instagram.com/', '2021-12-24 04:48:31 pm'),
(7, 18, 'https://www.pinterest.com/', '2021-12-24 04:49:11 pm');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `quotes` text NOT NULL,
  `img` text NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `quotes`, `img`, `created_at`) VALUES
(8, 'John', 'An event is a message sent by an object to signal the occur rence of an action. The action can causd user interaction such as a button click, or it can result', '8.jpg', '2021-12-29 11:48:00 am'),
(9, 'Michael', 'An event is a message sent by an object to signal the occur rence of an action. The action can causd user interaction such as a button click, or it can result', '9.png', '2021-12-29 11:48:30 am'),
(10, 'Daniel', 'An event is a message sent by an object to signal the occur rence of an action. The action can causd user interaction such as a button click, or it can result', '10.jpg', '2021-12-29 11:49:00 am');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` int(11) NOT NULL DEFAULT 4,
  `status` int(11) NOT NULL DEFAULT 0,
  `profile_image` varchar(255) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_role`, `status`, `profile_image`, `created_at`) VALUES
(32, 'Ababukker', 'abubakker@gmail.com', '$2y$10$aAzpsLUkALjLt.goFscdH.sDVRgP21.FY/FdWiz.sXliBWdGx/g.G', 1, 0, '32.jpg', '2021-11-30 12:50:16'),
(35, 'Sumon', 'sumon81a@gmail.com', '$2y$10$l0HhldwBTCbxRIaw4.3tJ.Gz0izFS2DbUJMQYBY568oPOoksn/h0S', 2, 0, '35.jpg', '2021-12-29 01:18:54'),
(95, 'Roni', 'roni1997@gmail.com', '$2y$10$wwvmzD0iVdHoxgASjtU.Lu.nhrjMLrbJIMjs4pXaRKBakG0Yckhhe', 3, 0, '95.png', '2021-12-29 01:20:16'),
(124, 'Admin', 'admin@gmail.com', '$2y$10$kgaqreQgWQitKkyq9j3RkOb/00bT6mNfhaT.8jWuv3Mkx/ASlTb9i', 1, 0, '124.jpg', '2021-12-21 05:00:34'),
(125, 'Dana Burch', 'lozulihedo@mailinator.com', '$2y$10$ArjbCly1E3suf8F2W.OSrOGXA5.5Vu6LKoNmYI1TTVXZ4OL4goSne', 4, 0, NULL, '2021-12-10 04:40:41 pm'),
(128, 'Emi Munoz', 'nolequvug@mailinator.com', '$2y$10$QghSOcsNMki8f.iiAMf.ueOd/SstwLpFTWLf7lxVISz53whDE989K', 4, 0, NULL, '2022-01-03 11:46:14 pm'),
(129, 'Samson Morse', 'role@mailinator.com', '$2y$10$TVfJQnFIidGwU7CHsMb4MeZV4bj0Bb5bol7KzkNyAz6gNx8Sn9V3C', 4, 0, NULL, '2022-01-03 11:46:16 pm'),
(130, 'Guy Mayer', 'rahuvad@mailinator.com', '$2y$10$GH9aWFLmjZUyh1O/VIFNGeP/dIJqPqarj0HSF0MkmWLd5vTgZ/5qq', 4, 0, NULL, '2022-01-03 11:46:19 pm'),
(131, 'MacKensie Snyder', 'xajaguta@mailinator.com', '$2y$10$SlTDXnMC1fpgUfwcqj63p.5Xwk7iTSZ1JeBIOeJ5T6p7glutosQ7m', 4, 0, NULL, '2022-01-03 11:46:21 pm'),
(132, 'Elijah Jordan', 'herig@mailinator.com', '$2y$10$/G3gTRwlGHO4VqKP4WeDbOqw5Fhj5O9TgxvedEw7Pcma5jexwmbiC', 4, 0, NULL, '2022-01-03 11:46:24 pm'),
(133, 'Ayanna Sutton', 'coqovyjox@mailinator.com', '$2y$10$e/mi9V47FTRGqZyzCDnLHOgV8JJGjCeY13RJKTyWfVOWIr/ykkCNC', 4, 0, NULL, '2022-01-03 11:46:26 pm'),
(134, 'Orli Norton', 'gede@mailinator.com', '$2y$10$MAjiqxkf5QVMk2ag2khZve/3w7Es70P7M/apYw7Luzvia4zn3N..2', 4, 0, NULL, '2022-01-03 11:46:29 pm'),
(135, 'Audrey Ewing', 'figej@mailinator.com', '$2y$10$a7nSsScmns2xFS4LuWjSGeiWJCflzR0rX..HLtViV.LObhIGjlXeu', 4, 0, NULL, '2022-01-03 11:46:35 pm'),
(136, 'Grant Jennings', 'cicuxugo@mailinator.com', '$2y$10$96hJizdYkA4UYxZy6IWa9OOVnyLmA1RsxLJhv37g9O5dz60bx4way', 4, 0, NULL, '2022-01-03 11:46:40 pm'),
(137, 'Lacota Cox', 'jiqagi@mailinator.com', '$2y$10$4F8tK/rSLtT15uI9wHek8eX6aGixdYaniDhlU.9xyQCFLYvXetwDO', 4, 0, NULL, '2022-01-03 11:46:42 pm'),
(138, 'Blair Nguyen', 'jibom@mailinator.com', '$2y$10$QZx4OlpjBhuPqwZr.lqJ6eO/oZJfjWY.xWf83lr64OleFQWDYQYeW', 4, 0, NULL, '2022-01-03 11:46:45 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facts`
--
ALTER TABLE `facts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `facts`
--
ALTER TABLE `facts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
