/*
 Navicat Premium Data Transfer

 Source Server         : local 7
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3307
 Source Schema         : project_bank_botol

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 19/05/2022 21:32:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for akses
-- ----------------------------
DROP TABLE IF EXISTS `akses`;
CREATE TABLE `akses`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `modul` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tambah` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N',
  `lihat` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N',
  `edit` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N',
  `hapus` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'N',
  `update` datetime(0) NOT NULL,
  `user` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of akses
-- ----------------------------
INSERT INTO `akses` VALUES (10, '2213819', 'masterHadiah', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:09:47', '1813818');
INSERT INTO `akses` VALUES (9, '2213819', 'pesanan', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:09:47', '1813818');
INSERT INTO `akses` VALUES (8, '2213819', 'transaksi', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:09:47', '1813818');
INSERT INTO `akses` VALUES (7, '2213819', 'masterTransaksi', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:09:47', '1813818');
INSERT INTO `akses` VALUES (11, '2213819', 'hadiah', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:09:47', '1813818');
INSERT INTO `akses` VALUES (12, '2213819', 'tukarPoin', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:09:47', '1813818');
INSERT INTO `akses` VALUES (13, '2213820', 'masterKurir', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:11:11', '1813818');
INSERT INTO `akses` VALUES (14, '2213820', 'kurir', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:11:11', '1813818');
INSERT INTO `akses` VALUES (15, '2213820', 'transaksi', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:11:11', '1813818');
INSERT INTO `akses` VALUES (16, '2213821', 'masterTransaksi', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:29:27', '1813818');
INSERT INTO `akses` VALUES (17, '2213821', 'transaksi', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:29:27', '1813818');
INSERT INTO `akses` VALUES (18, '2213821', 'pesanan', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:29:27', '1813818');
INSERT INTO `akses` VALUES (19, '2213821', 'masterHadiah', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:29:27', '1813818');
INSERT INTO `akses` VALUES (20, '2213821', 'hadiah', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:29:27', '1813818');
INSERT INTO `akses` VALUES (21, '2213821', 'tukarPoin', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:29:27', '1813818');
INSERT INTO `akses` VALUES (22, '2213822', 'masterKurir', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:30:01', '1813818');
INSERT INTO `akses` VALUES (23, '2213822', 'kurir', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:30:01', '1813818');
INSERT INTO `akses` VALUES (24, '2213822', 'transaksi', 'Y', 'Y', 'Y', 'Y', '2022-05-19 15:30:01', '1813818');

-- ----------------------------
-- Table structure for hadiah
-- ----------------------------
DROP TABLE IF EXISTS `hadiah`;
CREATE TABLE `hadiah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hadiah` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `poin` decimal(2, 0) NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `user` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `update` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hadiah
-- ----------------------------
INSERT INTO `hadiah` VALUES (2, 'kaos', 5, '', '1813818', '2022-05-19 06:49:50');
INSERT INTO `hadiah` VALUES (3, 'baju', 50, '', '1813818', '2022-05-19 06:46:03');

-- ----------------------------
-- Table structure for kurir
-- ----------------------------
DROP TABLE IF EXISTS `kurir`;
CREATE TABLE `kurir`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` enum('Done','Proses') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Proses',
  `id_kurir` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT '',
  `id_transaksi` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `update` datetime(0) NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `tanggal_jemput` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kurir
-- ----------------------------
INSERT INTO `kurir` VALUES (6, 'Done', '2213820', 'T1905220001', '2022-05-19 15:22:59', '2213820', '2022-05-19');
INSERT INTO `kurir` VALUES (7, 'Done', '2213822', 'T1905220002', '2022-05-19 15:34:54', '2213822', '2022-05-19');

-- ----------------------------
-- Table structure for mainmenu
-- ----------------------------
DROP TABLE IF EXISTS `mainmenu`;
CREATE TABLE `mainmenu`  (
  `id_main` int(5) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `submenu` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `link` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `urutan` int(11) NOT NULL,
  `modul` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `update` datetime(0) NOT NULL,
  `user` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_main`, `urutan`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mainmenu
-- ----------------------------
INSERT INTO `mainmenu` VALUES (1, 'Master', 'Y', 'master', 'Y', 1, 'master', '2021-12-15 09:37:20', '1813818');
INSERT INTO `mainmenu` VALUES (2, 'Transaksi', 'Y', 'transaksi', 'Y', 2, 'masterTransaksi', '2021-12-15 09:37:24', '1813818');
INSERT INTO `mainmenu` VALUES (3, 'Kurir', 'Y', 'kurir', 'Y', 3, 'masterKurir', '2021-12-21 08:48:29', '1813818');
INSERT INTO `mainmenu` VALUES (4, 'Hadiah', 'Y', 'hadiah', 'Y', 4, 'masterHadiah', '0000-00-00 00:00:00', '');

-- ----------------------------
-- Table structure for sp
-- ----------------------------
DROP TABLE IF EXISTS `sp`;
CREATE TABLE `sp`  (
  `no` varchar(11) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tanggal_jemput` date NOT NULL,
  `status` enum('Delete','Done','Proses','New') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'New',
  `berat` decimal(15, 2) NOT NULL,
  `poin` int(15) NOT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `kurir` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `user` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `update` datetime(0) NOT NULL,
  `insert` datetime(0) NOT NULL,
  `user_insert` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sp
-- ----------------------------
INSERT INTO `sp` VALUES ('T1905220001', '2022-05-19', 'Done', 2.00, 80, 'tes transaksi', '2213820', '2213820', '2022-05-19 15:22:59', '2022-05-19 15:12:47', '2213819');
INSERT INTO `sp` VALUES ('T1905220002', '2022-05-19', 'Done', 2.00, 80, 'tes', '2213822', '2213822', '2022-05-19 15:34:54', '2022-05-19 15:32:10', '2213821');

-- ----------------------------
-- Table structure for submenu
-- ----------------------------
DROP TABLE IF EXISTS `submenu`;
CREATE TABLE `submenu`  (
  `id_sub` int(5) NOT NULL AUTO_INCREMENT,
  `nama_sub` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `link` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_main` int(5) NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Y',
  `urutan` int(11) NOT NULL,
  `modul` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `update` datetime(0) NOT NULL,
  `user` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_sub`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 283 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of submenu
-- ----------------------------
INSERT INTO `submenu` VALUES (276, 'Tambah Transaksi', 'transaksi/showAdd', 2, 'Y', 1, 'pesanan', '0000-00-00 00:00:00', '');
INSERT INTO `submenu` VALUES (275, 'submenu', 'submenu', 1, 'Y', 4, 'submenu', '2021-12-15 08:03:11', '1813818');
INSERT INTO `submenu` VALUES (279, 'Kurir', 'kurir', 3, 'Y', 1, 'kurir', '0000-00-00 00:00:00', '');
INSERT INTO `submenu` VALUES (273, 'user', 'user', 1, 'Y', 2, 'user', '2021-12-15 09:38:11', '1813818');
INSERT INTO `submenu` VALUES (274, 'menu', 'menu', 1, 'Y', 3, 'menu', '2021-12-15 08:04:01', '1813818');
INSERT INTO `submenu` VALUES (277, 'Transaksi', 'transaksi', 2, 'Y', 2, 'transaksi', '0000-00-00 00:00:00', '');
INSERT INTO `submenu` VALUES (280, 'Hadiah', 'hadiah', 4, 'Y', 1, 'hadiah', '0000-00-00 00:00:00', '');
INSERT INTO `submenu` VALUES (281, 'Pilih Kurir', 'pilihKurir', 3, 'Y', 2, 'pilihKurir', '0000-00-00 00:00:00', '');
INSERT INTO `submenu` VALUES (282, 'Tukar Poin', 'tukarPoin', 4, 'Y', 2, 'tukarPoin', '0000-00-00 00:00:00', '');

-- ----------------------------
-- Table structure for tukar_poin
-- ----------------------------
DROP TABLE IF EXISTS `tukar_poin`;
CREATE TABLE `tukar_poin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hadiah` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `user` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `update` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tukar_poin
-- ----------------------------
INSERT INTO `tukar_poin` VALUES (1, '3', '2213819', '2213819', '2022-05-19 15:24:54');
INSERT INTO `tukar_poin` VALUES (2, '3', '2213821', '2213821', '2022-05-19 15:35:59');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `superuser` enum('N','Y') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `user` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `poin` decimal(15, 2) NOT NULL,
  `update` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1813818', 'Y', 'all', '$2y$10$xZEIaOeb4hwqlIGa34f.4OiRaeFbdy.VP6oCUSKuAQXFXPHKBN/42', 'Y', '', 'jatijar', '2213820', 240.50, '2022-05-19 11:36:15');
INSERT INTO `user` VALUES ('2213819', 'Y', 'user 1', '$2y$10$CAcMcKKH/VlAtzqPWoVVaOk6X66k1tuLTs92vNOCRD5NITNyfwB8G', 'N', 'user', 'alamat kurir 1', '2213819', 30.00, '2022-05-19 15:24:54');
INSERT INTO `user` VALUES ('2213820', 'Y', 'kurir 1', '$2y$10$lvCp624eFNQi5b.0hd8JmOP/gdxdMrfXqKxgfKH4iA3iFQqJRfWcK', 'N', 'kurir', 'alamat kurir 1', '1813818', 0.00, '2022-05-19 15:11:11');
INSERT INTO `user` VALUES ('2213821', 'Y', 'user 2', '$2y$10$mRnYTIggbUWUKlsr3TNEfepn1Q4Iuw9ukPKSZbuErtgvpgk2gGDB2', 'N', 'user', 'alamat user 2', '2213821', 30.00, '2022-05-19 15:35:59');
INSERT INTO `user` VALUES ('2213822', 'Y', 'kurir 2', '$2y$10$.8VXHWj1485BFbTmQmer2OecI4P9E488WzgT7k11q2ZnqEircLa9O', 'N', 'kurir', 'alamat kurir 2', '1813818', 0.00, '2022-05-19 15:30:01');

SET FOREIGN_KEY_CHECKS = 1;
