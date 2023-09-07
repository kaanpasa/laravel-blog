-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 31 Ağu 2023, 14:44:22
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`) VALUES
(1, 'Kaan Pasa', 'kaanpasa@protonmail.com', '$2y$10$eWjTdAR4rRrVRQTdjEhtq.1oGGC0lNIdI.Y/VX8K75sbBMxodO9hW');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `hit` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0:pasif 1:aktif',
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `articles`
--

INSERT INTO `articles` (`id`, `categoryId`, `title`, `image`, `content`, `hit`, `status`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Veniam voluptas inventore omnis vel.', 'https://via.placeholder.com/800x400.png/00dd55?text=Kaan+Pasa+laudantium', 'Autem sit magnam quam culpa et necessitatibus. Consequatur dignissimos praesentium qui rerum. Exercitationem excepturi iusto aut amet enim et. Amet distinctio harum aspernatur officia. Est voluptatem qui aspernatur distinctio consequuntur aut consequuntur. Voluptatem aspernatur et sed consequatur recusandae possimus. Voluptatem maxime rem quod qui iste modi aut.', 0, 1, 'veniam-voluptas-inventore-omnis-vel', NULL, '1976-02-08 01:16:43', '2023-08-25 10:38:35'),
(2, 1, 'Ut mollitia quaerat impedit amet.', 'https://via.placeholder.com/800x400.png/00ffff?text=Kaan+Pasa+nemo', 'Consectetur molestiae ipsam recusandae doloribus voluptatum quae. Sit velit reprehenderit dolor distinctio. Alias saepe aut et reprehenderit debitis laboriosam. Quis molestiae facere molestias quos explicabo nihil. Neque perferendis magni quia modi hic provident.', 1, 0, 'ut-mollitia-quaerat-impedit-amet', NULL, '2003-09-04 15:28:06', '2023-08-25 10:44:20'),
(3, 1, 'Consequatur culpa unde necessitatibus fugiat illum non itaque.', 'https://via.placeholder.com/800x400.png/00ee44?text=Kaan+Pasa+nihil', 'Pariatur at atque provident tempore beatae. Delectus numquam sunt ea et expedita omnis. Et quo nisi accusamus hic consectetur modi. Iure sed eveniet excepturi quis eos consequatur. Nobis dolor ad odio similique.', 0, 0, 'consequatur-culpa-unde-necessitatibus-fugiat-illum-non-itaque', NULL, '1995-04-11 15:45:24', '2023-08-25 11:05:25'),
(4, 5, 'Cupiditate quisquam hic quasi nemo molestias.', 'https://via.placeholder.com/800x400.png/00dddd?text=Kaan+Pasa+quam', 'Odit error beatae quis. Quidem ratione nulla quos eos omnis et. Eligendi nesciunt ullam et alias. Voluptatum enim rerum in voluptatem. Accusantium reiciendis voluptas deleniti tenetur error molestiae ex.', 0, 0, 'cupiditate-quisquam-hic-quasi-nemo-molestias', NULL, '1999-04-14 14:16:01', '2023-08-25 10:32:28');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Genel', 'genel', 1, '2023-08-25 10:32:27', '2023-08-25 10:32:27'),
(2, 'Eğlence', 'eglence', 1, '2023-08-25 10:32:27', '2023-08-25 10:32:27'),
(5, 'Teknoloji', 'teknoloji', 1, '2023-08-25 10:32:27', '2023-08-25 10:32:27'),
(6, 'Sağlık', 'saglik', 1, '2023-08-25 10:32:27', '2023-08-25 10:32:27'),
(7, 'Spor', 'spor', 1, '2023-08-25 10:32:27', '2023-08-25 10:32:27'),
(8, 'Günlük Yaşam', 'gunluk-yasam', 1, '2023-08-25 10:32:27', '2023-08-25 10:32:27');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_08_03_190354_categories', 1),
(3, '2023_08_03_200613_articles', 1),
(4, '2023_08_05_135350_pages', 1),
(5, '2023_08_06_140630_contact', 1),
(6, '2023_08_08_103854_admin', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `title`, `image`, `content`, `slug`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hakkımızda', 'https://img.freepik.com/free-photo/aerial-view-business-data-analysis-graph_53876-146152.jpg?w=2000', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsam, ad, eligendi magnam quidem repellat rem vero quis est culpa illum quisquam quibusdam ab incidunt cumque exercitationem dolores quia corporis veniam odio distinctio nesciunt cupiditate! Reprehenderit quasi harum dignissimos esse quo, asperiores consectetur ad quis neque pariatur laboriosam sit odio qui!', 'hakkimizda', 0, 1, '2023-08-25 10:32:28', '2023-08-28 08:20:00'),
(2, 'Kariyer', 'https://img.freepik.com/free-photo/aerial-view-business-data-analysis-graph_53876-146152.jpg?w=2000', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsam, ad, eligendi magnam quidem repellat rem vero quis est culpa illum quisquam quibusdam ab incidunt cumque exercitationem dolores quia corporis veniam odio distinctio nesciunt cupiditate! Reprehenderit quasi harum dignissimos esse quo, asperiores consectetur ad quis neque pariatur laboriosam sit odio qui!', 'kariyer', 3, 1, '2023-08-25 10:32:28', '2023-08-28 08:20:00'),
(3, 'Vizyonumuz', 'https://img.freepik.com/free-photo/aerial-view-business-data-analysis-graph_53876-146152.jpg?w=2000', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsam, ad, eligendi magnam quidem repellat rem vero quis est culpa illum quisquam quibusdam ab incidunt cumque exercitationem dolores quia corporis veniam odio distinctio nesciunt cupiditate! Reprehenderit quasi harum dignissimos esse quo, asperiores consectetur ad quis neque pariatur laboriosam sit odio qui!', 'vizyonumuz', 1, 1, '2023-08-25 10:32:28', '2023-08-28 08:20:00'),
(4, 'Misyonumuz', 'https://img.freepik.com/free-photo/aerial-view-business-data-analysis-graph_53876-146152.jpg?w=2000', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsam, ad, eligendi magnam quidem repellat rem vero quis est culpa illum quisquam quibusdam ab incidunt cumque exercitationem dolores quia corporis veniam odio distinctio nesciunt cupiditate! Reprehenderit quasi harum dignissimos esse quo, asperiores consectetur ad quis neque pariatur laboriosam sit odio qui!', 'misyonumuz', 2, 1, '2023-08-25 10:32:28', '2023-08-28 08:20:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_categoryid_foreign` (`categoryId`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
