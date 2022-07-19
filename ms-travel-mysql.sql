-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220707.a5d60f5698
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 04:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ms-travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'assets/gallery/w4gsMgAwZuVrktpVPwEDspuKJIU9wlwUAVIhB9M4.jpg', NULL, '2022-07-07 05:30:25', '2022-07-07 06:21:13'),
(2, 2, 'assets/gallery/WTa02OOOyXerJVq8n74Bdu5h22huRe0ZRAehZ70t.jpg', '2022-07-07 06:21:56', '2022-07-07 06:11:05', '2022-07-07 06:21:56'),
(3, 2, 'assets/gallery/vnCeDdSvZnVgTCdfBIU4PX9ZrKu1kYBV3VyWVp60.jpg', NULL, '2022-07-07 09:19:00', '2022-07-07 09:19:00'),
(4, 3, 'assets/gallery/fZjFJuIdXODLh4HYsTFeuiyWgzzaRU7BtmrLWbiZ.jpg', NULL, '2022-07-07 09:20:21', '2022-07-07 09:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_04_151756_create_travel_packages_table', 1),
(6, '2022_07_04_153307_create_galleries_table', 2),
(7, '2022_07_04_154017_create_transactions_table', 3),
(8, '2022_07_04_154741_create_transaction_details_table', 4),
(9, '2022_07_06_030109_add_roles_field_to_users_table', 5),
(10, '2022_07_06_053243_add_username_field_to_users_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Jam Gadang Banget', 'jam-gadang-banget', 'Bukittinggi, Indonesia', 'ini adalah jam gadang', 'tari pasambahan', 'padang', 'kilikili', '2022-07-07', '2D', 'Open Trip', 300, '2022-07-06 10:34:48', '2022-07-06 10:19:51', '2022-07-06 10:34:48'),
(2, 'Jam Gadang', 'jam-gadang', 'Bukittinggi, Indonesia', 'Jam Gadang adalah menara jam yang menjadi penanda atau ikon Kota Bukittinggi, Sumatra Barat, Indonesia. Menara jam ini memiliki jam dengan ukuran besar di empat sisinya sehingga dinamakan Jam Gadang, sebutan bahasa Minangkabau yang berarti \"jam besar\". \r\n\r\nJam Gadang menjadi lokasi peristiwa penting pada masa sekitar kemerdekaan Indonesia, seperti pengibaran bendera merah putih (1945), Demonstrasi Nasi Bungkus (1950), dan pembunuhan 187 penduduk setempat oleh militer Indonesia atas tuduhan terlibat Pemerintahan Revolusioner Republik Indonesia (1959).\r\n\r\nJam Gadang telah dijadikan sebagai objek wisata dengan diperluasnya taman di sekitarnya. Taman tersebut menjadi ruang interaksi masyarakat baik pada hari kerja maupun pada hari libur. Acara-acara yang sifatnya umum biasanya diselenggarakan di sini.', 'Kembang api', 'Indonesia', 'Sanjay', '2022-07-21', '2D', 'Open Trip', 1000000, NULL, '2022-07-06 10:36:06', '2022-07-07 08:07:39'),
(3, 'Pulau Mandeh', 'pulau-mandeh', 'Pesisir Selatan, Sumatera Barat', 'Pulau Mandeh, sebuah destinasi wisata yang berada di pesisir Selatan Sumatera Barat. Tempat ini memiliki luas sekitar 18.000 hektar dengan 3 kecamatan serta 7 desa. Daerah ini merupakan sebuah perpaduan dari kumpulan bukit yang indah dan teluk yang memesona.\r\n\r\nDisebut sebagai Raja Ampat-nya Sumatera, tempat ini juga memiliki banyak destinasi yang bisa dijadikan pertimbangan bagi Anda dalam memilih tempat liburan. Tidak kalah dengan wisata yang ada di Pulau Dewata, Pulau Mandeh juga memiliki banyak tempat yang wajib dikunjungi.\r\n\r\nPulau Setan, Pulau Taraju, Pulau Marak, Kapo-Kapo, hingga Sironjong dan Pulau Cubadak, banyak sekali tempat wisata yang bisa Anda temui di sini. Masing-masing tempat mempunyai keindahan yang khas, seperti Cubadak dengan kekayaan alam bawah laut dan Pulau Marak yang disebut-sebut sebagai Raja Ampat ke dua', 'Selancar', 'Indonesia', 'Seafood', '2022-07-07', '2D', 'Open Trip', 2000000, NULL, '2022-07-07 08:12:12', '2022-07-07 08:12:12'),
(4, 'Kelok Sembilan', 'kelok-sembilan', 'Payakumbuh', 'Sama seperti namanya, jalanan yang menghubungkan Provinsi Riau dengan Sumatera Barat ini berkelok-kelok. Karena diapit oleh dua perbukitan yang masuk dalam kawasan cagar alam, yakni Cagar Alam Air Putih dan Cagar Alam Harau, jembatan ini pun memiliki pemandangan yang cukup menawan. Ditambah dengan keunikannya, Jembatan Kelok Sembilan selalu menjadi daya tarik bagi para pengendara yang melewatinya', 'Takde', 'Indonesia', 'Local Foods', '2022-07-20', '3D', 'Open Trip', 1000000, NULL, '2022-07-07 08:14:43', '2022-07-07 08:14:43'),
(5, 'Instana Pagaruyung', 'instana-pagaruyung', 'Tanah Datar', 'Istano Basa yang lebih terkenal dengan nama Istana Pagaruyung adalah museum berupa replika istana Kerajaan Pagaruyung terletak di Nagari Pagaruyung, Kecamatan Tanjung Emas, Kabupaten Tanah Datar, Sumatra Barat. Istana ini berjarak lebih kurang 5 kilometer dari Batusangkar. Istana ini merupakan objek wisata budaya yang terkenal di Sumatra Barat.\r\n\r\nIstano Basa yang berdiri sekarang sebenarnya adalah replika dari yang asli. Istano Basa yang asli terletak di atas bukit Batu Patah dan dibakar habis pada tahun 1804 saat terjadi Perang Padri. Istana baru didirikan kembali tetapi terbakar lagi pada tahun 1966.', 'Takde', 'Indonesia', 'Local Foods', '2022-07-07', '2D', 'Open Trip', 1000000, NULL, '2022-07-07 08:17:02', '2022-07-07 08:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'Mesta Salsabila', 'mesta@gmail.com', '2022-07-05 21:10:25', '$2y$10$otIc0lG2aJ7hqwY9cvfWie1VpbAzPcSxsKuejqqWf1Lh.g9KtP9vy', NULL, '2022-07-05 21:06:30', '2022-07-05 21:10:25', 'ADMIN', 'mestasbl'),
(2, 'Selena', 'selena@gmail.com', NULL, '$2y$10$4jEnd3/OUhn1FP.0qPy9y.dQSXe3P50qztv9MjnnaRaYftZdTMAky', NULL, '2022-07-05 22:17:21', '2022-07-05 22:17:21', 'USER', 'selen'),
(3, 'Silvanna User', 'silvanna@gmail.com', NULL, '$2y$10$EV5xZmpyRln0tr8AyeOUlO/mDTVHOXQctYpp8Pae6xfzEWL4zwDaK', NULL, '2022-07-05 22:47:08', '2022-07-05 22:47:08', 'USER', 'siluser'),
(4, 'Kagura', 'kagura@gmail.com', '2022-07-07 10:56:06', '$2y$10$jgX132pi.uMGmNqaAC.oGe.YpatVpVdYnTrvL4O3NqeDVYvt9aRT.', NULL, '2022-07-07 10:55:25', '2022-07-07 10:56:06', 'USER', 'Kaguraxx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



