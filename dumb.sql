-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Des 2021 pada 22.10
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dumb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `method_trans_kartu_kredit`
--

CREATE TABLE `method_trans_kartu_kredit` (
  `id_kartu_kredit` int(10) UNSIGNED NOT NULL,
  `no_kartu_kredit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atas_nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_transaksi` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `method_trans_kartu_kredit`
--

INSERT INTO `method_trans_kartu_kredit` (`id_kartu_kredit`, `no_kartu_kredit`, `atas_nama`, `id_transaksi`, `created_at`, `updated_at`) VALUES
(3, '12345', 'meza', 21, '2021-12-27 13:19:04', '2021-12-27 13:19:04'),
(4, '12345', 'nanda', 23, '2021-12-27 13:34:29', '2021-12-27 13:34:29'),
(5, '12345', 'nanda', 23, '2021-12-27 13:35:01', '2021-12-27 13:35:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `method_trans_trf_bank`
--

CREATE TABLE `method_trans_trf_bank` (
  `id_trf_bank` int(10) UNSIGNED NOT NULL,
  `bank` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_rekening` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_pembayaran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atas_nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_transaksi` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `method_trans_trf_bank`
--

INSERT INTO `method_trans_trf_bank` (`id_trf_bank`, `bank`, `nomor_rekening`, `bukti_pembayaran`, `atas_nama`, `id_transaksi`, `created_at`, `updated_at`) VALUES
(14, 'bni', '12345', '20nanda_12-27-2021.png', 'nanda', 20, '2021-12-27 02:09:55', '2021-12-27 02:09:55'),
(15, 'bni', '12345', '20nanda_12-27-2021.png', 'nanda', 20, '2021-12-27 02:11:15', '2021-12-27 02:11:15'),
(17, 'bri', '111111', '24hanif_12-27-2021.png', 'hanif', 24, '2021-12-27 13:52:20', '2021-12-27 13:52:20'),
(18, 'bri', '111111', '24hanif_12-27-2021.png', 'hanif', 24, '2021-12-27 13:53:08', '2021-12-27 13:53:08'),
(19, 'bri', '444555', '25dimas_12-27-2021.png', 'dimas', 25, '2021-12-27 14:03:11', '2021-12-27 14:03:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2018_03_25_0_create_users_table', 1),
(3, '2018_03_25_1_create_tb_genre_film', 1),
(4, '2018_03_25_2_create_tb_kategori', 1),
(5, '2018_03_25_3_create_tb_film', 1),
(6, '2018_03_25_4_create_tb_studio', 1),
(7, '2018_03_25_5_create_tb_tayang', 1),
(8, '2018_03_25_6_create_tb_kursi', 1),
(9, '2018_03_25_7_create_tb_list_kursi', 1),
(10, '2018_03_25_8_create_tb_booking', 1),
(11, '2018_03_25_90_create_tb_det_booking', 1),
(12, '2018_03_25_91_create_tb_transaksi', 1),
(13, '2018_03_25_92_create_method_trans_trf_bank', 1),
(14, '2018_03_25_93_create_method_trans_kartu_kredit', 1),
(15, '2018_03_25_043926_create_films_table', 2),
(16, '2018_04_07_112448_add_image_to_tb_film', 2),
(17, '2018_04_07_112820_add_image_to_users', 2),
(18, '2018_04_19_110836_add_column_to_genre', 3),
(19, '2018_05_08_003437_add_status_booking', 4),
(20, '2018_05_08_015751_add_at_listkursi', 5),
(21, '2018_05_08_111546_change_column_bukti_trf', 6),
(22, '2018_05_08_111842_change_column_bukti_trf', 7),
(23, '2018_05_09_033340_add_unique_code', 8),
(24, '2018_05_10_065532_add_status_transaksi', 9),
(25, '2018_05_10_074510_change_status_transaksi', 10),
(26, '2018_05_14_044316_add_status_booking_dibayar', 11),
(27, '2018_05_14_045300_change_data_type_trf', 12),
(28, '2018_05_14_045518_change_data_type_kredit', 12),
(29, '2018_05_23_021721_change_direksi_unique', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nanda@gmail.com', '$2y$10$VORmh7o0keM9wY55IxEJ3OJDN/QY4Dl3NS8x/e3XUVTSHC82jo5oi', '2021-12-27 02:59:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_booking`
--

CREATE TABLE `tb_booking` (
  `id_booking` int(10) UNSIGNED NOT NULL,
  `status` enum('belum_lunas','gagal','dibayar','lunas') COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_pembayaran` int(11) NOT NULL,
  `batas_transaksi` datetime NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_booking`
--

INSERT INTO `tb_booking` (`id_booking`, `status`, `total_pembayaran`, `batas_transaksi`, `id_user`, `created_at`, `updated_at`) VALUES
(29, 'lunas', 30000, '2021-12-28 17:07:52', 4, '2021-12-27 02:07:52', '2021-12-27 13:32:11'),
(30, 'dibayar', 30000, '2021-12-29 04:18:16', 9, '2021-12-27 13:18:16', '2021-12-27 13:18:49'),
(32, 'lunas', 30000, '2021-12-29 04:34:00', 4, '2021-12-27 13:34:00', '2021-12-27 13:34:54'),
(33, 'lunas', 30000, '2021-12-29 04:50:03', 10, '2021-12-27 13:50:03', '2021-12-27 13:53:00'),
(34, 'dibayar', 90000, '2021-12-29 04:55:36', 7, '2021-12-27 13:55:36', '2021-12-27 14:02:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_det_booking`
--

CREATE TABLE `tb_det_booking` (
  `id_det_booking` int(10) UNSIGNED NOT NULL,
  `status` enum('deal','pending') COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(10) UNSIGNED NOT NULL,
  `unique_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_list_kursi` int(10) UNSIGNED DEFAULT NULL,
  `id_booking` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_det_booking`
--

INSERT INTO `tb_det_booking` (`id_det_booking`, `status`, `harga`, `unique_code`, `id_list_kursi`, `id_booking`, `created_at`, `updated_at`) VALUES
(54, 'deal', 30000, 'idhRjIb0k6', NULL, 29, '2021-12-27 02:07:52', '2021-12-27 02:09:08'),
(55, 'deal', 30000, 'W7QtdkqcD1', 30, 30, '2021-12-27 13:18:16', '2021-12-27 13:18:49'),
(56, 'deal', 30000, '5AsY7xODCb', 31, NULL, '2021-12-27 13:22:22', '2021-12-27 13:26:03'),
(58, 'deal', 30000, '5M4AejqhyV', 27, 32, '2021-12-27 13:34:00', '2021-12-27 13:34:17'),
(59, 'deal', 30000, '0xA9Jbitls', 29, 33, '2021-12-27 13:50:03', '2021-12-27 13:51:51'),
(60, 'deal', 30000, '0ZegMCqm1G', 18, 34, '2021-12-27 13:55:36', '2021-12-27 14:02:42'),
(62, 'deal', 30000, 'MKw1WB3zNu', 33, 34, '2021-12-27 14:02:35', '2021-12-27 14:02:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_film`
--

CREATE TABLE `tb_film` (
  `id_film` int(10) UNSIGNED NOT NULL,
  `nama_film` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_produksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sinopsis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bahasa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `negara` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_genre_film` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_film`
--

INSERT INTO `tb_film` (`id_film`, `nama_film`, `tahun_produksi`, `direksi`, `pemain`, `sinopsis`, `bahasa`, `negara`, `image`, `id_genre_film`, `id_kategori`, `created_at`, `updated_at`) VALUES
(18, 'Cinta Bete', '2021', 'Roy Lolang', 'Hana Prinantina, Djenar Maesa Ayu', 'Persahabatan Bete Kaebauk dan Emilio berubah menjadi saling jatuh cinta. Hubungan mereka kandas saat Emilio masuk sekolah seminari, Bete patah hati. Dalam kesedihan Bete bertemu dengan Alfred', 'indonesia', '', '16357394806001_405x594.jpg', 7, 3, '2021-12-27 02:29:32', '2021-12-27 05:51:35'),
(19, 'ETERNALS', '2021', 'Marvel Studios', 'Harry styles, Angelina Jolie, Salma Hayek', 'Marvel Studios’ “Eternals” menghadirkan kisah sekelompok pahlawan dari luar angkasa yang telah melindungi Bumi sejak awal peradaban manusia.', 'indonesia', '', '1634116787650_405x594.jpg', 1, 3, '2021-12-27 06:01:16', '2021-12-27 06:08:20'),
(21, 'Kadet 1947', '2021', 'Temata Studios, Legacy Pictures, Screenplay Films', 'Samo Rafael, Baskara Mahendra, Lutesha, Bisma Karisma', 'Sekelompok kadet dari sekolah penerbang Angkatan Udara di Maguwo, bernama Sigit (Bisma Karisma), Mul (Kevin Julio), Har (Omara Esteghlal), dan Adji (Marthino Lio) berambisi untuk ikut serta m', 'indonesia', '', '163790619197602_405x594.jpg', 1, 3, '2021-12-27 06:06:47', '2021-12-27 11:43:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_genre_film`
--

CREATE TABLE `tb_genre_film` (
  `id_genre_film` int(10) UNSIGNED NOT NULL,
  `genre_film` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_genre_film`
--

INSERT INTO `tb_genre_film` (`id_genre_film`, `genre_film`, `created_at`, `updated_at`) VALUES
(1, 'Horror', NULL, NULL),
(2, 'Comedy', NULL, NULL),
(3, 'Action', NULL, NULL),
(4, 'Scifi', '2018-04-19 04:11:02', '2018-04-19 04:11:02'),
(5, 'Historical', '2018-04-19 04:16:39', '2018-04-19 04:16:39'),
(6, 'Documentary', '2018-04-19 04:25:44', '2018-04-19 04:25:44'),
(7, 'Romance', '2018-04-19 04:27:02', '2018-04-19 04:27:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_umur` int(11) NOT NULL,
  `max_umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `kategori`, `min_umur`, `max_umur`, `created_at`, `updated_at`) VALUES
(1, 'Dewasa', 18, 100, NULL, '2018-05-02 04:32:04'),
(2, 'Anak', 0, 12, NULL, '2018-05-02 04:31:56'),
(3, 'Remaja', 12, 18, NULL, '2018-05-02 04:31:49'),
(4, 'Semua Umur', 0, 100, '2018-04-19 01:44:31', '2018-04-19 01:44:31'),
(5, 'Orang Tua', 30, 100, '2018-04-19 01:52:08', '2018-04-19 01:52:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kursi`
--

CREATE TABLE `tb_kursi` (
  `id_kursi` int(10) UNSIGNED NOT NULL,
  `kode_kursi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_kursi`
--

INSERT INTO `tb_kursi` (`id_kursi`, `kode_kursi`, `created_at`, `updated_at`) VALUES
(1, 'A-1', NULL, NULL),
(2, 'A-2', NULL, NULL),
(3, 'A-3', NULL, NULL),
(4, 'A-4', NULL, NULL),
(5, 'A-5', NULL, NULL),
(6, 'B-1', NULL, NULL),
(7, 'B-2', NULL, NULL),
(8, 'B-3', '2018-05-15 18:31:43', '2018-05-15 18:31:43'),
(9, 'B-4', '2018-05-15 18:31:53', '2018-05-15 18:31:53'),
(10, 'B-5', '2018-05-15 18:31:58', '2018-05-15 18:31:58'),
(11, 'C-1', '2018-05-15 18:32:05', '2018-05-15 18:32:05'),
(12, 'C-2', NULL, NULL),
(13, 'C-3', NULL, NULL),
(14, 'C-4', NULL, NULL),
(15, 'C-5', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_list_kursi`
--

CREATE TABLE `tb_list_kursi` (
  `id_list_kursi` int(10) UNSIGNED NOT NULL,
  `id_kursi` int(10) UNSIGNED NOT NULL,
  `id_tayang` int(10) UNSIGNED NOT NULL,
  `status` enum('tersedia','terpesan','sold') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_list_kursi`
--

INSERT INTO `tb_list_kursi` (`id_list_kursi`, `id_kursi`, `id_tayang`, `status`, `created_at`, `updated_at`) VALUES
(18, 6, 17, 'terpesan', '2021-12-27 13:03:29', '2021-12-27 13:55:36'),
(19, 11, 17, 'tersedia', '2021-12-27 13:04:06', '2021-12-27 13:04:06'),
(20, 12, 17, 'tersedia', '2021-12-27 13:04:17', '2021-12-27 13:04:17'),
(21, 7, 17, 'tersedia', '2021-12-27 13:04:26', '2021-12-27 13:04:26'),
(22, 1, 20, 'tersedia', '2021-12-27 13:06:01', '2021-12-27 13:06:01'),
(23, 2, 20, 'tersedia', '2021-12-27 13:06:11', '2021-12-27 13:06:11'),
(24, 6, 20, 'tersedia', '2021-12-27 13:06:19', '2021-12-27 13:06:19'),
(25, 7, 20, 'tersedia', '2021-12-27 13:06:27', '2021-12-27 13:06:27'),
(26, 11, 20, 'tersedia', '2021-12-27 13:06:35', '2021-12-27 13:06:35'),
(27, 12, 20, 'terpesan', '2021-12-27 13:06:45', '2021-12-27 13:34:00'),
(28, 1, 21, 'tersedia', '2021-12-27 13:07:56', '2021-12-27 13:07:56'),
(29, 6, 21, 'terpesan', '2021-12-27 13:08:05', '2021-12-27 13:50:03'),
(30, 11, 21, 'terpesan', '2021-12-27 13:08:13', '2021-12-27 13:18:16'),
(31, 5, 22, 'terpesan', '2021-12-27 13:09:17', '2021-12-27 13:25:30'),
(32, 10, 22, 'tersedia', '2021-12-27 13:09:28', '2021-12-27 13:09:28'),
(33, 15, 22, 'terpesan', '2021-12-27 13:09:37', '2021-12-27 14:02:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_studio`
--

CREATE TABLE `tb_studio` (
  `id_studio` int(10) UNSIGNED NOT NULL,
  `nama_studio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_studio`
--

INSERT INTO `tb_studio` (`id_studio`, `nama_studio`, `created_at`, `updated_at`) VALUES
(1, 'A1', NULL, NULL),
(2, 'B1', NULL, NULL),
(3, 'C1', '2018-05-22 19:36:17', '2018-05-22 19:36:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tayang`
--

CREATE TABLE `tb_tayang` (
  `id_tayang` int(10) UNSIGNED NOT NULL,
  `waktu_tayang` datetime NOT NULL,
  `harga_tiket` int(11) NOT NULL,
  `id_film` int(10) UNSIGNED NOT NULL,
  `id_studio` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_tayang`
--

INSERT INTO `tb_tayang` (`id_tayang`, `waktu_tayang`, `harga_tiket`, `id_film`, `id_studio`, `id_user`, `created_at`, `updated_at`) VALUES
(17, '2022-01-01 16:00:00', 30000, 18, 1, 4, '2021-12-27 02:30:31', '2021-12-27 02:30:31'),
(20, '2022-01-01 18:00:00', 30000, 18, 2, 9, '2021-12-27 13:05:51', '2021-12-27 13:05:51'),
(21, '2022-01-02 14:00:00', 30000, 19, 3, 9, '2021-12-27 13:07:47', '2021-12-27 13:07:47'),
(22, '2022-01-02 16:00:00', 30000, 21, 1, 9, '2021-12-27 13:09:00', '2021-12-27 13:09:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(10) UNSIGNED NOT NULL,
  `method` enum('transfer','kartu_kredit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `id_booking` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('belum_dibayar','dibayar','lunas') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `method`, `waktu_transaksi`, `id_booking`, `id_user`, `created_at`, `updated_at`, `status`) VALUES
(20, 'transfer', '2021-12-27 17:09:08', 29, 4, '2021-12-27 02:09:08', '2021-12-27 13:32:11', 'lunas'),
(21, 'kartu_kredit', '2021-12-28 04:18:49', 30, 9, '2021-12-27 13:18:49', '2021-12-27 13:19:04', 'dibayar'),
(23, 'kartu_kredit', '2021-12-28 04:34:17', 32, 4, '2021-12-27 13:34:17', '2021-12-27 13:35:01', 'dibayar'),
(24, 'transfer', '2021-12-28 04:51:50', 33, 10, '2021-12-27 13:51:50', '2021-12-27 13:53:08', 'dibayar'),
(25, 'transfer', '2021-12-28 05:02:42', 34, 7, '2021-12-27 14:02:42', '2021-12-27 14:03:11', 'dibayar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upcoming`
--

CREATE TABLE `upcoming` (
  `id_upcoming` int(10) UNSIGNED NOT NULL,
  `nama_film` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_produksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sinopsis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bahasa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `negara` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_genre_film` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `upcoming`
--

INSERT INTO `upcoming` (`id_upcoming`, `nama_film`, `tahun_produksi`, `direksi`, `pemain`, `sinopsis`, `bahasa`, `negara`, `image`, `id_genre_film`, `id_kategori`, `created_at`, `updated_at`) VALUES
(18, 'Nussa', '2021', 'sunna', 'nussa', 'NUSSA (8), si juara bertahan science fair, ingin kembali memenangkan lomba dengan roket rancangannya didampingi oleh ABBA. Namun, eksperimen roketnya telah gagal, dan teman-teman beralih memp', 'indonesia', '', 'nussa-1b3ee309_300x450.jpg', 2, 4, '2021-12-23 05:04:18', '2021-12-23 05:04:18'),
(20, 'Yowis Ben', '2021', 'Startvision', 'Bayu skak, Joshua, Anya Geraldine', 'Hidup Bayu (Bayu Skak) nyaman selain karena Yowis Ben semakin tenar, Asih (Anya Geraldine), pacarnya, juga selalu mendukung Bayu dalam setiap cita-citanya. Bayu mulai merasa cemas dengan masa', 'indonesia', '', '163334468236882_405x594.jpg', 2, 4, '2021-12-27 13:48:48', '2021-12-27 13:48:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_daftar` date NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('online','offline') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `alamat`, `telepon`, `tgl_daftar`, `admin`, `status`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'nanda', 'nanda@gmail.com', '$2y$10$w.NdEIG4FAd/p5P0S0wFo.pUdlstMC.G0VgXwJ961VkwofAYdQPV2', 'purworejo', '0897676666787', '0000-00-00', 0, 'online', 'nanda@gmail.com_12-27-2021.jpg', 'OjGZxE6FQXkMgfivGY6tZZY14BGUCKUVECUuI3N98Hr98TMcjtp3WbZuhHMb', '2021-12-27 02:04:16', '2021-12-27 13:31:06'),
(7, 'dimas', 'dimas@gmail.com', '$2y$10$0cUYAjmAqDMSBvmi3Ft0Ku0h50vCmaGZThaNG2L4jNd27Lrjahweq', 'jogja', '123444555678', '0000-00-00', 0, 'online', 'dimas@gmail.com_12-27-2021.jpg', 'NdywG1qPPQtQtwsYf6sKEfKm5lYuzMyrUyQS3atvXII9LLMbb0Cf3adnx9ce', '2021-12-27 09:59:49', '2021-12-27 13:30:07'),
(9, 'meza', 'meza@gmail.com', '$2y$10$nrHR0/ib4rP5keh90yt4aekqnT3/FeW6t4X.3RV3FM8UKUMjDjqt2', 'banguntapan', '08911122234', '0000-00-00', 0, 'online', 'meza@gmail.com_12-27-2021.jpg', 'MZQJToBEnIQcEpOeaPlgR38fS43RgfpopDmdWU6bpTKzmimk4NkNsdDCT2tK', '2021-12-27 10:28:19', '2021-12-27 13:03:09'),
(10, 'hanif', 'hanif@gmail.com', '$2y$10$wf8W4S/EBWRTOMswlLBg7umaYwwm5J.a1mlgjEGom6IQOZ.BVq7t2', 'jogja', '0897111234', '0000-00-00', 0, 'online', 'hanif@gmail.com_12-27-2021.jpg', 'm0ZSstSWR2vpRhtZdio5b4EvE2kMqhGEBLeU08favGsEF8jXQvyZadyb4Esm', '2021-12-27 13:43:03', '2021-12-27 13:43:54'),
(11, 'admin', 'admin@gmail.com', '$2y$10$C4moKZ5TTdGkN4Z97cOPV./9VteiyBDZh.ZlziGq2iDIiGrk9K5EW', '', '', '0000-00-00', 1, 'online', '', 'OrihaASv4uUZmsLJVdvjmqtgVh3g9U4vVuXUPnNBIVjwErpx8USPt6NVs57B', '2021-12-27 13:44:59', '2021-12-27 13:44:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `method_trans_kartu_kredit`
--
ALTER TABLE `method_trans_kartu_kredit`
  ADD PRIMARY KEY (`id_kartu_kredit`),
  ADD KEY `method_trans_kartu_kredit_id_transaksi_foreign` (`id_transaksi`);

--
-- Indeks untuk tabel `method_trans_trf_bank`
--
ALTER TABLE `method_trans_trf_bank`
  ADD PRIMARY KEY (`id_trf_bank`),
  ADD KEY `method_trans_trf_bank_id_transaksi_foreign` (`id_transaksi`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `tb_booking`
--
ALTER TABLE `tb_booking`
  ADD PRIMARY KEY (`id_booking`),
  ADD KEY `tb_booking_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `tb_det_booking`
--
ALTER TABLE `tb_det_booking`
  ADD PRIMARY KEY (`id_det_booking`),
  ADD KEY `tb_det_booking_id_list_kursi_foreign` (`id_list_kursi`),
  ADD KEY `tb_det_booking_id_booking_foreign` (`id_booking`);

--
-- Indeks untuk tabel `tb_film`
--
ALTER TABLE `tb_film`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `tb_film_id_genre_film_foreign` (`id_genre_film`),
  ADD KEY `tb_film_id_kategori_foreign` (`id_kategori`);

--
-- Indeks untuk tabel `tb_genre_film`
--
ALTER TABLE `tb_genre_film`
  ADD PRIMARY KEY (`id_genre_film`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_kursi`
--
ALTER TABLE `tb_kursi`
  ADD PRIMARY KEY (`id_kursi`);

--
-- Indeks untuk tabel `tb_list_kursi`
--
ALTER TABLE `tb_list_kursi`
  ADD PRIMARY KEY (`id_list_kursi`),
  ADD KEY `tb_list_kursi_id_kursi_foreign` (`id_kursi`),
  ADD KEY `tb_list_kursi_id_tayang_foreign` (`id_tayang`);

--
-- Indeks untuk tabel `tb_studio`
--
ALTER TABLE `tb_studio`
  ADD PRIMARY KEY (`id_studio`);

--
-- Indeks untuk tabel `tb_tayang`
--
ALTER TABLE `tb_tayang`
  ADD PRIMARY KEY (`id_tayang`),
  ADD KEY `tb_tayang_id_user_foreign` (`id_user`),
  ADD KEY `tb_tayang_id_film_foreign` (`id_film`),
  ADD KEY `tb_tayang_id_studio_foreign` (`id_studio`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `tb_transaksi_id_booking_foreign` (`id_booking`),
  ADD KEY `tb_transaksi_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `upcoming`
--
ALTER TABLE `upcoming`
  ADD PRIMARY KEY (`id_upcoming`),
  ADD KEY `tb_film_id_genre_film_foreign` (`id_genre_film`),
  ADD KEY `tb_film_id_kategori_foreign` (`id_kategori`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id_unique` (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `method_trans_kartu_kredit`
--
ALTER TABLE `method_trans_kartu_kredit`
  MODIFY `id_kartu_kredit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `method_trans_trf_bank`
--
ALTER TABLE `method_trans_trf_bank`
  MODIFY `id_trf_bank` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `tb_booking`
--
ALTER TABLE `tb_booking`
  MODIFY `id_booking` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tb_det_booking`
--
ALTER TABLE `tb_det_booking`
  MODIFY `id_det_booking` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `tb_film`
--
ALTER TABLE `tb_film`
  MODIFY `id_film` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tb_genre_film`
--
ALTER TABLE `tb_genre_film`
  MODIFY `id_genre_film` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_kursi`
--
ALTER TABLE `tb_kursi`
  MODIFY `id_kursi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_list_kursi`
--
ALTER TABLE `tb_list_kursi`
  MODIFY `id_list_kursi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tb_studio`
--
ALTER TABLE `tb_studio`
  MODIFY `id_studio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_tayang`
--
ALTER TABLE `tb_tayang`
  MODIFY `id_tayang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `upcoming`
--
ALTER TABLE `upcoming`
  MODIFY `id_upcoming` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `method_trans_kartu_kredit`
--
ALTER TABLE `method_trans_kartu_kredit`
  ADD CONSTRAINT `method_trans_kartu_kredit_id_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `tb_transaksi` (`id_transaksi`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `method_trans_trf_bank`
--
ALTER TABLE `method_trans_trf_bank`
  ADD CONSTRAINT `method_trans_trf_bank_id_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `tb_transaksi` (`id_transaksi`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_booking`
--
ALTER TABLE `tb_booking`
  ADD CONSTRAINT `tb_booking_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_det_booking`
--
ALTER TABLE `tb_det_booking`
  ADD CONSTRAINT `tb_det_booking_id_booking_foreign` FOREIGN KEY (`id_booking`) REFERENCES `tb_booking` (`id_booking`) ON DELETE SET NULL,
  ADD CONSTRAINT `tb_det_booking_id_list_kursi_foreign` FOREIGN KEY (`id_list_kursi`) REFERENCES `tb_list_kursi` (`id_list_kursi`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `tb_film`
--
ALTER TABLE `tb_film`
  ADD CONSTRAINT `tb_film_id_genre_film_foreign` FOREIGN KEY (`id_genre_film`) REFERENCES `tb_genre_film` (`id_genre_film`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_film_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_list_kursi`
--
ALTER TABLE `tb_list_kursi`
  ADD CONSTRAINT `tb_list_kursi_id_kursi_foreign` FOREIGN KEY (`id_kursi`) REFERENCES `tb_kursi` (`id_kursi`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_list_kursi_id_tayang_foreign` FOREIGN KEY (`id_tayang`) REFERENCES `tb_tayang` (`id_tayang`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_tayang`
--
ALTER TABLE `tb_tayang`
  ADD CONSTRAINT `tb_tayang_id_film_foreign` FOREIGN KEY (`id_film`) REFERENCES `tb_film` (`id_film`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_tayang_id_studio_foreign` FOREIGN KEY (`id_studio`) REFERENCES `tb_studio` (`id_studio`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_tayang_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD CONSTRAINT `tb_transaksi_id_booking_foreign` FOREIGN KEY (`id_booking`) REFERENCES `tb_booking` (`id_booking`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_transaksi_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

DELIMITER $$
--
-- Event
--
CREATE DEFINER=`root`@`localhost` EVENT `auto_cancel` ON SCHEDULE EVERY 1 SECOND STARTS '2018-05-24 19:13:07' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
		UPDATE tb_booking
		JOIN tb_det_booking ON tb_booking.`id_booking` = tb_det_booking.`id_booking`
		JOIN tb_list_kursi ON tb_list_kursi.`id_list_kursi` = tb_det_booking.`id_list_kursi`
		SET tb_booking.`status` = 'gagal', tb_list_kursi.`status` = 'tersedia'
		WHERE TIMESTAMPDIFF(SECOND, tb_booking.`batas_transaksi`, NOW()) > 1 AND tb_booking.`status` ='belum_lunas';
	END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
