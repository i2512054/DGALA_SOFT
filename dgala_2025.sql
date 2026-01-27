/*
 Navicat Premium Data Transfer

 Source Server         : DGala_AlwaysData
 Source Server Type    : MySQL
 Source Server Version : 101115
 Source Host           : mysql-dgala.alwaysdata.net:3306
 Source Schema         : dgala_2025

 Target Server Type    : MySQL
 Target Server Version : 101115
 File Encoding         : 65001

 Date: 26/01/2026 21:56:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` tinyint(4) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts
-- ----------------------------

-- ----------------------------
-- Table structure for apps
-- ----------------------------
DROP TABLE IF EXISTS `apps`;
CREATE TABLE `apps`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `app_id` tinyint(4) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_level` tinyint(4) NOT NULL,
  `ind_order` tinyint(4) NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps
-- ----------------------------
INSERT INTO `apps` VALUES (1, 0, 'DGala', '', '', 'A', 0, 0, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `apps` VALUES (2, 1, 'Dashboard', 'fas fa-grip', 'dashboard', 'I', 1, 1, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `apps` VALUES (3, 1, 'Categorías', 'fas fa-list', 'categories', 'I', 1, 2, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `apps` VALUES (4, 1, 'Productos', 'fab fa-product-hunt', 'products', 'I', 1, 3, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `apps` VALUES (5, 1, 'Movimientos', 'fab fa-elementor', 'movements', 'I', 1, 4, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `apps` VALUES (6, 1, 'Inventario', 'fas fa-file-invoice', 'inventories', 'I', 1, 5, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `apps` VALUES (7, 1, 'Clientes', 'fas fa-users-line', 'customers', 'I', 1, 6, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `apps` VALUES (8, 1, 'Ventas', 'fas fa-money-check-dollar', 'sales', 'I', 1, 7, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `apps` VALUES (9, 1, 'Reportes', 'fas fa-chart-line', 'reports', 'I', 1, 8, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `apps` VALUES (10, 1, 'Usuarios', 'fas fa-users', 'users', 'I', 1, 9, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `apps` VALUES (11, 1, 'Configuración', 'fas fa-gears', 'tools', 'I', 1, 10, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `apps` VALUES (12, 1, 'Servicios', 'fas fa-gem', 'services', 'I', 1, 11, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');

-- ----------------------------
-- Table structure for audits
-- ----------------------------
DROP TABLE IF EXISTS `audits`;
CREATE TABLE `audits`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `before_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `after_json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of audits
-- ----------------------------

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banks
-- ----------------------------
INSERT INTO `banks` VALUES (1, 'Ninguno', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `banks` VALUES (2, 'Banco de Crédito del Perú BCP', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `banks` VALUES (3, 'Banco Continental BBVA', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `banks` VALUES (4, 'Banco Interbank', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `banks` VALUES (5, 'Banco Scotiabank', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `banks` VALUES (6, 'Banco de la Nación', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `banks` VALUES (7, 'Banco Interamericano de Finanzas BANBIF', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `banks` VALUES (8, 'Banco de Comercio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `banks` VALUES (9, 'Banco Falabella del Perú', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `banks` VALUES (10, 'Banco Financiero del Perú', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `banks` VALUES (11, 'Banco Ripley S.A.', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for card_types
-- ----------------------------
DROP TABLE IF EXISTS `card_types`;
CREATE TABLE `card_types`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of card_types
-- ----------------------------
INSERT INTO `card_types` VALUES (1, 'Ninguno', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `card_types` VALUES (2, 'VISA Clásica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `card_types` VALUES (3, 'VISA Oro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `card_types` VALUES (4, 'VISA Platinum', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `card_types` VALUES (5, 'VISA Signature', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `card_types` VALUES (6, 'VISA Infinite', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `card_types` VALUES (7, 'MASTERCARD Clásica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `card_types` VALUES (8, 'MASTERCARD Oro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `card_types` VALUES (9, 'MASTERCARD Platinum', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `card_types` VALUES (10, 'MASTERCARD Black', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `card_types` VALUES (11, 'American Express', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_level` tinyint(4) NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 0, 1, 'Categoría DGALA', 'Categoría DGALA', '', 0, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:09');
INSERT INTO `categories` VALUES (2, 1, 1, 'Anillos', 'Anillos', 'categories/pNYPJ88tbYBSIzQ1NgfhcTMRE76Jn8QZNLUvC5CP.webp', 1, 1, '2025-12-08 23:05:14', '2025-12-08 23:05:14');
INSERT INTO `categories` VALUES (3, 1, 1, 'Aretes', 'Aretes', 'categories/VxBnYGSBYrf7hPCXt6I6LrkND8F8CC9XASNkmj1Q.webp', 1, 1, '2025-12-08 23:07:15', '2025-12-08 23:07:15');
INSERT INTO `categories` VALUES (4, 1, 1, 'Cadenas', 'Cadenas', 'categories/cwtiBqsiY2ogdCQB5p9mEj89kVOPdneleluqlHtB.webp', 1, 1, '2025-12-08 23:07:44', '2025-12-08 23:07:44');
INSERT INTO `categories` VALUES (5, 1, 1, 'Collares', 'Collares', 'categories/DoX4kJORn5F92EnwUFaRBkcXvlveklwtxbjJQKqL.webp', 1, 1, '2025-12-08 23:08:12', '2025-12-08 23:08:12');
INSERT INTO `categories` VALUES (6, 1, 1, 'Dijes', 'Dijes', 'categories/MQrDfHKLC1hBQX4zHRalcQvj8EUBqtR6XJnmfaBe.webp', 1, 1, '2025-12-08 23:08:41', '2025-12-08 23:08:41');
INSERT INTO `categories` VALUES (7, 1, 1, 'Pulseras', 'Pulseras', 'categories/Msdvow3jf8H5xFiFLWUDRTEMZx2xIhuarhfbPbYU.webp', 1, 1, '2025-12-08 23:09:07', '2025-12-08 23:09:07');
INSERT INTO `categories` VALUES (8, 1, 1, 'Candongas', 'Candongas', 'categories/4urfKxQope4SFsgiVlCo6PZ1qjXdrFL3k3cxEBmI.webp', 1, 1, '2025-12-27 06:37:51', '2025-12-27 06:37:51');

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies`  (
  `id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `ubigeo_id` smallint(6) NOT NULL,
  `type` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciiu` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trade_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES ('20602087876', 1, 1428, 'S.A.C.', 74921, 'Joyerías DGala', 'Diseñamos y fabricamos joyas, fusionando arte para tí.', 'MZ. D LT. 12 ASOC. DE PRO LIMA - PUENTE PIEDRA', 'joyasoyeriaDGala@hotmail.com', '916520052', -11.8375632, -77.2895163, 1, '2025-08-27 11:57:03', '2026-01-16 06:58:41');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES (1, 'Juan Luís', 'Adalberto Gonzales', 'jadalberto@produce.gob.pe', '986785125', 'Necesitaria para contactarnos, sobre una reparación especial de joyas y gemas', 1, '2025-12-28 20:00:25', '2025-12-28 20:00:25');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `document_type_id` tinyint(4) NOT NULL,
  `ubigeo_id` smallint(6) NOT NULL,
  `document_number` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, 1, 1443, '41406326', 'José Hugo', 'Saravia', 'Chávez', 'jsaravia@geosatelital.com.pe', '986722552', 'Calle La Esparceta Nº 120 Urb Valle Hermoso de Monterrico', 'WJW23.TgX5T4Urv8', 1, '2025-12-11 08:27:14', '2025-12-11 08:27:14');
INSERT INTO `customers` VALUES (2, 1, 1419, '09529086', 'Jessica Angelica', 'Aira', 'Hidalgo', 'jessangel.aira@gmail.com', '952024107', 'Av. Arenales Nº 1200', 'G7H+piMGo--9LA6P', 1, '2026-01-23 19:39:50', '2026-01-23 19:39:50');
INSERT INTO `customers` VALUES (3, 1, 1411, '48232833', 'Luis Angel', 'Alvarez', 'Alberca', 'luis.alvarez1@unmsm.edu.pe', '980765715', 'Av. Huaylas 2020', 'ZOAQP7gNJVSkaU8E', 1, '2026-01-23 19:42:00', '2026-01-23 19:42:00');
INSERT INTO `customers` VALUES (4, 1, 1416, 'i2512126', 'Erick Oliver', 'Huamán', 'Moriano', 'i2512126@continental.edu.pe', '999888777', 'Jirón Úzares de Junin 101', 'i2512126', 1, '2026-01-25 17:34:59', '2026-01-25 17:34:59');
INSERT INTO `customers` VALUES (5, 1, 1419, 'i2512155', 'Pier Jonathan', 'Escobedo', 'Pumacayo', 'i2512155@continental.edu.pe', '999555222', 'Av. Arequipa Nª 1010', 'i2512155', 1, '2026-01-25 17:38:26', '2026-01-25 17:38:26');

-- ----------------------------
-- Table structure for deliveries
-- ----------------------------
DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE `deliveries`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type_id` tinyint(4) NOT NULL,
  `delivery_type_id` tinyint(4) NOT NULL,
  `ubigeo_id` smallint(6) NOT NULL,
  `receive` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_number` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_num1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_num2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_at` datetime(0) NOT NULL,
  `ended_at` datetime(0) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of deliveries
-- ----------------------------
INSERT INTO `deliveries` VALUES (1, 'B001-00000001', 1, 1, 1443, 'Marsuh Arlette Tordoya Guillén', '72898494', 'Calle La Esparceta', '120', 'Lote 13', '2026-01-24 00:00:00', '2026-01-25 00:00:00', 0, 0, 1, '2026-01-25 02:34:36', '2026-01-25 02:34:36');
INSERT INTO `deliveries` VALUES (2, 'B001-00000002', 1, 2, 1428, 'Marsuh Arlette Tordoya Guillén', '72898494', 'ASOC. DE PRO LIMA', 'Manzana D', 'Lote 12', '2026-01-24 00:00:00', '2026-01-24 00:00:00', -11.8375632, -77.2895163, 1, '2026-01-25 02:37:40', '2026-01-25 02:37:40');
INSERT INTO `deliveries` VALUES (3, 'B001-00000003', 1, 2, 1428, 'Herny Luís Ávalos Gonzales', '41500456', 'ASOC. DE PRO LIMA', 'Manzana D', 'Lote 12', '2026-01-25 00:00:00', '2026-01-25 00:00:00', -11.8375632, -77.2895163, 1, '2026-01-25 18:48:29', '2026-01-25 18:48:29');

-- ----------------------------
-- Table structure for delivery_movement_resources
-- ----------------------------
DROP TABLE IF EXISTS `delivery_movement_resources`;
CREATE TABLE `delivery_movement_resources`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `delivery_movement_id` int(11) NOT NULL,
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery_movement_resources
-- ----------------------------
INSERT INTO `delivery_movement_resources` VALUES (1, 3, 'delivery/movement/resources/5tadYBDjPEc3yav99weCmCsPhAjDvGsipe8junWE.webp', 1, '2026-01-25 02:41:07', '2026-01-25 02:41:07');
INSERT INTO `delivery_movement_resources` VALUES (2, 3, 'delivery/movement/resources/Iyp9Bi5wVV3qkp9y0d1SSmpvHoZP11dGX9xy6ZAu.webp', 1, '2026-01-25 02:41:08', '2026-01-25 02:41:08');
INSERT INTO `delivery_movement_resources` VALUES (3, 4, 'delivery/movement/resources/1gd3FAjUAjnobv3QgRLYZrua6rQpGqDlnJoHKk6U.webp', 1, '2026-01-25 02:41:59', '2026-01-25 02:41:59');
INSERT INTO `delivery_movement_resources` VALUES (4, 4, 'delivery/movement/resources/PrzgiBLPG9vVt5W1dr95NBuQ3AwrU7E4U8Y3O7ss.webp', 1, '2026-01-25 02:41:59', '2026-01-25 02:41:59');
INSERT INTO `delivery_movement_resources` VALUES (5, 4, 'delivery/movement/resources/zYwtN6dXR1i0FYZclD8fkNsldLLt0uvfGbo9Dodl.webp', 1, '2026-01-25 02:41:59', '2026-01-25 02:41:59');
INSERT INTO `delivery_movement_resources` VALUES (6, 5, 'delivery/movement/resources/RAUaiWvReadXvrkJAp9Rh4foZTlZyAOEh6OU6kLx.webp', 1, '2026-01-25 02:42:47', '2026-01-25 02:42:47');
INSERT INTO `delivery_movement_resources` VALUES (7, 5, 'delivery/movement/resources/l84MwzDbYKmwCYjiA0in87s3PasQd2dT6PyYPHOx.jpg', 1, '2026-01-25 02:42:47', '2026-01-25 02:42:47');
INSERT INTO `delivery_movement_resources` VALUES (8, 5, 'delivery/movement/resources/JffefNFJoRe6eEO9h0JQIKfIPJ3ZugFIoKzxN8M9.webp', 1, '2026-01-25 02:42:47', '2026-01-25 02:42:47');

-- ----------------------------
-- Table structure for delivery_movements
-- ----------------------------
DROP TABLE IF EXISTS `delivery_movements`;
CREATE TABLE `delivery_movements`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `delivery_id` int(11) NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery_movements
-- ----------------------------
INSERT INTO `delivery_movements` VALUES (1, 1, 'En proceso de atención', 'EP', 1, '2026-01-25 02:34:36', '2026-01-25 02:34:36');
INSERT INTO `delivery_movements` VALUES (2, 2, 'En proceso de atención', 'EP', 1, '2026-01-25 02:37:40', '2026-01-25 02:37:40');
INSERT INTO `delivery_movements` VALUES (3, 2, 'Se está realizando el empaquetado del servicio solicitado de las joyas restauradas', 'PP', 1, '2026-01-25 02:41:07', '2026-01-25 02:41:07');
INSERT INTO `delivery_movements` VALUES (4, 2, 'Se realizó la entrega de las joyas restauradas', 'PE', 1, '2026-01-25 02:41:58', '2026-01-25 02:41:58');
INSERT INTO `delivery_movements` VALUES (5, 1, 'Se está realizando el empaquetados de los productos adquiridos', 'PP', 1, '2026-01-25 02:42:47', '2026-01-25 02:42:47');
INSERT INTO `delivery_movements` VALUES (6, 3, 'En proceso de atención', 'EP', 1, '2026-01-25 18:48:29', '2026-01-25 18:48:29');

-- ----------------------------
-- Table structure for delivery_tracks
-- ----------------------------
DROP TABLE IF EXISTS `delivery_tracks`;
CREATE TABLE `delivery_tracks`  (
  `id` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery_tracks
-- ----------------------------
INSERT INTO `delivery_tracks` VALUES ('TR25-00000001', 1, 1, '2026-01-25 02:34:36', '2026-01-25 02:34:36');
INSERT INTO `delivery_tracks` VALUES ('TR25-00000002', 2, 1, '2026-01-25 02:37:41', '2026-01-25 02:37:41');
INSERT INTO `delivery_tracks` VALUES ('TR25-00000003', 3, 1, '2026-01-25 18:48:29', '2026-01-25 18:48:29');

-- ----------------------------
-- Table structure for delivery_types
-- ----------------------------
DROP TABLE IF EXISTS `delivery_types`;
CREATE TABLE `delivery_types`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery_types
-- ----------------------------
INSERT INTO `delivery_types` VALUES (1, 'Estándar', 1, '2026-01-21 10:24:17', '2026-01-21 10:24:17');
INSERT INTO `delivery_types` VALUES (2, 'Recoje tu Pedido', 1, '2026-01-21 10:24:17', '2026-01-21 10:24:17');
INSERT INTO `delivery_types` VALUES (3, 'Envío por Express', 1, '2026-01-21 10:24:17', '2026-01-21 10:24:17');
INSERT INTO `delivery_types` VALUES (4, 'Envío Programado', 1, '2026-01-21 10:24:17', '2026-01-21 10:24:17');

-- ----------------------------
-- Table structure for document_types
-- ----------------------------
DROP TABLE IF EXISTS `document_types`;
CREATE TABLE `document_types`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `initials` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of document_types
-- ----------------------------
INSERT INTO `document_types` VALUES (1, 'Documento de Indentidad Nacional', 'D.N.I.', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `document_types` VALUES (2, 'Carné de Extranjería', 'C.E.', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for features
-- ----------------------------
DROP TABLE IF EXISTS `features`;
CREATE TABLE `features`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of features
-- ----------------------------
INSERT INTO `features` VALUES (1, 1, 'Dimensión', 'S', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `features` VALUES (2, 1, 'Peso', 'S', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `features` VALUES (3, 1, 'Color', 'S', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `features` VALUES (4, 1, 'Material', 'S', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `features` VALUES (5, 1, 'Línea', 'S', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `features` VALUES (6, 1, 'Género', 'S', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `features` VALUES (7, 1, 'Tipo', 'S', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `features` VALUES (8, 1, 'Colección', 'S', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `features` VALUES (9, 1, 'Talla', 'S', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `features` VALUES (10, 1, 'Calidad', 'S', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');

-- ----------------------------
-- Table structure for invoice_details
-- ----------------------------
DROP TABLE IF EXISTS `invoice_details`;
CREATE TABLE `invoice_details`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_item_id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice_details
-- ----------------------------
INSERT INTO `invoice_details` VALUES (1, 'B001-00000001', 36, 0, 950.00, 1, 950.00, 1, '2026-01-25 02:34:35', '2026-01-25 02:34:35');
INSERT INTO `invoice_details` VALUES (2, 'B001-00000001', 106, 0, 250.00, 1, 250.00, 1, '2026-01-25 02:34:35', '2026-01-25 02:34:35');
INSERT INTO `invoice_details` VALUES (3, 'B001-00000002', 0, 2, 950.00, 1, 950.00, 1, '2026-01-25 02:37:40', '2026-01-25 02:37:40');
INSERT INTO `invoice_details` VALUES (4, 'B001-00000003', 0, 1, 1750.00, 1, 1750.00, 1, '2026-01-25 18:48:29', '2026-01-25 18:48:29');

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices`  (
  `id` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `tax_id` tinyint(4) NOT NULL,
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued_at` date NOT NULL,
  `expired_at` date NOT NULL,
  `ind_action` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoices
-- ----------------------------
INSERT INTO `invoices` VALUES ('B001-00000001', 1, 1, 1, 'B', '2025-08-15', '2025-09-15', 'B', 1, '2026-01-25 02:34:34', '2026-01-25 02:34:34');
INSERT INTO `invoices` VALUES ('B001-00000002', 1, 1, 1, 'B', '2026-01-25', '2026-01-25', 'S', 1, '2026-01-25 02:37:40', '2026-01-25 02:37:40');
INSERT INTO `invoices` VALUES ('B001-00000003', 1, 3, 1, 'B', '2026-01-25', '2026-01-27', 'S', 1, '2026-01-25 18:48:29', '2026-01-25 18:48:29');

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int(11) NULL DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for measurements
-- ----------------------------
DROP TABLE IF EXISTS `measurements`;
CREATE TABLE `measurements`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of measurements
-- ----------------------------
INSERT INTO `measurements` VALUES (1, 1, 'Unidad', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2025_05_30_233721_apps', 1);
INSERT INTO `migrations` VALUES (5, '2025_05_31_010205_create_profiles_table', 1);
INSERT INTO `migrations` VALUES (6, '2025_05_31_010353_create_roles_table', 1);
INSERT INTO `migrations` VALUES (7, '2025_05_31_010732_create_accounts_table', 1);
INSERT INTO `migrations` VALUES (8, '2025_05_31_011330_create_audits_table', 1);
INSERT INTO `migrations` VALUES (9, '2025_05_31_012010_create_service_types_table', 1);
INSERT INTO `migrations` VALUES (10, '2025_05_31_012128_create_services_table', 1);
INSERT INTO `migrations` VALUES (11, '2025_05_31_012623_create_sequences_table', 1);
INSERT INTO `migrations` VALUES (12, '2025_05_31_013308_create_categories_table', 1);
INSERT INTO `migrations` VALUES (13, '2025_05_31_013716_create_products_table', 1);
INSERT INTO `migrations` VALUES (14, '2025_05_31_014529_create_product_resources_table', 1);
INSERT INTO `migrations` VALUES (15, '2025_05_31_014840_create_product_movements_table', 1);
INSERT INTO `migrations` VALUES (16, '2025_05_31_015526_create_ubigeos_table', 1);
INSERT INTO `migrations` VALUES (17, '2025_05_31_015815_create_document_types_table', 1);
INSERT INTO `migrations` VALUES (18, '2025_05_31_020626_create_customers_table', 1);
INSERT INTO `migrations` VALUES (19, '2025_05_31_091306_create_invoices_table', 1);
INSERT INTO `migrations` VALUES (20, '2025_05_31_093228_create_invoice_details_table', 1);
INSERT INTO `migrations` VALUES (21, '2025_05_31_094428_create_payment_types_table', 1);
INSERT INTO `migrations` VALUES (22, '2025_05_31_095834_create_banks_table', 1);
INSERT INTO `migrations` VALUES (23, '2025_05_31_100055_create_card_types_table', 1);
INSERT INTO `migrations` VALUES (24, '2025_05_31_101604_create_payments_table', 1);
INSERT INTO `migrations` VALUES (25, '2025_05_31_102444_create_delivery_types_table', 1);
INSERT INTO `migrations` VALUES (26, '2025_05_31_152111_create_deliveries_table', 1);
INSERT INTO `migrations` VALUES (27, '2025_05_31_153224_create_delivery_movements_table', 1);
INSERT INTO `migrations` VALUES (28, '2025_05_31_153722_create_delivery_movement_resources_table', 1);
INSERT INTO `migrations` VALUES (29, '2025_07_18_155129_create_contacts_table', 1);
INSERT INTO `migrations` VALUES (30, '2025_08_30_015302_create_companies_table', 1);
INSERT INTO `migrations` VALUES (31, '2025_08_30_151043_create_delivery_tracks_table', 1);
INSERT INTO `migrations` VALUES (32, '2025_12_08_063038_measurements', 1);
INSERT INTO `migrations` VALUES (33, '2025_12_08_064133_product_items', 1);
INSERT INTO `migrations` VALUES (34, '2025_12_08_064857_product_features', 1);
INSERT INTO `migrations` VALUES (35, '2025_12_08_065408_product_feature_values', 1);
INSERT INTO `migrations` VALUES (36, '2025_12_08_073650_taxes', 1);
INSERT INTO `migrations` VALUES (37, '2025_12_08_171445_features', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for payment_types
-- ----------------------------
DROP TABLE IF EXISTS `payment_types`;
CREATE TABLE `payment_types`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_types
-- ----------------------------
INSERT INTO `payment_types` VALUES (1, 'Contado', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `payment_types` VALUES (2, 'Tarjeta de Débito / Crédito', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `payment_types` VALUES (3, 'Transferencia Bancaria', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `payment_types` VALUES (4, 'Plataforma de Pagos Online', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `payment_types` VALUES (5, 'Yape', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `payment_types` VALUES (6, 'Plin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `payment_types` VALUES (7, 'Tunki', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `payment_types` VALUES (8, 'Agora Pay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `payment_types` VALUES (9, 'BIM', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type_id` tinyint(4) NOT NULL,
  `bank_id` tinyint(4) NOT NULL,
  `card_type_id` tinyint(4) NOT NULL,
  `holder_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_surname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_number` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_expired` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_cvv` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation_number` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_amount` decimal(10, 2) NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payments
-- ----------------------------
INSERT INTO `payments` VALUES (1, 'B001-00000001', 2, 2, 2, 'José Hugo', 'Saravia Chávez', 'jsaravia@geosatelital.com.pe', '4587-5412-5155-8485', '12/26', '858', '', '', '', 1200.00, 1, '2026-01-25 02:34:36', '2026-01-25 02:34:36');
INSERT INTO `payments` VALUES (2, 'B001-00000002', 1, 1, 1, '', '', '', '', '', '', '', '', '', 950.00, 1, '2026-01-25 02:37:41', '2026-01-25 02:37:41');
INSERT INTO `payments` VALUES (3, 'B001-00000003', 1, 1, 1, '', '', '', '', '', '', '', '', '', 1750.00, 1, '2026-01-25 18:48:29', '2026-01-25 18:48:29');

-- ----------------------------
-- Table structure for product_feature_values
-- ----------------------------
DROP TABLE IF EXISTS `product_feature_values`;
CREATE TABLE `product_feature_values`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_feature_id` int(11) NOT NULL,
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_feature_values
-- ----------------------------
INSERT INTO `product_feature_values` VALUES (1, 1, 'MISS', 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_feature_values` VALUES (2, 2, 'MUJER', 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_feature_values` VALUES (3, 3, 'ANILLO X', 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_feature_values` VALUES (4, 4, 'MADRID', 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_feature_values` VALUES (5, 5, 'PLATA Y CRISTAL', 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_feature_values` VALUES (6, 6, 'ETNICA', 1, '2025-12-24 02:58:32', '2025-12-24 02:58:32');
INSERT INTO `product_feature_values` VALUES (7, 7, 'MUJER', 1, '2025-12-24 02:58:32', '2025-12-24 02:58:32');
INSERT INTO `product_feature_values` VALUES (8, 8, 'ANILLO', 1, '2025-12-24 02:58:33', '2025-12-24 02:58:33');
INSERT INTO `product_feature_values` VALUES (9, 9, 'QASHWA', 1, '2025-12-24 02:58:33', '2025-12-24 02:58:33');
INSERT INTO `product_feature_values` VALUES (10, 10, 'PLATA Y PIEDRA CRISOCOLA', 1, '2025-12-24 02:58:33', '2025-12-24 02:58:33');
INSERT INTO `product_feature_values` VALUES (11, 11, 'T-6', 1, '2025-12-24 02:58:33', '2025-12-24 02:58:33');
INSERT INTO `product_feature_values` VALUES (12, 12, 'Oro 18K Garantizado', 1, '2025-12-29 04:23:07', '2025-12-29 04:23:07');
INSERT INTO `product_feature_values` VALUES (13, 13, 'Oro Amarillo', 1, '2025-12-29 04:23:07', '2025-12-29 04:23:07');
INSERT INTO `product_feature_values` VALUES (14, 14, '1,3gr', 1, '2025-12-29 04:23:07', '2025-12-29 04:23:07');
INSERT INTO `product_feature_values` VALUES (15, 15, 'Ancho 0,58mm-Largo 40cm', 1, '2025-12-29 04:23:07', '2025-12-29 04:23:07');
INSERT INTO `product_feature_values` VALUES (16, 16, 'Oro Italiano', 1, '2025-12-29 04:23:07', '2025-12-29 04:23:07');
INSERT INTO `product_feature_values` VALUES (17, 17, 'Oro 16 mm', 1, '2026-01-12 02:42:16', '2026-01-12 02:42:16');
INSERT INTO `product_feature_values` VALUES (18, 18, 'Dorado', 1, '2026-01-12 02:42:16', '2026-01-12 02:42:16');
INSERT INTO `product_feature_values` VALUES (19, 19, '18 kt', 1, '2026-01-12 02:42:16', '2026-01-12 02:42:16');
INSERT INTO `product_feature_values` VALUES (20, 20, 'Mujer', 1, '2026-01-12 02:42:16', '2026-01-12 02:42:16');

-- ----------------------------
-- Table structure for product_features
-- ----------------------------
DROP TABLE IF EXISTS `product_features`;
CREATE TABLE `product_features`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `feature_id` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_features
-- ----------------------------
INSERT INTO `product_features` VALUES (1, 1, 5, 1, 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_features` VALUES (2, 1, 6, 1, 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_features` VALUES (3, 1, 7, 1, 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_features` VALUES (4, 1, 8, 1, 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_features` VALUES (5, 1, 4, 1, 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_features` VALUES (6, 2, 5, 1, 1, '2025-12-24 02:58:32', '2025-12-24 02:58:32');
INSERT INTO `product_features` VALUES (7, 2, 6, 1, 1, '2025-12-24 02:58:32', '2025-12-24 02:58:32');
INSERT INTO `product_features` VALUES (8, 2, 7, 1, 1, '2025-12-24 02:58:32', '2025-12-24 02:58:32');
INSERT INTO `product_features` VALUES (9, 2, 8, 1, 1, '2025-12-24 02:58:33', '2025-12-24 02:58:33');
INSERT INTO `product_features` VALUES (10, 2, 4, 1, 1, '2025-12-24 02:58:33', '2025-12-24 02:58:33');
INSERT INTO `product_features` VALUES (11, 2, 9, 1, 1, '2025-12-24 02:58:33', '2025-12-24 02:58:33');
INSERT INTO `product_features` VALUES (12, 3, 10, 1, 1, '2025-12-29 04:23:07', '2025-12-29 04:23:07');
INSERT INTO `product_features` VALUES (13, 3, 3, 1, 1, '2025-12-29 04:23:07', '2025-12-29 04:23:07');
INSERT INTO `product_features` VALUES (14, 3, 2, 1, 1, '2025-12-29 04:23:07', '2025-12-29 04:23:07');
INSERT INTO `product_features` VALUES (15, 3, 1, 1, 1, '2025-12-29 04:23:07', '2025-12-29 04:23:07');
INSERT INTO `product_features` VALUES (16, 3, 4, 1, 1, '2025-12-29 04:23:07', '2025-12-29 04:23:07');
INSERT INTO `product_features` VALUES (17, 4, 4, 1, 1, '2026-01-12 02:42:16', '2026-01-12 02:42:16');
INSERT INTO `product_features` VALUES (18, 4, 3, 1, 1, '2026-01-12 02:42:16', '2026-01-12 02:42:16');
INSERT INTO `product_features` VALUES (19, 4, 2, 1, 1, '2026-01-12 02:42:16', '2026-01-12 02:42:16');
INSERT INTO `product_features` VALUES (20, 4, 6, 1, 1, '2026-01-12 02:42:16', '2026-01-12 02:42:16');

-- ----------------------------
-- Table structure for product_items
-- ----------------------------
DROP TABLE IF EXISTS `product_items`;
CREATE TABLE `product_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_movement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `codebar` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 156 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_items
-- ----------------------------
INSERT INTO `product_items` VALUES (1, 1, 1, 1, 'M02026416-1', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (2, 1, 1, 1, 'M02026416-2', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (3, 1, 1, 1, 'M02026416-3', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (4, 1, 1, 1, 'M02026416-4', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (5, 1, 1, 1, 'M02026416-5', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (6, 1, 1, 1, 'M02026416-6', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (7, 1, 1, 1, 'M02026416-7', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (8, 1, 1, 1, 'M02026416-8', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (9, 1, 1, 1, 'M02026416-9', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (10, 1, 1, 1, 'M02026416-10', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (11, 1, 1, 1, 'M02026416-11', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (12, 1, 1, 1, 'M02026416-12', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (13, 1, 1, 1, 'M02026416-13', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (14, 1, 1, 1, 'M02026416-14', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (15, 1, 1, 1, 'M02026416-15', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (16, 1, 1, 1, 'M02026416-16', 'ED', '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_items` VALUES (17, 1, 1, 1, 'M02026416-17', 'ED', '2026-01-25 02:28:45', '2026-01-25 02:28:45');
INSERT INTO `product_items` VALUES (18, 1, 1, 1, 'M02026416-18', 'ED', '2026-01-25 02:28:45', '2026-01-25 02:28:45');
INSERT INTO `product_items` VALUES (19, 1, 1, 1, 'M02026416-19', 'ED', '2026-01-25 02:28:45', '2026-01-25 02:28:45');
INSERT INTO `product_items` VALUES (20, 1, 1, 1, 'M02026416-20', 'ED', '2026-01-25 02:28:45', '2026-01-25 02:28:45');
INSERT INTO `product_items` VALUES (21, 1, 1, 1, 'M02026416-21', 'ED', '2026-01-25 02:28:45', '2026-01-25 02:28:45');
INSERT INTO `product_items` VALUES (22, 1, 1, 1, 'M02026416-22', 'ED', '2026-01-25 02:28:45', '2026-01-25 02:28:45');
INSERT INTO `product_items` VALUES (23, 1, 1, 1, 'M02026416-23', 'ED', '2026-01-25 02:28:45', '2026-01-25 02:28:45');
INSERT INTO `product_items` VALUES (24, 1, 1, 1, 'M02026416-24', 'ED', '2026-01-25 02:28:45', '2026-01-25 02:28:45');
INSERT INTO `product_items` VALUES (25, 1, 1, 1, 'M02026416-25', 'ED', '2026-01-25 02:28:45', '2026-01-25 02:28:45');
INSERT INTO `product_items` VALUES (26, 1, 1, 1, 'M02026416-26', 'ED', '2026-01-25 02:28:45', '2026-01-25 02:28:45');
INSERT INTO `product_items` VALUES (27, 1, 1, 1, 'M02026416-27', 'ED', '2026-01-25 02:28:45', '2026-01-25 02:28:45');
INSERT INTO `product_items` VALUES (28, 1, 1, 1, 'M02026416-28', 'ED', '2026-01-25 02:28:46', '2026-01-25 02:28:46');
INSERT INTO `product_items` VALUES (29, 1, 1, 1, 'M02026416-29', 'ED', '2026-01-25 02:28:46', '2026-01-25 02:28:46');
INSERT INTO `product_items` VALUES (30, 1, 1, 1, 'M02026416-30', 'ED', '2026-01-25 02:28:46', '2026-01-25 02:28:46');
INSERT INTO `product_items` VALUES (31, 1, 1, 1, 'M02026416-31', 'ED', '2026-01-25 02:28:46', '2026-01-25 02:28:46');
INSERT INTO `product_items` VALUES (32, 1, 1, 1, 'M02026416-32', 'ED', '2026-01-25 02:28:46', '2026-01-25 02:28:46');
INSERT INTO `product_items` VALUES (33, 1, 1, 1, 'M02026416-33', 'ED', '2026-01-25 02:28:46', '2026-01-25 02:28:46');
INSERT INTO `product_items` VALUES (34, 1, 1, 1, 'M02026416-34', 'ED', '2026-01-25 02:28:46', '2026-01-25 02:28:46');
INSERT INTO `product_items` VALUES (35, 1, 1, 1, 'M02026416-35', 'ED', '2026-01-25 02:28:46', '2026-01-25 02:28:46');
INSERT INTO `product_items` VALUES (36, 2, 2, 1, 'E02026419-1', 'ND', '2026-01-25 02:29:40', '2026-01-25 02:34:35');
INSERT INTO `product_items` VALUES (37, 2, 2, 1, 'E02026419-2', 'ED', '2026-01-25 02:29:40', '2026-01-25 02:29:40');
INSERT INTO `product_items` VALUES (38, 2, 2, 1, 'E02026419-3', 'ED', '2026-01-25 02:29:40', '2026-01-25 02:29:40');
INSERT INTO `product_items` VALUES (39, 2, 2, 1, 'E02026419-4', 'ED', '2026-01-25 02:29:40', '2026-01-25 02:29:40');
INSERT INTO `product_items` VALUES (40, 2, 2, 1, 'E02026419-5', 'ED', '2026-01-25 02:29:40', '2026-01-25 02:29:40');
INSERT INTO `product_items` VALUES (41, 2, 2, 1, 'E02026419-6', 'ED', '2026-01-25 02:29:40', '2026-01-25 02:29:40');
INSERT INTO `product_items` VALUES (42, 2, 2, 1, 'E02026419-7', 'ED', '2026-01-25 02:29:40', '2026-01-25 02:29:40');
INSERT INTO `product_items` VALUES (43, 2, 2, 1, 'E02026419-8', 'ED', '2026-01-25 02:29:40', '2026-01-25 02:29:40');
INSERT INTO `product_items` VALUES (44, 2, 2, 1, 'E02026419-9', 'ED', '2026-01-25 02:29:40', '2026-01-25 02:29:40');
INSERT INTO `product_items` VALUES (45, 2, 2, 1, 'E02026419-10', 'ED', '2026-01-25 02:29:41', '2026-01-25 02:29:41');
INSERT INTO `product_items` VALUES (46, 2, 2, 1, 'E02026419-11', 'ED', '2026-01-25 02:29:41', '2026-01-25 02:29:41');
INSERT INTO `product_items` VALUES (47, 2, 2, 1, 'E02026419-12', 'ED', '2026-01-25 02:29:41', '2026-01-25 02:29:41');
INSERT INTO `product_items` VALUES (48, 2, 2, 1, 'E02026419-13', 'ED', '2026-01-25 02:29:41', '2026-01-25 02:29:41');
INSERT INTO `product_items` VALUES (49, 2, 2, 1, 'E02026419-14', 'ED', '2026-01-25 02:29:41', '2026-01-25 02:29:41');
INSERT INTO `product_items` VALUES (50, 2, 2, 1, 'E02026419-15', 'ED', '2026-01-25 02:29:41', '2026-01-25 02:29:41');
INSERT INTO `product_items` VALUES (51, 2, 2, 1, 'E02026419-16', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (52, 2, 2, 1, 'E02026419-17', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (53, 2, 2, 1, 'E02026419-18', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (54, 2, 2, 1, 'E02026419-19', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (55, 2, 2, 1, 'E02026419-20', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (56, 2, 2, 1, 'E02026419-21', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (57, 2, 2, 1, 'E02026419-22', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (58, 2, 2, 1, 'E02026419-23', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (59, 2, 2, 1, 'E02026419-24', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (60, 2, 2, 1, 'E02026419-25', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (61, 2, 2, 1, 'E02026419-26', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (62, 2, 2, 1, 'E02026419-27', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (63, 2, 2, 1, 'E02026419-28', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (64, 2, 2, 1, 'E02026419-29', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (65, 2, 2, 1, 'E02026419-30', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (66, 2, 2, 1, 'E02026419-31', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (67, 2, 2, 1, 'E02026419-32', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (68, 2, 2, 1, 'E02026419-33', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (69, 2, 2, 1, 'E02026419-34', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (70, 2, 2, 1, 'E02026419-35', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (71, 2, 2, 1, 'E02026419-36', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (72, 2, 2, 1, 'E02026419-37', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (73, 2, 2, 1, 'E02026419-38', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (74, 2, 2, 1, 'E02026419-39', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (75, 2, 2, 1, 'E02026419-40', 'ED', '2026-01-25 02:29:42', '2026-01-25 02:29:42');
INSERT INTO `product_items` VALUES (76, 3, 3, 1, '9402-1', 'ED', '2026-01-25 02:30:24', '2026-01-25 02:30:24');
INSERT INTO `product_items` VALUES (77, 3, 3, 1, '9402-2', 'ED', '2026-01-25 02:30:24', '2026-01-25 02:30:24');
INSERT INTO `product_items` VALUES (78, 3, 3, 1, '9402-3', 'ED', '2026-01-25 02:30:24', '2026-01-25 02:30:24');
INSERT INTO `product_items` VALUES (79, 3, 3, 1, '9402-4', 'ED', '2026-01-25 02:30:24', '2026-01-25 02:30:24');
INSERT INTO `product_items` VALUES (80, 3, 3, 1, '9402-5', 'ED', '2026-01-25 02:30:24', '2026-01-25 02:30:24');
INSERT INTO `product_items` VALUES (81, 3, 3, 1, '9402-6', 'ED', '2026-01-25 02:30:24', '2026-01-25 02:30:24');
INSERT INTO `product_items` VALUES (82, 3, 3, 1, '9402-7', 'ED', '2026-01-25 02:30:24', '2026-01-25 02:30:24');
INSERT INTO `product_items` VALUES (83, 3, 3, 1, '9402-8', 'ED', '2026-01-25 02:30:24', '2026-01-25 02:30:24');
INSERT INTO `product_items` VALUES (84, 3, 3, 1, '9402-9', 'ED', '2026-01-25 02:30:25', '2026-01-25 02:30:25');
INSERT INTO `product_items` VALUES (85, 3, 3, 1, '9402-10', 'ED', '2026-01-25 02:30:25', '2026-01-25 02:30:25');
INSERT INTO `product_items` VALUES (86, 3, 3, 1, '9402-11', 'ED', '2026-01-25 02:30:25', '2026-01-25 02:30:25');
INSERT INTO `product_items` VALUES (87, 3, 3, 1, '9402-12', 'ED', '2026-01-25 02:30:25', '2026-01-25 02:30:25');
INSERT INTO `product_items` VALUES (88, 3, 3, 1, '9402-13', 'ED', '2026-01-25 02:30:25', '2026-01-25 02:30:25');
INSERT INTO `product_items` VALUES (89, 3, 3, 1, '9402-14', 'ED', '2026-01-25 02:30:25', '2026-01-25 02:30:25');
INSERT INTO `product_items` VALUES (90, 3, 3, 1, '9402-15', 'ED', '2026-01-25 02:30:26', '2026-01-25 02:30:26');
INSERT INTO `product_items` VALUES (91, 3, 3, 1, '9402-16', 'ED', '2026-01-25 02:30:26', '2026-01-25 02:30:26');
INSERT INTO `product_items` VALUES (92, 3, 3, 1, '9402-17', 'ED', '2026-01-25 02:30:26', '2026-01-25 02:30:26');
INSERT INTO `product_items` VALUES (93, 3, 3, 1, '9402-18', 'ED', '2026-01-25 02:30:26', '2026-01-25 02:30:26');
INSERT INTO `product_items` VALUES (94, 3, 3, 1, '9402-19', 'ED', '2026-01-25 02:30:26', '2026-01-25 02:30:26');
INSERT INTO `product_items` VALUES (95, 3, 3, 1, '9402-20', 'ED', '2026-01-25 02:30:26', '2026-01-25 02:30:26');
INSERT INTO `product_items` VALUES (96, 3, 3, 1, '9402-21', 'ED', '2026-01-25 02:30:26', '2026-01-25 02:30:26');
INSERT INTO `product_items` VALUES (97, 3, 3, 1, '9402-22', 'ED', '2026-01-25 02:30:26', '2026-01-25 02:30:26');
INSERT INTO `product_items` VALUES (98, 3, 3, 1, '9402-23', 'ED', '2026-01-25 02:30:26', '2026-01-25 02:30:26');
INSERT INTO `product_items` VALUES (99, 3, 3, 1, '9402-24', 'ED', '2026-01-25 02:30:26', '2026-01-25 02:30:26');
INSERT INTO `product_items` VALUES (100, 3, 3, 1, '9402-25', 'ED', '2026-01-25 02:30:26', '2026-01-25 02:30:26');
INSERT INTO `product_items` VALUES (101, 3, 3, 1, '9402-26', 'ED', '2026-01-25 02:30:27', '2026-01-25 02:30:27');
INSERT INTO `product_items` VALUES (102, 3, 3, 1, '9402-27', 'ED', '2026-01-25 02:30:27', '2026-01-25 02:30:27');
INSERT INTO `product_items` VALUES (103, 3, 3, 1, '9402-28', 'ED', '2026-01-25 02:30:27', '2026-01-25 02:30:27');
INSERT INTO `product_items` VALUES (104, 3, 3, 1, '9402-29', 'ED', '2026-01-25 02:30:27', '2026-01-25 02:30:27');
INSERT INTO `product_items` VALUES (105, 3, 3, 1, '9402-30', 'ED', '2026-01-25 02:30:27', '2026-01-25 02:30:27');
INSERT INTO `product_items` VALUES (106, 4, 4, 1, '10042126-1', 'ND', '2026-01-25 02:30:53', '2026-01-25 02:34:35');
INSERT INTO `product_items` VALUES (107, 4, 4, 1, '10042126-2', 'ED', '2026-01-25 02:30:53', '2026-01-25 02:30:53');
INSERT INTO `product_items` VALUES (108, 4, 4, 1, '10042126-3', 'ED', '2026-01-25 02:30:53', '2026-01-25 02:30:53');
INSERT INTO `product_items` VALUES (109, 4, 4, 1, '10042126-4', 'ED', '2026-01-25 02:30:53', '2026-01-25 02:30:53');
INSERT INTO `product_items` VALUES (110, 4, 4, 1, '10042126-5', 'ED', '2026-01-25 02:30:53', '2026-01-25 02:30:53');
INSERT INTO `product_items` VALUES (111, 4, 4, 1, '10042126-6', 'ED', '2026-01-25 02:30:53', '2026-01-25 02:30:53');
INSERT INTO `product_items` VALUES (112, 4, 4, 1, '10042126-7', 'ED', '2026-01-25 02:30:53', '2026-01-25 02:30:53');
INSERT INTO `product_items` VALUES (113, 4, 4, 1, '10042126-8', 'ED', '2026-01-25 02:30:53', '2026-01-25 02:30:53');
INSERT INTO `product_items` VALUES (114, 4, 4, 1, '10042126-9', 'ED', '2026-01-25 02:30:53', '2026-01-25 02:30:53');
INSERT INTO `product_items` VALUES (115, 4, 4, 1, '10042126-10', 'ED', '2026-01-25 02:30:53', '2026-01-25 02:30:53');
INSERT INTO `product_items` VALUES (116, 4, 4, 1, '10042126-11', 'ED', '2026-01-25 02:30:53', '2026-01-25 02:30:53');
INSERT INTO `product_items` VALUES (117, 4, 4, 1, '10042126-12', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (118, 4, 4, 1, '10042126-13', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (119, 4, 4, 1, '10042126-14', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (120, 4, 4, 1, '10042126-15', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (121, 4, 4, 1, '10042126-16', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (122, 4, 4, 1, '10042126-17', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (123, 4, 4, 1, '10042126-18', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (124, 4, 4, 1, '10042126-19', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (125, 4, 4, 1, '10042126-20', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (126, 4, 4, 1, '10042126-21', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (127, 4, 4, 1, '10042126-22', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (128, 4, 4, 1, '10042126-23', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (129, 4, 4, 1, '10042126-24', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (130, 4, 4, 1, '10042126-25', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (131, 4, 4, 1, '10042126-26', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (132, 4, 4, 1, '10042126-27', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (133, 4, 4, 1, '10042126-28', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (134, 4, 4, 1, '10042126-29', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (135, 4, 4, 1, '10042126-30', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (136, 4, 4, 1, '10042126-31', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (137, 4, 4, 1, '10042126-32', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (138, 4, 4, 1, '10042126-33', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (139, 4, 4, 1, '10042126-34', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (140, 4, 4, 1, '10042126-35', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (141, 4, 4, 1, '10042126-36', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (142, 4, 4, 1, '10042126-37', 'ED', '2026-01-25 02:30:54', '2026-01-25 02:30:54');
INSERT INTO `product_items` VALUES (143, 4, 4, 1, '10042126-38', 'ED', '2026-01-25 02:30:55', '2026-01-25 02:30:55');
INSERT INTO `product_items` VALUES (144, 4, 4, 1, '10042126-39', 'ED', '2026-01-25 02:30:55', '2026-01-25 02:30:55');
INSERT INTO `product_items` VALUES (145, 4, 4, 1, '10042126-40', 'ED', '2026-01-25 02:30:55', '2026-01-25 02:30:55');
INSERT INTO `product_items` VALUES (146, 4, 4, 1, '10042126-41', 'ED', '2026-01-25 02:30:55', '2026-01-25 02:30:55');
INSERT INTO `product_items` VALUES (147, 4, 4, 1, '10042126-42', 'ED', '2026-01-25 02:30:55', '2026-01-25 02:30:55');
INSERT INTO `product_items` VALUES (148, 4, 4, 1, '10042126-43', 'ED', '2026-01-25 02:30:55', '2026-01-25 02:30:55');
INSERT INTO `product_items` VALUES (149, 4, 4, 1, '10042126-44', 'ED', '2026-01-25 02:30:55', '2026-01-25 02:30:55');
INSERT INTO `product_items` VALUES (150, 4, 4, 1, '10042126-45', 'ED', '2026-01-25 02:30:55', '2026-01-25 02:30:55');
INSERT INTO `product_items` VALUES (151, 4, 4, 1, '10042126-46', 'ED', '2026-01-25 02:30:55', '2026-01-25 02:30:55');
INSERT INTO `product_items` VALUES (152, 4, 4, 1, '10042126-47', 'ED', '2026-01-25 02:30:55', '2026-01-25 02:30:55');
INSERT INTO `product_items` VALUES (153, 4, 4, 1, '10042126-48', 'ED', '2026-01-25 02:30:55', '2026-01-25 02:30:55');
INSERT INTO `product_items` VALUES (154, 4, 4, 1, '10042126-49', 'ED', '2026-01-25 02:30:55', '2026-01-25 02:30:55');
INSERT INTO `product_items` VALUES (155, 4, 4, 1, '10042126-50', 'ED', '2026-01-25 02:30:55', '2026-01-25 02:30:55');

-- ----------------------------
-- Table structure for product_movements
-- ----------------------------
DROP TABLE IF EXISTS `product_movements`;
CREATE TABLE `product_movements`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_document` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_price` decimal(10, 2) NOT NULL,
  `sale_price` decimal(10, 2) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_movements
-- ----------------------------
INSERT INTO `product_movements` VALUES (1, 1, 1, 'I', 'Ingreso de mercaderias', '007-000001-26', 750.00, 1500.00, 35, 1, '2026-01-25 02:28:44', '2026-01-25 02:28:44');
INSERT INTO `product_movements` VALUES (2, 2, 1, 'I', 'Ingreso de mercaderias', '007-000002-26', 600.00, 950.00, 40, 1, '2026-01-25 02:29:40', '2026-01-25 02:29:40');
INSERT INTO `product_movements` VALUES (3, 3, 1, 'I', 'Ingreso de mercaderias', '007-000003-26', 500.00, 1400.00, 30, 1, '2026-01-25 02:30:24', '2026-01-25 02:30:24');
INSERT INTO `product_movements` VALUES (4, 4, 1, 'I', 'Ingreso de mercaderias', '007-000004-26', 150.00, 250.00, 50, 1, '2026-01-25 02:30:53', '2026-01-25 02:30:53');
INSERT INTO `product_movements` VALUES (5, 2, 1, 'O', 'Salida de producto por venta', 'B001-00000001', 600.00, 950.00, 1, 1, '2026-01-25 02:34:34', '2026-01-25 02:34:34');
INSERT INTO `product_movements` VALUES (6, 4, 1, 'O', 'Salida de producto por venta', 'B001-00000001', 150.00, 250.00, 1, 1, '2026-01-25 02:34:35', '2026-01-25 02:34:35');

-- ----------------------------
-- Table structure for product_resources
-- ----------------------------
DROP TABLE IF EXISTS `product_resources`;
CREATE TABLE `product_resources`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_resources
-- ----------------------------
INSERT INTO `product_resources` VALUES (1, 1, 1, 'products/resources/mBLWiIpZJ82uTBpsv3U3sgyF6K6MJJb6jTRTyAvn.webp', 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_resources` VALUES (2, 1, 1, 'products/resources/X3yYzyLxTZ6z0KmQttYeTHjn8EKmX0fSm510Wu5B.jpg', 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_resources` VALUES (3, 1, 1, 'products/resources/JFouXToTZUTcMXeVl2hitqrUu3U852pdV16PBNYe.webp', 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_resources` VALUES (4, 1, 1, 'products/resources/4OrW65mGpTpJjfpoxB4Iqy6FhKTeBCB1kzZH5Ltv.webp', 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_resources` VALUES (5, 1, 1, 'products/resources/L8aiTTiONad5llL2xIJ6KB5gXhzL3ULgiQ4THTHz.jpg', 1, '2025-12-11 08:16:26', '2025-12-11 08:16:26');
INSERT INTO `product_resources` VALUES (6, 1, 1, 'products/resources/mWANfswaKNIi0Gf4sdE1Jjdz9OhD3qyAVtuYokzJ.webp', 1, '2025-12-11 08:16:27', '2025-12-11 08:16:27');
INSERT INTO `product_resources` VALUES (7, 1, 1, 'products/resources/ezpTQ6c9UjrdHfj05SZhs1riuTidM4zkpmnzycnd.webp', 1, '2025-12-11 08:16:27', '2025-12-11 08:16:27');
INSERT INTO `product_resources` VALUES (8, 1, 1, 'products/resources/EBAF0Fl4ms7HaXfOTPHPytnkgbYDTZOQgWWGwweI.webp', 1, '2025-12-11 08:16:27', '2025-12-11 08:16:27');
INSERT INTO `product_resources` VALUES (9, 1, 1, 'products/resources/DGntohnJcVXxDHyO03povqSmWDyD3Bmi5lFO2wso.jpg', 1, '2025-12-11 08:16:27', '2025-12-11 08:16:27');
INSERT INTO `product_resources` VALUES (10, 1, 1, 'products/resources/Rz1i3cV6XS6CvTMTZkQ0nA9qNjbsPjcGYwryvpF0.jpg', 1, '2025-12-11 08:16:27', '2025-12-11 08:16:27');
INSERT INTO `product_resources` VALUES (11, 1, 1, 'products/resources/rHCfWvSb4KJ0ECHD8dYtC8G4SVCub1nzIvoqY8CJ.webp', 1, '2025-12-11 08:16:27', '2025-12-11 08:16:27');
INSERT INTO `product_resources` VALUES (12, 1, 1, 'products/resources/27UuggAzHqqrv3HuL0IXuk9adDuJhUf7HSESdxoC.webp', 1, '2025-12-11 08:16:27', '2025-12-11 08:16:27');
INSERT INTO `product_resources` VALUES (13, 1, 1, 'products/resources/ADM9NU30GMuCYkhaLe1zPT5vBIhsYH0Nwaovbsuh.webp', 1, '2025-12-11 08:16:27', '2025-12-11 08:16:27');
INSERT INTO `product_resources` VALUES (14, 2, 1, 'products/resources/EjQy559BngzZuWrkoEdaxgyuB9Q5VZ4boPW2cJsw.webp', 1, '2025-12-24 02:58:33', '2025-12-24 02:58:33');
INSERT INTO `product_resources` VALUES (15, 2, 1, 'products/resources/YaDnZXNAIGkOtb4F2aenKH5pr0iLOEJ1LJO4PLnU.webp', 1, '2025-12-24 02:58:33', '2025-12-24 02:58:33');
INSERT INTO `product_resources` VALUES (16, 3, 1, 'products/resources/BgWF2xEJzelqY0yRdNdKvbr5TZRedoKNW7rapZBV.jpg', 1, '2025-12-29 04:23:07', '2025-12-29 04:23:07');
INSERT INTO `product_resources` VALUES (17, 3, 1, 'products/resources/JlaQauMDSTpklL84ev2RfOLG3Kxr9ylc10EPQtdf.jpg', 1, '2025-12-29 04:23:07', '2025-12-29 04:23:07');
INSERT INTO `product_resources` VALUES (18, 3, 1, 'products/resources/6f7ruBnQ7TtMpVRNxZyGDPrqwFrCgTJ6ev6Cag9t.webp', 1, '2025-12-29 04:23:10', '2025-12-29 04:23:10');
INSERT INTO `product_resources` VALUES (19, 3, 1, 'products/resources/PwiJCODqQxHDBvkwZEek6bdASeTwVU8hEVcPTAU5.webp', 1, '2025-12-29 04:23:10', '2025-12-29 04:23:10');
INSERT INTO `product_resources` VALUES (20, 4, 1, 'products/resources/Ju5c7p7NBP1bOVzN3hPsRXOMIqJu5d1TpdezU0wW.avif', 1, '2026-01-12 02:42:16', '2026-01-12 02:42:16');
INSERT INTO `product_resources` VALUES (21, 4, 1, 'products/resources/Q5RW80RfoM5zQGLqVNxvEw8b8Q70tfon5gEdwyRi.avif', 1, '2026-01-12 02:42:16', '2026-01-12 02:42:16');
INSERT INTO `product_resources` VALUES (22, 4, 1, 'products/resources/W6UM8pTltomOCC2Pk2DIgIIuTjENRan5HzUoPCE5.avif', 1, '2026-01-12 02:42:16', '2026-01-12 02:42:16');
INSERT INTO `product_resources` VALUES (23, 4, 1, 'products/resources/TDAGCwUCdjiSo7Kt3rGZTCqcXiBvulL6r5lGrsjQ.avif', 1, '2026-01-12 02:42:17', '2026-01-12 02:42:17');
INSERT INTO `product_resources` VALUES (24, 4, 1, 'products/resources/3ttfkpMkIrpgDweu3TBsi4ZmQENpWmrnknP2yaET.avif', 1, '2026-01-12 02:42:17', '2026-01-12 02:42:17');
INSERT INTO `product_resources` VALUES (25, 4, 1, 'products/resources/8HvWnc3yK20dh0dSmWZMRfoJ3kTaSWxWZeJSYAyQ.avif', 1, '2026-01-12 02:42:17', '2026-01-12 02:42:17');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `measurement_id` tinyint(4) NOT NULL,
  `sku` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_stock` tinyint(4) NOT NULL,
  `max_stock` tinyint(4) NOT NULL,
  `cost_price` decimal(10, 2) NULL DEFAULT NULL,
  `sale_price` decimal(10, 2) NULL DEFAULT NULL,
  `current_stock` tinyint(4) NOT NULL,
  `average_price` decimal(10, 2) NOT NULL,
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 2, 1, 1, 'M02026416', 'ANILLO MADRID MISS T6', 'Anillo elaborado a mano en plata 925, con un cristal central redondo en montura elevada en tono ruby, rodeado por un halo de pequeños cristales facetados.', 5, 65, 750.00, 1500.00, 35, 0.00, 'products/In6kK3P8t7lHjyLEh3k0QK0ksfnaFcBVBRHn84xg.webp', 1, '2025-12-11 08:16:26', '2026-01-25 02:28:46');
INSERT INTO `products` VALUES (2, 2, 1, 1, 'E02026419', 'ANILLO QASHWA T6', 'Anillo regulable hecho a mano en plata 925 con piedra crisocola', 15, 55, 600.00, 950.00, 39, 0.00, 'products/JlxITpWxCdBXNNGamEH1IMVtttp6mIe13y4HKeRD.webp', 1, '2025-12-24 02:58:32', '2026-01-25 02:34:35');
INSERT INTO `products` VALUES (3, 4, 1, 1, '9402', 'Cadena veneciana 1.3gr / Largo 40cm / Oro Amarillo italy +3 B', 'Cada joya incluye información detallada sobre materiales, quilates, pureza, piedras preciosas utilizadas y certificaciones. Nuestras joyas están diseñadas para ofrecer belleza y durabilidad excepcionales.', 15, 55, 500.00, 1400.00, 30, 0.00, 'products/yd3oCAzANFC2Cg5AL66tYRadoTW6eRZpiA6exYZG.jpg', 1, '2025-12-29 04:23:07', '2026-01-25 02:30:27');
INSERT INTO `products` VALUES (4, 3, 1, 1, '10042126', 'Arete individual de aro con baño de oro 18 kt sobre plata 13 mm Basics', 'Arete individual de aro TOUS Basics con baño de oro 18 kt sobre plata. Tamaño arete: 13 mm. Pieza fabricada con plata de primera ley con baño de oro de 18 a 23 kt y 3 micras de espesor. Esta calidad garantiza una mayor durabilidad de la joya.', 15, 75, 150.00, 250.00, 49, 0.00, 'products/92p8zpOkcvTqLoQYyUZJvljOuhvTSn1yMvTcdS5v.avif', 1, '2026-01-12 02:42:16', '2026-01-25 02:34:36');

-- ----------------------------
-- Table structure for profiles
-- ----------------------------
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles`  (
  `role_id` tinyint(4) NOT NULL,
  `app_id` tinyint(4) NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`, `app_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profiles
-- ----------------------------
INSERT INTO `profiles` VALUES (1, 1, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `profiles` VALUES (1, 2, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `profiles` VALUES (1, 3, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `profiles` VALUES (1, 4, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `profiles` VALUES (1, 5, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `profiles` VALUES (1, 6, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `profiles` VALUES (1, 7, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `profiles` VALUES (1, 8, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `profiles` VALUES (1, 9, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `profiles` VALUES (1, 10, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `profiles` VALUES (1, 11, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `profiles` VALUES (1, 12, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Administrador', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `roles` VALUES (2, 'Operador', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');

-- ----------------------------
-- Table structure for sequences
-- ----------------------------
DROP TABLE IF EXISTS `sequences`;
CREATE TABLE `sequences`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `correlative` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sequences
-- ----------------------------
INSERT INTO `sequences` VALUES (1, 1, 'F', 'F001-00000000', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `sequences` VALUES (2, 1, 'B', 'B001-00000003', 1, '2025-08-27 11:57:03', '2026-01-25 18:48:29');
INSERT INTO `sequences` VALUES (3, 1, 'S', 'TR25-00000003', 1, '2025-08-27 11:57:03', '2026-01-25 18:48:29');

-- ----------------------------
-- Table structure for service_types
-- ----------------------------
DROP TABLE IF EXISTS `service_types`;
CREATE TABLE `service_types`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_types
-- ----------------------------
INSERT INTO `service_types` VALUES (1, 'Mantenimiento de Joya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `service_types` VALUES (2, 'Grabado', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `service_types` VALUES (3, 'Diseño', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `service_types` VALUES (4, 'Ajuste de Talla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `service_types` VALUES (5, 'Engaste de Diamante', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `service_types` VALUES (6, 'Pasado de Perlas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `service_types` VALUES (7, 'Restauración', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_type_id` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES (1, 1, 1, 'Pulido especial de gemas de oro y plata', 1750.00, 1, '2025-12-28 04:30:22', '2025-12-28 04:43:53');
INSERT INTO `services` VALUES (2, 7, 1, 'Renovación de Anillos de Compromiso', 950.00, 1, '2026-01-16 20:51:53', '2026-01-16 20:51:53');
INSERT INTO `services` VALUES (3, 3, 1, 'Diseño Personalizado de Cadenas para Eventos Deportivos', 1250.00, 1, '2026-01-16 20:52:33', '2026-01-16 20:52:33');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id`) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('DGN7ZykTaEimeOiBdkmgGvnCXMWtkdWXD1il1aAJ', NULL, '66.249.88.65', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoib0ZmSEp5Z3RJUXBYWUVhZzJCVWRRazk2aDFhSVBhWlJ2RnI2alJLeiI7czoxNzoiY2F0YWxvZy12aWV3LXR5cGUiO3M6NDoiZ3JpZCI7czoxOToiY2F0YWxvZy1maWx0ZXItdHlwZSI7czowOiIiO3M6MjU6ImNhdGFsb2ctZmlsdGVyLWNhdGVnb3JpZXMiO3M6MDoiIjtzOjIxOiJjYXRhbG9nLWZpbHRlci1wcmljZXMiO3M6MDoiIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cHM6Ly9kZ2FsYTIwMjYuYWx3YXlzZGF0YS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769480127);
INSERT INTO `sessions` VALUES ('FUV2N8MrbAp7BS1zdPip0XGxUvlfcMMWio9OCZrh', NULL, '181.67.181.185', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiQmZxQVRoN1ljTmRSYmVjNnBUSmwwWFJVY09DSkVBRTJqYjBjWFl0TSI7czoxNzoiY2F0YWxvZy12aWV3LXR5cGUiO3M6NDoiZ3JpZCI7czoxOToiY2F0YWxvZy1maWx0ZXItdHlwZSI7czowOiIiO3M6MjU6ImNhdGFsb2ctZmlsdGVyLWNhdGVnb3JpZXMiO3M6MDoiIjtzOjIxOiJjYXRhbG9nLWZpbHRlci1wcmljZXMiO3M6MDoiIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cHM6Ly9kZ2FsYTIwMjYuYWx3YXlzZGF0YS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769480351);
INSERT INTO `sessions` VALUES ('loOvRu2OAuatY5I4df1eugMp1QENFmO6bUOgUFGj', NULL, '66.249.85.45', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiM1FWV3hubmdwVThhWGJNSUdxaG9NRWM4RFdWdVVyUHhFR0JFTHY3SSI7czoxNzoiY2F0YWxvZy12aWV3LXR5cGUiO3M6NDoiZ3JpZCI7czoxOToiY2F0YWxvZy1maWx0ZXItdHlwZSI7czowOiIiO3M6MjU6ImNhdGFsb2ctZmlsdGVyLWNhdGVnb3JpZXMiO3M6MDoiIjtzOjIxOiJjYXRhbG9nLWZpbHRlci1wcmljZXMiO3M6MDoiIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cHM6Ly9kZ2FsYTIwMjYuYWx3YXlzZGF0YS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769480126);
INSERT INTO `sessions` VALUES ('W8mcSbKCFdlWxB0yv389ftirkyhWtPEnGsrEXmrJ', 1, '2001:1388:111:1ac9:696d:e616:3965:9e85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YToxNDp7czo2OiJfdG9rZW4iO3M6NDA6IjVHN3U4RWxSQnFUOFRaTlJSd0RlV21HdFN2aTVNUlJ4c0FQUW5uR0IiO3M6MTc6ImNhdGFsb2ctdmlldy10eXBlIjtzOjQ6ImdyaWQiO3M6MTk6ImNhdGFsb2ctZmlsdGVyLXR5cGUiO3M6MDoiIjtzOjI1OiJjYXRhbG9nLWZpbHRlci1jYXRlZ29yaWVzIjtzOjA6IiI7czoyMToiY2F0YWxvZy1maWx0ZXItcHJpY2VzIjtzOjA6IiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vZGdhbGEyMDI2LmFsd2F5c2RhdGEubmV0L251bUludm9pY2UvQiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo3OiJtZXNzYWdlIjtzOjIyOiJCaWVudmVuaWRvcyBhbCBTaXN0ZW1hIjtzOjI6ImlkIjtpOjE7czo3OiJyb2xlX2lkIjtpOjE7czo5OiJyb2xlX25hbWUiO3M6MTM6IkFkbWluaXN0cmFkb3IiO3M6NDoibmFtZSI7czo1OiJBZG1pbiI7czo1OiJlbWFpbCI7czoxODoiYWRtaW5AZGdhbGEuY29tLnBlIjt9', 1769473819);
INSERT INTO `sessions` VALUES ('zGFQ8dnlRpFjsTvae7OsfWAVZGuI5ml8b1Afw3vX', NULL, '66.249.88.66', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiQjZlU1JNU0JhUllHMzJ6eVAyYXpXMTFMZlpCUGZmemxac3JLVHhIZSI7czoxNzoiY2F0YWxvZy12aWV3LXR5cGUiO3M6NDoiZ3JpZCI7czoxOToiY2F0YWxvZy1maWx0ZXItdHlwZSI7czowOiIiO3M6MjU6ImNhdGFsb2ctZmlsdGVyLWNhdGVnb3JpZXMiO3M6MDoiIjtzOjIxOiJjYXRhbG9nLWZpbHRlci1wcmljZXMiO3M6MDoiIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cHM6Ly9kZ2FsYTIwMjYuYWx3YXlzZGF0YS5uZXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1769480128);

-- ----------------------------
-- Table structure for taxes
-- ----------------------------
DROP TABLE IF EXISTS `taxes`;
CREATE TABLE `taxes`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taxes
-- ----------------------------
INSERT INTO `taxes` VALUES (1, 'I.G.V.', 'Impuesto General a las Rentas', 18.00, 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');

-- ----------------------------
-- Table structure for ubigeos
-- ----------------------------
DROP TABLE IF EXISTS `ubigeos`;
CREATE TABLE `ubigeos`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `department_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2074 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ubigeos
-- ----------------------------
INSERT INTO `ubigeos` VALUES (1, '01', '00', '00', 'Amazonas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2, '01', '01', '00', 'Chachapoyas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (3, '01', '01', '01', 'Chachapoyas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (4, '01', '01', '02', 'Asuncion', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (5, '01', '01', '03', 'Balsas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (6, '01', '01', '04', 'Cheto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (7, '01', '01', '05', 'Chiliquin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (8, '01', '01', '06', 'Chuquibamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (9, '01', '01', '07', 'Granada', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (10, '01', '01', '08', 'Huancas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (11, '01', '01', '09', 'La Jalca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (12, '01', '01', '10', 'Leimebamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (13, '01', '01', '11', 'Levanto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (14, '01', '01', '12', 'Magdalena', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (15, '01', '01', '13', 'Mariscal Castilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (16, '01', '01', '14', 'Molinopampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (17, '01', '01', '15', 'Montevideo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (18, '01', '01', '16', 'Olleros', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (19, '01', '01', '17', 'Quinjalca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (20, '01', '01', '18', 'San Francisco de Daguas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (21, '01', '01', '19', 'San Isidro de Maino', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (22, '01', '01', '20', 'Soloco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (23, '01', '01', '21', 'Sonche', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (24, '01', '02', '00', 'Bagua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (25, '01', '02', '01', 'Bagua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (26, '01', '02', '02', 'Aramango', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (27, '01', '02', '03', 'Copallin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (28, '01', '02', '04', 'El Parco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (29, '01', '02', '05', 'Imaza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (30, '01', '02', '06', 'La Peca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (31, '01', '03', '00', 'Bongara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (32, '01', '03', '01', 'Jumbilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (33, '01', '03', '02', 'Chisquilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (34, '01', '03', '03', 'Churuja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (35, '01', '03', '04', 'Corosha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (36, '01', '03', '05', 'Cuispes', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (37, '01', '03', '06', 'Florida', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (38, '01', '03', '07', 'Jazán', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (39, '01', '03', '08', 'Recta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (40, '01', '03', '09', 'San Carlos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (41, '01', '03', '10', 'Shipasbamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (42, '01', '03', '11', 'Valera', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (43, '01', '03', '12', 'Yambrasbamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (44, '01', '04', '00', 'Condorcanqui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (45, '01', '04', '01', 'Nieva', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (46, '01', '04', '02', 'El Cenepa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (47, '01', '04', '03', 'Rio Santiago', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (48, '01', '05', '00', 'Luya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (49, '01', '05', '01', 'Lamud', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (50, '01', '05', '02', 'Camporredondo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (51, '01', '05', '03', 'Cocabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (52, '01', '05', '04', 'Colcamar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (53, '01', '05', '05', 'Conila', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (54, '01', '05', '06', 'Inguilpata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (55, '01', '05', '07', 'Longuita', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (56, '01', '05', '08', 'Lonya Chico', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (57, '01', '05', '09', 'Luya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (58, '01', '05', '10', 'Luya Viejo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (59, '01', '05', '11', 'Maria', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (60, '01', '05', '12', 'Ocalli', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (61, '01', '05', '13', 'Ocumal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (62, '01', '05', '14', 'Pisuquia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (63, '01', '05', '15', 'Providencia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (64, '01', '05', '16', 'San Cristobal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (65, '01', '05', '17', 'San Francisco del Yeso', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (66, '01', '05', '18', 'San Jeronimo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (67, '01', '05', '19', 'San Juan de Lopecancha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (68, '01', '05', '20', 'Santa Catalina', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (69, '01', '05', '21', 'Santo Tomas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (70, '01', '05', '22', 'Tingo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (71, '01', '05', '23', 'Trita', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (72, '01', '06', '00', 'Rodriguez de Mendoza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (73, '01', '06', '01', 'San Nicolas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (74, '01', '06', '02', 'Chirimoto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (75, '01', '06', '03', 'Cochamal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (76, '01', '06', '04', 'Huambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (77, '01', '06', '05', 'Limabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (78, '01', '06', '06', 'Longar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (79, '01', '06', '07', 'Mariscal Benavides', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (80, '01', '06', '08', 'Milpuc', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (81, '01', '06', '09', 'Omia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (82, '01', '06', '10', 'Santa Rosa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (83, '01', '06', '11', 'Totora', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (84, '01', '06', '12', 'Vista Alegre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (85, '01', '07', '00', 'Utcubamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (86, '01', '07', '01', 'Bagua Grande', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (87, '01', '07', '02', 'Cajaruro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (88, '01', '07', '03', 'Cumba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (89, '01', '07', '04', 'El Milagro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (90, '01', '07', '05', 'Jamalca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (91, '01', '07', '06', 'Lonya Grande', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (92, '01', '07', '07', 'Yamon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (93, '02', '00', '00', 'Ancash', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (94, '02', '01', '00', 'Huaraz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (95, '02', '01', '01', 'Huaraz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (96, '02', '01', '02', 'Cochabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (97, '02', '01', '03', 'Colcabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (98, '02', '01', '04', 'Huanchay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (99, '02', '01', '05', 'Independencia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (100, '02', '01', '06', 'Jangas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (101, '02', '01', '07', 'La Libertad', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (102, '02', '01', '08', 'Olleros', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (103, '02', '01', '09', 'Pampas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (104, '02', '01', '10', 'Pariacoto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (105, '02', '01', '11', 'Pira', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (106, '02', '01', '12', 'Tarica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (107, '02', '02', '00', 'Aija', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (108, '02', '02', '01', 'Aija', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (109, '02', '02', '02', 'Coris', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (110, '02', '02', '03', 'Huacllan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (111, '02', '02', '04', 'La Merced', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (112, '02', '02', '05', 'Succha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (113, '02', '03', '00', 'Antonio Raymondi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (114, '02', '03', '01', 'Llamellin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (115, '02', '03', '02', 'Aczo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (116, '02', '03', '03', 'Chaccho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (117, '02', '03', '04', 'Chingas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (118, '02', '03', '05', 'Mirgas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (119, '02', '03', '06', 'San Juan de Rontoy', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (120, '02', '04', '00', 'Asuncion', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (121, '02', '04', '01', 'Chacas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (122, '02', '04', '02', 'Acochaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (123, '02', '05', '00', 'Bolognesi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (124, '02', '05', '01', 'Chiquian', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (125, '02', '05', '02', 'Abelardo Pardo Lezameta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (126, '02', '05', '03', 'Antonio Raymondi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (127, '02', '05', '04', 'Aquia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (128, '02', '05', '05', 'Cajacay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (129, '02', '05', '06', 'Canis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (130, '02', '05', '07', 'Colquioc', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (131, '02', '05', '08', 'Huallanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (132, '02', '05', '09', 'Huasta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (133, '02', '05', '10', 'Huayllacayan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (134, '02', '05', '11', 'La Primavera', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (135, '02', '05', '12', 'Mangas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (136, '02', '05', '13', 'Pacllon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (137, '02', '05', '14', 'San Miguel de Corpanqui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (138, '02', '05', '15', 'Ticllos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (139, '02', '06', '00', 'Carhuaz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (140, '02', '06', '01', 'Carhuaz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (141, '02', '06', '02', 'Acopampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (142, '02', '06', '03', 'Amashca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (143, '02', '06', '04', 'Anta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (144, '02', '06', '05', 'Ataquero', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (145, '02', '06', '06', 'Marcara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (146, '02', '06', '07', 'Pariahuanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (147, '02', '06', '08', 'San Miguel de Aco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (148, '02', '06', '09', 'Shilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (149, '02', '06', '10', 'Tinco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (150, '02', '06', '11', 'Yungar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (151, '02', '07', '00', 'Carlos Fermin Fitzcarrald', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (152, '02', '07', '01', 'San Luis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (153, '02', '07', '02', 'San Nicolas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (154, '02', '07', '03', 'Yauya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (155, '02', '08', '00', 'Casma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (156, '02', '08', '01', 'Casma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (157, '02', '08', '02', 'Buena Vista Alta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (158, '02', '08', '03', 'Comandante Noel', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (159, '02', '08', '04', 'Yautan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (160, '02', '09', '00', 'Corongo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (161, '02', '09', '01', 'Corongo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (162, '02', '09', '02', 'Aco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (163, '02', '09', '03', 'Bambas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (164, '02', '09', '04', 'Cusca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (165, '02', '09', '05', 'La Pampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (166, '02', '09', '06', 'Yanac', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (167, '02', '09', '07', 'Yupan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (168, '02', '10', '00', 'Huari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (169, '02', '10', '01', 'Huari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (170, '02', '10', '02', 'Anra', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (171, '02', '10', '03', 'Cajay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (172, '02', '10', '04', 'Chavin de Huantar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (173, '02', '10', '05', 'Huacachi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (174, '02', '10', '06', 'Huacchis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (175, '02', '10', '07', 'Huachis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (176, '02', '10', '08', 'Huantar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (177, '02', '10', '09', 'Masin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (178, '02', '10', '10', 'Paucas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (179, '02', '10', '11', 'Ponto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (180, '02', '10', '12', 'Rahuapampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (181, '02', '10', '13', 'Rapayan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (182, '02', '10', '14', 'San Marcos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (183, '02', '10', '15', 'San Pedro de Chana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (184, '02', '10', '16', 'Uco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (185, '02', '11', '00', 'Huarmey', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (186, '02', '11', '01', 'Huarmey', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (187, '02', '11', '02', 'Cochapeti', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (188, '02', '11', '03', 'Culebras', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (189, '02', '11', '04', 'Huayan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (190, '02', '11', '05', 'Malvas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (191, '02', '12', '00', 'Huaylas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (192, '02', '12', '01', 'Caraz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (193, '02', '12', '02', 'Huallanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (194, '02', '12', '03', 'Huata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (195, '02', '12', '04', 'Huaylas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (196, '02', '12', '05', 'Mato', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (197, '02', '12', '06', 'Pamparomas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (198, '02', '12', '07', 'Pueblo Libre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (199, '02', '12', '08', 'Santa Cruz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (200, '02', '12', '09', 'Santo Toribio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (201, '02', '12', '10', 'Yuracmarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (202, '02', '13', '00', 'Mariscal Luzuriaga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (203, '02', '13', '01', 'Piscobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (204, '02', '13', '02', 'Casca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (205, '02', '13', '03', 'Eleazar Guzman Barron', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (206, '02', '13', '04', 'Fidel Olivas Escudero', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (207, '02', '13', '05', 'Llama', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (208, '02', '13', '06', 'Llumpa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (209, '02', '13', '07', 'Lucma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (210, '02', '13', '08', 'Musga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (211, '02', '14', '00', 'Ocros', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (212, '02', '14', '01', 'Ocros', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (213, '02', '14', '02', 'Acas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (214, '02', '14', '03', 'Cajamarquilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (215, '02', '14', '04', 'Carhuapampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (216, '02', '14', '05', 'Cochas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (217, '02', '14', '06', 'Congas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (218, '02', '14', '07', 'Llipa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (219, '02', '14', '08', 'San Cristobal de Rajan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (220, '02', '14', '09', 'San Pedro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (221, '02', '14', '10', 'Santiago de Chilcas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (222, '02', '15', '00', 'Pallasca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (223, '02', '15', '01', 'Cabana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (224, '02', '15', '02', 'Bolognesi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (225, '02', '15', '03', 'Conchucos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (226, '02', '15', '04', 'Huacaschuque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (227, '02', '15', '05', 'Huandoval', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (228, '02', '15', '06', 'Lacabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (229, '02', '15', '07', 'Llapo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (230, '02', '15', '08', 'Pallasca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (231, '02', '15', '09', 'Pampas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (232, '02', '15', '10', 'Santa Rosa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (233, '02', '15', '11', 'Tauca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (234, '02', '16', '00', 'Pomabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (235, '02', '16', '01', 'Pomabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (236, '02', '16', '02', 'Huayllan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (237, '02', '16', '03', 'Parobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (238, '02', '16', '04', 'Quinuabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (239, '02', '17', '00', 'Recuay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (240, '02', '17', '01', 'Recuay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (241, '02', '17', '02', 'Catac', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (242, '02', '17', '03', 'Cotaparaco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (243, '02', '17', '04', 'Huayllapampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (244, '02', '17', '05', 'Llacllin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (245, '02', '17', '06', 'Marca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (246, '02', '17', '07', 'Pampas Chico', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (247, '02', '17', '08', 'Pararin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (248, '02', '17', '09', 'Tapacocha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (249, '02', '17', '10', 'Ticapampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (250, '02', '18', '00', 'Santa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (251, '02', '18', '01', 'Chimbote', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (252, '02', '18', '02', 'Caceres del Peru', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (253, '02', '18', '03', 'Coishco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (254, '02', '18', '04', 'Macate', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (255, '02', '18', '05', 'Moro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (256, '02', '18', '06', 'Nepeña', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (257, '02', '18', '07', 'Samanco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (258, '02', '18', '08', 'Santa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (259, '02', '18', '09', 'Nuevo Chimbote', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (260, '02', '19', '00', 'Sihuas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (261, '02', '19', '01', 'Sihuas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (262, '02', '19', '02', 'Acobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (263, '02', '19', '03', 'Alfonso Ugarte', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (264, '02', '19', '04', 'Cashapampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (265, '02', '19', '05', 'Chingalpo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (266, '02', '19', '06', 'Huayllabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (267, '02', '19', '07', 'Quiches', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (268, '02', '19', '08', 'Ragash', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (269, '02', '19', '09', 'San Juan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (270, '02', '19', '10', 'Sicsibamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (271, '02', '20', '00', 'Yungay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (272, '02', '20', '01', 'Yungay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (273, '02', '20', '02', 'Cascapara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (274, '02', '20', '03', 'Mancos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (275, '02', '20', '04', 'Matacoto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (276, '02', '20', '05', 'Quillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (277, '02', '20', '06', 'Ranrahirca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (278, '02', '20', '07', 'Shupluy', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (279, '02', '20', '08', 'Yanama', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (280, '03', '00', '00', 'Apurimac', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (281, '03', '01', '00', 'Abancay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (282, '03', '01', '01', 'Abancay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (283, '03', '01', '02', 'Chacoche', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (284, '03', '01', '03', 'Circa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (285, '03', '01', '04', 'Curahuasi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (286, '03', '01', '05', 'Huanipaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (287, '03', '01', '06', 'Lambrama', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (288, '03', '01', '07', 'Pichirhua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (289, '03', '01', '08', 'San Pedro de Cachora', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (290, '03', '01', '09', 'Tamburco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (291, '03', '02', '00', 'Andahuaylas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (292, '03', '02', '01', 'Andahuaylas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (293, '03', '02', '02', 'Andarapa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (294, '03', '02', '03', 'Chiara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (295, '03', '02', '04', 'Huancarama', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (296, '03', '02', '05', 'Huancaray', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (297, '03', '02', '06', 'Huayana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (298, '03', '02', '07', 'Kishuara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (299, '03', '02', '08', 'Pacobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (300, '03', '02', '09', 'Pacucha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (301, '03', '02', '10', 'Pampachiri', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (302, '03', '02', '11', 'Pomacocha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (303, '03', '02', '12', 'San Antonio de Cachi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (304, '03', '02', '13', 'San Jeronimo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (305, '03', '02', '14', 'San Miguel de Chaccrampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (306, '03', '02', '15', 'Santa Maria de Chicmo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (307, '03', '02', '16', 'Talavera', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (308, '03', '02', '17', 'Tumay Huaraca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (309, '03', '02', '18', 'Turpo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (310, '03', '02', '19', 'Kaquiabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (311, '03', '03', '00', 'Antabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (312, '03', '03', '01', 'Antabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (313, '03', '03', '02', 'El Oro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (314, '03', '03', '03', 'Huaquirca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (315, '03', '03', '04', 'Juan Espinoza Medrano', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (316, '03', '03', '05', 'Oropesa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (317, '03', '03', '06', 'Pachaconas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (318, '03', '03', '07', 'Sabaino', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (319, '03', '04', '00', 'Aymaraes', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (320, '03', '04', '01', 'Chalhuanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (321, '03', '04', '02', 'Capaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (322, '03', '04', '03', 'Caraybamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (323, '03', '04', '04', 'Chapimarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (324, '03', '04', '05', 'Colcabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (325, '03', '04', '06', 'Cotaruse', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (326, '03', '04', '07', 'Huayllo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (327, '03', '04', '08', 'Justo Apu Sahuaraura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (328, '03', '04', '09', 'Lucre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (329, '03', '04', '10', 'Pocohuanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (330, '03', '04', '11', 'San Juan de Chacña', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (331, '03', '04', '12', 'Sañayca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (332, '03', '04', '13', 'Soraya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (333, '03', '04', '14', 'Tapairihua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (334, '03', '04', '15', 'Tintay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (335, '03', '04', '16', 'Toraya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (336, '03', '04', '17', 'Yanaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (337, '03', '05', '00', 'Cotabambas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (338, '03', '05', '01', 'Tambobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (339, '03', '05', '02', 'Cotabambas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (340, '03', '05', '03', 'Coyllurqui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (341, '03', '05', '04', 'Haquira', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (342, '03', '05', '05', 'Mara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (343, '03', '05', '06', 'Challhuahuacho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (344, '03', '06', '00', 'Chincheros', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (345, '03', '06', '01', 'Chincheros', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (346, '03', '06', '02', 'Anco-Huallo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (347, '03', '06', '03', 'Cocharcas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (348, '03', '06', '04', 'Huaccana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (349, '03', '06', '05', 'Ocobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (350, '03', '06', '06', 'Ongoy', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (351, '03', '06', '07', 'Uranmarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (352, '03', '06', '08', 'Ranracancha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (353, '03', '07', '00', 'Grau', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (354, '03', '07', '01', 'Chuquibambilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (355, '03', '07', '02', 'Curpahuasi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (356, '03', '07', '03', 'Gamarra', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (357, '03', '07', '04', 'Huayllati', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (358, '03', '07', '05', 'Mamara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (359, '03', '07', '06', 'Micaela Bastidas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (360, '03', '07', '07', 'Pataypampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (361, '03', '07', '08', 'Progreso', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (362, '03', '07', '09', 'San Antonio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (363, '03', '07', '10', 'Santa Rosa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (364, '03', '07', '11', 'Turpay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (365, '03', '07', '12', 'Vilcabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (366, '03', '07', '13', 'Virundo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (367, '03', '07', '14', 'Curasco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (368, '04', '00', '00', 'Arequipa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (369, '04', '01', '00', 'Arequipa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (370, '04', '01', '01', 'Arequipa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (371, '04', '01', '02', 'Alto Selva Alegre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (372, '04', '01', '03', 'Cayma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (373, '04', '01', '04', 'Cerro Colorado', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (374, '04', '01', '05', 'Characato', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (375, '04', '01', '06', 'Chiguata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (376, '04', '01', '07', 'Jacobo Hunter', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (377, '04', '01', '08', 'La Joya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (378, '04', '01', '09', 'Mariano Melgar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (379, '04', '01', '10', 'Miraflores', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (380, '04', '01', '11', 'Mollebaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (381, '04', '01', '12', 'Paucarpata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (382, '04', '01', '13', 'Pocsi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (383, '04', '01', '14', 'Polobaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (384, '04', '01', '15', 'Quequeña', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (385, '04', '01', '16', 'Sabandia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (386, '04', '01', '17', 'Sachaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (387, '04', '01', '18', 'San Juan de Siguas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (388, '04', '01', '19', 'San Juan de Tarucani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (389, '04', '01', '20', 'Santa Isabel de Siguas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (390, '04', '01', '21', 'Santa Rita de Siguas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (391, '04', '01', '22', 'Socabaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (392, '04', '01', '23', 'Tiabaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (393, '04', '01', '24', 'Uchumayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (394, '04', '01', '25', 'Vitor', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (395, '04', '01', '26', 'Yanahuara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (396, '04', '01', '27', 'Yarabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (397, '04', '01', '28', 'Yura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (398, '04', '01', '29', 'Jose Luis Bustamante y Rivero', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (399, '04', '02', '00', 'Camana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (400, '04', '02', '01', 'Camana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (401, '04', '02', '02', 'Jose Maria Quimper', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (402, '04', '02', '03', 'Mariano Nicolas Valcarcel', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (403, '04', '02', '04', 'Mariscal Caceres', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (404, '04', '02', '05', 'Nicolas de Pierola', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (405, '04', '02', '06', 'Ocoña', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (406, '04', '02', '07', 'Quilca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (407, '04', '02', '08', 'Samuel Pastor', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (408, '04', '03', '00', 'Caraveli', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (409, '04', '03', '01', 'Caraveli', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (410, '04', '03', '02', 'Acari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (411, '04', '03', '03', 'Atico', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (412, '04', '03', '04', 'Atiquipa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (413, '04', '03', '05', 'Bella Union', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (414, '04', '03', '06', 'Cahuacho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (415, '04', '03', '07', 'Chala', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (416, '04', '03', '08', 'Chaparra', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (417, '04', '03', '09', 'Huanuhuanu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (418, '04', '03', '10', 'Jaqui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (419, '04', '03', '11', 'Lomas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (420, '04', '03', '12', 'Quicacha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (421, '04', '03', '13', 'Yauca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (422, '04', '04', '00', 'Castilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (423, '04', '04', '01', 'Aplao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (424, '04', '04', '02', 'Andagua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (425, '04', '04', '03', 'Ayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (426, '04', '04', '04', 'Chachas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (427, '04', '04', '05', 'Chilcaymarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (428, '04', '04', '06', 'Choco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (429, '04', '04', '07', 'Huancarqui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (430, '04', '04', '08', 'Machaguay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (431, '04', '04', '09', 'Orcopampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (432, '04', '04', '10', 'Pampacolca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (433, '04', '04', '11', 'Tipan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (434, '04', '04', '12', 'Uñon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (435, '04', '04', '13', 'Uraca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (436, '04', '04', '14', 'Viraco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (437, '04', '05', '00', 'Caylloma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (438, '04', '05', '01', 'Chivay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (439, '04', '05', '02', 'Achoma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (440, '04', '05', '03', 'Cabanaconde', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (441, '04', '05', '04', 'Callalli', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (442, '04', '05', '05', 'Caylloma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (443, '04', '05', '06', 'Coporaque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (444, '04', '05', '07', 'Huambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (445, '04', '05', '08', 'Huanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (446, '04', '05', '09', 'Ichupampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (447, '04', '05', '10', 'Lari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (448, '04', '05', '11', 'Lluta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (449, '04', '05', '12', 'Maca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (450, '04', '05', '13', 'Madrigal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (451, '04', '05', '14', 'San Antonio de Chuca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (452, '04', '05', '15', 'Sibayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (453, '04', '05', '16', 'Tapay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (454, '04', '05', '17', 'Tisco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (455, '04', '05', '18', 'Tuti', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (456, '04', '05', '19', 'Yanque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (457, '04', '05', '20', 'Majes', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (458, '04', '06', '00', 'Condesuyos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (459, '04', '06', '01', 'Chuquibamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (460, '04', '06', '02', 'Andaray', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (461, '04', '06', '03', 'Cayarani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (462, '04', '06', '04', 'Chichas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (463, '04', '06', '05', 'Iray', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (464, '04', '06', '06', 'Rio Grande', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (465, '04', '06', '07', 'Salamanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (466, '04', '06', '08', 'Yanaquihua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (467, '04', '07', '00', 'Islay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (468, '04', '07', '01', 'Mollendo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (469, '04', '07', '02', 'Cocachacra', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (470, '04', '07', '03', 'Dean Valdivia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (471, '04', '07', '04', 'Islay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (472, '04', '07', '05', 'Mejia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (473, '04', '07', '06', 'Punta de Bombon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (474, '04', '08', '00', 'La Union', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (475, '04', '08', '01', 'Cotahuasi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (476, '04', '08', '02', 'Alca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (477, '04', '08', '03', 'Charcana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (478, '04', '08', '04', 'Huaynacotas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (479, '04', '08', '05', 'Pampamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (480, '04', '08', '06', 'Puyca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (481, '04', '08', '07', 'Quechualla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (482, '04', '08', '08', 'Sayla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (483, '04', '08', '09', 'Tauria', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (484, '04', '08', '10', 'Tomepampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (485, '04', '08', '11', 'Toro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (486, '05', '00', '00', 'Ayacucho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (487, '05', '01', '00', 'Huamanga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (488, '05', '01', '01', 'Ayacucho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (489, '05', '01', '02', 'Acocro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (490, '05', '01', '03', 'Acos Vinchos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (491, '05', '01', '04', 'Carmen Alto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (492, '05', '01', '05', 'Chiara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (493, '05', '01', '06', 'Ocros', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (494, '05', '01', '07', 'Pacaycasa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (495, '05', '01', '08', 'Quinua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (496, '05', '01', '09', 'San Jose de Ticllas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (497, '05', '01', '10', 'San Juan Bautista', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (498, '05', '01', '11', 'Santiago de Pischa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (499, '05', '01', '12', 'Socos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (500, '05', '01', '13', 'Tambillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (501, '05', '01', '14', 'Vinchos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (502, '05', '01', '15', 'Jesús Nazareno', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (503, '05', '01', '16', 'Andrés Avelino Cáceres Dorregay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (504, '05', '02', '00', 'Cangallo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (505, '05', '02', '01', 'Cangallo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (506, '05', '02', '02', 'Chuschi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (507, '05', '02', '03', 'Los Morochucos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (508, '05', '02', '04', 'Maria Parado de Bellido', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (509, '05', '02', '05', 'Paras', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (510, '05', '02', '06', 'Totos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (511, '05', '03', '00', 'Huanca Sancos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (512, '05', '03', '01', 'Sancos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (513, '05', '03', '02', 'Carapo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (514, '05', '03', '03', 'Sacsamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (515, '05', '03', '04', 'Santiago de Lucanamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (516, '05', '04', '00', 'Huanta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (517, '05', '04', '01', 'Huanta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (518, '05', '04', '02', 'Ayahuanco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (519, '05', '04', '03', 'Huamanguilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (520, '05', '04', '04', 'Iguain', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (521, '05', '04', '05', 'Luricocha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (522, '05', '04', '06', 'Santillana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (523, '05', '04', '07', 'Sivia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (524, '05', '04', '08', 'Llochegua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (525, '05', '04', '09', 'Canayre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (526, '05', '04', '10', 'Uchuraccay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (527, '05', '04', '11', 'Pucacolpa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (528, '05', '05', '00', 'La Mar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (529, '05', '05', '01', 'San Miguel', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (530, '05', '05', '02', 'Anco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (531, '05', '05', '03', 'Ayna', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (532, '05', '05', '04', 'Chilcas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (533, '05', '05', '05', 'Chungui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (534, '05', '05', '06', 'Luis Carranza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (535, '05', '05', '07', 'Santa Rosa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (536, '05', '05', '08', 'Tambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (537, '05', '05', '09', 'Samugari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (538, '05', '05', '10', 'Anchihuay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (539, '05', '06', '00', 'Lucanas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (540, '05', '06', '01', 'Puquio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (541, '05', '06', '02', 'Aucara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (542, '05', '06', '03', 'Cabana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (543, '05', '06', '04', 'Carmen Salcedo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (544, '05', '06', '05', 'Chaviña', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (545, '05', '06', '06', 'Chipao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (546, '05', '06', '07', 'Huac-Huas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (547, '05', '06', '08', 'Laramate', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (548, '05', '06', '09', 'Leoncio Prado', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (549, '05', '06', '10', 'Llauta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (550, '05', '06', '11', 'Lucanas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (551, '05', '06', '12', 'Ocaña', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (552, '05', '06', '13', 'Otoca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (553, '05', '06', '14', 'Saisa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (554, '05', '06', '15', 'San Cristobal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (555, '05', '06', '16', 'San Juan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (556, '05', '06', '17', 'San Pedro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (557, '05', '06', '18', 'San Pedro de Palco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (558, '05', '06', '19', 'Sancos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (559, '05', '06', '20', 'Santa Ana de Huaycahuacho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (560, '05', '06', '21', 'Santa Lucia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (561, '05', '07', '00', 'Parinacochas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (562, '05', '07', '01', 'Coracora', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (563, '05', '07', '02', 'Chumpi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (564, '05', '07', '03', 'Coronel Castañeda', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (565, '05', '07', '04', 'Pacapausa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (566, '05', '07', '05', 'Pullo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (567, '05', '07', '06', 'Puyusca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (568, '05', '07', '07', 'San Francisco de Ravacayco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (569, '05', '07', '08', 'Upahuacho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (570, '05', '08', '00', 'Paucar del Sara Sara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (571, '05', '08', '01', 'Pausa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (572, '05', '08', '02', 'Colta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (573, '05', '08', '03', 'Corculla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (574, '05', '08', '04', 'Lampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (575, '05', '08', '05', 'Marcabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (576, '05', '08', '06', 'Oyolo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (577, '05', '08', '07', 'Pararca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (578, '05', '08', '08', 'San Javier de Alpabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (579, '05', '08', '09', 'San Jose de Ushua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (580, '05', '08', '10', 'Sara Sara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (581, '05', '09', '00', 'Sucre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (582, '05', '09', '01', 'Querobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (583, '05', '09', '02', 'Belen', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (584, '05', '09', '03', 'Chalcos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (585, '05', '09', '04', 'Chilcayoc', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (586, '05', '09', '05', 'Huacaña', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (587, '05', '09', '06', 'Morcolla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (588, '05', '09', '07', 'Paico', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (589, '05', '09', '08', 'San Pedro de Larcay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (590, '05', '09', '09', 'San Salvador de Quije', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (591, '05', '09', '10', 'Santiago de Paucaray', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (592, '05', '09', '11', 'Soras', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (593, '05', '10', '00', 'Victor Fajardo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (594, '05', '10', '01', 'Huancapi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (595, '05', '10', '02', 'Alcamenca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (596, '05', '10', '03', 'Apongo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (597, '05', '10', '04', 'Asquipata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (598, '05', '10', '05', 'Canaria', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (599, '05', '10', '06', 'Cayara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (600, '05', '10', '07', 'Colca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (601, '05', '10', '08', 'Huamanquiquia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (602, '05', '10', '09', 'Huancaraylla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (603, '05', '10', '10', 'Huaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (604, '05', '10', '11', 'Sarhua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (605, '05', '10', '12', 'Vilcanchos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (606, '05', '11', '00', 'Vilcas Huaman', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (607, '05', '11', '01', 'Vilcas Huaman', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (608, '05', '11', '02', 'Accomarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (609, '05', '11', '03', 'Carhuanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (610, '05', '11', '04', 'Concepcion', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (611, '05', '11', '05', 'Huambalpa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (612, '05', '11', '06', 'Independencia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (613, '05', '11', '07', 'Saurama', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (614, '05', '11', '08', 'Vischongo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (615, '06', '00', '00', 'Cajamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (616, '06', '01', '00', 'Cajamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (617, '06', '01', '01', 'Cajamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (618, '06', '01', '02', 'Asuncion', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (619, '06', '01', '03', 'Chetilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (620, '06', '01', '04', 'Cospan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (621, '06', '01', '05', 'Encañada', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (622, '06', '01', '06', 'Jesus', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (623, '06', '01', '07', 'Llacanora', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (624, '06', '01', '08', 'Los Baños del Inca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (625, '06', '01', '09', 'Magdalena', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (626, '06', '01', '10', 'Matara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (627, '06', '01', '11', 'Namora', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (628, '06', '01', '12', 'San Juan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (629, '06', '02', '00', 'Cajabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (630, '06', '02', '01', 'Cajabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (631, '06', '02', '02', 'Cachachi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (632, '06', '02', '03', 'Condebamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (633, '06', '02', '04', 'Sitacocha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (634, '06', '03', '00', 'Celendin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (635, '06', '03', '01', 'Celendin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (636, '06', '03', '02', 'Chumuch', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (637, '06', '03', '03', 'Cortegana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (638, '06', '03', '04', 'Huasmin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (639, '06', '03', '05', 'Jorge Chavez', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (640, '06', '03', '06', 'Jose Galvez', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (641, '06', '03', '07', 'Miguel Iglesias', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (642, '06', '03', '08', 'Oxamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (643, '06', '03', '09', 'Sorochuco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (644, '06', '03', '10', 'Sucre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (645, '06', '03', '11', 'Utco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (646, '06', '03', '12', 'La Libertad de Pallan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (647, '06', '04', '00', 'Chota', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (648, '06', '04', '01', 'Chota', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (649, '06', '04', '02', 'Anguia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (650, '06', '04', '03', 'Chadin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (651, '06', '04', '04', 'Chiguirip', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (652, '06', '04', '05', 'Chimban', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (653, '06', '04', '06', 'Choropampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (654, '06', '04', '07', 'Cochabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (655, '06', '04', '08', 'Conchan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (656, '06', '04', '09', 'Huambos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (657, '06', '04', '10', 'Lajas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (658, '06', '04', '11', 'Llama', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (659, '06', '04', '12', 'Miracosta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (660, '06', '04', '13', 'Paccha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (661, '06', '04', '14', 'Pion', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (662, '06', '04', '15', 'Querocoto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (663, '06', '04', '16', 'San Juan de Licupis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (664, '06', '04', '17', 'Tacabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (665, '06', '04', '18', 'Tocmoche', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (666, '06', '04', '19', 'Chalamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (667, '06', '05', '00', 'Contumaza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (668, '06', '05', '01', 'Contumaza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (669, '06', '05', '02', 'Chilete', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (670, '06', '05', '03', 'Cupisnique', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (671, '06', '05', '04', 'Guzmango', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (672, '06', '05', '05', 'San Benito', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (673, '06', '05', '06', 'Santa Cruz de Toled', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (674, '06', '05', '07', 'Tantarica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (675, '06', '05', '08', 'Yonan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (676, '06', '06', '00', 'Cutervo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (677, '06', '06', '01', 'Cutervo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (678, '06', '06', '02', 'Callayuc', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (679, '06', '06', '03', 'Choros', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (680, '06', '06', '04', 'Cujillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (681, '06', '06', '05', 'La Ramada', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (682, '06', '06', '06', 'Pimpingos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (683, '06', '06', '07', 'Querocotillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (684, '06', '06', '08', 'San Andres de Cutervo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (685, '06', '06', '09', 'San Juan de Cutervo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (686, '06', '06', '10', 'San Luis de Lucma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (687, '06', '06', '11', 'Santa Cruz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (688, '06', '06', '12', 'Santo Domingo de la Capilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (689, '06', '06', '13', 'Santo Tomas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (690, '06', '06', '14', 'Socota', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (691, '06', '06', '15', 'Toribio Casanova', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (692, '06', '07', '00', 'Hualgayoc', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (693, '06', '07', '01', 'Bambamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (694, '06', '07', '02', 'Chugur', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (695, '06', '07', '03', 'Hualgayoc', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (696, '06', '08', '00', 'Jaen', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (697, '06', '08', '01', 'Jaen', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (698, '06', '08', '02', 'Bellavista', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (699, '06', '08', '03', 'Chontali', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (700, '06', '08', '04', 'Colasay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (701, '06', '08', '05', 'Huabal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (702, '06', '08', '06', 'Las Pirias', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (703, '06', '08', '07', 'Pomahuaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (704, '06', '08', '08', 'Pucara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (705, '06', '08', '09', 'Sallique', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (706, '06', '08', '10', 'San Felipe', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (707, '06', '08', '11', 'San Jose del Alto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (708, '06', '08', '12', 'Santa Rosa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (709, '06', '09', '00', 'San Ignacio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (710, '06', '09', '01', 'San Ignacio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (711, '06', '09', '02', 'Chirinos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (712, '06', '09', '03', 'Huarango', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (713, '06', '09', '04', 'La Coipa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (714, '06', '09', '05', 'Namballe', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (715, '06', '09', '06', 'San Jose de Lourdes', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (716, '06', '09', '07', 'Tabaconas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (717, '06', '10', '00', 'San Marcos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (718, '06', '10', '01', 'Pedro Galvez', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (719, '06', '10', '02', 'Chancay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (720, '06', '10', '03', 'Eduardo Villanueva', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (721, '06', '10', '04', 'Gregorio Pita', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (722, '06', '10', '05', 'Ichocan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (723, '06', '10', '06', 'Jose Manuel Quiroz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (724, '06', '10', '07', 'Jose Sabogal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (725, '06', '11', '00', 'San Miguel', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (726, '06', '11', '01', 'San Miguel', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (727, '06', '11', '02', 'Bolivar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (728, '06', '11', '03', 'Calquis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (729, '06', '11', '04', 'Catilluc', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (730, '06', '11', '05', 'El Prado', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (731, '06', '11', '06', 'La Florida', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (732, '06', '11', '07', 'Llapa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (733, '06', '11', '08', 'Nanchoc', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (734, '06', '11', '09', 'Niepos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (735, '06', '11', '10', 'San Gregorio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (736, '06', '11', '11', 'San Silvestre de Cochan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (737, '06', '11', '12', 'Tongod', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (738, '06', '11', '13', 'Union Agua Blanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (739, '06', '12', '00', 'San Pablo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (740, '06', '12', '01', 'San Pablo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (741, '06', '12', '02', 'San Bernardino', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (742, '06', '12', '03', 'San Luis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (743, '06', '12', '04', 'Tumbaden', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (744, '06', '13', '00', 'Santa Cruz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (745, '06', '13', '01', 'Santa Cruz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (746, '06', '13', '02', 'Andabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (747, '06', '13', '03', 'Catache', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (748, '06', '13', '04', 'Chancaybaños', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (749, '06', '13', '05', 'La Esperanza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (750, '06', '13', '06', 'Ninabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (751, '06', '13', '07', 'Pulan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (752, '06', '13', '08', 'Saucepampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (753, '06', '13', '09', 'Sexi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (754, '06', '13', '10', 'Uticyacu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (755, '06', '13', '11', 'Yauyucan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (756, '07', '00', '00', 'Callao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (757, '07', '01', '00', 'Prov. Const. del Callao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (758, '07', '01', '01', 'Callao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (759, '07', '01', '02', 'Bellavista', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (760, '07', '01', '03', 'Carmen de la Legua Reynoso', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (761, '07', '01', '04', 'La Perla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (762, '07', '01', '05', 'La Punta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (763, '07', '01', '06', 'Ventanilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (764, '07', '01', '07', 'Mi Perú', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (765, '08', '00', '00', 'Cusco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (766, '08', '01', '00', 'Cusco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (767, '08', '01', '01', 'Cusco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (768, '08', '01', '02', 'Ccorca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (769, '08', '01', '03', 'Poroy', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (770, '08', '01', '04', 'San Jeronimo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (771, '08', '01', '05', 'San Sebastian', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (772, '08', '01', '06', 'Santiago', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (773, '08', '01', '07', 'Saylla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (774, '08', '01', '08', 'Wanchaq', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (775, '08', '02', '00', 'Acomayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (776, '08', '02', '01', 'Acomayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (777, '08', '02', '02', 'Acopia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (778, '08', '02', '03', 'Acos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (779, '08', '02', '04', 'Mosoc Llacta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (780, '08', '02', '05', 'Pomacanchi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (781, '08', '02', '06', 'Rondocan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (782, '08', '02', '07', 'Sangarara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (783, '08', '03', '00', 'Anta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (784, '08', '03', '01', 'Anta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (785, '08', '03', '02', 'Ancahuasi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (786, '08', '03', '03', 'Cachimayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (787, '08', '03', '04', 'Chinchaypujio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (788, '08', '03', '05', 'Huarocondo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (789, '08', '03', '06', 'Limatambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (790, '08', '03', '07', 'Mollepata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (791, '08', '03', '08', 'Pucyura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (792, '08', '03', '09', 'Zurite', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (793, '08', '04', '00', 'Calca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (794, '08', '04', '01', 'Calca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (795, '08', '04', '02', 'Coya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (796, '08', '04', '03', 'Lamay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (797, '08', '04', '04', 'Lares', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (798, '08', '04', '05', 'Pisac', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (799, '08', '04', '06', 'San Salvador', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (800, '08', '04', '07', 'Taray', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (801, '08', '04', '08', 'Yanatile', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (802, '08', '05', '00', 'Canas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (803, '08', '05', '01', 'Yanaoca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (804, '08', '05', '02', 'Checca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (805, '08', '05', '03', 'Kunturkanki', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (806, '08', '05', '04', 'Langui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (807, '08', '05', '05', 'Layo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (808, '08', '05', '06', 'Pampamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (809, '08', '05', '07', 'Quehue', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (810, '08', '05', '08', 'Tupac Amaru', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (811, '08', '06', '00', 'Canchis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (812, '08', '06', '01', 'Sicuani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (813, '08', '06', '02', 'Checacupe', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (814, '08', '06', '03', 'Combapata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (815, '08', '06', '04', 'Marangani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (816, '08', '06', '05', 'Pitumarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (817, '08', '06', '06', 'San Pablo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (818, '08', '06', '07', 'San Pedro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (819, '08', '06', '08', 'Tinta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (820, '08', '07', '00', 'Chumbivilcas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (821, '08', '07', '01', 'Santo Tomas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (822, '08', '07', '02', 'Capacmarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (823, '08', '07', '03', 'Chamaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (824, '08', '07', '04', 'Colquemarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (825, '08', '07', '05', 'Livitaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (826, '08', '07', '06', 'Llusco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (827, '08', '07', '07', 'Quiñota', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (828, '08', '07', '08', 'Velille', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (829, '08', '08', '00', 'Espinar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (830, '08', '08', '01', 'Espinar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (831, '08', '08', '02', 'Condoroma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (832, '08', '08', '03', 'Coporaque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (833, '08', '08', '04', 'Ocoruro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (834, '08', '08', '05', 'Pallpata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (835, '08', '08', '06', 'Pichigua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (836, '08', '08', '07', 'Suyckutambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (837, '08', '08', '08', 'Alto Pichigua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (838, '08', '09', '00', 'La Convencion', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (839, '08', '09', '01', 'Santa Ana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (840, '08', '09', '02', 'Echarate', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (841, '08', '09', '03', 'Huayopata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (842, '08', '09', '04', 'Maranura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (843, '08', '09', '05', 'Ocobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (844, '08', '09', '06', 'Quellouno', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (845, '08', '09', '07', 'Kimbiri', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (846, '08', '09', '08', 'Santa Teresa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (847, '08', '09', '09', 'Vilcabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (848, '08', '09', '10', 'Pichari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (849, '08', '09', '11', 'Inkawasi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (850, '08', '09', '12', 'Villa Virgen', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (851, '08', '10', '00', 'Paruro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (852, '08', '10', '01', 'Paruro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (853, '08', '10', '02', 'Accha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (854, '08', '10', '03', 'Ccapi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (855, '08', '10', '04', 'Colcha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (856, '08', '10', '05', 'Huanoquite', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (857, '08', '10', '06', 'Omacha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (858, '08', '10', '07', 'Paccaritambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (859, '08', '10', '08', 'Pillpinto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (860, '08', '10', '09', 'Yaurisque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (861, '08', '11', '00', 'Paucartambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (862, '08', '11', '01', 'Paucartambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (863, '08', '11', '02', 'Caicay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (864, '08', '11', '03', 'Challabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (865, '08', '11', '04', 'Colquepata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (866, '08', '11', '05', 'Huancarani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (867, '08', '11', '06', 'Kosñipata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (868, '08', '12', '00', 'Quispicanchi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (869, '08', '12', '01', 'Urcos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (870, '08', '12', '02', 'Andahuaylillas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (871, '08', '12', '03', 'Camanti', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (872, '08', '12', '04', 'Ccarhuayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (873, '08', '12', '05', 'Ccatca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (874, '08', '12', '06', 'Cusipata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (875, '08', '12', '07', 'Huaro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (876, '08', '12', '08', 'Lucre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (877, '08', '12', '09', 'Marcapata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (878, '08', '12', '10', 'Ocongate', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (879, '08', '12', '11', 'Oropesa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (880, '08', '12', '12', 'Quiquijana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (881, '08', '13', '00', 'Urubamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (882, '08', '13', '01', 'Urubamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (883, '08', '13', '02', 'Chinchero', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (884, '08', '13', '03', 'Huayllabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (885, '08', '13', '04', 'Machupicchu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (886, '08', '13', '05', 'Maras', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (887, '08', '13', '06', 'Ollantaytambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (888, '08', '13', '07', 'Yucay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (889, '09', '00', '00', 'Huancavelica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (890, '09', '01', '00', 'Huancavelica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (891, '09', '01', '01', 'Huancavelica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (892, '09', '01', '02', 'Acobambilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (893, '09', '01', '03', 'Acoria', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (894, '09', '01', '04', 'Conayca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (895, '09', '01', '05', 'Cuenca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (896, '09', '01', '06', 'Huachocolpa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (897, '09', '01', '07', 'Huayllahuara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (898, '09', '01', '08', 'Izcuchaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (899, '09', '01', '09', 'Laria', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (900, '09', '01', '10', 'Manta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (901, '09', '01', '11', 'Mariscal Caceres', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (902, '09', '01', '12', 'Moya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (903, '09', '01', '13', 'Nuevo Occoro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (904, '09', '01', '14', 'Palca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (905, '09', '01', '15', 'Pilchaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (906, '09', '01', '16', 'Vilca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (907, '09', '01', '17', 'Yauli', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (908, '09', '01', '18', 'Ascensión', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (909, '09', '01', '19', 'Huando', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (910, '09', '02', '00', 'Acobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (911, '09', '02', '01', 'Acobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (912, '09', '02', '02', 'Andabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (913, '09', '02', '03', 'Anta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (914, '09', '02', '04', 'Caja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (915, '09', '02', '05', 'Marcas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (916, '09', '02', '06', 'Paucara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (917, '09', '02', '07', 'Pomacocha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (918, '09', '02', '08', 'Rosario', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (919, '09', '03', '00', 'Angaraes', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (920, '09', '03', '01', 'Lircay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (921, '09', '03', '02', 'Anchonga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (922, '09', '03', '03', 'Callanmarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (923, '09', '03', '04', 'Ccochaccasa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (924, '09', '03', '05', 'Chincho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (925, '09', '03', '06', 'Congalla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (926, '09', '03', '07', 'Huanca-Huanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (927, '09', '03', '08', 'Huayllay Grande', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (928, '09', '03', '09', 'Julcamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (929, '09', '03', '10', 'San Antonio de Antaparco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (930, '09', '03', '11', 'Santo Tomas de Pata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (931, '09', '03', '12', 'Secclla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (932, '09', '04', '00', 'Castrovirreyna', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (933, '09', '04', '01', 'Castrovirreyna', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (934, '09', '04', '02', 'Arma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (935, '09', '04', '03', 'Aurahua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (936, '09', '04', '04', 'Capillas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (937, '09', '04', '05', 'Chupamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (938, '09', '04', '06', 'Cocas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (939, '09', '04', '07', 'Huachos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (940, '09', '04', '08', 'Huamatambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (941, '09', '04', '09', 'Mollepampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (942, '09', '04', '10', 'San Juan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (943, '09', '04', '11', 'Santa Ana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (944, '09', '04', '12', 'Tantara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (945, '09', '04', '13', 'Ticrapo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (946, '09', '05', '00', 'Churcampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (947, '09', '05', '01', 'Churcampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (948, '09', '05', '02', 'Anco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (949, '09', '05', '03', 'Chinchihuasi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (950, '09', '05', '04', 'El Carmen', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (951, '09', '05', '05', 'La Merced', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (952, '09', '05', '06', 'Locroja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (953, '09', '05', '07', 'Paucarbamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (954, '09', '05', '08', 'San Miguel de Mayocc', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (955, '09', '05', '09', 'San Pedro de Coris', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (956, '09', '05', '10', 'Pachamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (957, '09', '05', '11', 'Cosme', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (958, '09', '06', '00', 'Huaytara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (959, '09', '06', '01', 'Huaytara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (960, '09', '06', '02', 'Ayavi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (961, '09', '06', '03', 'Cordova', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (962, '09', '06', '04', 'Huayacundo Arma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (963, '09', '06', '05', 'Laramarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (964, '09', '06', '06', 'Ocoyo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (965, '09', '06', '07', 'Pilpichaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (966, '09', '06', '08', 'Querco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (967, '09', '06', '09', 'Quito-Arma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (968, '09', '06', '10', 'San Antonio de Cusicancha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (969, '09', '06', '11', 'San Francisco de Sangayaico', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (970, '09', '06', '12', 'San Isidro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (971, '09', '06', '13', 'Santiago de Chocorvos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (972, '09', '06', '14', 'Santiago de Quirahuara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (973, '09', '06', '15', 'Santo Domingo de Capillas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (974, '09', '06', '16', 'Tambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (975, '09', '07', '00', 'Tayacaja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (976, '09', '07', '01', 'Pampas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (977, '09', '07', '02', 'Acostambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (978, '09', '07', '03', 'Acraquia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (979, '09', '07', '04', 'Ahuaycha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (980, '09', '07', '05', 'Colcabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (981, '09', '07', '06', 'Daniel Hernandez', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (982, '09', '07', '07', 'Huachocolpa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (983, '09', '07', '09', 'Huaribamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (984, '09', '07', '10', 'Ñahuimpuquio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (985, '09', '07', '11', 'Pazos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (986, '09', '07', '13', 'Quishuar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (987, '09', '07', '14', 'Salcabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (988, '09', '07', '15', 'Salcahuasi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (989, '09', '07', '16', 'San Marcos de Rocchac', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (990, '09', '07', '17', 'Surcubamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (991, '09', '07', '18', 'Tintay Puncu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (992, '10', '00', '00', 'Huanuco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (993, '10', '01', '00', 'Huanuco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (994, '10', '01', '01', 'Huanuco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (995, '10', '01', '02', 'Amarilis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (996, '10', '01', '03', 'Chinchao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (997, '10', '01', '04', 'Churubamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (998, '10', '01', '05', 'Margos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (999, '10', '01', '06', 'Quisqui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1000, '10', '01', '07', 'San Francisco de Cayran', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1001, '10', '01', '08', 'San Pedro de Chaulan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1002, '10', '01', '09', 'Santa Maria del Valle', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1003, '10', '01', '10', 'Yarumayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1004, '10', '01', '11', 'Pillco Marca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1005, '10', '01', '12', 'Yacus', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1006, '10', '02', '00', 'Ambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1007, '10', '02', '01', 'Ambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1008, '10', '02', '02', 'Cayna', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1009, '10', '02', '03', 'Colpas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1010, '10', '02', '04', 'Conchamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1011, '10', '02', '05', 'Huacar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1012, '10', '02', '06', 'San Francisco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1013, '10', '02', '07', 'San Rafael', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1014, '10', '02', '08', 'Tomay Kichwa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1015, '10', '03', '00', 'Dos de Mayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1016, '10', '03', '01', 'La Union', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1017, '10', '03', '07', 'Chuquis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1018, '10', '03', '11', 'Marias', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1019, '10', '03', '13', 'Pachas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1020, '10', '03', '16', 'Quivilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1021, '10', '03', '17', 'Ripan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1022, '10', '03', '21', 'Shunqui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1023, '10', '03', '22', 'Sillapata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1024, '10', '03', '23', 'Yanas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1025, '10', '04', '00', 'Huacaybamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1026, '10', '04', '01', 'Huacaybamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1027, '10', '04', '02', 'Canchabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1028, '10', '04', '03', 'Cochabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1029, '10', '04', '04', 'Pinra', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1030, '10', '05', '00', 'Huamalies', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1031, '10', '05', '01', 'Llata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1032, '10', '05', '02', 'Arancay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1033, '10', '05', '03', 'Chavin de Pariarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1034, '10', '05', '04', 'Jacas Grande', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1035, '10', '05', '05', 'Jircan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1036, '10', '05', '06', 'Miraflores', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1037, '10', '05', '07', 'Monzon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1038, '10', '05', '08', 'Punchao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1039, '10', '05', '09', 'Puños', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1040, '10', '05', '10', 'Singa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1041, '10', '05', '11', 'Tantamayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1042, '10', '06', '00', 'Leoncio Prado', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1043, '10', '06', '01', 'Rupa-Rupa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1044, '10', '06', '02', 'Daniel Alomias Robles', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1045, '10', '06', '03', 'Hermilio Valdizan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1046, '10', '06', '04', 'Jose Crespo y Castillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1047, '10', '06', '05', 'Luyando', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1048, '10', '06', '06', 'Mariano Damaso Beraun', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1049, '10', '07', '00', 'Marañon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1050, '10', '07', '01', 'Huacrachuco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1051, '10', '07', '02', 'Cholon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1052, '10', '07', '03', 'San Buenaventura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1053, '10', '08', '00', 'Pachitea', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1054, '10', '08', '01', 'Panao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1055, '10', '08', '02', 'Chaglla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1056, '10', '08', '03', 'Molino', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1057, '10', '08', '04', 'Umari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1058, '10', '09', '00', 'Puerto Inca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1059, '10', '09', '01', 'Puerto Inca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1060, '10', '09', '02', 'Codo del Pozuzo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1061, '10', '09', '03', 'Honoria', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1062, '10', '09', '04', 'Tournavista', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1063, '10', '09', '05', 'Yuyapichis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1064, '10', '10', '00', 'Lauricocha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1065, '10', '10', '01', 'Jesus', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1066, '10', '10', '02', 'Baños', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1067, '10', '10', '03', 'Jivia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1068, '10', '10', '04', 'Queropalca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1069, '10', '10', '05', 'Rondos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1070, '10', '10', '06', 'San Francisco de Asis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1071, '10', '10', '07', 'San Miguel de Cauri', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1072, '10', '11', '00', 'Yarowilca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1073, '10', '11', '01', 'Chavinillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1074, '10', '11', '02', 'Cahuac', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1075, '10', '11', '03', 'Chacabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1076, '10', '11', '04', 'Chupan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1077, '10', '11', '05', 'Jacas Chico', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1078, '10', '11', '06', 'Obas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1079, '10', '11', '07', 'Pampamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1080, '10', '11', '08', 'Choras', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1081, '11', '00', '00', 'Ica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1082, '11', '01', '00', 'Ica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1083, '11', '01', '01', 'Ica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1084, '11', '01', '02', 'La Tinguiña', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1085, '11', '01', '03', 'Los Aquijes', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1086, '11', '01', '04', 'Ocucaje', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1087, '11', '01', '05', 'Pachacutec', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1088, '11', '01', '06', 'Parcona', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1089, '11', '01', '07', 'Pueblo Nuevo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1090, '11', '01', '08', 'Salas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1091, '11', '01', '09', 'San Jose de los Molinos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1092, '11', '01', '10', 'San Juan Bautista', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1093, '11', '01', '11', 'Santiago', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1094, '11', '01', '12', 'Subtanjalla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1095, '11', '01', '13', 'Tate', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1096, '11', '01', '14', 'Yauca del Rosario', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1097, '11', '02', '00', 'Chincha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1098, '11', '02', '01', 'Chincha Alta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1099, '11', '02', '02', 'Alto Laran', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1100, '11', '02', '03', 'Chavin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1101, '11', '02', '04', 'Chincha Baja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1102, '11', '02', '05', 'El Carmen', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1103, '11', '02', '06', 'Grocio Prado', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1104, '11', '02', '07', 'Pueblo Nuevo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1105, '11', '02', '08', 'San Juan de Yanac', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1106, '11', '02', '09', 'San Pedro de Huacarpana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1107, '11', '02', '10', 'Sunampe', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1108, '11', '02', '11', 'Tambo de Mora', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1109, '11', '03', '00', 'Nazca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1110, '11', '03', '01', 'Nazca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1111, '11', '03', '02', 'Changuillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1112, '11', '03', '03', 'El Ingenio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1113, '11', '03', '04', 'Marcona', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1114, '11', '03', '05', 'Vista Alegre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1115, '11', '04', '00', 'Palpa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1116, '11', '04', '01', 'Palpa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1117, '11', '04', '02', 'Llipata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1118, '11', '04', '03', 'Rio Grande', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1119, '11', '04', '04', 'Santa Cruz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1120, '11', '04', '05', 'Tibillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1121, '11', '05', '00', 'Pisco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1122, '11', '05', '01', 'Pisco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1123, '11', '05', '02', 'Huancano', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1124, '11', '05', '03', 'Humay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1125, '11', '05', '04', 'Independencia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1126, '11', '05', '05', 'Paracas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1127, '11', '05', '06', 'San Andres', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1128, '11', '05', '07', 'San Clemente', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1129, '11', '05', '08', 'Tupac Amaru Inca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1130, '12', '00', '00', 'Junin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1131, '12', '01', '00', 'Huancayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1132, '12', '01', '01', 'Huancayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1133, '12', '01', '04', 'Carhuacallanga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1134, '12', '01', '05', 'Chacapampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1135, '12', '01', '06', 'Chicche', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1136, '12', '01', '07', 'Chilca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1137, '12', '01', '08', 'Chongos Alto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1138, '12', '01', '11', 'Chupuro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1139, '12', '01', '12', 'Colca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1140, '12', '01', '13', 'Cullhuas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1141, '12', '01', '14', 'El Tambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1142, '12', '01', '16', 'Huacrapuquio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1143, '12', '01', '17', 'Hualhuas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1144, '12', '01', '19', 'Huancan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1145, '12', '01', '20', 'Huasicancha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1146, '12', '01', '21', 'Huayucachi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1147, '12', '01', '22', 'Ingenio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1148, '12', '01', '24', 'Pariahuanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1149, '12', '01', '25', 'Pilcomayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1150, '12', '01', '26', 'Pucara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1151, '12', '01', '27', 'Quichuay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1152, '12', '01', '28', 'Quilcas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1153, '12', '01', '29', 'San Agustin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1154, '12', '01', '30', 'San Jeronimo de Tunan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1155, '12', '01', '32', 'Saño', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1156, '12', '01', '33', 'Sapallanga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1157, '12', '01', '34', 'Sicaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1158, '12', '01', '35', 'Santo Domingo de Acobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1159, '12', '01', '36', 'Viques', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1160, '12', '02', '00', 'Concepcion', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1161, '12', '02', '01', 'Concepcion', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1162, '12', '02', '02', 'Aco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1163, '12', '02', '03', 'Andamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1164, '12', '02', '04', 'Chambara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1165, '12', '02', '05', 'Cochas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1166, '12', '02', '06', 'Comas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1167, '12', '02', '07', 'Heroinas Toledo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1168, '12', '02', '08', 'Manzanares', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1169, '12', '02', '09', 'Mariscal Castilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1170, '12', '02', '10', 'Matahuasi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1171, '12', '02', '11', 'Mito', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1172, '12', '02', '12', 'Nueve de Julio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1173, '12', '02', '13', 'Orcotuna', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1174, '12', '02', '14', 'San Jose de Quero', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1175, '12', '02', '15', 'Santa Rosa de Ocopa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1176, '12', '03', '00', 'Chanchamayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1177, '12', '03', '01', 'Chanchamayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1178, '12', '03', '02', 'Perene', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1179, '12', '03', '03', 'Pichanaqui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1180, '12', '03', '04', 'San Luis de Shuaro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1181, '12', '03', '05', 'San Ramon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1182, '12', '03', '06', 'Vitoc', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1183, '12', '04', '00', 'Jauja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1184, '12', '04', '01', 'Jauja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1185, '12', '04', '02', 'Acolla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1186, '12', '04', '03', 'Apata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1187, '12', '04', '04', 'Ataura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1188, '12', '04', '05', 'Canchayllo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1189, '12', '04', '06', 'Curicaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1190, '12', '04', '07', 'El Mantaro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1191, '12', '04', '08', 'Huamali', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1192, '12', '04', '09', 'Huaripampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1193, '12', '04', '10', 'Huertas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1194, '12', '04', '11', 'Janjaillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1195, '12', '04', '12', 'Julcan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1196, '12', '04', '13', 'Leonor Ordoñez', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1197, '12', '04', '14', 'Llocllapampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1198, '12', '04', '15', 'Marco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1199, '12', '04', '16', 'Masma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1200, '12', '04', '17', 'Masma Chicche', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1201, '12', '04', '18', 'Molinos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1202, '12', '04', '19', 'Monobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1203, '12', '04', '20', 'Muqui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1204, '12', '04', '21', 'Muquiyauyo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1205, '12', '04', '22', 'Paca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1206, '12', '04', '23', 'Paccha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1207, '12', '04', '24', 'Pancan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1208, '12', '04', '25', 'Parco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1209, '12', '04', '26', 'Pomacancha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1210, '12', '04', '27', 'Ricran', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1211, '12', '04', '28', 'San Lorenzo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1212, '12', '04', '29', 'San Pedro de Chunan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1213, '12', '04', '30', 'Sausa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1214, '12', '04', '31', 'Sincos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1215, '12', '04', '32', 'Tunan Marca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1216, '12', '04', '33', 'Yauli', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1217, '12', '04', '34', 'Yauyos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1218, '12', '05', '00', 'Junin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1219, '12', '05', '01', 'Junin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1220, '12', '05', '02', 'Carhuamayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1221, '12', '05', '03', 'Ondores', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1222, '12', '05', '04', 'Ulcumayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1223, '12', '06', '00', 'Satipo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1224, '12', '06', '01', 'Satipo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1225, '12', '06', '02', 'Coviriali', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1226, '12', '06', '03', 'Llaylla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1227, '12', '06', '04', 'Mazamari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1228, '12', '06', '05', 'Pampa Hermosa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1229, '12', '06', '06', 'Pangoa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1230, '12', '06', '07', 'Rio Negro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1231, '12', '06', '08', 'Rio Tambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1232, '12', '06', '99', 'Mazamari-Pangoa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1233, '12', '07', '00', 'Tarma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1234, '12', '07', '01', 'Tarma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1235, '12', '07', '02', 'Acobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1236, '12', '07', '03', 'Huaricolca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1237, '12', '07', '04', 'Huasahuasi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1238, '12', '07', '05', 'La Union', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1239, '12', '07', '06', 'Palca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1240, '12', '07', '07', 'Palcamayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1241, '12', '07', '08', 'San Pedro de Cajas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1242, '12', '07', '09', 'Tapo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1243, '12', '08', '00', 'Yauli', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1244, '12', '08', '01', 'La Oroya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1245, '12', '08', '02', 'Chacapalpa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1246, '12', '08', '03', 'Huay-Huay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1247, '12', '08', '04', 'Marcapomacocha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1248, '12', '08', '05', 'Morococha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1249, '12', '08', '06', 'Paccha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1250, '12', '08', '07', 'Santa Barbara de Carhuacayan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1251, '12', '08', '08', 'Santa Rosa de Sacco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1252, '12', '08', '09', 'Suitucancha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1253, '12', '08', '10', 'Yauli', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1254, '12', '09', '00', 'Chupaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1255, '12', '09', '01', 'Chupaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1256, '12', '09', '02', 'Ahuac', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1257, '12', '09', '03', 'Chongos Bajo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1258, '12', '09', '04', 'Huachac', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1259, '12', '09', '05', 'Huamancaca Chico', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1260, '12', '09', '06', 'San Juan de Iscos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1261, '12', '09', '07', 'San Juan de Jarpa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1262, '12', '09', '08', '3 de Diciembre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1263, '12', '09', '09', 'Yanacancha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1264, '13', '00', '00', 'La Libertad', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1265, '13', '01', '00', 'Trujillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1266, '13', '01', '01', 'Trujillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1267, '13', '01', '02', 'El Porvenir', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1268, '13', '01', '03', 'Florencia de Mora', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1269, '13', '01', '04', 'Huanchaco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1270, '13', '01', '05', 'La Esperanza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1271, '13', '01', '06', 'Laredo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1272, '13', '01', '07', 'Moche', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1273, '13', '01', '08', 'Poroto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1274, '13', '01', '09', 'Salaverry', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1275, '13', '01', '10', 'Simbal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1276, '13', '01', '11', 'Victor Larco Herrera', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1277, '13', '02', '00', 'Ascope', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1278, '13', '02', '01', 'Ascope', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1279, '13', '02', '02', 'Chicama', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1280, '13', '02', '03', 'Chocope', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1281, '13', '02', '04', 'Magdalena de Cao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1282, '13', '02', '05', 'Paijan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1283, '13', '02', '06', 'Razuri', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1284, '13', '02', '07', 'Santiago de Cao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1285, '13', '02', '08', 'Casa Grande', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1286, '13', '03', '00', 'Bolivar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1287, '13', '03', '01', 'Bolivar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1288, '13', '03', '02', 'Bambamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1289, '13', '03', '03', 'Condormarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1290, '13', '03', '04', 'Longotea', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1291, '13', '03', '05', 'Uchumarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1292, '13', '03', '06', 'Ucuncha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1293, '13', '04', '00', 'Chepen', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1294, '13', '04', '01', 'Chepen', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1295, '13', '04', '02', 'Pacanga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1296, '13', '04', '03', 'Pueblo Nuevo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1297, '13', '05', '00', 'Julcan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1298, '13', '05', '01', 'Julcan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1299, '13', '05', '02', 'Calamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1300, '13', '05', '03', 'Carabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1301, '13', '05', '04', 'Huaso', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1302, '13', '06', '00', 'Otuzco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1303, '13', '06', '01', 'Otuzco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1304, '13', '06', '02', 'Agallpampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1305, '13', '06', '04', 'Charat', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1306, '13', '06', '05', 'Huaranchal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1307, '13', '06', '06', 'La Cuesta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1308, '13', '06', '08', 'Mache', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1309, '13', '06', '10', 'Paranday', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1310, '13', '06', '11', 'Salpo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1311, '13', '06', '13', 'Sinsicap', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1312, '13', '06', '14', 'Usquil', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1313, '13', '07', '00', 'Pacasmayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1314, '13', '07', '01', 'San Pedro de Lloc', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1315, '13', '07', '02', 'Guadalupe', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1316, '13', '07', '03', 'Jequetepeque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1317, '13', '07', '04', 'Pacasmayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1318, '13', '07', '05', 'San Jose', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1319, '13', '08', '00', 'Pataz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1320, '13', '08', '01', 'Tayabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1321, '13', '08', '02', 'Buldibuyo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1322, '13', '08', '03', 'Chillia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1323, '13', '08', '04', 'Huancaspata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1324, '13', '08', '05', 'Huaylillas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1325, '13', '08', '06', 'Huayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1326, '13', '08', '07', 'Ongon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1327, '13', '08', '08', 'Parcoy', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1328, '13', '08', '09', 'Pataz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1329, '13', '08', '10', 'Pias', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1330, '13', '08', '11', 'Santiago de Challas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1331, '13', '08', '12', 'Taurija', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1332, '13', '08', '13', 'Urpay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1333, '13', '09', '00', 'Sanchez Carrion', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1334, '13', '09', '01', 'Huamachuco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1335, '13', '09', '02', 'Chugay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1336, '13', '09', '03', 'Cochorco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1337, '13', '09', '04', 'Curgos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1338, '13', '09', '05', 'Marcabal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1339, '13', '09', '06', 'Sanagoran', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1340, '13', '09', '07', 'Sarin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1341, '13', '09', '08', 'Sartimbamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1342, '13', '10', '00', 'Santiago de Chuco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1343, '13', '10', '01', 'Santiago de Chuco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1344, '13', '10', '02', 'Angasmarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1345, '13', '10', '03', 'Cachicadan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1346, '13', '10', '04', 'Mollebamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1347, '13', '10', '05', 'Mollepata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1348, '13', '10', '06', 'Quiruvilca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1349, '13', '10', '07', 'Santa Cruz de Chuca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1350, '13', '10', '08', 'Sitabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1351, '13', '11', '00', 'Gran Chimu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1352, '13', '11', '01', 'Cascas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1353, '13', '11', '02', 'Lucma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1354, '13', '11', '03', 'Marmot', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1355, '13', '11', '04', 'Sayapullo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1356, '13', '12', '00', 'Viru', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1357, '13', '12', '01', 'Viru', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1358, '13', '12', '02', 'Chao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1359, '13', '12', '03', 'Guadalupito', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1360, '14', '00', '00', 'Lambayeque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1361, '14', '01', '00', 'Chiclayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1362, '14', '01', '01', 'Chiclayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1363, '14', '01', '02', 'Chongoyape', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1364, '14', '01', '03', 'Eten', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1365, '14', '01', '04', 'Eten Puerto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1366, '14', '01', '05', 'Jose Leonardo Ortiz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1367, '14', '01', '06', 'La Victoria', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1368, '14', '01', '07', 'Lagunas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1369, '14', '01', '08', 'Monsefu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1370, '14', '01', '09', 'Nueva Arica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1371, '14', '01', '10', 'Oyotun', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1372, '14', '01', '11', 'Picsi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1373, '14', '01', '12', 'Pimentel', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1374, '14', '01', '13', 'Reque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1375, '14', '01', '14', 'Santa Rosa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1376, '14', '01', '15', 'Saña', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1377, '14', '01', '16', 'Cayaltí', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1378, '14', '01', '17', 'Patapo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1379, '14', '01', '18', 'Pomalca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1380, '14', '01', '19', 'Pucalá', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1381, '14', '01', '20', 'Tumán', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1382, '14', '02', '00', 'Ferreñafe', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1383, '14', '02', '01', 'Ferreñafe', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1384, '14', '02', '02', 'Cañaris', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1385, '14', '02', '03', 'Incahuasi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1386, '14', '02', '04', 'Manuel Antonio Mesones Muro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1387, '14', '02', '05', 'Pitipo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1388, '14', '02', '06', 'Pueblo Nuevo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1389, '14', '03', '00', 'Lambayeque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1390, '14', '03', '01', 'Lambayeque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1391, '14', '03', '02', 'Chochope', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1392, '14', '03', '03', 'Illimo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1393, '14', '03', '04', 'Jayanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1394, '14', '03', '05', 'Mochumi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1395, '14', '03', '06', 'Morrope', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1396, '14', '03', '07', 'Motupe', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1397, '14', '03', '08', 'Olmos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1398, '14', '03', '09', 'Pacora', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1399, '14', '03', '10', 'Salas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1400, '14', '03', '11', 'San Jose', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1401, '14', '03', '12', 'Tucume', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1402, '15', '00', '00', 'Lima', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1403, '15', '01', '00', 'Lima', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1404, '15', '01', '01', 'Lima', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1405, '15', '01', '02', 'Ancon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1406, '15', '01', '03', 'Ate', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1407, '15', '01', '04', 'Barranco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1408, '15', '01', '05', 'Breña', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1409, '15', '01', '06', 'Carabayllo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1410, '15', '01', '07', 'Chaclacayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1411, '15', '01', '08', 'Chorrillos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1412, '15', '01', '09', 'Cieneguilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1413, '15', '01', '10', 'Comas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1414, '15', '01', '11', 'El Agustino', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1415, '15', '01', '12', 'Independencia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1416, '15', '01', '13', 'Jesus Maria', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1417, '15', '01', '14', 'La Molina', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1418, '15', '01', '15', 'La Victoria', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1419, '15', '01', '16', 'Lince', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1420, '15', '01', '17', 'Los Olivos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1421, '15', '01', '18', 'Lurigancho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1422, '15', '01', '19', 'Lurin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1423, '15', '01', '20', 'Magdalena del Mar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1424, '15', '01', '21', 'Pueblo Libre (Magdalena Vieja)', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1425, '15', '01', '22', 'Miraflores', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1426, '15', '01', '23', 'Pachacamac', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1427, '15', '01', '24', 'Pucusana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1428, '15', '01', '25', 'Puente Piedra', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1429, '15', '01', '26', 'Punta Hermosa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1430, '15', '01', '27', 'Punta Negra', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1431, '15', '01', '28', 'Rimac', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1432, '15', '01', '29', 'San Bartolo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1433, '15', '01', '30', 'San Borja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1434, '15', '01', '31', 'San Isidro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1435, '15', '01', '32', 'San Juan de Lurigancho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1436, '15', '01', '33', 'San Juan de Miraflores', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1437, '15', '01', '34', 'San Luis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1438, '15', '01', '35', 'San Martin de Porres', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1439, '15', '01', '36', 'San Miguel', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1440, '15', '01', '37', 'Santa Anita', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1441, '15', '01', '38', 'Santa Maria del Mar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1442, '15', '01', '39', 'Santa Rosa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1443, '15', '01', '40', 'Santiago de Surco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1444, '15', '01', '41', 'Surquillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1445, '15', '01', '42', 'Villa El Salvador', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1446, '15', '01', '43', 'Villa Maria del Triunfo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1447, '15', '02', '00', 'Barranca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1448, '15', '02', '01', 'Barranca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1449, '15', '02', '02', 'Paramonga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1450, '15', '02', '03', 'Pativilca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1451, '15', '02', '04', 'Supe', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1452, '15', '02', '05', 'Supe Puerto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1453, '15', '03', '00', 'Cajatambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1454, '15', '03', '01', 'Cajatambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1455, '15', '03', '02', 'Copa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1456, '15', '03', '03', 'Gorgor', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1457, '15', '03', '04', 'Huancapon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1458, '15', '03', '05', 'Manas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1459, '15', '04', '00', 'Canta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1460, '15', '04', '01', 'Canta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1461, '15', '04', '02', 'Arahuay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1462, '15', '04', '03', 'Huamantanga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1463, '15', '04', '04', 'Huaros', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1464, '15', '04', '05', 'Lachaqui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1465, '15', '04', '06', 'San Buenaventura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1466, '15', '04', '07', 'Santa Rosa de Quives', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1467, '15', '05', '00', 'Cañete', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1468, '15', '05', '01', 'San Vicente de Cañete', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1469, '15', '05', '02', 'Asia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1470, '15', '05', '03', 'Calango', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1471, '15', '05', '04', 'Cerro Azul', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1472, '15', '05', '05', 'Chilca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1473, '15', '05', '06', 'Coayllo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1474, '15', '05', '07', 'Imperial', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1475, '15', '05', '08', 'Lunahuana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1476, '15', '05', '09', 'Mala', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1477, '15', '05', '10', 'Nuevo Imperial', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1478, '15', '05', '11', 'Pacaran', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1479, '15', '05', '12', 'Quilmana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1480, '15', '05', '13', 'San Antonio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1481, '15', '05', '14', 'San Luis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1482, '15', '05', '15', 'Santa Cruz de Flores', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1483, '15', '05', '16', 'Zuñiga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1484, '15', '06', '00', 'Huaral', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1485, '15', '06', '01', 'Huaral', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1486, '15', '06', '02', 'Atavillos Alto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1487, '15', '06', '03', 'Atavillos Bajo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1488, '15', '06', '04', 'Aucallama', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1489, '15', '06', '05', 'Chancay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1490, '15', '06', '06', 'Ihuari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1491, '15', '06', '07', 'Lampian', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1492, '15', '06', '08', 'Pacaraos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1493, '15', '06', '09', 'San Miguel de Acos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1494, '15', '06', '10', 'Santa Cruz de Andamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1495, '15', '06', '11', 'Sumbilca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1496, '15', '06', '12', 'Veintisiete de Noviembre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1497, '15', '07', '00', 'Huarochiri', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1498, '15', '07', '01', 'Matucana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1499, '15', '07', '02', 'Antioquia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1500, '15', '07', '03', 'Callahuanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1501, '15', '07', '04', 'Carampoma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1502, '15', '07', '05', 'Chicla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1503, '15', '07', '06', 'Cuenca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1504, '15', '07', '07', 'Huachupampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1505, '15', '07', '08', 'Huanza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1506, '15', '07', '09', 'Huarochiri', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1507, '15', '07', '10', 'Lahuaytambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1508, '15', '07', '11', 'Langa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1509, '15', '07', '12', 'Laraos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1510, '15', '07', '13', 'Mariatana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1511, '15', '07', '14', 'Ricardo Palma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1512, '15', '07', '15', 'San Andres de Tupicocha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1513, '15', '07', '16', 'San Antonio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1514, '15', '07', '17', 'San Bartolome', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1515, '15', '07', '18', 'San Damian', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1516, '15', '07', '19', 'San Juan de Iris', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1517, '15', '07', '20', 'San Juan de Tantaranche', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1518, '15', '07', '21', 'San Lorenzo de Quinti', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1519, '15', '07', '22', 'San Mateo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1520, '15', '07', '23', 'San Mateo de Otao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1521, '15', '07', '24', 'San Pedro de Casta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1522, '15', '07', '25', 'San Pedro de Huancayre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1523, '15', '07', '26', 'Sangallaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1524, '15', '07', '27', 'Santa Cruz de Cocachacra', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1525, '15', '07', '28', 'Santa Eulalia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1526, '15', '07', '29', 'Santiago de Anchucaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1527, '15', '07', '30', 'Santiago de Tuna', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1528, '15', '07', '31', 'Santo Domingo de los Olleros', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1529, '15', '07', '32', 'Surco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1530, '15', '08', '00', 'Huaura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1531, '15', '08', '01', 'Huacho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1532, '15', '08', '02', 'Ambar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1533, '15', '08', '03', 'Caleta de Carquin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1534, '15', '08', '04', 'Checras', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1535, '15', '08', '05', 'Hualmay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1536, '15', '08', '06', 'Huaura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1537, '15', '08', '07', 'Leoncio Prado', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1538, '15', '08', '08', 'Paccho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1539, '15', '08', '09', 'Santa Leonor', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1540, '15', '08', '10', 'Santa Maria', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1541, '15', '08', '11', 'Sayan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1542, '15', '08', '12', 'Vegueta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1543, '15', '09', '00', 'Oyon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1544, '15', '09', '01', 'Oyon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1545, '15', '09', '02', 'Andajes', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1546, '15', '09', '03', 'Caujul', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1547, '15', '09', '04', 'Cochamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1548, '15', '09', '05', 'Navan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1549, '15', '09', '06', 'Pachangara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1550, '15', '10', '00', 'Yauyos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1551, '15', '10', '01', 'Yauyos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1552, '15', '10', '02', 'Alis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1553, '15', '10', '03', 'Ayauca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1554, '15', '10', '04', 'Ayaviri', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1555, '15', '10', '05', 'Azangaro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1556, '15', '10', '06', 'Cacra', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1557, '15', '10', '07', 'Carania', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1558, '15', '10', '08', 'Catahuasi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1559, '15', '10', '09', 'Chocos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1560, '15', '10', '10', 'Cochas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1561, '15', '10', '11', 'Colonia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1562, '15', '10', '12', 'Hongos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1563, '15', '10', '13', 'Huampara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1564, '15', '10', '14', 'Huancaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1565, '15', '10', '15', 'Huangascar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1566, '15', '10', '16', 'Huantan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1567, '15', '10', '17', 'Huañec', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1568, '15', '10', '18', 'Laraos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1569, '15', '10', '19', 'Lincha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1570, '15', '10', '20', 'Madean', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1571, '15', '10', '21', 'Miraflores', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1572, '15', '10', '22', 'Omas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1573, '15', '10', '23', 'Putinza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1574, '15', '10', '24', 'Quinches', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1575, '15', '10', '25', 'Quinocay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1576, '15', '10', '26', 'San Joaquin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1577, '15', '10', '27', 'San Pedro de Pilas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1578, '15', '10', '28', 'Tanta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1579, '15', '10', '29', 'Tauripampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1580, '15', '10', '30', 'Tomas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1581, '15', '10', '31', 'Tupe', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1582, '15', '10', '32', 'Viñac', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1583, '15', '10', '33', 'Vitis', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1584, '16', '00', '00', 'Loreto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1585, '16', '01', '00', 'Maynas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1586, '16', '01', '01', 'Iquitos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1587, '16', '01', '02', 'Alto Nanay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1588, '16', '01', '03', 'Fernando Lores', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1589, '16', '01', '04', 'Indiana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1590, '16', '01', '05', 'Las Amazonas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1591, '16', '01', '06', 'Mazan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1592, '16', '01', '07', 'Napo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1593, '16', '01', '08', 'Punchana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1594, '16', '01', '09', 'Putumayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1595, '16', '01', '10', 'Torres Causana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1596, '16', '01', '12', 'Belén', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1597, '16', '01', '13', 'San Juan Bautista', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1598, '16', '01', '14', 'Teniente Manuel Clavero', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1599, '16', '02', '00', 'Alto Amazonas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1600, '16', '02', '01', 'Yurimaguas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1601, '16', '02', '02', 'Balsapuerto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1602, '16', '02', '05', 'Jeberos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1603, '16', '02', '06', 'Lagunas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1604, '16', '02', '10', 'Santa Cruz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1605, '16', '02', '11', 'Teniente Cesar Lopez Rojas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1606, '16', '03', '00', 'Loreto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1607, '16', '03', '01', 'Nauta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1608, '16', '03', '02', 'Parinari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1609, '16', '03', '03', 'Tigre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1610, '16', '03', '04', 'Trompeteros', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1611, '16', '03', '05', 'Urarinas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1612, '16', '04', '00', 'Mariscal Ramon Castilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1613, '16', '04', '01', 'Ramon Castilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1614, '16', '04', '02', 'Pebas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1615, '16', '04', '03', 'Yavari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1616, '16', '04', '04', 'San Pablo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1617, '16', '05', '00', 'Requena', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1618, '16', '05', '01', 'Requena', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1619, '16', '05', '02', 'Alto Tapiche', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1620, '16', '05', '03', 'Capelo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1621, '16', '05', '04', 'Emilio San Martin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1622, '16', '05', '05', 'Maquia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1623, '16', '05', '06', 'Puinahua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1624, '16', '05', '07', 'Saquena', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1625, '16', '05', '08', 'Soplin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1626, '16', '05', '09', 'Tapiche', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1627, '16', '05', '10', 'Jenaro Herrera', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1628, '16', '05', '11', 'Yaquerana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1629, '16', '06', '00', 'Ucayali', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1630, '16', '06', '01', 'Contamana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1631, '16', '06', '02', 'Inahuaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1632, '16', '06', '03', 'Padre Marquez', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1633, '16', '06', '04', 'Pampa Hermosa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1634, '16', '06', '05', 'Sarayacu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1635, '16', '06', '06', 'Vargas Guerra', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1636, '16', '07', '00', 'Datem del Marañón', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1637, '16', '07', '01', 'Barranca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1638, '16', '07', '02', 'Cahuapanas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1639, '16', '07', '03', 'Manseriche', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1640, '16', '07', '04', 'Morona', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1641, '16', '07', '05', 'Pastaza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1642, '16', '07', '06', 'Andoas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1643, '16', '08', '00', 'Putumayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1644, '16', '08', '01', 'Putumayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1645, '16', '08', '02', 'Rosa Panduro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1646, '16', '08', '03', 'Teniente Manuel Clavero', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1647, '16', '08', '04', 'Yaguas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1648, '17', '00', '00', 'Madre de Dios', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1649, '17', '01', '00', 'Tambopata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1650, '17', '01', '01', 'Tambopata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1651, '17', '01', '02', 'Inambari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1652, '17', '01', '03', 'Las Piedras', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1653, '17', '01', '04', 'Laberinto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1654, '17', '02', '00', 'Manu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1655, '17', '02', '01', 'Manu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1656, '17', '02', '02', 'Fitzcarrald', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1657, '17', '02', '03', 'Madre de Dios', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1658, '17', '02', '04', 'Huepetuhe', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1659, '17', '03', '00', 'Tahuamanu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1660, '17', '03', '01', 'Iñapari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1661, '17', '03', '02', 'Iberia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1662, '17', '03', '03', 'Tahuamanu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1663, '18', '00', '00', 'Moquegua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1664, '18', '01', '00', 'Mariscal Nieto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1665, '18', '01', '01', 'Moquegua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1666, '18', '01', '02', 'Carumas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1667, '18', '01', '03', 'Cuchumbaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1668, '18', '01', '04', 'Samegua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1669, '18', '01', '05', 'San Cristobal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1670, '18', '01', '06', 'Torata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1671, '18', '02', '00', 'General Sanchez Cerro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1672, '18', '02', '01', 'Omate', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1673, '18', '02', '02', 'Chojata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1674, '18', '02', '03', 'Coalaque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1675, '18', '02', '04', 'Ichuña', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1676, '18', '02', '05', 'La Capilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1677, '18', '02', '06', 'Lloque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1678, '18', '02', '07', 'Matalaque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1679, '18', '02', '08', 'Puquina', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1680, '18', '02', '09', 'Quinistaquillas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1681, '18', '02', '10', 'Ubinas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1682, '18', '02', '11', 'Yunga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1683, '18', '03', '00', 'Ilo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1684, '18', '03', '01', 'Ilo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1685, '18', '03', '02', 'El Algarrobal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1686, '18', '03', '03', 'Pacocha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1687, '19', '00', '00', 'Pasco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1688, '19', '01', '00', 'Pasco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1689, '19', '01', '01', 'Chaupimarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1690, '19', '01', '02', 'Huachon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1691, '19', '01', '03', 'Huariaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1692, '19', '01', '04', 'Huayllay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1693, '19', '01', '05', 'Ninacaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1694, '19', '01', '06', 'Pallanchacra', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1695, '19', '01', '07', 'Paucartambo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1696, '19', '01', '08', 'San Fco. de Asís de Yarusyacán', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1697, '19', '01', '09', 'Simon Bolivar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1698, '19', '01', '10', 'Ticlacayan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1699, '19', '01', '11', 'Tinyahuarco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1700, '19', '01', '12', 'Vicco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1701, '19', '01', '13', 'Yanacancha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1702, '19', '02', '00', 'Daniel Alcides Carrion', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1703, '19', '02', '01', 'Yanahuanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1704, '19', '02', '02', 'Chacayan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1705, '19', '02', '03', 'Goyllarisquizga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1706, '19', '02', '04', 'Paucar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1707, '19', '02', '05', 'San Pedro de Pillao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1708, '19', '02', '06', 'Santa Ana de Tusi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1709, '19', '02', '07', 'Tapuc', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1710, '19', '02', '08', 'Vilcabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1711, '19', '03', '00', 'Oxapampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1712, '19', '03', '01', 'Oxapampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1713, '19', '03', '02', 'Chontabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1714, '19', '03', '03', 'Huancabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1715, '19', '03', '04', 'Palcazu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1716, '19', '03', '05', 'Pozuzo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1717, '19', '03', '06', 'Puerto Bermudez', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1718, '19', '03', '07', 'Villa Rica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1719, '19', '03', '08', 'Constitucion', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1720, '20', '00', '00', 'Piura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1721, '20', '01', '00', 'Piura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1722, '20', '01', '01', 'Piura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1723, '20', '01', '04', 'Castilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1724, '20', '01', '05', 'Catacaos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1725, '20', '01', '07', 'Cura Mori', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1726, '20', '01', '08', 'El Tallan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1727, '20', '01', '09', 'La Arena', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1728, '20', '01', '10', 'La Union', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1729, '20', '01', '11', 'Las Lomas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1730, '20', '01', '14', 'Tambo Grande', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1731, '20', '01', '15', 'Veintiséis de Octubre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1732, '20', '02', '00', 'Ayabaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1733, '20', '02', '01', 'Ayabaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1734, '20', '02', '02', 'Frias', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1735, '20', '02', '03', 'Jilili', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1736, '20', '02', '04', 'Lagunas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1737, '20', '02', '05', 'Montero', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1738, '20', '02', '06', 'Pacaipampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1739, '20', '02', '07', 'Paimas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1740, '20', '02', '08', 'Sapillica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1741, '20', '02', '09', 'Sicchez', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1742, '20', '02', '10', 'Suyo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1743, '20', '03', '00', 'Huancabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1744, '20', '03', '01', 'Huancabamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1745, '20', '03', '02', 'Canchaque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1746, '20', '03', '03', 'El Carmen de la Frontera', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1747, '20', '03', '04', 'Huarmaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1748, '20', '03', '05', 'Lalaquiz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1749, '20', '03', '06', 'San Miguel de El Faique', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1750, '20', '03', '07', 'Sondor', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1751, '20', '03', '08', 'Sondorillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1752, '20', '04', '00', 'Morropon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1753, '20', '04', '01', 'Chulucanas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1754, '20', '04', '02', 'Buenos Aires', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1755, '20', '04', '03', 'Chalaco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1756, '20', '04', '04', 'La Matanza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1757, '20', '04', '05', 'Morropon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1758, '20', '04', '06', 'Salitral', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1759, '20', '04', '07', 'San Juan de Bigote', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1760, '20', '04', '08', 'Santa Catalina de Mossa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1761, '20', '04', '09', 'Santo Domingo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1762, '20', '04', '10', 'Yamango', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1763, '20', '05', '00', 'Paita', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1764, '20', '05', '01', 'Paita', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1765, '20', '05', '02', 'Amotape', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1766, '20', '05', '03', 'Arenal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1767, '20', '05', '04', 'Colan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1768, '20', '05', '05', 'La Huaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1769, '20', '05', '06', 'Tamarindo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1770, '20', '05', '07', 'Vichayal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1771, '20', '06', '00', 'Sullana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1772, '20', '06', '01', 'Sullana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1773, '20', '06', '02', 'Bellavista', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1774, '20', '06', '03', 'Ignacio Escudero', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1775, '20', '06', '04', 'Lancones', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1776, '20', '06', '05', 'Marcavelica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1777, '20', '06', '06', 'Miguel Checa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1778, '20', '06', '07', 'Querecotillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1779, '20', '06', '08', 'Salitral', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1780, '20', '07', '00', 'Talara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1781, '20', '07', '01', 'Pariñas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1782, '20', '07', '02', 'El Alto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1783, '20', '07', '03', 'La Brea', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1784, '20', '07', '04', 'Lobitos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1785, '20', '07', '05', 'Los Organos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1786, '20', '07', '06', 'Mancora', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1787, '20', '08', '00', 'Sechura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1788, '20', '08', '01', 'Sechura', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1789, '20', '08', '02', 'Bellavista de la Union', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1790, '20', '08', '03', 'Bernal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1791, '20', '08', '04', 'Cristo Nos Valga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1792, '20', '08', '05', 'Vice', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1793, '20', '08', '06', 'Rinconada Llicuar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1794, '21', '00', '00', 'Puno', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1795, '21', '01', '00', 'Puno', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1796, '21', '01', '01', 'Puno', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1797, '21', '01', '02', 'Acora', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1798, '21', '01', '03', 'Amantani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1799, '21', '01', '04', 'Atuncolla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1800, '21', '01', '05', 'Capachica', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1801, '21', '01', '06', 'Chucuito', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1802, '21', '01', '07', 'Coata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1803, '21', '01', '08', 'Huata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1804, '21', '01', '09', 'Mañazo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1805, '21', '01', '10', 'Paucarcolla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1806, '21', '01', '11', 'Pichacani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1807, '21', '01', '12', 'Plateria', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1808, '21', '01', '13', 'San Antonio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1809, '21', '01', '14', 'Tiquillaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1810, '21', '01', '15', 'Vilque', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1811, '21', '02', '00', 'Azangaro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1812, '21', '02', '01', 'Azangaro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1813, '21', '02', '02', 'Achaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1814, '21', '02', '03', 'Arapa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1815, '21', '02', '04', 'Asillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1816, '21', '02', '05', 'Caminaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1817, '21', '02', '06', 'Chupa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1818, '21', '02', '07', 'Jose Domingo Choquehuanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1819, '21', '02', '08', 'Muñani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1820, '21', '02', '09', 'Potoni', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1821, '21', '02', '10', 'Saman', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1822, '21', '02', '11', 'San Anton', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1823, '21', '02', '12', 'San Jose', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1824, '21', '02', '13', 'San Juan de Salinas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1825, '21', '02', '14', 'Santiago de Pupuja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1826, '21', '02', '15', 'Tirapata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1827, '21', '03', '00', 'Carabaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1828, '21', '03', '01', 'Macusani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1829, '21', '03', '02', 'Ajoyani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1830, '21', '03', '03', 'Ayapata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1831, '21', '03', '04', 'Coasa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1832, '21', '03', '05', 'Corani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1833, '21', '03', '06', 'Crucero', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1834, '21', '03', '07', 'Ituata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1835, '21', '03', '08', 'Ollachea', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1836, '21', '03', '09', 'San Gaban', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1837, '21', '03', '10', 'Usicayos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1838, '21', '04', '00', 'Chucuito', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1839, '21', '04', '01', 'Juli', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1840, '21', '04', '02', 'Desaguadero', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1841, '21', '04', '03', 'Huacullani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1842, '21', '04', '04', 'Kelluyo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1843, '21', '04', '05', 'Pisacoma', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1844, '21', '04', '06', 'Pomata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1845, '21', '04', '07', 'Zepita', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1846, '21', '05', '00', 'El Collao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1847, '21', '05', '01', 'Ilave', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1848, '21', '05', '02', 'Capaso', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1849, '21', '05', '03', 'Pilcuyo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1850, '21', '05', '04', 'Santa Rosa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1851, '21', '05', '05', 'Conduriri', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1852, '21', '06', '00', 'Huancane', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1853, '21', '06', '01', 'Huancane', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1854, '21', '06', '02', 'Cojata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1855, '21', '06', '03', 'Huatasani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1856, '21', '06', '04', 'Inchupalla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1857, '21', '06', '05', 'Pusi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1858, '21', '06', '06', 'Rosaspata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1859, '21', '06', '07', 'Taraco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1860, '21', '06', '08', 'Vilque Chico', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1861, '21', '07', '00', 'Lampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1862, '21', '07', '01', 'Lampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1863, '21', '07', '02', 'Cabanilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1864, '21', '07', '03', 'Calapuja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1865, '21', '07', '04', 'Nicasio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1866, '21', '07', '05', 'Ocuviri', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1867, '21', '07', '06', 'Palca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1868, '21', '07', '07', 'Paratia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1869, '21', '07', '08', 'Pucara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1870, '21', '07', '09', 'Santa Lucia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1871, '21', '07', '10', 'Vilavila', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1872, '21', '08', '00', 'Melgar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1873, '21', '08', '01', 'Ayaviri', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1874, '21', '08', '02', 'Antauta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1875, '21', '08', '03', 'Cupi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1876, '21', '08', '04', 'Llalli', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1877, '21', '08', '05', 'Macari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1878, '21', '08', '06', 'Nuñoa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1879, '21', '08', '07', 'Orurillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1880, '21', '08', '08', 'Santa Rosa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1881, '21', '08', '09', 'Umachiri', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1882, '21', '09', '00', 'Moho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1883, '21', '09', '01', 'Moho', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1884, '21', '09', '02', 'Conima', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1885, '21', '09', '03', 'Huayrapata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1886, '21', '09', '04', 'Tilali', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1887, '21', '10', '00', 'San Antonio de Putina', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1888, '21', '10', '01', 'Putina', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1889, '21', '10', '02', 'Ananea', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1890, '21', '10', '03', 'Pedro Vilca Apaza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1891, '21', '10', '04', 'Quilcapuncu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1892, '21', '10', '05', 'Sina', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1893, '21', '11', '00', 'San Roman', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1894, '21', '11', '01', 'Juliaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1895, '21', '11', '02', 'Cabana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1896, '21', '11', '03', 'Cabanillas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1897, '21', '11', '04', 'Caracoto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1898, '21', '12', '00', 'Sandia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1899, '21', '12', '01', 'Sandia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1900, '21', '12', '02', 'Cuyocuyo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1901, '21', '12', '03', 'Limbani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1902, '21', '12', '04', 'Patambuco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1903, '21', '12', '05', 'Phara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1904, '21', '12', '06', 'Quiaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1905, '21', '12', '07', 'San Juan del Oro', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1906, '21', '12', '08', 'Yanahuaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1907, '21', '12', '09', 'Alto Inambari', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1908, '21', '12', '10', 'San Pedro de Putina Punco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1909, '21', '13', '00', 'Yunguyo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1910, '21', '13', '01', 'Yunguyo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1911, '21', '13', '02', 'Anapia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1912, '21', '13', '03', 'Copani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1913, '21', '13', '04', 'Cuturapi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1914, '21', '13', '05', 'Ollaraya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1915, '21', '13', '06', 'Tinicachi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1916, '21', '13', '07', 'Unicachi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1917, '22', '00', '00', 'San Martin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1918, '22', '01', '00', 'Moyobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1919, '22', '01', '01', 'Moyobamba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1920, '22', '01', '02', 'Calzada', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1921, '22', '01', '03', 'Habana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1922, '22', '01', '04', 'Jepelacio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1923, '22', '01', '05', 'Soritor', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1924, '22', '01', '06', 'Yantalo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1925, '22', '02', '00', 'Bellavista', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1926, '22', '02', '01', 'Bellavista', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1927, '22', '02', '02', 'Alto Biavo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1928, '22', '02', '03', 'Bajo Biavo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1929, '22', '02', '04', 'Huallaga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1930, '22', '02', '05', 'San Pablo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1931, '22', '02', '06', 'San Rafael', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1932, '22', '03', '00', 'El Dorado', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1933, '22', '03', '01', 'San Jose de Sisa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1934, '22', '03', '02', 'Agua Blanca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1935, '22', '03', '03', 'San Martin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1936, '22', '03', '04', 'Santa Rosa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1937, '22', '03', '05', 'Shatoja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1938, '22', '04', '00', 'Huallaga', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1939, '22', '04', '01', 'Saposoa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1940, '22', '04', '02', 'Alto Saposoa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1941, '22', '04', '03', 'El Eslabon', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1942, '22', '04', '04', 'Piscoyacu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1943, '22', '04', '05', 'Sacanche', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1944, '22', '04', '06', 'Tingo de Saposoa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1945, '22', '05', '00', 'Lamas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1946, '22', '05', '01', 'Lamas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1947, '22', '05', '02', 'Alonso de Alvarado', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1948, '22', '05', '03', 'Barranquita', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1949, '22', '05', '04', 'Caynarachi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1950, '22', '05', '05', 'Cuñumbuqui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1951, '22', '05', '06', 'Pinto Recodo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1952, '22', '05', '07', 'Rumisapa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1953, '22', '05', '08', 'San Roque de Cumbaza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1954, '22', '05', '09', 'Shanao', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1955, '22', '05', '10', 'Tabalosos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1956, '22', '05', '11', 'Zapatero', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1957, '22', '06', '00', 'Mariscal Caceres', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1958, '22', '06', '01', 'Juanjui', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1959, '22', '06', '02', 'Campanilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1960, '22', '06', '03', 'Huicungo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1961, '22', '06', '04', 'Pachiza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1962, '22', '06', '05', 'Pajarillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1963, '22', '07', '00', 'Picota', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1964, '22', '07', '01', 'Picota', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1965, '22', '07', '02', 'Buenos Aires', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1966, '22', '07', '03', 'Caspisapa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1967, '22', '07', '04', 'Pilluana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1968, '22', '07', '05', 'Pucacaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1969, '22', '07', '06', 'San Cristobal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1970, '22', '07', '07', 'San Hilarion', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1971, '22', '07', '08', 'Shamboyacu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1972, '22', '07', '09', 'Tingo de Ponasa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1973, '22', '07', '10', 'Tres Unidos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1974, '22', '08', '00', 'Rioja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1975, '22', '08', '01', 'Rioja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1976, '22', '08', '02', 'Awajun', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1977, '22', '08', '03', 'Elias Soplin Vargas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1978, '22', '08', '04', 'Nueva Cajamarca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1979, '22', '08', '05', 'Pardo Miguel', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1980, '22', '08', '06', 'Posic', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1981, '22', '08', '07', 'San Fernando', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1982, '22', '08', '08', 'Yorongos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1983, '22', '08', '09', 'Yuracyacu', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1984, '22', '09', '00', 'San Martin', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1985, '22', '09', '01', 'Tarapoto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1986, '22', '09', '02', 'Alberto Leveau', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1987, '22', '09', '03', 'Cacatachi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1988, '22', '09', '04', 'Chazuta', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1989, '22', '09', '05', 'Chipurana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1990, '22', '09', '06', 'El Porvenir', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1991, '22', '09', '07', 'Huimbayoc', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1992, '22', '09', '08', 'Juan Guerra', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1993, '22', '09', '09', 'La Banda de Shilcayo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1994, '22', '09', '10', 'Morales', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1995, '22', '09', '11', 'Papaplaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1996, '22', '09', '12', 'San Antonio', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1997, '22', '09', '13', 'Sauce', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1998, '22', '09', '14', 'Shapaja', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (1999, '22', '10', '00', 'Tocache', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2000, '22', '10', '01', 'Tocache', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2001, '22', '10', '02', 'Nuevo Progreso', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2002, '22', '10', '03', 'Polvora', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2003, '22', '10', '04', 'Shunte', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2004, '22', '10', '05', 'Uchiza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2005, '23', '00', '00', 'Tacna', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2006, '23', '01', '00', 'Tacna', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2007, '23', '01', '01', 'Tacna', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2008, '23', '01', '02', 'Alto de la Alianza', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2009, '23', '01', '03', 'Calana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2010, '23', '01', '04', 'Ciudad Nueva', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2011, '23', '01', '05', 'Inclan', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2012, '23', '01', '06', 'Pachia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2013, '23', '01', '07', 'Palca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2014, '23', '01', '08', 'Pocollay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2015, '23', '01', '09', 'Sama', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2016, '23', '01', '10', 'Coronel Gregorio Albarracín L', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2017, '23', '02', '00', 'Candarave', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2018, '23', '02', '01', 'Candarave', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2019, '23', '02', '02', 'Cairani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2020, '23', '02', '03', 'Camilaca', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2021, '23', '02', '04', 'Curibaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2022, '23', '02', '05', 'Huanuara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2023, '23', '02', '06', 'Quilahuani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2024, '23', '03', '00', 'Jorge Basadre', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2025, '23', '03', '01', 'Locumba', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2026, '23', '03', '02', 'Ilabaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2027, '23', '03', '03', 'Ite', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2028, '23', '04', '00', 'Tarata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2029, '23', '04', '01', 'Tarata', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2030, '23', '04', '02', 'Chucatamani', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2031, '23', '04', '03', 'Estique', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2032, '23', '04', '04', 'Estique-Pampa', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2033, '23', '04', '05', 'Sitajara', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2034, '23', '04', '06', 'Susapaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2035, '23', '04', '07', 'Tarucachi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2036, '23', '04', '08', 'Ticaco', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2037, '24', '00', '00', 'Tumbes', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2038, '24', '01', '00', 'Tumbes', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2039, '24', '01', '01', 'Tumbes', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2040, '24', '01', '02', 'Corrales', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2041, '24', '01', '03', 'La Cruz', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2042, '24', '01', '04', 'Pampas de Hospital', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2043, '24', '01', '05', 'San Jacinto', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2044, '24', '01', '06', 'San Juan de la Virgen', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2045, '24', '02', '00', 'Contralmirante Villar', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2046, '24', '02', '01', 'Zorritos', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2047, '24', '02', '02', 'Casitas', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2048, '24', '02', '03', 'Canoas de Punta Sal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2049, '24', '03', '00', 'Zarumilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2050, '24', '03', '01', 'Zarumilla', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2051, '24', '03', '02', 'Aguas Verdes', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2052, '24', '03', '03', 'Matapalo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2053, '24', '03', '04', 'Papayal', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2054, '25', '00', '00', 'Ucayali', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2055, '25', '01', '00', 'Coronel Portillo', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2056, '25', '01', '01', 'Callaria', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2057, '25', '01', '02', 'Campoverde', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2058, '25', '01', '03', 'Iparia', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2059, '25', '01', '04', 'Masisea', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2060, '25', '01', '05', 'Yarinacocha', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2061, '25', '01', '06', 'Nueva Requena', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2062, '25', '01', '07', 'Manantay', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2063, '25', '02', '00', 'Atalaya', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2064, '25', '02', '01', 'Raymondi', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2065, '25', '02', '02', 'Sepahua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2066, '25', '02', '03', 'Tahuania', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2067, '25', '02', '04', 'Yurua', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2068, '25', '03', '00', 'Padre Abad', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2069, '25', '03', '01', 'Padre Abad', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2070, '25', '03', '02', 'Irazola', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2071, '25', '03', '03', 'Curimana', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2072, '25', '04', '00', 'Purus', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');
INSERT INTO `ubigeos` VALUES (2073, '25', '04', '01', 'Purus', 1, '2025-08-27 11:57:03', '2025-08-27 11:57:03');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` tinyint(4) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'Admin', 'admin@dgala.com.pe', NULL, '$2y$12$.y1iJRLA.npAVUu.gUwy5u5NEt9cOri38XNa0zYsAQ.M.qVxEfH02', NULL, 1, '2025-12-08 18:39:09', '2025-12-08 18:39:09');
INSERT INTO `users` VALUES (2, 1, 'jsaravia', 'jsaravia@geosatelital.com.pe', NULL, '$2y$12$B0e1Iu2syk/.JAeC2AUqHuo5tx1T6qwvGbOAl7R.v.Wx5.i0ssnJy', NULL, 1, '2025-12-11 08:28:49', '2025-12-11 08:28:49');

SET FOREIGN_KEY_CHECKS = 1;
