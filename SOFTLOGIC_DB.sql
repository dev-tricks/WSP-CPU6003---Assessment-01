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


-- Dumping database structure for softlogic
CREATE DATABASE IF NOT EXISTS `softlogic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `softlogic`;

-- Dumping structure for table softlogic.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL,
  `title` varchar(2000) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `category` varchar(2000) NOT NULL DEFAULT '',
  `image` varchar(2000) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table softlogic.product: ~2 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `title`, `description`, `price`, `category`, `image`) VALUES
	(6, 'iPhone 12 Black 64GB', 'MagSafe is a new ecosystem of accessories for easy attachment and faster wireless charging. With endless combinations, there is a mix to match any style.', 2439.00, 'Mobiles & Tablets', 'https://objectstorage.ap-mumbai-1.oraclecloud.com/n/softlogicbicloud/b/cdn/o/products/600-600/iphone-12-black-select-2020--1607073906.jpg'),
	(7, 'Samsung Galaxy S21 Ultra (12GB+256GB) (Black) ', 'The best price of Samsung Galaxy S21 Ultra 5G 256GB in Sri Lanka', 1899.00, 'Mobiles & Tablets', 'https://objectstorage.ap-mumbai-1.oraclecloud.com/n/softlogicbicloud/b/cdn/o/products/600-600/SM-N981BZBGSLK--1--1598676982.jpg'),
	(8, 'Samsung Watch 3 (Titanium)', 'Bluetooth, Wi-Fi,GPS,Glonass,Beidou,Galileo,Accelerometer,Barometer,Gyro Sensor,Light Sensor,Optical Heart Rate Sensor', 1890.00, 'Mobiles & Tablets', 'https://image-us.samsung.com/SamsungUS/home/mobile/wearables/smartwatches/09152020/PDP-GALLERY-GW3-titanium-01-1600x1200.jpg?$product-details-blur-jpg$');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
