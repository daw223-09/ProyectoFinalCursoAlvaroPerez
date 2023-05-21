-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 18-05-2023 a las 16:06:43
-- Versión del servidor: 8.0.32
-- Versión de PHP: 8.1.18

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

CREATE TABLE IF NOT EXISTS `clases` (
  `id` bigint UNSIGNED NOT NULL,
  `clase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plazas` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `clase`, `plazas`, `created_at`, `updated_at`) VALUES
(1, 'Body Combat', 33, NULL, NULL),
(2, 'Body Pump', 30, NULL, NULL),
(3, 'Spinning', 20, NULL, NULL),
(4, 'Yoga', 20, NULL, NULL),
(5, 'Xcore', 15, NULL, NULL),
(6, 'Zumba', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases_usuarios`
--

CREATE TABLE `clases_usuarios` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `clase_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clases_usuarios`
--

INSERT INTO `clases_usuarios` (`id`, `user_id`, `clase_id`, `created_at`, `updated_at`) VALUES
(23, 1, 1, '2023-05-09 16:24:34', '2023-05-09 16:24:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
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
-- Estructura de tabla para la tabla `materials`
--

CREATE TABLE IF NOT EXISTS `materials` (
  `id` bigint UNSIGNED NOT NULL,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materials`
--

INSERT INTO `materials` (`id`, `material`, `precio`, `created_at`, `updated_at`) VALUES
(1, 'Mancuerna', 30, NULL, NULL),
(2, 'Pesa Rusa', 25, NULL, NULL),
(3, 'Discos de Hierro', 50, NULL, NULL),
(4, 'Esterilla', 4, NULL, NULL),
(5, 'Banda Elastica', 8, NULL, NULL),
(6, 'Comba', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_04_19_154132_create_clases_table', 1),
(11, '2023_04_19_160516_create_clases_usuarios_table', 1),
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
(26, '2023_04_19_160516_create_clases_usuarios_table', 3),
(27, '2023_05_13_154652_create_materials_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00eb40da75c15138f3f1af8aaf7c58f3297fbbb2e707911141df39147a9039527cd91f9838df0816', 16, 2, NULL, '[\"*\"]', 0, '2023-05-11 17:09:08', '2023-05-11 17:09:08', '2024-05-11 17:09:08'),
('01cacd4da40c4b4cc7d2489766ff6e1a2e0adc46819b55ce9616cfb74116b765a3b2cc5c0f4a5c5e', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 15:57:00', '2023-05-10 15:57:00', '2024-05-10 15:57:00'),
('02ee54e121b773b4fe6ae22fe17768d97893164fab72dc264e647e534a4226ab9637f7167e0052ea', 1, 2, NULL, '[\"*\"]', 0, '2023-05-15 15:34:56', '2023-05-15 15:34:56', '2024-05-15 15:34:56'),
('0618dab2927d61dfc53bd3aa1a28342af5a1e8560114e224a55e216c0c6b8ca7a6f938272ac7b5e5', 23, 2, NULL, '[\"*\"]', 0, '2023-05-17 17:15:33', '2023-05-17 17:15:33', '2024-05-17 17:15:33'),
('09131a8fe3c05267c4546732b456c18aaaf5491c98caaf540ba38a2cf5c3d8740c6a26dc1fa3920e', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 17:46:09', '2023-05-10 17:46:09', '2024-05-10 17:46:09'),
('0935b3151e6f4691dc0c1386bc5738b4bc43e0af4c565746d2e33dec3b4bcac07504b38577d4b5da', 1, 2, NULL, '[\"*\"]', 0, '2023-05-17 12:55:17', '2023-05-17 12:55:17', '2024-05-17 12:55:17'),
('0b8b02669333aebe29a18a8238c11fb30fe1e7af4bce775e8cfb8c68457ca9eda184f36066bfb13a', 4, 2, NULL, '[\"*\"]', 0, '2023-05-10 15:29:43', '2023-05-10 15:29:43', '2024-05-10 15:29:43'),
('0c17e00aabdb0615707bbb4e6064a515996fca0c6ce79bbd9dafa6eabb2667bd9e74e4e26825e000', 1, 2, NULL, '[\"*\"]', 0, '2023-04-17 15:39:27', '2023-04-17 15:39:27', '2024-04-17 17:39:27'),
('15fd2b8960ff1da49c8b160a70a65572ca30f1f4e815f3e8a70eb56b05f6ba6cd0dcf44cb80b729c', 21, 2, NULL, '[\"*\"]', 0, '2023-05-11 17:27:55', '2023-05-11 17:27:55', '2024-05-11 17:27:55'),
('19b0ec0cd1d6c8d52f295f12d3d1a28d7c10f19faf9da5a7da694648e10b6a7eca56908296ea27cc', 1, 2, NULL, '[\"*\"]', 0, '2023-04-25 13:54:46', '2023-04-25 13:54:46', '2024-04-25 15:54:46'),
('1c2ed12ee0b1b19190fdd768a3234eebaf1ac04eada9783c801f50590641877e16662a06d8838087', 1, 2, NULL, '[\"*\"]', 0, '2023-05-11 17:23:26', '2023-05-11 17:23:26', '2024-05-11 17:23:26'),
('1c7143c4aa286b9dbc1c46a03e2f520c4c034c5d22a934ecf15e3a60f5476da4889b20dfcbc949e2', 16, 2, NULL, '[\"*\"]', 0, '2023-05-10 17:52:11', '2023-05-10 17:52:11', '2024-05-10 17:52:11'),
('1c8b4abca5c708db79fdb9acafbdc999c97dafb8a05d693fa9f7b1c05c52c61b125582d1326e7418', 1, 2, NULL, '[\"*\"]', 0, '2023-05-18 15:36:25', '2023-05-18 15:36:25', '2024-05-18 15:36:25'),
('1e0f11abf90e9ec21bf7e562d4236ae23a7315bac3cb5ebf1a6ad27ad9d589f0a28620650efc2b58', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 17:31:46', '2023-05-10 17:31:46', '2024-05-10 17:31:46'),
('26777deaa4b0ef7b59157a154c38a790c476ec956332a3fcd038e874fcc9e28550d5fc87318f455e', 1, 2, NULL, '[\"*\"]', 0, '2023-05-16 18:18:29', '2023-05-16 18:18:29', '2024-05-16 18:18:29'),
('2a83c905a7c9f3404c9975ca5eb96fb940a7afdbf0ca200e7677a2c3053ea30ddfa6573b45784c30', 2, 2, NULL, '[\"*\"]', 0, '2023-04-25 14:03:08', '2023-04-25 14:03:08', '2024-04-25 16:03:08'),
('2a936a23d961cd8c9bfdacb3370d1fc57437f20266458063cf5d0e4dec6b2a826116bfe1a3715da9', 1, 2, NULL, '[\"*\"]', 0, '2023-04-18 14:02:43', '2023-04-18 14:02:43', '2024-04-18 16:02:43'),
('2f5529104910b9c41fe9466acef3997b639f040a234860752f6a72486ab70900f93e70e6598d8086', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 16:02:49', '2023-05-10 16:02:49', '2024-05-10 16:02:49'),
('3190a321011ef68869dbd9b84dadb7b6fc813904b61580b245eb4d3958b55aea9fda9051fa3aa3fd', 1, 2, NULL, '[\"*\"]', 0, '2023-05-16 18:33:56', '2023-05-16 18:33:56', '2024-05-16 18:33:56'),
('31aaac2cbfc443d8b5bde099924d9156e3db0bd5eeb75e3394a40b123270a17fdebbd173d2d2ec23', 27, 2, NULL, '[\"*\"]', 0, '2023-05-17 18:04:24', '2023-05-17 18:04:24', '2024-05-17 18:04:24'),
('332d2a608c060a1b0309c0db9948382e18ca77f715ac0807bf0fba39b62725d72f1c7903b4cdd31d', 9, 2, NULL, '[\"*\"]', 0, '2023-05-10 17:22:34', '2023-05-10 17:22:34', '2024-05-10 17:22:34'),
('358e29ece3dacdbf7a7240d69704058a910580522c2bd8b646a878064fe7e5354d4e4575a64880f1', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 16:01:00', '2023-05-10 16:01:00', '2024-05-10 16:01:00'),
('395f4e1d14a7c73f9abdd0de0d92f7cc305d254e5a8ff7c80806a96ac7c25c23585ab478f5943959', 1, 2, NULL, '[\"*\"]', 0, '2023-04-17 15:23:23', '2023-04-17 15:23:23', '2024-04-17 17:23:23'),
('3ecc05e224afe5a6f281db9de7bc68e16e8dd21bef7687dee06dc8775c9e0e8d5f5121e469d1dd66', 7, 2, NULL, '[\"*\"]', 0, '2023-05-10 15:31:31', '2023-05-10 15:31:31', '2024-05-10 15:31:31'),
('4109a9e44368b407c59e33f1ecee25309c2c35c5cc04fe69ca4609795c49b3351106f8144ec37917', 1, 2, NULL, '[\"*\"]', 0, '2023-05-11 16:44:22', '2023-05-11 16:44:22', '2024-05-11 16:44:22'),
('43d210fdbc377b3e282ea93c07e6ee9082d6e9f4cb93ca7a32367b96cce3ddc487197ffd142a2a88', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 16:00:40', '2023-05-10 16:00:40', '2024-05-10 16:00:40'),
('458eb0b1092f069f30ad24997935ccf21d5bb6635480c2bd434eb0ddab235d5a1dfd0dccfe779a32', 1, 2, NULL, '[\"*\"]', 0, '2023-04-17 15:10:59', '2023-04-17 15:10:59', '2024-04-17 17:10:59'),
('479d05d6301d8d649822be244992a06c9457c9acf8d8e587c0b1cbb3e12941eb92f21abf18882448', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 15:58:08', '2023-05-10 15:58:08', '2024-05-10 15:58:08'),
('4ebac3f0f4346f45da86459d590bfb836d84017176b12d9361b4104ed93a6f9029e9ec428e32beef', 1, 2, NULL, '[\"*\"]', 0, '2023-05-11 17:02:48', '2023-05-11 17:02:48', '2024-05-11 17:02:48'),
('559c75b974c538070eb5a07789633f34aeec2a508d5132dd0a66aeb2aa76e07a20d63028017e6fa5', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 15:58:31', '2023-05-10 15:58:31', '2024-05-10 15:58:31'),
('694742f6d292f15dfc0ad7d595156de9f746ac988b06d2770ef0e6c8b1668df0cb8c2a05835c9c8a', 1, 2, NULL, '[\"*\"]', 0, '2023-04-25 14:00:39', '2023-04-25 14:00:39', '2024-04-25 16:00:39'),
('6a278c23cdd42aa59bd2a3eb0040f62e86ae2f2adb1d410ca29e3e049ea7b5232aa2f60e83ac8531', 32, 2, NULL, '[\"*\"]', 0, '2023-05-18 15:34:21', '2023-05-18 15:34:21', '2024-05-18 15:34:21'),
('70fb007e92f5c33890e909ddd6f44b4b31f40c2ae817e2081c988cdd37f180e790ba0f51cc56cccd', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 15:55:51', '2023-05-10 15:55:51', '2024-05-10 15:55:51'),
('738cb21069dfcd304c308155f037142b869f597c4189ac7fca1ea468156ecefdd542b10f8f014e6b', 1, 2, NULL, '[\"*\"]', 0, '2023-05-09 16:24:17', '2023-05-09 16:24:17', '2024-05-09 16:24:17'),
('7aef160fb7e1914ad027e3e8b69c79583108d9a1876e1814f71640e335ac7904e18cfac0e8d71d8c', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 17:38:27', '2023-05-10 17:38:27', '2024-05-10 17:38:27'),
('7eb17594f95c4587b5d2e7a63f42271552cb5652844db30bd884b09d98928aef4979b829663e6d82', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 17:41:05', '2023-05-10 17:41:05', '2024-05-10 17:41:05'),
('8660a2cec61978089950542be35a12132a85c2a131faba9c7e1cc7fd6d653f8b275b2ce775388a4c', 1, 2, NULL, '[\"*\"]', 0, '2023-04-25 14:03:26', '2023-04-25 14:03:26', '2024-04-25 16:03:26'),
('877941031fc9bf92be7ceeb502216b91edea050b0662b692c1557e0419b1b73fb46193fd7944c0a4', 1, 2, NULL, '[\"*\"]', 0, '2023-05-11 16:12:00', '2023-05-11 16:12:00', '2024-05-11 16:12:00'),
('8784e684c282d1c69cde9c55f1900c8b745422751bd20da50d96644254198c9997c8035df3f278bd', 1, 2, NULL, '[\"*\"]', 0, '2023-04-18 15:34:24', '2023-04-18 15:34:24', '2024-04-18 17:34:24'),
('8af8ae3bf3bf507b2da54c3544424d3b5b6fe4525109d2417884eba2fbc5517c8c5541e01273b0f2', 4, 2, NULL, '[\"*\"]', 0, '2023-04-25 13:51:20', '2023-04-25 13:51:20', '2024-04-25 15:51:20'),
('8bef4e30bbc52b0f837724a033531231c6a4156fd264a08957260dd2440ec4f4b2e077a73b4490eb', 1, 2, NULL, '[\"*\"]', 0, '2023-04-18 14:20:19', '2023-04-18 14:20:19', '2024-04-18 16:20:19'),
('918ac69e1c41000af21fb4f727d24f7eaab9e2fde8680440587670ba2a1ce70c80216d4054b925e1', 3, 4, NULL, '[\"*\"]', 0, '2023-04-17 15:10:18', '2023-04-17 15:10:18', '2024-04-17 17:10:18'),
('9ce784ae16e20626a758dcbbcec2559b3da59c2b6fd9c48aa25718ec9eb2c383cf847ad50a743aca', 2, 2, NULL, '[\"*\"]', 0, '2023-04-26 16:06:59', '2023-04-26 16:06:59', '2024-04-26 18:06:59'),
('a6f17694d5d8245d5a22dd45b0e5ff883f7eb94f58383e4464fd709db05582f8de69f4100698871b', 4, 2, NULL, '[\"*\"]', 0, '2023-04-17 15:39:45', '2023-04-17 15:39:45', '2024-04-17 17:39:45'),
('a8a21af758c08bae3a7f6be3a663e02c6f679e780cd5bf830787a4ced617949e26157f52b7f84872', 1, 2, NULL, '[\"*\"]', 0, '2023-05-12 12:21:22', '2023-05-12 12:21:22', '2024-05-12 12:21:22'),
('ad0237dc935a9840c998e5c644cbc7d0e8f1f741dc71f810421ac20fc492abcc890d9a3a01ffc594', 1, 2, NULL, '[\"*\"]', 0, '2023-04-18 14:39:02', '2023-04-18 14:39:02', '2024-04-18 16:39:02'),
('b22ed84900af295f7f80cc2901ed45c923ce1d035efead367b176601968c115c8e019bfc06653324', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 17:34:06', '2023-05-10 17:34:06', '2024-05-10 17:34:06'),
('b2c05f2faf98965f638b35b006f579756b0915df0f7c2444453aada50f8e7dbfba6b0ab573dedd31', 15, 2, NULL, '[\"*\"]', 0, '2023-05-10 17:48:53', '2023-05-10 17:48:53', '2024-05-10 17:48:53'),
('c8fc60f0d57ebf3ed6b32c17f85731086c08abbe8f77df3d698e53225424b8124ce87b8a5ee3c052', 1, 2, NULL, '[\"*\"]', 0, '2023-04-26 16:06:35', '2023-04-26 16:06:35', '2024-04-26 18:06:35'),
('cd21aec84fcea99ff104aa24d3e9a2cfb793d461e77792874c2a6be59c5c96a4d2f51ce09c31e616', 22, 2, NULL, '[\"*\"]', 0, '2023-05-16 18:41:47', '2023-05-16 18:41:47', '2024-05-16 18:41:47'),
('cfcbe745f315498ea1ff22f08a91a631853e5b5b7ed7fdec449544af8bd1a9900ef79d28da274855', 1, 2, NULL, '[\"*\"]', 0, '2023-05-09 17:45:27', '2023-05-09 17:45:27', '2024-05-09 17:45:27'),
('d189616cb19200f840a671e4c130b6596351f1c853739186bb1216bef0d68201abb1b9fba7fa14f8', 1, 2, NULL, '[\"*\"]', 0, '2023-05-14 15:50:30', '2023-05-14 15:50:30', '2024-05-14 15:50:30'),
('d3a8c73032e8c5823369ae15dcb2b6fb9bf27fed2ff2d96e709f993c638093c8ec10ed2bb333059e', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 17:44:21', '2023-05-10 17:44:21', '2024-05-10 17:44:21'),
('d6c7ca010685e6716b49dbcc32cbfa56227a2b05a903c0bc8361903482216e457dd057d0f6947caf', 4, 2, NULL, '[\"*\"]', 0, '2023-04-17 15:29:14', '2023-04-17 15:29:14', '2024-04-17 17:29:14'),
('e0bc64fbaa6f27409bca3933d7d1e0376cad3239b4f4d6ccb8ee0daaee85222c09a2959a160f0af4', 3, 2, NULL, '[\"*\"]', 0, '2023-04-18 13:59:57', '2023-04-18 13:59:57', '2024-04-18 15:59:57'),
('e357ff58b7b772dee88b5d5fe430456e1d0c4094172931fbd8e789a08a6da1f08087d393192bf849', 1, 2, NULL, '[\"*\"]', 0, '2023-05-10 17:31:05', '2023-05-10 17:31:05', '2024-05-10 17:31:05'),
('e87fead0ad3c8c8f9d22fcd495aa9c51a8144f003c05f0a89e5fb557a74e37f03ca4c810e201913c', 19, 2, NULL, '[\"*\"]', 0, '2023-05-11 17:14:52', '2023-05-11 17:14:52', '2024-05-11 17:14:52'),
('f42fe1e15a1adffe7241f59c43c162156dd1f8e91021a4399b7670a4f04de189e4e55463f3e66de0', 1, 2, NULL, '[\"*\"]', 0, '2023-04-18 13:45:58', '2023-04-18 13:45:58', '2024-04-18 15:45:58'),
('ff8045cf3cb5f4f37f003fb4a51cd2ff715fe16d1f1042a733e33d46322e024c28ccb3be1fb9b2a6', 1, 2, NULL, '[\"*\"]', 0, '2023-04-17 15:39:03', '2023-04-17 15:39:03', '2024-04-17 17:39:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
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
(1, NULL, 'Laravel Personal Access Client', '5huyYoqB2gWYHHbHpjQrhpC2e50kwwFNkz9bbp18', NULL, 'http://localhost', 1, 0, 0, '2023-04-17 14:40:31', '2023-04-17 14:40:31'),
(2, NULL, 'Laravel Password Grant Client', 'BHIKIghnfJgYok4VOh2asdhaVngUVab8AILmvhec', 'users', 'http://localhost', 0, 1, 0, '2023-04-17 14:40:31', '2023-04-17 14:40:31'),
(3, NULL, 'Laravel Personal Access Client', 'lNvVFcUKAho9zaYZaDNN0CdrdFvZb9az0UEaNdgd', NULL, 'http://localhost', 1, 0, 0, '2023-04-17 14:59:46', '2023-04-17 14:59:46'),
(4, NULL, 'Laravel Password Grant Client', 'UzBQtHKnXffmGhR3PCmYJ7QJvZgbfe1GO2Mk6613', 'users', 'http://localhost', 0, 1, 0, '2023-04-17 14:59:46', '2023-04-17 14:59:46'),
(5, NULL, 'Laravel Password Grant Client', 'IRmFp3M3vd3oAyLHD8oK2GKCyDCQLR5Jk5u3UszI', 'users', 'http://localhost', 0, 1, 0, '2023-04-17 15:24:51', '2023-04-17 15:24:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
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

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
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
('001552c9c447957fccc2832b64acf52c0ae3b67278bfa80ed36564d2df2d4290ed914104e39a33b7', '3ecc05e224afe5a6f281db9de7bc68e16e8dd21bef7687dee06dc8775c9e0e8d5f5121e469d1dd66', 0, '2024-05-10 15:31:31'),
('0054309d3d11b3b2f11b732bade51dacc69311913e821911b29769679c6ce8ed3280b213a3d2a997', '1e0f11abf90e9ec21bf7e562d4236ae23a7315bac3cb5ebf1a6ad27ad9d589f0a28620650efc2b58', 0, '2024-05-10 17:31:46'),
('0097ce44eef481ea86909f6bc8136f207f59bf95d5094b522af5d1860ce001769d80544f9c4e53a0', 'f42fe1e15a1adffe7241f59c43c162156dd1f8e91021a4399b7670a4f04de189e4e55463f3e66de0', 0, '2024-04-18 15:45:58'),
('04c8be0ef2e733494aacfa4285a989894e22d7604e985f293bd5b9b21935ccdb681f3c868c116f32', '332d2a608c060a1b0309c0db9948382e18ca77f715ac0807bf0fba39b62725d72f1c7903b4cdd31d', 0, '2024-05-10 17:22:34'),
('07fe065cfa0dda399057aad1c9c53c26dcddeabeebd0a1e1e6fa15fd2bc71f932c5365eb93f4ccd1', 'd189616cb19200f840a671e4c130b6596351f1c853739186bb1216bef0d68201abb1b9fba7fa14f8', 0, '2024-05-14 15:50:30'),
('0abe85ab66a71fc07c15ffb4fa8ca882e6c532bc88061a99d5144bf3db3e354329a2aa61a9121815', '70fb007e92f5c33890e909ddd6f44b4b31f40c2ae817e2081c988cdd37f180e790ba0f51cc56cccd', 0, '2024-05-10 15:55:51'),
('0b3235adc09de1d9c69b25d3abec4df55c9198912f23ec2185200168676b7abbe74e6fde7d2ee43b', 'd3a8c73032e8c5823369ae15dcb2b6fb9bf27fed2ff2d96e709f993c638093c8ec10ed2bb333059e', 0, '2024-05-10 17:44:21'),
('17f6411acd75001312e856fce13076f666b7bf5ed7f2588a9b70cdb4ed5afbc671d3b73f9e3eebfb', '19b0ec0cd1d6c8d52f295f12d3d1a28d7c10f19faf9da5a7da694648e10b6a7eca56908296ea27cc', 0, '2024-04-25 15:54:46'),
('1aeb8ebc65692f177d1aa7945433faff2dbc0ba95e9ef7774fa6f1e5b71efb44b120e299987a1b29', 'ad0237dc935a9840c998e5c644cbc7d0e8f1f741dc71f810421ac20fc492abcc890d9a3a01ffc594', 0, '2024-04-18 16:39:02'),
('1ee5bb136453d107d4df9a8b315f9a3a1a1e6ee1f38af48382cbad444cef49191a80886001d54a4b', 'b22ed84900af295f7f80cc2901ed45c923ce1d035efead367b176601968c115c8e019bfc06653324', 0, '2024-05-10 17:34:06'),
('21c3b23cd6513d6738bcc4b98fe9c037b5e12a122e9b643ba75ea827c43d8cce1e6b666688732bc0', 'b2c05f2faf98965f638b35b006f579756b0915df0f7c2444453aada50f8e7dbfba6b0ab573dedd31', 0, '2024-05-10 17:48:53'),
('24722453d72e326e6058630dba527bd85fd9873fe424bbf79d7521e7356ad7b98c5fc9c39a0c7ef5', '01cacd4da40c4b4cc7d2489766ff6e1a2e0adc46819b55ce9616cfb74116b765a3b2cc5c0f4a5c5e', 0, '2024-05-10 15:57:00'),
('258369a6cf22025efc6d626a9c8de6147bb98f866ac0c7104aa15fd6583b4c58136ae56640114210', '8660a2cec61978089950542be35a12132a85c2a131faba9c7e1cc7fd6d653f8b275b2ce775388a4c', 0, '2024-04-25 16:03:26'),
('27f4568e82d3c97bad9ad58a9262eb5df51224fd708f8bd93f3a34499e9f0ca5a32524d888a0628f', '09131a8fe3c05267c4546732b456c18aaaf5491c98caaf540ba38a2cf5c3d8740c6a26dc1fa3920e', 0, '2024-05-10 17:46:09'),
('29c6e001156fd1e7127bd0ccf91c6f66bcff2e6f364f732d08a8670117ed9159c343600d4265d7b1', 'e87fead0ad3c8c8f9d22fcd495aa9c51a8144f003c05f0a89e5fb557a74e37f03ca4c810e201913c', 0, '2024-05-11 17:14:52'),
('2df7a28137514bbc8234f5465666397fbadcc00daa71f4371b8532e511ca772f7aff4e57d9e85336', '0c17e00aabdb0615707bbb4e6064a515996fca0c6ce79bbd9dafa6eabb2667bd9e74e4e26825e000', 0, '2024-04-17 17:39:27'),
('3c076078b8a4ef3e4e1cffcecc4c898f4f70c3b7ecc745cfbe2b1850a30798fe73af4fddd1e2d116', '559c75b974c538070eb5a07789633f34aeec2a508d5132dd0a66aeb2aa76e07a20d63028017e6fa5', 0, '2024-05-10 15:58:31'),
('3d43800a02ffefe0a548cdb9e4d5763c3117d8a9607c0b1ea99c972dc4b1cd81bf5770a523852a74', '43d210fdbc377b3e282ea93c07e6ee9082d6e9f4cb93ca7a32367b96cce3ddc487197ffd142a2a88', 0, '2024-05-10 16:00:40'),
('4a700970180c3d42ff128d2ea5df2902fa8d68fe0aa8f978c7b13390dd64d932abe8c333c986295b', '458eb0b1092f069f30ad24997935ccf21d5bb6635480c2bd434eb0ddab235d5a1dfd0dccfe779a32', 0, '2024-04-17 17:10:59'),
('4d17345635d6d2e59ce90bbabd8b4a2e919a461e1cfb5b6ce0287d641724e2e27862391c67db3ac0', '738cb21069dfcd304c308155f037142b869f597c4189ac7fca1ea468156ecefdd542b10f8f014e6b', 0, '2024-05-09 16:24:17'),
('4db2b45a50e6592ccca4b2bcca186967cb547230c98dd55e823b3099f7ec5ac1f7ff64b5c1fb20e1', 'ff8045cf3cb5f4f37f003fb4a51cd2ff715fe16d1f1042a733e33d46322e024c28ccb3be1fb9b2a6', 0, '2024-04-17 17:39:03'),
('52bc62d04938b66dee5011f4f8ff813bfbf04c2aa94896c1a708fa6b68398a02b29b3b09960e2e6b', '1c7143c4aa286b9dbc1c46a03e2f520c4c034c5d22a934ecf15e3a60f5476da4889b20dfcbc949e2', 0, '2024-05-10 17:52:11'),
('536c0981f8249827ce4b9fc5e8bc8eda2e8a0490107d433dc34a3279f2f87fe19df8bc10805e0177', '8bef4e30bbc52b0f837724a033531231c6a4156fd264a08957260dd2440ec4f4b2e077a73b4490eb', 0, '2024-04-18 16:20:19'),
('56c08231d94eeb46bffcb5d0f45e1a007ddf1e2787a1dece18d1aa1c99ad41ff92d216557d2f4e7b', '7eb17594f95c4587b5d2e7a63f42271552cb5652844db30bd884b09d98928aef4979b829663e6d82', 0, '2024-05-10 17:41:05'),
('5abf6d6fd836c1bd07c85b16360df4ad1e2bba7c66ed849643c508f3a7307575b2c1e22288220075', '4ebac3f0f4346f45da86459d590bfb836d84017176b12d9361b4104ed93a6f9029e9ec428e32beef', 0, '2024-05-11 17:02:48'),
('5b461ad76a69b03f8ea3ec5654c97d02e308325a7b86d898238920fe3e115d5b43ddf4399df41bbc', '0618dab2927d61dfc53bd3aa1a28342af5a1e8560114e224a55e216c0c6b8ca7a6f938272ac7b5e5', 0, '2024-05-17 17:15:33'),
('6645a58b923e9a1a7b129df629c885ae5c7ba69f86ed03fa6a4f5d601909f2e4a44dcafd66f3979b', '9ce784ae16e20626a758dcbbcec2559b3da59c2b6fd9c48aa25718ec9eb2c383cf847ad50a743aca', 0, '2024-04-26 18:06:59'),
('6a155005972e0272a5a39d37ef9fb5e614911750968916f345f26846351a28500f688237791e83ab', '02ee54e121b773b4fe6ae22fe17768d97893164fab72dc264e647e534a4226ab9637f7167e0052ea', 0, '2024-05-15 15:34:56'),
('6cfdee645e1bc2bf0e6cbde03ab421a5a33b68c4ed072baf9c975e6d3c790da6a4729a011a7e4e64', 'a8a21af758c08bae3a7f6be3a663e02c6f679e780cd5bf830787a4ced617949e26157f52b7f84872', 0, '2024-05-12 12:21:22'),
('6f2ae103878c533fb9c8ca9850661b6f6fd66a8e4f22ea2aa1bc944d662a768bdfe0db02bccdbc19', '2a83c905a7c9f3404c9975ca5eb96fb940a7afdbf0ca200e7677a2c3053ea30ddfa6573b45784c30', 0, '2024-04-25 16:03:08'),
('733c57f5cf49fa173a4c05adb23cfc68801a4dad42e3658ef0f646e8eaef6ea90039bafd9324bbcb', 'e357ff58b7b772dee88b5d5fe430456e1d0c4094172931fbd8e789a08a6da1f08087d393192bf849', 0, '2024-05-10 17:31:05'),
('75cd2405fcf6df159b25e9a27c24e785a9fa50013e53036da6efdf579fd01bf9e56adb6df3eac312', '395f4e1d14a7c73f9abdd0de0d92f7cc305d254e5a8ff7c80806a96ac7c25c23585ab478f5943959', 0, '2024-04-17 17:23:23'),
('79855b8010d5bac603be5199bf7fbeb29a27fe35d682ce7b5bd0c4d709c511bd7a0f92871e6bbf33', 'cd21aec84fcea99ff104aa24d3e9a2cfb793d461e77792874c2a6be59c5c96a4d2f51ce09c31e616', 0, '2024-05-16 18:41:47'),
('7a38465f606a4c79f7e515b983aad19117b9cbe31ed7305a15d2ff21b34aab1d3d05611455027453', '7aef160fb7e1914ad027e3e8b69c79583108d9a1876e1814f71640e335ac7904e18cfac0e8d71d8c', 0, '2024-05-10 17:38:27'),
('80dfad6f210cec79a2ecc8a77b7845bb7e65cbae00291e0d783511f5238a252492c7399a6de3cc2e', '1c2ed12ee0b1b19190fdd768a3234eebaf1ac04eada9783c801f50590641877e16662a06d8838087', 0, '2024-05-11 17:23:26'),
('85b3f8515e65a349cacd3397e32e5585f2154bfea52a6513948d2568f5bd150bd26e8753510ae0cb', '8784e684c282d1c69cde9c55f1900c8b745422751bd20da50d96644254198c9997c8035df3f278bd', 0, '2024-04-18 17:34:24'),
('86c930f1f8c0c37f93fec1cf83a4f343baa7a32a2b870dc1935774b6bcb5762e5324ec23bfed9f3b', '3190a321011ef68869dbd9b84dadb7b6fc813904b61580b245eb4d3958b55aea9fda9051fa3aa3fd', 0, '2024-05-16 18:33:56'),
('87348fc77a54d71c899232d0f26e1cf78042d6ae6fa4c36b0e1f81133e9c5fffa86d97a23c1e5484', '358e29ece3dacdbf7a7240d69704058a910580522c2bd8b646a878064fe7e5354d4e4575a64880f1', 0, '2024-05-10 16:01:00'),
('8c624a3baedcd20587ae9cabaa73ec5efd40986185d1d818ba6d96ba0b2baf4c67fa323c7dc38da9', 'a6f17694d5d8245d5a22dd45b0e5ff883f7eb94f58383e4464fd709db05582f8de69f4100698871b', 0, '2024-04-17 17:39:45'),
('8eb8d535b876e881f38ca112d4f92da24f1bf31d827bfe8075553102a85a2162467193f734910686', '6a278c23cdd42aa59bd2a3eb0040f62e86ae2f2adb1d410ca29e3e049ea7b5232aa2f60e83ac8531', 0, '2024-05-18 15:34:21'),
('9a2e280520be10a406cbd36d3ff6eaaba4cc088386189c43fd70b6b62a859cc2720036e06a082404', '4109a9e44368b407c59e33f1ecee25309c2c35c5cc04fe69ca4609795c49b3351106f8144ec37917', 0, '2024-05-11 16:44:22'),
('9ba7d7a77f21499669aaefb0667957e22f1899afe55d0452f676ed7d1ad2e13c1ce12312edaa57a3', '479d05d6301d8d649822be244992a06c9457c9acf8d8e587c0b1cbb3e12941eb92f21abf18882448', 0, '2024-05-10 15:58:08'),
('a3e81fd0d5e7eb4dfda10d225dc2f32c6386a17bab822aea308969a1f784e4c2eba4ff9c8db2c8a8', '0935b3151e6f4691dc0c1386bc5738b4bc43e0af4c565746d2e33dec3b4bcac07504b38577d4b5da', 0, '2024-05-17 12:55:18'),
('a882f53fe88a8f0e4398db4770e33ade446b918337f9e9b15fc198fc9a27f00e1e79079e01fd39d9', 'e0bc64fbaa6f27409bca3933d7d1e0376cad3239b4f4d6ccb8ee0daaee85222c09a2959a160f0af4', 0, '2024-04-18 15:59:57'),
('b10eaef1147aaebdc3047fcccb78a172c94e4f39814512f64f152518ebb6b75887a802b6d3a29fc0', 'd6c7ca010685e6716b49dbcc32cbfa56227a2b05a903c0bc8361903482216e457dd057d0f6947caf', 0, '2024-04-17 17:29:14'),
('b6c70593f54d4f3f5c410ca16b2c0e352bab575445b0e121b951808b14cbc594b26b2ea1853c0e7c', '694742f6d292f15dfc0ad7d595156de9f746ac988b06d2770ef0e6c8b1668df0cb8c2a05835c9c8a', 0, '2024-04-25 16:00:39'),
('c1ba21928a8045e929c9ccf0bbfe464dac6a7b23eb58c1f14e7923c953df338405cba5567f437998', '2f5529104910b9c41fe9466acef3997b639f040a234860752f6a72486ab70900f93e70e6598d8086', 0, '2024-05-10 16:02:49'),
('c921690d139044df6b87a055e9724a8881e795b5ca0afbbeba6be22e05bc19fd234b3f2a0f0447b9', '8af8ae3bf3bf507b2da54c3544424d3b5b6fe4525109d2417884eba2fbc5517c8c5541e01273b0f2', 0, '2024-04-25 15:51:20'),
('cf7c9575426355dcd19d2d8e6ec4e9abe0cc18a02b8717a2738dfd5de3f1a6befbeb5fe05d05aa78', '918ac69e1c41000af21fb4f727d24f7eaab9e2fde8680440587670ba2a1ce70c80216d4054b925e1', 0, '2024-04-17 17:10:18'),
('d356c01d6d5195e514ce17d90256287295929a1c3fe48bf66f1b24c1f6f438f9e6c5ac2f2bf41e53', '26777deaa4b0ef7b59157a154c38a790c476ec956332a3fcd038e874fcc9e28550d5fc87318f455e', 0, '2024-05-16 18:18:29'),
('d3a83660092447c504b1f49678d162f70ca862ead9891f39aa5cdf8b53c29e93b1d8ea1b5a88c720', '00eb40da75c15138f3f1af8aaf7c58f3297fbbb2e707911141df39147a9039527cd91f9838df0816', 0, '2024-05-11 17:09:08'),
('d83f28fbf8dfdf691c4cb2ce334e6c89a1bbb9bf1ae5df874d72e0b29f206d2d048ac3867550addc', '31aaac2cbfc443d8b5bde099924d9156e3db0bd5eeb75e3394a40b123270a17fdebbd173d2d2ec23', 0, '2024-05-17 18:04:24'),
('db962316c2f2744e8d692ae07a54136f7f4cbd24536811c8af52ea0e79ef46ac49a9d0747546b186', '15fd2b8960ff1da49c8b160a70a65572ca30f1f4e815f3e8a70eb56b05f6ba6cd0dcf44cb80b729c', 0, '2024-05-11 17:27:55'),
('e04c5c10049d9d26ef7797daec210a1434482d5aa50d57e69de3889dda9577271553edb60ab6edf3', '1c8b4abca5c708db79fdb9acafbdc999c97dafb8a05d693fa9f7b1c05c52c61b125582d1326e7418', 0, '2024-05-18 15:36:25'),
('e7705ca11a2f9061fea27097ab44904ac6f8398c29c93653ea508eb24d6ca936ddf064e221b475a3', '0b8b02669333aebe29a18a8238c11fb30fe1e7af4bce775e8cfb8c68457ca9eda184f36066bfb13a', 0, '2024-05-10 15:29:43'),
('fca95cd87b020894850956399aa89e0779b04be54ef9f734dccd67a19d2b1f4319f99d601d7f336b', 'cfcbe745f315498ea1ff22f08a91a631853e5b5b7ed7fdec449544af8bd1a9900ef79d28da274855', 0, '2024-05-09 17:45:27'),
('fd19f84ae6a1d03926bc8796e797036c649eb360b5ea233f8714ab838a8962dc79cd88c186724570', '2a936a23d961cd8c9bfdacb3370d1fc57437f20266458063cf5d0e4dec6b2a826116bfe1a3715da9', 0, '2024-04-18 16:02:43'),
('fff173313e72d70634ada89a97527a65df256f6919e000158ea885614addebdaf2ca900e418a8e4a', '877941031fc9bf92be7ceeb502216b91edea050b0662b692c1557e0419b1b73fb46193fd7944c0a4', 0, '2024-05-11 16:12:00');

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

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL,
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

INSERT INTO IF NOT EXISTS `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alvaro', 'alvaro@perez.com', '$2y$10$ZUrtUVkUT/nZ6mO/2IfuCO8zsiD63CopKKedHCkfpOv3jhRYZyI3O', NULL, '2023-04-17 14:12:08', '2023-04-17 14:12:08'),
(2, 'prueba', 'prueba@gmail.com', '$2y$10$wsyKVbbvMaphPAQiq.2Gyefr0YmPTDq44/PCfDi8w5mEAIyIvUazG', NULL, '2023-04-17 14:43:11', '2023-04-17 14:43:11'),
(22, 'pruebaFin', 'pruebaFin@gmail.com', '$2y$10$rQ.e7Q6bgYgUEmu/E528huP/Qc6C132cgAkUtAe5Q6.OkSMijnPve', NULL, '2023-05-16 18:35:09', '2023-05-16 18:35:09'),
(23, 'aaa', 'aaa@gmail.com', '$2y$10$VZxcJ0mguefbF42suJpKt.MCgWHTwf4gcMV0qU8Mk03Gpl86qwxX2', NULL, '2023-05-17 17:15:13', '2023-05-17 17:15:13'),
(24, 'qqq', 'qqq@gmail.com', '$2y$10$AtZPr7cdqQXtm87wsDt/m.VDwJ7SCetM/bxJMhBIQ7PvZNCgstXZe', NULL, '2023-05-17 17:31:14', '2023-05-17 17:31:14'),
(25, 'bbb', 'bbb@gmail.com', '$2y$10$/qaNXi5fxT8xSxvh9NSl4OixM.NSqg5MowJ/qFHgvSswhyyQ1Ejsy', NULL, '2023-05-17 18:00:44', '2023-05-17 18:00:44'),
(26, 'ccc', 'ccc@gmail.com', '$2y$10$.tUiYeeEfjNMcCMZxGXTWO5MwrHIJ5YbMOHBQMX/i7T4tKbAnpFL2', NULL, '2023-05-17 18:02:43', '2023-05-17 18:02:43'),
(27, 'ddd', 'ddd@gmail.com', '$2y$10$swnh6hXfIAnsxfNyGQgYQu.nR0Z2JbsTg4GFOfk/Q2WVbYU.ToHX.', NULL, '2023-05-17 18:04:02', '2023-05-17 18:04:02'),
(28, 'ggg', 'ggg@gmail.com', '$2y$10$OujO2NXlIyKAE1jK4i58K.8ths5mNIGpf5d8xx3ykZ5JvoVxQCKTe', NULL, '2023-05-17 18:08:51', '2023-05-17 18:08:51'),
(29, 'hhh', 'hhh@gmail.com', '$2y$10$5bwZqJUYF15kLaHYfJ5toOM0QpviUYp9zHrdfzDyHZqnfVbJ1CRlS', NULL, '2023-05-17 18:09:59', '2023-05-17 18:09:59'),
(30, 'jjj', 'jjj@gmail.com', '$2y$10$PDy9y4oroR9YgVuPFG95juDNZkcHM5wpRw9lXjurz/PsSYiLPfNaS', NULL, '2023-05-17 18:21:35', '2023-05-17 18:21:35'),
(31, 'kkk', 'kkk@gmail.com', '$2y$10$ablyCL3q7Ms5hB4ax70N/e.S4p1C7UQE4qSDrKnP/cCMKmRYwlgyS', NULL, '2023-05-17 18:23:42', '2023-05-17 18:23:42'),
(32, 'prueba11', 'prueba11@gmail.com', '$2y$10$bUQGBIdjkJ1nnNjX5zHesuJlEIhqZ92VUEXVfoklw4ZCouYuFtAeK', NULL, '2023-05-18 15:34:03', '2023-05-18 15:34:03');

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
-- Indices de la tabla `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clases_usuarios`
--
ALTER TABLE `clases_usuarios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
