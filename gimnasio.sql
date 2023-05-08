-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2023 a las 18:32:54
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gimnasio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plazas` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `clase`, `plazas`, `created_at`, `updated_at`) VALUES
(1, 'Body Combat', 15, NULL, NULL),
(2, 'Body Pump', 19, NULL, NULL),
(3, 'Spinning', 30, NULL, NULL),
(4, 'Yoga', 20, NULL, NULL),
(5, 'Xcore', 15, NULL, NULL),
(6, 'Zumba', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases_usuarios`
--

CREATE TABLE `clases_usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `clase_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clases_usuarios`
--

INSERT INTO `clases_usuarios` (`id`, `user_id`, `clase_id`, `created_at`, `updated_at`) VALUES
(22, 1, 2, '2023-04-26 15:44:51', '2023-04-26 15:44:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(17, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(18, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(19, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(20, '2016_06_01_000004_create_oauth_clients_table', 1),
(21, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2023_04_19_154132_create_clases_table', 2),
(26, '2023_04_19_160516_create_clases_usuarios_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0c17e00aabdb0615707bbb4e6064a515996fca0c6ce79bbd9dafa6eabb2667bd9e74e4e26825e000', 1, 2, NULL, '[\"*\"]', 0, '2023-04-17 15:39:27', '2023-04-17 15:39:27', '2024-04-17 17:39:27'),
('19b0ec0cd1d6c8d52f295f12d3d1a28d7c10f19faf9da5a7da694648e10b6a7eca56908296ea27cc', 1, 2, NULL, '[\"*\"]', 0, '2023-04-25 13:54:46', '2023-04-25 13:54:46', '2024-04-25 15:54:46'),
('2a83c905a7c9f3404c9975ca5eb96fb940a7afdbf0ca200e7677a2c3053ea30ddfa6573b45784c30', 2, 2, NULL, '[\"*\"]', 0, '2023-04-25 14:03:08', '2023-04-25 14:03:08', '2024-04-25 16:03:08'),
('2a936a23d961cd8c9bfdacb3370d1fc57437f20266458063cf5d0e4dec6b2a826116bfe1a3715da9', 1, 2, NULL, '[\"*\"]', 0, '2023-04-18 14:02:43', '2023-04-18 14:02:43', '2024-04-18 16:02:43'),
('395f4e1d14a7c73f9abdd0de0d92f7cc305d254e5a8ff7c80806a96ac7c25c23585ab478f5943959', 1, 2, NULL, '[\"*\"]', 0, '2023-04-17 15:23:23', '2023-04-17 15:23:23', '2024-04-17 17:23:23'),
('458eb0b1092f069f30ad24997935ccf21d5bb6635480c2bd434eb0ddab235d5a1dfd0dccfe779a32', 1, 2, NULL, '[\"*\"]', 0, '2023-04-17 15:10:59', '2023-04-17 15:10:59', '2024-04-17 17:10:59'),
('694742f6d292f15dfc0ad7d595156de9f746ac988b06d2770ef0e6c8b1668df0cb8c2a05835c9c8a', 1, 2, NULL, '[\"*\"]', 0, '2023-04-25 14:00:39', '2023-04-25 14:00:39', '2024-04-25 16:00:39'),
('8660a2cec61978089950542be35a12132a85c2a131faba9c7e1cc7fd6d653f8b275b2ce775388a4c', 1, 2, NULL, '[\"*\"]', 0, '2023-04-25 14:03:26', '2023-04-25 14:03:26', '2024-04-25 16:03:26'),
('8784e684c282d1c69cde9c55f1900c8b745422751bd20da50d96644254198c9997c8035df3f278bd', 1, 2, NULL, '[\"*\"]', 0, '2023-04-18 15:34:24', '2023-04-18 15:34:24', '2024-04-18 17:34:24'),
('8af8ae3bf3bf507b2da54c3544424d3b5b6fe4525109d2417884eba2fbc5517c8c5541e01273b0f2', 4, 2, NULL, '[\"*\"]', 0, '2023-04-25 13:51:20', '2023-04-25 13:51:20', '2024-04-25 15:51:20'),
('8bef4e30bbc52b0f837724a033531231c6a4156fd264a08957260dd2440ec4f4b2e077a73b4490eb', 1, 2, NULL, '[\"*\"]', 0, '2023-04-18 14:20:19', '2023-04-18 14:20:19', '2024-04-18 16:20:19'),
('918ac69e1c41000af21fb4f727d24f7eaab9e2fde8680440587670ba2a1ce70c80216d4054b925e1', 3, 4, NULL, '[\"*\"]', 0, '2023-04-17 15:10:18', '2023-04-17 15:10:18', '2024-04-17 17:10:18'),
('9ce784ae16e20626a758dcbbcec2559b3da59c2b6fd9c48aa25718ec9eb2c383cf847ad50a743aca', 2, 2, NULL, '[\"*\"]', 0, '2023-04-26 16:06:59', '2023-04-26 16:06:59', '2024-04-26 18:06:59'),
('a6f17694d5d8245d5a22dd45b0e5ff883f7eb94f58383e4464fd709db05582f8de69f4100698871b', 4, 2, NULL, '[\"*\"]', 0, '2023-04-17 15:39:45', '2023-04-17 15:39:45', '2024-04-17 17:39:45'),
('ad0237dc935a9840c998e5c644cbc7d0e8f1f741dc71f810421ac20fc492abcc890d9a3a01ffc594', 1, 2, NULL, '[\"*\"]', 0, '2023-04-18 14:39:02', '2023-04-18 14:39:02', '2024-04-18 16:39:02'),
('c8fc60f0d57ebf3ed6b32c17f85731086c08abbe8f77df3d698e53225424b8124ce87b8a5ee3c052', 1, 2, NULL, '[\"*\"]', 0, '2023-04-26 16:06:35', '2023-04-26 16:06:35', '2024-04-26 18:06:35'),
('d6c7ca010685e6716b49dbcc32cbfa56227a2b05a903c0bc8361903482216e457dd057d0f6947caf', 4, 2, NULL, '[\"*\"]', 0, '2023-04-17 15:29:14', '2023-04-17 15:29:14', '2024-04-17 17:29:14'),
('e0bc64fbaa6f27409bca3933d7d1e0376cad3239b4f4d6ccb8ee0daaee85222c09a2959a160f0af4', 3, 2, NULL, '[\"*\"]', 0, '2023-04-18 13:59:57', '2023-04-18 13:59:57', '2024-04-18 15:59:57'),
('f42fe1e15a1adffe7241f59c43c162156dd1f8e91021a4399b7670a4f04de189e4e55463f3e66de0', 1, 2, NULL, '[\"*\"]', 0, '2023-04-18 13:45:58', '2023-04-18 13:45:58', '2024-04-18 15:45:58'),
('ff8045cf3cb5f4f37f003fb4a51cd2ff715fe16d1f1042a733e33d46322e024c28ccb3be1fb9b2a6', 1, 2, NULL, '[\"*\"]', 0, '2023-04-17 15:39:03', '2023-04-17 15:39:03', '2024-04-17 17:39:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '5huyYoqB2gWYHHbHpjQrhpC2e50kwwFNkz9bbp18', NULL, 'http://185.253.155.205', 1, 0, 0, '2023-04-17 14:40:31', '2023-04-17 14:40:31'),
(2, NULL, 'Laravel Password Grant Client', 'BHIKIghnfJgYok4VOh2asdhaVngUVab8AILmvhec', 'users', 'http://185.253.155.205', 0, 1, 0, '2023-04-17 14:40:31', '2023-04-17 14:40:31'),
(3, NULL, 'Laravel Personal Access Client', 'lNvVFcUKAho9zaYZaDNN0CdrdFvZb9az0UEaNdgd', NULL, 'http://185.253.155.205', 1, 0, 0, '2023-04-17 14:59:46', '2023-04-17 14:59:46'),
(4, NULL, 'Laravel Password Grant Client', 'UzBQtHKnXffmGhR3PCmYJ7QJvZgbfe1GO2Mk6613', 'users', 'http://185.253.155.205', 0, 1, 0, '2023-04-17 14:59:46', '2023-04-17 14:59:46'),
(5, NULL, 'Laravel Password Grant Client', 'IRmFp3M3vd3oAyLHD8oK2GKCyDCQLR5Jk5u3UszI', 'users', 'http://185.253.155.205', 0, 1, 0, '2023-04-17 15:24:51', '2023-04-17 15:24:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-04-17 14:40:31', '2023-04-17 14:40:31'),
(2, 3, '2023-04-17 14:59:46', '2023-04-17 14:59:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('000d12baa55b49bb3749a4c7b8945a725d49abe9ba10eb8a3d6a425fabdde661faccf6523f7a5595', 'c8fc60f0d57ebf3ed6b32c17f85731086c08abbe8f77df3d698e53225424b8124ce87b8a5ee3c052', 0, '2024-04-26 18:06:35'),
('0097ce44eef481ea86909f6bc8136f207f59bf95d5094b522af5d1860ce001769d80544f9c4e53a0', 'f42fe1e15a1adffe7241f59c43c162156dd1f8e91021a4399b7670a4f04de189e4e55463f3e66de0', 0, '2024-04-18 15:45:58'),
('17f6411acd75001312e856fce13076f666b7bf5ed7f2588a9b70cdb4ed5afbc671d3b73f9e3eebfb', '19b0ec0cd1d6c8d52f295f12d3d1a28d7c10f19faf9da5a7da694648e10b6a7eca56908296ea27cc', 0, '2024-04-25 15:54:46'),
('1aeb8ebc65692f177d1aa7945433faff2dbc0ba95e9ef7774fa6f1e5b71efb44b120e299987a1b29', 'ad0237dc935a9840c998e5c644cbc7d0e8f1f741dc71f810421ac20fc492abcc890d9a3a01ffc594', 0, '2024-04-18 16:39:02'),
('258369a6cf22025efc6d626a9c8de6147bb98f866ac0c7104aa15fd6583b4c58136ae56640114210', '8660a2cec61978089950542be35a12132a85c2a131faba9c7e1cc7fd6d653f8b275b2ce775388a4c', 0, '2024-04-25 16:03:26'),
('2df7a28137514bbc8234f5465666397fbadcc00daa71f4371b8532e511ca772f7aff4e57d9e85336', '0c17e00aabdb0615707bbb4e6064a515996fca0c6ce79bbd9dafa6eabb2667bd9e74e4e26825e000', 0, '2024-04-17 17:39:27'),
('4a700970180c3d42ff128d2ea5df2902fa8d68fe0aa8f978c7b13390dd64d932abe8c333c986295b', '458eb0b1092f069f30ad24997935ccf21d5bb6635480c2bd434eb0ddab235d5a1dfd0dccfe779a32', 0, '2024-04-17 17:10:59'),
('4db2b45a50e6592ccca4b2bcca186967cb547230c98dd55e823b3099f7ec5ac1f7ff64b5c1fb20e1', 'ff8045cf3cb5f4f37f003fb4a51cd2ff715fe16d1f1042a733e33d46322e024c28ccb3be1fb9b2a6', 0, '2024-04-17 17:39:03'),
('536c0981f8249827ce4b9fc5e8bc8eda2e8a0490107d433dc34a3279f2f87fe19df8bc10805e0177', '8bef4e30bbc52b0f837724a033531231c6a4156fd264a08957260dd2440ec4f4b2e077a73b4490eb', 0, '2024-04-18 16:20:19'),
('6645a58b923e9a1a7b129df629c885ae5c7ba69f86ed03fa6a4f5d601909f2e4a44dcafd66f3979b', '9ce784ae16e20626a758dcbbcec2559b3da59c2b6fd9c48aa25718ec9eb2c383cf847ad50a743aca', 0, '2024-04-26 18:06:59'),
('6f2ae103878c533fb9c8ca9850661b6f6fd66a8e4f22ea2aa1bc944d662a768bdfe0db02bccdbc19', '2a83c905a7c9f3404c9975ca5eb96fb940a7afdbf0ca200e7677a2c3053ea30ddfa6573b45784c30', 0, '2024-04-25 16:03:08'),
('75cd2405fcf6df159b25e9a27c24e785a9fa50013e53036da6efdf579fd01bf9e56adb6df3eac312', '395f4e1d14a7c73f9abdd0de0d92f7cc305d254e5a8ff7c80806a96ac7c25c23585ab478f5943959', 0, '2024-04-17 17:23:23'),
('85b3f8515e65a349cacd3397e32e5585f2154bfea52a6513948d2568f5bd150bd26e8753510ae0cb', '8784e684c282d1c69cde9c55f1900c8b745422751bd20da50d96644254198c9997c8035df3f278bd', 0, '2024-04-18 17:34:24'),
('8c624a3baedcd20587ae9cabaa73ec5efd40986185d1d818ba6d96ba0b2baf4c67fa323c7dc38da9', 'a6f17694d5d8245d5a22dd45b0e5ff883f7eb94f58383e4464fd709db05582f8de69f4100698871b', 0, '2024-04-17 17:39:45'),
('a882f53fe88a8f0e4398db4770e33ade446b918337f9e9b15fc198fc9a27f00e1e79079e01fd39d9', 'e0bc64fbaa6f27409bca3933d7d1e0376cad3239b4f4d6ccb8ee0daaee85222c09a2959a160f0af4', 0, '2024-04-18 15:59:57'),
('b10eaef1147aaebdc3047fcccb78a172c94e4f39814512f64f152518ebb6b75887a802b6d3a29fc0', 'd6c7ca010685e6716b49dbcc32cbfa56227a2b05a903c0bc8361903482216e457dd057d0f6947caf', 0, '2024-04-17 17:29:14'),
('b6c70593f54d4f3f5c410ca16b2c0e352bab575445b0e121b951808b14cbc594b26b2ea1853c0e7c', '694742f6d292f15dfc0ad7d595156de9f746ac988b06d2770ef0e6c8b1668df0cb8c2a05835c9c8a', 0, '2024-04-25 16:00:39'),
('c921690d139044df6b87a055e9724a8881e795b5ca0afbbeba6be22e05bc19fd234b3f2a0f0447b9', '8af8ae3bf3bf507b2da54c3544424d3b5b6fe4525109d2417884eba2fbc5517c8c5541e01273b0f2', 0, '2024-04-25 15:51:20'),
('cf7c9575426355dcd19d2d8e6ec4e9abe0cc18a02b8717a2738dfd5de3f1a6befbeb5fe05d05aa78', '918ac69e1c41000af21fb4f727d24f7eaab9e2fde8680440587670ba2a1ce70c80216d4054b925e1', 0, '2024-04-17 17:10:18'),
('fd19f84ae6a1d03926bc8796e797036c649eb360b5ea233f8714ab838a8962dc79cd88c186724570', '2a936a23d961cd8c9bfdacb3370d1fc57437f20266458063cf5d0e4dec6b2a826116bfe1a3715da9', 0, '2024-04-18 16:02:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alvaro', 'alvaro@perez.com', '$2y$10$ZUrtUVkUT/nZ6mO/2IfuCO8zsiD63CopKKedHCkfpOv3jhRYZyI3O', NULL, '2023-04-17 14:12:08', '2023-04-17 14:12:08'),
(2, 'prueba', 'prueba@gmail.com', '$2y$10$wsyKVbbvMaphPAQiq.2Gyefr0YmPTDq44/PCfDi8w5mEAIyIvUazG', NULL, '2023-04-17 14:43:11', '2023-04-17 14:43:11'),
(3, 'claudia', 'claudia@gmail.com', '$2y$10$mfc0QDoznkGFvdZ2mBMITeI0z8kmIaxn11u0fFlo7dPKymvmfjJtq', NULL, '2023-04-17 15:01:25', '2023-04-17 15:01:25'),
(4, 'prueba2', 'prueba2@gmail.com', '$2y$10$n5qaDeK7UNbRnoSEEXXB4eQIJZbs5OPXt.qw7guY4dufsilPcMMCu', NULL, '2023-04-17 15:28:28', '2023-04-17 15:28:28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clases_usuarios`
--
ALTER TABLE `clases_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clases_usuarios_user_id_foreign` (`user_id`),
  ADD KEY `clases_usuarios_clase_id_foreign` (`clase_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clases_usuarios`
--
ALTER TABLE `clases_usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clases_usuarios`
--
ALTER TABLE `clases_usuarios`
  ADD CONSTRAINT `clases_usuarios_clase_id_foreign` FOREIGN KEY (`clase_id`) REFERENCES `clases` (`id`),
  ADD CONSTRAINT `clases_usuarios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
