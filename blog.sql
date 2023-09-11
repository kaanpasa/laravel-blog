-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 Eyl 2023, 13:16:57
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
(7, 5, 'Geleceğin Teknolojileri Beklenen En İyi 5 Teknolojik İlerleme', 'http://localhost:8000/uploads/gelecegin-teknolojileri-beklenen-en-iyi-5-teknolojik-ilerleme.jpg', '<p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">Teknolojik gelişmeler, hızla değişen bir dünyada her gün bize yeni fırsatlar sunuyor. Bu yazıda, gelecekte beklenen en önemli beş teknolojik gelişmeyi ele alacağız:</p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><br style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"></p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><span style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">Yapay Zeka ve Makine Öğrenme:</span> Yapay zeka, daha önce görülmemiş veri analizi ve tahmin yetenekleri sunarak birçok endüstride devrim yaratıyor. Özellikle sağlık, otomotiv ve finans sektörlerinde kullanımı hızla artıyor.</p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><br style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"></p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><span style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">Kuantum Bilgisayarlar: </span>Kuantum bilgisayarlar, geleneksel bilgisayarların yapamadığı karmaşık hesaplamaları hızlı bir şekilde yapabilme potansiyeli taşıyor. Bu, matematiksel problemlerin ve veri şifrelemenin geleceğini büyük ölçüde etkileyebilir.</p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><br style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"></p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><span style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">Uzay Keşifleri:</span> Özel şirketler ve ulusal uzay ajansları, Mars ve Ay gibi yerlere insanlı misyonlar gönderme konusunda büyük adımlar atıyor. Ayrıca, uzay madenciliği ve uzay turizmi de geleceğin önemli teknolojik alanları olabilir.</p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><br style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"></p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><span style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">Biyo-moleküler Mühendislik:</span> Bu alan, hastalıkları tedavi etmek ve insan ömrünü uzatmak için genetik düzenlemeleri içeriyor. CRISPR gibi yeni teknolojiler, genetik kodu düzenleme konusunda büyük potansiyele sahip.</p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><br style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"></p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><span style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">5G ve Nesnelerin İnterneti (IoT): </span>5G ağı, daha hızlı internet bağlantılarına olanak tanırken, IoT cihazları her şeyi birbirine bağlamak için kullanılıyor. Akıllı evler, akıllı şehirler ve akıllı ulaşım sistemleri gibi uygulamalarda büyük bir rol oynamaktadır.</p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"><br style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\"></p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ;\">Bu teknolojiler, gelecekteki iş dünyası, tıp, iletişim ve daha birçok sektörü derinden etkileyecek. Bu yenilikler hakkında daha fazla bilgi edinmek ve bu alanlarda nasıl hazırlıklı olunabileceğinizi öğrenmek, gelecekteki fırsatları yakalamak için önemlidir. Teknolojinin hızla değişen dünyasında adım atarken bilinçli ve bilgili olmak her zaman önemlidir.</p>', 1, 1, 'gelecegin-teknolojileri-beklenen-en-iyi-5-teknolojik-ilerleme', '2023-09-11 11:10:23', '2023-09-11 11:03:54', '2023-09-11 11:10:23'),
(8, 2, 'Eğlenceye Hoş Geldiniz!', 'http://localhost:8000/uploads/eglenceye-hos-geldiniz.png', '<p>Merhaba sevgili okuyucular! Bu blog yazısında sizlere keyifli bir eğlence dünyası sunmaya geldim. Enerjim yüksek ve görevim sizleri gülümsetmek, heyecanlandırmak ve ilham vermek!</p><p><br></p><p>🎉Parti Zamanı🎉</p><p><br></p><p>Eğlence denildiğinde ilk akla gelen şeylerden biri parti! Herkesin biraz rahatlamaya ve dans etmeye ihtiyacı var. Parti hazırlıklarıyla başlamak, müzik seçmek ve dans pistinde parlamak için heyecanlanmak gibisi yok. 💃🕺</p><p><br></p><p>🍿Film Maratonu🍿</p><p><br></p><p>Ne zaman rahatlamak veya heyecan dolu bir maceraya çıkmak isterseniz, film maratonları harika bir seçenektir. Sevdiğiniz film türlerine göre bir tema seçin ve tüm gün boyunca koltukta keyifle film izleyin. 🎬🍿 Ya da belki arkadaşlarınızla birlikte sinemaya gidin ve en son çıkan filmlerin tadını çıkarın.</p><p><br></p><p>🌍Gezgin Ruh🌍</p><p><br></p><p>Eğlence dediğimiz zaman, biraz da keşif yapmayı unutmamalıyız. Seyahat etmek, farklı kültürleri deneyimlemek ve yeni yerler keşfetmek için harika bir yoldur. Valizlerinizi hazırlayın, hayallerinizin rotasını belirleyin ve dünyayı keşfe çıkın. 🌎✈️</p><p><br></p><p>🎲Oyun Gecesi🎲</p><p><br></p><p>Arkadaşlarınızla veya ailenizle bir araya gelerek keyifli bir oyun gecesi düzenleyin. Monopoly, Scrabble, Uno gibi klasik oyunları tercih edebilir veya yeni ve eğlenceli oyunları deneyebilirsiniz. Heyecan, rekabet ve bolca kahkaha garantilidir! 🎮🎲</p><p><br></p><p>🎭Yetenekler Sahneye🎭</p><p><br></p><p>Eğlence her zaman hayatımızın bir parçası olmalıdır ve yeteneklerimizi ortaya çıkarmak da bunun bir yolu olabilir. Şarkı söylemek, dans etmek, çizim yapmak, yazmak veya herhangi bir el becerisiyle etkileyici bir yeteneğinizi sergileyin. Sahneye çıkmak, insanları etkilemek ve kendinizi ifade etmek için harika bir fırsattır. 🎤🎨✍️</p><p><br></p><p>✨Hayal Gücü Sınırsız✨</p><p><br></p><p>Son olarak, en büyük eğlence kaynağınızın kendi hayal gücünüz olduğunu unutmayın. Bir kitap okumak, müziğe eşlik etmek, resim yapmak veya yeni bir hobi keşfetmek gibi etkinlikler, yaratıcılığınızı besler ve size büyük bir mutluluk sağlar. Sınırsız düşüncelerle dolu bir zihin, eğlence için sonsuz olanaklar sunar. 🌟🌈</p><p><br></p><p>🌟🎉💃 Eğlence dolu bir blog yazısıyla sona ererken, sizlere unutulmaz anlar ve her zaman gülen bir yüz diliyorum. Eğlenceyi hayatınızın bir parçası yapmayı ve her anın tadını çıkarmayı unutmayın! 😄🎉🌟</p>', 0, 1, 'eglenceye-hos-geldiniz', NULL, '2023-09-11 11:04:54', '2023-09-11 11:04:58'),
(9, 6, 'Zihin Sağlığını Korumanın ve Geliştirmenin 10 Etkili Yolu.', 'http://localhost:8000/uploads/zihin-sagligini-korumanin-ve-gelistirmenin-10-etkili-yolu.jpg', '<p>Zihin sağlığı, genel sağlığımızın önemli bir parçasıdır ve ona gereken özeni göstermek, hayat kalitemizi büyük ölçüde etkileyebilir. Bu yazıda, zihin sağlığını korumanın ve geliştirmenin on etkili yolunu ele alacağız:</p><p><br></p><p>Düzenli Egzersiz: Düzenli fiziksel aktivite, endorfinlerin salgılanmasına yardımcı olur ve zihinsel iyilik hali sağlar.</p><p><br></p><p>Sağlıklı Beslenme: Beynin doğru çalışması için gerekli besin maddelerini almak önemlidir. Omega-3 yağ asitleri gibi besinler zihin sağlığını destekleyebilir.</p><p><br></p><p>Stresten Uzaklaşma: Stres yönetimi teknikleri öğrenmek ve uygulamak, zihin sağlığını koruma açısından kritiktir.</p><p><br></p><p>Yeterli Uyku: Yetersiz uyku, zihinsel sağlık sorunlarına yol açabilir. Düzenli bir uyku düzeni oluşturmak önemlidir.</p><p><br></p><p>Sosyal İlişkileri Sürdürmek: Sosyal bağlantılar, duygusal destek sağlar ve izolasyonun önüne geçebilir.</p><p><br></p><p>Meditasyon ve Mindfulness: Bu teknikler, zihinsel dinginlik ve odaklanma sağlayarak stresi azaltabilir.</p><p><br></p><p>Yeni Şeyler Öğrenme: Zihinsel olarak aktif kalmak, beyni canlı tutar. Bir enstrüman öğrenmek, yeni bir dil öğrenmek veya yeni bir hobi edinmek gibi aktiviteler bu açıdan faydalıdır.</p><p><br></p><p>Profesyonel Yardım: Zihinsel sağlık sorunları yaşanıyorsa, profesyonel bir yardım almak önemlidir. Bir psikolog veya psikiyatrist zihinsel sağlık sorunlarını tedavi etme konusunda uzmanlaşmıştır.</p><p><br></p><p>Zaman Yönetimi: Zamanı verimli kullanmak, stresi azaltabilir ve zihinsel sağlığı iyileştirebilir.</p><p><br></p><p>Duygusal İfade: Duygularınızı ifade etmek ve paylaşmak, zihinsel sağlığı korumak için önemlidir. İçsel duygusal baskıları dışarıya çıkarmak sağlıklı bir pratiktir.</p><p><br></p><p>Zihin sağlığı, yaşam kalitesi üzerinde derin etkilere sahiptir. Bu nedenle, bu on adımı uygulayarak zihin sağlığınıza özen göstermek, daha mutlu ve dengeli bir yaşam sürdürmenize yardımcı olabilir.</p>', 0, 1, 'zihin-sagligini-korumanin-ve-gelistirmenin-10-etkili-yolu', NULL, '2023-09-11 11:06:28', '2023-09-11 11:06:30'),
(10, 8, 'Minimalist Bir Yaşam Tarzı Nasıl Başlatılır ve Faydaları Nelerdir?', 'http://localhost:8000/uploads/minimalist-bir-yasam-tarzi-nasil-baslatilir-ve-faydalari-nelerdir.png', '<p>Minimalizm, modern yaşamın karmaşıklığına ve tüketim çılgınlığına bir tepki olarak ortaya çıkan bir yaşam tarzıdır. Bu yazıda, minimalist bir yaşam tarzını nasıl başlatabileceğinizi ve bu tarzın sağlayabileceği faydaları ele alacağız.</p><p><br></p><p>Minimalist Bir Yaşam Tarzı Nedir?</p><p><br></p><p>Minimalizm, gereksiz tüketimden kaçınma ve yaşamı daha az stresli ve daha anlamlı hale getirme fikrine dayanır. Bu, maddi eşyaları azaltmayı, ihtiyaç duyulan şeylere odaklanmayı ve aşırı tüketimden kaçınmayı içerir.</p><p><br></p><p>Minimalist Bir Yaşam Tarzı Nasıl Başlatılır?</p><p><br></p><p>1.Değerlerinizi Belirleyin: Minimalist bir yaşam tarzı benimsemeye başlamadan önce, neye gerçekten değer verdiğinizi düşünün. Bu, önceliklerinizi netleştirmenize yardımcı olacaktır.</p><p><br></p><p>2.Eşyaları Azaltın: Gereksiz eşyaları evinizden çıkarın. Kullanmadığınız veya ihtiyaç duymadığınız eşyaları bağışlayın veya satın.</p><p><br></p><p>3.Basit Bir Gardırop Oluşturun: Gardırobunuzu sadeleştirin. Giymediğiniz kıyafetleri ve aksesuarları çıkarın. Temel ve çok yönlü parçalara odaklanın.</p><p><br></p><p>4.Dijital Minimalizm: Dijital dünyada da minimalist olun. Sosyal medya kullanımını azaltın, gereksiz uygulamaları silin ve dijital karmaşadan kaçının.</p><p><br></p><p>5.Bilinçli Tüketim: Alışveriş yaparken sadece ihtiyaç duyduğunuz şeyleri alın. İhtiyaçlarınızı ve isteklerinizi ayırt edin.</p><p><br></p><p><b>Minimalist Bir Yaşam Tarzının Faydaları Nelerdir?</b></p><p><br></p><p>•Daha Az Stres: Daha az eşya ve karmaşa, daha az stres anlamına gelir.</p><p><span style=\"font-size: 1rem;\">•</span>Daha Fazla Zaman: Minimalist bir yaşam tarzı, zamanınızı daha iyi yönetmenizi ve daha fazla zaman ayırabileceğiniz anlamlı aktivitelere odaklanmanızı sağlar.</p><p><span style=\"font-size: 1rem;\">•</span>Finansal Özgürlük: Azaltılmış tüketim, tasarruf etme ve finansal özgürlüğü destekler.</p><p><span style=\"font-size: 1rem;\">•</span>Çevresel Etki: Daha az tüketim, çevresel ayak izinizi azaltabilir ve sürdürülebilir bir yaşamı teşvik edebilir.</p><p>Minimalist bir yaşam tarzı, herkes için farklı olabilir ve kişiselleştirilebilir. Önemli olan, daha bilinçli ve anlamlı bir yaşam sürdürmeye çalışmaktır. Minimalizm, daha az şeyle daha fazla yaşamanızı sağlar ve sizi içsel olarak tatmin edebilir.</p>', 0, 1, 'minimalist-bir-yasam-tarzi-nasil-baslatilir-ve-faydalari-nelerdir', NULL, '2023-09-11 11:09:47', '2023-09-11 11:09:50'),
(11, 5, '2023 Yılı İçin En İyi 5 İşlemci', 'http://localhost:8000/uploads/2023-yili-icin-en-iyi-5-islemci.png', '<p>Günümüzün hızla değişen teknoloji dünyasında, bilgisayarlarımızın performansı da sürekli olarak yükseliyor. Bu performansın temel belirleyicilerinden biri ise işlemcidir. İşte 2023 yılı için beşinci nesil işlemciler arasında yer alan en iyi beş işlemci:</p><p><br></p><p>1. AMD Ryzen 9 5900X: AMD\'nin Zen 3 mimarisini temel alan bu işlemci, 12 çekirdek ve 24 iş parçacığı ile yüksek performans sunuyor. Yüksek saat hızları ve enerji verimliliği ile öne çıkıyor.</p><p><br></p><p>2. Intel Core i9-12900K: Intel\'in Alder Lake mimarisine dayanan bu işlemci, 16 çekirdek ve 24 iş parçacığına sahip. Yüksek saat hızları ve yeni büyük ve küçük çekirdek tasarımı sayesinde güçlü çoklu görev yetenekleri sunuyor.</p><p><br></p><p>3. Apple M2: Apple\'ın özel olarak tasarladığı M2 işlemcisi, Mac bilgisayarlar için oldukça etkileyici bir seçenek olabilir. Apple\'ın performans ve enerji verimliliği konusundaki başarısını devam ettirmesi bekleniyor.</p><p><br></p><p>4. Qualcomm Snapdragon 8cx Gen 3: Qualcomm\'un masaüstü ve dizüstü bilgisayarlar için geliştirdiği Snapdragon 8cx Gen 3, 5G bağlantıları ve uzun pil ömrü ile öne çıkıyor. Özellikle taşınabilir bilgisayarlar için ideal bir seçenek.</p><p><br></p><p>5. IBM Power10: Veri merkezleri için tasarlanmış olan IBM Power10, büyük iş yüklerini işlemek için yüksek performans sunuyor. Güvenlik ve ölçeklenebilirlik açısından da dikkat çekiyor.</p><p><br></p><p>Bu işlemciler, farklı kullanım senaryoları ve gereksinimler için tasarlanmış olsa da hepsi üstün performans, enerji verimliliği ve geleceğe yönelik özellikler sunuyor. Seçiminiz, ihtiyaçlarınıza, bütçenize ve cihazınıza bağlı olarak değişebilir. Bilgisayarınızın veya cihazınızın performansını artırmak istiyorsanız, bu işlemcilerin her biri dikkate alınmaya değerdir.</p>', 0, 1, '2023-yili-icin-en-iyi-5-islemci', NULL, '2023-09-11 11:12:14', '2023-09-11 11:12:17'),
(12, 7, 'Kardiyo Egzersizlerinin Sağlık ve Zindelik Üzerindeki Etkileri', 'http://localhost:8000/uploads/kardiyo-egzersizlerinin-saglik-ve-zindelik-uzerindeki-etkileri.png', '<p>Sağlıklı bir yaşam tarzı sürdürmenin ve fiziksel zindeliği artırmanın önemli bir yolu, düzenli olarak kardiyo egzersizleri yapmaktır. Kardiyo egzersizleri, kalp ve akciğer sağlığını geliştirirken, genel sağlık ve zindelik seviyelerini artırabilir. Bu yazıda, kardiyo egzersizlerinin sağlık ve zindelik üzerindeki olumlu etkilerini inceleyeceğiz.</p><p><br></p><p>1. Kalp Sağlığını İyileştirir:</p><p>Kardiyo egzersizleri, kalp kasını güçlendirir ve kalp sağlığını geliştirir. Düzenli kardiyo egzersizi yapmak, kalp atış hızını artırır ve kan dolaşımını iyileştirir, bu da kalp hastalığı riskini azaltır.</p><p><br></p><p>2. Yağ Yakımını Teşvik Eder:</p><p>Kardiyo egzersizleri, vücuttaki fazla yağları yakmak için etkili bir yoldur. Koşu, yürüyüş, bisiklet sürme gibi kardiyo aktiviteleri, kalori yakımını artırır ve kilo kontrolüne yardımcı olur.</p><p><br></p><p>3. Stresi Azaltır:</p><p>Kardiyo egzersizleri, stresi azaltmada etkili bir rol oynar. Egzersiz sırasında salgılanan endorfinler, ruh halini yükseltir ve stresi hafifletir.</p><p><br></p><p>4. Enerji Seviyelerini Artırır:</p><p>Düzenli kardiyo egzersizi yapmak, enerji seviyelerini artırır ve günlük aktiviteleri daha kolay hale getirir. İyi bir kardiyo kondisyonu, günlük yaşam kalitesini artırabilir.</p><p><br></p><p>5. Kanser Riskini Azaltır:</p><p>Araştırmalar, düzenli kardiyo egzersizlerinin bazı kanser türlerinin riskini azaltabileceğini göstermektedir. Özellikle meme kanseri, bağırsak kanseri ve prostat kanseri riskini azaltmada faydalı olabilir.</p><p><br></p><p>6. Düşük Kan Basıncını Teşvik Eder:</p><p>Kardiyo egzersizleri, yüksek kan basıncını düşürmeye yardımcı olabilir. Düşük kan basıncı, kalp sağlığı için önemlidir ve inme veya kalp krizi riskini azaltabilir.</p><p><br></p><p>7. Uyku Kalitesini İyileştirir:</p><p>Kardiyo egzersizleri, daha iyi bir uyku kalitesi sağlayabilir. Düzenli egzersiz yapan kişiler, uykuya dalmayı kolaylaştırır ve daha derin uyku aşamalarına geçiş yapar.</p><p><br></p><p>Sonuç olarak, kardiyo egzersizleri sadece fiziksel sağlık için değil, aynı zamanda zihinsel sağlık için de birçok fayda sunar. Düzenli olarak kardiyo egzersizi yapmak, daha uzun ve sağlıklı bir yaşamın anahtarlarından biridir. Kendi hızınıza ve tercihlerinize uygun bir kardiyo aktivitesi seçerek sağlığınızı ve zindeliğinizi artırabilirsiniz.</p>', 0, 1, 'kardiyo-egzersizlerinin-saglik-ve-zindelik-uzerindeki-etkileri', NULL, '2023-09-11 11:13:20', '2023-09-11 11:13:23'),
(13, 5, 'Teknolojinin Geleceği: Önümüzdeki Yıllarda Beklenen Gelişmeler', 'http://localhost:8000/uploads/teknolojinin-gelecegi-onumuzdeki-yillarda-beklenen-gelismeler.png', '<p>Teknoloji, hayatımızın her yönünü dönüştüren ve hızla ilerleyen bir alandır. Her yeni gün, daha fazla yenilik ve keşifle dolu. İşte önümüzdeki yıllarda beklenen teknolojik gelişmeler:</p><p><br></p><p>**1. Yapay Zeka (AI) ve Makine Öğrenme: Yapay zeka, otomasyon, sağlık hizmetleri, taşımacılık ve daha birçok alanda devrim yaratıyor. Özellikle sağlık sektöründe, teşhislerin iyileştirilmesi ve tedavi yöntemlerinin kişiselleştirilmesi gibi büyük faydalar sağlayacak.</p><p><br></p><p>**2. Kuantum Bilgisayarlar: Kuantum bilgisayarlar, karmaşık hesaplamaları saniyeler içinde yapma potansiyeline sahiptir. Bu, ilaç geliştirme, hava tahmini ve şifre çözme gibi birçok alanda büyük etkilere yol açabilir.</p><p><br></p><p>**3. Uzay Keşifleri: Özel şirketler ve ulusal uzay ajansları, Mars ve Ay gibi yerlere insanlı misyonlar gönderme konusunda büyük adımlar atıyorlar. Uzay turizmi ve uzay madenciliği de geleceğin büyük teknolojik alanları olabilir.</p><p><br></p><p>**4. Biyo-moleküler Mühendislik: Bu alan, genetik düzenlemeleri içerir ve hastalıkları tedavi etmek veya insan ömrünü uzatmak gibi büyük potansiyele sahiptir. CRISPR gibi teknolojiler, genetik kodu düzenleme konusunda önemli bir adım atmıştır.</p><p><br></p><p>**5. Yeşil Teknoloji: Sürdürülebilir enerji kaynakları ve çevre dostu teknolojiler, iklim değişikliği ile mücadelede kritik bir rol oynayacak. Güneş enerjisi, rüzgar enerjisi ve enerji depolama teknolojileri gibi alanlarda büyük ilerlemeler bekleniyor.</p><p><br></p><p>**6. Nesnelerin İnterneti (IoT): IoT, her şeyin birbirine bağlı olduğu bir dünyayı mümkün kılar. Akıllı evler, akıllı şehirler, akıllı cihazlar ve endüstriyel IoT uygulamaları daha da yaygınlaşacak.</p><p><br></p><p>**7. 5G ve Mobil İletişim: 5G ağı, daha hızlı internet bağlantıları ve daha düşük gecikme süreleri sunacak. Bu, oyun, sağlık hizmetleri ve akıllı şehirler gibi birçok alanda büyük bir değişime yol açabilir.</p><p><br></p><p>Bu gelişmeler, teknoloji dünyasının geleceğini şekillendirecek ve hayatımızı daha da kolaylaştıracak. Ancak bu ilerlemelerin etik ve güvenlik sorunlarını da beraberinde getireceğini unutmamak önemlidir. Teknolojinin ilerleyişi, toplumlar ve hükümetler için yeni düzenlemeleri ve politikaları gerektirebilir.</p>', 0, 1, 'teknolojinin-gelecegi-onumuzdeki-yillarda-beklenen-gelismeler', NULL, '2023-09-11 11:14:50', '2023-09-11 11:14:54');

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
(1, 'Genel', 'genel', 1, '2023-08-25 10:32:27', '2023-09-08 08:40:00'),
(2, 'Eğlence', 'eglence', 1, '2023-08-25 10:32:27', '2023-09-08 08:40:00'),
(5, 'Teknoloji', 'teknoloji', 1, '2023-08-25 10:32:27', '2023-09-08 09:15:47'),
(6, 'Sağlık', 'saglik', 1, '2023-08-25 10:32:27', '2023-08-25 10:32:27'),
(7, 'Spor', 'spor', 1, '2023-08-25 10:32:27', '2023-08-25 10:32:27'),
(8, 'Günlük Yaşam', 'gunluk-yasam', 1, '2023-08-25 10:32:27', '2023-08-25 10:32:27');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `configs`
--

CREATE TABLE `configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `github` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `configs`
--

INSERT INTO `configs` (`id`, `title`, `logo`, `favicon`, `active`, `github`, `linkedin`, `instagram`, `created_at`, `updated_at`) VALUES
(1, 'Pasa Blog', 'uploads/pasa-blog-logo.png', NULL, 1, 'https://www.github.com/kaanpasa', 'https://www.linkedin.com/in/kaanpasa', 'https://www.instagram.com/kaannpasa', '2023-09-07 07:51:44', '2023-09-07 09:57:27');

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
(6, '2023_08_08_103854_admin', 1),
(7, '2023_09_07_103611_config', 2);

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
(1, 'Hakkımızda', 'https://img.freepik.com/free-photo/aerial-view-business-data-analysis-graph_53876-146152.jpg?w=2000', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsam, ad, eligendi magnam quidem repellat rem vero quis est culpa illum quisquam quibusdam ab incidunt cumque exercitationem dolores quia corporis veniam odio distinctio nesciunt cupiditate! Reprehenderit quasi harum dignissimos esse quo, asperiores consectetur ad quis neque pariatur laboriosam sit odio qui!', 'hakkimizda', 0, 1, '2023-08-25 10:32:28', '2023-09-08 09:37:29'),
(2, 'Kariyer', 'https://img.freepik.com/free-photo/aerial-view-business-data-analysis-graph_53876-146152.jpg?w=2000', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsam, ad, eligendi magnam quidem repellat rem vero quis est culpa illum quisquam quibusdam ab incidunt cumque exercitationem dolores quia corporis veniam odio distinctio nesciunt cupiditate! Reprehenderit quasi harum dignissimos esse quo, asperiores consectetur ad quis neque pariatur laboriosam sit odio qui!', 'kariyer', 1, 1, '2023-08-25 10:32:28', '2023-09-08 09:37:29'),
(3, 'Vizyonumuz', 'https://img.freepik.com/free-photo/aerial-view-business-data-analysis-graph_53876-146152.jpg?w=2000', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsam, ad, eligendi magnam quidem repellat rem vero quis est culpa illum quisquam quibusdam ab incidunt cumque exercitationem dolores quia corporis veniam odio distinctio nesciunt cupiditate! Reprehenderit quasi harum dignissimos esse quo, asperiores consectetur ad quis neque pariatur laboriosam sit odio qui!', 'vizyonumuz', 2, 1, '2023-08-25 10:32:28', '2023-09-08 09:37:29'),
(4, 'Misyonumuz', 'https://img.freepik.com/free-photo/aerial-view-business-data-analysis-graph_53876-146152.jpg?w=2000', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ipsam, ad, eligendi magnam quidem repellat rem vero quis est culpa illum quisquam quibusdam ab incidunt cumque exercitationem dolores quia corporis veniam odio distinctio nesciunt cupiditate! Reprehenderit quasi harum dignissimos esse quo, asperiores consectetur ad quis neque pariatur laboriosam sit odio qui!', 'misyonumuz', 3, 1, '2023-08-25 10:32:28', '2023-09-08 09:37:29');

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
-- Tablo için indeksler `configs`
--
ALTER TABLE `configs`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
