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


-- Dumping database structure for gadgetmart
CREATE DATABASE IF NOT EXISTS `gadgetmart` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gadgetmart`;

-- Dumping structure for table gadgetmart.billing_address
CREATE TABLE IF NOT EXISTS `billing_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `last_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(1000) DEFAULT NULL,
  `address1` varchar(1000) DEFAULT NULL,
  `address2` varchar(1000) DEFAULT NULL,
  `company` varchar(1000) DEFAULT NULL,
  `country` varchar(1000) DEFAULT NULL,
  `city` varchar(1000) DEFAULT NULL,
  `postcode` varchar(1000) DEFAULT NULL,
  `state` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gadgetmart.billing_address: ~8 rows (approximately)
/*!40000 ALTER TABLE `billing_address` DISABLE KEYS */;
INSERT INTO `billing_address` (`id`, `first_name`, `last_name`, `phone`, `address1`, `address2`, `company`, `country`, `city`, `postcode`, `state`) VALUES
	(1, 'kavish', 'manjitha', '+94714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(2, 'kavish', 'manjitha', '+94714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(3, 'kavish', 'manjitha', '+94714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(4, 'kavish', 'manjitha', '0714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(5, 'kavish', 'manjitha', '+94714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(6, 'kavish', 'manjitha', '0714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(7, 'kavish', 'manjitha', '0714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(8, 'kavish', 'manjitha', '0714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(9, 'kavish', 'manjitha', '0714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western');
/*!40000 ALTER TABLE `billing_address` ENABLE KEYS */;

-- Dumping structure for table gadgetmart.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `u_Id` int NOT NULL,
  `create_date` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_item_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `b_Id` int NOT NULL,
  `s_Id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table gadgetmart.orders: ~8 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `u_Id`, `create_date`, `status`, `total_price`, `total_item_qty`, `note`, `b_Id`, `s_Id`) VALUES
	(1, 1, '2021-03-31 19:12:34.777', 'ORDER_CREATED', 2.00, 2.00, '', 1, 1),
	(2, 1, '2021-03-31 19:13:57.292', 'ORDER_CREATED', 1.00, 1.00, '', 2, 2),
	(3, 1, '2021-03-31 19:20:33.344', 'ORDER_CREATED', 1.00, 1.00, '', 3, 3),
	(4, 1, '2021-03-31 19:26:21.383', 'ORDER_CREATED', 1.00, 1.00, '', 4, 4),
	(5, 1, '2021-03-31 19:28:23.856', 'ORDER_CREATED', 1.00, 1.00, '', 5, 5),
	(6, 1, '2021-03-31 19:29:39.053', 'ORDER_CREATED', 2.00, 2.00, '', 6, 6),
	(7, 1, '2021-03-31 19:38:47.376', 'ORDER_CREATED', 2.00, 2.00, '', 7, 7),
	(8, 1, '2021-03-31 20:34:41.909', 'ORDER_CREATED', 2.00, 2.00, '', 8, 8),
	(9, 1, '2021-03-31 21:03:35.484', 'ORDER_CREATED', 2.00, 2.00, '', 9, 9);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table gadgetmart.order_detail
CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `o_Id` int NOT NULL,
  `title` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `category` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `image` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `qty` int NOT NULL,
  `sub_total` double(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table gadgetmart.order_detail: ~14 rows (approximately)
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` (`id`, `o_Id`, `title`, `description`, `price`, `category`, `image`, `qty`, `sub_total`) VALUES
	(1, 1, 'iPhone 12 Black 64GB', 'MagSafe is a new ecosystem of accessories for easy attachment and faster wireless charging. With endless combinations, there is a mix to match any style.', 243990.00, 'MagSafe is a new ecosystem of accessories for easy attachment and faster wireless charging. With endless combinations, there is a mix to match any style.', 'https://objectstorage.ap-mumbai-1.oraclecloud.com/n/softlogicbicloud/b/cdn/o/products/600-600/iphone-12-black-select-2020--1607073906.jpg', 1, 243990.00),
	(2, 1, 'Energizer Power Bank UE10054 10000mAh 2', '', 120.00, '', 'https://www.singersl.com/sites/default/files/styles/medium/public/images/products/2021-01/ENG_ENG-UE10054-01.jpg?itok=Y-eKhjuI', 1, 120.00),
	(3, 2, 'iPhone 12 Black 64GB', 'MagSafe is a new ecosystem of accessories for easy attachment and faster wireless charging. With endless combinations, there is a mix to match any style.', 243990.00, 'MagSafe is a new ecosystem of accessories for easy attachment and faster wireless charging. With endless combinations, there is a mix to match any style.', 'https://objectstorage.ap-mumbai-1.oraclecloud.com/n/softlogicbicloud/b/cdn/o/products/600-600/iphone-12-black-select-2020--1607073906.jpg', 1, 243990.00),
	(4, 3, 'Energizer Power Bank UE10054 10000mAh 2', '', 120.00, '', 'https://www.singersl.com/sites/default/files/styles/medium/public/images/products/2021-01/ENG_ENG-UE10054-01.jpg?itok=Y-eKhjuI', 1, 120.00),
	(5, 4, 'Energizer Power Bank UE10054 10000mAh 2', '', 120.00, '', 'https://www.singersl.com/sites/default/files/styles/medium/public/images/products/2021-01/ENG_ENG-UE10054-01.jpg?itok=Y-eKhjuI', 1, 120.00),
	(6, 5, 'Energizer Power Bank UE10054 10000mAh 2', '', 120.00, '', 'https://www.singersl.com/sites/default/files/styles/medium/public/images/products/2021-01/ENG_ENG-UE10054-01.jpg?itok=Y-eKhjuI', 1, 120.00),
	(7, 6, 'iPhone 12 Black 64GB', 'MagSafe is a new ecosystem of accessories for easy attachment and faster wireless charging. With endless combinations, there is a mix to match any style.', 243990.00, 'MagSafe is a new ecosystem of accessories for easy attachment and faster wireless charging. With endless combinations, there is a mix to match any style.', 'https://objectstorage.ap-mumbai-1.oraclecloud.com/n/softlogicbicloud/b/cdn/o/products/600-600/iphone-12-black-select-2020--1607073906.jpg', 1, 243990.00),
	(8, 6, 'Energizer Power Bank UE10054 10000mAh 2', '', 120.00, '', 'https://www.singersl.com/sites/default/files/styles/medium/public/images/products/2021-01/ENG_ENG-UE10054-01.jpg?itok=Y-eKhjuI', 1, 120.00),
	(9, 7, 'iPhone 12 Black 64GB', 'MagSafe is a new ecosystem of accessories for easy attachment and faster wireless charging. With endless combinations, there is a mix to match any style.', 2439.00, 'MagSafe is a new ecosystem of accessories for easy attachment and faster wireless charging. With endless combinations, there is a mix to match any style.', 'https://objectstorage.ap-mumbai-1.oraclecloud.com/n/softlogicbicloud/b/cdn/o/products/600-600/iphone-12-black-select-2020--1607073906.jpg', 1, 2439.00),
	(10, 7, 'Energizer Power Bank UE10054 10000mAh 2', '', 120.00, '', 'https://www.singersl.com/sites/default/files/styles/medium/public/images/products/2021-01/ENG_ENG-UE10054-01.jpg?itok=Y-eKhjuI', 1, 120.00),
	(11, 8, 'iPhone 12 Black 64GB', 'MagSafe is a new ecosystem of accessories for easy attachment and faster wireless charging. With endless combinations, there is a mix to match any style.', 2439.00, 'MagSafe is a new ecosystem of accessories for easy attachment and faster wireless charging. With endless combinations, there is a mix to match any style.', 'https://objectstorage.ap-mumbai-1.oraclecloud.com/n/softlogicbicloud/b/cdn/o/products/600-600/iphone-12-black-select-2020--1607073906.jpg', 1, 2439.00),
	(12, 8, 'Energizer Power Bank UE10054 10000mAh 2', '', 120.00, '', 'https://www.singersl.com/sites/default/files/styles/medium/public/images/products/2021-01/ENG_ENG-UE10054-01.jpg?itok=Y-eKhjuI', 1, 120.00),
	(13, 9, 'iPhone 12 Black 64GB', 'MagSafe is a new ecosystem of accessories for easy attachment and faster wireless charging. With endless combinations, there is a mix to match any style.', 2439.00, 'MagSafe is a new ecosystem of accessories for easy attachment and faster wireless charging. With endless combinations, there is a mix to match any style.', 'https://objectstorage.ap-mumbai-1.oraclecloud.com/n/softlogicbicloud/b/cdn/o/products/600-600/iphone-12-black-select-2020--1607073906.jpg', 1, 2439.00),
	(14, 9, 'Energizer Power Bank UE10054 10000mAh 2', '', 120.00, '', 'https://www.singersl.com/sites/default/files/styles/medium/public/images/products/2021-01/ENG_ENG-UE10054-01.jpg?itok=Y-eKhjuI', 1, 120.00);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;

-- Dumping structure for table gadgetmart.shipping_address
CREATE TABLE IF NOT EXISTS `shipping_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `last_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address1` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address2` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `company` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `country` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `postcode` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `state` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gadgetmart.shipping_address: ~8 rows (approximately)
/*!40000 ALTER TABLE `shipping_address` DISABLE KEYS */;
INSERT INTO `shipping_address` (`id`, `first_name`, `last_name`, `phone`, `address1`, `address2`, `company`, `country`, `city`, `postcode`, `state`) VALUES
	(1, 'kavish', 'manjitha', '+94714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(2, 'kavish', 'manjitha', '+94714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(3, 'kavish', 'manjitha', '+94714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(4, 'kavish', 'manjitha', '0714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(5, 'kavish', 'manjitha', '+94714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(6, 'kavish', 'manjitha', '0714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(7, 'kavish', 'manjitha', '0714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(8, 'kavish', 'manjitha', '0714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western'),
	(9, 'kavish', 'manjitha', '0714303339', '4/A Kandawatte Road Nugegoda', 'test', 'Test Solutions', 'LK', 'Colombo', '10250', 'Western');
/*!40000 ALTER TABLE `shipping_address` ENABLE KEYS */;

-- Dumping structure for table gadgetmart.supplier
CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `product_api` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telephone` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mobile` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fax` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `web_site` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gadgetmart.supplier: ~2 rows (approximately)
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` (`id`, `company_name`, `product_api`, `address`, `telephone`, `mobile`, `fax`, `email`, `web_site`) VALUES
	(1, 'SINGER', 'http://localhost:8081/product-list', '', '', '', '', '', ''),
	(2, 'ABANS', 'http://localhost/abans-web-service/ProductAPI.php', '', '', '', '', '', ''),
	(3, 'SOFTLOGIC', 'http://localhost:8099/product', '', '', '', '', '', '');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;

-- Dumping structure for table gadgetmart.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(500) NOT NULL,
  `user_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table gadgetmart.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `user_name`, `password`, `status`) VALUES
	(1, 'kavish', 'manjitha', 'kavishmanjitha@gmail.com', 'admin', '$2a$10$.DcBwZs9B0RX1ZtcE9qRBu2X.Zmv/8yFfaEl.JJE0DGSpP7rzgUS6', 'ACTIVE');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
