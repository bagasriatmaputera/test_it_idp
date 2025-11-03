-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2025 at 05:36 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_indo_dp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_customer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodepos` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_handphone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_bergabung` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `nama_customer`, `alamat`, `kodepos`, `no_handphone`, `email`, `tanggal_bergabung`, `created_at`, `updated_at`) VALUES
(1, 'Unjani Chelsea Yulianti', 'Kpg. Moch. Toha No. 489, Administrasi Jakarta Selatan 12646, Jabar', '18869', '085047472812', 'joko49@example.org', '2025-08-11', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(2, 'Almira Yulianti', 'Psr. Tambak No. 883, Palopo 25540, NTB', '55519', '088289381647', 'yprayoga@example.org', '2023-11-04', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(3, 'Betania Dewi Pudjiastuti M.TI.', 'Ds. Raden No. 664, Administrasi Jakarta Barat 73589, Sumut', '76028', '083939840450', 'kmansur@example.org', '2024-10-21', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(4, 'Ira Rahayu', 'Ki. Ekonomi No. 58, Bima 60178, Kalsel', '93617', '081376655721', 'omansur@example.org', '2024-02-08', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(5, 'Humaira Victoria Mulyani S.E.', 'Jln. Bayan No. 441, Tegal 58125, Riau', '42395', '082636729688', 'sinaga.sakura@example.net', '2024-09-17', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(6, 'Abyasa Rajata', 'Gg. Salam No. 755, Tidore Kepulauan 10162, Lampung', '37875', '083580295657', 'wakiman28@example.net', '2024-07-20', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(7, 'Olga Lazuardi', 'Psr. Bak Air No. 112, Pasuruan 73693, Kaltim', '55793', '085396987281', 'nashiruddin.ganep@example.com', '2024-07-30', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(8, 'Pranawa Waluyo', 'Dk. Barasak No. 281, Tarakan 41873, Sumsel', '45024', '088733711641', 'queen.anggriawan@example.net', '2024-08-24', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(9, 'Labuh Umar Prakasa S.Ked', 'Psr. Sukajadi No. 899, Jayapura 16717, Sulsel', '56704', '089432587646', 'wsaefullah@example.net', '2025-05-12', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(10, 'Marsito Sinaga', 'Jr. Bass No. 897, Tegal 63089, NTT', '62750', '085562767063', 'halim.farida@example.org', '2024-03-28', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(11, 'Karta Wasis Dabukke', 'Ki. Ikan No. 485, Padangsidempuan 90386, Bengkulu', '69715', '087200886783', 'simbolon.capa@example.net', '2024-05-20', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(12, 'Aditya Gamblang Samosir', 'Jr. Laksamana No. 337, Makassar 71065, Sumut', '22647', '083662465628', 'nalar.sudiati@example.com', '2024-02-24', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(13, 'Gawati Hana Melani', 'Dk. Achmad No. 817, Sawahlunto 71782, Babel', '73774', '088042948033', 'nkusumo@example.org', '2024-07-13', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(14, 'Kani Yessi Wastuti', 'Psr. Urip Sumoharjo No. 828, Yogyakarta 41377, Jabar', '24067', '085903325831', 'ami.prabowo@example.net', '2023-11-06', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(15, 'Tari Puspasari', 'Kpg. Rajawali Timur No. 650, Bima 15648, NTT', '13290', '086792764529', 'jailani.ratna@example.org', '2025-02-28', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(16, 'Gambira Estiawan Wacana S.Pd', 'Kpg. Bacang No. 972, Depok 70402, Bali', '36386', '087622721432', 'edi.handayani@example.net', '2024-10-17', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(17, 'Daryani Ajiono Situmorang', 'Jln. Gading No. 308, Cirebon 62216, NTB', '57036', '081312663886', 'drajat.agustina@example.net', '2025-08-16', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(18, 'Nadine Gina Palastri', 'Psr. Raya Ujungberung No. 691, Bogor 51602, Sulteng', '83400', '086472177961', 'cindy.winarno@example.net', '2024-06-03', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(19, 'Mutia Laksmiwati', 'Ds. Raden Saleh No. 171, Binjai 75553, DIY', '94226', '088155769636', 'bwahyuni@example.net', '2024-03-19', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(20, 'Makuta Sitompul', 'Ds. M.T. Haryono No. 590, Ambon 65336, NTB', '56220', '087734677100', 'kuswoyo.halima@example.org', '2025-09-25', '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(21, 'Bagas Riatma', 'Pasekan, Jatiharjo, rt 001/rw 006', '55598', '081345789877', 'bagasriatmap@gmail.com', '2025-11-03', '2025-11-03 09:28:41', '2025-11-03 09:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_01_110445_create_personal_access_tokens_table', 1),
(5, '2025_11_01_111339_create_customers_table', 1),
(6, '2025_11_01_111401_create_products_table', 1),
(7, '2025_11_01_111458_create_order_sumaries_table', 1),
(8, '2025_11_01_111505_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `no_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `harga_per_unit` decimal(10,2) NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `no_order`, `kode_barang`, `nama_barang`, `quantity`, `harga_per_unit`, `total_harga`, `created_at`, `updated_at`) VALUES
(1, 'ORDER001', 'BRG004', 'HP Pavilion Gaming 15', 2, '25724456.00', '51448912.00', '2025-11-03 01:37:49', '2025-11-03 01:37:49'),
(2, 'ORDER002', 'BRG006', 'Samsung Galaxy S24 Ultra', 2, '36039420.00', '72078840.00', '2025-11-03 01:37:58', '2025-11-03 01:37:58'),
(3, 'ORDER003', 'BRG009', 'Oppo Find X7 Pro', 2, '37181056.00', '74362112.00', '2025-11-03 01:38:03', '2025-11-03 01:38:03'),
(4, 'ORDER004', 'BRG016', 'Logitech MX Master 3S Mouse', 3, '21511705.00', '64535115.00', '2025-11-03 01:38:15', '2025-11-03 01:38:15'),
(5, 'ORDER005', 'BRG019', 'GoPro Hero 12 Black', 3, '20661267.00', '61983801.00', '2025-11-03 01:38:23', '2025-11-03 01:38:23'),
(6, 'ORDER006', 'BRG001', 'Laptop ASUS ROG Strix G16', 3, '28887780.00', '86663340.00', '2025-11-03 01:38:32', '2025-11-03 01:38:32'),
(7, 'ORDER007', 'BRG001', 'Laptop ASUS ROG Strix G16', 3, '28887780.00', '86663340.00', '2025-11-03 01:38:37', '2025-11-03 01:38:37'),
(8, 'ORDER008', 'BRG007', 'iPhone 15 Pro Max', 3, '5228999.00', '15686997.00', '2025-11-03 01:38:42', '2025-11-03 01:38:42'),
(9, 'ORDER009', 'BRG009', 'Oppo Find X7 Pro', 1, '37181056.00', '37181056.00', '2025-11-03 01:38:48', '2025-11-03 01:38:48'),
(10, 'ORDER010', 'BRG009', 'Oppo Find X7 Pro', 1, '37181056.00', '37181056.00', '2025-11-03 01:38:59', '2025-11-03 01:38:59'),
(11, 'ORDER011', 'BRG011', 'iPad Pro M2 12.9\"', 5, '18758721.00', '93793605.00', '2025-11-03 01:39:08', '2025-11-03 01:39:08'),
(12, 'ORDER012', 'BRG018', 'Canon EOS R6 Mark II Camera', 3, '29584978.00', '88754934.00', '2025-11-03 01:39:20', '2025-11-03 01:39:20'),
(13, 'ORDER013', 'BRG016', 'Logitech MX Master 3S Mouse', 3, '21511705.00', '64535115.00', '2025-11-03 01:40:11', '2025-11-03 01:40:11'),
(14, 'ORDER014', 'BRG013', 'Apple Watch Series 9', 3, '7895343.00', '23686029.00', '2025-11-03 01:40:15', '2025-11-03 01:40:15'),
(15, 'ORDER015', 'BRG001', 'Laptop ASUS ROG Strix G16', 3, '28887780.00', '86663340.00', '2025-11-03 01:40:34', '2025-11-03 01:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `order_sumaries`
--

CREATE TABLE `order_sumaries` (
  `id` bigint UNSIGNED NOT NULL,
  `no_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `nama_customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_sumaries`
--

INSERT INTO `order_sumaries` (`id`, `no_order`, `tanggal_transaksi`, `nama_customer`, `total_harga`, `created_at`, `updated_at`) VALUES
(1, 'ORDER001', '1900-01-02', 'Almira Yulianti', '51448912.00', '2025-11-03 01:37:49', '2025-11-03 01:37:49'),
(2, 'ORDER002', '2025-11-02', 'Humaira Victoria Mulyani S.E.', '72078840.00', '2025-11-03 01:37:58', '2025-11-03 01:37:58'),
(3, 'ORDER003', '2025-11-02', 'Humaira Victoria Mulyani S.E.', '74362112.00', '2025-11-03 01:38:03', '2025-11-03 01:38:03'),
(4, 'ORDER004', '2025-11-03', 'Humaira Victoria Mulyani S.E.', '64535115.00', '2025-11-03 01:38:15', '2025-11-03 01:38:15'),
(5, 'ORDER005', '2025-11-03', 'Humaira Victoria Mulyani S.E.', '61983801.00', '2025-11-03 01:38:23', '2025-11-03 01:38:23'),
(6, 'ORDER006', '2025-11-02', 'Humaira Victoria Mulyani S.E.', '86663340.00', '2025-11-03 01:38:32', '2025-11-03 01:38:32'),
(7, 'ORDER007', '2025-11-03', 'Almira Yulianti', '86663340.00', '2025-11-03 01:38:37', '2025-11-03 01:38:37'),
(8, 'ORDER008', '2025-11-02', 'Almira Yulianti', '15686997.00', '2025-11-03 01:38:42', '2025-11-03 01:38:42'),
(9, 'ORDER009', '2025-11-03', 'Almira Yulianti', '37181056.00', '2025-11-03 01:38:48', '2025-11-03 01:38:48'),
(10, 'ORDER010', '2025-11-02', 'Olga Lazuardi', '37181056.00', '2025-11-03 01:38:59', '2025-11-03 01:38:59'),
(11, 'ORDER011', '2025-11-03', 'Olga Lazuardi', '93793605.00', '2025-11-03 01:39:08', '2025-11-03 01:39:08'),
(12, 'ORDER012', '2025-11-03', 'Olga Lazuardi', '88754934.00', '2025-11-03 01:39:20', '2025-11-03 01:39:20'),
(13, 'ORDER013', '2025-11-03', 'Pranawa Waluyo', '64535115.00', '2025-11-03 01:40:11', '2025-11-03 01:40:11'),
(14, 'ORDER014', '2025-11-03', 'Pranawa Waluyo', '23686029.00', '2025-11-03 01:40:15', '2025-11-03 01:40:15'),
(15, 'ORDER015', '2025-11-02', 'Pranawa Waluyo', '86663340.00', '2025-11-03 01:40:34', '2025-11-03 01:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_barang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_barang` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `jumlah_stok` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama_barang`, `kode_barang`, `harga`, `jumlah_stok`, `created_at`, `updated_at`) VALUES
(1, 'Laptop ASUS ROG Strix G16', 'BRG001', '28887780.00', 1, '2025-11-03 01:37:44', '2025-11-03 09:53:37'),
(2, 'MacBook Pro M3 2024', 'BRG002', '14039630.00', 30, '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(3, 'Lenovo ThinkPad X1 Carbon', 'BRG003', '31016227.00', 17, '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(4, 'HP Pavilion Gaming 15', 'BRG004', '25724456.00', 24, '2025-11-03 01:37:44', '2025-11-03 01:37:49'),
(5, 'Acer Predator Helios 300', 'BRG005', '11823320.00', 50, '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(6, 'Samsung Galaxy S24 Ultra', 'BRG006', '36039420.00', 46, '2025-11-03 01:37:44', '2025-11-03 01:37:58'),
(7, 'iPhone 15 Pro Max', 'BRG007', '5228999.00', 22, '2025-11-03 01:37:44', '2025-11-03 01:38:42'),
(8, 'Xiaomi 14 Ultra', 'BRG008', '29780665.00', 48, '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(9, 'Oppo Find X7 Pro', 'BRG009', '37181056.00', 21, '2025-11-03 01:37:44', '2025-11-03 01:38:59'),
(10, 'Vivo X100 Pro', 'BRG010', '4315352.00', 11, '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(11, 'iPad Pro M2 12.9\"', 'BRG011', '18758721.00', 12, '2025-11-03 01:37:44', '2025-11-03 01:39:08'),
(12, 'Samsung Galaxy Tab S9 Ultra', 'BRG012', '39090200.00', 19, '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(13, 'Apple Watch Series 9', 'BRG013', '7895343.00', 40, '2025-11-03 01:37:44', '2025-11-03 01:40:15'),
(14, 'Samsung Galaxy Watch 6 Classic', 'BRG014', '38492312.00', 43, '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(15, 'Sony WH-1000XM5 Headphones', 'BRG015', '18700546.00', 19, '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(16, 'Logitech MX Master 3S Mouse', 'BRG016', '21511705.00', 18, '2025-11-03 01:37:44', '2025-11-03 01:40:11'),
(17, 'Razer BlackWidow V4 Keyboard', 'BRG017', '2910137.00', 38, '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(18, 'Canon EOS R6 Mark II Camera', 'BRG018', '29584978.00', 27, '2025-11-03 01:37:44', '2025-11-03 01:39:20'),
(19, 'GoPro Hero 12 Black', 'BRG019', '20661267.00', 8, '2025-11-03 01:37:44', '2025-11-03 01:38:23'),
(20, 'DJI Mini 4 Pro Drone', 'BRG020', '29640899.00', 39, '2025-11-03 01:37:44', '2025-11-03 01:37:44'),
(21, 'Baju Distro', 'BRG021', '85000.00', 200, '2025-11-03 09:37:36', '2025-11-03 09:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD KEY `customers_nama_customer_index` (`nama_customer`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_no_order_foreign` (`no_order`);

--
-- Indexes for table `order_sumaries`
--
ALTER TABLE `order_sumaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_sumaries_no_order_unique` (`no_order`),
  ADD KEY `order_sumaries_tanggal_transaksi_index` (`tanggal_transaksi`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_nama_barang_unique` (`nama_barang`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_sumaries`
--
ALTER TABLE `order_sumaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_no_order_foreign` FOREIGN KEY (`no_order`) REFERENCES `order_sumaries` (`no_order`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
