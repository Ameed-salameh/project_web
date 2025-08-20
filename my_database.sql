-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2025 at 10:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'إلكترونيات'),
(2, 'عقارات'),
(3, 'ملابس'),
(4, 'سيارات'),
(5, 'أثاث'),
(6, 'كتب');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_name` varchar(100) NOT NULL,
  `publish_date` datetime NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `image_url` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_name`, `publish_date`, `is_approved`, `image_url`, `price`, `details`, `category_id`) VALUES
(1, 'لابتوب جديد', '2025-01-04 15:02:17', 0, 'src/assets/icons/111.png', 1200.00, 'لابتوب بمعالج i7 وذاكرة 16 جيجابايت', 1),
(2, 'شقة للبيع', '2025-01-04 15:02:17', 1, 'src/assets/icons/111.png', 250000.00, 'شقة سكنية بمساحة 150 متر مربع', 2),
(3, 'هاتف ذكي', '2025-01-04 22:19:44', 1, 'https://via.placeholder.com/300x200', 800.00, 'هاتف ذكي بشاشة AMOLED ومعالج Snapdragon 888', 1),
(4, 'سماعات بلوتوث', '2025-01-04 22:19:44', 1, 'https://via.placeholder.com/300x200', 200.00, 'سماعات لاسلكية بجودة صوت عالية وعزل للضوضاء', 1),
(5, 'فيلا للإيجار', '2025-01-04 22:19:44', 1, 'https://via.placeholder.com/300x200', 35000.00, 'فيلا فاخرة بمساحة 500 متر مربع مع حديقة خاصة', 2),
(6, 'أرض زراعية', '2025-01-04 22:19:44', 1, 'https://via.placeholder.com/300x200', 150000.00, 'أرض زراعية خصبة بمساحة 3 دونمات', 2),
(7, 'قميص رجالي', '2025-01-04 22:19:44', 1, 'https://via.placeholder.com/300x200', 30.00, 'قميص رجالي مصنوع من القطن بألوان متعددة', 3),
(8, 'جاكيت شتوي', '2025-01-04 22:19:44', 1, 'https://via.placeholder.com/300x200', 150.00, 'جاكيت شتوي مقاوم للماء ببطانة داخلية دافئة', 3),
(9, 'سيارة سيدان', '2025-01-04 22:19:44', 1, 'https://via.placeholder.com/300x200', 50000.00, 'سيارة سيدان اقتصادية بمحرك 1600cc', 4),
(10, 'دراجة نارية', '2025-01-04 22:19:44', 1, 'https://via.placeholder.com/300x200', 12000.00, 'دراجة نارية رياضية بمحرك 600cc', 4),
(11, 'كنبة عصرية', '2025-01-04 22:19:44', 1, 'https://via.placeholder.com/300x200', 1200.00, 'كنبة ثلاثية بمسند مريح وتصميم عصري', 5),
(12, 'طاولة طعام', '2025-01-04 22:19:44', 1, 'https://via.placeholder.com/300x200', 800.00, 'طاولة طعام تكفي لـ 6 أشخاص مع كراسي مريحة', 5),
(13, 'رواية مشهورة', '2025-01-04 22:19:44', 1, 'https://via.placeholder.com/300x200', 20.00, 'رواية مشهورة ضمن قائمة الأكثر مبيعًا', 6),
(14, 'مجموعة علمية', '2025-01-04 22:19:44', 1, 'https://via.placeholder.com/300x200', 50.00, 'مجموعة كتب علمية في مجالات الفيزياء والكيمياء', 6);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 3),
(8, 3),
(9, 4),
(10, 4),
(11, 5),
(12, 5),
(13, 6),
(14, 6);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `slide_id` int(11) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_url` varchar(255) NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`slide_id`, `slide_name`, `slide_url`, `is_visible`) VALUES
(1, 'السلايد الأول', 'https://via.placeholder.com/800x400/FF6F61/fff?text=Slide+1', 1),
(2, 'السلايد الثاني', 'https://via.placeholder.com/800x400/6B5B95/fff?text=Slide+2', 1),
(3, 'السلايد الثالث', 'https://via.placeholder.com/800x400/88B04B/fff?text=Slide+3', 1),
(4, 'السلايد الرابع', 'https://via.placeholder.com/800x400/FFC300/fff?text=Slide+4', 0),
(5, 'السلايد الخامس', 'https://via.placeholder.com/800x400/DAF7A6/fff?text=Slide+5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_name`, `category_id`) VALUES
(1, 'تخفيضات', 1),
(2, 'جديد', 1),
(3, 'فاخر', 2),
(4, 'عروض خاصة', 1),
(5, 'فاخرة', 2),
(6, 'خصم 50%', 3),
(7, 'رياضية', 4),
(8, 'عصرية', 5),
(9, 'علمية', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`post_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
