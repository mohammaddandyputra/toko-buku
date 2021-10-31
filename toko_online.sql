-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Feb 2021 pada 10.24
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stock` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('PUBLISH','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `title`, `slug`, `description`, `author`, `publisher`, `cover`, `price`, `views`, `stock`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'E-Book Be Fullstack Developer', 'e-book-be-fullstack-developer', 'Seorang FULLSTACK DEVELOPER adalah mereka yang mampu bekerja untuk mengembangkan suatu aplikasi dengan menggunakan teknologi backend dan frontend sekaligus. Bahasa pemrograman yang berjalan di sisi server seperti PHP, Python, dan Java merupakan bahasa yang umumnya mereka kuasai dengan baik. Mereka cukup faham tentang bagaimana membangun sebuah web service, melakukan konfigurasi dasar server, serta berinteraksi dengan database melalui query. Di samping itu, mereka juga dapat familier dengan teknologi frontend web seperti: HTML, CSS dan Javascript.', 'Muhammad Azamuddin & Hafid Mukhlasin', 'Cemerlang', 'book-covers/LdqFpWeA12yQSITAX4rYQnfAmMdC9a5VA6ThuyFP.jpg', 300000.00, 0, 1, 'PUBLISH', 1, 1, NULL, '2021-02-11 05:29:57', '2021-02-22 23:28:07', NULL),
(6, 'E-Book Be Fullstack Developer', 'e-book-be-fullstack-developer', 'Seorang FULLSTACK DEVELOPER adalah mereka yang mampu bekerja untuk mengembangkan suatu aplikasi dengan menggunakan teknologi backend dan frontend sekaligus. Bahasa pemrograman yang berjalan di sisi server seperti PHP, Python, dan Java merupakan bahasa yang umumnya mereka kuasai dengan baik. Mereka cukup faham tentang bagaimana membangun sebuah web service, melakukan konfigurasi dasar server, serta berinteraksi dengan database melalui query. Di samping itu, mereka juga dapat familier dengan teknologi frontend web seperti: HTML, CSS dan Javascript.', 'Muhammad Azamuddin & Hafid Mukhlasin', 'Cemerlang', 'book-covers/GOSVLmgzp3jRaRAp0ajXD6pKmm5rDqX9DnRqmgBt.jpg', 350000.00, 0, 1, 'PUBLISH', 1, 1, NULL, '2021-02-11 05:33:29', '2021-02-12 08:11:31', NULL),
(7, 'One Piece', 'one-piece', 'Jual Buku - Buku Best Seller Karya Eiichiro Oda - Gramedia.comwww.gramedia.com › author › author-eiichiro-oda\r\nKarya lain Eiichiro Oda yang populer sejak tahun 1997 dan menjadi Manga no 1 di dunia sampai sekarang adalah One Piece.', 'Eiichiro Oda', 'Elex Media Komputindo', 'book-covers/iwk6zDJvFVji077CDnzVTDsJ53qckmMxWrlf0sGN.jpg', 75000.00, 0, 2, 'DRAFT', 1, 1, NULL, '2021-02-12 08:23:57', '2021-02-12 08:24:15', NULL),
(8, 'Allah Beri Aku Kesempatan', 'allah-beri-aku-kesempatan', 'Buku ke 3 Ustadz Handy Bony dengan judul Allah,Beri Aku Kesempatan. Buku-buku beliau yang sangat menginspirasi anak muda untuk hijrah.', 'Ustadz Handy Bonny', 'Mizania', 'book-covers/L2ux9uGQjrkd5WL7hXXFrceWd9MrkNY1oRemDwJL.jpg', 79000.00, 0, 10, 'PUBLISH', 1, NULL, NULL, '2021-02-12 09:34:12', '2021-02-12 09:34:12', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_category`
--

CREATE TABLE `book_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 6, 3, NULL, NULL),
(3, 6, 6, NULL, NULL),
(4, 6, 7, NULL, NULL),
(5, 7, 5, NULL, NULL),
(6, 7, 6, NULL, NULL),
(7, 8, 8, NULL, NULL),
(8, 4, 3, NULL, NULL),
(9, 4, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_order`
--

CREATE TABLE `book_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'berisi nama file image saja tanpa path',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'E-Book Programming', 'e-book-programming', 'category_images/muDKo73NMCkZTEVFm240H0RIS3IummZxoMKbgyP9.jpg', 1, 1, NULL, NULL, '2021-02-05 13:01:24', '2021-02-12 08:20:45'),
(4, 'Test', 'test', 'category_images/hAzcJgXryB2S6rKXZzOsRZRR5qKXm7RUhrsrLoPO.png', 1, NULL, NULL, '2021-02-10 00:08:15', '2021-02-05 13:01:57', '2021-02-10 00:08:15'),
(5, 'Komik Jepang', 'komik-jepang', 'category_images/jLa3VXsUQBE6zV0Dt7XViRbEcAw3GDdAMpGIvblt.jpg', 1, 1, NULL, NULL, '2021-02-05 13:03:00', '2021-02-12 08:18:39'),
(6, 'Karya Ilmiah', 'karya-ilmiah', 'category_images/PTdlvanXi8niteBDeInAWcTtZ0ku0ki7RvZ0bkyc.png', 1, 1, NULL, NULL, '2021-02-08 00:51:53', '2021-02-12 08:20:24'),
(7, 'Buku Teknologi', 'buku-teknologi', 'category_images/ALXUT9op81zwJZCavXOrkhCXNDYHReuci2g0wSsX.jpg', 1, NULL, NULL, NULL, '2021-02-12 08:21:13', '2021-02-12 08:21:13'),
(8, 'Religi', 'religi', 'category_images/hocbYSWIwKf7nyMv2Rw6wU3USf35sygLruO0Qmj6.jpg', 1, NULL, NULL, NULL, '2021-02-12 09:31:08', '2021-02-12 09:31:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_01_082629_penyesuaian_table_users', 1),
(5, '2021_02_05_194525_create_categories_table', 2),
(6, '2021_02_10_071849_create_books_table', 3),
(7, '2021_02_10_073248_create_book_category_table', 4),
(8, '2021_02_23_070651_create_orders_table', 5),
(9, '2021_02_23_085039_create_book_order_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` double(8,2) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('SUBMIT','PROCESS','FINISH','CANCEL') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `roles`, `address`, `phone`, `avatar`, `status`) VALUES
(1, 'Administrator', 'user@olshop.com', NULL, '$2y$10$Op6wU9ouLUICFeRhZHmM3uNLLb8IcohGuGnrDwma4k10NoP0NGW2i', NULL, '2021-01-09 00:25:21', '2021-02-05 10:23:10', 'user', '[\"ADMIN\",\"STAFF\",\"CUSTOMER\"]', 'Griya Arum Sari, Jagabaya, Parungpanjang', '081296442745', 'avatars/SBliTfTwnrXVsEMzEHCVLZIRT7lUurEmFPXb3zov.jpg', 'ACTIVE'),
(3, 'User', 'putradandy619@gmail.com', NULL, '$2y$10$GxjBIvDadRHnl0rXN4jtpu5C.ZVpEAIv1/wIVfxCkgj0etbnMV2F.', NULL, '2021-01-20 00:29:53', '2021-02-05 11:15:12', 'Danz', '[\"ADMIN\",\"STAFF\",\"CUSTOMER\"]', 'Jagabayaa', '0812964427145', 'avatars/5TPwhTqQ8amYeodVlm489EDcg8tsgvWfKBRhUQ8W.jpg', 'INACTIVE'),
(6, 'Mohammad Dandy Putra', 'putradandy6199@gmail.com', NULL, '$2y$10$o2YfSQr1N/ZRc5FnJrK1X.wYXnuTisueltHwE/oaXsS6HOerU9M4G', NULL, '2021-02-05 10:12:35', '2021-02-05 10:23:42', 'admin', '[\"ADMIN\"]', 'Jagabaya', '34234234234', 'avatars/zdY27sUPJw9YvLq53Y01xxycKHs3tL2rqzOzIWCr.jpg', 'ACTIVE'),
(7, 'Tes', 'putradandy61999@gmail.com', NULL, '$2y$10$nmZpZlOCmQLqhXOV/iDLDOcfsqJZ/Nf/nFwyvGILnxm.nyRR.LSEe', NULL, '2021-02-05 10:51:47', '2021-02-05 10:51:58', 'tes', '[\"ADMIN\"]', 'sadasdsad', '3213123123', 'avatars/a4xrW6l8JLKW39iwyfRS1q1ga3Gc30GpDUHl5S4L.png', 'INACTIVE'),
(8, 'Dinda', 'dinda@gmail.com', NULL, '$2y$10$mbGFqGDx0wckjzMwhgt54OOaRBRnGX7gqkkqkjhmrKaGKllUBgxni', NULL, '2021-02-05 10:57:41', '2021-02-05 10:57:41', 'dinda', '[\"ADMIN\",\"STAFF\",\"CUSTOMER\"]', 'Bogor', '081231232112', 'avatars/TAKpvFKXg2HvzMfiCiYKnDRbrYrcY7sbU168Pm8K.png', 'ACTIVE'),
(9, 'Putri', 'putri@yahoo.com', NULL, '$2y$10$mapNN3j4WYPYhBCelAth/.XNXR1mygQp1E1w5GmRixncekhlPAA3G', NULL, '2021-02-05 10:58:42', '2021-02-05 10:58:42', 'putri', '[\"STAFF\"]', 'Pamulang', '0812423432847', 'avatars/RT6BzCiiH598Lnp7hVziH6CdLqeXqCgKfx94JDUg.jpg', 'ACTIVE'),
(10, 'Sinta Agustin', 'sinta@yahoo.co.id', NULL, '$2y$10$RJsYBlGCxoalR7//.n6q.Oik732Ozg3ow4zKR7TJJqBsJUeilixsa', NULL, '2021-02-05 10:59:33', '2021-02-05 11:03:45', 'sinta', '[\"CUSTOMER\"]', 'Jakarta', '087721321213', 'avatars/RbCD0X27XW68I8wBbDXaSeC91AjOPiZsHoGMoPmX.jpg', 'ACTIVE'),
(11, 'Andini', 'andini@gmail.com', NULL, '$2y$10$QKApnBTICm9Hm61EoCl/POStx8avuHyF4nOeH4lAUppm24GLUSmmq', NULL, '2021-02-05 11:00:29', '2021-02-05 11:00:29', 'andini', '[\"ADMIN\"]', 'Bekasi', '087721321213', 'avatars/tsn5s8FGDcI8qpkOUZ1HidoXJoiuwjuyjJ2cxaZq.png', 'ACTIVE'),
(12, 'Ussy Sulistiawati', 'ussy@gmail.com', NULL, '$2y$10$neUN9mwia/tBYxYGmIjJmeeKPbOP/fEg4VdL85XJmb3Z6F9yA048.', NULL, '2021-02-05 11:01:31', '2021-02-05 11:01:31', 'ussy', '[\"STAFF\",\"CUSTOMER\"]', 'Depok', '081231232112', 'avatars/Y0K3nyTdbJvdYOKVewZS3uBzjwPsQjMAHOdrXoYC.jpg', 'ACTIVE'),
(13, 'Tia Andiani', 'tia@yahoo.com', NULL, '$2y$10$4qufvy4Gev88QKpUZ8Xyx.PF3SexwsvhUCEyho965G/CkcRZmwEGu', NULL, '2021-02-05 11:02:15', '2021-02-05 11:02:15', 'tia', '[\"STAFF\"]', 'Tangerang', '081231232112', 'avatars/P3dHnUpy7KpBpakttChKQZuvEORvYnBBLK8KjEB7.jpg', 'ACTIVE'),
(14, 'Yanti', 'yanti@gmail.com', NULL, '$2y$10$7nDwOURCIUAUeyBBdVAuNOWWDF/WeVOjtuclOOfQUrduDGyd9zbL2', NULL, '2021-02-05 11:02:52', '2021-02-05 11:02:52', 'yanti', '[\"STAFF\"]', 'Sumedang', '3213123123', 'avatars/ghTTYWHB36tTfuSSoV5WnPtdwGxYrhMk2xptsb1K.jpg', 'ACTIVE');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_category_book_id_foreign` (`book_id`),
  ADD KEY `book_category_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `book_order`
--
ALTER TABLE `book_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_order_order_id_foreign` (`order_id`),
  ADD KEY `book_order_book_id_foreign` (`book_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `book_order`
--
ALTER TABLE `book_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `book_order`
--
ALTER TABLE `book_order`
  ADD CONSTRAINT `book_order_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
