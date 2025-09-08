/*
 Navicat Premium Data Transfer

 Source Server         : MyWin10
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : db_dgala

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 07/09/2025 21:05:41
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES (1, 1, 'admin', 'admin@dgala.com.pe', '123456', 1, '2025-07-18 16:20:54', '2025-07-18 16:20:54');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps
-- ----------------------------
INSERT INTO `apps` VALUES (1, 0, 'DGala', '', '', 'A', 0, 0, 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');
INSERT INTO `apps` VALUES (2, 1, 'Dashboard', 'fas fa-grip', 'dashboard', 'I', 1, 1, 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');
INSERT INTO `apps` VALUES (3, 1, 'Categorías', 'fas fa-list', 'category', 'I', 1, 2, 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');
INSERT INTO `apps` VALUES (4, 1, 'Productos', 'fab fa-product-hunt', 'products', 'I', 1, 3, 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');
INSERT INTO `apps` VALUES (5, 1, 'Clientes', 'fas fa-users-line', 'customers', 'I', 1, 4, 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');
INSERT INTO `apps` VALUES (6, 1, 'Ventas', 'fas fa-money-check-dollar', 'sales', 'I', 1, 5, 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');
INSERT INTO `apps` VALUES (7, 1, 'Reportes', 'fas fa-chart-line', 'reports', 'I', 1, 6, 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');
INSERT INTO `apps` VALUES (8, 1, 'Usuarios', 'fas fa-users', 'users', 'I', 1, 7, 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');
INSERT INTO `apps` VALUES (9, 1, 'Configuración', 'fas fa-gears', 'tools', 'I', 1, 8, 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');
INSERT INTO `apps` VALUES (10, 1, 'Ayuda', 'fas fa-info', 'helps', 'I', 1, 9, 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banks
-- ----------------------------
INSERT INTO `banks` VALUES (1, 'Banco de Crédito del Perú BCP', 1, '2025-08-15 19:16:01', '2025-08-15 19:16:01');
INSERT INTO `banks` VALUES (2, 'Banco Continental BBVA', 1, '2025-08-15 19:16:01', '2025-08-15 19:16:01');
INSERT INTO `banks` VALUES (3, 'Banco Interbank', 1, '2025-08-15 19:16:01', '2025-08-15 19:16:01');
INSERT INTO `banks` VALUES (4, 'Banco Scotiabank', 1, '2025-08-15 19:16:01', '2025-08-15 19:16:01');
INSERT INTO `banks` VALUES (5, 'Banco de la Naciòn', 1, '2025-08-15 19:16:01', '2025-08-15 19:16:01');
INSERT INTO `banks` VALUES (6, 'Banco Interamericano de Finanzas BANBIF', 1, '2025-08-15 19:16:01', '2025-08-15 19:16:01');
INSERT INTO `banks` VALUES (7, 'Banco de Comercio', 1, '2025-08-15 19:16:01', '2025-08-15 19:16:01');
INSERT INTO `banks` VALUES (8, 'Banco Falabella del Perú', 1, '2025-08-15 19:16:01', '2025-08-15 19:16:01');
INSERT INTO `banks` VALUES (9, 'Banco Financiero del Perú', 1, '2025-08-15 19:16:01', '2025-08-15 19:16:01');
INSERT INTO `banks` VALUES (10, 'Banco Ripley S.A.', 1, '2025-08-15 19:16:01', '2025-08-15 19:16:01');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of card_types
-- ----------------------------
INSERT INTO `card_types` VALUES (1, 'VISA Clásica', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');
INSERT INTO `card_types` VALUES (2, 'VISA Oro', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');
INSERT INTO `card_types` VALUES (3, 'VISA Platinum', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');
INSERT INTO `card_types` VALUES (4, 'VISA Signature', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');
INSERT INTO `card_types` VALUES (5, 'VISA Infinite', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');
INSERT INTO `card_types` VALUES (6, 'MASTERCARD Clásica', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');
INSERT INTO `card_types` VALUES (7, 'MASTERCARD Oro', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');
INSERT INTO `card_types` VALUES (8, 'MASTERCARD Platinum', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');
INSERT INTO `card_types` VALUES (9, 'MASTERCARD Black', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');
INSERT INTO `card_types` VALUES (10, 'American Express', 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` tinyint(4) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_level` tinyint(4) NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 0, 'Categoría DGALA', 'Categoría DGALA', '', 0, 1, '2025-07-18 16:20:51', '2025-07-18 16:20:51');
INSERT INTO `categories` VALUES (2, 1, 'Anillos', 'Anillos', 'categories/zTgK5mB60j1c82KXBveSYLJk3Z6VRTiRd0qSvUXe.webp', 1, 1, '2025-08-08 23:03:33', '2025-08-08 23:03:33');
INSERT INTO `categories` VALUES (3, 1, 'Aretes', 'Aretes', 'categories/h53TGuRULv5Yt3W4ChmqFUi3YdAGRCH2yXqN7rN9.webp', 1, 1, '2025-08-08 23:05:49', '2025-08-08 23:05:49');
INSERT INTO `categories` VALUES (4, 1, 'Cadenas', 'Cadenas', 'categories/93izXpN7ZnHaZUIqZRTLwEVnBXhmNxH7GmySVmJD.webp', 1, 1, '2025-08-08 23:06:24', '2025-08-08 23:06:24');
INSERT INTO `categories` VALUES (5, 3, 'Alice', 'Alice', '', 2, 1, '2025-08-08 23:09:56', '2025-08-08 23:10:50');
INSERT INTO `categories` VALUES (6, 3, 'Aline', 'Aline', '', 2, 1, '2025-08-08 23:10:12', '2025-08-08 23:11:13');
INSERT INTO `categories` VALUES (7, 3, 'Ariel', 'Ariel', '', 2, 1, '2025-08-08 23:11:53', '2025-08-08 23:11:53');
INSERT INTO `categories` VALUES (8, 3, 'Filippa', 'Filippa', '', 2, 1, '2025-08-08 23:12:46', '2025-08-08 23:12:46');
INSERT INTO `categories` VALUES (9, 3, 'Gretel', 'Gretel', '', 2, 1, '2025-08-08 23:13:11', '2025-08-08 23:13:11');
INSERT INTO `categories` VALUES (10, 3, 'Kady', 'Kady', '', 2, 1, '2025-08-08 23:13:32', '2025-08-08 23:13:32');
INSERT INTO `categories` VALUES (11, 3, 'Kaira', 'Kaira', '', 2, 1, '2025-08-08 23:14:01', '2025-08-08 23:14:01');
INSERT INTO `categories` VALUES (12, 3, 'Kira', 'Kira', '', 2, 1, '2025-08-08 23:14:17', '2025-08-08 23:14:17');
INSERT INTO `categories` VALUES (13, 2, 'Ingrid', 'Ingrid', '', 2, 1, '2025-08-08 23:15:09', '2025-08-08 23:15:09');
INSERT INTO `categories` VALUES (14, 2, 'Maddi', 'Maddi', '', 2, 1, '2025-08-08 23:15:27', '2025-08-08 23:15:27');
INSERT INTO `categories` VALUES (15, 2, 'Maura', 'Maura', '', 2, 1, '2025-08-08 23:15:41', '2025-08-08 23:15:41');
INSERT INTO `categories` VALUES (16, 2, 'Tania', 'Tania', '', 2, 1, '2025-08-08 23:15:59', '2025-08-08 23:15:59');
INSERT INTO `categories` VALUES (17, 2, 'Tasha', 'Tasha', '', 2, 1, '2025-08-08 23:16:15', '2025-08-08 23:16:15');
INSERT INTO `categories` VALUES (18, 4, 'Oliver', 'Oliver', '', 2, 1, '2025-08-08 23:17:20', '2025-08-08 23:17:20');
INSERT INTO `categories` VALUES (19, 4, 'Oslo', 'Oslo', '', 2, 1, '2025-08-08 23:17:45', '2025-08-08 23:17:45');
INSERT INTO `categories` VALUES (20, 4, 'Torino', 'Torino', '', 2, 1, '2025-08-08 23:18:06', '2025-08-08 23:18:06');

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies`  (
  `id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ciiu` int(255) NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `trade_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ubigeo_id` smallint(6) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES ('20602087876', 'S.A.C.', 74921, 'Joyerías D\'Gala', 'DISEÑAMOS Y FABRICAMOS JOYAS EN PLATA Y ORO VAMOS A TU TIENDA Y EXPORTAMOS A TODO EL MUNDO.', 1428, 'MZ. D LT. 12 ASOC. DE PRO LIMA - PUENTE PIEDRA', 'joyeriaDGala@hotmail.com', '(+51) 916520052', -11.870737, -77.069855, '2025-08-27 11:57:03', '2025-08-27 11:57:09');

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
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES (1, 'José Hugo', 'Saravia Chávez', 'josehugo.saraviachavez@gmail.com', '986722552', 'Pruebas internas y cerradas', '2025-07-18 17:19:20', '2025-07-18 17:19:20');
INSERT INTO `contacts` VALUES (2, 'Maria Teresa', 'Gonzales Prada', 'mprada@produce.gob.pe', '980435988', 'Que tipo de grabados realizan o como podriamos programar una visita para enseñar mis joyas', '2025-07-18 21:23:52', '2025-07-18 21:23:52');
INSERT INTO `contacts` VALUES (3, 'Williams', 'Yucra Saravia', 'rrubio@produce.gob.pe', '2548952', 'Mensajes de Prueba', '2025-08-18 04:36:55', '2025-08-18 04:36:55');
INSERT INTO `contacts` VALUES (4, 'Juan Jose', 'De la Barca Gonzales', 'jdelabarca@gmail.com', '98965678', 'Necesito coordinar servicios de restauracion', '2025-09-04 04:50:36', '2025-09-04 04:50:36');
INSERT INTO `contacts` VALUES (5, 'Jose Hugo', 'Saravia Chavez', 'jsaravia@geosatelital.com.pe', '9876543', 'servicio especializado', '2025-09-05 01:10:43', '2025-09-05 01:10:43');
INSERT INTO `contacts` VALUES (6, 'Mariela Gianella', 'López Farías', 'marielita.2025@hotmail.com', '956002458', 'Necesitaria solicitar una cotizacion especial para una restaruacion de una joya familiar.', '2025-09-05 19:41:17', '2025-09-05 19:41:17');
INSERT INTO `contacts` VALUES (7, 'Manuel Angel', 'Salas Gonzales', 'manuel.elgrillo@outlook.com', '978528001', 'me gustaria que revisara mi joya persona y evaluara el modo de restauracion', '2025-09-05 19:53:24', '2025-09-05 19:53:24');

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, 1, 1059, '27440013', 'Cristhian Erick', 'Agip', 'Rubio', 'rrubio@produce.gob.pe', '968748002', 'Tarapacá S/N, Lucma 13241', '123123', 1, '2025-07-19 01:16:34', '2025-07-19 01:16:34');
INSERT INTO `customers` VALUES (2, 1, 1417, '09529086', 'JESSICA ANGELICA', 'AIRA', 'HIDALGO', 'jessangel.aira@gmail.com', '952024107', 'Av. Corregidores 1002', '111111', 1, '2025-08-29 08:31:24', '2025-08-30 01:47:18');
INSERT INTO `customers` VALUES (3, 1, 1428, '48232833', 'LUIS ANGEL', 'ALVAREZ', 'ALBERCA', 'luis.alvarez1@unmsm.edu.pe', '980765715', '', '123123', 1, '2025-08-29 08:33:13', '2025-08-29 08:33:13');
INSERT INTO `customers` VALUES (4, 1, 1428, '', 'GABRIELA LUISA', 'ALVAREZ', 'PAREDES', 'gabyap2294@gmail.com', '960152699', '', 'eLMrqV6OzqVk_WTH', 1, '2025-08-31 09:51:41', '2025-08-31 09:51:41');
INSERT INTO `customers` VALUES (5, 1, 1428, '', 'Juan Luis', 'Solorzano', 'Galvan', 'jguerra@minedu.edu.pe', '989657222', '', '123123', 1, '2025-09-04 04:45:54', '2025-09-04 04:45:54');
INSERT INTO `customers` VALUES (6, 1, 759, '48578265', 'Juan Jose', 'Salazar', 'Baldeon', 'jbaldeon2025@hotmail.com', '980765715', 'Avenida Esperanza', 'FBdo1ScJ4ydWg4PP', 1, '2025-09-04 04:57:34', '2025-09-04 04:57:34');
INSERT INTO `customers` VALUES (7, 1, 1428, '', 'Miguel Angel', 'Salerno', 'Gonzales', 'masalerno@gmail.com', '989765454', '', '123123', 1, '2025-09-05 01:06:19', '2025-09-05 01:06:19');
INSERT INTO `customers` VALUES (8, 1, 1428, '', 'Jose Gabriel', 'Salas', 'Galvan', 'jgalvam2025@gmail.com', '952024107', '', 'uSyxl.b++sZVBnzk', 1, '2025-09-05 01:07:56', '2025-09-05 01:07:56');
INSERT INTO `customers` VALUES (9, 1, 323, '41406326', 'Juan Jose', 'ALVAREZ', 'Yucra Saravia', 'admin@froylandimport.com.pe', '952024107', 'Calle La Esparceta', 'JD59nd79DkEBJEYL', 1, '2025-09-05 01:14:59', '2025-09-05 01:14:59');

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
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of deliveries
-- ----------------------------
INSERT INTO `deliveries` VALUES (1, 'F001-00000001', 1, 1, 1443, 'José Hugo Saravia Chávez', '41406326', 'Calle La Esparceta', '120', 'Lote 13', 0, 0, 1, '2025-08-31 01:23:52', '2025-08-31 01:23:52');
INSERT INTO `deliveries` VALUES (2, 'F001-00000002', 1, 2, 1416, 'Alberto García Aspe Prada', '48715932', 'Jirón Úzares de Junín', '302', 'Dpto 2', 0, 0, 1, '2025-09-07 17:39:49', '2025-09-07 17:39:49');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery_movement_resources
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery_movements
-- ----------------------------
INSERT INTO `delivery_movements` VALUES (1, 1, 'En proceso de atención', 'EP', 1, '2025-08-31 01:23:52', '2025-08-31 01:23:52');
INSERT INTO `delivery_movements` VALUES (2, 2, 'En proceso de atención', 'EP', 1, '2025-09-07 17:39:49', '2025-09-07 17:39:49');

-- ----------------------------
-- Table structure for delivery_tracks
-- ----------------------------
DROP TABLE IF EXISTS `delivery_tracks`;
CREATE TABLE `delivery_tracks`  (
  `id` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delivery_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery_tracks
-- ----------------------------
INSERT INTO `delivery_tracks` VALUES ('TR25-00000001', 1, '2025-08-31 01:23:52', '2025-08-31 01:23:52');
INSERT INTO `delivery_tracks` VALUES ('TR25-00000002', 2, '2025-09-07 17:39:50', '2025-09-07 17:39:50');

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
INSERT INTO `delivery_types` VALUES (1, 'Retire su pedido', 1, '2025-07-18 16:20:51', '2025-07-18 16:20:51');
INSERT INTO `delivery_types` VALUES (2, 'Envío por Express', 1, '2025-07-18 16:20:51', '2025-07-18 16:20:51');
INSERT INTO `delivery_types` VALUES (3, 'Envío con fecha de programación', 1, '2025-07-18 16:20:51', '2025-07-18 16:20:51');
INSERT INTO `delivery_types` VALUES (4, 'Envío por rango de fechas', 1, '2025-07-18 16:20:51', '2025-07-18 16:20:51');

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
INSERT INTO `document_types` VALUES (1, 'Documento de Identidad Nacional', 'D.N.I.', 1, '2025-07-18 16:20:51', '2025-07-18 16:20:51');
INSERT INTO `document_types` VALUES (2, 'Carné de Extranjería', 'C.E.', 1, '2025-07-18 16:20:51', '2025-07-18 16:20:51');

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
-- Table structure for invoice_details
-- ----------------------------
DROP TABLE IF EXISTS `invoice_details`;
CREATE TABLE `invoice_details`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice_details
-- ----------------------------
INSERT INTO `invoice_details` VALUES (1, 'F001-00000001', 1, 0, 1500.00, 1, 1500.00, '2025-08-31 01:23:51', '2025-08-31 01:23:51');
INSERT INTO `invoice_details` VALUES (2, 'F001-00000001', 2, 0, 1300.00, 1, 1300.00, '2025-08-31 01:23:51', '2025-08-31 01:23:51');
INSERT INTO `invoice_details` VALUES (3, 'F001-00000002', 1, 0, 1500.00, 1, 1500.00, '2025-09-07 17:39:49', '2025-09-07 17:39:49');
INSERT INTO `invoice_details` VALUES (4, 'F001-00000002', 4, 0, 2000.00, 1, 2000.00, '2025-09-07 17:39:49', '2025-09-07 17:39:49');

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices`  (
  `id` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued_at` date NOT NULL,
  `expired_at` date NOT NULL,
  `tax` decimal(10, 2) NOT NULL,
  `ind_action` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoices
-- ----------------------------
INSERT INTO `invoices` VALUES ('F001-00000001', 2, 'F', '2025-08-15', '2025-09-15', 18.00, 'B', 1, '2025-08-31 01:23:51', '2025-08-31 01:23:51');
INSERT INTO `invoices` VALUES ('F001-00000002', 2, 'F', '2025-08-15', '2025-09-15', 18.00, 'B', 1, '2025-09-07 17:39:49', '2025-09-07 17:39:49');

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
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 394 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (365, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (366, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (367, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (368, '2025_05_30_233721_apps', 1);
INSERT INTO `migrations` VALUES (369, '2025_05_31_010205_create_profiles_table', 1);
INSERT INTO `migrations` VALUES (370, '2025_05_31_010353_create_roles_table', 1);
INSERT INTO `migrations` VALUES (371, '2025_05_31_010732_create_accounts_table', 1);
INSERT INTO `migrations` VALUES (372, '2025_05_31_011330_create_audits_table', 1);
INSERT INTO `migrations` VALUES (373, '2025_05_31_012010_create_service_types_table', 1);
INSERT INTO `migrations` VALUES (374, '2025_05_31_012128_create_services_table', 1);
INSERT INTO `migrations` VALUES (375, '2025_05_31_012623_create_sequences_table', 1);
INSERT INTO `migrations` VALUES (376, '2025_05_31_013308_create_categories_table', 1);
INSERT INTO `migrations` VALUES (377, '2025_05_31_013716_create_products_table', 1);
INSERT INTO `migrations` VALUES (378, '2025_05_31_014529_create_product_resources_table', 1);
INSERT INTO `migrations` VALUES (379, '2025_05_31_014840_create_product_movements_table', 1);
INSERT INTO `migrations` VALUES (380, '2025_05_31_015526_create_ubigeos_table', 1);
INSERT INTO `migrations` VALUES (381, '2025_05_31_015815_create_document_types_table', 1);
INSERT INTO `migrations` VALUES (382, '2025_05_31_020626_create_customers_table', 1);
INSERT INTO `migrations` VALUES (383, '2025_05_31_091306_create_invoices_table', 1);
INSERT INTO `migrations` VALUES (384, '2025_05_31_093228_create_invoice_details_table', 1);
INSERT INTO `migrations` VALUES (385, '2025_05_31_094428_create_payment_types_table', 1);
INSERT INTO `migrations` VALUES (386, '2025_05_31_095834_create_banks_table', 1);
INSERT INTO `migrations` VALUES (387, '2025_05_31_100055_create_card_types_table', 1);
INSERT INTO `migrations` VALUES (388, '2025_05_31_101604_create_payments_table', 1);
INSERT INTO `migrations` VALUES (389, '2025_05_31_102444_create_delivery_types_table', 1);
INSERT INTO `migrations` VALUES (390, '2025_05_31_152111_create_deliveries_table', 1);
INSERT INTO `migrations` VALUES (391, '2025_05_31_153224_create_delivery_movements_table', 1);
INSERT INTO `migrations` VALUES (392, '2025_05_31_153722_create_delivery_movement_resources_table', 1);
INSERT INTO `migrations` VALUES (393, '2025_07_18_155129_create_contacts_table', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_types
-- ----------------------------
INSERT INTO `payment_types` VALUES (1, 'Tarjeta de Débito/Crédito', 1, '2025-07-18 16:20:51', '2025-07-18 16:20:51');
INSERT INTO `payment_types` VALUES (2, 'Transferencia Bancaria', 1, '2025-07-18 16:20:51', '2025-07-18 16:20:51');
INSERT INTO `payment_types` VALUES (3, 'Plataforma de Pagon en Línea', 1, '2025-07-18 16:20:51', '2025-07-18 16:20:51');
INSERT INTO `payment_types` VALUES (4, 'Billetera Electrónica', 1, '2025-07-18 16:20:51', '2025-07-18 16:20:51');
INSERT INTO `payment_types` VALUES (5, 'Yape', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');
INSERT INTO `payment_types` VALUES (6, 'Plin', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_type_id` tinyint(4) NOT NULL,
  `bank_id` tinyint(4) NOT NULL,
  `card_type_id` tinyint(4) NOT NULL,
  `invoice_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_number` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_expired` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_cvv` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation_number` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payments
-- ----------------------------

-- ----------------------------
-- Table structure for product_movements
-- ----------------------------
DROP TABLE IF EXISTS `product_movements`;
CREATE TABLE `product_movements`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_order` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_price` decimal(10, 2) NOT NULL,
  `tax` decimal(10, 2) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_movements
-- ----------------------------

-- ----------------------------
-- Table structure for product_resources
-- ----------------------------
DROP TABLE IF EXISTS `product_resources`;
CREATE TABLE `product_resources`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_resources
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` tinyint(4) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimension` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` decimal(10, 2) NOT NULL,
  `cost_price` decimal(10, 2) NOT NULL,
  `sales_price` decimal(10, 2) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `min_stock` smallint(6) NOT NULL,
  `max_stock` smallint(6) NOT NULL,
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 18, 'Cadena de plata 925', 'Cadena de plata 925 para hombre tipo cordón. Largo 50cm', 'Plateado', '50cm', 10.00, 1090.00, 1500.00, 15, 5, 45, 'products/wUIGAN21QDzTQ9XOlOEvWTWmRN6r34YhAgM8WQdX.webp', 1, '2025-08-08 23:22:58', '2025-08-08 23:22:58');
INSERT INTO `products` VALUES (2, 19, 'Cadena de plata 925', 'Cadena de plata 925 para Hombre, Largo: 60cm', 'Plateado', '60cm', 15.00, 800.00, 1300.00, 12, 4, 76, 'products/qbjeZHPpuUlxLJSSpbIkw1lRhKulDrfT7JBmcZyY.webp', 1, '2025-08-08 23:26:11', '2025-08-08 23:26:11');
INSERT INTO `products` VALUES (3, 20, 'Cadena de plata 925', 'Cadena de plata 925. Largo: 60 cm.', 'Plateado', '60cm', 18.00, 400.00, 700.00, 23, 15, 85, 'products/T8nJqOYY7onYEPKFxombOaMjklGazEb2invY2Hti.webp', 1, '2025-08-08 23:28:42', '2025-08-08 23:28:42');
INSERT INTO `products` VALUES (4, 5, 'Aretes de punto de luz de oro 18k.', 'Aretes de punto de luz de oro 18k.', 'Dorado', '1cm', 18.00, 1000.00, 2000.00, 50, 25, 100, 'products/fqvSvwYZ81sxQ5GU16jgquPIOua5pibVUAA9qMKb.webp', 1, '2025-08-08 23:34:36', '2025-08-08 23:34:36');
INSERT INTO `products` VALUES (5, 6, 'Aretes de oro blanco 18k con diamantes y zafiro', 'Aretes de oro blanco 18k con diamantes y zafiro en forma de oval', 'Oro Blanco', '3x2cm', 18.00, 2500.00, 4000.00, 15, 5, 35, 'products/KEP84w1Nmyr1rxjVlNrpuGl6qSSE5LzqBUduePoi.jpg', 1, '2025-08-08 23:36:53', '2025-08-08 23:36:53');
INSERT INTO `products` VALUES (6, 7, 'Aretes de oro blanco 18k modelo colgante con diamantes', 'Aretes de oro blanco 18k modelo colgante con diamantes', 'Oro Blanco', '4x4cm', 18.00, 4000.00, 5500.00, 25, 15, 55, 'products/5WrR09GgIpCEfqWsCB8W1MSrw6e5qku4R8xRs008.jpg', 1, '2025-08-08 23:39:03', '2025-08-08 23:39:03');
INSERT INTO `products` VALUES (7, 8, 'Aretes de oro amarillo 18K con peridoto  y diamantes alrededor', 'Aretes de oro amarillo 18K con peridoto  y diamantes alrededor', 'Oro Amarillo', '3x3cm', 18.00, 6000.00, 7500.00, 25, 15, 95, 'products/kqpxey9shGBetWYkxoQLDhyjEBcbwpKt4y01IBc8.jpg', 1, '2025-08-08 23:42:18', '2025-08-08 23:42:18');
INSERT INTO `products` VALUES (8, 9, 'Aretes de oro amarillo 18k modelo roseta con diamantes', 'Aretes de oro amarillo 18k modelo roseta con diamantes.', 'Oro Amarillo', '3x2cm', 18.00, 3500.00, 4400.00, 25, 15, 55, 'products/B8TCDqUGWI2HjD1rYnntM3HeT1CtOA8ecuh74HJs.jpg', 1, '2025-08-08 23:44:26', '2025-08-08 23:44:26');
INSERT INTO `products` VALUES (9, 5, 'Aretes de punto de luz de plata 22k.', 'Aretes de punto de luz de plata 22k.', 'Plateado', '15x15x10 cm', 22.00, 450.00, 650.00, 45, 25, 140, 'products/Xm0gdUzJXYuGtVzFwONVYqbY2cGkimLEfpbWeHw9.jpg', 1, '2025-08-18 04:47:35', '2025-08-18 04:47:35');

-- ----------------------------
-- Table structure for profiles
-- ----------------------------
DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles`  (
  `role_id` tinyint(4) NOT NULL,
  `app_id` tinyint(4) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`, `app_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profiles
-- ----------------------------
INSERT INTO `profiles` VALUES (1, 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');
INSERT INTO `profiles` VALUES (1, 2, '2025-07-18 16:20:54', '2025-07-18 16:20:54');
INSERT INTO `profiles` VALUES (1, 3, '2025-07-18 16:20:54', '2025-07-18 16:20:54');
INSERT INTO `profiles` VALUES (1, 4, '2025-07-18 16:20:54', '2025-07-18 16:20:54');
INSERT INTO `profiles` VALUES (1, 5, '2025-07-18 16:20:54', '2025-07-18 16:20:54');
INSERT INTO `profiles` VALUES (1, 6, '2025-07-18 16:20:54', '2025-07-18 16:20:54');
INSERT INTO `profiles` VALUES (1, 7, '2025-07-18 16:20:54', '2025-07-18 16:20:54');
INSERT INTO `profiles` VALUES (1, 8, '2025-07-18 16:20:54', '2025-07-18 16:20:54');
INSERT INTO `profiles` VALUES (1, 9, '2025-07-18 16:20:54', '2025-07-18 16:20:54');
INSERT INTO `profiles` VALUES (1, 10, '2025-07-18 16:20:54', '2025-07-18 16:20:54');

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
INSERT INTO `roles` VALUES (1, 'Administrador', 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');
INSERT INTO `roles` VALUES (2, 'Operador', 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');

-- ----------------------------
-- Table structure for sequences
-- ----------------------------
DROP TABLE IF EXISTS `sequences`;
CREATE TABLE `sequences`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
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
INSERT INTO `sequences` VALUES (1, 'B', 'B001-00000000', 1, '2025-07-18 16:20:53', '2025-07-18 16:20:53');
INSERT INTO `sequences` VALUES (2, 'F', 'F001-00000002', 1, '2025-07-18 16:20:53', '2025-09-07 17:39:49');
INSERT INTO `sequences` VALUES (3, 'T', 'TR25-00000002', 1, '2025-07-18 16:20:53', '2025-09-07 17:39:49');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_types
-- ----------------------------
INSERT INTO `service_types` VALUES (1, 'Fabricación', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');
INSERT INTO `service_types` VALUES (2, 'Diseño', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');
INSERT INTO `service_types` VALUES (3, 'Restauración', 1, '2025-07-18 16:20:52', '2025-07-18 16:20:52');

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_type_id` tinyint(4) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(16, 2) NOT NULL,
  `tax` decimal(18, 2) NOT NULL,
  `ind_status` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of services
-- ----------------------------

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
INSERT INTO `sessions` VALUES ('7GSrTxhju4FIcxonkTNLFLCnQS94w4dt5oTJm6v0', NULL, '192.168.5.74', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiWHJLSEJ2M1Q0R1ZPQU5wbUp2bzYwVlFVMDZnTEozcHFrYzFZTDRpMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xOTIuMTY4LjUuNzQ6ODAwMC9jYXRhbG9nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNzoiY2F0YWxvZy12aWV3LXR5cGUiO3M6NDoiZ3JpZCI7czoxOToiY2F0YWxvZy1maWx0ZXItdHlwZSI7czowOiIiO3M6MjU6ImNhdGFsb2ctZmlsdGVyLWNhdGVnb3JpZXMiO3M6MDoiIjtzOjIxOiJjYXRhbG9nLWZpbHRlci1wcmljZXMiO3M6MDoiIjt9', 1757176631);
INSERT INTO `sessions` VALUES ('Ew2GhHxL2TzD5qUIH3aWERuQ2yfrWBDLfMeYekS4', NULL, '192.168.5.74', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YToyNTp7czo2OiJfdG9rZW4iO3M6NDA6Ikh2eXpnRlg0RHNYTDhveFVXTkx2bFh4RUVWdnBZMjVSMjVuaTE2Q1oiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI0OiJodHRwOi8vMTkyLjE2OC41Ljc0OjgwMDAiO31zOjE3OiJjYXRhbG9nLXZpZXctdHlwZSI7czo0OiJncmlkIjtzOjE5OiJjYXRhbG9nLWZpbHRlci10eXBlIjtzOjA6IiI7czoyNToiY2F0YWxvZy1maWx0ZXItY2F0ZWdvcmllcyI7czowOiIiO3M6MjE6ImNhdGFsb2ctZmlsdGVyLXByaWNlcyI7czowOiIiO3M6MTM6ImRlbGl2ZXJ5X3R5cGUiO3M6MToiMiI7czo3OiJyZWNlaXZlIjtzOjI2OiJBbGJlcnRvIEdhcmPDrWEgQXNwZSBQcmFkYSI7czoxNToiZGVwYXJ0bWVudF9jb2RlIjtzOjI6IjE1IjtzOjEzOiJwcm92aW5jZV9jb2RlIjtzOjI6IjAxIjtzOjEzOiJkaXN0cmljdF9jb2RlIjtzOjI6IjEzIjtzOjk6InViaWdlb19pZCI7aToxNDE2O3M6NzoiYWRkcmVzcyI7czoyNDoiSmlyw7NuIMOaemFyZXMgZGUgSnVuw61uIjtzOjEyOiJhZGRyZXNzX251bTEiO3M6MzoiMzAyIjtzOjEyOiJhZGRyZXNzX251bTIiO3M6NjoiRHB0byAyIjtzOjg6ImxhdGl0dWRlIjtzOjM6IjAuMCI7czo5OiJsb25naXR1ZGUiO3M6MzoiMC4wIjtzOjk6ImNhcmRfdHlwZSI7czoxOiIxIjtzOjQ6ImJhbmsiO3M6MToiMSI7czoxMToiY2FyZF9udW1iZXIiO3M6MTk6IjQ3ODEtNTQ4Ny04NTU0LTMzMjUiO3M6MTE6ImNhcmRfZXhwaXJlIjtzOjU6IjEyLzI5IjtzOjg6ImNhcmRfY3Z2IjtzOjM6Ijc4NSI7czoxNjoiZG9jdW1lbnRfdHlwZV9pZCI7czoxOiIxIjtzOjE1OiJkb2N1bWVudF9udW1iZXIiO3M6ODoiNDg3MTU5MzIiO30=', 1757267054);
INSERT INTO `sessions` VALUES ('RCHG40TwKMhTfpq1RnJYSjYlvkMZNobYFgAMzQ4H', NULL, '192.168.5.74', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YToxNTp7czo2OiJfdG9rZW4iO3M6NDA6ImJhQVhrRWt5MDZ2RkFVbHg4UXM2REJ6Z2gySDZ4MXhFeFBSd1VCOTUiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vMTkyLjE2OC41Ljc0OjgwMDAvY2FydHMiO31zOjE3OiJjYXRhbG9nLXZpZXctdHlwZSI7czo0OiJncmlkIjtzOjE5OiJjYXRhbG9nLWZpbHRlci10eXBlIjtzOjA6IiI7czoyNToiY2F0YWxvZy1maWx0ZXItY2F0ZWdvcmllcyI7czowOiIiO3M6MjE6ImNhdGFsb2ctZmlsdGVyLXByaWNlcyI7czowOiIiO3M6NzoibWVzc2FnZSI7czo0MToiQmllbnZlbmlkb3MgYSBsYSBQbGF0YWZvcm1hIENsaWVudGUgREdBTEEiO3M6MTE6ImN1c3RvbWVyX2lkIjtpOjI7czoxOToiY3VzdG9tZXJfZmlyc3RfbmFtZSI7czoxNjoiSkVTU0lDQSBBTkdFTElDQSI7czoyMDoiY3VzdG9tZXJfbWlkZGxlX25hbWUiO3M6NDoiQUlSQSI7czoxODoiY3VzdG9tZXJfbGFzdF9uYW1lIjtzOjc6IkhJREFMR08iO3M6MTQ6ImN1c3RvbWVyX2VtYWlsIjtzOjI0OiJqZXNzYW5nZWwuYWlyYUBnbWFpbC5jb20iO3M6NDoiY2FydCI7YTozOntpOjE7YTo3OntzOjI6ImlkIjtpOjE7czoxMToiY2F0ZWdvcnlfaWQiO2k6MTg7czo0OiJuYW1lIjtzOjE5OiJDYWRlbmEgZGUgcGxhdGEgOTI1IjtzOjExOiJkZXNjcmlwdGlvbiI7czo1NjoiQ2FkZW5hIGRlIHBsYXRhIDkyNSBwYXJhIGhvbWJyZSB0aXBvIGNvcmTDs24uIExhcmdvIDUwY20iO3M6MTE6InNhbGVzX3ByaWNlIjtzOjc6IjE1MDAuMDAiO3M6ODoicXVhbnRpdHkiO3M6MToiMiI7czoxMDoibGlua19pbWFnZSI7czo1NDoicHJvZHVjdHMvd1VJR0FOMjFRRHpUUTlYT2xPRXZXVFdtUk42cjM0WWhBZ004V1FkWC53ZWJwIjt9aTo2O2E6Nzp7czoyOiJpZCI7aTo2O3M6MTE6ImNhdGVnb3J5X2lkIjtpOjc7czo0OiJuYW1lIjtzOjU0OiJBcmV0ZXMgZGUgb3JvIGJsYW5jbyAxOGsgbW9kZWxvIGNvbGdhbnRlIGNvbiBkaWFtYW50ZXMiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjU0OiJBcmV0ZXMgZGUgb3JvIGJsYW5jbyAxOGsgbW9kZWxvIGNvbGdhbnRlIGNvbiBkaWFtYW50ZXMiO3M6MTE6InNhbGVzX3ByaWNlIjtzOjc6IjU1MDAuMDAiO3M6ODoicXVhbnRpdHkiO2k6MTtzOjEwOiJsaW5rX2ltYWdlIjtzOjUzOiJwcm9kdWN0cy81V3JSMDlHZ0lwQ0VmcVdzQ0I4VzFNU3J3NmU1cWt1NFI4eFJzMDA4LmpwZyI7fWk6OTthOjc6e3M6MjoiaWQiO2k6OTtzOjExOiJjYXRlZ29yeV9pZCI7aTo1O3M6NDoibmFtZSI7czozNjoiQXJldGVzIGRlIHB1bnRvIGRlIGx1eiBkZSBwbGF0YSAyMmsuIjtzOjExOiJkZXNjcmlwdGlvbiI7czozNjoiQXJldGVzIGRlIHB1bnRvIGRlIGx1eiBkZSBwbGF0YSAyMmsuIjtzOjExOiJzYWxlc19wcmljZSI7czo2OiI2NTAuMDAiO3M6ODoicXVhbnRpdHkiO2k6MTtzOjEwOiJsaW5rX2ltYWdlIjtzOjUzOiJwcm9kdWN0cy9YbTBnZFV6SlhZdUd0VnpGd09OVllxYlkyY0draW1MRWZwYldlSHc5LmpwZyI7fX1zOjEwOiJhbW91bnRDYXJ0IjtkOjkxNTA7fQ==', 1757127135);

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2074 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ubigeos
-- ----------------------------
INSERT INTO `ubigeos` VALUES (1, '01', '00', '00', 'Amazonas');
INSERT INTO `ubigeos` VALUES (2, '01', '01', '00', 'Chachapoyas');
INSERT INTO `ubigeos` VALUES (3, '01', '01', '01', 'Chachapoyas');
INSERT INTO `ubigeos` VALUES (4, '01', '01', '02', 'Asuncion');
INSERT INTO `ubigeos` VALUES (5, '01', '01', '03', 'Balsas');
INSERT INTO `ubigeos` VALUES (6, '01', '01', '04', 'Cheto');
INSERT INTO `ubigeos` VALUES (7, '01', '01', '05', 'Chiliquin');
INSERT INTO `ubigeos` VALUES (8, '01', '01', '06', 'Chuquibamba');
INSERT INTO `ubigeos` VALUES (9, '01', '01', '07', 'Granada');
INSERT INTO `ubigeos` VALUES (10, '01', '01', '08', 'Huancas');
INSERT INTO `ubigeos` VALUES (11, '01', '01', '09', 'La Jalca');
INSERT INTO `ubigeos` VALUES (12, '01', '01', '10', 'Leimebamba');
INSERT INTO `ubigeos` VALUES (13, '01', '01', '11', 'Levanto');
INSERT INTO `ubigeos` VALUES (14, '01', '01', '12', 'Magdalena');
INSERT INTO `ubigeos` VALUES (15, '01', '01', '13', 'Mariscal Castilla');
INSERT INTO `ubigeos` VALUES (16, '01', '01', '14', 'Molinopampa');
INSERT INTO `ubigeos` VALUES (17, '01', '01', '15', 'Montevideo');
INSERT INTO `ubigeos` VALUES (18, '01', '01', '16', 'Olleros');
INSERT INTO `ubigeos` VALUES (19, '01', '01', '17', 'Quinjalca');
INSERT INTO `ubigeos` VALUES (20, '01', '01', '18', 'San Francisco de Daguas');
INSERT INTO `ubigeos` VALUES (21, '01', '01', '19', 'San Isidro de Maino');
INSERT INTO `ubigeos` VALUES (22, '01', '01', '20', 'Soloco');
INSERT INTO `ubigeos` VALUES (23, '01', '01', '21', 'Sonche');
INSERT INTO `ubigeos` VALUES (24, '01', '02', '00', 'Bagua');
INSERT INTO `ubigeos` VALUES (25, '01', '02', '01', 'Bagua');
INSERT INTO `ubigeos` VALUES (26, '01', '02', '02', 'Aramango');
INSERT INTO `ubigeos` VALUES (27, '01', '02', '03', 'Copallin');
INSERT INTO `ubigeos` VALUES (28, '01', '02', '04', 'El Parco');
INSERT INTO `ubigeos` VALUES (29, '01', '02', '05', 'Imaza');
INSERT INTO `ubigeos` VALUES (30, '01', '02', '06', 'La Peca');
INSERT INTO `ubigeos` VALUES (31, '01', '03', '00', 'Bongara');
INSERT INTO `ubigeos` VALUES (32, '01', '03', '01', 'Jumbilla');
INSERT INTO `ubigeos` VALUES (33, '01', '03', '02', 'Chisquilla');
INSERT INTO `ubigeos` VALUES (34, '01', '03', '03', 'Churuja');
INSERT INTO `ubigeos` VALUES (35, '01', '03', '04', 'Corosha');
INSERT INTO `ubigeos` VALUES (36, '01', '03', '05', 'Cuispes');
INSERT INTO `ubigeos` VALUES (37, '01', '03', '06', 'Florida');
INSERT INTO `ubigeos` VALUES (38, '01', '03', '07', 'Jazán');
INSERT INTO `ubigeos` VALUES (39, '01', '03', '08', 'Recta');
INSERT INTO `ubigeos` VALUES (40, '01', '03', '09', 'San Carlos');
INSERT INTO `ubigeos` VALUES (41, '01', '03', '10', 'Shipasbamba');
INSERT INTO `ubigeos` VALUES (42, '01', '03', '11', 'Valera');
INSERT INTO `ubigeos` VALUES (43, '01', '03', '12', 'Yambrasbamba');
INSERT INTO `ubigeos` VALUES (44, '01', '04', '00', 'Condorcanqui');
INSERT INTO `ubigeos` VALUES (45, '01', '04', '01', 'Nieva');
INSERT INTO `ubigeos` VALUES (46, '01', '04', '02', 'El Cenepa');
INSERT INTO `ubigeos` VALUES (47, '01', '04', '03', 'Rio Santiago');
INSERT INTO `ubigeos` VALUES (48, '01', '05', '00', 'Luya');
INSERT INTO `ubigeos` VALUES (49, '01', '05', '01', 'Lamud');
INSERT INTO `ubigeos` VALUES (50, '01', '05', '02', 'Camporredondo');
INSERT INTO `ubigeos` VALUES (51, '01', '05', '03', 'Cocabamba');
INSERT INTO `ubigeos` VALUES (52, '01', '05', '04', 'Colcamar');
INSERT INTO `ubigeos` VALUES (53, '01', '05', '05', 'Conila');
INSERT INTO `ubigeos` VALUES (54, '01', '05', '06', 'Inguilpata');
INSERT INTO `ubigeos` VALUES (55, '01', '05', '07', 'Longuita');
INSERT INTO `ubigeos` VALUES (56, '01', '05', '08', 'Lonya Chico');
INSERT INTO `ubigeos` VALUES (57, '01', '05', '09', 'Luya');
INSERT INTO `ubigeos` VALUES (58, '01', '05', '10', 'Luya Viejo');
INSERT INTO `ubigeos` VALUES (59, '01', '05', '11', 'Maria');
INSERT INTO `ubigeos` VALUES (60, '01', '05', '12', 'Ocalli');
INSERT INTO `ubigeos` VALUES (61, '01', '05', '13', 'Ocumal');
INSERT INTO `ubigeos` VALUES (62, '01', '05', '14', 'Pisuquia');
INSERT INTO `ubigeos` VALUES (63, '01', '05', '15', 'Providencia');
INSERT INTO `ubigeos` VALUES (64, '01', '05', '16', 'San Cristobal');
INSERT INTO `ubigeos` VALUES (65, '01', '05', '17', 'San Francisco del Yeso');
INSERT INTO `ubigeos` VALUES (66, '01', '05', '18', 'San Jeronimo');
INSERT INTO `ubigeos` VALUES (67, '01', '05', '19', 'San Juan de Lopecancha');
INSERT INTO `ubigeos` VALUES (68, '01', '05', '20', 'Santa Catalina');
INSERT INTO `ubigeos` VALUES (69, '01', '05', '21', 'Santo Tomas');
INSERT INTO `ubigeos` VALUES (70, '01', '05', '22', 'Tingo');
INSERT INTO `ubigeos` VALUES (71, '01', '05', '23', 'Trita');
INSERT INTO `ubigeos` VALUES (72, '01', '06', '00', 'Rodriguez de Mendoza');
INSERT INTO `ubigeos` VALUES (73, '01', '06', '01', 'San Nicolas');
INSERT INTO `ubigeos` VALUES (74, '01', '06', '02', 'Chirimoto');
INSERT INTO `ubigeos` VALUES (75, '01', '06', '03', 'Cochamal');
INSERT INTO `ubigeos` VALUES (76, '01', '06', '04', 'Huambo');
INSERT INTO `ubigeos` VALUES (77, '01', '06', '05', 'Limabamba');
INSERT INTO `ubigeos` VALUES (78, '01', '06', '06', 'Longar');
INSERT INTO `ubigeos` VALUES (79, '01', '06', '07', 'Mariscal Benavides');
INSERT INTO `ubigeos` VALUES (80, '01', '06', '08', 'Milpuc');
INSERT INTO `ubigeos` VALUES (81, '01', '06', '09', 'Omia');
INSERT INTO `ubigeos` VALUES (82, '01', '06', '10', 'Santa Rosa');
INSERT INTO `ubigeos` VALUES (83, '01', '06', '11', 'Totora');
INSERT INTO `ubigeos` VALUES (84, '01', '06', '12', 'Vista Alegre');
INSERT INTO `ubigeos` VALUES (85, '01', '07', '00', 'Utcubamba');
INSERT INTO `ubigeos` VALUES (86, '01', '07', '01', 'Bagua Grande');
INSERT INTO `ubigeos` VALUES (87, '01', '07', '02', 'Cajaruro');
INSERT INTO `ubigeos` VALUES (88, '01', '07', '03', 'Cumba');
INSERT INTO `ubigeos` VALUES (89, '01', '07', '04', 'El Milagro');
INSERT INTO `ubigeos` VALUES (90, '01', '07', '05', 'Jamalca');
INSERT INTO `ubigeos` VALUES (91, '01', '07', '06', 'Lonya Grande');
INSERT INTO `ubigeos` VALUES (92, '01', '07', '07', 'Yamon');
INSERT INTO `ubigeos` VALUES (93, '02', '00', '00', 'Ancash');
INSERT INTO `ubigeos` VALUES (94, '02', '01', '00', 'Huaraz');
INSERT INTO `ubigeos` VALUES (95, '02', '01', '01', 'Huaraz');
INSERT INTO `ubigeos` VALUES (96, '02', '01', '02', 'Cochabamba');
INSERT INTO `ubigeos` VALUES (97, '02', '01', '03', 'Colcabamba');
INSERT INTO `ubigeos` VALUES (98, '02', '01', '04', 'Huanchay');
INSERT INTO `ubigeos` VALUES (99, '02', '01', '05', 'Independencia');
INSERT INTO `ubigeos` VALUES (100, '02', '01', '06', 'Jangas');
INSERT INTO `ubigeos` VALUES (101, '02', '01', '07', 'La Libertad');
INSERT INTO `ubigeos` VALUES (102, '02', '01', '08', 'Olleros');
INSERT INTO `ubigeos` VALUES (103, '02', '01', '09', 'Pampas');
INSERT INTO `ubigeos` VALUES (104, '02', '01', '10', 'Pariacoto');
INSERT INTO `ubigeos` VALUES (105, '02', '01', '11', 'Pira');
INSERT INTO `ubigeos` VALUES (106, '02', '01', '12', 'Tarica');
INSERT INTO `ubigeos` VALUES (107, '02', '02', '00', 'Aija');
INSERT INTO `ubigeos` VALUES (108, '02', '02', '01', 'Aija');
INSERT INTO `ubigeos` VALUES (109, '02', '02', '02', 'Coris');
INSERT INTO `ubigeos` VALUES (110, '02', '02', '03', 'Huacllan');
INSERT INTO `ubigeos` VALUES (111, '02', '02', '04', 'La Merced');
INSERT INTO `ubigeos` VALUES (112, '02', '02', '05', 'Succha');
INSERT INTO `ubigeos` VALUES (113, '02', '03', '00', 'Antonio Raymondi');
INSERT INTO `ubigeos` VALUES (114, '02', '03', '01', 'Llamellin');
INSERT INTO `ubigeos` VALUES (115, '02', '03', '02', 'Aczo');
INSERT INTO `ubigeos` VALUES (116, '02', '03', '03', 'Chaccho');
INSERT INTO `ubigeos` VALUES (117, '02', '03', '04', 'Chingas');
INSERT INTO `ubigeos` VALUES (118, '02', '03', '05', 'Mirgas');
INSERT INTO `ubigeos` VALUES (119, '02', '03', '06', 'San Juan de Rontoy');
INSERT INTO `ubigeos` VALUES (120, '02', '04', '00', 'Asuncion');
INSERT INTO `ubigeos` VALUES (121, '02', '04', '01', 'Chacas');
INSERT INTO `ubigeos` VALUES (122, '02', '04', '02', 'Acochaca');
INSERT INTO `ubigeos` VALUES (123, '02', '05', '00', 'Bolognesi');
INSERT INTO `ubigeos` VALUES (124, '02', '05', '01', 'Chiquian');
INSERT INTO `ubigeos` VALUES (125, '02', '05', '02', 'Abelardo Pardo Lezameta');
INSERT INTO `ubigeos` VALUES (126, '02', '05', '03', 'Antonio Raymondi');
INSERT INTO `ubigeos` VALUES (127, '02', '05', '04', 'Aquia');
INSERT INTO `ubigeos` VALUES (128, '02', '05', '05', 'Cajacay');
INSERT INTO `ubigeos` VALUES (129, '02', '05', '06', 'Canis');
INSERT INTO `ubigeos` VALUES (130, '02', '05', '07', 'Colquioc');
INSERT INTO `ubigeos` VALUES (131, '02', '05', '08', 'Huallanca');
INSERT INTO `ubigeos` VALUES (132, '02', '05', '09', 'Huasta');
INSERT INTO `ubigeos` VALUES (133, '02', '05', '10', 'Huayllacayan');
INSERT INTO `ubigeos` VALUES (134, '02', '05', '11', 'La Primavera');
INSERT INTO `ubigeos` VALUES (135, '02', '05', '12', 'Mangas');
INSERT INTO `ubigeos` VALUES (136, '02', '05', '13', 'Pacllon');
INSERT INTO `ubigeos` VALUES (137, '02', '05', '14', 'San Miguel de Corpanqui');
INSERT INTO `ubigeos` VALUES (138, '02', '05', '15', 'Ticllos');
INSERT INTO `ubigeos` VALUES (139, '02', '06', '00', 'Carhuaz');
INSERT INTO `ubigeos` VALUES (140, '02', '06', '01', 'Carhuaz');
INSERT INTO `ubigeos` VALUES (141, '02', '06', '02', 'Acopampa');
INSERT INTO `ubigeos` VALUES (142, '02', '06', '03', 'Amashca');
INSERT INTO `ubigeos` VALUES (143, '02', '06', '04', 'Anta');
INSERT INTO `ubigeos` VALUES (144, '02', '06', '05', 'Ataquero');
INSERT INTO `ubigeos` VALUES (145, '02', '06', '06', 'Marcara');
INSERT INTO `ubigeos` VALUES (146, '02', '06', '07', 'Pariahuanca');
INSERT INTO `ubigeos` VALUES (147, '02', '06', '08', 'San Miguel de Aco');
INSERT INTO `ubigeos` VALUES (148, '02', '06', '09', 'Shilla');
INSERT INTO `ubigeos` VALUES (149, '02', '06', '10', 'Tinco');
INSERT INTO `ubigeos` VALUES (150, '02', '06', '11', 'Yungar');
INSERT INTO `ubigeos` VALUES (151, '02', '07', '00', 'Carlos Fermin Fitzcarrald');
INSERT INTO `ubigeos` VALUES (152, '02', '07', '01', 'San Luis');
INSERT INTO `ubigeos` VALUES (153, '02', '07', '02', 'San Nicolas');
INSERT INTO `ubigeos` VALUES (154, '02', '07', '03', 'Yauya');
INSERT INTO `ubigeos` VALUES (155, '02', '08', '00', 'Casma');
INSERT INTO `ubigeos` VALUES (156, '02', '08', '01', 'Casma');
INSERT INTO `ubigeos` VALUES (157, '02', '08', '02', 'Buena Vista Alta');
INSERT INTO `ubigeos` VALUES (158, '02', '08', '03', 'Comandante Noel');
INSERT INTO `ubigeos` VALUES (159, '02', '08', '04', 'Yautan');
INSERT INTO `ubigeos` VALUES (160, '02', '09', '00', 'Corongo');
INSERT INTO `ubigeos` VALUES (161, '02', '09', '01', 'Corongo');
INSERT INTO `ubigeos` VALUES (162, '02', '09', '02', 'Aco');
INSERT INTO `ubigeos` VALUES (163, '02', '09', '03', 'Bambas');
INSERT INTO `ubigeos` VALUES (164, '02', '09', '04', 'Cusca');
INSERT INTO `ubigeos` VALUES (165, '02', '09', '05', 'La Pampa');
INSERT INTO `ubigeos` VALUES (166, '02', '09', '06', 'Yanac');
INSERT INTO `ubigeos` VALUES (167, '02', '09', '07', 'Yupan');
INSERT INTO `ubigeos` VALUES (168, '02', '10', '00', 'Huari');
INSERT INTO `ubigeos` VALUES (169, '02', '10', '01', 'Huari');
INSERT INTO `ubigeos` VALUES (170, '02', '10', '02', 'Anra');
INSERT INTO `ubigeos` VALUES (171, '02', '10', '03', 'Cajay');
INSERT INTO `ubigeos` VALUES (172, '02', '10', '04', 'Chavin de Huantar');
INSERT INTO `ubigeos` VALUES (173, '02', '10', '05', 'Huacachi');
INSERT INTO `ubigeos` VALUES (174, '02', '10', '06', 'Huacchis');
INSERT INTO `ubigeos` VALUES (175, '02', '10', '07', 'Huachis');
INSERT INTO `ubigeos` VALUES (176, '02', '10', '08', 'Huantar');
INSERT INTO `ubigeos` VALUES (177, '02', '10', '09', 'Masin');
INSERT INTO `ubigeos` VALUES (178, '02', '10', '10', 'Paucas');
INSERT INTO `ubigeos` VALUES (179, '02', '10', '11', 'Ponto');
INSERT INTO `ubigeos` VALUES (180, '02', '10', '12', 'Rahuapampa');
INSERT INTO `ubigeos` VALUES (181, '02', '10', '13', 'Rapayan');
INSERT INTO `ubigeos` VALUES (182, '02', '10', '14', 'San Marcos');
INSERT INTO `ubigeos` VALUES (183, '02', '10', '15', 'San Pedro de Chana');
INSERT INTO `ubigeos` VALUES (184, '02', '10', '16', 'Uco');
INSERT INTO `ubigeos` VALUES (185, '02', '11', '00', 'Huarmey');
INSERT INTO `ubigeos` VALUES (186, '02', '11', '01', 'Huarmey');
INSERT INTO `ubigeos` VALUES (187, '02', '11', '02', 'Cochapeti');
INSERT INTO `ubigeos` VALUES (188, '02', '11', '03', 'Culebras');
INSERT INTO `ubigeos` VALUES (189, '02', '11', '04', 'Huayan');
INSERT INTO `ubigeos` VALUES (190, '02', '11', '05', 'Malvas');
INSERT INTO `ubigeos` VALUES (191, '02', '12', '00', 'Huaylas');
INSERT INTO `ubigeos` VALUES (192, '02', '12', '01', 'Caraz');
INSERT INTO `ubigeos` VALUES (193, '02', '12', '02', 'Huallanca');
INSERT INTO `ubigeos` VALUES (194, '02', '12', '03', 'Huata');
INSERT INTO `ubigeos` VALUES (195, '02', '12', '04', 'Huaylas');
INSERT INTO `ubigeos` VALUES (196, '02', '12', '05', 'Mato');
INSERT INTO `ubigeos` VALUES (197, '02', '12', '06', 'Pamparomas');
INSERT INTO `ubigeos` VALUES (198, '02', '12', '07', 'Pueblo Libre');
INSERT INTO `ubigeos` VALUES (199, '02', '12', '08', 'Santa Cruz');
INSERT INTO `ubigeos` VALUES (200, '02', '12', '09', 'Santo Toribio');
INSERT INTO `ubigeos` VALUES (201, '02', '12', '10', 'Yuracmarca');
INSERT INTO `ubigeos` VALUES (202, '02', '13', '00', 'Mariscal Luzuriaga');
INSERT INTO `ubigeos` VALUES (203, '02', '13', '01', 'Piscobamba');
INSERT INTO `ubigeos` VALUES (204, '02', '13', '02', 'Casca');
INSERT INTO `ubigeos` VALUES (205, '02', '13', '03', 'Eleazar Guzman Barron');
INSERT INTO `ubigeos` VALUES (206, '02', '13', '04', 'Fidel Olivas Escudero');
INSERT INTO `ubigeos` VALUES (207, '02', '13', '05', 'Llama');
INSERT INTO `ubigeos` VALUES (208, '02', '13', '06', 'Llumpa');
INSERT INTO `ubigeos` VALUES (209, '02', '13', '07', 'Lucma');
INSERT INTO `ubigeos` VALUES (210, '02', '13', '08', 'Musga');
INSERT INTO `ubigeos` VALUES (211, '02', '14', '00', 'Ocros');
INSERT INTO `ubigeos` VALUES (212, '02', '14', '01', 'Ocros');
INSERT INTO `ubigeos` VALUES (213, '02', '14', '02', 'Acas');
INSERT INTO `ubigeos` VALUES (214, '02', '14', '03', 'Cajamarquilla');
INSERT INTO `ubigeos` VALUES (215, '02', '14', '04', 'Carhuapampa');
INSERT INTO `ubigeos` VALUES (216, '02', '14', '05', 'Cochas');
INSERT INTO `ubigeos` VALUES (217, '02', '14', '06', 'Congas');
INSERT INTO `ubigeos` VALUES (218, '02', '14', '07', 'Llipa');
INSERT INTO `ubigeos` VALUES (219, '02', '14', '08', 'San Cristobal de Rajan');
INSERT INTO `ubigeos` VALUES (220, '02', '14', '09', 'San Pedro');
INSERT INTO `ubigeos` VALUES (221, '02', '14', '10', 'Santiago de Chilcas');
INSERT INTO `ubigeos` VALUES (222, '02', '15', '00', 'Pallasca');
INSERT INTO `ubigeos` VALUES (223, '02', '15', '01', 'Cabana');
INSERT INTO `ubigeos` VALUES (224, '02', '15', '02', 'Bolognesi');
INSERT INTO `ubigeos` VALUES (225, '02', '15', '03', 'Conchucos');
INSERT INTO `ubigeos` VALUES (226, '02', '15', '04', 'Huacaschuque');
INSERT INTO `ubigeos` VALUES (227, '02', '15', '05', 'Huandoval');
INSERT INTO `ubigeos` VALUES (228, '02', '15', '06', 'Lacabamba');
INSERT INTO `ubigeos` VALUES (229, '02', '15', '07', 'Llapo');
INSERT INTO `ubigeos` VALUES (230, '02', '15', '08', 'Pallasca');
INSERT INTO `ubigeos` VALUES (231, '02', '15', '09', 'Pampas');
INSERT INTO `ubigeos` VALUES (232, '02', '15', '10', 'Santa Rosa');
INSERT INTO `ubigeos` VALUES (233, '02', '15', '11', 'Tauca');
INSERT INTO `ubigeos` VALUES (234, '02', '16', '00', 'Pomabamba');
INSERT INTO `ubigeos` VALUES (235, '02', '16', '01', 'Pomabamba');
INSERT INTO `ubigeos` VALUES (236, '02', '16', '02', 'Huayllan');
INSERT INTO `ubigeos` VALUES (237, '02', '16', '03', 'Parobamba');
INSERT INTO `ubigeos` VALUES (238, '02', '16', '04', 'Quinuabamba');
INSERT INTO `ubigeos` VALUES (239, '02', '17', '00', 'Recuay');
INSERT INTO `ubigeos` VALUES (240, '02', '17', '01', 'Recuay');
INSERT INTO `ubigeos` VALUES (241, '02', '17', '02', 'Catac');
INSERT INTO `ubigeos` VALUES (242, '02', '17', '03', 'Cotaparaco');
INSERT INTO `ubigeos` VALUES (243, '02', '17', '04', 'Huayllapampa');
INSERT INTO `ubigeos` VALUES (244, '02', '17', '05', 'Llacllin');
INSERT INTO `ubigeos` VALUES (245, '02', '17', '06', 'Marca');
INSERT INTO `ubigeos` VALUES (246, '02', '17', '07', 'Pampas Chico');
INSERT INTO `ubigeos` VALUES (247, '02', '17', '08', 'Pararin');
INSERT INTO `ubigeos` VALUES (248, '02', '17', '09', 'Tapacocha');
INSERT INTO `ubigeos` VALUES (249, '02', '17', '10', 'Ticapampa');
INSERT INTO `ubigeos` VALUES (250, '02', '18', '00', 'Santa');
INSERT INTO `ubigeos` VALUES (251, '02', '18', '01', 'Chimbote');
INSERT INTO `ubigeos` VALUES (252, '02', '18', '02', 'Caceres del Peru');
INSERT INTO `ubigeos` VALUES (253, '02', '18', '03', 'Coishco');
INSERT INTO `ubigeos` VALUES (254, '02', '18', '04', 'Macate');
INSERT INTO `ubigeos` VALUES (255, '02', '18', '05', 'Moro');
INSERT INTO `ubigeos` VALUES (256, '02', '18', '06', 'Nepeña');
INSERT INTO `ubigeos` VALUES (257, '02', '18', '07', 'Samanco');
INSERT INTO `ubigeos` VALUES (258, '02', '18', '08', 'Santa');
INSERT INTO `ubigeos` VALUES (259, '02', '18', '09', 'Nuevo Chimbote');
INSERT INTO `ubigeos` VALUES (260, '02', '19', '00', 'Sihuas');
INSERT INTO `ubigeos` VALUES (261, '02', '19', '01', 'Sihuas');
INSERT INTO `ubigeos` VALUES (262, '02', '19', '02', 'Acobamba');
INSERT INTO `ubigeos` VALUES (263, '02', '19', '03', 'Alfonso Ugarte');
INSERT INTO `ubigeos` VALUES (264, '02', '19', '04', 'Cashapampa');
INSERT INTO `ubigeos` VALUES (265, '02', '19', '05', 'Chingalpo');
INSERT INTO `ubigeos` VALUES (266, '02', '19', '06', 'Huayllabamba');
INSERT INTO `ubigeos` VALUES (267, '02', '19', '07', 'Quiches');
INSERT INTO `ubigeos` VALUES (268, '02', '19', '08', 'Ragash');
INSERT INTO `ubigeos` VALUES (269, '02', '19', '09', 'San Juan');
INSERT INTO `ubigeos` VALUES (270, '02', '19', '10', 'Sicsibamba');
INSERT INTO `ubigeos` VALUES (271, '02', '20', '00', 'Yungay');
INSERT INTO `ubigeos` VALUES (272, '02', '20', '01', 'Yungay');
INSERT INTO `ubigeos` VALUES (273, '02', '20', '02', 'Cascapara');
INSERT INTO `ubigeos` VALUES (274, '02', '20', '03', 'Mancos');
INSERT INTO `ubigeos` VALUES (275, '02', '20', '04', 'Matacoto');
INSERT INTO `ubigeos` VALUES (276, '02', '20', '05', 'Quillo');
INSERT INTO `ubigeos` VALUES (277, '02', '20', '06', 'Ranrahirca');
INSERT INTO `ubigeos` VALUES (278, '02', '20', '07', 'Shupluy');
INSERT INTO `ubigeos` VALUES (279, '02', '20', '08', 'Yanama');
INSERT INTO `ubigeos` VALUES (280, '03', '00', '00', 'Apurimac');
INSERT INTO `ubigeos` VALUES (281, '03', '01', '00', 'Abancay');
INSERT INTO `ubigeos` VALUES (282, '03', '01', '01', 'Abancay');
INSERT INTO `ubigeos` VALUES (283, '03', '01', '02', 'Chacoche');
INSERT INTO `ubigeos` VALUES (284, '03', '01', '03', 'Circa');
INSERT INTO `ubigeos` VALUES (285, '03', '01', '04', 'Curahuasi');
INSERT INTO `ubigeos` VALUES (286, '03', '01', '05', 'Huanipaca');
INSERT INTO `ubigeos` VALUES (287, '03', '01', '06', 'Lambrama');
INSERT INTO `ubigeos` VALUES (288, '03', '01', '07', 'Pichirhua');
INSERT INTO `ubigeos` VALUES (289, '03', '01', '08', 'San Pedro de Cachora');
INSERT INTO `ubigeos` VALUES (290, '03', '01', '09', 'Tamburco');
INSERT INTO `ubigeos` VALUES (291, '03', '02', '00', 'Andahuaylas');
INSERT INTO `ubigeos` VALUES (292, '03', '02', '01', 'Andahuaylas');
INSERT INTO `ubigeos` VALUES (293, '03', '02', '02', 'Andarapa');
INSERT INTO `ubigeos` VALUES (294, '03', '02', '03', 'Chiara');
INSERT INTO `ubigeos` VALUES (295, '03', '02', '04', 'Huancarama');
INSERT INTO `ubigeos` VALUES (296, '03', '02', '05', 'Huancaray');
INSERT INTO `ubigeos` VALUES (297, '03', '02', '06', 'Huayana');
INSERT INTO `ubigeos` VALUES (298, '03', '02', '07', 'Kishuara');
INSERT INTO `ubigeos` VALUES (299, '03', '02', '08', 'Pacobamba');
INSERT INTO `ubigeos` VALUES (300, '03', '02', '09', 'Pacucha');
INSERT INTO `ubigeos` VALUES (301, '03', '02', '10', 'Pampachiri');
INSERT INTO `ubigeos` VALUES (302, '03', '02', '11', 'Pomacocha');
INSERT INTO `ubigeos` VALUES (303, '03', '02', '12', 'San Antonio de Cachi');
INSERT INTO `ubigeos` VALUES (304, '03', '02', '13', 'San Jeronimo');
INSERT INTO `ubigeos` VALUES (305, '03', '02', '14', 'San Miguel de Chaccrampa');
INSERT INTO `ubigeos` VALUES (306, '03', '02', '15', 'Santa Maria de Chicmo');
INSERT INTO `ubigeos` VALUES (307, '03', '02', '16', 'Talavera');
INSERT INTO `ubigeos` VALUES (308, '03', '02', '17', 'Tumay Huaraca');
INSERT INTO `ubigeos` VALUES (309, '03', '02', '18', 'Turpo');
INSERT INTO `ubigeos` VALUES (310, '03', '02', '19', 'Kaquiabamba');
INSERT INTO `ubigeos` VALUES (311, '03', '03', '00', 'Antabamba');
INSERT INTO `ubigeos` VALUES (312, '03', '03', '01', 'Antabamba');
INSERT INTO `ubigeos` VALUES (313, '03', '03', '02', 'El Oro');
INSERT INTO `ubigeos` VALUES (314, '03', '03', '03', 'Huaquirca');
INSERT INTO `ubigeos` VALUES (315, '03', '03', '04', 'Juan Espinoza Medrano');
INSERT INTO `ubigeos` VALUES (316, '03', '03', '05', 'Oropesa');
INSERT INTO `ubigeos` VALUES (317, '03', '03', '06', 'Pachaconas');
INSERT INTO `ubigeos` VALUES (318, '03', '03', '07', 'Sabaino');
INSERT INTO `ubigeos` VALUES (319, '03', '04', '00', 'Aymaraes');
INSERT INTO `ubigeos` VALUES (320, '03', '04', '01', 'Chalhuanca');
INSERT INTO `ubigeos` VALUES (321, '03', '04', '02', 'Capaya');
INSERT INTO `ubigeos` VALUES (322, '03', '04', '03', 'Caraybamba');
INSERT INTO `ubigeos` VALUES (323, '03', '04', '04', 'Chapimarca');
INSERT INTO `ubigeos` VALUES (324, '03', '04', '05', 'Colcabamba');
INSERT INTO `ubigeos` VALUES (325, '03', '04', '06', 'Cotaruse');
INSERT INTO `ubigeos` VALUES (326, '03', '04', '07', 'Huayllo');
INSERT INTO `ubigeos` VALUES (327, '03', '04', '08', 'Justo Apu Sahuaraura');
INSERT INTO `ubigeos` VALUES (328, '03', '04', '09', 'Lucre');
INSERT INTO `ubigeos` VALUES (329, '03', '04', '10', 'Pocohuanca');
INSERT INTO `ubigeos` VALUES (330, '03', '04', '11', 'San Juan de Chacña');
INSERT INTO `ubigeos` VALUES (331, '03', '04', '12', 'Sañayca');
INSERT INTO `ubigeos` VALUES (332, '03', '04', '13', 'Soraya');
INSERT INTO `ubigeos` VALUES (333, '03', '04', '14', 'Tapairihua');
INSERT INTO `ubigeos` VALUES (334, '03', '04', '15', 'Tintay');
INSERT INTO `ubigeos` VALUES (335, '03', '04', '16', 'Toraya');
INSERT INTO `ubigeos` VALUES (336, '03', '04', '17', 'Yanaca');
INSERT INTO `ubigeos` VALUES (337, '03', '05', '00', 'Cotabambas');
INSERT INTO `ubigeos` VALUES (338, '03', '05', '01', 'Tambobamba');
INSERT INTO `ubigeos` VALUES (339, '03', '05', '02', 'Cotabambas');
INSERT INTO `ubigeos` VALUES (340, '03', '05', '03', 'Coyllurqui');
INSERT INTO `ubigeos` VALUES (341, '03', '05', '04', 'Haquira');
INSERT INTO `ubigeos` VALUES (342, '03', '05', '05', 'Mara');
INSERT INTO `ubigeos` VALUES (343, '03', '05', '06', 'Challhuahuacho');
INSERT INTO `ubigeos` VALUES (344, '03', '06', '00', 'Chincheros');
INSERT INTO `ubigeos` VALUES (345, '03', '06', '01', 'Chincheros');
INSERT INTO `ubigeos` VALUES (346, '03', '06', '02', 'Anco-Huallo');
INSERT INTO `ubigeos` VALUES (347, '03', '06', '03', 'Cocharcas');
INSERT INTO `ubigeos` VALUES (348, '03', '06', '04', 'Huaccana');
INSERT INTO `ubigeos` VALUES (349, '03', '06', '05', 'Ocobamba');
INSERT INTO `ubigeos` VALUES (350, '03', '06', '06', 'Ongoy');
INSERT INTO `ubigeos` VALUES (351, '03', '06', '07', 'Uranmarca');
INSERT INTO `ubigeos` VALUES (352, '03', '06', '08', 'Ranracancha');
INSERT INTO `ubigeos` VALUES (353, '03', '07', '00', 'Grau');
INSERT INTO `ubigeos` VALUES (354, '03', '07', '01', 'Chuquibambilla');
INSERT INTO `ubigeos` VALUES (355, '03', '07', '02', 'Curpahuasi');
INSERT INTO `ubigeos` VALUES (356, '03', '07', '03', 'Gamarra');
INSERT INTO `ubigeos` VALUES (357, '03', '07', '04', 'Huayllati');
INSERT INTO `ubigeos` VALUES (358, '03', '07', '05', 'Mamara');
INSERT INTO `ubigeos` VALUES (359, '03', '07', '06', 'Micaela Bastidas');
INSERT INTO `ubigeos` VALUES (360, '03', '07', '07', 'Pataypampa');
INSERT INTO `ubigeos` VALUES (361, '03', '07', '08', 'Progreso');
INSERT INTO `ubigeos` VALUES (362, '03', '07', '09', 'San Antonio');
INSERT INTO `ubigeos` VALUES (363, '03', '07', '10', 'Santa Rosa');
INSERT INTO `ubigeos` VALUES (364, '03', '07', '11', 'Turpay');
INSERT INTO `ubigeos` VALUES (365, '03', '07', '12', 'Vilcabamba');
INSERT INTO `ubigeos` VALUES (366, '03', '07', '13', 'Virundo');
INSERT INTO `ubigeos` VALUES (367, '03', '07', '14', 'Curasco');
INSERT INTO `ubigeos` VALUES (368, '04', '00', '00', 'Arequipa');
INSERT INTO `ubigeos` VALUES (369, '04', '01', '00', 'Arequipa');
INSERT INTO `ubigeos` VALUES (370, '04', '01', '01', 'Arequipa');
INSERT INTO `ubigeos` VALUES (371, '04', '01', '02', 'Alto Selva Alegre');
INSERT INTO `ubigeos` VALUES (372, '04', '01', '03', 'Cayma');
INSERT INTO `ubigeos` VALUES (373, '04', '01', '04', 'Cerro Colorado');
INSERT INTO `ubigeos` VALUES (374, '04', '01', '05', 'Characato');
INSERT INTO `ubigeos` VALUES (375, '04', '01', '06', 'Chiguata');
INSERT INTO `ubigeos` VALUES (376, '04', '01', '07', 'Jacobo Hunter');
INSERT INTO `ubigeos` VALUES (377, '04', '01', '08', 'La Joya');
INSERT INTO `ubigeos` VALUES (378, '04', '01', '09', 'Mariano Melgar');
INSERT INTO `ubigeos` VALUES (379, '04', '01', '10', 'Miraflores');
INSERT INTO `ubigeos` VALUES (380, '04', '01', '11', 'Mollebaya');
INSERT INTO `ubigeos` VALUES (381, '04', '01', '12', 'Paucarpata');
INSERT INTO `ubigeos` VALUES (382, '04', '01', '13', 'Pocsi');
INSERT INTO `ubigeos` VALUES (383, '04', '01', '14', 'Polobaya');
INSERT INTO `ubigeos` VALUES (384, '04', '01', '15', 'Quequeña');
INSERT INTO `ubigeos` VALUES (385, '04', '01', '16', 'Sabandia');
INSERT INTO `ubigeos` VALUES (386, '04', '01', '17', 'Sachaca');
INSERT INTO `ubigeos` VALUES (387, '04', '01', '18', 'San Juan de Siguas');
INSERT INTO `ubigeos` VALUES (388, '04', '01', '19', 'San Juan de Tarucani');
INSERT INTO `ubigeos` VALUES (389, '04', '01', '20', 'Santa Isabel de Siguas');
INSERT INTO `ubigeos` VALUES (390, '04', '01', '21', 'Santa Rita de Siguas');
INSERT INTO `ubigeos` VALUES (391, '04', '01', '22', 'Socabaya');
INSERT INTO `ubigeos` VALUES (392, '04', '01', '23', 'Tiabaya');
INSERT INTO `ubigeos` VALUES (393, '04', '01', '24', 'Uchumayo');
INSERT INTO `ubigeos` VALUES (394, '04', '01', '25', 'Vitor');
INSERT INTO `ubigeos` VALUES (395, '04', '01', '26', 'Yanahuara');
INSERT INTO `ubigeos` VALUES (396, '04', '01', '27', 'Yarabamba');
INSERT INTO `ubigeos` VALUES (397, '04', '01', '28', 'Yura');
INSERT INTO `ubigeos` VALUES (398, '04', '01', '29', 'Jose Luis Bustamante y Rivero');
INSERT INTO `ubigeos` VALUES (399, '04', '02', '00', 'Camana');
INSERT INTO `ubigeos` VALUES (400, '04', '02', '01', 'Camana');
INSERT INTO `ubigeos` VALUES (401, '04', '02', '02', 'Jose Maria Quimper');
INSERT INTO `ubigeos` VALUES (402, '04', '02', '03', 'Mariano Nicolas Valcarcel');
INSERT INTO `ubigeos` VALUES (403, '04', '02', '04', 'Mariscal Caceres');
INSERT INTO `ubigeos` VALUES (404, '04', '02', '05', 'Nicolas de Pierola');
INSERT INTO `ubigeos` VALUES (405, '04', '02', '06', 'Ocoña');
INSERT INTO `ubigeos` VALUES (406, '04', '02', '07', 'Quilca');
INSERT INTO `ubigeos` VALUES (407, '04', '02', '08', 'Samuel Pastor');
INSERT INTO `ubigeos` VALUES (408, '04', '03', '00', 'Caraveli');
INSERT INTO `ubigeos` VALUES (409, '04', '03', '01', 'Caraveli');
INSERT INTO `ubigeos` VALUES (410, '04', '03', '02', 'Acari');
INSERT INTO `ubigeos` VALUES (411, '04', '03', '03', 'Atico');
INSERT INTO `ubigeos` VALUES (412, '04', '03', '04', 'Atiquipa');
INSERT INTO `ubigeos` VALUES (413, '04', '03', '05', 'Bella Union');
INSERT INTO `ubigeos` VALUES (414, '04', '03', '06', 'Cahuacho');
INSERT INTO `ubigeos` VALUES (415, '04', '03', '07', 'Chala');
INSERT INTO `ubigeos` VALUES (416, '04', '03', '08', 'Chaparra');
INSERT INTO `ubigeos` VALUES (417, '04', '03', '09', 'Huanuhuanu');
INSERT INTO `ubigeos` VALUES (418, '04', '03', '10', 'Jaqui');
INSERT INTO `ubigeos` VALUES (419, '04', '03', '11', 'Lomas');
INSERT INTO `ubigeos` VALUES (420, '04', '03', '12', 'Quicacha');
INSERT INTO `ubigeos` VALUES (421, '04', '03', '13', 'Yauca');
INSERT INTO `ubigeos` VALUES (422, '04', '04', '00', 'Castilla');
INSERT INTO `ubigeos` VALUES (423, '04', '04', '01', 'Aplao');
INSERT INTO `ubigeos` VALUES (424, '04', '04', '02', 'Andagua');
INSERT INTO `ubigeos` VALUES (425, '04', '04', '03', 'Ayo');
INSERT INTO `ubigeos` VALUES (426, '04', '04', '04', 'Chachas');
INSERT INTO `ubigeos` VALUES (427, '04', '04', '05', 'Chilcaymarca');
INSERT INTO `ubigeos` VALUES (428, '04', '04', '06', 'Choco');
INSERT INTO `ubigeos` VALUES (429, '04', '04', '07', 'Huancarqui');
INSERT INTO `ubigeos` VALUES (430, '04', '04', '08', 'Machaguay');
INSERT INTO `ubigeos` VALUES (431, '04', '04', '09', 'Orcopampa');
INSERT INTO `ubigeos` VALUES (432, '04', '04', '10', 'Pampacolca');
INSERT INTO `ubigeos` VALUES (433, '04', '04', '11', 'Tipan');
INSERT INTO `ubigeos` VALUES (434, '04', '04', '12', 'Uñon');
INSERT INTO `ubigeos` VALUES (435, '04', '04', '13', 'Uraca');
INSERT INTO `ubigeos` VALUES (436, '04', '04', '14', 'Viraco');
INSERT INTO `ubigeos` VALUES (437, '04', '05', '00', 'Caylloma');
INSERT INTO `ubigeos` VALUES (438, '04', '05', '01', 'Chivay');
INSERT INTO `ubigeos` VALUES (439, '04', '05', '02', 'Achoma');
INSERT INTO `ubigeos` VALUES (440, '04', '05', '03', 'Cabanaconde');
INSERT INTO `ubigeos` VALUES (441, '04', '05', '04', 'Callalli');
INSERT INTO `ubigeos` VALUES (442, '04', '05', '05', 'Caylloma');
INSERT INTO `ubigeos` VALUES (443, '04', '05', '06', 'Coporaque');
INSERT INTO `ubigeos` VALUES (444, '04', '05', '07', 'Huambo');
INSERT INTO `ubigeos` VALUES (445, '04', '05', '08', 'Huanca');
INSERT INTO `ubigeos` VALUES (446, '04', '05', '09', 'Ichupampa');
INSERT INTO `ubigeos` VALUES (447, '04', '05', '10', 'Lari');
INSERT INTO `ubigeos` VALUES (448, '04', '05', '11', 'Lluta');
INSERT INTO `ubigeos` VALUES (449, '04', '05', '12', 'Maca');
INSERT INTO `ubigeos` VALUES (450, '04', '05', '13', 'Madrigal');
INSERT INTO `ubigeos` VALUES (451, '04', '05', '14', 'San Antonio de Chuca');
INSERT INTO `ubigeos` VALUES (452, '04', '05', '15', 'Sibayo');
INSERT INTO `ubigeos` VALUES (453, '04', '05', '16', 'Tapay');
INSERT INTO `ubigeos` VALUES (454, '04', '05', '17', 'Tisco');
INSERT INTO `ubigeos` VALUES (455, '04', '05', '18', 'Tuti');
INSERT INTO `ubigeos` VALUES (456, '04', '05', '19', 'Yanque');
INSERT INTO `ubigeos` VALUES (457, '04', '05', '20', 'Majes');
INSERT INTO `ubigeos` VALUES (458, '04', '06', '00', 'Condesuyos');
INSERT INTO `ubigeos` VALUES (459, '04', '06', '01', 'Chuquibamba');
INSERT INTO `ubigeos` VALUES (460, '04', '06', '02', 'Andaray');
INSERT INTO `ubigeos` VALUES (461, '04', '06', '03', 'Cayarani');
INSERT INTO `ubigeos` VALUES (462, '04', '06', '04', 'Chichas');
INSERT INTO `ubigeos` VALUES (463, '04', '06', '05', 'Iray');
INSERT INTO `ubigeos` VALUES (464, '04', '06', '06', 'Rio Grande');
INSERT INTO `ubigeos` VALUES (465, '04', '06', '07', 'Salamanca');
INSERT INTO `ubigeos` VALUES (466, '04', '06', '08', 'Yanaquihua');
INSERT INTO `ubigeos` VALUES (467, '04', '07', '00', 'Islay');
INSERT INTO `ubigeos` VALUES (468, '04', '07', '01', 'Mollendo');
INSERT INTO `ubigeos` VALUES (469, '04', '07', '02', 'Cocachacra');
INSERT INTO `ubigeos` VALUES (470, '04', '07', '03', 'Dean Valdivia');
INSERT INTO `ubigeos` VALUES (471, '04', '07', '04', 'Islay');
INSERT INTO `ubigeos` VALUES (472, '04', '07', '05', 'Mejia');
INSERT INTO `ubigeos` VALUES (473, '04', '07', '06', 'Punta de Bombon');
INSERT INTO `ubigeos` VALUES (474, '04', '08', '00', 'La Union');
INSERT INTO `ubigeos` VALUES (475, '04', '08', '01', 'Cotahuasi');
INSERT INTO `ubigeos` VALUES (476, '04', '08', '02', 'Alca');
INSERT INTO `ubigeos` VALUES (477, '04', '08', '03', 'Charcana');
INSERT INTO `ubigeos` VALUES (478, '04', '08', '04', 'Huaynacotas');
INSERT INTO `ubigeos` VALUES (479, '04', '08', '05', 'Pampamarca');
INSERT INTO `ubigeos` VALUES (480, '04', '08', '06', 'Puyca');
INSERT INTO `ubigeos` VALUES (481, '04', '08', '07', 'Quechualla');
INSERT INTO `ubigeos` VALUES (482, '04', '08', '08', 'Sayla');
INSERT INTO `ubigeos` VALUES (483, '04', '08', '09', 'Tauria');
INSERT INTO `ubigeos` VALUES (484, '04', '08', '10', 'Tomepampa');
INSERT INTO `ubigeos` VALUES (485, '04', '08', '11', 'Toro');
INSERT INTO `ubigeos` VALUES (486, '05', '00', '00', 'Ayacucho');
INSERT INTO `ubigeos` VALUES (487, '05', '01', '00', 'Huamanga');
INSERT INTO `ubigeos` VALUES (488, '05', '01', '01', 'Ayacucho');
INSERT INTO `ubigeos` VALUES (489, '05', '01', '02', 'Acocro');
INSERT INTO `ubigeos` VALUES (490, '05', '01', '03', 'Acos Vinchos');
INSERT INTO `ubigeos` VALUES (491, '05', '01', '04', 'Carmen Alto');
INSERT INTO `ubigeos` VALUES (492, '05', '01', '05', 'Chiara');
INSERT INTO `ubigeos` VALUES (493, '05', '01', '06', 'Ocros');
INSERT INTO `ubigeos` VALUES (494, '05', '01', '07', 'Pacaycasa');
INSERT INTO `ubigeos` VALUES (495, '05', '01', '08', 'Quinua');
INSERT INTO `ubigeos` VALUES (496, '05', '01', '09', 'San Jose de Ticllas');
INSERT INTO `ubigeos` VALUES (497, '05', '01', '10', 'San Juan Bautista');
INSERT INTO `ubigeos` VALUES (498, '05', '01', '11', 'Santiago de Pischa');
INSERT INTO `ubigeos` VALUES (499, '05', '01', '12', 'Socos');
INSERT INTO `ubigeos` VALUES (500, '05', '01', '13', 'Tambillo');
INSERT INTO `ubigeos` VALUES (501, '05', '01', '14', 'Vinchos');
INSERT INTO `ubigeos` VALUES (502, '05', '01', '15', 'Jesús Nazareno');
INSERT INTO `ubigeos` VALUES (503, '05', '01', '16', 'Andrés Avelino Cáceres Dorregay');
INSERT INTO `ubigeos` VALUES (504, '05', '02', '00', 'Cangallo');
INSERT INTO `ubigeos` VALUES (505, '05', '02', '01', 'Cangallo');
INSERT INTO `ubigeos` VALUES (506, '05', '02', '02', 'Chuschi');
INSERT INTO `ubigeos` VALUES (507, '05', '02', '03', 'Los Morochucos');
INSERT INTO `ubigeos` VALUES (508, '05', '02', '04', 'Maria Parado de Bellido');
INSERT INTO `ubigeos` VALUES (509, '05', '02', '05', 'Paras');
INSERT INTO `ubigeos` VALUES (510, '05', '02', '06', 'Totos');
INSERT INTO `ubigeos` VALUES (511, '05', '03', '00', 'Huanca Sancos');
INSERT INTO `ubigeos` VALUES (512, '05', '03', '01', 'Sancos');
INSERT INTO `ubigeos` VALUES (513, '05', '03', '02', 'Carapo');
INSERT INTO `ubigeos` VALUES (514, '05', '03', '03', 'Sacsamarca');
INSERT INTO `ubigeos` VALUES (515, '05', '03', '04', 'Santiago de Lucanamarca');
INSERT INTO `ubigeos` VALUES (516, '05', '04', '00', 'Huanta');
INSERT INTO `ubigeos` VALUES (517, '05', '04', '01', 'Huanta');
INSERT INTO `ubigeos` VALUES (518, '05', '04', '02', 'Ayahuanco');
INSERT INTO `ubigeos` VALUES (519, '05', '04', '03', 'Huamanguilla');
INSERT INTO `ubigeos` VALUES (520, '05', '04', '04', 'Iguain');
INSERT INTO `ubigeos` VALUES (521, '05', '04', '05', 'Luricocha');
INSERT INTO `ubigeos` VALUES (522, '05', '04', '06', 'Santillana');
INSERT INTO `ubigeos` VALUES (523, '05', '04', '07', 'Sivia');
INSERT INTO `ubigeos` VALUES (524, '05', '04', '08', 'Llochegua');
INSERT INTO `ubigeos` VALUES (525, '05', '04', '09', 'Canayre');
INSERT INTO `ubigeos` VALUES (526, '05', '04', '10', 'Uchuraccay');
INSERT INTO `ubigeos` VALUES (527, '05', '04', '11', 'Pucacolpa');
INSERT INTO `ubigeos` VALUES (528, '05', '05', '00', 'La Mar');
INSERT INTO `ubigeos` VALUES (529, '05', '05', '01', 'San Miguel');
INSERT INTO `ubigeos` VALUES (530, '05', '05', '02', 'Anco');
INSERT INTO `ubigeos` VALUES (531, '05', '05', '03', 'Ayna');
INSERT INTO `ubigeos` VALUES (532, '05', '05', '04', 'Chilcas');
INSERT INTO `ubigeos` VALUES (533, '05', '05', '05', 'Chungui');
INSERT INTO `ubigeos` VALUES (534, '05', '05', '06', 'Luis Carranza');
INSERT INTO `ubigeos` VALUES (535, '05', '05', '07', 'Santa Rosa');
INSERT INTO `ubigeos` VALUES (536, '05', '05', '08', 'Tambo');
INSERT INTO `ubigeos` VALUES (537, '05', '05', '09', 'Samugari');
INSERT INTO `ubigeos` VALUES (538, '05', '05', '10', 'Anchihuay');
INSERT INTO `ubigeos` VALUES (539, '05', '06', '00', 'Lucanas');
INSERT INTO `ubigeos` VALUES (540, '05', '06', '01', 'Puquio');
INSERT INTO `ubigeos` VALUES (541, '05', '06', '02', 'Aucara');
INSERT INTO `ubigeos` VALUES (542, '05', '06', '03', 'Cabana');
INSERT INTO `ubigeos` VALUES (543, '05', '06', '04', 'Carmen Salcedo');
INSERT INTO `ubigeos` VALUES (544, '05', '06', '05', 'Chaviña');
INSERT INTO `ubigeos` VALUES (545, '05', '06', '06', 'Chipao');
INSERT INTO `ubigeos` VALUES (546, '05', '06', '07', 'Huac-Huas');
INSERT INTO `ubigeos` VALUES (547, '05', '06', '08', 'Laramate');
INSERT INTO `ubigeos` VALUES (548, '05', '06', '09', 'Leoncio Prado');
INSERT INTO `ubigeos` VALUES (549, '05', '06', '10', 'Llauta');
INSERT INTO `ubigeos` VALUES (550, '05', '06', '11', 'Lucanas');
INSERT INTO `ubigeos` VALUES (551, '05', '06', '12', 'Ocaña');
INSERT INTO `ubigeos` VALUES (552, '05', '06', '13', 'Otoca');
INSERT INTO `ubigeos` VALUES (553, '05', '06', '14', 'Saisa');
INSERT INTO `ubigeos` VALUES (554, '05', '06', '15', 'San Cristobal');
INSERT INTO `ubigeos` VALUES (555, '05', '06', '16', 'San Juan');
INSERT INTO `ubigeos` VALUES (556, '05', '06', '17', 'San Pedro');
INSERT INTO `ubigeos` VALUES (557, '05', '06', '18', 'San Pedro de Palco');
INSERT INTO `ubigeos` VALUES (558, '05', '06', '19', 'Sancos');
INSERT INTO `ubigeos` VALUES (559, '05', '06', '20', 'Santa Ana de Huaycahuacho');
INSERT INTO `ubigeos` VALUES (560, '05', '06', '21', 'Santa Lucia');
INSERT INTO `ubigeos` VALUES (561, '05', '07', '00', 'Parinacochas');
INSERT INTO `ubigeos` VALUES (562, '05', '07', '01', 'Coracora');
INSERT INTO `ubigeos` VALUES (563, '05', '07', '02', 'Chumpi');
INSERT INTO `ubigeos` VALUES (564, '05', '07', '03', 'Coronel Castañeda');
INSERT INTO `ubigeos` VALUES (565, '05', '07', '04', 'Pacapausa');
INSERT INTO `ubigeos` VALUES (566, '05', '07', '05', 'Pullo');
INSERT INTO `ubigeos` VALUES (567, '05', '07', '06', 'Puyusca');
INSERT INTO `ubigeos` VALUES (568, '05', '07', '07', 'San Francisco de Ravacayco');
INSERT INTO `ubigeos` VALUES (569, '05', '07', '08', 'Upahuacho');
INSERT INTO `ubigeos` VALUES (570, '05', '08', '00', 'Paucar del Sara Sara');
INSERT INTO `ubigeos` VALUES (571, '05', '08', '01', 'Pausa');
INSERT INTO `ubigeos` VALUES (572, '05', '08', '02', 'Colta');
INSERT INTO `ubigeos` VALUES (573, '05', '08', '03', 'Corculla');
INSERT INTO `ubigeos` VALUES (574, '05', '08', '04', 'Lampa');
INSERT INTO `ubigeos` VALUES (575, '05', '08', '05', 'Marcabamba');
INSERT INTO `ubigeos` VALUES (576, '05', '08', '06', 'Oyolo');
INSERT INTO `ubigeos` VALUES (577, '05', '08', '07', 'Pararca');
INSERT INTO `ubigeos` VALUES (578, '05', '08', '08', 'San Javier de Alpabamba');
INSERT INTO `ubigeos` VALUES (579, '05', '08', '09', 'San Jose de Ushua');
INSERT INTO `ubigeos` VALUES (580, '05', '08', '10', 'Sara Sara');
INSERT INTO `ubigeos` VALUES (581, '05', '09', '00', 'Sucre');
INSERT INTO `ubigeos` VALUES (582, '05', '09', '01', 'Querobamba');
INSERT INTO `ubigeos` VALUES (583, '05', '09', '02', 'Belen');
INSERT INTO `ubigeos` VALUES (584, '05', '09', '03', 'Chalcos');
INSERT INTO `ubigeos` VALUES (585, '05', '09', '04', 'Chilcayoc');
INSERT INTO `ubigeos` VALUES (586, '05', '09', '05', 'Huacaña');
INSERT INTO `ubigeos` VALUES (587, '05', '09', '06', 'Morcolla');
INSERT INTO `ubigeos` VALUES (588, '05', '09', '07', 'Paico');
INSERT INTO `ubigeos` VALUES (589, '05', '09', '08', 'San Pedro de Larcay');
INSERT INTO `ubigeos` VALUES (590, '05', '09', '09', 'San Salvador de Quije');
INSERT INTO `ubigeos` VALUES (591, '05', '09', '10', 'Santiago de Paucaray');
INSERT INTO `ubigeos` VALUES (592, '05', '09', '11', 'Soras');
INSERT INTO `ubigeos` VALUES (593, '05', '10', '00', 'Victor Fajardo');
INSERT INTO `ubigeos` VALUES (594, '05', '10', '01', 'Huancapi');
INSERT INTO `ubigeos` VALUES (595, '05', '10', '02', 'Alcamenca');
INSERT INTO `ubigeos` VALUES (596, '05', '10', '03', 'Apongo');
INSERT INTO `ubigeos` VALUES (597, '05', '10', '04', 'Asquipata');
INSERT INTO `ubigeos` VALUES (598, '05', '10', '05', 'Canaria');
INSERT INTO `ubigeos` VALUES (599, '05', '10', '06', 'Cayara');
INSERT INTO `ubigeos` VALUES (600, '05', '10', '07', 'Colca');
INSERT INTO `ubigeos` VALUES (601, '05', '10', '08', 'Huamanquiquia');
INSERT INTO `ubigeos` VALUES (602, '05', '10', '09', 'Huancaraylla');
INSERT INTO `ubigeos` VALUES (603, '05', '10', '10', 'Huaya');
INSERT INTO `ubigeos` VALUES (604, '05', '10', '11', 'Sarhua');
INSERT INTO `ubigeos` VALUES (605, '05', '10', '12', 'Vilcanchos');
INSERT INTO `ubigeos` VALUES (606, '05', '11', '00', 'Vilcas Huaman');
INSERT INTO `ubigeos` VALUES (607, '05', '11', '01', 'Vilcas Huaman');
INSERT INTO `ubigeos` VALUES (608, '05', '11', '02', 'Accomarca');
INSERT INTO `ubigeos` VALUES (609, '05', '11', '03', 'Carhuanca');
INSERT INTO `ubigeos` VALUES (610, '05', '11', '04', 'Concepcion');
INSERT INTO `ubigeos` VALUES (611, '05', '11', '05', 'Huambalpa');
INSERT INTO `ubigeos` VALUES (612, '05', '11', '06', 'Independencia');
INSERT INTO `ubigeos` VALUES (613, '05', '11', '07', 'Saurama');
INSERT INTO `ubigeos` VALUES (614, '05', '11', '08', 'Vischongo');
INSERT INTO `ubigeos` VALUES (615, '06', '00', '00', 'Cajamarca');
INSERT INTO `ubigeos` VALUES (616, '06', '01', '00', 'Cajamarca');
INSERT INTO `ubigeos` VALUES (617, '06', '01', '01', 'Cajamarca');
INSERT INTO `ubigeos` VALUES (618, '06', '01', '02', 'Asuncion');
INSERT INTO `ubigeos` VALUES (619, '06', '01', '03', 'Chetilla');
INSERT INTO `ubigeos` VALUES (620, '06', '01', '04', 'Cospan');
INSERT INTO `ubigeos` VALUES (621, '06', '01', '05', 'Encañada');
INSERT INTO `ubigeos` VALUES (622, '06', '01', '06', 'Jesus');
INSERT INTO `ubigeos` VALUES (623, '06', '01', '07', 'Llacanora');
INSERT INTO `ubigeos` VALUES (624, '06', '01', '08', 'Los Baños del Inca');
INSERT INTO `ubigeos` VALUES (625, '06', '01', '09', 'Magdalena');
INSERT INTO `ubigeos` VALUES (626, '06', '01', '10', 'Matara');
INSERT INTO `ubigeos` VALUES (627, '06', '01', '11', 'Namora');
INSERT INTO `ubigeos` VALUES (628, '06', '01', '12', 'San Juan');
INSERT INTO `ubigeos` VALUES (629, '06', '02', '00', 'Cajabamba');
INSERT INTO `ubigeos` VALUES (630, '06', '02', '01', 'Cajabamba');
INSERT INTO `ubigeos` VALUES (631, '06', '02', '02', 'Cachachi');
INSERT INTO `ubigeos` VALUES (632, '06', '02', '03', 'Condebamba');
INSERT INTO `ubigeos` VALUES (633, '06', '02', '04', 'Sitacocha');
INSERT INTO `ubigeos` VALUES (634, '06', '03', '00', 'Celendin');
INSERT INTO `ubigeos` VALUES (635, '06', '03', '01', 'Celendin');
INSERT INTO `ubigeos` VALUES (636, '06', '03', '02', 'Chumuch');
INSERT INTO `ubigeos` VALUES (637, '06', '03', '03', 'Cortegana');
INSERT INTO `ubigeos` VALUES (638, '06', '03', '04', 'Huasmin');
INSERT INTO `ubigeos` VALUES (639, '06', '03', '05', 'Jorge Chavez');
INSERT INTO `ubigeos` VALUES (640, '06', '03', '06', 'Jose Galvez');
INSERT INTO `ubigeos` VALUES (641, '06', '03', '07', 'Miguel Iglesias');
INSERT INTO `ubigeos` VALUES (642, '06', '03', '08', 'Oxamarca');
INSERT INTO `ubigeos` VALUES (643, '06', '03', '09', 'Sorochuco');
INSERT INTO `ubigeos` VALUES (644, '06', '03', '10', 'Sucre');
INSERT INTO `ubigeos` VALUES (645, '06', '03', '11', 'Utco');
INSERT INTO `ubigeos` VALUES (646, '06', '03', '12', 'La Libertad de Pallan');
INSERT INTO `ubigeos` VALUES (647, '06', '04', '00', 'Chota');
INSERT INTO `ubigeos` VALUES (648, '06', '04', '01', 'Chota');
INSERT INTO `ubigeos` VALUES (649, '06', '04', '02', 'Anguia');
INSERT INTO `ubigeos` VALUES (650, '06', '04', '03', 'Chadin');
INSERT INTO `ubigeos` VALUES (651, '06', '04', '04', 'Chiguirip');
INSERT INTO `ubigeos` VALUES (652, '06', '04', '05', 'Chimban');
INSERT INTO `ubigeos` VALUES (653, '06', '04', '06', 'Choropampa');
INSERT INTO `ubigeos` VALUES (654, '06', '04', '07', 'Cochabamba');
INSERT INTO `ubigeos` VALUES (655, '06', '04', '08', 'Conchan');
INSERT INTO `ubigeos` VALUES (656, '06', '04', '09', 'Huambos');
INSERT INTO `ubigeos` VALUES (657, '06', '04', '10', 'Lajas');
INSERT INTO `ubigeos` VALUES (658, '06', '04', '11', 'Llama');
INSERT INTO `ubigeos` VALUES (659, '06', '04', '12', 'Miracosta');
INSERT INTO `ubigeos` VALUES (660, '06', '04', '13', 'Paccha');
INSERT INTO `ubigeos` VALUES (661, '06', '04', '14', 'Pion');
INSERT INTO `ubigeos` VALUES (662, '06', '04', '15', 'Querocoto');
INSERT INTO `ubigeos` VALUES (663, '06', '04', '16', 'San Juan de Licupis');
INSERT INTO `ubigeos` VALUES (664, '06', '04', '17', 'Tacabamba');
INSERT INTO `ubigeos` VALUES (665, '06', '04', '18', 'Tocmoche');
INSERT INTO `ubigeos` VALUES (666, '06', '04', '19', 'Chalamarca');
INSERT INTO `ubigeos` VALUES (667, '06', '05', '00', 'Contumaza');
INSERT INTO `ubigeos` VALUES (668, '06', '05', '01', 'Contumaza');
INSERT INTO `ubigeos` VALUES (669, '06', '05', '02', 'Chilete');
INSERT INTO `ubigeos` VALUES (670, '06', '05', '03', 'Cupisnique');
INSERT INTO `ubigeos` VALUES (671, '06', '05', '04', 'Guzmango');
INSERT INTO `ubigeos` VALUES (672, '06', '05', '05', 'San Benito');
INSERT INTO `ubigeos` VALUES (673, '06', '05', '06', 'Santa Cruz de Toled');
INSERT INTO `ubigeos` VALUES (674, '06', '05', '07', 'Tantarica');
INSERT INTO `ubigeos` VALUES (675, '06', '05', '08', 'Yonan');
INSERT INTO `ubigeos` VALUES (676, '06', '06', '00', 'Cutervo');
INSERT INTO `ubigeos` VALUES (677, '06', '06', '01', 'Cutervo');
INSERT INTO `ubigeos` VALUES (678, '06', '06', '02', 'Callayuc');
INSERT INTO `ubigeos` VALUES (679, '06', '06', '03', 'Choros');
INSERT INTO `ubigeos` VALUES (680, '06', '06', '04', 'Cujillo');
INSERT INTO `ubigeos` VALUES (681, '06', '06', '05', 'La Ramada');
INSERT INTO `ubigeos` VALUES (682, '06', '06', '06', 'Pimpingos');
INSERT INTO `ubigeos` VALUES (683, '06', '06', '07', 'Querocotillo');
INSERT INTO `ubigeos` VALUES (684, '06', '06', '08', 'San Andres de Cutervo');
INSERT INTO `ubigeos` VALUES (685, '06', '06', '09', 'San Juan de Cutervo');
INSERT INTO `ubigeos` VALUES (686, '06', '06', '10', 'San Luis de Lucma');
INSERT INTO `ubigeos` VALUES (687, '06', '06', '11', 'Santa Cruz');
INSERT INTO `ubigeos` VALUES (688, '06', '06', '12', 'Santo Domingo de la Capilla');
INSERT INTO `ubigeos` VALUES (689, '06', '06', '13', 'Santo Tomas');
INSERT INTO `ubigeos` VALUES (690, '06', '06', '14', 'Socota');
INSERT INTO `ubigeos` VALUES (691, '06', '06', '15', 'Toribio Casanova');
INSERT INTO `ubigeos` VALUES (692, '06', '07', '00', 'Hualgayoc');
INSERT INTO `ubigeos` VALUES (693, '06', '07', '01', 'Bambamarca');
INSERT INTO `ubigeos` VALUES (694, '06', '07', '02', 'Chugur');
INSERT INTO `ubigeos` VALUES (695, '06', '07', '03', 'Hualgayoc');
INSERT INTO `ubigeos` VALUES (696, '06', '08', '00', 'Jaen');
INSERT INTO `ubigeos` VALUES (697, '06', '08', '01', 'Jaen');
INSERT INTO `ubigeos` VALUES (698, '06', '08', '02', 'Bellavista');
INSERT INTO `ubigeos` VALUES (699, '06', '08', '03', 'Chontali');
INSERT INTO `ubigeos` VALUES (700, '06', '08', '04', 'Colasay');
INSERT INTO `ubigeos` VALUES (701, '06', '08', '05', 'Huabal');
INSERT INTO `ubigeos` VALUES (702, '06', '08', '06', 'Las Pirias');
INSERT INTO `ubigeos` VALUES (703, '06', '08', '07', 'Pomahuaca');
INSERT INTO `ubigeos` VALUES (704, '06', '08', '08', 'Pucara');
INSERT INTO `ubigeos` VALUES (705, '06', '08', '09', 'Sallique');
INSERT INTO `ubigeos` VALUES (706, '06', '08', '10', 'San Felipe');
INSERT INTO `ubigeos` VALUES (707, '06', '08', '11', 'San Jose del Alto');
INSERT INTO `ubigeos` VALUES (708, '06', '08', '12', 'Santa Rosa');
INSERT INTO `ubigeos` VALUES (709, '06', '09', '00', 'San Ignacio');
INSERT INTO `ubigeos` VALUES (710, '06', '09', '01', 'San Ignacio');
INSERT INTO `ubigeos` VALUES (711, '06', '09', '02', 'Chirinos');
INSERT INTO `ubigeos` VALUES (712, '06', '09', '03', 'Huarango');
INSERT INTO `ubigeos` VALUES (713, '06', '09', '04', 'La Coipa');
INSERT INTO `ubigeos` VALUES (714, '06', '09', '05', 'Namballe');
INSERT INTO `ubigeos` VALUES (715, '06', '09', '06', 'San Jose de Lourdes');
INSERT INTO `ubigeos` VALUES (716, '06', '09', '07', 'Tabaconas');
INSERT INTO `ubigeos` VALUES (717, '06', '10', '00', 'San Marcos');
INSERT INTO `ubigeos` VALUES (718, '06', '10', '01', 'Pedro Galvez');
INSERT INTO `ubigeos` VALUES (719, '06', '10', '02', 'Chancay');
INSERT INTO `ubigeos` VALUES (720, '06', '10', '03', 'Eduardo Villanueva');
INSERT INTO `ubigeos` VALUES (721, '06', '10', '04', 'Gregorio Pita');
INSERT INTO `ubigeos` VALUES (722, '06', '10', '05', 'Ichocan');
INSERT INTO `ubigeos` VALUES (723, '06', '10', '06', 'Jose Manuel Quiroz');
INSERT INTO `ubigeos` VALUES (724, '06', '10', '07', 'Jose Sabogal');
INSERT INTO `ubigeos` VALUES (725, '06', '11', '00', 'San Miguel');
INSERT INTO `ubigeos` VALUES (726, '06', '11', '01', 'San Miguel');
INSERT INTO `ubigeos` VALUES (727, '06', '11', '02', 'Bolivar');
INSERT INTO `ubigeos` VALUES (728, '06', '11', '03', 'Calquis');
INSERT INTO `ubigeos` VALUES (729, '06', '11', '04', 'Catilluc');
INSERT INTO `ubigeos` VALUES (730, '06', '11', '05', 'El Prado');
INSERT INTO `ubigeos` VALUES (731, '06', '11', '06', 'La Florida');
INSERT INTO `ubigeos` VALUES (732, '06', '11', '07', 'Llapa');
INSERT INTO `ubigeos` VALUES (733, '06', '11', '08', 'Nanchoc');
INSERT INTO `ubigeos` VALUES (734, '06', '11', '09', 'Niepos');
INSERT INTO `ubigeos` VALUES (735, '06', '11', '10', 'San Gregorio');
INSERT INTO `ubigeos` VALUES (736, '06', '11', '11', 'San Silvestre de Cochan');
INSERT INTO `ubigeos` VALUES (737, '06', '11', '12', 'Tongod');
INSERT INTO `ubigeos` VALUES (738, '06', '11', '13', 'Union Agua Blanca');
INSERT INTO `ubigeos` VALUES (739, '06', '12', '00', 'San Pablo');
INSERT INTO `ubigeos` VALUES (740, '06', '12', '01', 'San Pablo');
INSERT INTO `ubigeos` VALUES (741, '06', '12', '02', 'San Bernardino');
INSERT INTO `ubigeos` VALUES (742, '06', '12', '03', 'San Luis');
INSERT INTO `ubigeos` VALUES (743, '06', '12', '04', 'Tumbaden');
INSERT INTO `ubigeos` VALUES (744, '06', '13', '00', 'Santa Cruz');
INSERT INTO `ubigeos` VALUES (745, '06', '13', '01', 'Santa Cruz');
INSERT INTO `ubigeos` VALUES (746, '06', '13', '02', 'Andabamba');
INSERT INTO `ubigeos` VALUES (747, '06', '13', '03', 'Catache');
INSERT INTO `ubigeos` VALUES (748, '06', '13', '04', 'Chancaybaños');
INSERT INTO `ubigeos` VALUES (749, '06', '13', '05', 'La Esperanza');
INSERT INTO `ubigeos` VALUES (750, '06', '13', '06', 'Ninabamba');
INSERT INTO `ubigeos` VALUES (751, '06', '13', '07', 'Pulan');
INSERT INTO `ubigeos` VALUES (752, '06', '13', '08', 'Saucepampa');
INSERT INTO `ubigeos` VALUES (753, '06', '13', '09', 'Sexi');
INSERT INTO `ubigeos` VALUES (754, '06', '13', '10', 'Uticyacu');
INSERT INTO `ubigeos` VALUES (755, '06', '13', '11', 'Yauyucan');
INSERT INTO `ubigeos` VALUES (756, '07', '00', '00', 'Callao');
INSERT INTO `ubigeos` VALUES (757, '07', '01', '00', 'Prov. Const. del Callao');
INSERT INTO `ubigeos` VALUES (758, '07', '01', '01', 'Callao');
INSERT INTO `ubigeos` VALUES (759, '07', '01', '02', 'Bellavista');
INSERT INTO `ubigeos` VALUES (760, '07', '01', '03', 'Carmen de la Legua Reynoso');
INSERT INTO `ubigeos` VALUES (761, '07', '01', '04', 'La Perla');
INSERT INTO `ubigeos` VALUES (762, '07', '01', '05', 'La Punta');
INSERT INTO `ubigeos` VALUES (763, '07', '01', '06', 'Ventanilla');
INSERT INTO `ubigeos` VALUES (764, '07', '01', '07', 'Mi Perú');
INSERT INTO `ubigeos` VALUES (765, '08', '00', '00', 'Cusco');
INSERT INTO `ubigeos` VALUES (766, '08', '01', '00', 'Cusco');
INSERT INTO `ubigeos` VALUES (767, '08', '01', '01', 'Cusco');
INSERT INTO `ubigeos` VALUES (768, '08', '01', '02', 'Ccorca');
INSERT INTO `ubigeos` VALUES (769, '08', '01', '03', 'Poroy');
INSERT INTO `ubigeos` VALUES (770, '08', '01', '04', 'San Jeronimo');
INSERT INTO `ubigeos` VALUES (771, '08', '01', '05', 'San Sebastian');
INSERT INTO `ubigeos` VALUES (772, '08', '01', '06', 'Santiago');
INSERT INTO `ubigeos` VALUES (773, '08', '01', '07', 'Saylla');
INSERT INTO `ubigeos` VALUES (774, '08', '01', '08', 'Wanchaq');
INSERT INTO `ubigeos` VALUES (775, '08', '02', '00', 'Acomayo');
INSERT INTO `ubigeos` VALUES (776, '08', '02', '01', 'Acomayo');
INSERT INTO `ubigeos` VALUES (777, '08', '02', '02', 'Acopia');
INSERT INTO `ubigeos` VALUES (778, '08', '02', '03', 'Acos');
INSERT INTO `ubigeos` VALUES (779, '08', '02', '04', 'Mosoc Llacta');
INSERT INTO `ubigeos` VALUES (780, '08', '02', '05', 'Pomacanchi');
INSERT INTO `ubigeos` VALUES (781, '08', '02', '06', 'Rondocan');
INSERT INTO `ubigeos` VALUES (782, '08', '02', '07', 'Sangarara');
INSERT INTO `ubigeos` VALUES (783, '08', '03', '00', 'Anta');
INSERT INTO `ubigeos` VALUES (784, '08', '03', '01', 'Anta');
INSERT INTO `ubigeos` VALUES (785, '08', '03', '02', 'Ancahuasi');
INSERT INTO `ubigeos` VALUES (786, '08', '03', '03', 'Cachimayo');
INSERT INTO `ubigeos` VALUES (787, '08', '03', '04', 'Chinchaypujio');
INSERT INTO `ubigeos` VALUES (788, '08', '03', '05', 'Huarocondo');
INSERT INTO `ubigeos` VALUES (789, '08', '03', '06', 'Limatambo');
INSERT INTO `ubigeos` VALUES (790, '08', '03', '07', 'Mollepata');
INSERT INTO `ubigeos` VALUES (791, '08', '03', '08', 'Pucyura');
INSERT INTO `ubigeos` VALUES (792, '08', '03', '09', 'Zurite');
INSERT INTO `ubigeos` VALUES (793, '08', '04', '00', 'Calca');
INSERT INTO `ubigeos` VALUES (794, '08', '04', '01', 'Calca');
INSERT INTO `ubigeos` VALUES (795, '08', '04', '02', 'Coya');
INSERT INTO `ubigeos` VALUES (796, '08', '04', '03', 'Lamay');
INSERT INTO `ubigeos` VALUES (797, '08', '04', '04', 'Lares');
INSERT INTO `ubigeos` VALUES (798, '08', '04', '05', 'Pisac');
INSERT INTO `ubigeos` VALUES (799, '08', '04', '06', 'San Salvador');
INSERT INTO `ubigeos` VALUES (800, '08', '04', '07', 'Taray');
INSERT INTO `ubigeos` VALUES (801, '08', '04', '08', 'Yanatile');
INSERT INTO `ubigeos` VALUES (802, '08', '05', '00', 'Canas');
INSERT INTO `ubigeos` VALUES (803, '08', '05', '01', 'Yanaoca');
INSERT INTO `ubigeos` VALUES (804, '08', '05', '02', 'Checca');
INSERT INTO `ubigeos` VALUES (805, '08', '05', '03', 'Kunturkanki');
INSERT INTO `ubigeos` VALUES (806, '08', '05', '04', 'Langui');
INSERT INTO `ubigeos` VALUES (807, '08', '05', '05', 'Layo');
INSERT INTO `ubigeos` VALUES (808, '08', '05', '06', 'Pampamarca');
INSERT INTO `ubigeos` VALUES (809, '08', '05', '07', 'Quehue');
INSERT INTO `ubigeos` VALUES (810, '08', '05', '08', 'Tupac Amaru');
INSERT INTO `ubigeos` VALUES (811, '08', '06', '00', 'Canchis');
INSERT INTO `ubigeos` VALUES (812, '08', '06', '01', 'Sicuani');
INSERT INTO `ubigeos` VALUES (813, '08', '06', '02', 'Checacupe');
INSERT INTO `ubigeos` VALUES (814, '08', '06', '03', 'Combapata');
INSERT INTO `ubigeos` VALUES (815, '08', '06', '04', 'Marangani');
INSERT INTO `ubigeos` VALUES (816, '08', '06', '05', 'Pitumarca');
INSERT INTO `ubigeos` VALUES (817, '08', '06', '06', 'San Pablo');
INSERT INTO `ubigeos` VALUES (818, '08', '06', '07', 'San Pedro');
INSERT INTO `ubigeos` VALUES (819, '08', '06', '08', 'Tinta');
INSERT INTO `ubigeos` VALUES (820, '08', '07', '00', 'Chumbivilcas');
INSERT INTO `ubigeos` VALUES (821, '08', '07', '01', 'Santo Tomas');
INSERT INTO `ubigeos` VALUES (822, '08', '07', '02', 'Capacmarca');
INSERT INTO `ubigeos` VALUES (823, '08', '07', '03', 'Chamaca');
INSERT INTO `ubigeos` VALUES (824, '08', '07', '04', 'Colquemarca');
INSERT INTO `ubigeos` VALUES (825, '08', '07', '05', 'Livitaca');
INSERT INTO `ubigeos` VALUES (826, '08', '07', '06', 'Llusco');
INSERT INTO `ubigeos` VALUES (827, '08', '07', '07', 'Quiñota');
INSERT INTO `ubigeos` VALUES (828, '08', '07', '08', 'Velille');
INSERT INTO `ubigeos` VALUES (829, '08', '08', '00', 'Espinar');
INSERT INTO `ubigeos` VALUES (830, '08', '08', '01', 'Espinar');
INSERT INTO `ubigeos` VALUES (831, '08', '08', '02', 'Condoroma');
INSERT INTO `ubigeos` VALUES (832, '08', '08', '03', 'Coporaque');
INSERT INTO `ubigeos` VALUES (833, '08', '08', '04', 'Ocoruro');
INSERT INTO `ubigeos` VALUES (834, '08', '08', '05', 'Pallpata');
INSERT INTO `ubigeos` VALUES (835, '08', '08', '06', 'Pichigua');
INSERT INTO `ubigeos` VALUES (836, '08', '08', '07', 'Suyckutambo');
INSERT INTO `ubigeos` VALUES (837, '08', '08', '08', 'Alto Pichigua');
INSERT INTO `ubigeos` VALUES (838, '08', '09', '00', 'La Convencion');
INSERT INTO `ubigeos` VALUES (839, '08', '09', '01', 'Santa Ana');
INSERT INTO `ubigeos` VALUES (840, '08', '09', '02', 'Echarate');
INSERT INTO `ubigeos` VALUES (841, '08', '09', '03', 'Huayopata');
INSERT INTO `ubigeos` VALUES (842, '08', '09', '04', 'Maranura');
INSERT INTO `ubigeos` VALUES (843, '08', '09', '05', 'Ocobamba');
INSERT INTO `ubigeos` VALUES (844, '08', '09', '06', 'Quellouno');
INSERT INTO `ubigeos` VALUES (845, '08', '09', '07', 'Kimbiri');
INSERT INTO `ubigeos` VALUES (846, '08', '09', '08', 'Santa Teresa');
INSERT INTO `ubigeos` VALUES (847, '08', '09', '09', 'Vilcabamba');
INSERT INTO `ubigeos` VALUES (848, '08', '09', '10', 'Pichari');
INSERT INTO `ubigeos` VALUES (849, '08', '09', '11', 'Inkawasi');
INSERT INTO `ubigeos` VALUES (850, '08', '09', '12', 'Villa Virgen');
INSERT INTO `ubigeos` VALUES (851, '08', '10', '00', 'Paruro');
INSERT INTO `ubigeos` VALUES (852, '08', '10', '01', 'Paruro');
INSERT INTO `ubigeos` VALUES (853, '08', '10', '02', 'Accha');
INSERT INTO `ubigeos` VALUES (854, '08', '10', '03', 'Ccapi');
INSERT INTO `ubigeos` VALUES (855, '08', '10', '04', 'Colcha');
INSERT INTO `ubigeos` VALUES (856, '08', '10', '05', 'Huanoquite');
INSERT INTO `ubigeos` VALUES (857, '08', '10', '06', 'Omacha');
INSERT INTO `ubigeos` VALUES (858, '08', '10', '07', 'Paccaritambo');
INSERT INTO `ubigeos` VALUES (859, '08', '10', '08', 'Pillpinto');
INSERT INTO `ubigeos` VALUES (860, '08', '10', '09', 'Yaurisque');
INSERT INTO `ubigeos` VALUES (861, '08', '11', '00', 'Paucartambo');
INSERT INTO `ubigeos` VALUES (862, '08', '11', '01', 'Paucartambo');
INSERT INTO `ubigeos` VALUES (863, '08', '11', '02', 'Caicay');
INSERT INTO `ubigeos` VALUES (864, '08', '11', '03', 'Challabamba');
INSERT INTO `ubigeos` VALUES (865, '08', '11', '04', 'Colquepata');
INSERT INTO `ubigeos` VALUES (866, '08', '11', '05', 'Huancarani');
INSERT INTO `ubigeos` VALUES (867, '08', '11', '06', 'Kosñipata');
INSERT INTO `ubigeos` VALUES (868, '08', '12', '00', 'Quispicanchi');
INSERT INTO `ubigeos` VALUES (869, '08', '12', '01', 'Urcos');
INSERT INTO `ubigeos` VALUES (870, '08', '12', '02', 'Andahuaylillas');
INSERT INTO `ubigeos` VALUES (871, '08', '12', '03', 'Camanti');
INSERT INTO `ubigeos` VALUES (872, '08', '12', '04', 'Ccarhuayo');
INSERT INTO `ubigeos` VALUES (873, '08', '12', '05', 'Ccatca');
INSERT INTO `ubigeos` VALUES (874, '08', '12', '06', 'Cusipata');
INSERT INTO `ubigeos` VALUES (875, '08', '12', '07', 'Huaro');
INSERT INTO `ubigeos` VALUES (876, '08', '12', '08', 'Lucre');
INSERT INTO `ubigeos` VALUES (877, '08', '12', '09', 'Marcapata');
INSERT INTO `ubigeos` VALUES (878, '08', '12', '10', 'Ocongate');
INSERT INTO `ubigeos` VALUES (879, '08', '12', '11', 'Oropesa');
INSERT INTO `ubigeos` VALUES (880, '08', '12', '12', 'Quiquijana');
INSERT INTO `ubigeos` VALUES (881, '08', '13', '00', 'Urubamba');
INSERT INTO `ubigeos` VALUES (882, '08', '13', '01', 'Urubamba');
INSERT INTO `ubigeos` VALUES (883, '08', '13', '02', 'Chinchero');
INSERT INTO `ubigeos` VALUES (884, '08', '13', '03', 'Huayllabamba');
INSERT INTO `ubigeos` VALUES (885, '08', '13', '04', 'Machupicchu');
INSERT INTO `ubigeos` VALUES (886, '08', '13', '05', 'Maras');
INSERT INTO `ubigeos` VALUES (887, '08', '13', '06', 'Ollantaytambo');
INSERT INTO `ubigeos` VALUES (888, '08', '13', '07', 'Yucay');
INSERT INTO `ubigeos` VALUES (889, '09', '00', '00', 'Huancavelica');
INSERT INTO `ubigeos` VALUES (890, '09', '01', '00', 'Huancavelica');
INSERT INTO `ubigeos` VALUES (891, '09', '01', '01', 'Huancavelica');
INSERT INTO `ubigeos` VALUES (892, '09', '01', '02', 'Acobambilla');
INSERT INTO `ubigeos` VALUES (893, '09', '01', '03', 'Acoria');
INSERT INTO `ubigeos` VALUES (894, '09', '01', '04', 'Conayca');
INSERT INTO `ubigeos` VALUES (895, '09', '01', '05', 'Cuenca');
INSERT INTO `ubigeos` VALUES (896, '09', '01', '06', 'Huachocolpa');
INSERT INTO `ubigeos` VALUES (897, '09', '01', '07', 'Huayllahuara');
INSERT INTO `ubigeos` VALUES (898, '09', '01', '08', 'Izcuchaca');
INSERT INTO `ubigeos` VALUES (899, '09', '01', '09', 'Laria');
INSERT INTO `ubigeos` VALUES (900, '09', '01', '10', 'Manta');
INSERT INTO `ubigeos` VALUES (901, '09', '01', '11', 'Mariscal Caceres');
INSERT INTO `ubigeos` VALUES (902, '09', '01', '12', 'Moya');
INSERT INTO `ubigeos` VALUES (903, '09', '01', '13', 'Nuevo Occoro');
INSERT INTO `ubigeos` VALUES (904, '09', '01', '14', 'Palca');
INSERT INTO `ubigeos` VALUES (905, '09', '01', '15', 'Pilchaca');
INSERT INTO `ubigeos` VALUES (906, '09', '01', '16', 'Vilca');
INSERT INTO `ubigeos` VALUES (907, '09', '01', '17', 'Yauli');
INSERT INTO `ubigeos` VALUES (908, '09', '01', '18', 'Ascensión');
INSERT INTO `ubigeos` VALUES (909, '09', '01', '19', 'Huando');
INSERT INTO `ubigeos` VALUES (910, '09', '02', '00', 'Acobamba');
INSERT INTO `ubigeos` VALUES (911, '09', '02', '01', 'Acobamba');
INSERT INTO `ubigeos` VALUES (912, '09', '02', '02', 'Andabamba');
INSERT INTO `ubigeos` VALUES (913, '09', '02', '03', 'Anta');
INSERT INTO `ubigeos` VALUES (914, '09', '02', '04', 'Caja');
INSERT INTO `ubigeos` VALUES (915, '09', '02', '05', 'Marcas');
INSERT INTO `ubigeos` VALUES (916, '09', '02', '06', 'Paucara');
INSERT INTO `ubigeos` VALUES (917, '09', '02', '07', 'Pomacocha');
INSERT INTO `ubigeos` VALUES (918, '09', '02', '08', 'Rosario');
INSERT INTO `ubigeos` VALUES (919, '09', '03', '00', 'Angaraes');
INSERT INTO `ubigeos` VALUES (920, '09', '03', '01', 'Lircay');
INSERT INTO `ubigeos` VALUES (921, '09', '03', '02', 'Anchonga');
INSERT INTO `ubigeos` VALUES (922, '09', '03', '03', 'Callanmarca');
INSERT INTO `ubigeos` VALUES (923, '09', '03', '04', 'Ccochaccasa');
INSERT INTO `ubigeos` VALUES (924, '09', '03', '05', 'Chincho');
INSERT INTO `ubigeos` VALUES (925, '09', '03', '06', 'Congalla');
INSERT INTO `ubigeos` VALUES (926, '09', '03', '07', 'Huanca-Huanca');
INSERT INTO `ubigeos` VALUES (927, '09', '03', '08', 'Huayllay Grande');
INSERT INTO `ubigeos` VALUES (928, '09', '03', '09', 'Julcamarca');
INSERT INTO `ubigeos` VALUES (929, '09', '03', '10', 'San Antonio de Antaparco');
INSERT INTO `ubigeos` VALUES (930, '09', '03', '11', 'Santo Tomas de Pata');
INSERT INTO `ubigeos` VALUES (931, '09', '03', '12', 'Secclla');
INSERT INTO `ubigeos` VALUES (932, '09', '04', '00', 'Castrovirreyna');
INSERT INTO `ubigeos` VALUES (933, '09', '04', '01', 'Castrovirreyna');
INSERT INTO `ubigeos` VALUES (934, '09', '04', '02', 'Arma');
INSERT INTO `ubigeos` VALUES (935, '09', '04', '03', 'Aurahua');
INSERT INTO `ubigeos` VALUES (936, '09', '04', '04', 'Capillas');
INSERT INTO `ubigeos` VALUES (937, '09', '04', '05', 'Chupamarca');
INSERT INTO `ubigeos` VALUES (938, '09', '04', '06', 'Cocas');
INSERT INTO `ubigeos` VALUES (939, '09', '04', '07', 'Huachos');
INSERT INTO `ubigeos` VALUES (940, '09', '04', '08', 'Huamatambo');
INSERT INTO `ubigeos` VALUES (941, '09', '04', '09', 'Mollepampa');
INSERT INTO `ubigeos` VALUES (942, '09', '04', '10', 'San Juan');
INSERT INTO `ubigeos` VALUES (943, '09', '04', '11', 'Santa Ana');
INSERT INTO `ubigeos` VALUES (944, '09', '04', '12', 'Tantara');
INSERT INTO `ubigeos` VALUES (945, '09', '04', '13', 'Ticrapo');
INSERT INTO `ubigeos` VALUES (946, '09', '05', '00', 'Churcampa');
INSERT INTO `ubigeos` VALUES (947, '09', '05', '01', 'Churcampa');
INSERT INTO `ubigeos` VALUES (948, '09', '05', '02', 'Anco');
INSERT INTO `ubigeos` VALUES (949, '09', '05', '03', 'Chinchihuasi');
INSERT INTO `ubigeos` VALUES (950, '09', '05', '04', 'El Carmen');
INSERT INTO `ubigeos` VALUES (951, '09', '05', '05', 'La Merced');
INSERT INTO `ubigeos` VALUES (952, '09', '05', '06', 'Locroja');
INSERT INTO `ubigeos` VALUES (953, '09', '05', '07', 'Paucarbamba');
INSERT INTO `ubigeos` VALUES (954, '09', '05', '08', 'San Miguel de Mayocc');
INSERT INTO `ubigeos` VALUES (955, '09', '05', '09', 'San Pedro de Coris');
INSERT INTO `ubigeos` VALUES (956, '09', '05', '10', 'Pachamarca');
INSERT INTO `ubigeos` VALUES (957, '09', '05', '11', 'Cosme');
INSERT INTO `ubigeos` VALUES (958, '09', '06', '00', 'Huaytara');
INSERT INTO `ubigeos` VALUES (959, '09', '06', '01', 'Huaytara');
INSERT INTO `ubigeos` VALUES (960, '09', '06', '02', 'Ayavi');
INSERT INTO `ubigeos` VALUES (961, '09', '06', '03', 'Cordova');
INSERT INTO `ubigeos` VALUES (962, '09', '06', '04', 'Huayacundo Arma');
INSERT INTO `ubigeos` VALUES (963, '09', '06', '05', 'Laramarca');
INSERT INTO `ubigeos` VALUES (964, '09', '06', '06', 'Ocoyo');
INSERT INTO `ubigeos` VALUES (965, '09', '06', '07', 'Pilpichaca');
INSERT INTO `ubigeos` VALUES (966, '09', '06', '08', 'Querco');
INSERT INTO `ubigeos` VALUES (967, '09', '06', '09', 'Quito-Arma');
INSERT INTO `ubigeos` VALUES (968, '09', '06', '10', 'San Antonio de Cusicancha');
INSERT INTO `ubigeos` VALUES (969, '09', '06', '11', 'San Francisco de Sangayaico');
INSERT INTO `ubigeos` VALUES (970, '09', '06', '12', 'San Isidro');
INSERT INTO `ubigeos` VALUES (971, '09', '06', '13', 'Santiago de Chocorvos');
INSERT INTO `ubigeos` VALUES (972, '09', '06', '14', 'Santiago de Quirahuara');
INSERT INTO `ubigeos` VALUES (973, '09', '06', '15', 'Santo Domingo de Capillas');
INSERT INTO `ubigeos` VALUES (974, '09', '06', '16', 'Tambo');
INSERT INTO `ubigeos` VALUES (975, '09', '07', '00', 'Tayacaja');
INSERT INTO `ubigeos` VALUES (976, '09', '07', '01', 'Pampas');
INSERT INTO `ubigeos` VALUES (977, '09', '07', '02', 'Acostambo');
INSERT INTO `ubigeos` VALUES (978, '09', '07', '03', 'Acraquia');
INSERT INTO `ubigeos` VALUES (979, '09', '07', '04', 'Ahuaycha');
INSERT INTO `ubigeos` VALUES (980, '09', '07', '05', 'Colcabamba');
INSERT INTO `ubigeos` VALUES (981, '09', '07', '06', 'Daniel Hernandez');
INSERT INTO `ubigeos` VALUES (982, '09', '07', '07', 'Huachocolpa');
INSERT INTO `ubigeos` VALUES (983, '09', '07', '09', 'Huaribamba');
INSERT INTO `ubigeos` VALUES (984, '09', '07', '10', 'Ñahuimpuquio');
INSERT INTO `ubigeos` VALUES (985, '09', '07', '11', 'Pazos');
INSERT INTO `ubigeos` VALUES (986, '09', '07', '13', 'Quishuar');
INSERT INTO `ubigeos` VALUES (987, '09', '07', '14', 'Salcabamba');
INSERT INTO `ubigeos` VALUES (988, '09', '07', '15', 'Salcahuasi');
INSERT INTO `ubigeos` VALUES (989, '09', '07', '16', 'San Marcos de Rocchac');
INSERT INTO `ubigeos` VALUES (990, '09', '07', '17', 'Surcubamba');
INSERT INTO `ubigeos` VALUES (991, '09', '07', '18', 'Tintay Puncu');
INSERT INTO `ubigeos` VALUES (992, '10', '00', '00', 'Huanuco');
INSERT INTO `ubigeos` VALUES (993, '10', '01', '00', 'Huanuco');
INSERT INTO `ubigeos` VALUES (994, '10', '01', '01', 'Huanuco');
INSERT INTO `ubigeos` VALUES (995, '10', '01', '02', 'Amarilis');
INSERT INTO `ubigeos` VALUES (996, '10', '01', '03', 'Chinchao');
INSERT INTO `ubigeos` VALUES (997, '10', '01', '04', 'Churubamba');
INSERT INTO `ubigeos` VALUES (998, '10', '01', '05', 'Margos');
INSERT INTO `ubigeos` VALUES (999, '10', '01', '06', 'Quisqui');
INSERT INTO `ubigeos` VALUES (1000, '10', '01', '07', 'San Francisco de Cayran');
INSERT INTO `ubigeos` VALUES (1001, '10', '01', '08', 'San Pedro de Chaulan');
INSERT INTO `ubigeos` VALUES (1002, '10', '01', '09', 'Santa Maria del Valle');
INSERT INTO `ubigeos` VALUES (1003, '10', '01', '10', 'Yarumayo');
INSERT INTO `ubigeos` VALUES (1004, '10', '01', '11', 'Pillco Marca');
INSERT INTO `ubigeos` VALUES (1005, '10', '01', '12', 'Yacus');
INSERT INTO `ubigeos` VALUES (1006, '10', '02', '00', 'Ambo');
INSERT INTO `ubigeos` VALUES (1007, '10', '02', '01', 'Ambo');
INSERT INTO `ubigeos` VALUES (1008, '10', '02', '02', 'Cayna');
INSERT INTO `ubigeos` VALUES (1009, '10', '02', '03', 'Colpas');
INSERT INTO `ubigeos` VALUES (1010, '10', '02', '04', 'Conchamarca');
INSERT INTO `ubigeos` VALUES (1011, '10', '02', '05', 'Huacar');
INSERT INTO `ubigeos` VALUES (1012, '10', '02', '06', 'San Francisco');
INSERT INTO `ubigeos` VALUES (1013, '10', '02', '07', 'San Rafael');
INSERT INTO `ubigeos` VALUES (1014, '10', '02', '08', 'Tomay Kichwa');
INSERT INTO `ubigeos` VALUES (1015, '10', '03', '00', 'Dos de Mayo');
INSERT INTO `ubigeos` VALUES (1016, '10', '03', '01', 'La Union');
INSERT INTO `ubigeos` VALUES (1017, '10', '03', '07', 'Chuquis');
INSERT INTO `ubigeos` VALUES (1018, '10', '03', '11', 'Marias');
INSERT INTO `ubigeos` VALUES (1019, '10', '03', '13', 'Pachas');
INSERT INTO `ubigeos` VALUES (1020, '10', '03', '16', 'Quivilla');
INSERT INTO `ubigeos` VALUES (1021, '10', '03', '17', 'Ripan');
INSERT INTO `ubigeos` VALUES (1022, '10', '03', '21', 'Shunqui');
INSERT INTO `ubigeos` VALUES (1023, '10', '03', '22', 'Sillapata');
INSERT INTO `ubigeos` VALUES (1024, '10', '03', '23', 'Yanas');
INSERT INTO `ubigeos` VALUES (1025, '10', '04', '00', 'Huacaybamba');
INSERT INTO `ubigeos` VALUES (1026, '10', '04', '01', 'Huacaybamba');
INSERT INTO `ubigeos` VALUES (1027, '10', '04', '02', 'Canchabamba');
INSERT INTO `ubigeos` VALUES (1028, '10', '04', '03', 'Cochabamba');
INSERT INTO `ubigeos` VALUES (1029, '10', '04', '04', 'Pinra');
INSERT INTO `ubigeos` VALUES (1030, '10', '05', '00', 'Huamalies');
INSERT INTO `ubigeos` VALUES (1031, '10', '05', '01', 'Llata');
INSERT INTO `ubigeos` VALUES (1032, '10', '05', '02', 'Arancay');
INSERT INTO `ubigeos` VALUES (1033, '10', '05', '03', 'Chavin de Pariarca');
INSERT INTO `ubigeos` VALUES (1034, '10', '05', '04', 'Jacas Grande');
INSERT INTO `ubigeos` VALUES (1035, '10', '05', '05', 'Jircan');
INSERT INTO `ubigeos` VALUES (1036, '10', '05', '06', 'Miraflores');
INSERT INTO `ubigeos` VALUES (1037, '10', '05', '07', 'Monzon');
INSERT INTO `ubigeos` VALUES (1038, '10', '05', '08', 'Punchao');
INSERT INTO `ubigeos` VALUES (1039, '10', '05', '09', 'Puños');
INSERT INTO `ubigeos` VALUES (1040, '10', '05', '10', 'Singa');
INSERT INTO `ubigeos` VALUES (1041, '10', '05', '11', 'Tantamayo');
INSERT INTO `ubigeos` VALUES (1042, '10', '06', '00', 'Leoncio Prado');
INSERT INTO `ubigeos` VALUES (1043, '10', '06', '01', 'Rupa-Rupa');
INSERT INTO `ubigeos` VALUES (1044, '10', '06', '02', 'Daniel Alomias Robles');
INSERT INTO `ubigeos` VALUES (1045, '10', '06', '03', 'Hermilio Valdizan');
INSERT INTO `ubigeos` VALUES (1046, '10', '06', '04', 'Jose Crespo y Castillo');
INSERT INTO `ubigeos` VALUES (1047, '10', '06', '05', 'Luyando');
INSERT INTO `ubigeos` VALUES (1048, '10', '06', '06', 'Mariano Damaso Beraun');
INSERT INTO `ubigeos` VALUES (1049, '10', '07', '00', 'Marañon');
INSERT INTO `ubigeos` VALUES (1050, '10', '07', '01', 'Huacrachuco');
INSERT INTO `ubigeos` VALUES (1051, '10', '07', '02', 'Cholon');
INSERT INTO `ubigeos` VALUES (1052, '10', '07', '03', 'San Buenaventura');
INSERT INTO `ubigeos` VALUES (1053, '10', '08', '00', 'Pachitea');
INSERT INTO `ubigeos` VALUES (1054, '10', '08', '01', 'Panao');
INSERT INTO `ubigeos` VALUES (1055, '10', '08', '02', 'Chaglla');
INSERT INTO `ubigeos` VALUES (1056, '10', '08', '03', 'Molino');
INSERT INTO `ubigeos` VALUES (1057, '10', '08', '04', 'Umari');
INSERT INTO `ubigeos` VALUES (1058, '10', '09', '00', 'Puerto Inca');
INSERT INTO `ubigeos` VALUES (1059, '10', '09', '01', 'Puerto Inca');
INSERT INTO `ubigeos` VALUES (1060, '10', '09', '02', 'Codo del Pozuzo');
INSERT INTO `ubigeos` VALUES (1061, '10', '09', '03', 'Honoria');
INSERT INTO `ubigeos` VALUES (1062, '10', '09', '04', 'Tournavista');
INSERT INTO `ubigeos` VALUES (1063, '10', '09', '05', 'Yuyapichis');
INSERT INTO `ubigeos` VALUES (1064, '10', '10', '00', 'Lauricocha');
INSERT INTO `ubigeos` VALUES (1065, '10', '10', '01', 'Jesus');
INSERT INTO `ubigeos` VALUES (1066, '10', '10', '02', 'Baños');
INSERT INTO `ubigeos` VALUES (1067, '10', '10', '03', 'Jivia');
INSERT INTO `ubigeos` VALUES (1068, '10', '10', '04', 'Queropalca');
INSERT INTO `ubigeos` VALUES (1069, '10', '10', '05', 'Rondos');
INSERT INTO `ubigeos` VALUES (1070, '10', '10', '06', 'San Francisco de Asis');
INSERT INTO `ubigeos` VALUES (1071, '10', '10', '07', 'San Miguel de Cauri');
INSERT INTO `ubigeos` VALUES (1072, '10', '11', '00', 'Yarowilca');
INSERT INTO `ubigeos` VALUES (1073, '10', '11', '01', 'Chavinillo');
INSERT INTO `ubigeos` VALUES (1074, '10', '11', '02', 'Cahuac');
INSERT INTO `ubigeos` VALUES (1075, '10', '11', '03', 'Chacabamba');
INSERT INTO `ubigeos` VALUES (1076, '10', '11', '04', 'Chupan');
INSERT INTO `ubigeos` VALUES (1077, '10', '11', '05', 'Jacas Chico');
INSERT INTO `ubigeos` VALUES (1078, '10', '11', '06', 'Obas');
INSERT INTO `ubigeos` VALUES (1079, '10', '11', '07', 'Pampamarca');
INSERT INTO `ubigeos` VALUES (1080, '10', '11', '08', 'Choras');
INSERT INTO `ubigeos` VALUES (1081, '11', '00', '00', 'Ica');
INSERT INTO `ubigeos` VALUES (1082, '11', '01', '00', 'Ica');
INSERT INTO `ubigeos` VALUES (1083, '11', '01', '01', 'Ica');
INSERT INTO `ubigeos` VALUES (1084, '11', '01', '02', 'La Tinguiña');
INSERT INTO `ubigeos` VALUES (1085, '11', '01', '03', 'Los Aquijes');
INSERT INTO `ubigeos` VALUES (1086, '11', '01', '04', 'Ocucaje');
INSERT INTO `ubigeos` VALUES (1087, '11', '01', '05', 'Pachacutec');
INSERT INTO `ubigeos` VALUES (1088, '11', '01', '06', 'Parcona');
INSERT INTO `ubigeos` VALUES (1089, '11', '01', '07', 'Pueblo Nuevo');
INSERT INTO `ubigeos` VALUES (1090, '11', '01', '08', 'Salas');
INSERT INTO `ubigeos` VALUES (1091, '11', '01', '09', 'San Jose de los Molinos');
INSERT INTO `ubigeos` VALUES (1092, '11', '01', '10', 'San Juan Bautista');
INSERT INTO `ubigeos` VALUES (1093, '11', '01', '11', 'Santiago');
INSERT INTO `ubigeos` VALUES (1094, '11', '01', '12', 'Subtanjalla');
INSERT INTO `ubigeos` VALUES (1095, '11', '01', '13', 'Tate');
INSERT INTO `ubigeos` VALUES (1096, '11', '01', '14', 'Yauca del Rosario');
INSERT INTO `ubigeos` VALUES (1097, '11', '02', '00', 'Chincha');
INSERT INTO `ubigeos` VALUES (1098, '11', '02', '01', 'Chincha Alta');
INSERT INTO `ubigeos` VALUES (1099, '11', '02', '02', 'Alto Laran');
INSERT INTO `ubigeos` VALUES (1100, '11', '02', '03', 'Chavin');
INSERT INTO `ubigeos` VALUES (1101, '11', '02', '04', 'Chincha Baja');
INSERT INTO `ubigeos` VALUES (1102, '11', '02', '05', 'El Carmen');
INSERT INTO `ubigeos` VALUES (1103, '11', '02', '06', 'Grocio Prado');
INSERT INTO `ubigeos` VALUES (1104, '11', '02', '07', 'Pueblo Nuevo');
INSERT INTO `ubigeos` VALUES (1105, '11', '02', '08', 'San Juan de Yanac');
INSERT INTO `ubigeos` VALUES (1106, '11', '02', '09', 'San Pedro de Huacarpana');
INSERT INTO `ubigeos` VALUES (1107, '11', '02', '10', 'Sunampe');
INSERT INTO `ubigeos` VALUES (1108, '11', '02', '11', 'Tambo de Mora');
INSERT INTO `ubigeos` VALUES (1109, '11', '03', '00', 'Nazca');
INSERT INTO `ubigeos` VALUES (1110, '11', '03', '01', 'Nazca');
INSERT INTO `ubigeos` VALUES (1111, '11', '03', '02', 'Changuillo');
INSERT INTO `ubigeos` VALUES (1112, '11', '03', '03', 'El Ingenio');
INSERT INTO `ubigeos` VALUES (1113, '11', '03', '04', 'Marcona');
INSERT INTO `ubigeos` VALUES (1114, '11', '03', '05', 'Vista Alegre');
INSERT INTO `ubigeos` VALUES (1115, '11', '04', '00', 'Palpa');
INSERT INTO `ubigeos` VALUES (1116, '11', '04', '01', 'Palpa');
INSERT INTO `ubigeos` VALUES (1117, '11', '04', '02', 'Llipata');
INSERT INTO `ubigeos` VALUES (1118, '11', '04', '03', 'Rio Grande');
INSERT INTO `ubigeos` VALUES (1119, '11', '04', '04', 'Santa Cruz');
INSERT INTO `ubigeos` VALUES (1120, '11', '04', '05', 'Tibillo');
INSERT INTO `ubigeos` VALUES (1121, '11', '05', '00', 'Pisco');
INSERT INTO `ubigeos` VALUES (1122, '11', '05', '01', 'Pisco');
INSERT INTO `ubigeos` VALUES (1123, '11', '05', '02', 'Huancano');
INSERT INTO `ubigeos` VALUES (1124, '11', '05', '03', 'Humay');
INSERT INTO `ubigeos` VALUES (1125, '11', '05', '04', 'Independencia');
INSERT INTO `ubigeos` VALUES (1126, '11', '05', '05', 'Paracas');
INSERT INTO `ubigeos` VALUES (1127, '11', '05', '06', 'San Andres');
INSERT INTO `ubigeos` VALUES (1128, '11', '05', '07', 'San Clemente');
INSERT INTO `ubigeos` VALUES (1129, '11', '05', '08', 'Tupac Amaru Inca');
INSERT INTO `ubigeos` VALUES (1130, '12', '00', '00', 'Junin');
INSERT INTO `ubigeos` VALUES (1131, '12', '01', '00', 'Huancayo');
INSERT INTO `ubigeos` VALUES (1132, '12', '01', '01', 'Huancayo');
INSERT INTO `ubigeos` VALUES (1133, '12', '01', '04', 'Carhuacallanga');
INSERT INTO `ubigeos` VALUES (1134, '12', '01', '05', 'Chacapampa');
INSERT INTO `ubigeos` VALUES (1135, '12', '01', '06', 'Chicche');
INSERT INTO `ubigeos` VALUES (1136, '12', '01', '07', 'Chilca');
INSERT INTO `ubigeos` VALUES (1137, '12', '01', '08', 'Chongos Alto');
INSERT INTO `ubigeos` VALUES (1138, '12', '01', '11', 'Chupuro');
INSERT INTO `ubigeos` VALUES (1139, '12', '01', '12', 'Colca');
INSERT INTO `ubigeos` VALUES (1140, '12', '01', '13', 'Cullhuas');
INSERT INTO `ubigeos` VALUES (1141, '12', '01', '14', 'El Tambo');
INSERT INTO `ubigeos` VALUES (1142, '12', '01', '16', 'Huacrapuquio');
INSERT INTO `ubigeos` VALUES (1143, '12', '01', '17', 'Hualhuas');
INSERT INTO `ubigeos` VALUES (1144, '12', '01', '19', 'Huancan');
INSERT INTO `ubigeos` VALUES (1145, '12', '01', '20', 'Huasicancha');
INSERT INTO `ubigeos` VALUES (1146, '12', '01', '21', 'Huayucachi');
INSERT INTO `ubigeos` VALUES (1147, '12', '01', '22', 'Ingenio');
INSERT INTO `ubigeos` VALUES (1148, '12', '01', '24', 'Pariahuanca');
INSERT INTO `ubigeos` VALUES (1149, '12', '01', '25', 'Pilcomayo');
INSERT INTO `ubigeos` VALUES (1150, '12', '01', '26', 'Pucara');
INSERT INTO `ubigeos` VALUES (1151, '12', '01', '27', 'Quichuay');
INSERT INTO `ubigeos` VALUES (1152, '12', '01', '28', 'Quilcas');
INSERT INTO `ubigeos` VALUES (1153, '12', '01', '29', 'San Agustin');
INSERT INTO `ubigeos` VALUES (1154, '12', '01', '30', 'San Jeronimo de Tunan');
INSERT INTO `ubigeos` VALUES (1155, '12', '01', '32', 'Saño');
INSERT INTO `ubigeos` VALUES (1156, '12', '01', '33', 'Sapallanga');
INSERT INTO `ubigeos` VALUES (1157, '12', '01', '34', 'Sicaya');
INSERT INTO `ubigeos` VALUES (1158, '12', '01', '35', 'Santo Domingo de Acobamba');
INSERT INTO `ubigeos` VALUES (1159, '12', '01', '36', 'Viques');
INSERT INTO `ubigeos` VALUES (1160, '12', '02', '00', 'Concepcion');
INSERT INTO `ubigeos` VALUES (1161, '12', '02', '01', 'Concepcion');
INSERT INTO `ubigeos` VALUES (1162, '12', '02', '02', 'Aco');
INSERT INTO `ubigeos` VALUES (1163, '12', '02', '03', 'Andamarca');
INSERT INTO `ubigeos` VALUES (1164, '12', '02', '04', 'Chambara');
INSERT INTO `ubigeos` VALUES (1165, '12', '02', '05', 'Cochas');
INSERT INTO `ubigeos` VALUES (1166, '12', '02', '06', 'Comas');
INSERT INTO `ubigeos` VALUES (1167, '12', '02', '07', 'Heroinas Toledo');
INSERT INTO `ubigeos` VALUES (1168, '12', '02', '08', 'Manzanares');
INSERT INTO `ubigeos` VALUES (1169, '12', '02', '09', 'Mariscal Castilla');
INSERT INTO `ubigeos` VALUES (1170, '12', '02', '10', 'Matahuasi');
INSERT INTO `ubigeos` VALUES (1171, '12', '02', '11', 'Mito');
INSERT INTO `ubigeos` VALUES (1172, '12', '02', '12', 'Nueve de Julio');
INSERT INTO `ubigeos` VALUES (1173, '12', '02', '13', 'Orcotuna');
INSERT INTO `ubigeos` VALUES (1174, '12', '02', '14', 'San Jose de Quero');
INSERT INTO `ubigeos` VALUES (1175, '12', '02', '15', 'Santa Rosa de Ocopa');
INSERT INTO `ubigeos` VALUES (1176, '12', '03', '00', 'Chanchamayo');
INSERT INTO `ubigeos` VALUES (1177, '12', '03', '01', 'Chanchamayo');
INSERT INTO `ubigeos` VALUES (1178, '12', '03', '02', 'Perene');
INSERT INTO `ubigeos` VALUES (1179, '12', '03', '03', 'Pichanaqui');
INSERT INTO `ubigeos` VALUES (1180, '12', '03', '04', 'San Luis de Shuaro');
INSERT INTO `ubigeos` VALUES (1181, '12', '03', '05', 'San Ramon');
INSERT INTO `ubigeos` VALUES (1182, '12', '03', '06', 'Vitoc');
INSERT INTO `ubigeos` VALUES (1183, '12', '04', '00', 'Jauja');
INSERT INTO `ubigeos` VALUES (1184, '12', '04', '01', 'Jauja');
INSERT INTO `ubigeos` VALUES (1185, '12', '04', '02', 'Acolla');
INSERT INTO `ubigeos` VALUES (1186, '12', '04', '03', 'Apata');
INSERT INTO `ubigeos` VALUES (1187, '12', '04', '04', 'Ataura');
INSERT INTO `ubigeos` VALUES (1188, '12', '04', '05', 'Canchayllo');
INSERT INTO `ubigeos` VALUES (1189, '12', '04', '06', 'Curicaca');
INSERT INTO `ubigeos` VALUES (1190, '12', '04', '07', 'El Mantaro');
INSERT INTO `ubigeos` VALUES (1191, '12', '04', '08', 'Huamali');
INSERT INTO `ubigeos` VALUES (1192, '12', '04', '09', 'Huaripampa');
INSERT INTO `ubigeos` VALUES (1193, '12', '04', '10', 'Huertas');
INSERT INTO `ubigeos` VALUES (1194, '12', '04', '11', 'Janjaillo');
INSERT INTO `ubigeos` VALUES (1195, '12', '04', '12', 'Julcan');
INSERT INTO `ubigeos` VALUES (1196, '12', '04', '13', 'Leonor Ordoñez');
INSERT INTO `ubigeos` VALUES (1197, '12', '04', '14', 'Llocllapampa');
INSERT INTO `ubigeos` VALUES (1198, '12', '04', '15', 'Marco');
INSERT INTO `ubigeos` VALUES (1199, '12', '04', '16', 'Masma');
INSERT INTO `ubigeos` VALUES (1200, '12', '04', '17', 'Masma Chicche');
INSERT INTO `ubigeos` VALUES (1201, '12', '04', '18', 'Molinos');
INSERT INTO `ubigeos` VALUES (1202, '12', '04', '19', 'Monobamba');
INSERT INTO `ubigeos` VALUES (1203, '12', '04', '20', 'Muqui');
INSERT INTO `ubigeos` VALUES (1204, '12', '04', '21', 'Muquiyauyo');
INSERT INTO `ubigeos` VALUES (1205, '12', '04', '22', 'Paca');
INSERT INTO `ubigeos` VALUES (1206, '12', '04', '23', 'Paccha');
INSERT INTO `ubigeos` VALUES (1207, '12', '04', '24', 'Pancan');
INSERT INTO `ubigeos` VALUES (1208, '12', '04', '25', 'Parco');
INSERT INTO `ubigeos` VALUES (1209, '12', '04', '26', 'Pomacancha');
INSERT INTO `ubigeos` VALUES (1210, '12', '04', '27', 'Ricran');
INSERT INTO `ubigeos` VALUES (1211, '12', '04', '28', 'San Lorenzo');
INSERT INTO `ubigeos` VALUES (1212, '12', '04', '29', 'San Pedro de Chunan');
INSERT INTO `ubigeos` VALUES (1213, '12', '04', '30', 'Sausa');
INSERT INTO `ubigeos` VALUES (1214, '12', '04', '31', 'Sincos');
INSERT INTO `ubigeos` VALUES (1215, '12', '04', '32', 'Tunan Marca');
INSERT INTO `ubigeos` VALUES (1216, '12', '04', '33', 'Yauli');
INSERT INTO `ubigeos` VALUES (1217, '12', '04', '34', 'Yauyos');
INSERT INTO `ubigeos` VALUES (1218, '12', '05', '00', 'Junin');
INSERT INTO `ubigeos` VALUES (1219, '12', '05', '01', 'Junin');
INSERT INTO `ubigeos` VALUES (1220, '12', '05', '02', 'Carhuamayo');
INSERT INTO `ubigeos` VALUES (1221, '12', '05', '03', 'Ondores');
INSERT INTO `ubigeos` VALUES (1222, '12', '05', '04', 'Ulcumayo');
INSERT INTO `ubigeos` VALUES (1223, '12', '06', '00', 'Satipo');
INSERT INTO `ubigeos` VALUES (1224, '12', '06', '01', 'Satipo');
INSERT INTO `ubigeos` VALUES (1225, '12', '06', '02', 'Coviriali');
INSERT INTO `ubigeos` VALUES (1226, '12', '06', '03', 'Llaylla');
INSERT INTO `ubigeos` VALUES (1227, '12', '06', '04', 'Mazamari');
INSERT INTO `ubigeos` VALUES (1228, '12', '06', '05', 'Pampa Hermosa');
INSERT INTO `ubigeos` VALUES (1229, '12', '06', '06', 'Pangoa');
INSERT INTO `ubigeos` VALUES (1230, '12', '06', '07', 'Rio Negro');
INSERT INTO `ubigeos` VALUES (1231, '12', '06', '08', 'Rio Tambo');
INSERT INTO `ubigeos` VALUES (1232, '12', '06', '99', 'Mazamari-Pangoa');
INSERT INTO `ubigeos` VALUES (1233, '12', '07', '00', 'Tarma');
INSERT INTO `ubigeos` VALUES (1234, '12', '07', '01', 'Tarma');
INSERT INTO `ubigeos` VALUES (1235, '12', '07', '02', 'Acobamba');
INSERT INTO `ubigeos` VALUES (1236, '12', '07', '03', 'Huaricolca');
INSERT INTO `ubigeos` VALUES (1237, '12', '07', '04', 'Huasahuasi');
INSERT INTO `ubigeos` VALUES (1238, '12', '07', '05', 'La Union');
INSERT INTO `ubigeos` VALUES (1239, '12', '07', '06', 'Palca');
INSERT INTO `ubigeos` VALUES (1240, '12', '07', '07', 'Palcamayo');
INSERT INTO `ubigeos` VALUES (1241, '12', '07', '08', 'San Pedro de Cajas');
INSERT INTO `ubigeos` VALUES (1242, '12', '07', '09', 'Tapo');
INSERT INTO `ubigeos` VALUES (1243, '12', '08', '00', 'Yauli');
INSERT INTO `ubigeos` VALUES (1244, '12', '08', '01', 'La Oroya');
INSERT INTO `ubigeos` VALUES (1245, '12', '08', '02', 'Chacapalpa');
INSERT INTO `ubigeos` VALUES (1246, '12', '08', '03', 'Huay-Huay');
INSERT INTO `ubigeos` VALUES (1247, '12', '08', '04', 'Marcapomacocha');
INSERT INTO `ubigeos` VALUES (1248, '12', '08', '05', 'Morococha');
INSERT INTO `ubigeos` VALUES (1249, '12', '08', '06', 'Paccha');
INSERT INTO `ubigeos` VALUES (1250, '12', '08', '07', 'Santa Barbara de Carhuacayan');
INSERT INTO `ubigeos` VALUES (1251, '12', '08', '08', 'Santa Rosa de Sacco');
INSERT INTO `ubigeos` VALUES (1252, '12', '08', '09', 'Suitucancha');
INSERT INTO `ubigeos` VALUES (1253, '12', '08', '10', 'Yauli');
INSERT INTO `ubigeos` VALUES (1254, '12', '09', '00', 'Chupaca');
INSERT INTO `ubigeos` VALUES (1255, '12', '09', '01', 'Chupaca');
INSERT INTO `ubigeos` VALUES (1256, '12', '09', '02', 'Ahuac');
INSERT INTO `ubigeos` VALUES (1257, '12', '09', '03', 'Chongos Bajo');
INSERT INTO `ubigeos` VALUES (1258, '12', '09', '04', 'Huachac');
INSERT INTO `ubigeos` VALUES (1259, '12', '09', '05', 'Huamancaca Chico');
INSERT INTO `ubigeos` VALUES (1260, '12', '09', '06', 'San Juan de Iscos');
INSERT INTO `ubigeos` VALUES (1261, '12', '09', '07', 'San Juan de Jarpa');
INSERT INTO `ubigeos` VALUES (1262, '12', '09', '08', '3 de Diciembre');
INSERT INTO `ubigeos` VALUES (1263, '12', '09', '09', 'Yanacancha');
INSERT INTO `ubigeos` VALUES (1264, '13', '00', '00', 'La Libertad');
INSERT INTO `ubigeos` VALUES (1265, '13', '01', '00', 'Trujillo');
INSERT INTO `ubigeos` VALUES (1266, '13', '01', '01', 'Trujillo');
INSERT INTO `ubigeos` VALUES (1267, '13', '01', '02', 'El Porvenir');
INSERT INTO `ubigeos` VALUES (1268, '13', '01', '03', 'Florencia de Mora');
INSERT INTO `ubigeos` VALUES (1269, '13', '01', '04', 'Huanchaco');
INSERT INTO `ubigeos` VALUES (1270, '13', '01', '05', 'La Esperanza');
INSERT INTO `ubigeos` VALUES (1271, '13', '01', '06', 'Laredo');
INSERT INTO `ubigeos` VALUES (1272, '13', '01', '07', 'Moche');
INSERT INTO `ubigeos` VALUES (1273, '13', '01', '08', 'Poroto');
INSERT INTO `ubigeos` VALUES (1274, '13', '01', '09', 'Salaverry');
INSERT INTO `ubigeos` VALUES (1275, '13', '01', '10', 'Simbal');
INSERT INTO `ubigeos` VALUES (1276, '13', '01', '11', 'Victor Larco Herrera');
INSERT INTO `ubigeos` VALUES (1277, '13', '02', '00', 'Ascope');
INSERT INTO `ubigeos` VALUES (1278, '13', '02', '01', 'Ascope');
INSERT INTO `ubigeos` VALUES (1279, '13', '02', '02', 'Chicama');
INSERT INTO `ubigeos` VALUES (1280, '13', '02', '03', 'Chocope');
INSERT INTO `ubigeos` VALUES (1281, '13', '02', '04', 'Magdalena de Cao');
INSERT INTO `ubigeos` VALUES (1282, '13', '02', '05', 'Paijan');
INSERT INTO `ubigeos` VALUES (1283, '13', '02', '06', 'Razuri');
INSERT INTO `ubigeos` VALUES (1284, '13', '02', '07', 'Santiago de Cao');
INSERT INTO `ubigeos` VALUES (1285, '13', '02', '08', 'Casa Grande');
INSERT INTO `ubigeos` VALUES (1286, '13', '03', '00', 'Bolivar');
INSERT INTO `ubigeos` VALUES (1287, '13', '03', '01', 'Bolivar');
INSERT INTO `ubigeos` VALUES (1288, '13', '03', '02', 'Bambamarca');
INSERT INTO `ubigeos` VALUES (1289, '13', '03', '03', 'Condormarca');
INSERT INTO `ubigeos` VALUES (1290, '13', '03', '04', 'Longotea');
INSERT INTO `ubigeos` VALUES (1291, '13', '03', '05', 'Uchumarca');
INSERT INTO `ubigeos` VALUES (1292, '13', '03', '06', 'Ucuncha');
INSERT INTO `ubigeos` VALUES (1293, '13', '04', '00', 'Chepen');
INSERT INTO `ubigeos` VALUES (1294, '13', '04', '01', 'Chepen');
INSERT INTO `ubigeos` VALUES (1295, '13', '04', '02', 'Pacanga');
INSERT INTO `ubigeos` VALUES (1296, '13', '04', '03', 'Pueblo Nuevo');
INSERT INTO `ubigeos` VALUES (1297, '13', '05', '00', 'Julcan');
INSERT INTO `ubigeos` VALUES (1298, '13', '05', '01', 'Julcan');
INSERT INTO `ubigeos` VALUES (1299, '13', '05', '02', 'Calamarca');
INSERT INTO `ubigeos` VALUES (1300, '13', '05', '03', 'Carabamba');
INSERT INTO `ubigeos` VALUES (1301, '13', '05', '04', 'Huaso');
INSERT INTO `ubigeos` VALUES (1302, '13', '06', '00', 'Otuzco');
INSERT INTO `ubigeos` VALUES (1303, '13', '06', '01', 'Otuzco');
INSERT INTO `ubigeos` VALUES (1304, '13', '06', '02', 'Agallpampa');
INSERT INTO `ubigeos` VALUES (1305, '13', '06', '04', 'Charat');
INSERT INTO `ubigeos` VALUES (1306, '13', '06', '05', 'Huaranchal');
INSERT INTO `ubigeos` VALUES (1307, '13', '06', '06', 'La Cuesta');
INSERT INTO `ubigeos` VALUES (1308, '13', '06', '08', 'Mache');
INSERT INTO `ubigeos` VALUES (1309, '13', '06', '10', 'Paranday');
INSERT INTO `ubigeos` VALUES (1310, '13', '06', '11', 'Salpo');
INSERT INTO `ubigeos` VALUES (1311, '13', '06', '13', 'Sinsicap');
INSERT INTO `ubigeos` VALUES (1312, '13', '06', '14', 'Usquil');
INSERT INTO `ubigeos` VALUES (1313, '13', '07', '00', 'Pacasmayo');
INSERT INTO `ubigeos` VALUES (1314, '13', '07', '01', 'San Pedro de Lloc');
INSERT INTO `ubigeos` VALUES (1315, '13', '07', '02', 'Guadalupe');
INSERT INTO `ubigeos` VALUES (1316, '13', '07', '03', 'Jequetepeque');
INSERT INTO `ubigeos` VALUES (1317, '13', '07', '04', 'Pacasmayo');
INSERT INTO `ubigeos` VALUES (1318, '13', '07', '05', 'San Jose');
INSERT INTO `ubigeos` VALUES (1319, '13', '08', '00', 'Pataz');
INSERT INTO `ubigeos` VALUES (1320, '13', '08', '01', 'Tayabamba');
INSERT INTO `ubigeos` VALUES (1321, '13', '08', '02', 'Buldibuyo');
INSERT INTO `ubigeos` VALUES (1322, '13', '08', '03', 'Chillia');
INSERT INTO `ubigeos` VALUES (1323, '13', '08', '04', 'Huancaspata');
INSERT INTO `ubigeos` VALUES (1324, '13', '08', '05', 'Huaylillas');
INSERT INTO `ubigeos` VALUES (1325, '13', '08', '06', 'Huayo');
INSERT INTO `ubigeos` VALUES (1326, '13', '08', '07', 'Ongon');
INSERT INTO `ubigeos` VALUES (1327, '13', '08', '08', 'Parcoy');
INSERT INTO `ubigeos` VALUES (1328, '13', '08', '09', 'Pataz');
INSERT INTO `ubigeos` VALUES (1329, '13', '08', '10', 'Pias');
INSERT INTO `ubigeos` VALUES (1330, '13', '08', '11', 'Santiago de Challas');
INSERT INTO `ubigeos` VALUES (1331, '13', '08', '12', 'Taurija');
INSERT INTO `ubigeos` VALUES (1332, '13', '08', '13', 'Urpay');
INSERT INTO `ubigeos` VALUES (1333, '13', '09', '00', 'Sanchez Carrion');
INSERT INTO `ubigeos` VALUES (1334, '13', '09', '01', 'Huamachuco');
INSERT INTO `ubigeos` VALUES (1335, '13', '09', '02', 'Chugay');
INSERT INTO `ubigeos` VALUES (1336, '13', '09', '03', 'Cochorco');
INSERT INTO `ubigeos` VALUES (1337, '13', '09', '04', 'Curgos');
INSERT INTO `ubigeos` VALUES (1338, '13', '09', '05', 'Marcabal');
INSERT INTO `ubigeos` VALUES (1339, '13', '09', '06', 'Sanagoran');
INSERT INTO `ubigeos` VALUES (1340, '13', '09', '07', 'Sarin');
INSERT INTO `ubigeos` VALUES (1341, '13', '09', '08', 'Sartimbamba');
INSERT INTO `ubigeos` VALUES (1342, '13', '10', '00', 'Santiago de Chuco');
INSERT INTO `ubigeos` VALUES (1343, '13', '10', '01', 'Santiago de Chuco');
INSERT INTO `ubigeos` VALUES (1344, '13', '10', '02', 'Angasmarca');
INSERT INTO `ubigeos` VALUES (1345, '13', '10', '03', 'Cachicadan');
INSERT INTO `ubigeos` VALUES (1346, '13', '10', '04', 'Mollebamba');
INSERT INTO `ubigeos` VALUES (1347, '13', '10', '05', 'Mollepata');
INSERT INTO `ubigeos` VALUES (1348, '13', '10', '06', 'Quiruvilca');
INSERT INTO `ubigeos` VALUES (1349, '13', '10', '07', 'Santa Cruz de Chuca');
INSERT INTO `ubigeos` VALUES (1350, '13', '10', '08', 'Sitabamba');
INSERT INTO `ubigeos` VALUES (1351, '13', '11', '00', 'Gran Chimu');
INSERT INTO `ubigeos` VALUES (1352, '13', '11', '01', 'Cascas');
INSERT INTO `ubigeos` VALUES (1353, '13', '11', '02', 'Lucma');
INSERT INTO `ubigeos` VALUES (1354, '13', '11', '03', 'Marmot');
INSERT INTO `ubigeos` VALUES (1355, '13', '11', '04', 'Sayapullo');
INSERT INTO `ubigeos` VALUES (1356, '13', '12', '00', 'Viru');
INSERT INTO `ubigeos` VALUES (1357, '13', '12', '01', 'Viru');
INSERT INTO `ubigeos` VALUES (1358, '13', '12', '02', 'Chao');
INSERT INTO `ubigeos` VALUES (1359, '13', '12', '03', 'Guadalupito');
INSERT INTO `ubigeos` VALUES (1360, '14', '00', '00', 'Lambayeque');
INSERT INTO `ubigeos` VALUES (1361, '14', '01', '00', 'Chiclayo');
INSERT INTO `ubigeos` VALUES (1362, '14', '01', '01', 'Chiclayo');
INSERT INTO `ubigeos` VALUES (1363, '14', '01', '02', 'Chongoyape');
INSERT INTO `ubigeos` VALUES (1364, '14', '01', '03', 'Eten');
INSERT INTO `ubigeos` VALUES (1365, '14', '01', '04', 'Eten Puerto');
INSERT INTO `ubigeos` VALUES (1366, '14', '01', '05', 'Jose Leonardo Ortiz');
INSERT INTO `ubigeos` VALUES (1367, '14', '01', '06', 'La Victoria');
INSERT INTO `ubigeos` VALUES (1368, '14', '01', '07', 'Lagunas');
INSERT INTO `ubigeos` VALUES (1369, '14', '01', '08', 'Monsefu');
INSERT INTO `ubigeos` VALUES (1370, '14', '01', '09', 'Nueva Arica');
INSERT INTO `ubigeos` VALUES (1371, '14', '01', '10', 'Oyotun');
INSERT INTO `ubigeos` VALUES (1372, '14', '01', '11', 'Picsi');
INSERT INTO `ubigeos` VALUES (1373, '14', '01', '12', 'Pimentel');
INSERT INTO `ubigeos` VALUES (1374, '14', '01', '13', 'Reque');
INSERT INTO `ubigeos` VALUES (1375, '14', '01', '14', 'Santa Rosa');
INSERT INTO `ubigeos` VALUES (1376, '14', '01', '15', 'Saña');
INSERT INTO `ubigeos` VALUES (1377, '14', '01', '16', 'Cayaltí');
INSERT INTO `ubigeos` VALUES (1378, '14', '01', '17', 'Patapo');
INSERT INTO `ubigeos` VALUES (1379, '14', '01', '18', 'Pomalca');
INSERT INTO `ubigeos` VALUES (1380, '14', '01', '19', 'Pucalá');
INSERT INTO `ubigeos` VALUES (1381, '14', '01', '20', 'Tumán');
INSERT INTO `ubigeos` VALUES (1382, '14', '02', '00', 'Ferreñafe');
INSERT INTO `ubigeos` VALUES (1383, '14', '02', '01', 'Ferreñafe');
INSERT INTO `ubigeos` VALUES (1384, '14', '02', '02', 'Cañaris');
INSERT INTO `ubigeos` VALUES (1385, '14', '02', '03', 'Incahuasi');
INSERT INTO `ubigeos` VALUES (1386, '14', '02', '04', 'Manuel Antonio Mesones Muro');
INSERT INTO `ubigeos` VALUES (1387, '14', '02', '05', 'Pitipo');
INSERT INTO `ubigeos` VALUES (1388, '14', '02', '06', 'Pueblo Nuevo');
INSERT INTO `ubigeos` VALUES (1389, '14', '03', '00', 'Lambayeque');
INSERT INTO `ubigeos` VALUES (1390, '14', '03', '01', 'Lambayeque');
INSERT INTO `ubigeos` VALUES (1391, '14', '03', '02', 'Chochope');
INSERT INTO `ubigeos` VALUES (1392, '14', '03', '03', 'Illimo');
INSERT INTO `ubigeos` VALUES (1393, '14', '03', '04', 'Jayanca');
INSERT INTO `ubigeos` VALUES (1394, '14', '03', '05', 'Mochumi');
INSERT INTO `ubigeos` VALUES (1395, '14', '03', '06', 'Morrope');
INSERT INTO `ubigeos` VALUES (1396, '14', '03', '07', 'Motupe');
INSERT INTO `ubigeos` VALUES (1397, '14', '03', '08', 'Olmos');
INSERT INTO `ubigeos` VALUES (1398, '14', '03', '09', 'Pacora');
INSERT INTO `ubigeos` VALUES (1399, '14', '03', '10', 'Salas');
INSERT INTO `ubigeos` VALUES (1400, '14', '03', '11', 'San Jose');
INSERT INTO `ubigeos` VALUES (1401, '14', '03', '12', 'Tucume');
INSERT INTO `ubigeos` VALUES (1402, '15', '00', '00', 'Lima');
INSERT INTO `ubigeos` VALUES (1403, '15', '01', '00', 'Lima');
INSERT INTO `ubigeos` VALUES (1404, '15', '01', '01', 'Lima');
INSERT INTO `ubigeos` VALUES (1405, '15', '01', '02', 'Ancon');
INSERT INTO `ubigeos` VALUES (1406, '15', '01', '03', 'Ate');
INSERT INTO `ubigeos` VALUES (1407, '15', '01', '04', 'Barranco');
INSERT INTO `ubigeos` VALUES (1408, '15', '01', '05', 'Breña');
INSERT INTO `ubigeos` VALUES (1409, '15', '01', '06', 'Carabayllo');
INSERT INTO `ubigeos` VALUES (1410, '15', '01', '07', 'Chaclacayo');
INSERT INTO `ubigeos` VALUES (1411, '15', '01', '08', 'Chorrillos');
INSERT INTO `ubigeos` VALUES (1412, '15', '01', '09', 'Cieneguilla');
INSERT INTO `ubigeos` VALUES (1413, '15', '01', '10', 'Comas');
INSERT INTO `ubigeos` VALUES (1414, '15', '01', '11', 'El Agustino');
INSERT INTO `ubigeos` VALUES (1415, '15', '01', '12', 'Independencia');
INSERT INTO `ubigeos` VALUES (1416, '15', '01', '13', 'Jesus Maria');
INSERT INTO `ubigeos` VALUES (1417, '15', '01', '14', 'La Molina');
INSERT INTO `ubigeos` VALUES (1418, '15', '01', '15', 'La Victoria');
INSERT INTO `ubigeos` VALUES (1419, '15', '01', '16', 'Lince');
INSERT INTO `ubigeos` VALUES (1420, '15', '01', '17', 'Los Olivos');
INSERT INTO `ubigeos` VALUES (1421, '15', '01', '18', 'Lurigancho');
INSERT INTO `ubigeos` VALUES (1422, '15', '01', '19', 'Lurin');
INSERT INTO `ubigeos` VALUES (1423, '15', '01', '20', 'Magdalena del Mar');
INSERT INTO `ubigeos` VALUES (1424, '15', '01', '21', 'Pueblo Libre (Magdalena Vieja)');
INSERT INTO `ubigeos` VALUES (1425, '15', '01', '22', 'Miraflores');
INSERT INTO `ubigeos` VALUES (1426, '15', '01', '23', 'Pachacamac');
INSERT INTO `ubigeos` VALUES (1427, '15', '01', '24', 'Pucusana');
INSERT INTO `ubigeos` VALUES (1428, '15', '01', '25', 'Puente Piedra');
INSERT INTO `ubigeos` VALUES (1429, '15', '01', '26', 'Punta Hermosa');
INSERT INTO `ubigeos` VALUES (1430, '15', '01', '27', 'Punta Negra');
INSERT INTO `ubigeos` VALUES (1431, '15', '01', '28', 'Rimac');
INSERT INTO `ubigeos` VALUES (1432, '15', '01', '29', 'San Bartolo');
INSERT INTO `ubigeos` VALUES (1433, '15', '01', '30', 'San Borja');
INSERT INTO `ubigeos` VALUES (1434, '15', '01', '31', 'San Isidro');
INSERT INTO `ubigeos` VALUES (1435, '15', '01', '32', 'San Juan de Lurigancho');
INSERT INTO `ubigeos` VALUES (1436, '15', '01', '33', 'San Juan de Miraflores');
INSERT INTO `ubigeos` VALUES (1437, '15', '01', '34', 'San Luis');
INSERT INTO `ubigeos` VALUES (1438, '15', '01', '35', 'San Martin de Porres');
INSERT INTO `ubigeos` VALUES (1439, '15', '01', '36', 'San Miguel');
INSERT INTO `ubigeos` VALUES (1440, '15', '01', '37', 'Santa Anita');
INSERT INTO `ubigeos` VALUES (1441, '15', '01', '38', 'Santa Maria del Mar');
INSERT INTO `ubigeos` VALUES (1442, '15', '01', '39', 'Santa Rosa');
INSERT INTO `ubigeos` VALUES (1443, '15', '01', '40', 'Santiago de Surco');
INSERT INTO `ubigeos` VALUES (1444, '15', '01', '41', 'Surquillo');
INSERT INTO `ubigeos` VALUES (1445, '15', '01', '42', 'Villa El Salvador');
INSERT INTO `ubigeos` VALUES (1446, '15', '01', '43', 'Villa Maria del Triunfo');
INSERT INTO `ubigeos` VALUES (1447, '15', '02', '00', 'Barranca');
INSERT INTO `ubigeos` VALUES (1448, '15', '02', '01', 'Barranca');
INSERT INTO `ubigeos` VALUES (1449, '15', '02', '02', 'Paramonga');
INSERT INTO `ubigeos` VALUES (1450, '15', '02', '03', 'Pativilca');
INSERT INTO `ubigeos` VALUES (1451, '15', '02', '04', 'Supe');
INSERT INTO `ubigeos` VALUES (1452, '15', '02', '05', 'Supe Puerto');
INSERT INTO `ubigeos` VALUES (1453, '15', '03', '00', 'Cajatambo');
INSERT INTO `ubigeos` VALUES (1454, '15', '03', '01', 'Cajatambo');
INSERT INTO `ubigeos` VALUES (1455, '15', '03', '02', 'Copa');
INSERT INTO `ubigeos` VALUES (1456, '15', '03', '03', 'Gorgor');
INSERT INTO `ubigeos` VALUES (1457, '15', '03', '04', 'Huancapon');
INSERT INTO `ubigeos` VALUES (1458, '15', '03', '05', 'Manas');
INSERT INTO `ubigeos` VALUES (1459, '15', '04', '00', 'Canta');
INSERT INTO `ubigeos` VALUES (1460, '15', '04', '01', 'Canta');
INSERT INTO `ubigeos` VALUES (1461, '15', '04', '02', 'Arahuay');
INSERT INTO `ubigeos` VALUES (1462, '15', '04', '03', 'Huamantanga');
INSERT INTO `ubigeos` VALUES (1463, '15', '04', '04', 'Huaros');
INSERT INTO `ubigeos` VALUES (1464, '15', '04', '05', 'Lachaqui');
INSERT INTO `ubigeos` VALUES (1465, '15', '04', '06', 'San Buenaventura');
INSERT INTO `ubigeos` VALUES (1466, '15', '04', '07', 'Santa Rosa de Quives');
INSERT INTO `ubigeos` VALUES (1467, '15', '05', '00', 'Cañete');
INSERT INTO `ubigeos` VALUES (1468, '15', '05', '01', 'San Vicente de Cañete');
INSERT INTO `ubigeos` VALUES (1469, '15', '05', '02', 'Asia');
INSERT INTO `ubigeos` VALUES (1470, '15', '05', '03', 'Calango');
INSERT INTO `ubigeos` VALUES (1471, '15', '05', '04', 'Cerro Azul');
INSERT INTO `ubigeos` VALUES (1472, '15', '05', '05', 'Chilca');
INSERT INTO `ubigeos` VALUES (1473, '15', '05', '06', 'Coayllo');
INSERT INTO `ubigeos` VALUES (1474, '15', '05', '07', 'Imperial');
INSERT INTO `ubigeos` VALUES (1475, '15', '05', '08', 'Lunahuana');
INSERT INTO `ubigeos` VALUES (1476, '15', '05', '09', 'Mala');
INSERT INTO `ubigeos` VALUES (1477, '15', '05', '10', 'Nuevo Imperial');
INSERT INTO `ubigeos` VALUES (1478, '15', '05', '11', 'Pacaran');
INSERT INTO `ubigeos` VALUES (1479, '15', '05', '12', 'Quilmana');
INSERT INTO `ubigeos` VALUES (1480, '15', '05', '13', 'San Antonio');
INSERT INTO `ubigeos` VALUES (1481, '15', '05', '14', 'San Luis');
INSERT INTO `ubigeos` VALUES (1482, '15', '05', '15', 'Santa Cruz de Flores');
INSERT INTO `ubigeos` VALUES (1483, '15', '05', '16', 'Zuñiga');
INSERT INTO `ubigeos` VALUES (1484, '15', '06', '00', 'Huaral');
INSERT INTO `ubigeos` VALUES (1485, '15', '06', '01', 'Huaral');
INSERT INTO `ubigeos` VALUES (1486, '15', '06', '02', 'Atavillos Alto');
INSERT INTO `ubigeos` VALUES (1487, '15', '06', '03', 'Atavillos Bajo');
INSERT INTO `ubigeos` VALUES (1488, '15', '06', '04', 'Aucallama');
INSERT INTO `ubigeos` VALUES (1489, '15', '06', '05', 'Chancay');
INSERT INTO `ubigeos` VALUES (1490, '15', '06', '06', 'Ihuari');
INSERT INTO `ubigeos` VALUES (1491, '15', '06', '07', 'Lampian');
INSERT INTO `ubigeos` VALUES (1492, '15', '06', '08', 'Pacaraos');
INSERT INTO `ubigeos` VALUES (1493, '15', '06', '09', 'San Miguel de Acos');
INSERT INTO `ubigeos` VALUES (1494, '15', '06', '10', 'Santa Cruz de Andamarca');
INSERT INTO `ubigeos` VALUES (1495, '15', '06', '11', 'Sumbilca');
INSERT INTO `ubigeos` VALUES (1496, '15', '06', '12', 'Veintisiete de Noviembre');
INSERT INTO `ubigeos` VALUES (1497, '15', '07', '00', 'Huarochiri');
INSERT INTO `ubigeos` VALUES (1498, '15', '07', '01', 'Matucana');
INSERT INTO `ubigeos` VALUES (1499, '15', '07', '02', 'Antioquia');
INSERT INTO `ubigeos` VALUES (1500, '15', '07', '03', 'Callahuanca');
INSERT INTO `ubigeos` VALUES (1501, '15', '07', '04', 'Carampoma');
INSERT INTO `ubigeos` VALUES (1502, '15', '07', '05', 'Chicla');
INSERT INTO `ubigeos` VALUES (1503, '15', '07', '06', 'Cuenca');
INSERT INTO `ubigeos` VALUES (1504, '15', '07', '07', 'Huachupampa');
INSERT INTO `ubigeos` VALUES (1505, '15', '07', '08', 'Huanza');
INSERT INTO `ubigeos` VALUES (1506, '15', '07', '09', 'Huarochiri');
INSERT INTO `ubigeos` VALUES (1507, '15', '07', '10', 'Lahuaytambo');
INSERT INTO `ubigeos` VALUES (1508, '15', '07', '11', 'Langa');
INSERT INTO `ubigeos` VALUES (1509, '15', '07', '12', 'Laraos');
INSERT INTO `ubigeos` VALUES (1510, '15', '07', '13', 'Mariatana');
INSERT INTO `ubigeos` VALUES (1511, '15', '07', '14', 'Ricardo Palma');
INSERT INTO `ubigeos` VALUES (1512, '15', '07', '15', 'San Andres de Tupicocha');
INSERT INTO `ubigeos` VALUES (1513, '15', '07', '16', 'San Antonio');
INSERT INTO `ubigeos` VALUES (1514, '15', '07', '17', 'San Bartolome');
INSERT INTO `ubigeos` VALUES (1515, '15', '07', '18', 'San Damian');
INSERT INTO `ubigeos` VALUES (1516, '15', '07', '19', 'San Juan de Iris');
INSERT INTO `ubigeos` VALUES (1517, '15', '07', '20', 'San Juan de Tantaranche');
INSERT INTO `ubigeos` VALUES (1518, '15', '07', '21', 'San Lorenzo de Quinti');
INSERT INTO `ubigeos` VALUES (1519, '15', '07', '22', 'San Mateo');
INSERT INTO `ubigeos` VALUES (1520, '15', '07', '23', 'San Mateo de Otao');
INSERT INTO `ubigeos` VALUES (1521, '15', '07', '24', 'San Pedro de Casta');
INSERT INTO `ubigeos` VALUES (1522, '15', '07', '25', 'San Pedro de Huancayre');
INSERT INTO `ubigeos` VALUES (1523, '15', '07', '26', 'Sangallaya');
INSERT INTO `ubigeos` VALUES (1524, '15', '07', '27', 'Santa Cruz de Cocachacra');
INSERT INTO `ubigeos` VALUES (1525, '15', '07', '28', 'Santa Eulalia');
INSERT INTO `ubigeos` VALUES (1526, '15', '07', '29', 'Santiago de Anchucaya');
INSERT INTO `ubigeos` VALUES (1527, '15', '07', '30', 'Santiago de Tuna');
INSERT INTO `ubigeos` VALUES (1528, '15', '07', '31', 'Santo Domingo de los Olleros');
INSERT INTO `ubigeos` VALUES (1529, '15', '07', '32', 'Surco');
INSERT INTO `ubigeos` VALUES (1530, '15', '08', '00', 'Huaura');
INSERT INTO `ubigeos` VALUES (1531, '15', '08', '01', 'Huacho');
INSERT INTO `ubigeos` VALUES (1532, '15', '08', '02', 'Ambar');
INSERT INTO `ubigeos` VALUES (1533, '15', '08', '03', 'Caleta de Carquin');
INSERT INTO `ubigeos` VALUES (1534, '15', '08', '04', 'Checras');
INSERT INTO `ubigeos` VALUES (1535, '15', '08', '05', 'Hualmay');
INSERT INTO `ubigeos` VALUES (1536, '15', '08', '06', 'Huaura');
INSERT INTO `ubigeos` VALUES (1537, '15', '08', '07', 'Leoncio Prado');
INSERT INTO `ubigeos` VALUES (1538, '15', '08', '08', 'Paccho');
INSERT INTO `ubigeos` VALUES (1539, '15', '08', '09', 'Santa Leonor');
INSERT INTO `ubigeos` VALUES (1540, '15', '08', '10', 'Santa Maria');
INSERT INTO `ubigeos` VALUES (1541, '15', '08', '11', 'Sayan');
INSERT INTO `ubigeos` VALUES (1542, '15', '08', '12', 'Vegueta');
INSERT INTO `ubigeos` VALUES (1543, '15', '09', '00', 'Oyon');
INSERT INTO `ubigeos` VALUES (1544, '15', '09', '01', 'Oyon');
INSERT INTO `ubigeos` VALUES (1545, '15', '09', '02', 'Andajes');
INSERT INTO `ubigeos` VALUES (1546, '15', '09', '03', 'Caujul');
INSERT INTO `ubigeos` VALUES (1547, '15', '09', '04', 'Cochamarca');
INSERT INTO `ubigeos` VALUES (1548, '15', '09', '05', 'Navan');
INSERT INTO `ubigeos` VALUES (1549, '15', '09', '06', 'Pachangara');
INSERT INTO `ubigeos` VALUES (1550, '15', '10', '00', 'Yauyos');
INSERT INTO `ubigeos` VALUES (1551, '15', '10', '01', 'Yauyos');
INSERT INTO `ubigeos` VALUES (1552, '15', '10', '02', 'Alis');
INSERT INTO `ubigeos` VALUES (1553, '15', '10', '03', 'Ayauca');
INSERT INTO `ubigeos` VALUES (1554, '15', '10', '04', 'Ayaviri');
INSERT INTO `ubigeos` VALUES (1555, '15', '10', '05', 'Azangaro');
INSERT INTO `ubigeos` VALUES (1556, '15', '10', '06', 'Cacra');
INSERT INTO `ubigeos` VALUES (1557, '15', '10', '07', 'Carania');
INSERT INTO `ubigeos` VALUES (1558, '15', '10', '08', 'Catahuasi');
INSERT INTO `ubigeos` VALUES (1559, '15', '10', '09', 'Chocos');
INSERT INTO `ubigeos` VALUES (1560, '15', '10', '10', 'Cochas');
INSERT INTO `ubigeos` VALUES (1561, '15', '10', '11', 'Colonia');
INSERT INTO `ubigeos` VALUES (1562, '15', '10', '12', 'Hongos');
INSERT INTO `ubigeos` VALUES (1563, '15', '10', '13', 'Huampara');
INSERT INTO `ubigeos` VALUES (1564, '15', '10', '14', 'Huancaya');
INSERT INTO `ubigeos` VALUES (1565, '15', '10', '15', 'Huangascar');
INSERT INTO `ubigeos` VALUES (1566, '15', '10', '16', 'Huantan');
INSERT INTO `ubigeos` VALUES (1567, '15', '10', '17', 'Huañec');
INSERT INTO `ubigeos` VALUES (1568, '15', '10', '18', 'Laraos');
INSERT INTO `ubigeos` VALUES (1569, '15', '10', '19', 'Lincha');
INSERT INTO `ubigeos` VALUES (1570, '15', '10', '20', 'Madean');
INSERT INTO `ubigeos` VALUES (1571, '15', '10', '21', 'Miraflores');
INSERT INTO `ubigeos` VALUES (1572, '15', '10', '22', 'Omas');
INSERT INTO `ubigeos` VALUES (1573, '15', '10', '23', 'Putinza');
INSERT INTO `ubigeos` VALUES (1574, '15', '10', '24', 'Quinches');
INSERT INTO `ubigeos` VALUES (1575, '15', '10', '25', 'Quinocay');
INSERT INTO `ubigeos` VALUES (1576, '15', '10', '26', 'San Joaquin');
INSERT INTO `ubigeos` VALUES (1577, '15', '10', '27', 'San Pedro de Pilas');
INSERT INTO `ubigeos` VALUES (1578, '15', '10', '28', 'Tanta');
INSERT INTO `ubigeos` VALUES (1579, '15', '10', '29', 'Tauripampa');
INSERT INTO `ubigeos` VALUES (1580, '15', '10', '30', 'Tomas');
INSERT INTO `ubigeos` VALUES (1581, '15', '10', '31', 'Tupe');
INSERT INTO `ubigeos` VALUES (1582, '15', '10', '32', 'Viñac');
INSERT INTO `ubigeos` VALUES (1583, '15', '10', '33', 'Vitis');
INSERT INTO `ubigeos` VALUES (1584, '16', '00', '00', 'Loreto');
INSERT INTO `ubigeos` VALUES (1585, '16', '01', '00', 'Maynas');
INSERT INTO `ubigeos` VALUES (1586, '16', '01', '01', 'Iquitos');
INSERT INTO `ubigeos` VALUES (1587, '16', '01', '02', 'Alto Nanay');
INSERT INTO `ubigeos` VALUES (1588, '16', '01', '03', 'Fernando Lores');
INSERT INTO `ubigeos` VALUES (1589, '16', '01', '04', 'Indiana');
INSERT INTO `ubigeos` VALUES (1590, '16', '01', '05', 'Las Amazonas');
INSERT INTO `ubigeos` VALUES (1591, '16', '01', '06', 'Mazan');
INSERT INTO `ubigeos` VALUES (1592, '16', '01', '07', 'Napo');
INSERT INTO `ubigeos` VALUES (1593, '16', '01', '08', 'Punchana');
INSERT INTO `ubigeos` VALUES (1594, '16', '01', '09', 'Putumayo');
INSERT INTO `ubigeos` VALUES (1595, '16', '01', '10', 'Torres Causana');
INSERT INTO `ubigeos` VALUES (1596, '16', '01', '12', 'Belén');
INSERT INTO `ubigeos` VALUES (1597, '16', '01', '13', 'San Juan Bautista');
INSERT INTO `ubigeos` VALUES (1598, '16', '01', '14', 'Teniente Manuel Clavero');
INSERT INTO `ubigeos` VALUES (1599, '16', '02', '00', 'Alto Amazonas');
INSERT INTO `ubigeos` VALUES (1600, '16', '02', '01', 'Yurimaguas');
INSERT INTO `ubigeos` VALUES (1601, '16', '02', '02', 'Balsapuerto');
INSERT INTO `ubigeos` VALUES (1602, '16', '02', '05', 'Jeberos');
INSERT INTO `ubigeos` VALUES (1603, '16', '02', '06', 'Lagunas');
INSERT INTO `ubigeos` VALUES (1604, '16', '02', '10', 'Santa Cruz');
INSERT INTO `ubigeos` VALUES (1605, '16', '02', '11', 'Teniente Cesar Lopez Rojas');
INSERT INTO `ubigeos` VALUES (1606, '16', '03', '00', 'Loreto');
INSERT INTO `ubigeos` VALUES (1607, '16', '03', '01', 'Nauta');
INSERT INTO `ubigeos` VALUES (1608, '16', '03', '02', 'Parinari');
INSERT INTO `ubigeos` VALUES (1609, '16', '03', '03', 'Tigre');
INSERT INTO `ubigeos` VALUES (1610, '16', '03', '04', 'Trompeteros');
INSERT INTO `ubigeos` VALUES (1611, '16', '03', '05', 'Urarinas');
INSERT INTO `ubigeos` VALUES (1612, '16', '04', '00', 'Mariscal Ramon Castilla');
INSERT INTO `ubigeos` VALUES (1613, '16', '04', '01', 'Ramon Castilla');
INSERT INTO `ubigeos` VALUES (1614, '16', '04', '02', 'Pebas');
INSERT INTO `ubigeos` VALUES (1615, '16', '04', '03', 'Yavari');
INSERT INTO `ubigeos` VALUES (1616, '16', '04', '04', 'San Pablo');
INSERT INTO `ubigeos` VALUES (1617, '16', '05', '00', 'Requena');
INSERT INTO `ubigeos` VALUES (1618, '16', '05', '01', 'Requena');
INSERT INTO `ubigeos` VALUES (1619, '16', '05', '02', 'Alto Tapiche');
INSERT INTO `ubigeos` VALUES (1620, '16', '05', '03', 'Capelo');
INSERT INTO `ubigeos` VALUES (1621, '16', '05', '04', 'Emilio San Martin');
INSERT INTO `ubigeos` VALUES (1622, '16', '05', '05', 'Maquia');
INSERT INTO `ubigeos` VALUES (1623, '16', '05', '06', 'Puinahua');
INSERT INTO `ubigeos` VALUES (1624, '16', '05', '07', 'Saquena');
INSERT INTO `ubigeos` VALUES (1625, '16', '05', '08', 'Soplin');
INSERT INTO `ubigeos` VALUES (1626, '16', '05', '09', 'Tapiche');
INSERT INTO `ubigeos` VALUES (1627, '16', '05', '10', 'Jenaro Herrera');
INSERT INTO `ubigeos` VALUES (1628, '16', '05', '11', 'Yaquerana');
INSERT INTO `ubigeos` VALUES (1629, '16', '06', '00', 'Ucayali');
INSERT INTO `ubigeos` VALUES (1630, '16', '06', '01', 'Contamana');
INSERT INTO `ubigeos` VALUES (1631, '16', '06', '02', 'Inahuaya');
INSERT INTO `ubigeos` VALUES (1632, '16', '06', '03', 'Padre Marquez');
INSERT INTO `ubigeos` VALUES (1633, '16', '06', '04', 'Pampa Hermosa');
INSERT INTO `ubigeos` VALUES (1634, '16', '06', '05', 'Sarayacu');
INSERT INTO `ubigeos` VALUES (1635, '16', '06', '06', 'Vargas Guerra');
INSERT INTO `ubigeos` VALUES (1636, '16', '07', '00', 'Datem del Marañón');
INSERT INTO `ubigeos` VALUES (1637, '16', '07', '01', 'Barranca');
INSERT INTO `ubigeos` VALUES (1638, '16', '07', '02', 'Cahuapanas');
INSERT INTO `ubigeos` VALUES (1639, '16', '07', '03', 'Manseriche');
INSERT INTO `ubigeos` VALUES (1640, '16', '07', '04', 'Morona');
INSERT INTO `ubigeos` VALUES (1641, '16', '07', '05', 'Pastaza');
INSERT INTO `ubigeos` VALUES (1642, '16', '07', '06', 'Andoas');
INSERT INTO `ubigeos` VALUES (1643, '16', '08', '00', 'Putumayo');
INSERT INTO `ubigeos` VALUES (1644, '16', '08', '01', 'Putumayo');
INSERT INTO `ubigeos` VALUES (1645, '16', '08', '02', 'Rosa Panduro');
INSERT INTO `ubigeos` VALUES (1646, '16', '08', '03', 'Teniente Manuel Clavero');
INSERT INTO `ubigeos` VALUES (1647, '16', '08', '04', 'Yaguas');
INSERT INTO `ubigeos` VALUES (1648, '17', '00', '00', 'Madre de Dios');
INSERT INTO `ubigeos` VALUES (1649, '17', '01', '00', 'Tambopata');
INSERT INTO `ubigeos` VALUES (1650, '17', '01', '01', 'Tambopata');
INSERT INTO `ubigeos` VALUES (1651, '17', '01', '02', 'Inambari');
INSERT INTO `ubigeos` VALUES (1652, '17', '01', '03', 'Las Piedras');
INSERT INTO `ubigeos` VALUES (1653, '17', '01', '04', 'Laberinto');
INSERT INTO `ubigeos` VALUES (1654, '17', '02', '00', 'Manu');
INSERT INTO `ubigeos` VALUES (1655, '17', '02', '01', 'Manu');
INSERT INTO `ubigeos` VALUES (1656, '17', '02', '02', 'Fitzcarrald');
INSERT INTO `ubigeos` VALUES (1657, '17', '02', '03', 'Madre de Dios');
INSERT INTO `ubigeos` VALUES (1658, '17', '02', '04', 'Huepetuhe');
INSERT INTO `ubigeos` VALUES (1659, '17', '03', '00', 'Tahuamanu');
INSERT INTO `ubigeos` VALUES (1660, '17', '03', '01', 'Iñapari');
INSERT INTO `ubigeos` VALUES (1661, '17', '03', '02', 'Iberia');
INSERT INTO `ubigeos` VALUES (1662, '17', '03', '03', 'Tahuamanu');
INSERT INTO `ubigeos` VALUES (1663, '18', '00', '00', 'Moquegua');
INSERT INTO `ubigeos` VALUES (1664, '18', '01', '00', 'Mariscal Nieto');
INSERT INTO `ubigeos` VALUES (1665, '18', '01', '01', 'Moquegua');
INSERT INTO `ubigeos` VALUES (1666, '18', '01', '02', 'Carumas');
INSERT INTO `ubigeos` VALUES (1667, '18', '01', '03', 'Cuchumbaya');
INSERT INTO `ubigeos` VALUES (1668, '18', '01', '04', 'Samegua');
INSERT INTO `ubigeos` VALUES (1669, '18', '01', '05', 'San Cristobal');
INSERT INTO `ubigeos` VALUES (1670, '18', '01', '06', 'Torata');
INSERT INTO `ubigeos` VALUES (1671, '18', '02', '00', 'General Sanchez Cerro');
INSERT INTO `ubigeos` VALUES (1672, '18', '02', '01', 'Omate');
INSERT INTO `ubigeos` VALUES (1673, '18', '02', '02', 'Chojata');
INSERT INTO `ubigeos` VALUES (1674, '18', '02', '03', 'Coalaque');
INSERT INTO `ubigeos` VALUES (1675, '18', '02', '04', 'Ichuña');
INSERT INTO `ubigeos` VALUES (1676, '18', '02', '05', 'La Capilla');
INSERT INTO `ubigeos` VALUES (1677, '18', '02', '06', 'Lloque');
INSERT INTO `ubigeos` VALUES (1678, '18', '02', '07', 'Matalaque');
INSERT INTO `ubigeos` VALUES (1679, '18', '02', '08', 'Puquina');
INSERT INTO `ubigeos` VALUES (1680, '18', '02', '09', 'Quinistaquillas');
INSERT INTO `ubigeos` VALUES (1681, '18', '02', '10', 'Ubinas');
INSERT INTO `ubigeos` VALUES (1682, '18', '02', '11', 'Yunga');
INSERT INTO `ubigeos` VALUES (1683, '18', '03', '00', 'Ilo');
INSERT INTO `ubigeos` VALUES (1684, '18', '03', '01', 'Ilo');
INSERT INTO `ubigeos` VALUES (1685, '18', '03', '02', 'El Algarrobal');
INSERT INTO `ubigeos` VALUES (1686, '18', '03', '03', 'Pacocha');
INSERT INTO `ubigeos` VALUES (1687, '19', '00', '00', 'Pasco');
INSERT INTO `ubigeos` VALUES (1688, '19', '01', '00', 'Pasco');
INSERT INTO `ubigeos` VALUES (1689, '19', '01', '01', 'Chaupimarca');
INSERT INTO `ubigeos` VALUES (1690, '19', '01', '02', 'Huachon');
INSERT INTO `ubigeos` VALUES (1691, '19', '01', '03', 'Huariaca');
INSERT INTO `ubigeos` VALUES (1692, '19', '01', '04', 'Huayllay');
INSERT INTO `ubigeos` VALUES (1693, '19', '01', '05', 'Ninacaca');
INSERT INTO `ubigeos` VALUES (1694, '19', '01', '06', 'Pallanchacra');
INSERT INTO `ubigeos` VALUES (1695, '19', '01', '07', 'Paucartambo');
INSERT INTO `ubigeos` VALUES (1696, '19', '01', '08', 'San Fco. de Asís de Yarusyacán');
INSERT INTO `ubigeos` VALUES (1697, '19', '01', '09', 'Simon Bolivar');
INSERT INTO `ubigeos` VALUES (1698, '19', '01', '10', 'Ticlacayan');
INSERT INTO `ubigeos` VALUES (1699, '19', '01', '11', 'Tinyahuarco');
INSERT INTO `ubigeos` VALUES (1700, '19', '01', '12', 'Vicco');
INSERT INTO `ubigeos` VALUES (1701, '19', '01', '13', 'Yanacancha');
INSERT INTO `ubigeos` VALUES (1702, '19', '02', '00', 'Daniel Alcides Carrion');
INSERT INTO `ubigeos` VALUES (1703, '19', '02', '01', 'Yanahuanca');
INSERT INTO `ubigeos` VALUES (1704, '19', '02', '02', 'Chacayan');
INSERT INTO `ubigeos` VALUES (1705, '19', '02', '03', 'Goyllarisquizga');
INSERT INTO `ubigeos` VALUES (1706, '19', '02', '04', 'Paucar');
INSERT INTO `ubigeos` VALUES (1707, '19', '02', '05', 'San Pedro de Pillao');
INSERT INTO `ubigeos` VALUES (1708, '19', '02', '06', 'Santa Ana de Tusi');
INSERT INTO `ubigeos` VALUES (1709, '19', '02', '07', 'Tapuc');
INSERT INTO `ubigeos` VALUES (1710, '19', '02', '08', 'Vilcabamba');
INSERT INTO `ubigeos` VALUES (1711, '19', '03', '00', 'Oxapampa');
INSERT INTO `ubigeos` VALUES (1712, '19', '03', '01', 'Oxapampa');
INSERT INTO `ubigeos` VALUES (1713, '19', '03', '02', 'Chontabamba');
INSERT INTO `ubigeos` VALUES (1714, '19', '03', '03', 'Huancabamba');
INSERT INTO `ubigeos` VALUES (1715, '19', '03', '04', 'Palcazu');
INSERT INTO `ubigeos` VALUES (1716, '19', '03', '05', 'Pozuzo');
INSERT INTO `ubigeos` VALUES (1717, '19', '03', '06', 'Puerto Bermudez');
INSERT INTO `ubigeos` VALUES (1718, '19', '03', '07', 'Villa Rica');
INSERT INTO `ubigeos` VALUES (1719, '19', '03', '08', 'Constitucion');
INSERT INTO `ubigeos` VALUES (1720, '20', '00', '00', 'Piura');
INSERT INTO `ubigeos` VALUES (1721, '20', '01', '00', 'Piura');
INSERT INTO `ubigeos` VALUES (1722, '20', '01', '01', 'Piura');
INSERT INTO `ubigeos` VALUES (1723, '20', '01', '04', 'Castilla');
INSERT INTO `ubigeos` VALUES (1724, '20', '01', '05', 'Catacaos');
INSERT INTO `ubigeos` VALUES (1725, '20', '01', '07', 'Cura Mori');
INSERT INTO `ubigeos` VALUES (1726, '20', '01', '08', 'El Tallan');
INSERT INTO `ubigeos` VALUES (1727, '20', '01', '09', 'La Arena');
INSERT INTO `ubigeos` VALUES (1728, '20', '01', '10', 'La Union');
INSERT INTO `ubigeos` VALUES (1729, '20', '01', '11', 'Las Lomas');
INSERT INTO `ubigeos` VALUES (1730, '20', '01', '14', 'Tambo Grande');
INSERT INTO `ubigeos` VALUES (1731, '20', '01', '15', 'Veintiséis de Octubre');
INSERT INTO `ubigeos` VALUES (1732, '20', '02', '00', 'Ayabaca');
INSERT INTO `ubigeos` VALUES (1733, '20', '02', '01', 'Ayabaca');
INSERT INTO `ubigeos` VALUES (1734, '20', '02', '02', 'Frias');
INSERT INTO `ubigeos` VALUES (1735, '20', '02', '03', 'Jilili');
INSERT INTO `ubigeos` VALUES (1736, '20', '02', '04', 'Lagunas');
INSERT INTO `ubigeos` VALUES (1737, '20', '02', '05', 'Montero');
INSERT INTO `ubigeos` VALUES (1738, '20', '02', '06', 'Pacaipampa');
INSERT INTO `ubigeos` VALUES (1739, '20', '02', '07', 'Paimas');
INSERT INTO `ubigeos` VALUES (1740, '20', '02', '08', 'Sapillica');
INSERT INTO `ubigeos` VALUES (1741, '20', '02', '09', 'Sicchez');
INSERT INTO `ubigeos` VALUES (1742, '20', '02', '10', 'Suyo');
INSERT INTO `ubigeos` VALUES (1743, '20', '03', '00', 'Huancabamba');
INSERT INTO `ubigeos` VALUES (1744, '20', '03', '01', 'Huancabamba');
INSERT INTO `ubigeos` VALUES (1745, '20', '03', '02', 'Canchaque');
INSERT INTO `ubigeos` VALUES (1746, '20', '03', '03', 'El Carmen de la Frontera');
INSERT INTO `ubigeos` VALUES (1747, '20', '03', '04', 'Huarmaca');
INSERT INTO `ubigeos` VALUES (1748, '20', '03', '05', 'Lalaquiz');
INSERT INTO `ubigeos` VALUES (1749, '20', '03', '06', 'San Miguel de El Faique');
INSERT INTO `ubigeos` VALUES (1750, '20', '03', '07', 'Sondor');
INSERT INTO `ubigeos` VALUES (1751, '20', '03', '08', 'Sondorillo');
INSERT INTO `ubigeos` VALUES (1752, '20', '04', '00', 'Morropon');
INSERT INTO `ubigeos` VALUES (1753, '20', '04', '01', 'Chulucanas');
INSERT INTO `ubigeos` VALUES (1754, '20', '04', '02', 'Buenos Aires');
INSERT INTO `ubigeos` VALUES (1755, '20', '04', '03', 'Chalaco');
INSERT INTO `ubigeos` VALUES (1756, '20', '04', '04', 'La Matanza');
INSERT INTO `ubigeos` VALUES (1757, '20', '04', '05', 'Morropon');
INSERT INTO `ubigeos` VALUES (1758, '20', '04', '06', 'Salitral');
INSERT INTO `ubigeos` VALUES (1759, '20', '04', '07', 'San Juan de Bigote');
INSERT INTO `ubigeos` VALUES (1760, '20', '04', '08', 'Santa Catalina de Mossa');
INSERT INTO `ubigeos` VALUES (1761, '20', '04', '09', 'Santo Domingo');
INSERT INTO `ubigeos` VALUES (1762, '20', '04', '10', 'Yamango');
INSERT INTO `ubigeos` VALUES (1763, '20', '05', '00', 'Paita');
INSERT INTO `ubigeos` VALUES (1764, '20', '05', '01', 'Paita');
INSERT INTO `ubigeos` VALUES (1765, '20', '05', '02', 'Amotape');
INSERT INTO `ubigeos` VALUES (1766, '20', '05', '03', 'Arenal');
INSERT INTO `ubigeos` VALUES (1767, '20', '05', '04', 'Colan');
INSERT INTO `ubigeos` VALUES (1768, '20', '05', '05', 'La Huaca');
INSERT INTO `ubigeos` VALUES (1769, '20', '05', '06', 'Tamarindo');
INSERT INTO `ubigeos` VALUES (1770, '20', '05', '07', 'Vichayal');
INSERT INTO `ubigeos` VALUES (1771, '20', '06', '00', 'Sullana');
INSERT INTO `ubigeos` VALUES (1772, '20', '06', '01', 'Sullana');
INSERT INTO `ubigeos` VALUES (1773, '20', '06', '02', 'Bellavista');
INSERT INTO `ubigeos` VALUES (1774, '20', '06', '03', 'Ignacio Escudero');
INSERT INTO `ubigeos` VALUES (1775, '20', '06', '04', 'Lancones');
INSERT INTO `ubigeos` VALUES (1776, '20', '06', '05', 'Marcavelica');
INSERT INTO `ubigeos` VALUES (1777, '20', '06', '06', 'Miguel Checa');
INSERT INTO `ubigeos` VALUES (1778, '20', '06', '07', 'Querecotillo');
INSERT INTO `ubigeos` VALUES (1779, '20', '06', '08', 'Salitral');
INSERT INTO `ubigeos` VALUES (1780, '20', '07', '00', 'Talara');
INSERT INTO `ubigeos` VALUES (1781, '20', '07', '01', 'Pariñas');
INSERT INTO `ubigeos` VALUES (1782, '20', '07', '02', 'El Alto');
INSERT INTO `ubigeos` VALUES (1783, '20', '07', '03', 'La Brea');
INSERT INTO `ubigeos` VALUES (1784, '20', '07', '04', 'Lobitos');
INSERT INTO `ubigeos` VALUES (1785, '20', '07', '05', 'Los Organos');
INSERT INTO `ubigeos` VALUES (1786, '20', '07', '06', 'Mancora');
INSERT INTO `ubigeos` VALUES (1787, '20', '08', '00', 'Sechura');
INSERT INTO `ubigeos` VALUES (1788, '20', '08', '01', 'Sechura');
INSERT INTO `ubigeos` VALUES (1789, '20', '08', '02', 'Bellavista de la Union');
INSERT INTO `ubigeos` VALUES (1790, '20', '08', '03', 'Bernal');
INSERT INTO `ubigeos` VALUES (1791, '20', '08', '04', 'Cristo Nos Valga');
INSERT INTO `ubigeos` VALUES (1792, '20', '08', '05', 'Vice');
INSERT INTO `ubigeos` VALUES (1793, '20', '08', '06', 'Rinconada Llicuar');
INSERT INTO `ubigeos` VALUES (1794, '21', '00', '00', 'Puno');
INSERT INTO `ubigeos` VALUES (1795, '21', '01', '00', 'Puno');
INSERT INTO `ubigeos` VALUES (1796, '21', '01', '01', 'Puno');
INSERT INTO `ubigeos` VALUES (1797, '21', '01', '02', 'Acora');
INSERT INTO `ubigeos` VALUES (1798, '21', '01', '03', 'Amantani');
INSERT INTO `ubigeos` VALUES (1799, '21', '01', '04', 'Atuncolla');
INSERT INTO `ubigeos` VALUES (1800, '21', '01', '05', 'Capachica');
INSERT INTO `ubigeos` VALUES (1801, '21', '01', '06', 'Chucuito');
INSERT INTO `ubigeos` VALUES (1802, '21', '01', '07', 'Coata');
INSERT INTO `ubigeos` VALUES (1803, '21', '01', '08', 'Huata');
INSERT INTO `ubigeos` VALUES (1804, '21', '01', '09', 'Mañazo');
INSERT INTO `ubigeos` VALUES (1805, '21', '01', '10', 'Paucarcolla');
INSERT INTO `ubigeos` VALUES (1806, '21', '01', '11', 'Pichacani');
INSERT INTO `ubigeos` VALUES (1807, '21', '01', '12', 'Plateria');
INSERT INTO `ubigeos` VALUES (1808, '21', '01', '13', 'San Antonio');
INSERT INTO `ubigeos` VALUES (1809, '21', '01', '14', 'Tiquillaca');
INSERT INTO `ubigeos` VALUES (1810, '21', '01', '15', 'Vilque');
INSERT INTO `ubigeos` VALUES (1811, '21', '02', '00', 'Azangaro');
INSERT INTO `ubigeos` VALUES (1812, '21', '02', '01', 'Azangaro');
INSERT INTO `ubigeos` VALUES (1813, '21', '02', '02', 'Achaya');
INSERT INTO `ubigeos` VALUES (1814, '21', '02', '03', 'Arapa');
INSERT INTO `ubigeos` VALUES (1815, '21', '02', '04', 'Asillo');
INSERT INTO `ubigeos` VALUES (1816, '21', '02', '05', 'Caminaca');
INSERT INTO `ubigeos` VALUES (1817, '21', '02', '06', 'Chupa');
INSERT INTO `ubigeos` VALUES (1818, '21', '02', '07', 'Jose Domingo Choquehuanca');
INSERT INTO `ubigeos` VALUES (1819, '21', '02', '08', 'Muñani');
INSERT INTO `ubigeos` VALUES (1820, '21', '02', '09', 'Potoni');
INSERT INTO `ubigeos` VALUES (1821, '21', '02', '10', 'Saman');
INSERT INTO `ubigeos` VALUES (1822, '21', '02', '11', 'San Anton');
INSERT INTO `ubigeos` VALUES (1823, '21', '02', '12', 'San Jose');
INSERT INTO `ubigeos` VALUES (1824, '21', '02', '13', 'San Juan de Salinas');
INSERT INTO `ubigeos` VALUES (1825, '21', '02', '14', 'Santiago de Pupuja');
INSERT INTO `ubigeos` VALUES (1826, '21', '02', '15', 'Tirapata');
INSERT INTO `ubigeos` VALUES (1827, '21', '03', '00', 'Carabaya');
INSERT INTO `ubigeos` VALUES (1828, '21', '03', '01', 'Macusani');
INSERT INTO `ubigeos` VALUES (1829, '21', '03', '02', 'Ajoyani');
INSERT INTO `ubigeos` VALUES (1830, '21', '03', '03', 'Ayapata');
INSERT INTO `ubigeos` VALUES (1831, '21', '03', '04', 'Coasa');
INSERT INTO `ubigeos` VALUES (1832, '21', '03', '05', 'Corani');
INSERT INTO `ubigeos` VALUES (1833, '21', '03', '06', 'Crucero');
INSERT INTO `ubigeos` VALUES (1834, '21', '03', '07', 'Ituata');
INSERT INTO `ubigeos` VALUES (1835, '21', '03', '08', 'Ollachea');
INSERT INTO `ubigeos` VALUES (1836, '21', '03', '09', 'San Gaban');
INSERT INTO `ubigeos` VALUES (1837, '21', '03', '10', 'Usicayos');
INSERT INTO `ubigeos` VALUES (1838, '21', '04', '00', 'Chucuito');
INSERT INTO `ubigeos` VALUES (1839, '21', '04', '01', 'Juli');
INSERT INTO `ubigeos` VALUES (1840, '21', '04', '02', 'Desaguadero');
INSERT INTO `ubigeos` VALUES (1841, '21', '04', '03', 'Huacullani');
INSERT INTO `ubigeos` VALUES (1842, '21', '04', '04', 'Kelluyo');
INSERT INTO `ubigeos` VALUES (1843, '21', '04', '05', 'Pisacoma');
INSERT INTO `ubigeos` VALUES (1844, '21', '04', '06', 'Pomata');
INSERT INTO `ubigeos` VALUES (1845, '21', '04', '07', 'Zepita');
INSERT INTO `ubigeos` VALUES (1846, '21', '05', '00', 'El Collao');
INSERT INTO `ubigeos` VALUES (1847, '21', '05', '01', 'Ilave');
INSERT INTO `ubigeos` VALUES (1848, '21', '05', '02', 'Capaso');
INSERT INTO `ubigeos` VALUES (1849, '21', '05', '03', 'Pilcuyo');
INSERT INTO `ubigeos` VALUES (1850, '21', '05', '04', 'Santa Rosa');
INSERT INTO `ubigeos` VALUES (1851, '21', '05', '05', 'Conduriri');
INSERT INTO `ubigeos` VALUES (1852, '21', '06', '00', 'Huancane');
INSERT INTO `ubigeos` VALUES (1853, '21', '06', '01', 'Huancane');
INSERT INTO `ubigeos` VALUES (1854, '21', '06', '02', 'Cojata');
INSERT INTO `ubigeos` VALUES (1855, '21', '06', '03', 'Huatasani');
INSERT INTO `ubigeos` VALUES (1856, '21', '06', '04', 'Inchupalla');
INSERT INTO `ubigeos` VALUES (1857, '21', '06', '05', 'Pusi');
INSERT INTO `ubigeos` VALUES (1858, '21', '06', '06', 'Rosaspata');
INSERT INTO `ubigeos` VALUES (1859, '21', '06', '07', 'Taraco');
INSERT INTO `ubigeos` VALUES (1860, '21', '06', '08', 'Vilque Chico');
INSERT INTO `ubigeos` VALUES (1861, '21', '07', '00', 'Lampa');
INSERT INTO `ubigeos` VALUES (1862, '21', '07', '01', 'Lampa');
INSERT INTO `ubigeos` VALUES (1863, '21', '07', '02', 'Cabanilla');
INSERT INTO `ubigeos` VALUES (1864, '21', '07', '03', 'Calapuja');
INSERT INTO `ubigeos` VALUES (1865, '21', '07', '04', 'Nicasio');
INSERT INTO `ubigeos` VALUES (1866, '21', '07', '05', 'Ocuviri');
INSERT INTO `ubigeos` VALUES (1867, '21', '07', '06', 'Palca');
INSERT INTO `ubigeos` VALUES (1868, '21', '07', '07', 'Paratia');
INSERT INTO `ubigeos` VALUES (1869, '21', '07', '08', 'Pucara');
INSERT INTO `ubigeos` VALUES (1870, '21', '07', '09', 'Santa Lucia');
INSERT INTO `ubigeos` VALUES (1871, '21', '07', '10', 'Vilavila');
INSERT INTO `ubigeos` VALUES (1872, '21', '08', '00', 'Melgar');
INSERT INTO `ubigeos` VALUES (1873, '21', '08', '01', 'Ayaviri');
INSERT INTO `ubigeos` VALUES (1874, '21', '08', '02', 'Antauta');
INSERT INTO `ubigeos` VALUES (1875, '21', '08', '03', 'Cupi');
INSERT INTO `ubigeos` VALUES (1876, '21', '08', '04', 'Llalli');
INSERT INTO `ubigeos` VALUES (1877, '21', '08', '05', 'Macari');
INSERT INTO `ubigeos` VALUES (1878, '21', '08', '06', 'Nuñoa');
INSERT INTO `ubigeos` VALUES (1879, '21', '08', '07', 'Orurillo');
INSERT INTO `ubigeos` VALUES (1880, '21', '08', '08', 'Santa Rosa');
INSERT INTO `ubigeos` VALUES (1881, '21', '08', '09', 'Umachiri');
INSERT INTO `ubigeos` VALUES (1882, '21', '09', '00', 'Moho');
INSERT INTO `ubigeos` VALUES (1883, '21', '09', '01', 'Moho');
INSERT INTO `ubigeos` VALUES (1884, '21', '09', '02', 'Conima');
INSERT INTO `ubigeos` VALUES (1885, '21', '09', '03', 'Huayrapata');
INSERT INTO `ubigeos` VALUES (1886, '21', '09', '04', 'Tilali');
INSERT INTO `ubigeos` VALUES (1887, '21', '10', '00', 'San Antonio de Putina');
INSERT INTO `ubigeos` VALUES (1888, '21', '10', '01', 'Putina');
INSERT INTO `ubigeos` VALUES (1889, '21', '10', '02', 'Ananea');
INSERT INTO `ubigeos` VALUES (1890, '21', '10', '03', 'Pedro Vilca Apaza');
INSERT INTO `ubigeos` VALUES (1891, '21', '10', '04', 'Quilcapuncu');
INSERT INTO `ubigeos` VALUES (1892, '21', '10', '05', 'Sina');
INSERT INTO `ubigeos` VALUES (1893, '21', '11', '00', 'San Roman');
INSERT INTO `ubigeos` VALUES (1894, '21', '11', '01', 'Juliaca');
INSERT INTO `ubigeos` VALUES (1895, '21', '11', '02', 'Cabana');
INSERT INTO `ubigeos` VALUES (1896, '21', '11', '03', 'Cabanillas');
INSERT INTO `ubigeos` VALUES (1897, '21', '11', '04', 'Caracoto');
INSERT INTO `ubigeos` VALUES (1898, '21', '12', '00', 'Sandia');
INSERT INTO `ubigeos` VALUES (1899, '21', '12', '01', 'Sandia');
INSERT INTO `ubigeos` VALUES (1900, '21', '12', '02', 'Cuyocuyo');
INSERT INTO `ubigeos` VALUES (1901, '21', '12', '03', 'Limbani');
INSERT INTO `ubigeos` VALUES (1902, '21', '12', '04', 'Patambuco');
INSERT INTO `ubigeos` VALUES (1903, '21', '12', '05', 'Phara');
INSERT INTO `ubigeos` VALUES (1904, '21', '12', '06', 'Quiaca');
INSERT INTO `ubigeos` VALUES (1905, '21', '12', '07', 'San Juan del Oro');
INSERT INTO `ubigeos` VALUES (1906, '21', '12', '08', 'Yanahuaya');
INSERT INTO `ubigeos` VALUES (1907, '21', '12', '09', 'Alto Inambari');
INSERT INTO `ubigeos` VALUES (1908, '21', '12', '10', 'San Pedro de Putina Punco');
INSERT INTO `ubigeos` VALUES (1909, '21', '13', '00', 'Yunguyo');
INSERT INTO `ubigeos` VALUES (1910, '21', '13', '01', 'Yunguyo');
INSERT INTO `ubigeos` VALUES (1911, '21', '13', '02', 'Anapia');
INSERT INTO `ubigeos` VALUES (1912, '21', '13', '03', 'Copani');
INSERT INTO `ubigeos` VALUES (1913, '21', '13', '04', 'Cuturapi');
INSERT INTO `ubigeos` VALUES (1914, '21', '13', '05', 'Ollaraya');
INSERT INTO `ubigeos` VALUES (1915, '21', '13', '06', 'Tinicachi');
INSERT INTO `ubigeos` VALUES (1916, '21', '13', '07', 'Unicachi');
INSERT INTO `ubigeos` VALUES (1917, '22', '00', '00', 'San Martin');
INSERT INTO `ubigeos` VALUES (1918, '22', '01', '00', 'Moyobamba');
INSERT INTO `ubigeos` VALUES (1919, '22', '01', '01', 'Moyobamba');
INSERT INTO `ubigeos` VALUES (1920, '22', '01', '02', 'Calzada');
INSERT INTO `ubigeos` VALUES (1921, '22', '01', '03', 'Habana');
INSERT INTO `ubigeos` VALUES (1922, '22', '01', '04', 'Jepelacio');
INSERT INTO `ubigeos` VALUES (1923, '22', '01', '05', 'Soritor');
INSERT INTO `ubigeos` VALUES (1924, '22', '01', '06', 'Yantalo');
INSERT INTO `ubigeos` VALUES (1925, '22', '02', '00', 'Bellavista');
INSERT INTO `ubigeos` VALUES (1926, '22', '02', '01', 'Bellavista');
INSERT INTO `ubigeos` VALUES (1927, '22', '02', '02', 'Alto Biavo');
INSERT INTO `ubigeos` VALUES (1928, '22', '02', '03', 'Bajo Biavo');
INSERT INTO `ubigeos` VALUES (1929, '22', '02', '04', 'Huallaga');
INSERT INTO `ubigeos` VALUES (1930, '22', '02', '05', 'San Pablo');
INSERT INTO `ubigeos` VALUES (1931, '22', '02', '06', 'San Rafael');
INSERT INTO `ubigeos` VALUES (1932, '22', '03', '00', 'El Dorado');
INSERT INTO `ubigeos` VALUES (1933, '22', '03', '01', 'San Jose de Sisa');
INSERT INTO `ubigeos` VALUES (1934, '22', '03', '02', 'Agua Blanca');
INSERT INTO `ubigeos` VALUES (1935, '22', '03', '03', 'San Martin');
INSERT INTO `ubigeos` VALUES (1936, '22', '03', '04', 'Santa Rosa');
INSERT INTO `ubigeos` VALUES (1937, '22', '03', '05', 'Shatoja');
INSERT INTO `ubigeos` VALUES (1938, '22', '04', '00', 'Huallaga');
INSERT INTO `ubigeos` VALUES (1939, '22', '04', '01', 'Saposoa');
INSERT INTO `ubigeos` VALUES (1940, '22', '04', '02', 'Alto Saposoa');
INSERT INTO `ubigeos` VALUES (1941, '22', '04', '03', 'El Eslabon');
INSERT INTO `ubigeos` VALUES (1942, '22', '04', '04', 'Piscoyacu');
INSERT INTO `ubigeos` VALUES (1943, '22', '04', '05', 'Sacanche');
INSERT INTO `ubigeos` VALUES (1944, '22', '04', '06', 'Tingo de Saposoa');
INSERT INTO `ubigeos` VALUES (1945, '22', '05', '00', 'Lamas');
INSERT INTO `ubigeos` VALUES (1946, '22', '05', '01', 'Lamas');
INSERT INTO `ubigeos` VALUES (1947, '22', '05', '02', 'Alonso de Alvarado');
INSERT INTO `ubigeos` VALUES (1948, '22', '05', '03', 'Barranquita');
INSERT INTO `ubigeos` VALUES (1949, '22', '05', '04', 'Caynarachi');
INSERT INTO `ubigeos` VALUES (1950, '22', '05', '05', 'Cuñumbuqui');
INSERT INTO `ubigeos` VALUES (1951, '22', '05', '06', 'Pinto Recodo');
INSERT INTO `ubigeos` VALUES (1952, '22', '05', '07', 'Rumisapa');
INSERT INTO `ubigeos` VALUES (1953, '22', '05', '08', 'San Roque de Cumbaza');
INSERT INTO `ubigeos` VALUES (1954, '22', '05', '09', 'Shanao');
INSERT INTO `ubigeos` VALUES (1955, '22', '05', '10', 'Tabalosos');
INSERT INTO `ubigeos` VALUES (1956, '22', '05', '11', 'Zapatero');
INSERT INTO `ubigeos` VALUES (1957, '22', '06', '00', 'Mariscal Caceres');
INSERT INTO `ubigeos` VALUES (1958, '22', '06', '01', 'Juanjui');
INSERT INTO `ubigeos` VALUES (1959, '22', '06', '02', 'Campanilla');
INSERT INTO `ubigeos` VALUES (1960, '22', '06', '03', 'Huicungo');
INSERT INTO `ubigeos` VALUES (1961, '22', '06', '04', 'Pachiza');
INSERT INTO `ubigeos` VALUES (1962, '22', '06', '05', 'Pajarillo');
INSERT INTO `ubigeos` VALUES (1963, '22', '07', '00', 'Picota');
INSERT INTO `ubigeos` VALUES (1964, '22', '07', '01', 'Picota');
INSERT INTO `ubigeos` VALUES (1965, '22', '07', '02', 'Buenos Aires');
INSERT INTO `ubigeos` VALUES (1966, '22', '07', '03', 'Caspisapa');
INSERT INTO `ubigeos` VALUES (1967, '22', '07', '04', 'Pilluana');
INSERT INTO `ubigeos` VALUES (1968, '22', '07', '05', 'Pucacaca');
INSERT INTO `ubigeos` VALUES (1969, '22', '07', '06', 'San Cristobal');
INSERT INTO `ubigeos` VALUES (1970, '22', '07', '07', 'San Hilarion');
INSERT INTO `ubigeos` VALUES (1971, '22', '07', '08', 'Shamboyacu');
INSERT INTO `ubigeos` VALUES (1972, '22', '07', '09', 'Tingo de Ponasa');
INSERT INTO `ubigeos` VALUES (1973, '22', '07', '10', 'Tres Unidos');
INSERT INTO `ubigeos` VALUES (1974, '22', '08', '00', 'Rioja');
INSERT INTO `ubigeos` VALUES (1975, '22', '08', '01', 'Rioja');
INSERT INTO `ubigeos` VALUES (1976, '22', '08', '02', 'Awajun');
INSERT INTO `ubigeos` VALUES (1977, '22', '08', '03', 'Elias Soplin Vargas');
INSERT INTO `ubigeos` VALUES (1978, '22', '08', '04', 'Nueva Cajamarca');
INSERT INTO `ubigeos` VALUES (1979, '22', '08', '05', 'Pardo Miguel');
INSERT INTO `ubigeos` VALUES (1980, '22', '08', '06', 'Posic');
INSERT INTO `ubigeos` VALUES (1981, '22', '08', '07', 'San Fernando');
INSERT INTO `ubigeos` VALUES (1982, '22', '08', '08', 'Yorongos');
INSERT INTO `ubigeos` VALUES (1983, '22', '08', '09', 'Yuracyacu');
INSERT INTO `ubigeos` VALUES (1984, '22', '09', '00', 'San Martin');
INSERT INTO `ubigeos` VALUES (1985, '22', '09', '01', 'Tarapoto');
INSERT INTO `ubigeos` VALUES (1986, '22', '09', '02', 'Alberto Leveau');
INSERT INTO `ubigeos` VALUES (1987, '22', '09', '03', 'Cacatachi');
INSERT INTO `ubigeos` VALUES (1988, '22', '09', '04', 'Chazuta');
INSERT INTO `ubigeos` VALUES (1989, '22', '09', '05', 'Chipurana');
INSERT INTO `ubigeos` VALUES (1990, '22', '09', '06', 'El Porvenir');
INSERT INTO `ubigeos` VALUES (1991, '22', '09', '07', 'Huimbayoc');
INSERT INTO `ubigeos` VALUES (1992, '22', '09', '08', 'Juan Guerra');
INSERT INTO `ubigeos` VALUES (1993, '22', '09', '09', 'La Banda de Shilcayo');
INSERT INTO `ubigeos` VALUES (1994, '22', '09', '10', 'Morales');
INSERT INTO `ubigeos` VALUES (1995, '22', '09', '11', 'Papaplaya');
INSERT INTO `ubigeos` VALUES (1996, '22', '09', '12', 'San Antonio');
INSERT INTO `ubigeos` VALUES (1997, '22', '09', '13', 'Sauce');
INSERT INTO `ubigeos` VALUES (1998, '22', '09', '14', 'Shapaja');
INSERT INTO `ubigeos` VALUES (1999, '22', '10', '00', 'Tocache');
INSERT INTO `ubigeos` VALUES (2000, '22', '10', '01', 'Tocache');
INSERT INTO `ubigeos` VALUES (2001, '22', '10', '02', 'Nuevo Progreso');
INSERT INTO `ubigeos` VALUES (2002, '22', '10', '03', 'Polvora');
INSERT INTO `ubigeos` VALUES (2003, '22', '10', '04', 'Shunte');
INSERT INTO `ubigeos` VALUES (2004, '22', '10', '05', 'Uchiza');
INSERT INTO `ubigeos` VALUES (2005, '23', '00', '00', 'Tacna');
INSERT INTO `ubigeos` VALUES (2006, '23', '01', '00', 'Tacna');
INSERT INTO `ubigeos` VALUES (2007, '23', '01', '01', 'Tacna');
INSERT INTO `ubigeos` VALUES (2008, '23', '01', '02', 'Alto de la Alianza');
INSERT INTO `ubigeos` VALUES (2009, '23', '01', '03', 'Calana');
INSERT INTO `ubigeos` VALUES (2010, '23', '01', '04', 'Ciudad Nueva');
INSERT INTO `ubigeos` VALUES (2011, '23', '01', '05', 'Inclan');
INSERT INTO `ubigeos` VALUES (2012, '23', '01', '06', 'Pachia');
INSERT INTO `ubigeos` VALUES (2013, '23', '01', '07', 'Palca');
INSERT INTO `ubigeos` VALUES (2014, '23', '01', '08', 'Pocollay');
INSERT INTO `ubigeos` VALUES (2015, '23', '01', '09', 'Sama');
INSERT INTO `ubigeos` VALUES (2016, '23', '01', '10', 'Coronel Gregorio Albarracín L');
INSERT INTO `ubigeos` VALUES (2017, '23', '02', '00', 'Candarave');
INSERT INTO `ubigeos` VALUES (2018, '23', '02', '01', 'Candarave');
INSERT INTO `ubigeos` VALUES (2019, '23', '02', '02', 'Cairani');
INSERT INTO `ubigeos` VALUES (2020, '23', '02', '03', 'Camilaca');
INSERT INTO `ubigeos` VALUES (2021, '23', '02', '04', 'Curibaya');
INSERT INTO `ubigeos` VALUES (2022, '23', '02', '05', 'Huanuara');
INSERT INTO `ubigeos` VALUES (2023, '23', '02', '06', 'Quilahuani');
INSERT INTO `ubigeos` VALUES (2024, '23', '03', '00', 'Jorge Basadre');
INSERT INTO `ubigeos` VALUES (2025, '23', '03', '01', 'Locumba');
INSERT INTO `ubigeos` VALUES (2026, '23', '03', '02', 'Ilabaya');
INSERT INTO `ubigeos` VALUES (2027, '23', '03', '03', 'Ite');
INSERT INTO `ubigeos` VALUES (2028, '23', '04', '00', 'Tarata');
INSERT INTO `ubigeos` VALUES (2029, '23', '04', '01', 'Tarata');
INSERT INTO `ubigeos` VALUES (2030, '23', '04', '02', 'Chucatamani');
INSERT INTO `ubigeos` VALUES (2031, '23', '04', '03', 'Estique');
INSERT INTO `ubigeos` VALUES (2032, '23', '04', '04', 'Estique-Pampa');
INSERT INTO `ubigeos` VALUES (2033, '23', '04', '05', 'Sitajara');
INSERT INTO `ubigeos` VALUES (2034, '23', '04', '06', 'Susapaya');
INSERT INTO `ubigeos` VALUES (2035, '23', '04', '07', 'Tarucachi');
INSERT INTO `ubigeos` VALUES (2036, '23', '04', '08', 'Ticaco');
INSERT INTO `ubigeos` VALUES (2037, '24', '00', '00', 'Tumbes');
INSERT INTO `ubigeos` VALUES (2038, '24', '01', '00', 'Tumbes');
INSERT INTO `ubigeos` VALUES (2039, '24', '01', '01', 'Tumbes');
INSERT INTO `ubigeos` VALUES (2040, '24', '01', '02', 'Corrales');
INSERT INTO `ubigeos` VALUES (2041, '24', '01', '03', 'La Cruz');
INSERT INTO `ubigeos` VALUES (2042, '24', '01', '04', 'Pampas de Hospital');
INSERT INTO `ubigeos` VALUES (2043, '24', '01', '05', 'San Jacinto');
INSERT INTO `ubigeos` VALUES (2044, '24', '01', '06', 'San Juan de la Virgen');
INSERT INTO `ubigeos` VALUES (2045, '24', '02', '00', 'Contralmirante Villar');
INSERT INTO `ubigeos` VALUES (2046, '24', '02', '01', 'Zorritos');
INSERT INTO `ubigeos` VALUES (2047, '24', '02', '02', 'Casitas');
INSERT INTO `ubigeos` VALUES (2048, '24', '02', '03', 'Canoas de Punta Sal');
INSERT INTO `ubigeos` VALUES (2049, '24', '03', '00', 'Zarumilla');
INSERT INTO `ubigeos` VALUES (2050, '24', '03', '01', 'Zarumilla');
INSERT INTO `ubigeos` VALUES (2051, '24', '03', '02', 'Aguas Verdes');
INSERT INTO `ubigeos` VALUES (2052, '24', '03', '03', 'Matapalo');
INSERT INTO `ubigeos` VALUES (2053, '24', '03', '04', 'Papayal');
INSERT INTO `ubigeos` VALUES (2054, '25', '00', '00', 'Ucayali');
INSERT INTO `ubigeos` VALUES (2055, '25', '01', '00', 'Coronel Portillo');
INSERT INTO `ubigeos` VALUES (2056, '25', '01', '01', 'Callaria');
INSERT INTO `ubigeos` VALUES (2057, '25', '01', '02', 'Campoverde');
INSERT INTO `ubigeos` VALUES (2058, '25', '01', '03', 'Iparia');
INSERT INTO `ubigeos` VALUES (2059, '25', '01', '04', 'Masisea');
INSERT INTO `ubigeos` VALUES (2060, '25', '01', '05', 'Yarinacocha');
INSERT INTO `ubigeos` VALUES (2061, '25', '01', '06', 'Nueva Requena');
INSERT INTO `ubigeos` VALUES (2062, '25', '01', '07', 'Manantay');
INSERT INTO `ubigeos` VALUES (2063, '25', '02', '00', 'Atalaya');
INSERT INTO `ubigeos` VALUES (2064, '25', '02', '01', 'Raymondi');
INSERT INTO `ubigeos` VALUES (2065, '25', '02', '02', 'Sepahua');
INSERT INTO `ubigeos` VALUES (2066, '25', '02', '03', 'Tahuania');
INSERT INTO `ubigeos` VALUES (2067, '25', '02', '04', 'Yurua');
INSERT INTO `ubigeos` VALUES (2068, '25', '03', '00', 'Padre Abad');
INSERT INTO `ubigeos` VALUES (2069, '25', '03', '01', 'Padre Abad');
INSERT INTO `ubigeos` VALUES (2070, '25', '03', '02', 'Irazola');
INSERT INTO `ubigeos` VALUES (2071, '25', '03', '03', 'Curimana');
INSERT INTO `ubigeos` VALUES (2072, '25', '04', '00', 'Purus');
INSERT INTO `ubigeos` VALUES (2073, '25', '04', '01', 'Purus');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'Admin', 'admin@dgala.com.pe', NULL, '$2y$12$ozVsjMpOxQSMMskThRS83.lK.LFJt.PSxT/CvpqNjZ/4.Tq0GHXx2', NULL, 1, '2025-07-18 16:20:55', '2025-07-18 16:20:55');
INSERT INTO `users` VALUES (2, 1, 'Erick Oliver Huamán Moriano', 'i2512126@continental.edu.pe', NULL, '$2y$12$hvgFPJ9jBkfAuntU9xMnFeLyzVAJlegR7vCnDc86OMyRQJ687pLVK', NULL, 1, '2025-09-05 19:28:29', '2025-09-05 19:28:29');
INSERT INTO `users` VALUES (3, 1, 'Williams Fredy Yucra Saravia', 'i2512153@continental.edu.pe', NULL, '$2y$12$F7qAf5FBiDg6I0YzKXk..eUUOn6q4GB4Si.7hpV5gu1zsOPT5M1ee', NULL, 1, '2025-09-05 19:30:22', '2025-09-05 19:30:22');
INSERT INTO `users` VALUES (4, 1, 'Pier Jonathan Escobedo Pumacayo', 'i2512155@continental.edu.pe', NULL, '$2y$12$gEgUHz5zDeKn5d85TPTl4e8w8DhZjdrh4uz0.Wd7I2qgfopCz73gO', NULL, 1, '2025-09-05 19:31:49', '2025-09-05 19:31:49');
INSERT INTO `users` VALUES (5, 1, 'José Hugo Saravia Chávez', 'i2512054@continental.edu.pe', NULL, '$2y$12$x7sLw99T9LiO614BSKZiH.boh5AmnXPkJhulWIwvqNM4hP.BhDg3i', NULL, 1, '2025-09-05 19:32:51', '2025-09-05 19:32:51');

SET FOREIGN_KEY_CHECKS = 1;
