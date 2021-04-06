-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.23 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for singer
CREATE DATABASE IF NOT EXISTS `singer` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `singer`;

-- Dumping structure for table singer.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL,
  `title` varchar(2000) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `category` varchar(2000) NOT NULL DEFAULT '',
  `image` varchar(2000) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table singer.product: ~2 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `title`, `description`, `price`, `category`, `image`) VALUES
	(3, 'Energizer Power Bank UE10054 10000mAh 2', '', 120.00, 'Mobiles & Tablets', 'https://www.singersl.com/sites/default/files/styles/medium/public/images/products/2021-01/ENG_ENG-UE10054-01.jpg?itok=Y-eKhjuI'),
	(4, 'Samsung Galaxy S21 Ultra (12GB+256GB) (Black) 2', '', 1000.00, 'Mobiles & Tablets', 'https://www.singersl.com/sites/default/files/styles/medium/public/images/products/2021-01/SMG_SMG-SM-S21U-B-01.jpg?itok=-ZooKb8Q'),
	(5, 'Galaxy Tab S7, 128GB, Mystic Navy', 'Get immersed in the Tab S7\'s 11 inch screen and the 120Hz refresh rate for smooth viewing experiences.', 500.00, 'Mobiles & Tablets', 'https://image-us.samsung.com/SamsungUS/home/mobile/tablets/tab-s7-s7plus/02-04-2021/s7/PDP-GALLERY-tabS7-Mystic-Navy-12-1600x1200.jpg?$product-details-blur-jpg$');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
