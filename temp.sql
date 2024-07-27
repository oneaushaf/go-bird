-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 27, 2024 at 08:05 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `temp`
--

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `report` json DEFAULT NULL,
  `test_result` json DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `description`, `report`, `test_result`, `is_used`) VALUES
(1, '2024-04-20 20:33:40.684', '2024-04-20 20:33:40.684', NULL, '240331-0001', 'Model Dasar, 10 spesies pertama', '{\"epochs\": 25, \"best_loss\": 1.0203847885131836, \"best_accuracy\": 0.9417045617103575, \"best_val_loss\": 0.2221188200950623, \"best_val_accuracy\": 1}', '{\"result\": {\"class\": {\"002-Curik Bali\": {\"recall\": 1, \"precission\": 1}, \"003-Ekek Geling\": {\"recall\": 1, \"precission\": 1}, \"007-Merak Hijau\": {\"recall\": 1, \"precission\": 1}, \"004-Gelatik Jawa\": {\"recall\": 1, \"precission\": 1}, \"005-Kakatua Raja\": {\"recall\": 1, \"precission\": 1}, \"008-Paok Bidadari\": {\"recall\": 1, \"precission\": 1}, \"010-Sikatan besar\": {\"recall\": 0.75, \"precission\": 1}, \"006-Luntur harimau\": {\"recall\": 1, \"precission\": 1}, \"001-Bangau leher-hitam\": {\"recall\": 1, \"precission\": 1}, \"009-Raja udang kalung-biru Jawa\": {\"recall\": 1, \"precission\": 0.8}}, \"recall\": 0.7545454545454546, \"precision\": 0.9890909090909092}}', 0),
(8, '2024-04-21 07:38:51.192', '2024-04-21 16:43:33.484', NULL, '240421-0475', 'Penambahan Spesies Cendrawasih Kecil', '{\"epochs\": 54, \"best_loss\": 0.99793142080307, \"best_accuracy\": 0.9635416865348816, \"best_val_loss\": 0.9752694964408876, \"best_val_accuracy\": 0.9375}', '{\"result\": {\"class\": {\"002-Curik Bali\": {\"recall\": 1.0, \"precision\": 1.0}, \"011-Baza hitam\": {\"recall\": 1.0, \"precision\": 1.0}, \"003-Ekek Geling\": {\"recall\": 1.0, \"precision\": 1.0}, \"007-Merak Hijau\": {\"recall\": 1.0, \"precision\": 1.0}, \"004-Gelatik Jawa\": {\"recall\": 1.0, \"precision\": 1.0}, \"005-Kakatua Raja\": {\"recall\": 1.0, \"precision\": 1.0}, \"008-Paok Bidadari\": {\"recall\": 1.0, \"precision\": 1.0}, \"010-Sikatan besar\": {\"recall\": 0.75, \"precision\": 1.0}, \"006-Luntur harimau\": {\"recall\": 1.0, \"precision\": 1.0}, \"012-Cendrawasih kecil\": {\"recall\": 1.0, \"precision\": 0.8}, \"001-Bangau leher-hitam\": {\"recall\": 1.0, \"precision\": 1.0}, \"009-Raja udang kalung-biru Jawa\": {\"recall\": 1.0, \"precision\": 1.0}}, \"recall\": 0.9791666666666666, \"precision\": 0.9833333333333334}}', 0),
(14, '2024-04-21 16:25:01.917', '2024-07-12 20:27:20.606', NULL, '240421-1003', 'Penambahan 100 image utk 10 spesies', '{\"epochs\": 62, \"best_loss\": 0.7540988922119141, \"best_accuracy\": 0.9719827771186828, \"best_val_loss\": 0.7250564098358154, \"training_time\": 1, \"best_val_accuracy\": 0.982758641242981}', '{\"result\": {\"class\": {\"002-Curik Bali\": {\"recall\": 1.0, \"precision\": 1.0}, \"011-Baza hitam\": {\"recall\": 0.75, \"precision\": 1.0}, \"003-Ekek Geling\": {\"recall\": 1.0, \"precision\": 1.0}, \"007-Merak Hijau\": {\"recall\": 1.0, \"precision\": 1.0}, \"004-Gelatik Jawa\": {\"recall\": 1.0, \"precision\": 1.0}, \"005-Kakatua Raja\": {\"recall\": 1.0, \"precision\": 1.0}, \"008-Paok Bidadari\": {\"recall\": 1.0, \"precision\": 1.0}, \"010-Sikatan besar\": {\"recall\": 0.8, \"precision\": 1.0}, \"006-Luntur harimau\": {\"recall\": 1.0, \"precision\": 1.0}, \"012-Cendrawasih kecil\": {\"recall\": 1.0, \"precision\": 1.0}, \"001-Bangau leher-hitam\": {\"recall\": 1.0, \"precision\": 1.0}, \"009-Raja udang kalung-biru Jawa\": {\"recall\": 1.0, \"precision\": 0.7142857142857143}}, \"recall\": 0.9655172413793104, \"precision\": 0.9753694581280788}}', 0),
(15, '2024-07-12 20:23:06.650', '2024-07-13 17:59:51.153', NULL, '240712-1227', 'Penambahan 6 Species baru', '{\"data\": {\"best_loss\": 0.14854787290096283, \"best_accuracy\": 0.9541445970535278, \"best_val_loss\": 0.511766254901886, \"training_time\": 1, \"best_val_accuracy\": 0.8918918967247009}, \"test\": {\"class\": {\"002-Curik Bali\": {\"recall\": 0.8, \"precision\": 1}, \"011-Baza hitam\": {\"recall\": 1, \"precision\": 1}, \"003-Ekek Geling\": {\"recall\": 1, \"precision\": 1}, \"007-Merak Hijau\": {\"recall\": 1, \"precision\": 1}, \"004-Gelatik Jawa\": {\"recall\": 1, \"precision\": 1}, \"005-Kakatua Raja\": {\"recall\": 1, \"precision\": 1}, \"014-Mentok Rimba\": {\"recall\": 1, \"precision\": 0.8}, \"015-Cerecet Jawa\": {\"recall\": 1, \"precision\": 0.8}, \"008-Paok Bidadari\": {\"recall\": 1, \"precision\": 1}, \"010-Sikatan Besar\": {\"recall\": 1, \"precision\": 1}, \"006-Luntur Harimau\": {\"recall\": 1, \"precision\": 1}, \"012-Cendrawasih Kecil\": {\"recall\": 1, \"precision\": 1}, \"001-Bangau Leher Hitam\": {\"recall\": 1, \"precision\": 1}, \"013-Sempidan Kalimantan\": {\"recall\": 0.75, \"precision\": 1}, \"016-Julang Jambul Hitam\": {\"recall\": 1, \"precision\": 1}, \"009-Raja Udang Kalung Biru Jawa\": {\"recall\": 1, \"precision\": 1}}, \"recall\": 0.9733333333333334, \"precision\": 0.9786666666666668}, \"success\": true}', '{\"class\": {\"002-Curik Bali\": {\"recall\": 0.8, \"precision\": 1}, \"011-Baza hitam\": {\"recall\": 1, \"precision\": 1}, \"003-Ekek Geling\": {\"recall\": 1, \"precision\": 1}, \"007-Merak Hijau\": {\"recall\": 1, \"precision\": 1}, \"004-Gelatik Jawa\": {\"recall\": 1, \"precision\": 1}, \"005-Kakatua Raja\": {\"recall\": 1, \"precision\": 1}, \"014-Mentok Rimba\": {\"recall\": 1, \"precision\": 0.8}, \"015-Cerecet Jawa\": {\"recall\": 1, \"precision\": 0.8}, \"008-Paok Bidadari\": {\"recall\": 1, \"precision\": 1}, \"010-Sikatan Besar\": {\"recall\": 1, \"precision\": 1}, \"006-Luntur Harimau\": {\"recall\": 1, \"precision\": 1}, \"012-Cendrawasih Kecil\": {\"recall\": 1, \"precision\": 1}, \"001-Bangau Leher Hitam\": {\"recall\": 1, \"precision\": 1}, \"013-Sempidan Kalimantan\": {\"recall\": 0.75, \"precision\": 1}, \"016-Julang Jambul Hitam\": {\"recall\": 1, \"precision\": 1}, \"009-Raja Udang Kalung Biru Jawa\": {\"recall\": 1, \"precision\": 1}}, \"recall\": 0.9733333333333334, \"precision\": 0.9786666666666668}', 0),
(27, '2024-07-13 17:58:50.576', '2024-07-19 15:29:30.315', NULL, '240713-1079', '', '{\"data\": {\"best_loss\": 0.10721399635076524, \"best_accuracy\": 0.9683042764663696, \"best_val_loss\": 0.24784092605113983, \"best_val_accuracy\": 0.9146341681480408}, \"test\": {\"class\": {\"002-Curik Bali\": {\"recall\": 1, \"precision\": 1}, \"011-Baza hitam\": {\"recall\": 1, \"precision\": 1}, \"003-Ekek Geling\": {\"recall\": 0.8, \"precision\": 1}, \"007-Merak Hijau\": {\"recall\": 1, \"precision\": 1}, \"017-Elang Tikus\": {\"recall\": 0.75, \"precision\": 1}, \"004-Gelatik Jawa\": {\"recall\": 1, \"precision\": 0.8333333333333334}, \"005-Kakatua Raja\": {\"recall\": 1, \"precision\": 1}, \"014-Mentok Rimba\": {\"recall\": 1, \"precision\": 1}, \"015-Cerecet Jawa\": {\"recall\": 1, \"precision\": 1}, \"008-Paok Bidadari\": {\"recall\": 1, \"precision\": 0.8333333333333334}, \"010-Sikatan Besar\": {\"recall\": 1, \"precision\": 1}, \"006-Luntur Harimau\": {\"recall\": 1, \"precision\": 1}, \"018-Cendrawasih Elok\": {\"recall\": 0.75, \"precision\": 1}, \"012-Cendrawasih Kecil\": {\"recall\": 0.75, \"precision\": 1}, \"001-Bangau Leher Hitam\": {\"recall\": 1, \"precision\": 1}, \"013-Sempidan Kalimantan\": {\"recall\": 1, \"precision\": 1}, \"016-Julang Jambul Hitam\": {\"recall\": 1, \"precision\": 0.6666666666666666}, \"009-Raja Udang Kalung Biru Jawa\": {\"recall\": 1, \"precision\": 1}}, \"recall\": 0.9518072289156626, \"precision\": 0.963855421686747}, \"success\": true}', '{\"class\": {\"002-Curik Bali\": {\"recall\": 1, \"precision\": 1}, \"011-Baza hitam\": {\"recall\": 1, \"precision\": 1}, \"003-Ekek Geling\": {\"recall\": 0.8, \"precision\": 1}, \"007-Merak Hijau\": {\"recall\": 1, \"precision\": 1}, \"017-Elang Tikus\": {\"recall\": 0.75, \"precision\": 1}, \"004-Gelatik Jawa\": {\"recall\": 1, \"precision\": 0.8333333333333334}, \"005-Kakatua Raja\": {\"recall\": 1, \"precision\": 1}, \"014-Mentok Rimba\": {\"recall\": 1, \"precision\": 1}, \"015-Cerecet Jawa\": {\"recall\": 1, \"precision\": 1}, \"008-Paok Bidadari\": {\"recall\": 1, \"precision\": 0.8333333333333334}, \"010-Sikatan Besar\": {\"recall\": 1, \"precision\": 1}, \"006-Luntur Harimau\": {\"recall\": 1, \"precision\": 1}, \"018-Cendrawasih Elok\": {\"recall\": 0.75, \"precision\": 1}, \"012-Cendrawasih Kecil\": {\"recall\": 0.75, \"precision\": 1}, \"001-Bangau Leher Hitam\": {\"recall\": 1, \"precision\": 1}, \"013-Sempidan Kalimantan\": {\"recall\": 1, \"precision\": 1}, \"016-Julang Jambul Hitam\": {\"recall\": 1, \"precision\": 0.6666666666666666}, \"009-Raja Udang Kalung Biru Jawa\": {\"recall\": 1, \"precision\": 1}}, \"recall\": 0.9518072289156626, \"precision\": 0.963855421686747}', 0),
(34, '2024-07-14 18:57:44.024', '2024-07-27 14:25:10.454', NULL, '240727-0865', '', '{\"data\": {\"best_loss\": 0.08683906495571136, \"best_accuracy\": 0.971222996711731, \"best_val_loss\": 0.16059303283691406, \"training_time\": 1, \"best_val_accuracy\": 0.9555555582046508}, \"test\": {\"class\": {\"002-Curik Bali\": {\"recall\": 1, \"precision\": 1}, \"011-Baza hitam\": {\"recall\": 1, \"precision\": 1}, \"003-Ekek Geling\": {\"recall\": 0.8, \"precision\": 1}, \"007-Merak Hijau\": {\"recall\": 1, \"precision\": 1}, \"017-Elang Tikus\": {\"recall\": 1, \"precision\": 1}, \"004-Gelatik Jawa\": {\"recall\": 1, \"precision\": 1}, \"005-Kakatua Raja\": {\"recall\": 1, \"precision\": 1}, \"014-Mentok Rimba\": {\"recall\": 1, \"precision\": 1}, \"015-Cerecet Jawa\": {\"recall\": 0.5, \"precision\": 1}, \"008-Paok Bidadari\": {\"recall\": 1, \"precision\": 1}, \"010-Sikatan Besar\": {\"recall\": 1, \"precision\": 0.7142857142857143}, \"006-Luntur Harimau\": {\"recall\": 1, \"precision\": 1}, \"019-Kedidir belang\": {\"recall\": 1, \"precision\": 1}, \"020-Mambruk ubiaat\": {\"recall\": 0.75, \"precision\": 0.75}, \"018-Cendrawasih Elok\": {\"recall\": 0.75, \"precision\": 0.75}, \"012-Cendrawasih Kecil\": {\"recall\": 0.75, \"precision\": 1}, \"001-Bangau Leher Hitam\": {\"recall\": 1, \"precision\": 1}, \"013-Sempidan Kalimantan\": {\"recall\": 1, \"precision\": 1}, \"016-Julang Jambul Hitam\": {\"recall\": 1, \"precision\": 1}, \"009-Raja Udang Kalung Biru Jawa\": {\"recall\": 1, \"precision\": 0.7142857142857143}}, \"recall\": 0.934065934065934, \"precision\": 0.9466248037676608}, \"success\": true}', '{\"class\": {\"002-Curik Bali\": {\"recall\": 1, \"precision\": 1}, \"011-Baza hitam\": {\"recall\": 1, \"precision\": 1}, \"003-Ekek Geling\": {\"recall\": 0.8, \"precision\": 1}, \"007-Merak Hijau\": {\"recall\": 1, \"precision\": 1}, \"017-Elang Tikus\": {\"recall\": 1, \"precision\": 1}, \"004-Gelatik Jawa\": {\"recall\": 1, \"precision\": 1}, \"005-Kakatua Raja\": {\"recall\": 1, \"precision\": 1}, \"014-Mentok Rimba\": {\"recall\": 1, \"precision\": 1}, \"015-Cerecet Jawa\": {\"recall\": 0.5, \"precision\": 1}, \"008-Paok Bidadari\": {\"recall\": 1, \"precision\": 1}, \"010-Sikatan Besar\": {\"recall\": 1, \"precision\": 0.7142857142857143}, \"006-Luntur Harimau\": {\"recall\": 1, \"precision\": 1}, \"019-Kedidir belang\": {\"recall\": 1, \"precision\": 1}, \"020-Mambruk ubiaat\": {\"recall\": 0.75, \"precision\": 0.75}, \"018-Cendrawasih Elok\": {\"recall\": 0.75, \"precision\": 0.75}, \"012-Cendrawasih Kecil\": {\"recall\": 0.75, \"precision\": 1}, \"001-Bangau Leher Hitam\": {\"recall\": 1, \"precision\": 1}, \"013-Sempidan Kalimantan\": {\"recall\": 1, \"precision\": 1}, \"016-Julang Jambul Hitam\": {\"recall\": 1, \"precision\": 1}, \"009-Raja Udang Kalung Biru Jawa\": {\"recall\": 1, \"precision\": 0.7142857142857143}}, \"recall\": 0.934065934065934, \"precision\": 0.9466248037676608}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `predcitions`
--

CREATE TABLE `predcitions` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `model_id` bigint UNSIGNED DEFAULT NULL,
  `result` longtext,
  `confidence` double DEFAULT NULL,
  `image` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `predcitions`
--

INSERT INTO `predcitions` (`id`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `model_id`, `result`, `confidence`, `image`) VALUES
(5, '2024-07-18 15:52:49.954', '2024-07-18 15:52:49.954', NULL, 3, 27, '005-Kakatua Raja', 100, '../dataset/prediction/005-Kakatua Raja/images (2).jpg'),
(6, '2024-07-18 15:53:56.715', '2024-07-18 15:53:56.715', NULL, 3, 27, '005-Kakatua Raja', 100, '../dataset/prediction/005-Kakatua Raja/images (2).jpg'),
(7, '2024-07-18 15:54:13.126', '2024-07-18 15:54:13.126', NULL, 3, 27, '005-Kakatua Raja', 100, '../dataset/prediction/005-Kakatua Raja/images (2).jpg'),
(8, '2024-07-18 15:57:31.299', '2024-07-18 15:57:31.299', NULL, 3, 27, '017-Elang Tikus', 57.79805779457092, '../dataset/prediction/017-Elang Tikus/13.webp'),
(25, '2024-07-19 15:40:49.971', '2024-07-19 15:40:49.971', NULL, 2, 34, '019-Kedidir belang', 99.66548681259155, '../dataset/prediction/019-Kedidir belang/3d0d5a3d44e5d3079e3638b816efc5dc.jpeg'),
(26, '2024-07-19 15:41:37.576', '2024-07-19 15:41:37.576', NULL, 3, 34, '010-Sikatan Besar', 96.39864563941956, '../dataset/prediction/010-Sikatan Besar/Asian_Brown_Flycatcher_-_Muscicapa_dauurica.jpg'),
(27, '2024-07-19 16:11:55.761', '2024-07-19 16:11:55.761', NULL, 3, 34, '009-Raja Udang Kalung Biru Jawa', 85.56289076805115, '../dataset/prediction/009-Raja Udang Kalung Biru Jawa/burung-paokjpg-20231208025815.jpg'),
(28, '2024-07-19 17:11:32.990', '2024-07-19 17:11:32.990', NULL, 3, 34, '005-Kakatua Raja', 100, '../dataset/prediction/005-Kakatua Raja/images (2).jpg'),
(29, '2024-07-19 17:17:13.142', '2024-07-19 17:17:13.142', NULL, 3, 34, '020-Mambruk ubiaat', 68.34750175476074, '../dataset/prediction/020-Mambruk ubiaat/Sikatan_Burik.jpg'),
(30, '2024-07-19 17:17:45.434', '2024-07-19 17:17:45.434', NULL, 3, 34, '010-Sikatan Besar', 99.99990463256836, '../dataset/prediction/010-Sikatan Besar/sikatan-besar-jantan.jpg'),
(31, '2024-07-21 15:30:17.793', '2024-07-21 15:30:17.793', NULL, 3, 34, '011-Baza hitam', 99.96887445449829, '../dataset/prediction/011-Baza hitam/istockphoto-851976460-612x612.jpg'),
(32, '2024-07-21 15:44:29.151', '2024-07-21 15:44:29.151', NULL, 3, 34, '008-Paok Bidadari', 98.53944778442383, '../dataset/prediction/008-Paok Bidadari/320.jpg'),
(33, '2024-07-21 15:47:49.709', '2024-07-21 15:47:49.709', NULL, 3, 34, '005-Kakatua Raja', 99.97960925102234, '../dataset/prediction/005-Kakatua Raja/IMG_20240616_145450.jpg'),
(34, '2024-07-21 15:58:33.803', '2024-07-21 15:58:33.803', NULL, 3, 34, '011-Baza hitam', 99.96887445449829, '../dataset/prediction/011-Baza hitam/istockphoto-851976460-612x612.jpg'),
(35, '2024-07-22 09:49:18.638', '2024-07-22 09:49:18.638', NULL, 2, 34, '001-Bangau Leher Hitam', 99.99995231628418, '../dataset/prediction/001-Bangau Leher Hitam/3b25db78b5ed733e6261ba9c94f3faad.jpg'),
(36, '2024-07-22 10:14:10.811', '2024-07-22 10:14:10.811', NULL, 2, 34, '001-Bangau Leher Hitam', 99.99995231628418, '../dataset/prediction/001-Bangau Leher Hitam/3b25db78b5ed733e6261ba9c94f3faad.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `training` bigint UNSIGNED DEFAULT NULL,
  `untrained` bigint UNSIGNED DEFAULT NULL,
  `testing` bigint UNSIGNED DEFAULT NULL,
  `validation` bigint UNSIGNED DEFAULT NULL,
  `scientific_name` longtext,
  `category` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `description`, `training`, `untrained`, `testing`, `validation`, `scientific_name`, `category`) VALUES
(1, '2024-07-09 13:23:36.736', '2024-07-09 13:23:36.736', NULL, 'Bangau Leher Hitam', 'Bangau besar dengan paruh hitam besar, kepala dan leher hitam. Betina dengan mata kuning. Saat terbang perhatikan perut putih dan sebagian besar sayap putih dengan panel tengah hitam, kaki panjang merah/merah muda menjuntai ke belakang. Remaja memiliki sayap atas yang lebih gelap. Biasanya ditemukan sendiri atau berpasangan di sekitar lahan basah tropis dan kolam.', 40, 0, 5, 5, '', 'Near Threatened (NT)'),
(2, '2024-07-09 16:44:12.919', '2024-07-09 16:44:12.919', NULL, 'Curik Bali', 'Burung jalak putih yang mencolok, dengan ekor dan sayap berujung hitam, kulit botak berwarna biru di wajah, serta bulu-bulu hias panjang menggantung dari tengkuk. Remaja memiliki jambul yang lebih pendek dibandingkan dewasa, dengan sapuan kuning di tubuh. Ditemukan dalam kelompok kecil di hutan terbuka, sering menghabiskan waktu di pepohonan dan mencari makan di tanah. Menghindari hutan lebat. Terbatas di Bali sisi barat laut, dengan beberapa populasi hasil introduksi di kawasan pegunungan di Ubud dan Pulau Nusa Penida. Dibedakan dari jalak putih berdasarkan warna hitam di sayap yang terbatas di ujung, serta memiliki kulit wajah botak biru. Nyanyian berupa campuran nada-nada ocehan parau dan siulan.', 40, 0, 5, 5, '', 'Critically Endangered (CR)'),
(3, '2024-07-10 17:06:14.169', '2024-07-10 17:06:14.169', NULL, 'Ekek Geling', 'Sangat jarang dan hampir punah di alam. Burung endemik Jawa dengan tubuh hijau menyala, topeng “bandit” hitam serta paruh merah lipstik, mudah dikenali dan sulit dilupakan bagi pengamat burung yang cukup beruntung untuk menemukannya di alam. Ditemukan hanya di hutan kaki-bukit, sering bergabung dengan kelompok campuran. Terkadang ribut, bahkan ketika bersembunyi di strata tengah hutan yang lebat, menghasilkan ocehan menjerit dan suara ‘cair’ yang riang “wee’da’da!”.', 40, 0, 5, 5, '', 'Critically Endangered (CR)'),
(4, '2024-07-10 17:25:02.832', '2024-07-10 17:25:02.832', NULL, 'Gelatik Jawa', 'Burung pipit kecil dan gempal dengan paruh merah muda yang sangat tebal. Kepala hitam dan pola pipi putih sangat khas. Remaja memiliki pola warna yang mirip, namun lebih kelabu. Bersifat sosial; mencari makan dalam kelompok dan tidur berdampingan. Mencari makan di sawah, ladang rumput, padang, serta kawasan urban dan sub-urban (di lokasi terintroduksi). Panggilan berupa satu atau lebih kicauan merdu. Sebaran asli di Pulau Jawa dan Bali di Indonesia, saat ini cukup langka.', 40, 0, 5, 5, '', 'Endangered (EN)'),
(5, '2024-07-11 09:26:05.520', '2024-07-11 09:26:05.520', NULL, 'Kakatua Raja', 'Kakatua hitam, khas, berparuh sangat besar. Menghuni hutan hujan dan area berpepohonan di Papua dan Semenanjung Cape York sisi utara. Bercak besar kulit merah di pipi dan jambul hitam panjang menjadi penciri utama. Menggunakan tongkat untuk mematuk di pohon selama menandai wilayah. Saat terbang, perhatikan ekor yang seluruhnya hitam (Red-tailed Black-Cockatoo memiliki palang ekor merah cerah). Suara berupa siulan tajam atau cicitan, tanpa ratapan yang sedih panjang seperti Red-tailed Black-Cockatoo.', 40, 0, 5, 5, '', 'Near Threatened (NT)'),
(6, '2024-07-11 09:28:14.091', '2024-07-11 09:28:14.091', NULL, 'Luntur Harimau', 'Satu-satunya luntur di wilayah sebaran dengan tubuh bawah oranye-kuning, baik jantan maupun betina. Jantan berpunggung cokelat kayu manis dan kepala kuning-hijau. Betina punggung cokelat kusam dan tubuh bawah sedikit kuning. Menghuni hutan dataran rendah dan kaki bukit, di mana ia sering dijumpai pada tajuk bawah dan tengah. Mengeluarkan rangkaian teriakan tiga hingga empat nada.', 40, 0, 5, 5, '', 'Least Concerned (LC)'),
(7, '2024-07-11 09:30:18.123', '2024-07-11 09:30:18.123', NULL, 'Merak Hijau', 'Burung tanah berukuran besar, penghuni hutan tropis terbuka, sering di dekat air. Cantik dan unik, mudah dikenali di wilayah sebarannya. Kedua jenis kelamin memiliki leher hijau berkilau, sayap gelap, serta jambul hijau gelap yang selalu tegak vertikal. Jantan memiliki bulu-bulu sangat panjang dan besar khas burung merak, yang dibuka mengipas saat ritual kawin. Betina dengan ekor pendek tanpa bulu hias, namun tetap memiliki warna hijau mengilap seperti pada bulu hias jantan.', 40, 0, 5, 5, 'Pavo muticus', 'Endangered (EN)'),
(8, '2024-07-11 09:34:51.194', '2024-07-11 09:34:51.194', NULL, 'Paok Bidadari', 'Penghuni tanah yang indah dari hutan yang teduh. Dewasa tubuh atas sebagian besar hijau, tubuh bawah cokelat krem, dengan bercak merah terang di ekor bawah dan tengah perut serta kepala yang beraneka warna, dengan topeng hitam, alis cokelat, tenggorokan putih, dan mahkota hitam-kemerahan. Paok hujan yang serupa memiliki sayap biru cerah. Saat terbang, perhatikan sayap hijau cerah dengan bahu biru berkilap dan bercak putih. Suara nyanyian berupa siulan jernih, terdiri empat suku kata berpasangan, \'pee-yu, pee-yu.\'', 40, 0, 5, 5, 'Pitta nympha', 'Vulnerable (VU)'),
(9, '2024-07-11 09:36:02.328', '2024-07-11 09:36:02.328', NULL, 'Raja Udang Kalung Biru Jawa', 'Burung raja-udang kecil yang sangat jarang, penghuni aliran air dan sungai berhutan hingga kawasan pegunungan bawah. Sangat terancam dan hanya dapat ditemukan di beberapa lokasi yang tersisa. Kedua jenis kelamin memiliki punggung dan ekor biru-perak, tenggorokan putih serta pita dada hijau-biru yang lebar. Jantan memiliki perut putih dan paruh seluruhnya hitam, betina memiliki perut seluruhnya oranye serta pangkal paruh bawah merah. Dibedakan dari raja-udang erasia berdasarkan warna yang lebih kusam dan gelap, serta tidak adanya bercak oranye di belakang mata.', 40, 0, 5, 5, 'Alcedo euryzona', 'Critically Endangered (CR)'),
(10, '2024-07-11 09:53:03.895', '2024-07-11 09:53:03.895', NULL, 'Sikatan Besar', 'Burung sikatan kecil dengan panel ekor putih cerah. Jantan seluruh tubuh biru dengan perut putih kotor. Betina cokelat dengan perut pucat dan pola putih rapi di dada atas. Kedua jenis kelamin memiliki ekor bawah putih dan dua coretan putih di ekor atas, paling terlihat saat terbang. Di Sumatera dan Kalimantan, ekor dan perut putih membedakannya dari berbagai jenis sikatan berwarna biru dan putih lain, seperti sikatan biru-putih, sikatan tungging-merah sikatan aceh yang sangat langka; sementara pola putih di dada atas pada betina unik di antara berbagai jenis sikatan lain.', 40, 0, 5, 5, 'Cyornis concretus', 'Least Concerned (LC)'),
(11, '2024-07-11 10:52:13.905', '2024-07-11 10:52:13.905', NULL, 'Baza hitam', 'Burung pemangsa berukuran sedang yang sangat khas. Seluruhnya hitam dengan pita dada putih tebal dan garis-garis putih berkarat di perut. Jambul ramping dapat ditegakkan secara vertikal atau miring ketika bertengger, tetapi cenderung disembunyikan saat terbang. Jika saat terbang terlihat dari atas, perhatikan pola “kotak-kotak” di sayap atas. Saat berbiak memilih hutan kaki bukit dan dataran rendah, tetapi dapat ditemukan di habitat yang lebih terbuka di daerah perlintasan dan wilayah tujuan migrasi. Bersifat cukup sosial di luar musim kawin, sering terbang dalam kawanan besar dan bertengger mengelompok. Mengeluarkan suara mirip peluit yang melengking dan bergema, sering kali saat saat terbang.', 32, 0, 4, 4, 'Aviceda leuphotes', 'Least Concerned (LC)'),
(12, '2024-07-11 10:53:13.302', '2024-07-11 10:53:13.302', NULL, 'Cendrawasih Kecil', 'Burung berukuran besar penghuni hutan dan tepian hutan di dataran rendah dan kaki bukit. Kedua jenis kelamin memiliki punggung kuning dan mata kuning. Jantan memiliki dada cokelat kemerahan serta bulu hias putih dan kuning yang ditegakkan di atas punggung saat tarian kawin, sambil mengepakkan sayap cokelat kemerahan. Jantan dibedakan dari cendrawasih besar berdasarkan punggung kuningnya dan dari cendrawasih kaisar (Papua Nugini) berdasarkan dada cokelatnya. Betina dibedakan dari spesies lain berdasarkan tubuh bawah putih dan tudung hitam.', 32, 0, 4, 4, 'Paradisaea minor', 'Least Concerned (LC)'),
(13, '2024-07-11 13:55:00.232', '2024-07-12 20:27:20.615', NULL, 'Sempidan Kalimantan', 'Burung sempidan berukuran sedang, bersifat tidak umum. Jantan terlihat sangat khas; dengan ekor besar mengipas berwarna putih-salju menonjol di belakang tubuh membulat berwarna kehitaman. Betina seluruh tubuh cokelat kemerahan dan terlihat lebih normal; dengan ekor lebih pendek dan sempit. Kedua jenis kelamin memiliki kulit wajah biru-langit, namun pada jantan kulit ini meluas menjadi pial yang ditegakkan ketika pertunjukan kawin (display). Hadir di kawasan berbukit di hutan kaki bukit dan pegunungan; terkadang bersifat nomadik, mencari pohon berbuah.', 32, 0, 4, 4, 'Lophura bulweri', 'Vulnerable (VU)'),
(14, '2024-07-11 14:20:08.920', '2024-07-12 20:27:20.617', NULL, 'Mentok Rimba', 'Tubuh umumnya berwarna gelap atau kehitaman, dengan sisi bawah sayap (ketika terbang) berwarna putih. Kepala dan leher putih, kadang-kadang dengan bintik-bintik kehitaman.[3] Paruh dan kaki kekuningan atau jingga kusam. Tidak seperti mentok peliharaan, tak ada lingkaran merah di sekeliling mata.', 32, 0, 4, 4, 'Asarcornis scutulata', 'Endangered (EN)'),
(15, '2024-07-11 15:13:31.179', '2024-07-12 20:27:20.618', NULL, 'Cerecet Jawa', 'Burung ini merupakan burung terkecil di Jawa. Tanpa ciri khas, dengan ekor panjang. Tubuh bagian atas coklat, tubuh bagian bawah putih buram. Aktif bergerak dalam kelompok kecil. Mengunjungi pohon berdaun jarum dan jarang. Sering turun ke tanah mencari makan.', 32, 0, 4, 4, 'Psaltria exilis', 'Least Concerned (LC)'),
(16, '2024-07-11 15:15:21.390', '2024-07-12 20:27:20.619', NULL, 'Julang Jambul Hitam', 'Rangkong berukuran sedang-besar berwarna cerah. Kedua jenis kelamin hitam dengan kulit wajah tanpa bulu, “kantong” tenggorokan menggelembung, ekor kekuningan, dan paruh berjumbai. Laki-laki memiliki tenggorokan kekuningan pucat dan paruh kuning-merah dan bertanduk. Betina berparuh kuning dan tanduk polos serta kulit biru tanpa bulu di sekitar mata dan \'kantong\' tenggorokan yang gemuk. Mencari makan berpasangan dan dalam kawanan kecil di hutan hujan dataran rendah. Mengeluarkan suara gonggongan tajam mendengus yang aneh.', 32, 0, 4, 4, 'Rhabdotorrhinus corrugatus', 'Endangered (EN)'),
(17, '2024-07-13 09:49:54.184', '2024-07-13 17:59:51.159', NULL, 'Elang Tikus', 'Elang kecil dan khas serupa alap-alap. Bagian bawah terang, bagian atas biru-abu-abu dengan bahu hitam mencolok yang terbentuk dari penutup sayap hitam. Remaja memiliki punggung bersisik dan dada kecokelatan. Ditemukan di savana terbuka, semi-gurun, dan lahan pertanian dengan pepohonan yang menyebar; sering terlihat pada tenggeran terbuka. Gaya terbang bervariasi, melayang seperti alap-alap atau meluncur seperti elang-rawa dengan kepakan dalam dan sayap yang terangkat.', 32, 0, 4, 4, 'Elanus caeruleus', 'Least Concerned (LC)'),
(18, '2024-07-13 09:51:18.175', '2024-07-13 17:59:51.161', NULL, 'Cendrawasih Elok', 'Isap-madu besar yang khas pada hutan dan semak belukar pegunungan tinggi. Berbentuk bulat dan hampir seluruhnya hitam, berpial jingga lebar di kepala, dan bulu sayap jingga yang sangat jelas terlihat saat terbang. Spesies yang teritorial dan pemakan buah yang sangat kentara dan mudah dilihat. Melipotes pipi-kuning memiliki pola warna yang mirip, namun jauh lebih kecil. Suara panggilan berupa \'cheep!\' dengan nada yang cukup tinggi, seperti berasal dari burung yang lebih kecil. Selain itu, serangkaian nada \'chip\' yang lebih cepat.', 32, 0, 4, 4, 'Macgregoria pulchra', 'Vulnerable (VU)'),
(19, '2024-07-14 16:07:09.338', '2024-07-19 15:29:30.335', NULL, 'Kedidir belang', 'Burung pantai bertubuh besar dengan paruh tebal kemerahan, bulu hitam dan putih, serta kaki dan tungkai tebal merah muda pucat. Biasanya di pesisir, tetapi kadang-kadang ditemukan pada padang rumput yang lebih basah dekat pantai.', 32, 0, 4, 4, 'Haematopus longirostris', 'Least Concerned'),
(20, '2024-07-14 16:08:59.047', '2024-07-27 14:25:10.458', NULL, 'Mambruk ubiaat', 'Burung merpati berukuran besar, penghuni hutan dataran rendah. Jambul tegak seperti mahkota, bulu tubuh keseluruhan kelabu-biru, dengan bercak bahu putih mencolok dikelilingi warna merah marun yang meluas hingga ke punggung. Tidak seperti burung mambruk lain, tidak memiliki warna merah-marun di dada. Mencari makan di tanah dan terbang ke pepohonan, lalu bertengger diam saat terganggu. Suara kepakan sayap nyaring ketika lepas landas. Tidak ada jenis burung mambruk lain di wilayah sebarannya. Panggilan berupa nada sedih dalam “oooh ooohwoooh!” atau seri nada-nada dalam melambat “wup”.', 32, 0, 4, 4, 'Goura cristata', 'Vulnerable (VU)');

-- --------------------------------------------------------

--
-- Table structure for table `testing_images`
--

CREATE TABLE `testing_images` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `species_id` bigint UNSIGNED DEFAULT NULL,
  `file_name` longtext,
  `meta` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `testing_images`
--

INSERT INTO `testing_images` (`id`, `created_at`, `updated_at`, `deleted_at`, `species_id`, `file_name`, `meta`) VALUES
(1, '2024-07-09 13:58:36.248', '2024-07-09 13:58:36.248', NULL, 1, '79ebae1932163028258f0d816719856a.jpg', 'initial'),
(2, '2024-07-09 13:58:36.252', '2024-07-09 13:58:36.252', NULL, 1, 'c6abbf8d772d33240c608444a5b25229.jpg', 'initial'),
(3, '2024-07-09 13:58:36.255', '2024-07-09 13:58:36.255', NULL, 1, 'b97f819853a56ccf66d6164ef0b0d878.jpg', 'initial'),
(4, '2024-07-09 13:58:36.257', '2024-07-09 13:58:36.257', NULL, 1, '6994f93de405dacf534a03764a2b6a45.jpg', 'initial'),
(5, '2024-07-09 13:58:36.259', '2024-07-09 13:58:36.259', NULL, 1, '4a1b4a03e4417ef4413fec86424be4c2.jpeg', 'initial'),
(6, '2024-07-10 17:00:04.355', '2024-07-10 17:00:04.355', NULL, 2, '3439542da1923d7c98db1544f130f0ee.jpg', 'initial'),
(7, '2024-07-10 17:00:04.365', '2024-07-10 17:00:04.365', NULL, 2, 'ec1f3a35e3cf0a8f6f38206df0ee45c6.jpg', 'initial'),
(8, '2024-07-10 17:00:04.368', '2024-07-10 17:00:04.368', NULL, 2, '8e34a48d7a04941cd5aaf075ec3c79f5.jpg', 'initial'),
(9, '2024-07-10 17:00:04.370', '2024-07-10 17:00:04.370', NULL, 2, '8179feba6587e2af7e19211c9da489ba.jpg', 'initial'),
(10, '2024-07-10 17:00:04.372', '2024-07-10 17:00:04.372', NULL, 2, '98a22175f017646c36baa0616858592a.jpeg', 'initial'),
(18, '2024-07-10 17:50:49.180', '2024-07-10 17:50:49.180', NULL, 3, '78662961153b0c6f0f1503670f01921f.jpg', 'initial'),
(19, '2024-07-10 17:50:49.184', '2024-07-10 17:50:49.184', NULL, 3, '9b685c8ba31686694560beab3a8d270b.jpg', 'initial'),
(20, '2024-07-10 17:50:49.188', '2024-07-10 17:50:49.188', NULL, 3, 'bdfc289f81d9d2a18a659732c55d5b6b.jpg', 'initial'),
(21, '2024-07-10 17:50:49.191', '2024-07-10 17:50:49.191', NULL, 3, '9844af8180e672265069679a7f0255dc.jpg', 'initial'),
(22, '2024-07-10 17:50:49.194', '2024-07-10 17:50:49.194', NULL, 3, 'c201ff13c346d3e90e985af1ad880b2d.jpg', 'initial'),
(37, '2024-07-11 11:23:29.970', '2024-07-11 11:23:29.970', NULL, 5, '2474dd58b609866db982377263423e60.jpg', 'initial'),
(38, '2024-07-11 11:23:29.973', '2024-07-11 11:23:29.973', NULL, 5, '202dfd0e9e8dfdc076d1174ab88eb064.jpg', 'initial'),
(39, '2024-07-11 11:23:29.974', '2024-07-11 11:23:29.974', NULL, 5, '069204a2c45f46470bd1da8112c61695.jpg', 'initial'),
(40, '2024-07-11 11:23:29.976', '2024-07-11 11:23:29.976', NULL, 5, 'caeda32ec680cb1733950465c76b27ae.jpg', 'initial'),
(41, '2024-07-11 11:23:29.977', '2024-07-11 11:23:29.977', NULL, 5, 'eb9160bf0c2328a33e5a0300fe4df1b9.jpeg', 'initial'),
(42, '2024-07-11 11:23:58.013', '2024-07-11 11:23:58.013', NULL, 6, '168717c1c6e7bebdf0fd60c08d89d345.jpg', 'initial'),
(43, '2024-07-11 11:23:58.016', '2024-07-11 11:23:58.016', NULL, 6, 'c530325c6db17e6789fd4c954ecfa54a.jpg', 'initial'),
(44, '2024-07-11 11:23:58.018', '2024-07-11 11:23:58.018', NULL, 6, '0fcbe1270825a1d94f9a71246c4acef5.jpg', 'initial'),
(45, '2024-07-11 11:23:58.019', '2024-07-11 11:23:58.019', NULL, 6, '55a0f0bd7895b36c31ba620a60015e48.jpg', 'initial'),
(46, '2024-07-11 11:23:58.020', '2024-07-11 11:23:58.020', NULL, 6, '891768a0de7c17ccfe053abe2fdc5ba8.jpeg', 'initial'),
(47, '2024-07-11 11:25:04.618', '2024-07-11 11:25:04.618', NULL, 7, 'f4992310894f8d98cfb47dc4ff620589.jpg', 'initial'),
(48, '2024-07-11 11:25:04.620', '2024-07-11 11:25:04.620', NULL, 7, '0ea3c2e38d6cb60b45ab36ad0a097454.jpg', 'initial'),
(49, '2024-07-11 11:25:04.621', '2024-07-11 11:25:04.621', NULL, 7, '423cc991ebb105546f13008a651f25fa.jpg', 'initial'),
(50, '2024-07-11 11:25:04.623', '2024-07-11 11:25:04.623', NULL, 7, '713c9602ef5e426940edc001125ff1b2.jpg', 'initial'),
(51, '2024-07-11 11:25:04.624', '2024-07-11 11:25:04.624', NULL, 7, '168e4e2c157c8b7a873e4b4d4a7cdb8c.jpeg', 'initial'),
(52, '2024-07-11 11:25:18.303', '2024-07-11 11:25:18.303', NULL, 8, '44e5125b7904c731c506f934d829266b.jpg', 'initial'),
(53, '2024-07-11 11:25:18.305', '2024-07-11 11:25:18.305', NULL, 8, '0479e35719f5f619279622d9dd026264.jpg', 'initial'),
(54, '2024-07-11 11:25:18.307', '2024-07-11 11:25:18.307', NULL, 8, '783b19f05e7c3289817f9cc2b0132369.jpg', 'initial'),
(55, '2024-07-11 11:25:18.308', '2024-07-11 11:25:18.308', NULL, 8, 'b93cd5fc2ebadaf881e8d9a8761c9943.jpg', 'initial'),
(56, '2024-07-11 11:25:18.310', '2024-07-11 11:25:18.310', NULL, 8, 'a7446bf53d223f955869647eace0b044.jpg', 'initial'),
(57, '2024-07-11 11:25:32.526', '2024-07-11 11:25:32.526', NULL, 9, '536b2c1e5a9366e1fd5b0b02f1020e8f.jpg', 'initial'),
(58, '2024-07-11 11:25:32.529', '2024-07-11 11:25:32.529', NULL, 9, 'aa84d290587c653d7fd4ff0eeadd1584.jpg', 'initial'),
(59, '2024-07-11 11:25:32.531', '2024-07-11 11:25:32.531', NULL, 9, 'b96e16eca034c3ffa6070a2627c19938.jpg', 'initial'),
(60, '2024-07-11 11:25:32.534', '2024-07-11 11:25:32.534', NULL, 9, 'cc6d0405c215a175df98d40624859fe4.jpg', 'initial'),
(61, '2024-07-11 11:25:32.537', '2024-07-11 11:25:32.537', NULL, 9, '554ca1ba2707b6711fa0f8c4e6636dfe.jpeg', 'initial'),
(62, '2024-07-11 11:25:54.048', '2024-07-11 11:25:54.048', NULL, 10, '5ea16d9175bf73cc2dd6a721f975dc93.jpg', 'initial'),
(63, '2024-07-11 11:25:54.053', '2024-07-11 11:25:54.053', NULL, 10, '0105d15abbbf5e2fb363d673b72681ac.jpg', 'initial'),
(64, '2024-07-11 11:25:54.055', '2024-07-11 11:25:54.055', NULL, 10, '1bc8061d1894ddeafa43027502becec3.jpg', 'initial'),
(65, '2024-07-11 11:25:54.057', '2024-07-11 11:25:54.057', NULL, 10, 'c870e96897f944d3576975ce95c2fba1.jpg', 'initial'),
(66, '2024-07-11 11:25:54.059', '2024-07-11 11:25:54.059', NULL, 10, 'f3f8dcec98b60e5ac6314d779b26e4ec.jpg', 'initial'),
(67, '2024-07-11 11:27:35.872', '2024-07-11 11:27:35.872', NULL, 11, '222c9a4e32ee41eccb8cb4331825c972.jpeg', 'initial'),
(68, '2024-07-11 11:27:35.874', '2024-07-11 11:27:35.874', NULL, 11, '4e86ede4de46f88f0919fc23a4c6e33b.jpeg', 'initial'),
(69, '2024-07-11 11:27:35.877', '2024-07-11 11:27:35.877', NULL, 11, 'f29616e46f7c3a7d225b1e4dd49c6560.jpeg', 'initial'),
(70, '2024-07-11 11:27:35.879', '2024-07-11 11:27:35.879', NULL, 11, '6b31c8bf3edde6426cdf4f7487de4f00.jpeg', 'initial'),
(71, '2024-07-11 11:27:51.431', '2024-07-11 11:27:51.431', NULL, 12, '976ffba56a1ebb8d691f5bb6ce3d4400.jpeg', 'initial'),
(72, '2024-07-11 11:27:51.433', '2024-07-11 11:27:51.433', NULL, 12, '5abd296960ac6a574392e6a13d83a136.jpeg', 'initial'),
(73, '2024-07-11 11:27:51.436', '2024-07-11 11:27:51.436', NULL, 12, 'e4f859ce06cfc7436179dfe6acde6367.jpeg', 'initial'),
(74, '2024-07-11 11:27:51.438', '2024-07-11 11:27:51.438', NULL, 12, 'd009cb72d480b452e9a947ccb282053a.jpeg', 'initial'),
(75, '2024-07-11 13:57:21.962', '2024-07-11 13:57:21.962', NULL, 13, '37e9faf8bd0b4f603bb49a3844a458bc.jpeg', 'initial'),
(76, '2024-07-11 13:57:21.966', '2024-07-11 13:57:21.966', NULL, 13, '4679f72610b89e2871cc4476c340b892.jpg', 'initial'),
(77, '2024-07-11 13:57:21.970', '2024-07-11 13:57:21.970', NULL, 13, '5b2bef0fb7cc92ce2d202b76d9815092.jpg', 'initial'),
(78, '2024-07-11 13:57:21.973', '2024-07-11 13:57:21.973', NULL, 13, 'b3f56040134ede60c1d3a1f148c2fd7b.jpg', 'initial'),
(79, '2024-07-11 14:21:09.418', '2024-07-11 14:21:09.418', NULL, 14, '3540ecd08950b1c1e8dcdc1615c237b7.jpg', 'initial'),
(80, '2024-07-11 14:21:09.421', '2024-07-11 14:21:09.421', NULL, 14, '3613260d416dbbf44085692eaf10725d.jpg', 'initial'),
(81, '2024-07-11 14:21:09.429', '2024-07-11 14:21:09.429', NULL, 14, '076c26e4020eb343f24ddc23f67c28a0.jpg', 'initial'),
(82, '2024-07-11 14:21:09.433', '2024-07-11 14:21:09.433', NULL, 14, '8a942309dc2a538aad445d66355d961a.jpg', 'initial'),
(83, '2024-07-11 15:13:58.832', '2024-07-11 15:13:58.832', NULL, 15, '9163d313abec3f141c04564082041897.jpg', 'initial'),
(84, '2024-07-11 15:13:58.838', '2024-07-11 15:13:58.838', NULL, 15, '8df60eb6fde6e7985995fd0ee9976d69.jpg', 'initial'),
(85, '2024-07-11 15:13:58.842', '2024-07-11 15:13:58.842', NULL, 15, '97c0c7ae1ea9e4d053463184d984f3a4.jpg', 'initial'),
(86, '2024-07-11 15:13:58.846', '2024-07-11 15:13:58.846', NULL, 15, '42d58f19641af9e359570fa93236062b.jpg', 'initial'),
(87, '2024-07-11 15:16:05.183', '2024-07-11 15:16:05.183', NULL, 16, 'd55251a1e6bcb1c4ca714af1da3af70a.jpg', 'initial'),
(88, '2024-07-11 15:16:05.188', '2024-07-11 15:16:05.188', NULL, 16, 'd73490a72324e897753b15185d4b2835.jpg', 'initial'),
(89, '2024-07-11 15:16:05.193', '2024-07-11 15:16:05.193', NULL, 16, '25ff39bf9a08f96fd855c14572bb805a.jpg', 'initial'),
(90, '2024-07-11 15:16:05.197', '2024-07-11 15:16:05.197', NULL, 16, 'b598f17a92081cc967624da19f03b9ad.jpg', 'initial'),
(91, '2024-07-12 17:52:08.063', '2024-07-12 17:52:08.063', NULL, 4, '8f255ae898a6515ce82ffc53749f90aa.jpg', 'initial'),
(92, '2024-07-12 17:52:08.087', '2024-07-12 17:52:08.087', NULL, 4, 'e087132414292f33f731eb0e12b1a2da.jpg', 'initial'),
(93, '2024-07-12 17:52:08.089', '2024-07-12 17:52:08.089', NULL, 4, '5efe6f759b856b2334202e7e16d33261.jpg', 'initial'),
(94, '2024-07-12 17:52:08.091', '2024-07-12 17:52:08.091', NULL, 4, 'bb06240a5768cf7f7b232a42e98f1fcc.jpg', 'initial'),
(95, '2024-07-12 17:52:08.110', '2024-07-12 17:52:08.110', NULL, 4, 'd082fe9980c0fbc43990e0aec2a3215e.jpeg', 'initial'),
(101, '2024-07-13 09:59:40.954', '2024-07-13 09:59:40.954', NULL, 17, '22bdf8f9839a321f7ecc881154bee4bc.jpeg', 'initial'),
(102, '2024-07-13 09:59:40.960', '2024-07-13 09:59:40.960', NULL, 17, '02d96f8fac9b88af2d6d7b2c0a4b6e65.jpeg', 'initial'),
(103, '2024-07-13 09:59:40.963', '2024-07-13 09:59:40.963', NULL, 17, 'a448f25021c909aa2430d8dcbf7479dc.jpeg', 'initial'),
(104, '2024-07-13 09:59:40.967', '2024-07-13 09:59:40.967', NULL, 17, '404773756ac390343125e6a917b9ff7d.jpeg', 'initial'),
(105, '2024-07-13 10:00:13.588', '2024-07-13 10:00:13.588', NULL, 18, '0247d5ab62cff1565e96357f0bc4eb73.jpeg', 'initial'),
(106, '2024-07-13 10:00:13.594', '2024-07-13 10:00:13.594', NULL, 18, '8687344c6eb87876bec7230cb053dd79.jpeg\n', 'initial'),
(107, '2024-07-13 10:00:13.599', '2024-07-13 10:00:13.599', NULL, 18, '1794930c558a05796c5dac81908dc600.jpeg\n', 'initial'),
(108, '2024-07-13 10:00:13.604', '2024-07-13 10:00:13.604', NULL, 18, '4b781235b3adffc4b65ef9f22b0f41ec.jpeg', 'initial'),
(129, '2024-07-14 16:23:17.398', '2024-07-14 16:23:17.398', NULL, 19, 'ab04c8d020086e1bd5b9dc68d6f66f1d.jpeg', 'initial'),
(130, '2024-07-14 16:23:17.402', '2024-07-14 16:23:17.402', NULL, 19, '1b8e1413f5ee1a554a7710925bfe1388.jpeg', 'initial'),
(131, '2024-07-14 16:23:17.405', '2024-07-14 16:23:17.405', NULL, 19, '2c982c041ec9fd6256c732b193138172.jpeg', 'initial'),
(132, '2024-07-14 16:23:17.408', '2024-07-14 16:23:17.408', NULL, 19, '3d0d5a3d44e5d3079e3638b816efc5dc.jpeg', 'initial'),
(133, '2024-07-14 16:32:50.742', '2024-07-14 16:32:50.742', NULL, 20, '4a9aad00ddbdd0c40804224cbd5ab97a.jpeg', 'initial'),
(134, '2024-07-14 16:32:50.745', '2024-07-14 16:32:50.745', NULL, 20, '1dc743e7858bf167306e3b34d2de3d50.jpeg', 'initial'),
(135, '2024-07-14 16:32:50.748', '2024-07-14 16:32:50.748', NULL, 20, '969a279068d556f38c9afb71e9391a99.jpeg', 'initial'),
(136, '2024-07-14 16:32:50.751', '2024-07-14 16:32:50.751', NULL, 20, '9bb4bbf0504bbce218ad905edfd88d71.jpeg', 'initial'),
(137, '2024-07-27 15:01:25.470', '2024-07-27 15:01:25.470', NULL, 5, '29437714ea2f73743e893abede483d3c.jpeg', 'initial');

-- --------------------------------------------------------

--
-- Table structure for table `training_images`
--

CREATE TABLE `training_images` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `species_id` bigint UNSIGNED DEFAULT NULL,
  `file_name` longtext,
  `meta` longtext,
  `is_trained` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `training_images`
--

INSERT INTO `training_images` (`id`, `created_at`, `updated_at`, `deleted_at`, `species_id`, `file_name`, `meta`, `is_trained`) VALUES
(1, '2024-07-09 14:02:23.651', '2024-07-27 14:25:10.463', NULL, 1, '065d5aa64259146bdd05009aeb85eff0.jpg', 'initial', 1),
(2, '2024-07-09 14:02:23.654', '2024-07-27 14:25:10.463', NULL, 1, '6a5f4d2ca0e4a0b4099fa0656067e6b1.jpg', 'initial', 1),
(3, '2024-07-09 14:02:23.657', '2024-07-27 14:25:10.463', NULL, 1, 'b6c9f9c5d29721d94a5035a59c60e3b9.jpg', 'initial', 1),
(4, '2024-07-09 14:02:23.659', '2024-07-27 14:25:10.463', NULL, 1, '055904655bb8de3fbc6a8a85211d1856.jpg', 'initial', 1),
(5, '2024-07-09 14:02:23.661', '2024-07-27 14:25:10.463', NULL, 1, '9778622dc9f1baf6c9d8871efb4bdc77.jpg', 'initial', 1),
(6, '2024-07-09 14:02:23.663', '2024-07-27 14:25:10.463', NULL, 1, 'd4bbe0c8f522bebb1f95cd35ecf0fd45.jpg', 'initial', 1),
(7, '2024-07-09 14:02:23.664', '2024-07-27 14:25:10.463', NULL, 1, '027f58dbcaa1c4d9f1ddbf9d9fecf566.jpg', 'initial', 1),
(8, '2024-07-09 14:02:23.666', '2024-07-27 14:25:10.463', NULL, 1, '5f97138b782b7cce576494c0d5636ba4.jpg', 'initial', 1),
(9, '2024-07-09 14:02:23.667', '2024-07-27 14:25:10.463', NULL, 1, 'ea03c216b7f0742bd1e9bc89bb4b7c84.jpg', 'initial', 1),
(10, '2024-07-09 14:02:23.668', '2024-07-27 14:25:10.463', NULL, 1, 'a9f72f56ac7e9359d62731c160b9f2ba.jpg', 'initial', 1),
(11, '2024-07-09 14:02:23.670', '2024-07-27 14:25:10.463', NULL, 1, '853ee0d2ecf9dcd3b5faff874f321f1a.jpg', 'initial', 1),
(12, '2024-07-09 14:02:23.672', '2024-07-27 14:25:10.463', NULL, 1, '284eef284ca66a647b3e6e04a43c2b6f.jpg', 'initial', 1),
(13, '2024-07-09 14:02:23.674', '2024-07-27 14:25:10.463', NULL, 1, '5e1a799a075a57b90533112c09e31714.jpg', 'initial', 1),
(14, '2024-07-09 14:02:23.677', '2024-07-27 14:25:10.463', NULL, 1, '85493d8721e135e1bb9ae5e65cc4e203.jpg', 'initial', 1),
(15, '2024-07-09 14:02:23.679', '2024-07-27 14:25:10.463', NULL, 1, '5813211368241a464e757244e0cd9663.jpg', 'initial', 1),
(16, '2024-07-09 14:02:23.680', '2024-07-27 14:25:10.463', NULL, 1, '66df796993c317ebbb5c585ab8a4d026.jpg', 'initial', 1),
(17, '2024-07-09 14:02:23.682', '2024-07-27 14:25:10.463', NULL, 1, 'baf49c32ade0291927b481da7628fa46.jpg', 'initial', 1),
(18, '2024-07-09 14:02:23.684', '2024-07-27 14:25:10.463', NULL, 1, '2fe7888c21a28d3a0531f993ff5e9aff.jpg', 'initial', 1),
(19, '2024-07-09 14:02:23.685', '2024-07-27 14:25:10.463', NULL, 1, 'e1eff026f6c5baf710ab08c9553f697c.jpg', 'initial', 1),
(20, '2024-07-09 14:02:23.686', '2024-07-27 14:25:10.463', NULL, 1, '5e5bfa2c04c56933cef1cfd392de5632.jpg', 'initial', 1),
(21, '2024-07-09 14:02:23.688', '2024-07-27 14:25:10.463', NULL, 1, '3139d7ffc48d8148d10f8fb2f90602c3.jpg', 'initial', 1),
(22, '2024-07-09 14:02:23.691', '2024-07-27 14:25:10.463', NULL, 1, '04c4b3d4d00d3013b9e20db558d40036.jpg', 'initial', 1),
(23, '2024-07-09 14:02:23.693', '2024-07-27 14:25:10.463', NULL, 1, 'df36bed9b18a2b9959069baa5e6c4728.jpg', 'initial', 1),
(24, '2024-07-09 14:02:23.695', '2024-07-27 14:25:10.463', NULL, 1, '3adf6245a9e902a793d70a16a38a0502.jpg', 'initial', 1),
(25, '2024-07-09 14:02:23.697', '2024-07-27 14:25:10.463', NULL, 1, '14fdb58ff5af4781fa831bfe6fba399f.jpg', 'initial', 1),
(26, '2024-07-09 14:02:23.698', '2024-07-27 14:25:10.463', NULL, 1, '8c61bec16060be13429f66f2bbbf152e.jpg', 'initial', 1),
(27, '2024-07-09 14:02:23.699', '2024-07-27 14:25:10.463', NULL, 1, '392273ad5355a3c7068b243943811fde.jpg', 'initial', 1),
(28, '2024-07-09 14:02:23.701', '2024-07-27 14:25:10.463', NULL, 1, 'f91e26bb45ea2a27eb6fed23f2452144.jpg', 'initial', 1),
(29, '2024-07-09 14:02:23.703', '2024-07-27 14:25:10.463', NULL, 1, '4bec2e55afbeaaa446460cff02606521.jpg', 'initial', 1),
(30, '2024-07-09 14:02:23.704', '2024-07-27 14:25:10.463', NULL, 1, 'c06f52d071fb888bd6a9a5d97ecdefde.jpg', 'initial', 1),
(31, '2024-07-09 14:02:23.706', '2024-07-27 14:25:10.463', NULL, 1, '28f0f66d683471d00ba2b803dfa823c3.jpg', 'initial', 1),
(32, '2024-07-09 14:02:23.709', '2024-07-27 14:25:10.463', NULL, 1, '7e895af3e877f009c373b628cd2b5460.jpg', 'initial', 1),
(33, '2024-07-10 17:00:50.983', '2024-07-27 14:25:10.463', NULL, 2, '9ed8420a408c420c924949a57a883660.jpg', 'initial', 1),
(34, '2024-07-10 17:00:50.988', '2024-07-27 14:25:10.463', NULL, 2, '99015ea6f4d613342b21032aac74c4e7.jpg', 'initial', 1),
(35, '2024-07-10 17:00:50.991', '2024-07-27 14:25:10.463', NULL, 2, '24a0a023ac35524ae1d425327d3e4e53.jpg', 'initial', 1),
(36, '2024-07-10 17:00:50.993', '2024-07-27 14:25:10.463', NULL, 2, '93a8978a8861c334485302f0742d29c8.jpg', 'initial', 1),
(37, '2024-07-10 17:00:50.995', '2024-07-27 14:25:10.463', NULL, 2, '99e0997c1b85902912be2690e365b4b2.jpg', 'initial', 1),
(38, '2024-07-10 17:00:50.998', '2024-07-27 14:25:10.463', NULL, 2, '7878ae7f1b6ccf59ba2f5bbf480b210a.jpg', 'initial', 1),
(39, '2024-07-10 17:00:51.000', '2024-07-27 14:25:10.463', NULL, 2, '64e4d2025c20683e84dd89142224f8a6.jpg', 'initial', 1),
(40, '2024-07-10 17:00:51.002', '2024-07-27 14:25:10.463', NULL, 2, '9b27dacea1c0193d1b993758f8de3923.jpg', 'initial', 1),
(41, '2024-07-10 17:00:51.003', '2024-07-27 14:25:10.463', NULL, 2, '948f1e6597857be100db8274d31bb6f3.jpg', 'initial', 1),
(42, '2024-07-10 17:00:51.006', '2024-07-27 14:25:10.463', NULL, 2, 'a35d0c2397e68a48cbb6806d14be260a.jpg', 'initial', 1),
(43, '2024-07-10 17:00:51.008', '2024-07-27 14:25:10.463', NULL, 2, '635fca73611b697cfb7407bcfd98d6ee.jpg', 'initial', 1),
(44, '2024-07-10 17:00:51.010', '2024-07-27 14:25:10.463', NULL, 2, '85699c0118ddbbd394219bc2c7d7f811.jpg', 'initial', 1),
(45, '2024-07-10 17:00:51.013', '2024-07-27 14:25:10.463', NULL, 2, 'e55ff43aece9e45545e8264a276d9c89.jpg', 'initial', 1),
(46, '2024-07-10 17:00:51.015', '2024-07-27 14:25:10.463', NULL, 2, 'da8ea2c6205d72a03c5be371d2a7cb57.jpg', 'initial', 1),
(47, '2024-07-10 17:00:51.016', '2024-07-27 14:25:10.463', NULL, 2, '0fadc49598f66f73fd1de5699f88f98f.jpg', 'initial', 1),
(48, '2024-07-10 17:00:51.018', '2024-07-27 14:25:10.463', NULL, 2, '6556b00f63411553708ae57bad982d79.jpg', 'initial', 1),
(49, '2024-07-10 17:00:51.020', '2024-07-27 14:25:10.463', NULL, 2, '0db496a190911a4549cc1910bd4ebc85.jpg', 'initial', 1),
(50, '2024-07-10 17:00:51.022', '2024-07-27 14:25:10.463', NULL, 2, 'a51882a8c0048f4817663629d380d0a7.jpg', 'initial', 1),
(51, '2024-07-10 17:00:51.025', '2024-07-27 14:25:10.463', NULL, 2, '59c180fcbb79c32242e3d19abf410f3a.jpg', 'initial', 1),
(52, '2024-07-10 17:00:51.027', '2024-07-27 14:25:10.463', NULL, 2, 'b3e9b2a799ccac3b15f6501f43d30e45.jpg', 'initial', 1),
(53, '2024-07-10 17:00:51.029', '2024-07-27 14:25:10.463', NULL, 2, 'e29a759202362af14fd5fd7266f95997.jpg', 'initial', 1),
(54, '2024-07-10 17:00:51.030', '2024-07-27 14:25:10.463', NULL, 2, '29943f39c2c53d28bf958f207b61108c.jpg', 'initial', 1),
(55, '2024-07-10 17:00:51.031', '2024-07-27 14:25:10.463', NULL, 2, 'd18c445a42be87c1ab2ff4e1431d3d76.jpg', 'initial', 1),
(56, '2024-07-10 17:00:51.033', '2024-07-27 14:25:10.463', NULL, 2, 'be9815a9e75ea8bb5c1240a0fe1d0dfd.jpg', 'initial', 1),
(57, '2024-07-10 17:00:51.035', '2024-07-27 14:25:10.463', NULL, 2, '5cd426136c63ba108d025e992cb3b13e.jpg', 'initial', 1),
(58, '2024-07-10 17:00:51.036', '2024-07-27 14:25:10.463', NULL, 2, 'f9e03175db645ad462c9369d911cd61d.jpg', 'initial', 1),
(59, '2024-07-10 17:00:51.038', '2024-07-27 14:25:10.463', NULL, 2, '7b3de9466923c5dd37ad3a8a530e9180.jpg', 'initial', 1),
(60, '2024-07-10 17:00:51.042', '2024-07-27 14:25:10.463', NULL, 2, '028500b1d01c5b57a030c9ee952f7742.jpg', 'initial', 1),
(61, '2024-07-10 17:00:51.044', '2024-07-27 14:25:10.463', NULL, 2, 'fa175f330573ef73e709db97ec965205.jpg', 'initial', 1),
(62, '2024-07-10 17:00:51.045', '2024-07-27 14:25:10.463', NULL, 2, 'c7f8b4cdb7b4cb61296ed324691f69ff.jpg', 'initial', 1),
(63, '2024-07-10 17:00:51.047', '2024-07-27 14:25:10.463', NULL, 2, 'a4f5563ff655d8d9c8736ce27cd7d7d8.jpg', 'initial', 1),
(64, '2024-07-10 17:00:51.049', '2024-07-27 14:25:10.463', NULL, 2, 'db1ce3f7db57bbaca55bbcc0da1d57de.jpg', 'initial', 1),
(68, '2024-07-10 17:17:42.858', '2024-07-27 14:25:10.463', NULL, 3, '72df5535aecf06163d2a5851793cf07a.jpg', 'initial', 1),
(69, '2024-07-10 17:17:42.862', '2024-07-27 14:25:10.463', NULL, 3, '7b34c23b58f1aaa76e840f5453e1e226.jpg', 'initial', 1),
(70, '2024-07-10 17:17:42.863', '2024-07-27 14:25:10.463', NULL, 3, 'fedf8d500ae2ab5c5b746b0ae185c705.jpg', 'initial', 1),
(71, '2024-07-10 17:17:42.865', '2024-07-27 14:25:10.463', NULL, 3, 'acdc45baf464dd019093577e26621281.jpg', 'initial', 1),
(72, '2024-07-10 17:17:42.867', '2024-07-27 14:25:10.463', NULL, 3, 'e3793474d3f1eaa642c59f9f7ecc040c.jpg', 'initial', 1),
(73, '2024-07-10 17:17:42.868', '2024-07-27 14:25:10.463', NULL, 3, 'd8aa4de0f7e4254e4c2bf11cd265ac06.jpg', 'initial', 1),
(74, '2024-07-10 17:17:42.870', '2024-07-27 14:25:10.463', NULL, 3, '4de547d6edbbb4ce70cd4ef5c2d03b24.jpg', 'initial', 1),
(75, '2024-07-10 17:17:42.872', '2024-07-27 14:25:10.463', NULL, 3, '36d0ed931309a046c19a150c5535345c.jpg', 'initial', 1),
(76, '2024-07-10 17:17:42.874', '2024-07-27 14:25:10.463', NULL, 3, 'dc5b06ab6c1a73c2162bc1d5e43e989e.jpg', 'initial', 1),
(77, '2024-07-10 17:17:42.876', '2024-07-27 14:25:10.463', NULL, 3, '551a5422ee2b78864be205ce35c3fedb.jpg', 'initial', 1),
(78, '2024-07-10 17:17:42.877', '2024-07-27 14:25:10.463', NULL, 3, 'b0d2835f3e1fda52a82914fa0f2a5d58.jpg', 'initial', 1),
(79, '2024-07-10 17:17:42.879', '2024-07-27 14:25:10.463', NULL, 3, 'c3c0ede8660baa3c3b6d7656774812c4.jpg', 'initial', 1),
(80, '2024-07-10 17:17:42.880', '2024-07-27 14:25:10.463', NULL, 3, '191f016201e4733b7bbbf40da89d9fe7.jpg', 'initial', 1),
(81, '2024-07-10 17:17:42.882', '2024-07-27 14:25:10.463', NULL, 3, 'cfc9f702aa21a2373cda8babe6e3205f.jpg', 'initial', 1),
(82, '2024-07-10 17:17:42.883', '2024-07-27 14:25:10.463', NULL, 3, 'a96f9ea0a5d9b6d6d82b5463702bd7d7.jpg', 'initial', 1),
(83, '2024-07-10 17:17:42.885', '2024-07-27 14:25:10.463', NULL, 3, '9e49f4d7dc93cd9294b8cc5e4a6023df.jpg', 'initial', 1),
(84, '2024-07-10 17:17:42.887', '2024-07-27 14:25:10.463', NULL, 3, '2ffe081c34abae5768c6d512e69bf320.jpg', 'initial', 1),
(85, '2024-07-10 17:17:42.889', '2024-07-27 14:25:10.463', NULL, 3, '1647053c3624a6efebbba2caae6e2547.jpg', 'initial', 1),
(86, '2024-07-10 17:17:42.892', '2024-07-27 14:25:10.463', NULL, 3, 'a354975c23b745e1125975fdfa88f972.jpg', 'initial', 1),
(87, '2024-07-10 17:17:42.894', '2024-07-27 14:25:10.463', NULL, 3, '02c5cc689aba38d89d67f6eaa5742c7e.jpg', 'initial', 1),
(88, '2024-07-10 17:17:42.895', '2024-07-27 14:25:10.463', NULL, 3, '27ecb53d8bdda26df923c45058341f72.JPG', 'initial', 1),
(89, '2024-07-10 17:17:42.896', '2024-07-27 14:25:10.463', NULL, 3, '98e6265619b43a6a29f371f3b694025c.jpg', 'initial', 1),
(90, '2024-07-10 17:17:42.898', '2024-07-27 14:25:10.463', NULL, 3, 'f48591b5eade5e58d6f10428f99a3e10.jpg', 'initial', 1),
(91, '2024-07-10 17:17:42.899', '2024-07-27 14:25:10.463', NULL, 3, 'd750e8b59893218aeba53da9d3de8320.JPG', 'initial', 1),
(92, '2024-07-10 17:17:42.901', '2024-07-27 14:25:10.463', NULL, 3, '9150794836bc6aa08c1353d6d9ed3336.JPG', 'initial', 1),
(93, '2024-07-10 17:17:42.903', '2024-07-27 14:25:10.463', NULL, 3, '2d51712a5d5ff57301dfd3807579d91e.jpg', 'initial', 1),
(94, '2024-07-10 17:17:42.905', '2024-07-27 14:25:10.463', NULL, 3, 'af1e59711bde93df8edcf6106190546c.jpg', 'initial', 1),
(95, '2024-07-10 17:17:42.907', '2024-07-27 14:25:10.463', NULL, 3, 'a595a9f0f512c1fc104885809185544a.jpg', 'initial', 1),
(96, '2024-07-10 17:17:42.910', '2024-07-27 14:25:10.463', NULL, 3, 'bc8d1cb038a634948f37d250216e9b70.jpg', 'initial', 1),
(267, '2024-07-11 11:07:45.703', '2024-07-27 14:25:10.463', NULL, 4, '1ecbf30b295eb5414f461cbb13cf2c01.jpg', 'initial', 1),
(268, '2024-07-11 11:07:45.705', '2024-07-27 14:25:10.463', NULL, 4, 'c8b9e0626a53b593f2c6a5842cde5c6f.jpg', 'initial', 1),
(269, '2024-07-11 11:07:45.707', '2024-07-27 14:25:10.463', NULL, 4, '903ef8429515ecd0ae897ec476c97d13.jpg', 'initial', 1),
(270, '2024-07-11 11:07:45.710', '2024-07-27 14:25:10.463', NULL, 4, 'd10bfb2096733e9fc0fdf496ed060d10.jpg', 'initial', 1),
(271, '2024-07-11 11:07:45.711', '2024-07-27 14:25:10.463', NULL, 4, '4cdb310b38e00e3b9b9b7ad5800a2ab2.jpg', 'initial', 1),
(272, '2024-07-11 11:07:45.713', '2024-07-27 14:25:10.463', NULL, 4, 'f6f50d1c1ae0b8dd250bcb711708349c.jpg', 'initial', 1),
(273, '2024-07-11 11:07:45.715', '2024-07-27 14:25:10.463', NULL, 4, '5abff6826f55ebc40b277beea5cdcf18.jpg', 'initial', 1),
(274, '2024-07-11 11:07:45.719', '2024-07-27 14:25:10.463', NULL, 4, 'c49d7ef8a79d37f27f9f170ac5b7d035.jpg', 'initial', 1),
(275, '2024-07-11 11:07:45.721', '2024-07-27 14:25:10.463', NULL, 4, '44f75703e572c70960d7e6f34e15c4dc.jpg', 'initial', 1),
(276, '2024-07-11 11:07:45.723', '2024-07-27 14:25:10.463', NULL, 4, 'b28765dc64cfc6719ef6b7516560aaeb.jpg', 'initial', 1),
(277, '2024-07-11 11:07:45.725', '2024-07-27 14:25:10.463', NULL, 4, 'd1cfd7a1836f878cf188b2cb048bf77e.jpg', 'initial', 1),
(278, '2024-07-11 11:07:45.727', '2024-07-27 14:25:10.463', NULL, 4, '503d7358cf283f51d27ab2511975d7be.jpg', 'initial', 1),
(279, '2024-07-11 11:07:45.728', '2024-07-27 14:25:10.463', NULL, 4, '3a1e493f75b728eb443186780b9c933f.jpg', 'initial', 1),
(280, '2024-07-11 11:07:45.730', '2024-07-27 14:25:10.463', NULL, 4, '9e85cac605bfbfdd5f0a7783907164dc.jpg', 'initial', 1),
(281, '2024-07-11 11:07:45.732', '2024-07-27 14:25:10.463', NULL, 4, '184b37cab4035c7fb08bfbbe04fa934e.jpg', 'initial', 1),
(282, '2024-07-11 11:07:45.736', '2024-07-27 14:25:10.463', NULL, 4, '30e86e502c02c38a969f9a0ff6ab69e7.jpg', 'initial', 1),
(283, '2024-07-11 11:07:45.738', '2024-07-27 14:25:10.463', NULL, 4, '8513a6997c3d5ca0da5898a40a98967e.jpg', 'initial', 1),
(284, '2024-07-11 11:07:45.739', '2024-07-27 14:25:10.463', NULL, 4, '92c2144f8aefce7fd6544861fea64c33.jpg', 'initial', 1),
(285, '2024-07-11 11:07:45.741', '2024-07-27 14:25:10.463', NULL, 4, '84f4827a7ddfe9fb16e7d18a2674f370.jpg', 'initial', 1),
(286, '2024-07-11 11:07:45.742', '2024-07-27 14:25:10.463', NULL, 4, 'e11d274659a2f86c521cc365ec6959d1.jpg', 'initial', 1),
(287, '2024-07-11 11:07:45.744', '2024-07-27 14:25:10.463', NULL, 4, '700466fca6c0e7ddb41f4ef83998305d.jpg', 'initial', 1),
(288, '2024-07-11 11:07:45.746', '2024-07-27 14:25:10.463', NULL, 4, '1b272ea00f07ea724e3534c42b8fe52a.jpg', 'initial', 1),
(289, '2024-07-11 11:07:45.747', '2024-07-27 14:25:10.463', NULL, 4, 'b1bea30587158b2f25cdeb7340a7f4cb.jpg', 'initial', 1),
(290, '2024-07-11 11:07:45.749', '2024-07-27 14:25:10.463', NULL, 4, '531cfa50e7dbe3c47e755ca5c714a2db.jpg', 'initial', 1),
(291, '2024-07-11 11:07:45.752', '2024-07-27 14:25:10.463', NULL, 4, '61f13dbf4ae12a95355230e46fc7d75f.jpg', 'initial', 1),
(292, '2024-07-11 11:07:45.754', '2024-07-27 14:25:10.463', NULL, 4, '5a99019d31c189981b1dfd4b13f40f16.jpg', 'initial', 1),
(293, '2024-07-11 11:07:45.755', '2024-07-27 14:25:10.463', NULL, 4, '0c546d6a2e343e2cd72bba3a2d4af3f7.jpg', 'initial', 1),
(294, '2024-07-11 11:07:45.757', '2024-07-27 14:25:10.463', NULL, 4, '583ffc6bd4f61acc77c758a735a1e1db.jpg', 'initial', 1),
(295, '2024-07-11 11:07:45.759', '2024-07-27 14:25:10.463', NULL, 4, 'a1f942a48077e26c7c79294d4daa19d0.jpg', 'initial', 1),
(296, '2024-07-11 11:07:45.761', '2024-07-27 14:25:10.463', NULL, 4, '61acc5ac8ef2f75844431d535cceeca1.jpg', 'initial', 1),
(297, '2024-07-11 11:07:45.762', '2024-07-27 14:25:10.463', NULL, 4, '08b10301ee03fd1a4ce892871fbb8330.jpg', 'initial', 1),
(298, '2024-07-11 11:07:45.764', '2024-07-27 14:25:10.463', NULL, 4, '561f3b1b0b9278db1d75ad1b3124a60c.jpg', 'initial', 1),
(299, '2024-07-11 11:07:45.767', '2024-07-27 14:25:10.463', NULL, 4, 'cd70cbaf108d7f91c3c081441d643e1b.jpeg', 'initial', 1),
(300, '2024-07-11 11:07:45.770', '2024-07-27 14:25:10.463', NULL, 4, 'b9f7328ef42139558136988f353d6ec5.jpeg', 'initial', 1),
(301, '2024-07-11 11:07:45.772', '2024-07-27 14:25:10.463', NULL, 4, 'bce46e0e3551211f7c50021c7ba18880.jpeg', 'initial', 1),
(302, '2024-07-11 11:07:45.774', '2024-07-27 14:25:10.463', NULL, 4, '7d1f135ccde7291f79210f205f1c0e0f.jpeg', 'initial', 1),
(303, '2024-07-11 11:07:45.776', '2024-07-27 14:25:10.463', NULL, 4, '350490b7d6250235bf7e3db01e0f71fd.jpeg', 'initial', 1),
(304, '2024-07-11 11:07:45.777', '2024-07-27 14:25:10.463', NULL, 4, '1a5a941b585b1e86c95c6b8da38df980.jpeg', 'initial', 1),
(305, '2024-07-11 11:07:45.779', '2024-07-27 14:25:10.463', NULL, 4, '661421b5408be7e3b3e66611bb6cc5c7.jpeg', 'initial', 1),
(306, '2024-07-11 11:07:45.781', '2024-07-27 14:25:10.463', NULL, 4, 'efb5c4155df42d9e01a03c113face847.jpeg', 'initial', 1),
(347, '2024-07-11 11:10:24.523', '2024-07-27 14:25:10.463', NULL, 6, 'fb04323e99a79b45152557a81ca25706.jpg', 'initial', 1),
(348, '2024-07-11 11:10:24.525', '2024-07-27 14:25:10.463', NULL, 6, 'b4b70065c9cae2eea48ac96535f97341.jpg', 'initial', 1),
(349, '2024-07-11 11:10:24.527', '2024-07-27 14:25:10.463', NULL, 6, '981dea3dcbe3a5af33e543bf42484228.jpg', 'initial', 1),
(350, '2024-07-11 11:10:24.529', '2024-07-27 14:25:10.463', NULL, 6, '17611222eddcea874b8f379e564c7819.jpg', 'initial', 1),
(351, '2024-07-11 11:10:24.531', '2024-07-27 14:25:10.463', NULL, 6, 'a254d028c7c59851c4217b7389e2a68d.jpg', 'initial', 1),
(352, '2024-07-11 11:10:24.532', '2024-07-27 14:25:10.463', NULL, 6, '19dba7d74833fddbbc26e2abc1e24ac2.jpg', 'initial', 1),
(353, '2024-07-11 11:10:24.534', '2024-07-27 14:25:10.463', NULL, 6, '9235a18bb180ac4ad639c709579fa4cd.jpg', 'initial', 1),
(354, '2024-07-11 11:10:24.538', '2024-07-27 14:25:10.463', NULL, 6, '1c24b0b1925224954298748add3c3c9c.jpg', 'initial', 1),
(355, '2024-07-11 11:10:24.540', '2024-07-27 14:25:10.463', NULL, 6, 'e36cb8e710d5938e64e24c5c424aeda1.jpg', 'initial', 1),
(356, '2024-07-11 11:10:24.542', '2024-07-27 14:25:10.463', NULL, 6, '298614a3d573d0abda58c2581523dd04.jpg', 'initial', 1),
(357, '2024-07-11 11:10:24.543', '2024-07-27 14:25:10.463', NULL, 6, '912b26cffaf4e5ccf175f7767ed5e59e.jpg', 'initial', 1),
(358, '2024-07-11 11:10:24.545', '2024-07-27 14:25:10.463', NULL, 6, 'dada0cf0f9d05a9654c8a0713f197db1.jpg', 'initial', 1),
(359, '2024-07-11 11:10:24.546', '2024-07-27 14:25:10.463', NULL, 6, 'f4433eeee6dfe86fcd1f6b2a772703b5.jpg', 'initial', 1),
(360, '2024-07-11 11:10:24.548', '2024-07-27 14:25:10.463', NULL, 6, '8e7f97d3d70d52ca8cced572a1b17b1a.jpg', 'initial', 1),
(361, '2024-07-11 11:10:24.550', '2024-07-27 14:25:10.463', NULL, 6, '457c7f16a5fa0e03ec3659ab91907ef3.jpg', 'initial', 1),
(362, '2024-07-11 11:10:24.552', '2024-07-27 14:25:10.463', NULL, 6, '89f838b94d1ab3662ff3933bf28b5336.jpg', 'initial', 1),
(363, '2024-07-11 11:10:24.556', '2024-07-27 14:25:10.463', NULL, 6, 'a137836161aeffc5d193a2405c606c69.jpg', 'initial', 1),
(364, '2024-07-11 11:10:24.558', '2024-07-27 14:25:10.463', NULL, 6, 'b8b44302aad0c5e6229dfe1d2c15712f.jpg', 'initial', 1),
(365, '2024-07-11 11:10:24.559', '2024-07-27 14:25:10.463', NULL, 6, '7d05b99474f44e6e2f5050b551e89d68.jpg', 'initial', 1),
(366, '2024-07-11 11:10:24.561', '2024-07-27 14:25:10.463', NULL, 6, 'bef5e2fadab149b8f6c7f963bc2d1f93.jpg', 'initial', 1),
(367, '2024-07-11 11:10:24.563', '2024-07-27 14:25:10.463', NULL, 6, '1096e9befcddd9c3c1fe898c9e9879bd.jpg', 'initial', 1),
(368, '2024-07-11 11:10:24.565', '2024-07-27 14:25:10.463', NULL, 6, '3cc83543d3c7d191e19fc3e8c854006e.jpg', 'initial', 1),
(369, '2024-07-11 11:10:24.568', '2024-07-27 14:25:10.463', NULL, 6, '2d4671af0fc4e275d3e1f91b9a5812b2.jpg', 'initial', 1),
(370, '2024-07-11 11:10:24.571', '2024-07-27 14:25:10.463', NULL, 6, 'cd5f269d8a5e1d59de321d4de2922851.jpg', 'initial', 1),
(371, '2024-07-11 11:10:24.574', '2024-07-27 14:25:10.463', NULL, 6, '437e913bf928510592e449aab19de85b.jpg', 'initial', 1),
(372, '2024-07-11 11:10:24.576', '2024-07-27 14:25:10.463', NULL, 6, '1eab0ef95be11f62af1e21d222129586.jpg', 'initial', 1),
(373, '2024-07-11 11:10:24.578', '2024-07-27 14:25:10.463', NULL, 6, '93e85995148d7392d83b11aa47a65bea.jpg', 'initial', 1),
(374, '2024-07-11 11:10:24.580', '2024-07-27 14:25:10.463', NULL, 6, '341622076f463794a5b4f8c239e57ee5.jpg', 'initial', 1),
(375, '2024-07-11 11:10:24.582', '2024-07-27 14:25:10.463', NULL, 6, '3ccbd65321a9db5d7376ad3c24773199.jpg', 'initial', 1),
(376, '2024-07-11 11:10:24.584', '2024-07-27 14:25:10.463', NULL, 6, '5bf167e0c806a87b3742d5470eeaedd3.jpg', 'initial', 1),
(377, '2024-07-11 11:10:24.587', '2024-07-27 14:25:10.463', NULL, 6, 'b6f1d64a07e5540e5e2d271f2da05b9d.jpg', 'initial', 1),
(378, '2024-07-11 11:10:24.590', '2024-07-27 14:25:10.463', NULL, 6, 'bd2323b8435340f47032745f0b32e1cc.jpg', 'initial', 1),
(379, '2024-07-11 11:10:24.592', '2024-07-27 14:25:10.463', NULL, 6, '1550413f2e8775a22c581f16f83c99dd.jpeg', 'initial', 1),
(380, '2024-07-11 11:10:24.594', '2024-07-27 14:25:10.463', NULL, 6, '00c7ecaa485d382cdc3eee28d39f2997.jpeg', 'initial', 1),
(381, '2024-07-11 11:10:24.596', '2024-07-27 14:25:10.463', NULL, 6, '337057e3d84545dd0af659b67f92ed87.jpeg', 'initial', 1),
(382, '2024-07-11 11:10:24.597', '2024-07-27 14:25:10.463', NULL, 6, 'c4999a82f86f262fb0693d85763f5ceb.jpeg', 'initial', 1),
(383, '2024-07-11 11:10:24.600', '2024-07-27 14:25:10.463', NULL, 6, '52c307aba91e84493c9a4377377edf7e.jpeg', 'initial', 1),
(384, '2024-07-11 11:10:24.602', '2024-07-27 14:25:10.463', NULL, 6, '9ee61ad6b61a235e419af4936c387629.jpeg', 'initial', 1),
(385, '2024-07-11 11:10:24.605', '2024-07-27 14:25:10.463', NULL, 6, 'ea406a3f50d133577df072d32f52d920.jpeg', 'initial', 1),
(386, '2024-07-11 11:10:24.607', '2024-07-27 14:25:10.463', NULL, 6, '39023999a358a5e4f55edae80d2fdec0.jpeg', 'initial', 1),
(387, '2024-07-11 11:17:29.238', '2024-07-27 14:25:10.463', NULL, 7, '733b024d7e68276f536753d9701f02ba.jpg', 'initial', 1),
(388, '2024-07-11 11:17:29.241', '2024-07-27 14:25:10.463', NULL, 7, '992a210b80ce82e535f52db074a682fd.jpg', 'initial', 1),
(389, '2024-07-11 11:17:29.244', '2024-07-27 14:25:10.463', NULL, 7, '244072653660649b28bd8851c0a1faec.jpg', 'initial', 1),
(390, '2024-07-11 11:17:29.245', '2024-07-27 14:25:10.463', NULL, 7, '778d12abbccec964ed211f45503d620c.jpg', 'initial', 1),
(391, '2024-07-11 11:17:29.247', '2024-07-27 14:25:10.463', NULL, 7, 'e7a86222745fc917cab6c904a7cc731b.jpg', 'initial', 1),
(392, '2024-07-11 11:17:29.249', '2024-07-27 14:25:10.463', NULL, 7, '69772c091ff21fc33786fc55503e1bc1.jpg', 'initial', 1),
(393, '2024-07-11 11:17:29.250', '2024-07-27 14:25:10.463', NULL, 7, '40d38538aff2a82a8f57d4cf0555f866.jpg', 'initial', 1),
(394, '2024-07-11 11:17:29.252', '2024-07-27 14:25:10.463', NULL, 7, '00031e85de82206135f19f2ca29b65a4.jpg', 'initial', 1),
(395, '2024-07-11 11:17:29.253', '2024-07-27 14:25:10.463', NULL, 7, 'b973a4e63ca4021b445476e9f0b37217.jpg', 'initial', 1),
(396, '2024-07-11 11:17:29.255', '2024-07-27 14:25:10.463', NULL, 7, 'b3adfc8fc991b57d32d868126402de21.jpg', 'initial', 1),
(397, '2024-07-11 11:17:29.257', '2024-07-27 14:25:10.463', NULL, 7, '5458fa20295999cf671bcfa7ac94b1a2.jpg', 'initial', 1),
(398, '2024-07-11 11:17:29.259', '2024-07-27 14:25:10.463', NULL, 7, '09e82a348a629e03a3da3d2b765c9df6.jpg', 'initial', 1),
(399, '2024-07-11 11:17:29.261', '2024-07-27 14:25:10.463', NULL, 7, '9e1e1b21dbbcdf6ac4cce39c9a981ad6.jpg', 'initial', 1),
(400, '2024-07-11 11:17:29.263', '2024-07-27 14:25:10.463', NULL, 7, 'd5f863a7a63b1d1a21ad6d886a0abf79.jpg', 'initial', 1),
(401, '2024-07-11 11:17:29.265', '2024-07-27 14:25:10.463', NULL, 7, '99bfc92abfc6b7c0a2676c93779fca18.jpg', 'initial', 1),
(402, '2024-07-11 11:17:29.266', '2024-07-27 14:25:10.463', NULL, 7, '1c90e52c5a866c19039827545a4f0095.jpg', 'initial', 1),
(403, '2024-07-11 11:17:29.268', '2024-07-27 14:25:10.463', NULL, 7, '9ba4bc9d14eaee5bb0d7306ca23bb77d.jpg', 'initial', 1),
(404, '2024-07-11 11:17:29.270', '2024-07-27 14:25:10.463', NULL, 7, 'fa048649491cf24cd7fc78a9f7cc942d.jpg', 'initial', 1),
(405, '2024-07-11 11:17:29.272', '2024-07-27 14:25:10.463', NULL, 7, '57d8a772d7cb59aa05c41a6084ecb850.jpg', 'initial', 1),
(406, '2024-07-11 11:17:29.273', '2024-07-27 14:25:10.463', NULL, 7, 'ce58fa503d567bec105bd7ac9416de01.jpg', 'initial', 1),
(407, '2024-07-11 11:17:29.276', '2024-07-27 14:25:10.463', NULL, 7, '29228a3d8bdf8ecfe60afd6cdc366b24.jpg', 'initial', 1),
(408, '2024-07-11 11:17:29.278', '2024-07-27 14:25:10.463', NULL, 7, '1dd870979416a07dd577693cea652b16.jpg', 'initial', 1),
(409, '2024-07-11 11:17:29.280', '2024-07-27 14:25:10.463', NULL, 7, 'e7db29e056ab1486ffff0362046df466.jpg', 'initial', 1),
(410, '2024-07-11 11:17:29.283', '2024-07-27 14:25:10.463', NULL, 7, 'e2ee36090216eee6e0f5c62d0aacf998.jpg', 'initial', 1),
(411, '2024-07-11 11:17:29.285', '2024-07-27 14:25:10.463', NULL, 7, '6b4a516c523e855a1923ba35971ee495.jpg', 'initial', 1),
(412, '2024-07-11 11:17:29.287', '2024-07-27 14:25:10.463', NULL, 7, 'a6abaf4c7c0b87dbc3c5b7da5866cc43.jpg', 'initial', 1),
(413, '2024-07-11 11:17:29.289', '2024-07-27 14:25:10.463', NULL, 7, '0a226558812074a57aec468dfa425c31.jpg', 'initial', 1),
(414, '2024-07-11 11:17:29.291', '2024-07-27 14:25:10.463', NULL, 7, '196cbb162ea4ed24cc0a870140736ebc.jpg', 'initial', 1),
(415, '2024-07-11 11:17:29.294', '2024-07-27 14:25:10.463', NULL, 7, 'd8871aa9ba4c209bc427a005d0cfa1fe.jpg', 'initial', 1),
(416, '2024-07-11 11:17:29.297', '2024-07-27 14:25:10.463', NULL, 7, '8f7eee511748e979332d26edcb4836c4.jpg', 'initial', 1),
(417, '2024-07-11 11:17:29.298', '2024-07-27 14:25:10.463', NULL, 7, '66319eeb56911f251a2ae935cc8aa6a8.jpg', 'initial', 1),
(418, '2024-07-11 11:17:29.301', '2024-07-27 14:25:10.463', NULL, 7, '975e73e0d7ae8188410499d84b09b36f.jpg', 'initial', 1),
(419, '2024-07-11 11:17:29.302', '2024-07-27 14:25:10.463', NULL, 7, '4b65590bd910d1bb037d56d9760e6386.jpeg', 'initial', 1),
(420, '2024-07-11 11:17:29.304', '2024-07-27 14:25:10.463', NULL, 7, '1f6f95db03f0b68a1416e4871a83fd23.jpeg', 'initial', 1),
(421, '2024-07-11 11:17:29.306', '2024-07-27 14:25:10.463', NULL, 7, 'a64dff51f67e81d60862500460fda37f.jpeg', 'initial', 1),
(422, '2024-07-11 11:17:29.309', '2024-07-27 14:25:10.463', NULL, 7, '3ddd89cabd9032add82b2780978ebfb9.jpeg', 'initial', 1),
(423, '2024-07-11 11:17:29.312', '2024-07-27 14:25:10.463', NULL, 7, 'e8b20efaf9a21466f24bf61fa31b17a4.jpeg', 'initial', 1),
(424, '2024-07-11 11:17:29.313', '2024-07-27 14:25:10.463', NULL, 7, '2ed0ad42467c91626f1ff1a11973a325.jpeg', 'initial', 1),
(425, '2024-07-11 11:17:29.316', '2024-07-27 14:25:10.463', NULL, 7, 'baac568ba4eaecda5b943838bcf54f3a.jpeg', 'initial', 1),
(426, '2024-07-11 11:17:29.317', '2024-07-27 14:25:10.463', NULL, 7, '3b63b887adf400ca757217240d740954.jpeg', 'initial', 1),
(427, '2024-07-11 11:18:04.321', '2024-07-27 14:25:10.463', NULL, 8, 'a598d2740757071c9d610f815bbb8154.jpg', 'initial', 1),
(428, '2024-07-11 11:18:04.323', '2024-07-27 14:25:10.463', NULL, 8, 'c623a801383a0a21c94799c8fce44eb7.jpg', 'initial', 1),
(429, '2024-07-11 11:18:04.327', '2024-07-27 14:25:10.463', NULL, 8, '14779ebd6a873d74f54c7a67bfcab01b.jpg', 'initial', 1),
(430, '2024-07-11 11:18:04.329', '2024-07-27 14:25:10.463', NULL, 8, '95d0ff146ac68ed4ddbb16e4b4e4933c.jpg', 'initial', 1),
(431, '2024-07-11 11:18:04.331', '2024-07-27 14:25:10.463', NULL, 8, '330627fc5c57fb7fd819ee7b2b66014b.jpg', 'initial', 1),
(432, '2024-07-11 11:18:04.333', '2024-07-27 14:25:10.463', NULL, 8, '612875e5b2ee5af94879a699275c9717.jpg', 'initial', 1),
(433, '2024-07-11 11:18:04.335', '2024-07-27 14:25:10.463', NULL, 8, '2444a27810f0ba888c17cf21f3a7e961.jpg', 'initial', 1),
(434, '2024-07-11 11:18:04.336', '2024-07-27 14:25:10.463', NULL, 8, '6531db2b71de918ef7403cc82e9bfbca.jpg', 'initial', 1),
(435, '2024-07-11 11:18:04.338', '2024-07-27 14:25:10.463', NULL, 8, '3389a94105bc426238c1e36c55c0d9f1.jpg', 'initial', 1),
(436, '2024-07-11 11:18:04.339', '2024-07-27 14:25:10.463', NULL, 8, '9991e4690b2a1ed6b7539c58c5b7e983.jpg', 'initial', 1),
(437, '2024-07-11 11:18:04.342', '2024-07-27 14:25:10.463', NULL, 8, '6dc224b404673689db65635aa9850ce5.jpg', 'initial', 1),
(438, '2024-07-11 11:18:04.344', '2024-07-27 14:25:10.463', NULL, 8, 'e9be76716397f0c65d4fc10c16ac57a7.jpg', 'initial', 1),
(439, '2024-07-11 11:18:04.346', '2024-07-27 14:25:10.463', NULL, 8, '1195cd15904e22cbe9783a6dba251c03.jpg', 'initial', 1),
(440, '2024-07-11 11:18:04.348', '2024-07-27 14:25:10.463', NULL, 8, '6bf5faaf801f7803e86db9e22528a334.jpg', 'initial', 1),
(441, '2024-07-11 11:18:04.350', '2024-07-27 14:25:10.463', NULL, 8, '979fb01840046c76eeb67f5d2856a9ce.jpg', 'initial', 1),
(442, '2024-07-11 11:18:04.351', '2024-07-27 14:25:10.463', NULL, 8, '6236661ed29700de3a53a4cfb68147f2.jpg', 'initial', 1),
(443, '2024-07-11 11:18:04.353', '2024-07-27 14:25:10.463', NULL, 8, '02109727d7e5f3a1a78adc15029c4a3e.jpg', 'initial', 1),
(444, '2024-07-11 11:18:04.354', '2024-07-27 14:25:10.463', NULL, 8, '1c4b8fc0e14fb8494608aefa0848da0e.jpg', 'initial', 1),
(445, '2024-07-11 11:18:04.356', '2024-07-27 14:25:10.463', NULL, 8, '396364b2ae0eb06a7686988c3eea4e7a.jpg', 'initial', 1),
(446, '2024-07-11 11:18:04.357', '2024-07-27 14:25:10.463', NULL, 8, '44d34a5313cc760ded4139c3970991a7.jpg', 'initial', 1),
(447, '2024-07-11 11:18:04.360', '2024-07-27 14:25:10.463', NULL, 8, '45bd219d8b41917073a628b3f65bc919.jpg', 'initial', 1),
(448, '2024-07-11 11:18:04.362', '2024-07-27 14:25:10.463', NULL, 8, 'bb0688d53834721f28c2ed36827ed1fc.jpg', 'initial', 1),
(449, '2024-07-11 11:18:04.364', '2024-07-27 14:25:10.463', NULL, 8, '3d7ee4a52fa8a8338e788d03beae0a6b.jpg', 'initial', 1),
(450, '2024-07-11 11:18:04.365', '2024-07-27 14:25:10.463', NULL, 8, '339e070b7c683145ec6de4a007f91c9c.jpg', 'initial', 1),
(451, '2024-07-11 11:18:04.367', '2024-07-27 14:25:10.463', NULL, 8, '6fd174dc19f242a92bb1b0828126c54d.jpg', 'initial', 1),
(452, '2024-07-11 11:18:04.368', '2024-07-27 14:25:10.463', NULL, 8, '21f768420ea41cb8967f2c67661f656e.jpg', 'initial', 1),
(453, '2024-07-11 11:18:04.370', '2024-07-27 14:25:10.463', NULL, 8, 'db84439a1db258350937fe01928b78cd.jpg', 'initial', 1),
(454, '2024-07-11 11:18:04.371', '2024-07-27 14:25:10.463', NULL, 8, '138b611692f214575253d58ad4e41236.jpg', 'initial', 1),
(455, '2024-07-11 11:18:04.373', '2024-07-27 14:25:10.463', NULL, 8, '6dd7f66f21415c1a4bddaf169ad91de3.jpg', 'initial', 1),
(456, '2024-07-11 11:18:04.374', '2024-07-27 14:25:10.463', NULL, 8, '87446e751261049128c4f210e1ae58b2.jpg', 'initial', 1),
(457, '2024-07-11 11:18:04.377', '2024-07-27 14:25:10.463', NULL, 8, 'f0778de692bfcde850fcf5235472fcb9.jpg', 'initial', 1),
(458, '2024-07-11 11:18:04.379', '2024-07-27 14:25:10.463', NULL, 8, '62eb0647871baf9ed69644e8d06268ec.jpg', 'initial', 1),
(459, '2024-07-11 11:18:04.381', '2024-07-27 14:25:10.463', NULL, 8, '2dd7dad27b27ad4c77164c9318441479.jpeg', 'initial', 1),
(460, '2024-07-11 11:18:04.384', '2024-07-27 14:25:10.463', NULL, 8, 'e30068a11140523313a489aefc5e2ddd.jpeg', 'initial', 1),
(461, '2024-07-11 11:18:04.386', '2024-07-27 14:25:10.463', NULL, 8, 'd16ac11416ccaaf28fb3126fb631ea7a.jpeg', 'initial', 1),
(462, '2024-07-11 11:18:04.388', '2024-07-27 14:25:10.463', NULL, 8, '0c592a4814c21462b6a988a93e7147bc.jpeg', 'initial', 1),
(463, '2024-07-11 11:18:04.389', '2024-07-27 14:25:10.463', NULL, 8, 'd2cab5a1a08833e297039fef63d293c7.jpeg', 'initial', 1),
(464, '2024-07-11 11:18:04.392', '2024-07-27 14:25:10.463', NULL, 8, '68c572c0b95ed8c1b6edde97937d1c50.jpeg', 'initial', 1),
(465, '2024-07-11 11:18:04.395', '2024-07-27 14:25:10.463', NULL, 8, '565e2b571325c38a7fdf19f703a7cc06.jpeg', 'initial', 1),
(466, '2024-07-11 11:18:04.397', '2024-07-27 14:25:10.463', NULL, 8, '3a958789e5778d8a3f8169f9e197cb78.jpeg', 'initial', 1),
(467, '2024-07-11 11:19:42.721', '2024-07-27 14:25:10.463', NULL, 9, '63507395bc35dda584203edc0f3d2e85.jpg', 'initial', 1),
(468, '2024-07-11 11:19:42.723', '2024-07-27 14:25:10.463', NULL, 9, '44075b1499ff5bd81ef267e811e8c68a.jpg', 'initial', 1),
(469, '2024-07-11 11:19:42.725', '2024-07-27 14:25:10.463', NULL, 9, '8728d3162e60a3af89f9d04163b4e807.jpg', 'initial', 1),
(470, '2024-07-11 11:19:42.728', '2024-07-27 14:25:10.463', NULL, 9, 'be41142d7d589ddbfeb60bd834f66d70.jpg', 'initial', 1),
(471, '2024-07-11 11:19:42.732', '2024-07-27 14:25:10.463', NULL, 9, 'af2ec305c995a9de2a54c1042832afad.jpg', 'initial', 1),
(472, '2024-07-11 11:19:42.734', '2024-07-27 14:25:10.463', NULL, 9, 'c69824f9fd5683dcc8f80c23589889fe.jpg', 'initial', 1),
(473, '2024-07-11 11:19:42.737', '2024-07-27 14:25:10.463', NULL, 9, '0c5621c9ac52041f43a114614a7f727f.jpg', 'initial', 1),
(474, '2024-07-11 11:19:42.740', '2024-07-27 14:25:10.463', NULL, 9, 'bad2519f66b883c2f69a354786bbd172.jpg', 'initial', 1),
(475, '2024-07-11 11:19:42.742', '2024-07-27 14:25:10.463', NULL, 9, '51f982eb4353e159b9342eaa2a28b178.jpg', 'initial', 1),
(476, '2024-07-11 11:19:42.746', '2024-07-27 14:25:10.463', NULL, 9, 'f1661e6f3b1baa5a81818c94a0dd77bd.jpg', 'initial', 1),
(477, '2024-07-11 11:19:42.749', '2024-07-27 14:25:10.463', NULL, 9, '28d6d85ded44104357ddbd7dfdab67bf.jpg', 'initial', 1),
(478, '2024-07-11 11:19:42.752', '2024-07-27 14:25:10.463', NULL, 9, '3fbe7a844c45e4926e2cceb35069bacd.jpg', 'initial', 1),
(479, '2024-07-11 11:19:42.754', '2024-07-27 14:25:10.463', NULL, 9, '8dd09aac290560be5e09cb1cf6b6e15e.jpg', 'initial', 1),
(480, '2024-07-11 11:19:42.756', '2024-07-27 14:25:10.463', NULL, 9, '876ad7cbcc343a19542539786932bff6.jpg', 'initial', 1),
(481, '2024-07-11 11:19:42.758', '2024-07-27 14:25:10.463', NULL, 9, '393585a852df498cb60b196e2c62820a.jpg', 'initial', 1),
(482, '2024-07-11 11:19:42.762', '2024-07-27 14:25:10.463', NULL, 9, '41cc66fe4f0e4214b149a1edba9bd246.jpg', 'initial', 1),
(483, '2024-07-11 11:19:42.765', '2024-07-27 14:25:10.463', NULL, 9, 'b26e20fa2c97a22d9dbb79a41944df6b.jpg', 'initial', 1),
(484, '2024-07-11 11:19:42.768', '2024-07-27 14:25:10.463', NULL, 9, '865672a2918b06c895cf05e5055caa6d.jpg', 'initial', 1),
(485, '2024-07-11 11:19:42.771', '2024-07-27 14:25:10.463', NULL, 9, 'b2750953aa498a36e04398d3ce92b9ba.jpg', 'initial', 1),
(486, '2024-07-11 11:19:42.773', '2024-07-27 14:25:10.463', NULL, 9, '3dfb7b657f9302f7ada3b9fcf4fdc725.jpg', 'initial', 1),
(487, '2024-07-11 11:19:42.776', '2024-07-27 14:25:10.463', NULL, 9, 'e07a5b63370cfbf417062f368ea46797.jpg', 'initial', 1),
(488, '2024-07-11 11:19:42.780', '2024-07-27 14:25:10.463', NULL, 9, 'a9639a4a6826ce460f8c78453dfa20ef.jpg', 'initial', 1),
(489, '2024-07-11 11:19:42.783', '2024-07-27 14:25:10.463', NULL, 9, 'a2b60c688332a518145f2f4d9dff9823.jpg', 'initial', 1),
(490, '2024-07-11 11:19:42.785', '2024-07-27 14:25:10.463', NULL, 9, '9895177a6d006acc6e2e03f44542b6b3.jpg', 'initial', 1),
(491, '2024-07-11 11:19:42.786', '2024-07-27 14:25:10.463', NULL, 9, '84c3cbd9b51a7691573ec0897eb2dc26.jpg', 'initial', 1),
(492, '2024-07-11 11:19:42.789', '2024-07-27 14:25:10.463', NULL, 9, '30e8b3eee2db6a08d06dd88e00383498.jpg', 'initial', 1),
(493, '2024-07-11 11:19:42.790', '2024-07-27 14:25:10.463', NULL, 9, 'eea1778fb17492d2730227ec455f38d4.jpg', 'initial', 1),
(494, '2024-07-11 11:19:42.792', '2024-07-27 14:25:10.463', NULL, 9, 'f85bc17d052852e1f120867a40cd9389.jpg', 'initial', 1),
(495, '2024-07-11 11:19:42.796', '2024-07-27 14:25:10.463', NULL, 9, '9b221188bba0823d38f66b05b45675cf.jpg', 'initial', 1),
(496, '2024-07-11 11:19:42.799', '2024-07-27 14:25:10.463', NULL, 9, 'bde964dc8a7e05a0c048f8fc64e46f7c.jpg', 'initial', 1),
(497, '2024-07-11 11:19:42.800', '2024-07-27 14:25:10.463', NULL, 9, 'c17686c905a3bf521aecb52048cdf97e.jpg', 'initial', 1),
(498, '2024-07-11 11:19:42.801', '2024-07-27 14:25:10.463', NULL, 9, 'd5c0e688a96158299115e1b3c0bdaf43.jpg', 'initial', 1),
(499, '2024-07-11 11:19:42.804', '2024-07-27 14:25:10.463', NULL, 9, '6c0d1db5b11aeb06b730786c7bdd66d5.jpeg', 'initial', 1),
(500, '2024-07-11 11:19:42.806', '2024-07-27 14:25:10.463', NULL, 9, '2d412914e91f795558030ad74418e7f3.jpeg', 'initial', 1),
(501, '2024-07-11 11:19:42.808', '2024-07-27 14:25:10.463', NULL, 9, 'bd9773254cd947557e76579effd9dd5b.jpeg', 'initial', 1),
(502, '2024-07-11 11:19:42.810', '2024-07-27 14:25:10.463', NULL, 9, '1dc3939d1a41877e19ddf8741a77bbd8.jpeg', 'initial', 1),
(503, '2024-07-11 11:19:42.813', '2024-07-27 14:25:10.463', NULL, 9, '306678d3660dec84737d96a1163c3325.jpeg', 'initial', 1),
(504, '2024-07-11 11:19:42.816', '2024-07-27 14:25:10.463', NULL, 9, '3d22209c49147a2d0caeafd9a405f845.jpeg', 'initial', 1),
(505, '2024-07-11 11:19:42.818', '2024-07-27 14:25:10.463', NULL, 9, 'c171238a4d8d786952e2af0f9098eacb.jpeg', 'initial', 1),
(506, '2024-07-11 11:19:42.820', '2024-07-27 14:25:10.463', NULL, 9, '564d9466e98055c9b5e92b78e5fab4df.jpeg', 'initial', 1),
(507, '2024-07-11 11:20:48.449', '2024-07-27 14:25:10.463', NULL, 10, '9eb84462850b66ca03e5a8dafc56e3d7.jpg', 'initial', 1),
(508, '2024-07-11 11:20:48.453', '2024-07-27 14:25:10.463', NULL, 10, '9fdae5fd04192e74589c2982570a4724.jpg', 'initial', 1),
(509, '2024-07-11 11:20:48.455', '2024-07-27 14:25:10.463', NULL, 10, '9f395f5650a6b2c591346c99018bbe10.jpg', 'initial', 1),
(510, '2024-07-11 11:20:48.457', '2024-07-27 14:25:10.463', NULL, 10, '00eb2c41f0a8b5a5cb0de355b97a23b3.jpg', 'initial', 1),
(511, '2024-07-11 11:20:48.459', '2024-07-27 14:25:10.463', NULL, 10, '3b1c828fa2960bde575e4da3eb0eba3c.jpg', 'initial', 1),
(512, '2024-07-11 11:20:48.461', '2024-07-27 14:25:10.463', NULL, 10, '480772474844785d5d4983cb2af640c5.jpg', 'initial', 1),
(513, '2024-07-11 11:20:48.464', '2024-07-27 14:25:10.463', NULL, 10, '16eeef94f89fd18ae6a0f4e0d9c0f487.jpg', 'initial', 1),
(514, '2024-07-11 11:20:48.467', '2024-07-27 14:25:10.463', NULL, 10, '09ae599e9c7d774b0d0f0d5bc8914227.jpg', 'initial', 1),
(515, '2024-07-11 11:20:48.469', '2024-07-27 14:25:10.463', NULL, 10, 'e5059e478bae4e248abb63967cdec115.jpg', 'initial', 1),
(516, '2024-07-11 11:20:48.470', '2024-07-27 14:25:10.463', NULL, 10, 'ce1c06fdc82882269702532acbad8fbc.jpg', 'initial', 1),
(517, '2024-07-11 11:20:48.472', '2024-07-27 14:25:10.463', NULL, 10, 'bef2954a872e75208a8c8296721fb184.jpg', 'initial', 1),
(518, '2024-07-11 11:20:48.473', '2024-07-27 14:25:10.463', NULL, 10, '0a29db4f7bb581e146c56080f6bb741d.jpg', 'initial', 1),
(519, '2024-07-11 11:20:48.475', '2024-07-27 14:25:10.463', NULL, 10, '2454ef26b9e496d6f78b9d20f50adc57.jpg', 'initial', 1),
(520, '2024-07-11 11:20:48.476', '2024-07-27 14:25:10.463', NULL, 10, 'c23d08d42a7fe5480494c1a7487beacb.jpg', 'initial', 1),
(521, '2024-07-11 11:20:48.479', '2024-07-27 14:25:10.463', NULL, 10, '34d511b492c08c3005a0ae2b56b9509f.jpg', 'initial', 1),
(522, '2024-07-11 11:20:48.482', '2024-07-27 14:25:10.463', NULL, 10, '8d882a762bc62195b60a95e26a779eb5.jpg', 'initial', 1),
(523, '2024-07-11 11:20:48.483', '2024-07-27 14:25:10.463', NULL, 10, 'bd2ddd0a545ab60327cec77c69262a3f.jpg', 'initial', 1),
(524, '2024-07-11 11:20:48.485', '2024-07-27 14:25:10.463', NULL, 10, 'c3ba0f6c9f5d9ee3468f9f7108d39abc.jpg', 'initial', 1),
(525, '2024-07-11 11:20:48.487', '2024-07-27 14:25:10.463', NULL, 10, 'ef2ccca3da1966f0d2beea65a11d3cc8.jpg', 'initial', 1),
(526, '2024-07-11 11:20:48.488', '2024-07-27 14:25:10.463', NULL, 10, '0d3808ae54550f3efc4f275b36ee3622.jpg', 'initial', 1),
(527, '2024-07-11 11:20:48.490', '2024-07-27 14:25:10.463', NULL, 10, '7cb0721ab94bcb741ca97a7e460607a6.jpg', 'initial', 1),
(528, '2024-07-11 11:20:48.491', '2024-07-27 14:25:10.463', NULL, 10, '67c2cf7ab00ef016b44f1d1252fd505c.jpg', 'initial', 1),
(529, '2024-07-11 11:20:48.492', '2024-07-27 14:25:10.463', NULL, 10, 'd82807a2ad01eb0f6131ed0d539e587f.jpg', 'initial', 1),
(530, '2024-07-11 11:20:48.496', '2024-07-27 14:25:10.463', NULL, 10, '095b79512e9fff0c6acb25ca58cfb407.jpg', 'initial', 1),
(531, '2024-07-11 11:20:48.498', '2024-07-27 14:25:10.463', NULL, 10, '483d96dbd9879637c93ba94b5560cc99.jpg', 'initial', 1),
(532, '2024-07-11 11:20:48.500', '2024-07-27 14:25:10.463', NULL, 10, '72fd06cf119961edda720169089b9608.jpg', 'initial', 1),
(533, '2024-07-11 11:20:48.502', '2024-07-27 14:25:10.463', NULL, 10, 'cb3a91d24b1b805b3900df52794e064d.jpg', 'initial', 1),
(534, '2024-07-11 11:20:48.504', '2024-07-27 14:25:10.463', NULL, 10, '88dcfbdbc2dba539f6b80c19997a9258.jpg', 'initial', 1),
(535, '2024-07-11 11:20:48.505', '2024-07-27 14:25:10.463', NULL, 10, '6327d013097ba5586f63e7c9196b8431.jpg', 'initial', 1),
(536, '2024-07-11 11:20:48.507', '2024-07-27 14:25:10.463', NULL, 10, 'f75b30fbe71304f6d2cac7c48fe4b145.jpg', 'initial', 1),
(537, '2024-07-11 11:20:48.509', '2024-07-27 14:25:10.463', NULL, 10, 'f7904032755dc6fb9e9366ec676fc7ed.jpg', 'initial', 1),
(538, '2024-07-11 11:20:48.512', '2024-07-27 14:25:10.463', NULL, 10, '52e88422a01628211c678e059e49374e.jpg', 'initial', 1),
(539, '2024-07-11 11:20:48.514', '2024-07-27 14:25:10.463', NULL, 10, '2f6e2ff5e5fad2e9914744ba82a9f176.jpeg', 'initial', 1),
(540, '2024-07-11 11:20:48.516', '2024-07-27 14:25:10.463', NULL, 10, '7789d6eaf8d82ccd22e7bb5457f05d73.jpeg', 'initial', 1),
(541, '2024-07-11 11:20:48.517', '2024-07-27 14:25:10.463', NULL, 10, 'e564b55b5952bcb88ab36807990d214e.jpeg', 'initial', 1),
(542, '2024-07-11 11:20:48.519', '2024-07-27 14:25:10.463', NULL, 10, 'e16912750e0461d59393bc6af811aac8.jpeg', 'initial', 1),
(543, '2024-07-11 11:20:48.520', '2024-07-27 14:25:10.463', NULL, 10, 'b40e250ddcf572bd793a2d78f3cd209c.jpeg', 'initial', 1),
(544, '2024-07-11 11:20:48.522', '2024-07-27 14:25:10.463', NULL, 10, '213ccf664dd33abcac78ceb94cdc627e.jpeg', 'initial', 1),
(545, '2024-07-11 11:20:48.524', '2024-07-27 14:25:10.463', NULL, 10, '96474d1587008efc147d53c66a49d577.jpeg', 'initial', 1),
(546, '2024-07-11 11:20:48.526', '2024-07-27 14:25:10.463', NULL, 10, '845ceade58519fa6dd346bfbaff361fd.jpeg', 'initial', 1),
(547, '2024-07-11 11:21:11.395', '2024-07-27 14:25:10.463', NULL, 11, 'ac99e3250374790a3acf6d5588094f36.jpeg', 'initial', 1),
(548, '2024-07-11 11:21:11.400', '2024-07-27 14:25:10.463', NULL, 11, 'b1404f2fc63f767622298223d694cdcc.jpeg', 'initial', 1),
(549, '2024-07-11 11:21:11.403', '2024-07-27 14:25:10.463', NULL, 11, 'b766f0392437f5a0f189ef9ff883ed70.jpeg', 'initial', 1),
(550, '2024-07-11 11:21:11.405', '2024-07-27 14:25:10.463', NULL, 11, '66d6e641b4b251d558d1fb915abf9499.jpeg', 'initial', 1),
(551, '2024-07-11 11:21:11.450', '2024-07-27 14:25:10.463', NULL, 11, '046f12fb2b175c09eab1c61efa2e3863.jpeg', 'initial', 1),
(552, '2024-07-11 11:21:11.488', '2024-07-27 14:25:10.463', NULL, 11, 'd8ad338fa181c83265d38f168bb846bb.jpeg', 'initial', 1),
(553, '2024-07-11 11:21:11.561', '2024-07-27 14:25:10.463', NULL, 11, 'ed1ef7f6da313d1b52e4387fde7791f7.jpeg', 'initial', 1),
(554, '2024-07-11 11:21:11.568', '2024-07-27 14:25:10.463', NULL, 11, 'f05cbf430bc89824095745530451328f.jpeg', 'initial', 1),
(555, '2024-07-11 11:21:11.571', '2024-07-27 14:25:10.463', NULL, 11, '6635d09218c480dac26d23921c9127ff.jpeg', 'initial', 1),
(556, '2024-07-11 11:21:11.575', '2024-07-27 14:25:10.463', NULL, 11, '957478dccdd71062b45acf2af17b34af.jpeg', 'initial', 1),
(557, '2024-07-11 11:21:11.579', '2024-07-27 14:25:10.463', NULL, 11, 'b2a8108a369a1e34d0aa20439851b4c4.jpeg', 'initial', 1),
(558, '2024-07-11 11:21:11.583', '2024-07-27 14:25:10.463', NULL, 11, '2876dbfb45230a759813f8536c23e74a.jpg', 'initial', 1),
(559, '2024-07-11 11:21:11.586', '2024-07-27 14:25:10.463', NULL, 11, '326f8f032672f332c669d13c6f0e3d88.jpg', 'initial', 1),
(560, '2024-07-11 11:21:11.590', '2024-07-27 14:25:10.463', NULL, 11, '7497808b4ac5dedbf2bd7ba402a6e7ce.jpeg', 'initial', 1),
(561, '2024-07-11 11:21:11.606', '2024-07-27 14:25:10.463', NULL, 11, '8917c20a6be95d2bc32f17ba1eb7410e.jpg', 'initial', 1),
(562, '2024-07-11 11:21:11.611', '2024-07-27 14:25:10.463', NULL, 11, '5996b3a69fc0c00686d3669510217fe1.jpeg', 'initial', 1),
(563, '2024-07-11 11:21:11.618', '2024-07-27 14:25:10.463', NULL, 11, '41bf610f34526a80e24fd679446b9174.jpeg', 'initial', 1),
(564, '2024-07-11 11:21:11.624', '2024-07-27 14:25:10.463', NULL, 11, 'a3520fd0e4ae0447eaeae0b90620ef37.jpeg', 'initial', 1),
(565, '2024-07-11 11:21:11.635', '2024-07-27 14:25:10.463', NULL, 11, 'ada2d620aaea74c7ca04d625c953ac04.jpeg', 'initial', 1),
(566, '2024-07-11 11:21:11.639', '2024-07-27 14:25:10.463', NULL, 11, 'e39ee04ea6fce268fa506dfb2a5462c8.jpeg', 'initial', 1),
(567, '2024-07-11 11:21:11.648', '2024-07-27 14:25:10.463', NULL, 11, 'cab32043595c185058b982e8fd15fc3c.jpeg', 'initial', 1),
(568, '2024-07-11 11:21:11.655', '2024-07-27 14:25:10.463', NULL, 11, '8c0035ff446821b31ac23a6a5953cac7.jpeg', 'initial', 1),
(569, '2024-07-11 11:21:11.659', '2024-07-27 14:25:10.463', NULL, 11, '32237d2ab771ce3ad0980c2cdb11e8ef.jpeg', 'initial', 1),
(570, '2024-07-11 11:21:11.667', '2024-07-27 14:25:10.463', NULL, 11, 'be71aac1e1fb722a5463cb773ea4803e.jpeg', 'initial', 1),
(571, '2024-07-11 11:21:11.674', '2024-07-27 14:25:10.463', NULL, 11, '7cc56ebb1f6feb2594bd4a9314413075.jpeg', 'initial', 1),
(572, '2024-07-11 11:21:11.677', '2024-07-27 14:25:10.463', NULL, 11, 'ac5d657b4e613b9ede78b93fdfe7b7fd.jpeg', 'initial', 1),
(573, '2024-07-11 11:21:11.684', '2024-07-27 14:25:10.463', NULL, 11, '995d228800a215aea1a4e5f9b51a8850.jpg', 'initial', 1),
(574, '2024-07-11 11:21:11.689', '2024-07-27 14:25:10.463', NULL, 11, '289df58bd0cd57d8243854605a808c1e.jpg', 'initial', 1),
(575, '2024-07-11 11:21:11.695', '2024-07-27 14:25:10.463', NULL, 11, 'ee67fd1b1a99fed56d6f2b5943c8a978.jpeg', 'initial', 1),
(576, '2024-07-11 11:21:11.701', '2024-07-27 14:25:10.463', NULL, 11, '2da6b871cb75e0224fd30a32349be1dd.jpg', 'initial', 1),
(577, '2024-07-11 11:21:11.709', '2024-07-27 14:25:10.463', NULL, 11, 'f2cb2c356c6296626d78720872d0c76b.jpg', 'initial', 1),
(578, '2024-07-11 11:21:11.719', '2024-07-27 14:25:10.463', NULL, 11, '71ae10807ba551c870983f5a999c9acb.jpg', 'initial', 1),
(579, '2024-07-11 11:22:44.929', '2024-07-27 14:25:10.463', NULL, 12, '01101fda663aa053c121f5e3faf00245.jpeg', 'initial', 1),
(580, '2024-07-11 11:22:44.932', '2024-07-27 14:25:10.463', NULL, 12, '316766af4a4aca80c7a1e28402133480.jpeg', 'initial', 1),
(581, '2024-07-11 11:22:44.935', '2024-07-27 14:25:10.463', NULL, 12, '7bc3cb245ddc460dcf730ff67a21eed8.jpeg', 'initial', 1),
(582, '2024-07-11 11:22:44.937', '2024-07-27 14:25:10.463', NULL, 12, 'd0360170ce17581710d2b357107dcd5b.jpeg', 'initial', 1),
(583, '2024-07-11 11:22:44.939', '2024-07-27 14:25:10.463', NULL, 12, '052797234a3e1f04589ad7d20fa65438.jpeg', 'initial', 1),
(584, '2024-07-11 11:22:44.941', '2024-07-27 14:25:10.463', NULL, 12, '456b078aab2bbd46e70f0fc1c3bcd56d.jpeg', 'initial', 1),
(585, '2024-07-11 11:22:44.944', '2024-07-27 14:25:10.463', NULL, 12, '0d8990dd0b02d0188ebaf58056ebf309.jpeg', 'initial', 1),
(586, '2024-07-11 11:22:44.946', '2024-07-27 14:25:10.463', NULL, 12, '9a9b3d9fd898cd910464b3206881891c.jpeg', 'initial', 1),
(587, '2024-07-11 11:22:44.949', '2024-07-27 14:25:10.463', NULL, 12, '7276b6ef613c1ca108502e3333b4f599.jpeg', 'initial', 1),
(588, '2024-07-11 11:22:44.951', '2024-07-27 14:25:10.463', NULL, 12, '4f2fc37741407359d2b360a600528a12.jpeg', 'initial', 1),
(589, '2024-07-11 11:22:44.954', '2024-07-27 14:25:10.463', NULL, 12, '3e8bab897d279be8b38d7586b8a05127.jpeg', 'initial', 1),
(590, '2024-07-11 11:22:44.956', '2024-07-27 14:25:10.463', NULL, 12, '085e73445de6ef35dfaa98acc7d09066.jpeg', 'initial', 1),
(591, '2024-07-11 11:22:44.957', '2024-07-27 14:25:10.463', NULL, 12, '3ce8bac3710b18955e567870486f77a0.jpeg', 'initial', 1),
(592, '2024-07-11 11:22:44.959', '2024-07-27 14:25:10.463', NULL, 12, 'e15fa66fdb4b77d4fa28876ab596d698.jpeg', 'initial', 1),
(593, '2024-07-11 11:22:44.961', '2024-07-27 14:25:10.463', NULL, 12, '5ad934f2faada64dc6864b38d12875d8.jpeg', 'initial', 1),
(594, '2024-07-11 11:22:44.965', '2024-07-27 14:25:10.463', NULL, 12, '47292e6b0f5bf83a1d892ceb70395e96.jpeg', 'initial', 1),
(595, '2024-07-11 11:22:44.967', '2024-07-27 14:25:10.463', NULL, 12, 'c5b514ac3fa1148190cca65972e046b9.jpeg', 'initial', 1),
(596, '2024-07-11 11:22:44.969', '2024-07-27 14:25:10.463', NULL, 12, 'f531debf02fab241f2e51458961f40c1.jpeg', 'initial', 1),
(597, '2024-07-11 11:22:44.971', '2024-07-27 14:25:10.463', NULL, 12, '12550a2c137bf5f1673225542d066e04.jpeg', 'initial', 1),
(598, '2024-07-11 11:22:44.986', '2024-07-27 14:25:10.463', NULL, 12, 'c4eb492ee25ca8b923f72a00b5109e49.jpeg', 'initial', 1),
(599, '2024-07-11 11:22:44.989', '2024-07-27 14:25:10.463', NULL, 12, '4d42567da6a7e122c7a64ed6e5220384.jpeg', 'initial', 1),
(600, '2024-07-11 11:22:44.991', '2024-07-27 14:25:10.463', NULL, 12, 'c6370a6c0b1941dd906e2f62ee8a681e.jpeg', 'initial', 1),
(601, '2024-07-11 11:22:44.993', '2024-07-27 14:25:10.463', NULL, 12, '1323185c99be75c9298b691f81471e4e.jpeg', 'initial', 1),
(602, '2024-07-11 11:22:44.995', '2024-07-27 14:25:10.463', NULL, 12, '9ca23f5a037122d817d18dbb2779ebb9.jpeg', 'initial', 1),
(603, '2024-07-11 11:22:44.998', '2024-07-27 14:25:10.463', NULL, 12, '139123fab08ca43c1a73ae74c2aef44a.jpeg', 'initial', 1),
(604, '2024-07-11 11:22:45.001', '2024-07-27 14:25:10.463', NULL, 12, '1dd51604d8d88aaa2604b05335e554ee.jpeg', 'initial', 1),
(605, '2024-07-11 11:22:45.003', '2024-07-27 14:25:10.463', NULL, 12, 'ea46d6397961e7578753d65ada136c06.jpeg', 'initial', 1),
(606, '2024-07-11 11:22:45.005', '2024-07-27 14:25:10.463', NULL, 12, '4e16df729b83ff28f6d665a67182f225.jpeg', 'initial', 1),
(607, '2024-07-11 11:22:45.006', '2024-07-27 14:25:10.463', NULL, 12, '68296ed7cd84d6d63ba055d0ab70835e.jpeg', 'initial', 1),
(608, '2024-07-11 11:22:45.008', '2024-07-27 14:25:10.463', NULL, 12, 'b444ca61912781078ad1f6aa1819bca8.jpeg', 'initial', 1),
(609, '2024-07-11 11:22:45.010', '2024-07-27 14:25:10.463', NULL, 12, 'b0c421ab48864b33e37cd6b7e061b1ad.jpeg', 'initial', 1),
(610, '2024-07-11 11:22:45.013', '2024-07-27 14:25:10.463', NULL, 12, '92d52df5763a8af98161a6ea994b52c5.jpeg', 'initial', 1),
(611, '2024-07-11 13:57:21.974', '2024-07-27 14:25:10.463', NULL, 13, 'a57f2e0a3cdc1c0942c2fd06eb2216eb.jpg', 'initial', 1),
(612, '2024-07-11 13:57:21.976', '2024-07-27 14:25:10.463', NULL, 13, '5c76e511c917050ab9642ef0d9607d90.jpg', 'initial', 1),
(613, '2024-07-11 13:57:21.978', '2024-07-27 14:25:10.463', NULL, 13, '92d474e103eb031e594f0e60690bb652.jpg', 'initial', 1),
(614, '2024-07-11 13:57:21.980', '2024-07-27 14:25:10.463', NULL, 13, '96ff366b3b90ef02560d2f9746f18fd1.jpeg', 'initial', 1),
(615, '2024-07-11 13:57:21.986', '2024-07-27 14:25:10.463', NULL, 13, 'ce34c4b68415eeaa4e6a9e16461317d8.jpg', 'initial', 1),
(616, '2024-07-11 13:57:21.988', '2024-07-27 14:25:10.463', NULL, 13, '2997d12f61fdebb8136fd2d3ce1088d8.jpg', 'initial', 1),
(617, '2024-07-11 13:57:21.990', '2024-07-27 14:25:10.463', NULL, 13, '709b0547b57aee487146fcd17dfe9b42.jpg', 'initial', 1),
(618, '2024-07-11 13:57:21.993', '2024-07-27 14:25:10.463', NULL, 13, '0be355e57211891a82cb8a11b1ffc087.jpeg', 'initial', 1),
(619, '2024-07-11 13:57:21.995', '2024-07-27 14:25:10.463', NULL, 13, '9b2e5f5ba169e7ba617af8e156bd338d.jpeg', 'initial', 1),
(620, '2024-07-11 13:57:21.996', '2024-07-27 14:25:10.463', NULL, 13, '5e7c0967f9236f89c8c116baf7432df1.jpg', 'initial', 1);
INSERT INTO `training_images` (`id`, `created_at`, `updated_at`, `deleted_at`, `species_id`, `file_name`, `meta`, `is_trained`) VALUES
(621, '2024-07-11 13:57:21.999', '2024-07-27 14:25:10.463', NULL, 13, 'f9531de2a5e91a4a92d1ebe0d75ffc37.jpeg', 'initial', 1),
(622, '2024-07-11 13:57:22.002', '2024-07-27 14:25:10.463', NULL, 13, '30c4a5e29ab356bb1dbad0de3cec721e.jpeg', 'initial', 1),
(623, '2024-07-11 13:57:22.005', '2024-07-27 14:25:10.463', NULL, 13, 'de9299d6b074d60bcd5e33e2bef36c0e.jpg', 'initial', 1),
(624, '2024-07-11 13:57:22.007', '2024-07-27 14:25:10.463', NULL, 13, 'bd19f6fe614f26510d84c08f8e9b2217.jpg', 'initial', 1),
(625, '2024-07-11 13:57:22.009', '2024-07-27 14:25:10.463', NULL, 13, 'cf50c2e66d0d5052b4a159445c44e845.jpeg', 'initial', 1),
(626, '2024-07-11 13:57:22.019', '2024-07-27 14:25:10.463', NULL, 13, 'ddae778c277fcec8a367419b4cf6a579.jpg', 'initial', 1),
(627, '2024-07-11 13:57:22.021', '2024-07-27 14:25:10.463', NULL, 13, '95f53b09b86188ff3a5628e70c8baeb8.jpg', 'initial', 1),
(628, '2024-07-11 13:57:22.023', '2024-07-27 14:25:10.463', NULL, 13, '661f80ae81e073ef823be8c702d80d79.jpg', 'initial', 1),
(629, '2024-07-11 13:57:22.025', '2024-07-27 14:25:10.463', NULL, 13, 'e4be44781083f01b69a3a4602df45eac.jpeg', 'initial', 1),
(630, '2024-07-11 13:57:22.027', '2024-07-27 14:25:10.463', NULL, 13, '0d7455e8f134e1578f64eca9f168d7a9.jpg', 'initial', 1),
(631, '2024-07-11 13:57:22.029', '2024-07-27 14:25:10.463', NULL, 13, 'd9dc9293880ccc530ecdbec6f9e20ea3.jpg', 'initial', 1),
(632, '2024-07-11 13:57:22.030', '2024-07-27 14:25:10.463', NULL, 13, '6b2f7a48b8071fec21f83fe43c753b81.jpeg', 'initial', 1),
(633, '2024-07-11 13:57:22.033', '2024-07-27 14:25:10.463', NULL, 13, 'b074a20931c41847b8641f7a1e2bede5.jpg', 'initial', 1),
(634, '2024-07-11 13:57:22.037', '2024-07-27 14:25:10.463', NULL, 13, '9d9b5c29cb6befb3581f618aedc3641f.jpeg', 'initial', 1),
(635, '2024-07-11 13:57:22.039', '2024-07-27 14:25:10.463', NULL, 13, '0a2f98f0a07543282130d22edb9f5daf.jpeg', 'initial', 1),
(636, '2024-07-11 13:57:22.041', '2024-07-27 14:25:10.463', NULL, 13, '4576a2deadc5edc9a6f76a70560431fa.jpg', 'initial', 1),
(637, '2024-07-11 13:57:22.044', '2024-07-27 14:25:10.463', NULL, 13, '730b22761ff1130033fa4af646197532.jpeg', 'initial', 1),
(638, '2024-07-11 13:57:22.045', '2024-07-27 14:25:10.463', NULL, 13, '94ff3d833542d2e76555bb741bee8f57.jpeg', 'initial', 1),
(639, '2024-07-11 13:57:22.051', '2024-07-27 14:25:10.463', NULL, 13, 'a8ecfedf22be725f122e9b422f122a6a.jpg', 'initial', 1),
(640, '2024-07-11 13:57:22.054', '2024-07-27 14:25:10.463', NULL, 13, 'e2b5417324d8d7f006adafe063b1e71b.jpeg', 'initial', 1),
(641, '2024-07-11 13:57:22.056', '2024-07-27 14:25:10.463', NULL, 13, '30d7a18923be8226e67275075291e6a5.jpeg', 'initial', 1),
(642, '2024-07-11 13:57:22.060', '2024-07-27 14:25:10.463', NULL, 13, '732c4988d994b42a358d85bb15e1f6cc.jpeg', 'initial', 1),
(643, '2024-07-11 14:21:09.436', '2024-07-27 14:25:10.463', NULL, 14, '10d3cb5a42542004a874a019c32cc9e7.jpg', 'initial', 1),
(644, '2024-07-11 14:21:09.441', '2024-07-27 14:25:10.463', NULL, 14, '9bd8b216c9292cf1093e51b91394effe.jpg', 'initial', 1),
(645, '2024-07-11 14:21:09.444', '2024-07-27 14:25:10.463', NULL, 14, '270f5bcbc917576d02c53b160db135db.jpeg', 'initial', 1),
(646, '2024-07-11 14:21:09.445', '2024-07-27 14:25:10.463', NULL, 14, 'dca35a1ca126ef79762cc8fffe733188.jpg', 'initial', 1),
(647, '2024-07-11 14:21:09.449', '2024-07-27 14:25:10.463', NULL, 14, '345454e959bb79a9dcc3fe2727e9accb.jpg', 'initial', 1),
(648, '2024-07-11 14:21:09.456', '2024-07-27 14:25:10.463', NULL, 14, 'c4b9902a55433424bde2c998be18bb34.jpg', 'initial', 1),
(649, '2024-07-11 14:21:09.461', '2024-07-27 14:25:10.463', NULL, 14, 'fd93d9cab9aa238b7793469d450e26d2.jpg', 'initial', 1),
(650, '2024-07-11 14:21:09.463', '2024-07-27 14:25:10.463', NULL, 14, '7300ccad0b28dd0c18b870359482cd3c.jpg', 'initial', 1),
(651, '2024-07-11 14:21:09.466', '2024-07-27 14:25:10.463', NULL, 14, '3ed2ea4b3f4592a70ae7c745a7232943.jpg', 'initial', 1),
(652, '2024-07-11 14:21:09.470', '2024-07-27 14:25:10.463', NULL, 14, '96b09f8405c11b2a7f49a66fe74e72d8.jpg', 'initial', 1),
(653, '2024-07-11 14:21:09.473', '2024-07-27 14:25:10.463', NULL, 14, '4257fc0b1208b1a00b91d42eb3f7cda1.jpg', 'initial', 1),
(654, '2024-07-11 14:21:09.475', '2024-07-27 14:25:10.463', NULL, 14, 'becbbbe5d3b5ec57f7f8df222b6b60fd.jpg', 'initial', 1),
(655, '2024-07-11 14:21:09.479', '2024-07-27 14:25:10.463', NULL, 14, 'debc229bcfeb10166d2cccd90a97ad06.jpg', 'initial', 1),
(656, '2024-07-11 14:21:09.482', '2024-07-27 14:25:10.463', NULL, 14, 'd5cf8502ad971b9915d43df0fcf30f54.jpg', 'initial', 1),
(657, '2024-07-11 14:21:09.486', '2024-07-27 14:25:10.463', NULL, 14, 'a64dc359526caafce8236f5139d8f036.jpg', 'initial', 1),
(658, '2024-07-11 14:21:09.491', '2024-07-27 14:25:10.463', NULL, 14, '27870de629fa52590a62143091604c11.jpg', 'initial', 1),
(659, '2024-07-11 14:21:09.494', '2024-07-27 14:25:10.463', NULL, 14, 'acf34106ad4819ef2bd3396a926f61ec.jpg', 'initial', 1),
(660, '2024-07-11 14:21:09.498', '2024-07-27 14:25:10.463', NULL, 14, '031cf2726d45d5a39477893417fd0545.jpg', 'initial', 1),
(661, '2024-07-11 14:21:09.503', '2024-07-27 14:25:10.463', NULL, 14, 'ffb6c7e783d9a761a827616c5640ab44.jpg', 'initial', 1),
(662, '2024-07-11 14:21:09.509', '2024-07-27 14:25:10.463', NULL, 14, '25cbc1de56701051fce3751dd9ae0e0d.jpg', 'initial', 1),
(663, '2024-07-11 14:21:09.512', '2024-07-27 14:25:10.463', NULL, 14, '0b84c82ea38e3203fc1787de4cff870c.jpg', 'initial', 1),
(664, '2024-07-11 14:21:09.521', '2024-07-27 14:25:10.463', NULL, 14, '9582cf331992db94fb28daec3088b3d8.jpg', 'initial', 1),
(665, '2024-07-11 14:21:09.525', '2024-07-27 14:25:10.463', NULL, 14, '7c47b9025308d832993e1327ffdc5cfc.jpg', 'initial', 1),
(666, '2024-07-11 14:21:09.538', '2024-07-27 14:25:10.463', NULL, 14, '502c266dffb392610884a4582a629265.jpg', 'initial', 1),
(667, '2024-07-11 14:21:09.546', '2024-07-27 14:25:10.463', NULL, 14, '5524b9df3f8b436528040f026ec08476.jpg', 'initial', 1),
(668, '2024-07-11 14:21:09.548', '2024-07-27 14:25:10.463', NULL, 14, '7a75a7ab4d18d82da686f8f375b008c7.jpg', 'initial', 1),
(669, '2024-07-11 14:21:09.553', '2024-07-27 14:25:10.463', NULL, 14, 'bec8197fd23bbb0cba2116a232a9f40c.jpg', 'initial', 1),
(670, '2024-07-11 14:21:09.558', '2024-07-27 14:25:10.463', NULL, 14, 'aa7722cc188415d28af6990036c09bdc.jpg', 'initial', 1),
(671, '2024-07-11 14:21:09.563', '2024-07-27 14:25:10.463', NULL, 14, '5727ba4a591377116fa045640b6601de.jpg', 'initial', 1),
(672, '2024-07-11 14:21:09.567', '2024-07-27 14:25:10.463', NULL, 14, '574e8b28dc77438f9e5a0bbc13f06d55.jpg', 'initial', 1),
(673, '2024-07-11 14:21:09.570', '2024-07-27 14:25:10.463', NULL, 14, '300db784bb2b4efa35f123e4e7ee55f8.jpg', 'initial', 1),
(674, '2024-07-11 14:21:09.574', '2024-07-27 14:25:10.463', NULL, 14, 'f971e8957d654bf9464416aac4cbcd6b.jpg', 'initial', 1),
(675, '2024-07-11 15:13:58.851', '2024-07-27 14:25:10.463', NULL, 15, 'ab968de34a38bd5593c3f9340e6a3395.jpeg', 'initial', 1),
(676, '2024-07-11 15:13:58.858', '2024-07-27 14:25:10.463', NULL, 15, '9e5dd10955a6d85860b4bc886a71c100.jpg', 'initial', 1),
(677, '2024-07-11 15:13:58.862', '2024-07-27 14:25:10.463', NULL, 15, '94af56bca2f1e39c43b0742243e82a0a.jpg', 'initial', 1),
(678, '2024-07-11 15:13:58.866', '2024-07-27 14:25:10.463', NULL, 15, '82ffc4e42fd427ddf224b9120aba877a.jpg', 'initial', 1),
(679, '2024-07-11 15:13:58.871', '2024-07-27 14:25:10.463', NULL, 15, '74c58e549491b6b4d281c48dc1add9cd.jpg', 'initial', 1),
(680, '2024-07-11 15:13:58.875', '2024-07-27 14:25:10.463', NULL, 15, 'b94764e8844a2914620e51fb13642b1e.jpg', 'initial', 1),
(681, '2024-07-11 15:13:58.879', '2024-07-27 14:25:10.463', NULL, 15, 'a4153c02d765c867a9683e2ccb50eab3.jpeg', 'initial', 1),
(682, '2024-07-11 15:13:58.884', '2024-07-27 14:25:10.463', NULL, 15, '8abceaafd72813d889d229fac608ae12.jpeg', 'initial', 1),
(683, '2024-07-11 15:13:58.889', '2024-07-27 14:25:10.463', NULL, 15, '9e9af756ea605ae6c3b9f24c8fe7cdc4.jpg', 'initial', 1),
(684, '2024-07-11 15:13:58.893', '2024-07-27 14:25:10.463', NULL, 15, 'd5dbe28f913d340dbffbda7d6ef7bf4c.jpg', 'initial', 1),
(685, '2024-07-11 15:13:58.897', '2024-07-27 14:25:10.463', NULL, 15, 'd6a0f4f150f2b12434a9a4a8ef8f3be9.jpg', 'initial', 1),
(686, '2024-07-11 15:13:58.900', '2024-07-27 14:25:10.463', NULL, 15, '5af839bd2b484182484b48d76945bba4.jpg', 'initial', 1),
(687, '2024-07-11 15:13:58.905', '2024-07-27 14:25:10.463', NULL, 15, '06f813f0327ab9ac9c1cfdde7b803ad0.jpg', 'initial', 1),
(688, '2024-07-11 15:13:58.910', '2024-07-27 14:25:10.463', NULL, 15, '22b08c9bdeacf742e7025c473c746ad7.jpg', 'initial', 1),
(689, '2024-07-11 15:13:58.913', '2024-07-27 14:25:10.463', NULL, 15, 'b058934c05eb9560fb45ac96c940f499.jpg', 'initial', 1),
(690, '2024-07-11 15:13:58.918', '2024-07-27 14:25:10.463', NULL, 15, '392c1dfdfb1ca7f339d4d64b98e5b8bd.jpg', 'initial', 1),
(691, '2024-07-11 15:13:58.924', '2024-07-27 14:25:10.463', NULL, 15, '9ab32c96d937c1ecab80e6d3564ced9a.jpg', 'initial', 1),
(692, '2024-07-11 15:13:58.929', '2024-07-27 14:25:10.463', NULL, 15, '5bf08f289e2cd9a28bd611d36d960218.jpg', 'initial', 1),
(693, '2024-07-11 15:13:58.933', '2024-07-27 14:25:10.463', NULL, 15, '3c198f9a61df7347298fb6a610902353.jpg', 'initial', 1),
(694, '2024-07-11 15:13:58.940', '2024-07-27 14:25:10.463', NULL, 15, '7f7c0f479a26910c3ca8b3cadddf4194.jpeg', 'initial', 1),
(695, '2024-07-11 15:13:58.950', '2024-07-27 14:25:10.463', NULL, 15, '7ad89bfb18a5b793d1f9e26a3d7db697.jpeg', 'initial', 1),
(696, '2024-07-11 15:13:58.956', '2024-07-27 14:25:10.463', NULL, 15, 'a78a49ff01cd685aa9f54cc36ca583af.jpeg', 'initial', 1),
(697, '2024-07-11 15:13:58.961', '2024-07-27 14:25:10.463', NULL, 15, '7e496f2cbd2659389722db784e9dcbb1.jpeg', 'initial', 1),
(698, '2024-07-11 15:13:58.965', '2024-07-27 14:25:10.463', NULL, 15, '8a30d6ff1df2cc66fd2d425cbfff487e.jpeg', 'initial', 1),
(699, '2024-07-11 15:13:58.971', '2024-07-27 14:25:10.463', NULL, 15, 'b166b56ba5256ff708a793403bdfcedc.jpeg', 'initial', 1),
(700, '2024-07-11 15:13:58.976', '2024-07-27 14:25:10.463', NULL, 15, '68658db8659fa000188156e81a456f9f.jpeg', 'initial', 1),
(701, '2024-07-11 15:13:58.980', '2024-07-27 14:25:10.463', NULL, 15, 'a66aa813b9766911061137a3ace9db78.jpeg', 'initial', 1),
(702, '2024-07-11 15:13:58.985', '2024-07-27 14:25:10.463', NULL, 15, 'e8d90e3dd7ff438cb0b21ec89daa2087.jpeg', 'initial', 1),
(703, '2024-07-11 15:13:58.991', '2024-07-27 14:25:10.463', NULL, 15, 'cff2887e085d6ff5f88b14a996f39398.jpeg', 'initial', 1),
(704, '2024-07-11 15:13:58.995', '2024-07-27 14:25:10.463', NULL, 15, '0c56fe8e9b737455befc27dc73361905.jpg', 'initial', 1),
(705, '2024-07-11 15:13:58.998', '2024-07-27 14:25:10.463', NULL, 15, '84e0d4b99c8d71b40626aa05728dd1ea.jpg', 'initial', 1),
(706, '2024-07-11 15:13:59.001', '2024-07-27 14:25:10.463', NULL, 15, '3ca78c1b6061beb2f96d4153b6a551d9.jpg', 'initial', 1),
(707, '2024-07-11 15:16:05.205', '2024-07-27 14:25:10.463', NULL, 16, '34da29263c46e7a6cf8357423474e34c.jpg', 'initial', 1),
(708, '2024-07-11 15:16:05.227', '2024-07-27 14:25:10.463', NULL, 16, 'd7762cec797f24cfbe96cd683e932fbd.jpg', 'initial', 1),
(709, '2024-07-11 15:16:05.231', '2024-07-27 14:25:10.463', NULL, 16, 'c54a4b9257ef98752a8dfa58c7a599e7.jpg', 'initial', 1),
(710, '2024-07-11 15:16:05.235', '2024-07-27 14:25:10.463', NULL, 16, '543ff8b37589f54a3ed5be0dd6795240.jpg', 'initial', 1),
(711, '2024-07-11 15:16:05.240', '2024-07-27 14:25:10.463', NULL, 16, 'b0541b4053f5bcaa8f61644aaf319ccb.jpg', 'initial', 1),
(712, '2024-07-11 15:16:05.245', '2024-07-27 14:25:10.463', NULL, 16, '2369e7a0f1e9ef00a1748d1251e9a9ed.jpg', 'initial', 1),
(713, '2024-07-11 15:16:05.248', '2024-07-27 14:25:10.463', NULL, 16, '81d6c63685ea4f12fde65a177b5c9412.jpg', 'initial', 1),
(714, '2024-07-11 15:16:05.252', '2024-07-27 14:25:10.463', NULL, 16, '404a35dc97a36aeaea173aac1bd14e5d.jpg', 'initial', 1),
(715, '2024-07-11 15:16:05.257', '2024-07-27 14:25:10.463', NULL, 16, 'ee600dfa1e4474fa6b43bb526b110808.jpg', 'initial', 1),
(716, '2024-07-11 15:16:05.261', '2024-07-27 14:25:10.463', NULL, 16, 'ce3f2ae4d74bc9d6229ac5554ab878c0.jpg', 'initial', 1),
(717, '2024-07-11 15:16:05.266', '2024-07-27 14:25:10.463', NULL, 16, 'e9c0aec0def9d8fb9d7691b17fe4da44.jpg', 'initial', 1),
(718, '2024-07-11 15:16:05.269', '2024-07-27 14:25:10.463', NULL, 16, '3f4f94b940163fe6b85b31562049ef15.jpg', 'initial', 1),
(719, '2024-07-11 15:16:05.278', '2024-07-27 14:25:10.463', NULL, 16, '1400e9731a9b7072e6de14d6d5e58dbc.jpg', 'initial', 1),
(720, '2024-07-11 15:16:05.286', '2024-07-27 14:25:10.463', NULL, 16, '1700741e1a6f2e49a2aae939389656c9.jpg', 'initial', 1),
(721, '2024-07-11 15:16:05.291', '2024-07-27 14:25:10.463', NULL, 16, '9c58ca7b97e011fe7fb3022ab4056c5e.jpg', 'initial', 1),
(722, '2024-07-11 15:16:05.294', '2024-07-27 14:25:10.463', NULL, 16, '114c3627855c2516a3f1632a72959758.jpg', 'initial', 1),
(723, '2024-07-11 15:16:05.298', '2024-07-27 14:25:10.463', NULL, 16, 'ec3a80946b5aa2ac859edef5737a841f.jpg', 'initial', 1),
(724, '2024-07-11 15:16:05.302', '2024-07-27 14:25:10.463', NULL, 16, 'e2d91165018f9f564c0ea2d73e271111.jpg', 'initial', 1),
(725, '2024-07-11 15:16:05.307', '2024-07-27 14:25:10.463', NULL, 16, '9b794afddb8159d1d1d3e28fefa57880.jpg', 'initial', 1),
(726, '2024-07-11 15:16:05.311', '2024-07-27 14:25:10.463', NULL, 16, '4db1fbd08ca2a846fe9ed216744d0101.jpg', 'initial', 1),
(727, '2024-07-11 15:16:05.316', '2024-07-27 14:25:10.463', NULL, 16, 'e8875993e0e2087a985417fd2a640284.JPG', 'initial', 1),
(728, '2024-07-11 15:16:05.323', '2024-07-27 14:25:10.463', NULL, 16, '7174801c447ba4f68f842f19bfa9c57c.jpg', 'initial', 1),
(729, '2024-07-11 15:16:05.328', '2024-07-27 14:25:10.463', NULL, 16, '89791a818c0078153b561eba9ba874e6.jpg', 'initial', 1),
(730, '2024-07-11 15:16:05.334', '2024-07-27 14:25:10.463', NULL, 16, 'cd513d5f45ad665db0079a4b778752ac.jpg', 'initial', 1),
(731, '2024-07-11 15:16:05.338', '2024-07-27 14:25:10.463', NULL, 16, '6c1c82b732cd4a2c22cc5445514c5686.jpg', 'initial', 1),
(732, '2024-07-11 15:16:05.344', '2024-07-27 14:25:10.463', NULL, 16, 'e814163c2cc2921972a648dd1d883d52.jpg', 'initial', 1),
(733, '2024-07-11 15:16:05.347', '2024-07-27 14:25:10.463', NULL, 16, '73618d1aa1081cf303e6aa169902dd44.jpg', 'initial', 1),
(734, '2024-07-11 15:16:05.351', '2024-07-27 14:25:10.463', NULL, 16, '1fd4ac0900cefba1ebf775e43d979f37.jpg', 'initial', 1),
(735, '2024-07-11 15:16:05.355', '2024-07-27 14:25:10.463', NULL, 16, 'b9cd7b71fd9ed2f78969ddf6c3000276.jpg', 'initial', 1),
(736, '2024-07-11 15:16:05.360', '2024-07-27 14:25:10.463', NULL, 16, 'b91b3e3c90796b7406b80e5a9c1c7161.jpg', 'initial', 1),
(737, '2024-07-11 15:16:05.365', '2024-07-27 14:25:10.463', NULL, 16, '53081a84e47e09d94555679491418e04.jpeg', 'initial', 1),
(738, '2024-07-12 19:11:44.695', '2024-07-27 14:25:10.463', NULL, 5, 'f850c51f605e9663f1f22cb71f5e480f.jpg', 'initial', 1),
(739, '2024-07-12 19:11:44.703', '2024-07-27 14:25:10.463', NULL, 5, 'a6fc21b0488165d0270b8ed9f7d6689b.jpg', 'initial', 1),
(740, '2024-07-12 19:11:44.707', '2024-07-27 14:25:10.463', NULL, 5, 'c50fa48d27e147b26640518ae2976333.jpg', 'initial', 1),
(741, '2024-07-12 19:11:44.710', '2024-07-27 14:25:10.463', NULL, 5, 'ba5bca4efc65a89216da3770dd9cb428.jpg', 'initial', 1),
(742, '2024-07-12 19:11:44.714', '2024-07-27 14:25:10.463', NULL, 5, '790e5f9c74386d4d277a362bf37ffbbc.jpg', 'initial', 1),
(743, '2024-07-12 19:11:44.716', '2024-07-27 14:25:10.463', NULL, 5, '304e620f723e526757ecf5a75f3285cd.jpg', 'initial', 1),
(744, '2024-07-12 19:11:44.719', '2024-07-27 14:25:10.463', NULL, 5, 'c145140762a3ff9c3cbfaec88628ecb9.jpg', 'initial', 1),
(745, '2024-07-12 19:11:44.723', '2024-07-27 14:25:10.463', NULL, 5, '6c0952e1d8fd44e456436e51f076a9b8.jpg', 'initial', 1),
(746, '2024-07-12 19:11:44.727', '2024-07-27 14:25:10.463', NULL, 5, 'f8264a8acf531db1a500e2e51ac163b9.jpg', 'initial', 1),
(747, '2024-07-12 19:11:44.729', '2024-07-27 14:25:10.463', NULL, 5, '8e084b7bd418e8e0da703baf0c7e64f6.jpg', 'initial', 1),
(748, '2024-07-12 19:11:44.732', '2024-07-27 14:25:10.463', NULL, 5, '6cf143aba53b0023743e713f4d1adc78.jpg', 'initial', 1),
(749, '2024-07-12 19:11:44.735', '2024-07-27 14:25:10.463', NULL, 5, '788d07a9fac6d78dbbd5d8123bcacf12.jpg', 'initial', 1),
(750, '2024-07-12 19:11:44.739', '2024-07-27 14:25:10.463', NULL, 5, '7911d2bb110aaf00e4886a16ff61376e.jpg', 'initial', 1),
(751, '2024-07-12 19:11:44.743', '2024-07-27 14:25:10.463', NULL, 5, '6aa5efc7d8ab0833994f68639c816f71.jpg', 'initial', 1),
(752, '2024-07-12 19:11:44.747', '2024-07-27 14:25:10.463', NULL, 5, '3d5d5115643935886d733170b51b62e8.jpg', 'initial', 1),
(753, '2024-07-12 19:11:44.749', '2024-07-27 14:25:10.463', NULL, 5, '3c35aa2594043329ec10e508c9e9c073.jpg', 'initial', 1),
(754, '2024-07-12 19:11:44.752', '2024-07-27 14:25:10.463', NULL, 5, '81663fd45ee2206d9689e77d2339cd13.jpg', 'initial', 1),
(755, '2024-07-12 19:11:44.756', '2024-07-27 14:25:10.463', NULL, 5, '4b4f79090f77287e85927ee6a2a4f0d7.jpg', 'initial', 1),
(756, '2024-07-12 19:11:44.759', '2024-07-27 14:25:10.463', NULL, 5, '219c46be9108c3f6e00bda300d1f425a.jpg', 'initial', 1),
(757, '2024-07-12 19:11:44.762', '2024-07-27 14:25:10.463', NULL, 5, 'd3c135bc2e0791e90874214d025028c1.jpg', 'initial', 1),
(758, '2024-07-12 19:11:44.765', '2024-07-27 14:25:10.463', NULL, 5, '2275e75a77cac9e1b3a84cf1a4cd5bd8.jpg', 'initial', 1),
(759, '2024-07-12 19:11:44.769', '2024-07-27 14:25:10.463', NULL, 5, 'cb6459a0ed3b14207bb7e0f8a825f0b3.jpg', 'initial', 1),
(760, '2024-07-12 19:11:44.773', '2024-07-27 14:25:10.463', NULL, 5, '2241c0248cc915dc2abedb5f4b7ee6b5.jpg', 'initial', 1),
(761, '2024-07-12 19:11:44.776', '2024-07-27 14:25:10.463', NULL, 5, '8ea80e588bb4b2412530ce5270d092e5.jpg', 'initial', 1),
(762, '2024-07-12 19:11:44.779', '2024-07-27 14:25:10.463', NULL, 5, '8e4030660e26d2cf666c871d9fcbd102.jpg', 'initial', 1),
(763, '2024-07-12 19:11:44.782', '2024-07-27 14:25:10.463', NULL, 5, 'e5329fc7647700d08962a56c09f85dfe.jpg', 'initial', 1),
(764, '2024-07-12 19:11:44.785', '2024-07-27 14:25:10.463', NULL, 5, '38b1230026f895ab07dbf0ce0eb27dd0.jpg', 'initial', 1),
(765, '2024-07-12 19:11:44.789', '2024-07-27 14:25:10.463', NULL, 5, '34d75341021ecc8e25218fb48b72b4cf.jpg', 'initial', 1),
(766, '2024-07-12 19:11:44.793', '2024-07-27 14:25:10.463', NULL, 5, '3e2c9120ed6b0baeff553a4a8c07435f.jpg', 'initial', 1),
(767, '2024-07-12 19:11:44.795', '2024-07-27 14:25:10.463', NULL, 5, '6c563d2ba0d0c3c085d6b4b00f5110f7.jpg', 'initial', 1),
(768, '2024-07-12 19:11:44.798', '2024-07-27 14:25:10.463', NULL, 5, '4740134da469759f3964faa887def13c.jpg', 'initial', 1),
(769, '2024-07-12 19:11:44.801', '2024-07-27 14:25:10.463', NULL, 5, 'a814e70a400167f17886aa8e83abbb27.jpg', 'initial', 1),
(770, '2024-07-12 19:11:44.805', '2024-07-27 14:25:10.463', NULL, 5, 'a8a79f8ebd1eb9fb63958646468cd23b.jpeg', 'initial', 1),
(771, '2024-07-12 19:11:44.808', '2024-07-27 14:25:10.463', NULL, 5, '320dc3a60d9fa688d7ceecc3b0eb6298.jpeg', 'initial', 1),
(772, '2024-07-12 19:11:44.812', '2024-07-27 14:25:10.463', NULL, 5, 'ade984f1e6e8a62899e526bedbe07fd9.jpeg', 'initial', 1),
(773, '2024-07-12 19:11:44.816', '2024-07-27 14:25:10.463', NULL, 5, '860248e89c4a576f3c61d172c06e248d.jpeg', 'initial', 1),
(774, '2024-07-12 19:11:44.822', '2024-07-27 14:25:10.463', NULL, 5, '1b2154653a251b5807fff35b903aed16.jpeg', 'initial', 1),
(775, '2024-07-12 19:11:44.826', '2024-07-27 14:25:10.463', NULL, 5, 'ba47f3add6aa47f22ee5fa493dc78f82.jpeg', 'initial', 1),
(776, '2024-07-12 19:11:44.829', '2024-07-27 14:25:10.463', NULL, 5, '520542e53502fdba03cbd99ac181c51f.jpeg', 'initial', 1),
(777, '2024-07-12 19:11:44.831', '2024-07-27 14:25:10.463', NULL, 5, '3c580fb980394c4526ccaf183f1840c2.jpeg', 'initial', 1),
(778, '2024-07-13 09:59:40.971', '2024-07-27 14:25:10.463', NULL, 17, '4bff5acc2c3606010b03f002c008d861.jpeg', 'initial', 1),
(779, '2024-07-13 09:59:40.977', '2024-07-27 14:25:10.463', NULL, 17, '835f5bdba2c703237f9256aec8496ad0.jpeg', 'initial', 1),
(780, '2024-07-13 09:59:40.980', '2024-07-27 14:25:10.463', NULL, 17, 'b4453959f6d006de7ae83a7926fee782.jpeg', 'initial', 1),
(781, '2024-07-13 09:59:40.983', '2024-07-27 14:25:10.463', NULL, 17, '2434813c522079f042db6f0aec54384a.jpeg', 'initial', 1),
(782, '2024-07-13 09:59:40.987', '2024-07-27 14:25:10.463', NULL, 17, '67bc2bcfabbc9b37c78f2af14fbdd36a.jpeg', 'initial', 1),
(783, '2024-07-13 09:59:40.991', '2024-07-27 14:25:10.463', NULL, 17, '2c85057718970f22111afe891a16a610.jpeg', 'initial', 1),
(784, '2024-07-13 09:59:40.995', '2024-07-27 14:25:10.463', NULL, 17, '785d1a5e35f95549c4f9bc2c61208dfc.jpeg', 'initial', 1),
(785, '2024-07-13 09:59:40.998', '2024-07-27 14:25:10.463', NULL, 17, '736238bf6d5ee114728745582533130b.jpeg', 'initial', 1),
(786, '2024-07-13 09:59:41.001', '2024-07-27 14:25:10.463', NULL, 17, 'c82421c07d90dfd9fa4a484abee1e6f9.jpeg', 'initial', 1),
(787, '2024-07-13 09:59:41.005', '2024-07-27 14:25:10.463', NULL, 17, '25dc20b51f61eccf0f9f6e259c04b60f.jpeg', 'initial', 1),
(788, '2024-07-13 09:59:41.009', '2024-07-27 14:25:10.463', NULL, 17, 'fe7c4d13cbafc3f1afa91cb7fc3f3111.jpeg', 'initial', 1),
(789, '2024-07-13 09:59:41.012', '2024-07-27 14:25:10.463', NULL, 17, '960e9de3851574a46ad0b3b5a523bdb2.jpeg', 'initial', 1),
(790, '2024-07-13 09:59:41.015', '2024-07-27 14:25:10.463', NULL, 17, '92a1734acd556b7d955d73696c70e2f9.jpeg', 'initial', 1),
(791, '2024-07-13 09:59:41.019', '2024-07-27 14:25:10.463', NULL, 17, '05e294a4a142a2ea9890e538346de027.jpeg', 'initial', 1),
(792, '2024-07-13 09:59:41.024', '2024-07-27 14:25:10.463', NULL, 17, '4f5aad1bf9a9b4a689f218c3567086c7.jpeg', 'initial', 1),
(793, '2024-07-13 09:59:41.028', '2024-07-27 14:25:10.463', NULL, 17, '1ec129cf016bc5a9678ad2a6edc48003.jpeg', 'initial', 1),
(794, '2024-07-13 09:59:41.031', '2024-07-27 14:25:10.463', NULL, 17, 'a949dfaa0b3dd7643689631250c6ee3e.jpeg', 'initial', 1),
(795, '2024-07-13 09:59:41.034', '2024-07-27 14:25:10.463', NULL, 17, 'e971d79bc4b031bf25565f17b3e23941.jpeg', 'initial', 1),
(796, '2024-07-13 09:59:41.040', '2024-07-27 14:25:10.463', NULL, 17, '115e0ae49f0ff84057bbaaac9e8089ff.jpeg', 'initial', 1),
(797, '2024-07-13 09:59:41.056', '2024-07-27 14:25:10.463', NULL, 17, '4fdc143644deb15ba7abaf30819e88c3.jpeg', 'initial', 1),
(798, '2024-07-13 09:59:41.061', '2024-07-27 14:25:10.463', NULL, 17, 'f1f87284089e4b1e57fdfd11d34f21a8.jpeg', 'initial', 1),
(799, '2024-07-13 09:59:41.064', '2024-07-27 14:25:10.463', NULL, 17, '10bee326ff87169c4ff1f71baa34ce3f.jpeg', 'initial', 1),
(800, '2024-07-13 09:59:41.067', '2024-07-27 14:25:10.463', NULL, 17, 'be458604198b7e6ba2b5452e2d3eff88.jpeg', 'initial', 1),
(801, '2024-07-13 09:59:41.070', '2024-07-27 14:25:10.463', NULL, 17, '4611669c0e35f8a25729426b9f000e36.jpeg', 'initial', 1),
(802, '2024-07-13 09:59:41.075', '2024-07-27 14:25:10.463', NULL, 17, 'f6e6e7e5553f13728df225909e7a5ec7.jpeg', 'initial', 1),
(803, '2024-07-13 09:59:41.079', '2024-07-27 14:25:10.463', NULL, 17, '8e9d0b63f7db0ec62191a0430a6cd056.jpeg', 'initial', 1),
(804, '2024-07-13 09:59:41.082', '2024-07-27 14:25:10.463', NULL, 17, '039d4f599abaaa76769c8e3fada1dd73.jpeg', 'initial', 1),
(805, '2024-07-13 09:59:41.085', '2024-07-27 14:25:10.463', NULL, 17, '2b2c2dd62341c23fd50f6e94e7518f5c.jpeg', 'initial', 1),
(806, '2024-07-13 09:59:41.090', '2024-07-27 14:25:10.463', NULL, 17, '65159d8628cc07f0791925726d041ec6.jpeg', 'initial', 1),
(807, '2024-07-13 09:59:41.093', '2024-07-27 14:25:10.463', NULL, 17, '6c3000fe02416c57cf576cc89c134681.jpeg', 'initial', 1),
(808, '2024-07-13 09:59:41.096', '2024-07-27 14:25:10.463', NULL, 17, '30b098d8f9fade17fc670050cbf36628.jpeg', 'initial', 1),
(809, '2024-07-13 09:59:41.100', '2024-07-27 14:25:10.463', NULL, 17, '727aa826dcdc9a0b7b84a0156456c42f.jpeg', 'initial', 1),
(810, '2024-07-13 10:00:13.609', '2024-07-27 14:25:10.463', NULL, 18, 'de711c0ead47246c954d3ccfc610d2ff.jpeg', 'initial', 1),
(811, '2024-07-13 10:00:13.615', '2024-07-27 14:25:10.463', NULL, 18, '1ae8228c18b9f482e8b07bf475cf04d6.jpeg', 'initial', 1),
(812, '2024-07-13 10:00:13.621', '2024-07-27 14:25:10.463', NULL, 18, 'ba46ef54b388c622d1e81162252c22e2.jpeg', 'initial', 1),
(813, '2024-07-13 10:00:13.626', '2024-07-27 14:25:10.463', NULL, 18, '727c760ea73d03aa09c168d072c2d319.jpeg', 'initial', 1),
(814, '2024-07-13 10:00:13.631', '2024-07-27 14:25:10.463', NULL, 18, '5f1839369f740ac2e8411adeb927bd9b.jpeg', 'initial', 1),
(815, '2024-07-13 10:00:13.635', '2024-07-27 14:25:10.463', NULL, 18, 'c3e59999cf9b3eaf18fe3e77ad1466f4.jpeg', 'initial', 1),
(816, '2024-07-13 10:00:13.641', '2024-07-27 14:25:10.463', NULL, 18, '0a524488ea45ef67d31ff38135ab14dd.jpeg', 'initial', 1),
(817, '2024-07-13 10:00:13.646', '2024-07-27 14:25:10.463', NULL, 18, '25aa1741c3823100604d28a7af0633cd.jpeg', 'initial', 1),
(818, '2024-07-13 10:00:13.650', '2024-07-27 14:25:10.463', NULL, 18, '4fde67e0e6f7b0be95b0e7a379e270b1.jpeg', 'initial', 1),
(819, '2024-07-13 10:00:13.656', '2024-07-27 14:25:10.463', NULL, 18, '257da1977df3f160c6f926dea456c396.jpeg', 'initial', 1),
(820, '2024-07-13 10:00:13.662', '2024-07-27 14:25:10.463', NULL, 18, 'a81b37eb3c74fe72dc695c5f67ef5b8f.jpeg', 'initial', 1),
(821, '2024-07-13 10:00:13.666', '2024-07-27 14:25:10.463', NULL, 18, '16ade5d6b4d6e30134bcb743a9b00800.jpeg', 'initial', 1),
(822, '2024-07-13 10:00:13.671', '2024-07-27 14:25:10.463', NULL, 18, '502a2211898815f16cd3af4402bf1b64.jpeg', 'initial', 1),
(823, '2024-07-13 10:00:13.675', '2024-07-27 14:25:10.463', NULL, 18, '314fb45fd08b2eec0cf85f318744a1ab.jpeg', 'initial', 1),
(824, '2024-07-13 10:00:13.680', '2024-07-27 14:25:10.463', NULL, 18, '408ee9a6c8cf3ac7ad8198a8ea04ee68.jpeg', 'initial', 1),
(825, '2024-07-13 10:00:13.685', '2024-07-27 14:25:10.463', NULL, 18, '5c4985cabb011ca417a6fd6e66466754.jpeg', 'initial', 1),
(826, '2024-07-13 10:00:13.691', '2024-07-27 14:25:10.463', NULL, 18, 'f435d352675427e60a3ced9d0efbab5a.jpeg', 'initial', 1),
(827, '2024-07-13 10:00:13.698', '2024-07-27 14:25:10.463', NULL, 18, '471123fe02acff4c93f1d25536c8297c.jpeg', 'initial', 1),
(828, '2024-07-13 10:00:13.702', '2024-07-27 14:25:10.463', NULL, 18, '6c44c296f2b45500723f63af9d3a29ec.jpeg', 'initial', 1),
(829, '2024-07-13 10:00:13.708', '2024-07-27 14:25:10.463', NULL, 18, 'e4d46b57fb56552eabc2eb57b6be02d9.jpeg', 'initial', 1),
(830, '2024-07-13 10:00:13.713', '2024-07-27 14:25:10.463', NULL, 18, '8342781b439f29fdf2fedbad8942b301.jpeg', 'initial', 1),
(831, '2024-07-13 10:00:13.719', '2024-07-27 14:25:10.463', NULL, 18, 'ef622f2897f13b6046a351875824d189.jpeg', 'initial', 1),
(832, '2024-07-13 10:00:13.724', '2024-07-27 14:25:10.463', NULL, 18, '743350f4954c7dcd16947c3b13488445.jpeg', 'initial', 1),
(833, '2024-07-13 10:00:13.730', '2024-07-27 14:25:10.463', NULL, 18, '00126d853187602d6878c0f2bf0d5991.jpeg', 'initial', 1),
(834, '2024-07-13 10:00:13.734', '2024-07-27 14:25:10.463', NULL, 18, '318dabcbf71dac265b445af579642e2c.jpeg', 'initial', 1),
(835, '2024-07-13 10:00:13.741', '2024-07-27 14:25:10.463', NULL, 18, '432beb9450725ee96345b29f5b6225ba.jpeg', 'initial', 1),
(836, '2024-07-13 10:00:13.747', '2024-07-27 14:25:10.463', NULL, 18, '9561251c44fc732fdc1c17df65a202ab.jpeg', 'initial', 1),
(837, '2024-07-13 10:00:13.751', '2024-07-27 14:25:10.463', NULL, 18, 'f528d6159e5a093bd4a3e38119752c31.jpeg', 'initial', 1),
(838, '2024-07-13 10:00:13.756', '2024-07-27 14:25:10.463', NULL, 18, '488dd01084b9940e45ee1ecf5ae37daa.jpeg', 'initial', 1),
(839, '2024-07-13 10:00:13.762', '2024-07-27 14:25:10.463', NULL, 18, '87f263c19827f20780220bea2f85da80.jpeg', 'initial', 1),
(840, '2024-07-13 10:00:13.767', '2024-07-27 14:25:10.463', NULL, 18, 'bb41998990e0b53c01b896db6fb00d16.jpeg', 'initial', 1),
(841, '2024-07-13 10:00:13.772', '2024-07-27 14:25:10.463', NULL, 18, '8687344c6eb87876bec7230cb053dd79.jpeg', 'initial', 1),
(1002, '2024-07-14 16:23:17.412', '2024-07-27 14:25:10.463', NULL, 19, '59965d5b01e4b89aebed3c3ae3396ed2.jpeg', 'initial', 1),
(1003, '2024-07-14 16:23:17.416', '2024-07-27 14:25:10.463', NULL, 19, 'b2eb6b9c046797d4fd338646ffade8f9.jpeg', 'initial', 1),
(1004, '2024-07-14 16:23:17.419', '2024-07-27 14:25:10.463', NULL, 19, '8f7bc3893ee73fd4a53a34043d3927e9.jpeg', 'initial', 1),
(1005, '2024-07-14 16:23:17.422', '2024-07-27 14:25:10.463', NULL, 19, '45f5c3c7a15c412278107267f7094c6e.jpeg', 'initial', 1),
(1006, '2024-07-14 16:23:17.425', '2024-07-27 14:25:10.463', NULL, 19, 'a1044102534252fef7c85de80eea29b0.jpeg', 'initial', 1),
(1007, '2024-07-14 16:23:17.430', '2024-07-27 14:25:10.463', NULL, 19, '3c6111178e4207e62f845752a6beae6e.jpeg', 'initial', 1),
(1008, '2024-07-14 16:23:17.433', '2024-07-27 14:25:10.463', NULL, 19, 'de996f49f7309f0950d36708ffdeb33b.jpeg', 'initial', 1),
(1009, '2024-07-14 16:23:17.436', '2024-07-27 14:25:10.463', NULL, 19, 'da741a3679ac0a7c375547d10b132469.jpeg', 'initial', 1),
(1010, '2024-07-14 16:23:17.438', '2024-07-27 14:25:10.463', NULL, 19, 'e02c231cdfcd80d2076d306ba842e4fb.jpeg', 'initial', 1),
(1011, '2024-07-14 16:23:17.441', '2024-07-27 14:25:10.463', NULL, 19, 'cfeb72f03a9f42979401ec36785fa96d.jpeg', 'initial', 1),
(1012, '2024-07-14 16:23:17.444', '2024-07-27 14:25:10.463', NULL, 19, 'eff6aea4840039e0c91184a7b55deb25.jpeg', 'initial', 1),
(1013, '2024-07-14 16:23:17.448', '2024-07-27 14:25:10.463', NULL, 19, 'b6720c87431eff3c853eb6950d71f04c.jpeg', 'initial', 1),
(1014, '2024-07-14 16:23:17.451', '2024-07-27 14:25:10.463', NULL, 19, 'c1da48ab14f3db4209cfad4807a5cd5d.jpeg', 'initial', 1),
(1015, '2024-07-14 16:23:17.454', '2024-07-27 14:25:10.463', NULL, 19, 'b66efca664948090ed7f6c8bffccb9ac.jpeg', 'initial', 1),
(1016, '2024-07-14 16:23:17.456', '2024-07-27 14:25:10.463', NULL, 19, '3c4c2865d6deebb42fa853d040da0bd6.jpeg', 'initial', 1),
(1017, '2024-07-14 16:23:17.459', '2024-07-27 14:25:10.463', NULL, 19, '8beb2b20af6b0982c08e154cb28dea14.jpeg', 'initial', 1),
(1018, '2024-07-14 16:23:17.463', '2024-07-27 14:25:10.463', NULL, 19, '7ab21ee48b3416d070e6c5ae0e0afa62.jpeg', 'initial', 1),
(1019, '2024-07-14 16:23:17.466', '2024-07-27 14:25:10.463', NULL, 19, '2ec0e1d47a5d8c3c6481ab7cc02ef4e8.jpeg', 'initial', 1),
(1020, '2024-07-14 16:23:17.469', '2024-07-27 14:25:10.463', NULL, 19, 'e811f141aede61282f11a3612403073a.jpeg', 'initial', 1),
(1021, '2024-07-14 16:23:17.472', '2024-07-27 14:25:10.463', NULL, 19, '05fa48ad281d986b9d3000c9fe883a12.jpeg', 'initial', 1),
(1022, '2024-07-14 16:23:17.474', '2024-07-27 14:25:10.463', NULL, 19, 'cf5822cd34533d052bcb95337cb0c569.jpeg', 'initial', 1),
(1023, '2024-07-14 16:23:17.477', '2024-07-27 14:25:10.463', NULL, 19, '8324fa373185d6d66b4ae3f37f9cc14b.jpeg', 'initial', 1),
(1024, '2024-07-14 16:23:17.482', '2024-07-27 14:25:10.463', NULL, 19, '86c784c8b49f4cf0f61a9e16d67f07d9.jpeg', 'initial', 1),
(1025, '2024-07-14 16:23:17.485', '2024-07-27 14:25:10.463', NULL, 19, '39f8c6c08a48d54556f037d24976107d.jpeg', 'initial', 1),
(1026, '2024-07-14 16:23:17.488', '2024-07-27 14:25:10.463', NULL, 19, 'e395c03a8f386eab033c9aa31a850383.jpeg', 'initial', 1),
(1027, '2024-07-14 16:23:17.491', '2024-07-27 14:25:10.463', NULL, 19, '17a7e092235c9ec89b44649e292597de.jpeg', 'initial', 1),
(1028, '2024-07-14 16:23:17.494', '2024-07-27 14:25:10.463', NULL, 19, '7d2872227159260d7d46370655272427.jpeg', 'initial', 1),
(1029, '2024-07-14 16:23:17.499', '2024-07-27 14:25:10.463', NULL, 19, 'e7da70349c7af1a094163f0965ea22bc.jpeg', 'initial', 1),
(1030, '2024-07-14 16:23:17.501', '2024-07-27 14:25:10.463', NULL, 19, '95aed662bd008895fb55bd2a1fb8b12e.jpeg', 'initial', 1),
(1031, '2024-07-14 16:23:17.504', '2024-07-27 14:25:10.463', NULL, 19, 'a681a804d414811f044c3955a994434d.jpeg', 'initial', 1),
(1032, '2024-07-14 16:23:17.507', '2024-07-27 14:25:10.463', NULL, 19, '5c9d4248d712cf553b9e9d4ae2a4dbf4.jpeg', 'initial', 1),
(1033, '2024-07-14 16:23:17.510', '2024-07-27 14:25:10.463', NULL, 19, 'edbf1a22a82e11ba104a30c02d438588.jpeg', 'initial', 1),
(1034, '2024-07-14 16:32:50.755', '2024-07-27 14:25:10.463', NULL, 20, 'bb6229679720dc914e19f3d414255eb3.jpeg', 'initial', 1),
(1035, '2024-07-14 16:32:50.759', '2024-07-27 14:25:10.463', NULL, 20, 'f5d4f1bab9fd260bfecbeb59ac836f64.jpeg', 'initial', 1),
(1036, '2024-07-14 16:32:50.762', '2024-07-27 14:25:10.463', NULL, 20, '720006bf2c338ca4b0bd6da1a3224389.jpeg', 'initial', 1),
(1037, '2024-07-14 16:32:50.765', '2024-07-27 14:25:10.463', NULL, 20, '56570d91a9b8c972beb186f0a68c5431.jpeg', 'initial', 1),
(1038, '2024-07-14 16:32:50.769', '2024-07-27 14:25:10.463', NULL, 20, 'bcfe89180ff4ac9622a413d10fdfb94d.jpeg', 'initial', 1),
(1039, '2024-07-14 16:32:50.774', '2024-07-27 14:25:10.463', NULL, 20, '293f801dc2007a2561fac2eddee9109d.jpeg', 'initial', 1),
(1040, '2024-07-14 16:32:50.779', '2024-07-27 14:25:10.463', NULL, 20, '86cf9cb3fe805f611c219aec16586bb0.jpeg', 'initial', 1),
(1041, '2024-07-14 16:32:50.783', '2024-07-27 14:25:10.463', NULL, 20, 'a46eeada4b11f6d080148bb61f377dc0.jpeg', 'initial', 1),
(1042, '2024-07-14 16:32:50.786', '2024-07-27 14:25:10.463', NULL, 20, '4de22345affc97c30e34458e13e63556.jpeg', 'initial', 1),
(1043, '2024-07-14 16:32:50.791', '2024-07-27 14:25:10.463', NULL, 20, 'faa9396a63bf51fddb3c285ea20ffaa3.jpeg', 'initial', 1),
(1044, '2024-07-14 16:32:50.795', '2024-07-27 14:25:10.463', NULL, 20, 'f36beef2385fca8e5260e69d765e628a.jpeg', 'initial', 1),
(1045, '2024-07-14 16:32:50.798', '2024-07-27 14:25:10.463', NULL, 20, 'e5116721405506ee403a34d9e1cac3ed.jpeg', 'initial', 1),
(1046, '2024-07-14 16:32:50.801', '2024-07-27 14:25:10.463', NULL, 20, '305d7cf8fd1452918ef7ea2669bde87d.jpeg', 'initial', 1),
(1047, '2024-07-14 16:32:50.807', '2024-07-27 14:25:10.463', NULL, 20, 'f11891fbbd77fb8cbd2d80b39a6b586e.jpeg', 'initial', 1),
(1048, '2024-07-14 16:32:50.810', '2024-07-27 14:25:10.463', NULL, 20, '5ff6c8b926e39e8d853879d30070bf60.jpeg', 'initial', 1),
(1049, '2024-07-14 16:32:50.813', '2024-07-27 14:25:10.463', NULL, 20, '0092b7e3a58b630eb08cd5e76f1088f3.jpeg', 'initial', 1),
(1050, '2024-07-14 16:32:50.816', '2024-07-27 14:25:10.463', NULL, 20, '88022cfea67bb75258b38a9d8e035351.jpeg', 'initial', 1),
(1051, '2024-07-14 16:32:50.820', '2024-07-27 14:25:10.463', NULL, 20, '48d4993e61a30e63e05bbdf3d2c5709c.jpeg', 'initial', 1),
(1052, '2024-07-14 16:32:50.825', '2024-07-27 14:25:10.463', NULL, 20, 'f241acaf5d3382589689d8cde06145b8.jpeg', 'initial', 1),
(1053, '2024-07-14 16:32:50.829', '2024-07-27 14:25:10.463', NULL, 20, '7dd270a165df16f0d34a62e797006a27.jpeg', 'initial', 1),
(1054, '2024-07-14 16:32:50.832', '2024-07-27 14:25:10.463', NULL, 20, 'f117ed5e5b3a463420ccf4ab757a130a.jpeg', 'initial', 1),
(1055, '2024-07-14 16:32:50.836', '2024-07-27 14:25:10.463', NULL, 20, '22a667fe6aa2fea69c02cd53a3a0c176.jpeg', 'initial', 1),
(1056, '2024-07-14 16:32:50.841', '2024-07-27 14:25:10.463', NULL, 20, 'f7516fd9a0f6324847b225ada48d5300.jpeg', 'initial', 1),
(1057, '2024-07-14 16:32:50.844', '2024-07-27 14:25:10.463', NULL, 20, 'ebe365a2c1dd8e44e8225a6309873cc4.jpeg', 'initial', 1),
(1058, '2024-07-14 16:32:50.847', '2024-07-27 14:25:10.463', NULL, 20, '4c5a94624b562f7781aae09e6754154c.jpeg', 'initial', 1),
(1059, '2024-07-14 16:32:50.851', '2024-07-27 14:25:10.463', NULL, 20, 'c538f6a2f52f8e4748775a11630e2c54.jpeg', 'initial', 1),
(1060, '2024-07-14 16:32:50.854', '2024-07-27 14:25:10.463', NULL, 20, 'cde3f5110510d648bcd21f3d31d4def4.jpeg', 'initial', 1),
(1061, '2024-07-14 16:32:50.860', '2024-07-27 14:25:10.463', NULL, 20, '4377077c2786ed6b9e63c445cc139c7c.jpeg', 'initial', 1),
(1062, '2024-07-14 16:32:50.863', '2024-07-27 14:25:10.463', NULL, 20, '828e0eafdad8e88b314a3f6cd82f6df8.jpeg', 'initial', 1),
(1063, '2024-07-14 16:32:50.867', '2024-07-27 14:25:10.463', NULL, 20, 'c1c9247a12f2073a7fbefb45f5ecb7ff.png', 'initial', 1),
(1064, '2024-07-14 16:32:50.872', '2024-07-27 14:25:10.463', NULL, 20, '37f781b92871f3162e1de855d114f24a.jpeg', 'initial', 1),
(1065, '2024-07-14 16:32:50.877', '2024-07-27 14:25:10.463', NULL, 20, 'ef0c4afac5706eff7d61c796e0d1817b.jpeg', 'initial', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` longtext NOT NULL,
  `phone` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` longtext NOT NULL,
  `user_type` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `phone`, `username`, `email`, `password`, `user_type`) VALUES
(2, '2024-07-09 13:06:50.889', '2024-07-09 13:06:50.889', NULL, 'mister dengklek', '0812345678910', 'mrdengklek123', 'mrdengklek123@gmail.com', '$2a$10$javT0d2Q4tWBfiYkHTi7fuRLjIf5ioY8YRLmupM4TeccBgPjcCnBm', 'admin'),
(3, '2024-07-18 15:28:23.893', '2024-07-18 15:28:23.893', NULL, 'Dzikri Ananda', '081289170653', 'dzikri12', 'dzikri.785@Gmail.com', '$2a$10$IgkCyYiCmZXJLxl4.rOFReYG9vEn12ANXVfL7ofm940DEESxveX22', ''),
(4, '2024-07-18 16:45:30.240', '2024-07-18 16:45:30.240', NULL, 'Perrel Laquarius Brown', '081289170644', 'dreamybull', 'drimibul@gmail.com', '$2a$10$LWh9wAharJSypRQ/X5jRRObWATW6BXRln7KiUKf/bHwIaqx9hI4Q2', '');

-- --------------------------------------------------------

--
-- Table structure for table `validation_images`
--

CREATE TABLE `validation_images` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `species_id` bigint UNSIGNED DEFAULT NULL,
  `file_name` longtext,
  `meta` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `validation_images`
--

INSERT INTO `validation_images` (`id`, `created_at`, `updated_at`, `deleted_at`, `species_id`, `file_name`, `meta`) VALUES
(1, '2024-07-09 14:01:10.049', '2024-07-09 14:01:10.049', NULL, 1, 'fb417519fde100a24e9d5f34a94750f8.jpg', 'initial'),
(2, '2024-07-09 14:01:10.051', '2024-07-09 14:01:10.051', NULL, 1, '9c662b911edd4b71c5b4891daf0f7f60.jpg', 'initial'),
(3, '2024-07-09 14:01:10.053', '2024-07-09 14:01:10.053', NULL, 1, '17e7ba3701b2c63adfe044e534b80340.jpg', 'initial'),
(4, '2024-07-09 14:01:10.055', '2024-07-09 14:01:10.055', NULL, 1, '82841d20f8ef447129e23a4d0c7566b5.jpg', 'initial'),
(5, '2024-07-09 14:01:10.057', '2024-07-09 14:01:10.057', NULL, 1, '5d4ac7539b8e3d96fc2a35baeae2b839.jpeg', 'initial'),
(6, '2024-07-10 17:02:00.751', '2024-07-10 17:02:00.751', NULL, 2, 'a11bc2af3208e06f83b922c924ad01c5.jpg', 'initial'),
(7, '2024-07-10 17:02:00.754', '2024-07-10 17:02:00.754', NULL, 2, '0a331a8faa8ef8c274dd8d2e649dab1b.jpg', 'initial'),
(8, '2024-07-10 17:02:00.757', '2024-07-10 17:02:00.757', NULL, 2, 'e0bc7a98326363bf82229818f4dd0076.jpg', 'initial'),
(9, '2024-07-10 17:02:00.760', '2024-07-10 17:02:00.760', NULL, 2, '2ce398d70956e82193482b780302c8ec.jpg', 'initial'),
(10, '2024-07-10 17:02:00.762', '2024-07-10 17:02:00.762', NULL, 2, '1049d730124c3cb7c6861b20853e3312.jpeg', 'initial'),
(20, '2024-07-10 17:51:07.200', '2024-07-10 17:51:07.200', NULL, 3, '648647df4f4c0994539310ad89be0f43.jpg', 'initial'),
(21, '2024-07-10 17:51:07.203', '2024-07-10 17:51:07.203', NULL, 3, '12d8dfd8dc7cb36b118a4fc103e9a748.jpg', 'initial'),
(22, '2024-07-10 17:51:07.207', '2024-07-10 17:51:07.207', NULL, 3, '59bd301cb6f3800515875c7932fd9333.jpg', 'initial'),
(23, '2024-07-10 17:51:07.209', '2024-07-10 17:51:07.209', NULL, 3, 'f91a673f7ca70285e806037d82b82f16.jpg', 'initial'),
(24, '2024-07-10 17:51:07.213', '2024-07-10 17:51:07.213', NULL, 3, 'f36e671b2acd807e653b79a96f022add.jpeg', 'initial'),
(39, '2024-07-11 13:01:36.030', '2024-07-11 13:01:36.030', NULL, 4, '6e25ed43f7af47df203e4d719c8d2616.jpg', 'initial'),
(40, '2024-07-11 13:01:36.045', '2024-07-11 13:01:36.045', NULL, 4, '43cb4bcc5efd3a2a35f3a1587b70150c.jpg', 'initial'),
(41, '2024-07-11 13:01:36.047', '2024-07-11 13:01:36.047', NULL, 4, '186ab5afbcbbb33310e6c272b2a14677.jpg', 'initial'),
(42, '2024-07-11 13:01:36.048', '2024-07-11 13:01:36.048', NULL, 4, '66a92028e8e10751cd9cb2a94442e63a.jpg', 'initial'),
(43, '2024-07-11 13:01:36.050', '2024-07-11 13:01:36.050', NULL, 4, 'e2ec8a2015027b050501ae5055229bef.jpeg', 'initial'),
(44, '2024-07-11 13:02:13.905', '2024-07-11 13:02:13.905', NULL, 5, '8f7712a122a572eaaf3d47a1ceca9f76.jpg', 'initial'),
(45, '2024-07-11 13:02:13.908', '2024-07-11 13:02:13.908', NULL, 5, '5f6377664156574dfa0f63bdf72e6d0f.jpg', 'initial'),
(46, '2024-07-11 13:02:13.909', '2024-07-11 13:02:13.909', NULL, 5, 'af7bf2790787c2c1fbc21b01898a8a1c.jpg', 'initial'),
(47, '2024-07-11 13:02:13.911', '2024-07-11 13:02:13.911', NULL, 5, 'fcd495f9623ba65b034360722b24fbf3.jpg', 'initial'),
(48, '2024-07-11 13:02:13.913', '2024-07-11 13:02:13.913', NULL, 5, '5b8515e57bd3b256f8ddebd8a9d00b3c.jpeg', 'initial'),
(49, '2024-07-11 13:02:38.219', '2024-07-11 13:02:38.219', NULL, 6, '45dc263d1fe6b417582b4aebd8a36c2e.jpg', 'initial'),
(50, '2024-07-11 13:02:38.223', '2024-07-11 13:02:38.223', NULL, 6, 'e358a3714c54a958d0300f7ff2436e0f.jpg', 'initial'),
(51, '2024-07-11 13:02:38.225', '2024-07-11 13:02:38.225', NULL, 6, 'a30af7a7755efae2138cbfa00fddcc0d.jpg', 'initial'),
(52, '2024-07-11 13:02:38.227', '2024-07-11 13:02:38.227', NULL, 6, '0c3cc3a76fd5a2620e25c1db969e1ff6.jpg', 'initial'),
(53, '2024-07-11 13:02:38.228', '2024-07-11 13:02:38.228', NULL, 6, '14c8cf898351c591627dec924954e2d4.jpeg', 'initial'),
(54, '2024-07-11 13:03:00.390', '2024-07-11 13:03:00.390', NULL, 7, '87a5170648922c39d341f5f741a448cb.jpg', 'initial'),
(55, '2024-07-11 13:03:00.392', '2024-07-11 13:03:00.392', NULL, 7, '5df0fc08689b12505d1819f63407ad27.jpg', 'initial'),
(56, '2024-07-11 13:03:00.394', '2024-07-11 13:03:00.394', NULL, 7, 'e5e13a4d634cf229b861146176a7b353.jpg', 'initial'),
(57, '2024-07-11 13:03:00.396', '2024-07-11 13:03:00.396', NULL, 7, '9ff96ac00a4019a32fbdd377357ca479.jpg', 'initial'),
(58, '2024-07-11 13:03:00.397', '2024-07-11 13:03:00.397', NULL, 7, 'b8ec852a01aebf584710e28f1702fb72.jpeg', 'initial'),
(59, '2024-07-11 13:03:20.460', '2024-07-11 13:03:20.460', NULL, 8, '2b5d7f778b4fa5e50e1355b9a0b12ccf.jpg', 'initial'),
(60, '2024-07-11 13:03:20.463', '2024-07-11 13:03:20.463', NULL, 8, '07eea8a7e6390931ee324cbf217f4a62.jpg', 'initial'),
(61, '2024-07-11 13:03:20.467', '2024-07-11 13:03:20.467', NULL, 8, '3cf954ee02456fb45372ffc9f2f1ab5f.jpg', 'initial'),
(62, '2024-07-11 13:03:20.474', '2024-07-11 13:03:20.474', NULL, 8, 'f18b3c79aaa4b83e3a5026cbcd4d2c53.jpg', 'initial'),
(63, '2024-07-11 13:03:20.479', '2024-07-11 13:03:20.479', NULL, 8, '1ee5fbaeb6718eb245cc9955ad2257bd.jpeg', 'initial'),
(69, '2024-07-11 13:04:13.844', '2024-07-11 13:04:13.844', NULL, 9, '774ea5822d1d0888a5a3aad4a8703be3.jpg', 'initial'),
(70, '2024-07-11 13:04:13.846', '2024-07-11 13:04:13.846', NULL, 9, 'fe5badb86b24754f678e5b803290eed6.jpg', 'initial'),
(71, '2024-07-11 13:04:13.847', '2024-07-11 13:04:13.847', NULL, 9, 'b5728ab8ab3bcfdc06cdb05f37ec8407.jpg', 'initial'),
(72, '2024-07-11 13:04:13.849', '2024-07-11 13:04:13.849', NULL, 9, '78aa06deb8df6f43bb953e85f3147c82.jpg', 'initial'),
(73, '2024-07-11 13:04:13.850', '2024-07-11 13:04:13.850', NULL, 9, '6254149aad717bb380815fc020986766.jpeg', 'initial'),
(74, '2024-07-11 13:04:33.550', '2024-07-11 13:04:33.550', NULL, 10, '98719a907c466a05d64d67be72a668cf.jpg', 'initial'),
(75, '2024-07-11 13:04:33.554', '2024-07-11 13:04:33.554', NULL, 10, '94de32b4c4406fad5bce0e123b509eb7.jpg', 'initial'),
(76, '2024-07-11 13:04:33.557', '2024-07-11 13:04:33.557', NULL, 10, '35495e014c9de7a4f469f1d863e69172.jpg', 'initial'),
(77, '2024-07-11 13:04:33.559', '2024-07-11 13:04:33.559', NULL, 10, '45c534af1b79d2c7885033bf9aef3c7f.jpg', 'initial'),
(78, '2024-07-11 13:04:33.561', '2024-07-11 13:04:33.561', NULL, 10, '1a6b650ab30a27b3534ee13b0b6a83cf.jpeg', 'initial'),
(80, '2024-07-11 13:04:51.827', '2024-07-11 13:04:51.827', NULL, 11, '32b933940eb9baa8a025cf26c49e9194.jpeg', 'initial'),
(81, '2024-07-11 13:04:51.830', '2024-07-11 13:04:51.830', NULL, 11, '7253e78e2b4726667c96e388bb729e0d.jpeg', 'initial'),
(82, '2024-07-11 13:04:51.834', '2024-07-11 13:04:51.834', NULL, 11, '5a56542e688ea30a76f8572cee28c579.jpeg', 'initial'),
(83, '2024-07-11 13:04:51.837', '2024-07-11 13:04:51.837', NULL, 11, '67d6f6259b21fdf05a6009b1ad73ba04.jpeg', 'initial'),
(84, '2024-07-11 13:05:08.532', '2024-07-11 13:05:08.532', NULL, 12, '056857ae56872c3fdcdf7ee42c2de9af.jpeg', 'initial'),
(85, '2024-07-11 13:05:08.535', '2024-07-11 13:05:08.535', NULL, 12, 'e0d03605e57332b8508effcb1898fc80.jpeg', 'initial'),
(86, '2024-07-11 13:05:08.537', '2024-07-11 13:05:08.537', NULL, 12, '764c17cf6223b0664060794bdb81013c.jpeg', 'initial'),
(87, '2024-07-11 13:05:08.540', '2024-07-11 13:05:08.540', NULL, 12, '3516c91a2b1c62365bdd0f8a40555b34.jpeg', 'initial'),
(88, '2024-07-11 13:57:21.948', '2024-07-11 13:57:21.948', NULL, 13, '6869052a16ded50419c965862601dacc.jpg', 'initial'),
(89, '2024-07-11 13:57:21.954', '2024-07-11 13:57:21.954', NULL, 13, 'c6860ebca02c9d29a7e3e037ced3e5ce.jpeg', 'initial'),
(90, '2024-07-11 13:57:21.957', '2024-07-11 13:57:21.957', NULL, 13, 'b2bf58f76c512dae9416b805200b5c57.jpg', 'initial'),
(91, '2024-07-11 13:57:21.959', '2024-07-11 13:57:21.959', NULL, 13, '5756a890be4ad929f11a67a2a32f69d1.jpg', 'initial'),
(92, '2024-07-11 14:21:09.400', '2024-07-11 14:21:09.400', NULL, 14, '8b2e75b686b84edcf67820a0c7f4647a.jpg', 'initial'),
(93, '2024-07-11 14:21:09.405', '2024-07-11 14:21:09.405', NULL, 14, 'ee3bf6b92a8cd3dcf8e823278f5e46be.jpg', 'initial'),
(94, '2024-07-11 14:21:09.409', '2024-07-11 14:21:09.409', NULL, 14, '089a928b4c30e44cf5d9b587f324f77f.jpg', 'initial'),
(95, '2024-07-11 14:21:09.411', '2024-07-11 14:21:09.411', NULL, 14, '5f8ee9cd276c6e250c07a099bf476994.jpg', 'initial'),
(96, '2024-07-11 15:13:58.809', '2024-07-11 15:13:58.809', NULL, 15, '084429c1e6a2f54c2a2a0a486bc8c43a.jpeg', 'initial'),
(97, '2024-07-11 15:13:58.813', '2024-07-11 15:13:58.813', NULL, 15, '0828dbec8c054546f96288702ded6104.jpg', 'initial'),
(98, '2024-07-11 15:13:58.817', '2024-07-11 15:13:58.817', NULL, 15, '35e1efd8f7253052c068448390ae5d88.jpg', 'initial'),
(99, '2024-07-11 15:13:58.824', '2024-07-11 15:13:58.824', NULL, 15, 'b5d2c4033974d61118e1735bde75fb34.jpg', 'initial'),
(100, '2024-07-11 15:16:05.166', '2024-07-11 15:16:05.166', NULL, 16, '4e9e9805b0df9af6b0afa24a7caef95f.jpg', 'initial'),
(101, '2024-07-11 15:16:05.169', '2024-07-11 15:16:05.169', NULL, 16, '7ccb0aee96a0055e0fdd5d43609e6805.jpg', 'initial'),
(102, '2024-07-11 15:16:05.174', '2024-07-11 15:16:05.174', NULL, 16, '5c1b39cec9ad78379dc3352013f735de.jpg', 'initial'),
(103, '2024-07-11 15:16:05.179', '2024-07-11 15:16:05.179', NULL, 16, '03a80271f10e51a4a193f429dbca7646.jpg', 'initial'),
(104, '2024-07-13 09:59:40.936', '2024-07-13 09:59:40.936', NULL, 17, '2d0fe9d878e0c1c491f523761beec754.jpeg', 'initial'),
(105, '2024-07-13 09:59:40.942', '2024-07-13 09:59:40.942', NULL, 17, '5aec68d40ad9cac203b7bb3abc8f9186.jpeg', 'initial'),
(106, '2024-07-13 09:59:40.946', '2024-07-13 09:59:40.946', NULL, 17, '0226ac313648dc1ebdd144329974bb4a.jpeg', 'initial'),
(107, '2024-07-13 09:59:40.950', '2024-07-13 09:59:40.950', NULL, 17, '02f9e50cfd1b1b6cb75be34b1cd1a1d3.jpeg', 'initial'),
(108, '2024-07-13 10:00:13.569', '2024-07-13 10:00:13.569', NULL, 18, '87f263c19827f20780220bea2f85da80.jpeg', 'initial'),
(109, '2024-07-13 10:00:13.573', '2024-07-13 10:00:13.573', NULL, 18, '00126d853187602d6878c0f2bf0d5991.jpeg', 'initial'),
(110, '2024-07-13 10:00:13.578', '2024-07-13 10:00:13.578', NULL, 18, '25aa1741c3823100604d28a7af0633cd.jpeg', 'initial'),
(111, '2024-07-13 10:00:13.583', '2024-07-13 10:00:13.583', NULL, 18, '488dd01084b9940e45ee1ecf5ae37daa.jpeg', 'initial'),
(132, '2024-07-14 16:23:17.384', '2024-07-14 16:23:17.384', NULL, 19, 'c83c641373b88cf8b5247857c30b7677.jpeg', 'initial'),
(133, '2024-07-14 16:23:17.388', '2024-07-14 16:23:17.388', NULL, 19, '8ac81ee2efea086645b88a5570615e7c.jpeg', 'initial'),
(134, '2024-07-14 16:23:17.390', '2024-07-14 16:23:17.390', NULL, 19, '0ca2146b3dd89b8e390c0da21bfc34e0.jpeg', 'initial'),
(135, '2024-07-14 16:23:17.393', '2024-07-14 16:23:17.393', NULL, 19, 'ad0fa7729b5203504af89ac769f9d98e.jpeg', 'initial'),
(136, '2024-07-14 16:32:50.727', '2024-07-14 16:32:50.727', NULL, 20, '73ddcea509467891cf58935c5c530f47.jpeg', 'initial'),
(137, '2024-07-14 16:32:50.731', '2024-07-14 16:32:50.731', NULL, 20, 'a404183e12aca02f9fd36e7ec2479e60.jpeg', 'initial'),
(138, '2024-07-14 16:32:50.733', '2024-07-14 16:32:50.733', NULL, 20, '12a7827e8ea49bb012347c05760e688a.jpeg', 'initial'),
(139, '2024-07-14 16:32:50.737', '2024-07-14 16:32:50.737', NULL, 20, '133911b4a97e03a8d2b9aa865bc3c26e.jpeg', 'initial');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_models_deleted_at` (`deleted_at`);

--
-- Indexes for table `predcitions`
--
ALTER TABLE `predcitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_predcitions_deleted_at` (`deleted_at`),
  ADD KEY `fk_users_predictions` (`user_id`);

--
-- Indexes for table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_species_deleted_at` (`deleted_at`);

--
-- Indexes for table `testing_images`
--
ALTER TABLE `testing_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_test_images_deleted_at` (`deleted_at`),
  ADD KEY `fk_species_test_images` (`species_id`),
  ADD KEY `idx_testing_images_deleted_at` (`deleted_at`);

--
-- Indexes for table `training_images`
--
ALTER TABLE `training_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_train_images_deleted_at` (`deleted_at`),
  ADD KEY `fk_species_train_images` (`species_id`),
  ADD KEY `idx_training_images_deleted_at` (`deleted_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uni_users_phone` (`phone`),
  ADD UNIQUE KEY `uni_users_username` (`username`),
  ADD UNIQUE KEY `uni_users_email` (`email`),
  ADD KEY `idx_users_deleted_at` (`deleted_at`);

--
-- Indexes for table `validation_images`
--
ALTER TABLE `validation_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_validate_images_deleted_at` (`deleted_at`),
  ADD KEY `fk_species_validate_images` (`species_id`),
  ADD KEY `idx_validation_images_deleted_at` (`deleted_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `predcitions`
--
ALTER TABLE `predcitions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `species`
--
ALTER TABLE `species`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `testing_images`
--
ALTER TABLE `testing_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `training_images`
--
ALTER TABLE `training_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1066;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `validation_images`
--
ALTER TABLE `validation_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `predcitions`
--
ALTER TABLE `predcitions`
  ADD CONSTRAINT `fk_users_predictions` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `testing_images`
--
ALTER TABLE `testing_images`
  ADD CONSTRAINT `fk_species_test_images` FOREIGN KEY (`species_id`) REFERENCES `species` (`id`);

--
-- Constraints for table `training_images`
--
ALTER TABLE `training_images`
  ADD CONSTRAINT `fk_species_train_images` FOREIGN KEY (`species_id`) REFERENCES `species` (`id`);

--
-- Constraints for table `validation_images`
--
ALTER TABLE `validation_images`
  ADD CONSTRAINT `fk_species_validate_images` FOREIGN KEY (`species_id`) REFERENCES `species` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
