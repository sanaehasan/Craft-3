-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2021 at 06:27 AM
-- Server version: 8.0.26
-- PHP Version: 7.3.29-to-be-removed-in-future-macOS

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `craft1_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `craft_announcements`
--

CREATE TABLE `craft_announcements` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `pluginId` int DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT '1',
  `dateRead` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetindexdata`
--

CREATE TABLE `craft_assetindexdata` (
  `id` int NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `volumeId` int NOT NULL,
  `uri` text COLLATE utf8_unicode_ci,
  `size` bigint UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assets`
--

CREATE TABLE `craft_assets` (
  `id` int NOT NULL,
  `volumeId` int DEFAULT NULL,
  `folderId` int NOT NULL,
  `uploaderId` int DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int UNSIGNED DEFAULT NULL,
  `height` int UNSIGNED DEFAULT NULL,
  `size` bigint UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assets`
--

INSERT INTO `craft_assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(12, 1, 1, 1, 'mainstage-image.png', 'image', 1440, 720, 1199475, '0.7027;0.9994', NULL, NULL, '2021-10-16 19:47:41', '2021-10-16 19:47:42', '2021-10-17 12:30:40', '164b37e0-0a37-46fa-b5af-91e071e05565'),
(17, 1, 1, 1, 'Tech-Task-3.zip', 'compressed', NULL, NULL, 126168, NULL, 0, 0, '2021-10-16 21:30:17', '2021-10-16 21:30:18', '2021-10-16 21:30:18', 'b77b4443-a103-406b-80f1-e27bb1c7c36d'),
(21, 1, 1, 1, 'placeholder-image-square.png', 'image', 373, 240, 173774, NULL, NULL, NULL, '2021-10-16 21:33:53', '2021-10-16 21:31:04', '2021-10-16 21:33:53', '150a5b96-71ba-4de1-96bb-a6f465353606'),
(23, 1, 1, 1, 'placeholder-image-square_2021-10-16-213338_mqit.png', 'image', 373, 240, 173774, NULL, 0, 0, '2021-10-16 21:33:38', '2021-10-16 21:33:39', '2021-10-16 21:33:39', 'd1a99551-7694-42f7-a592-bcd255322efa'),
(24, 1, 1, 1, 'placeholder-image-square@2x.png', 'image', 746, 480, 448606, NULL, NULL, NULL, '2021-10-16 21:34:16', '2021-10-16 21:34:16', '2021-10-16 21:34:16', '836841ff-c16e-4bd9-a0f0-48aac6f57acd'),
(86, 1, 1, 1, 'placeholder-image-square_2021-10-18-180803_pdbe.png', 'image', 373, 240, 154319, NULL, 0, 0, '2021-10-18 18:08:04', '2021-10-18 18:08:04', '2021-10-18 18:08:04', '3606a0cb-1c11-4a1c-9bec-cd633bfb73f5'),
(87, 1, 1, 1, 'placeholder-image-square3.png', 'image', 373, 240, 154319, NULL, NULL, NULL, '2021-10-18 18:08:47', '2021-10-18 18:08:47', '2021-10-18 18:08:47', '279097ca-881d-4e8a-9b3d-ebb342a7d445'),
(97, 1, 1, 1, 'placeholder-image-square_2021-10-18-182239_jrdn.png', 'image', 373, 240, 133397, NULL, 0, 0, '2021-10-18 18:22:39', '2021-10-18 18:22:40', '2021-10-18 18:22:40', '66fb0a20-bdcd-4737-b61b-99a553ef68ef'),
(98, 1, 1, 1, 'placeholder-image-square11.png', 'image', 373, 240, 133397, NULL, NULL, NULL, '2021-10-18 18:23:43', '2021-10-18 18:23:43', '2021-10-18 18:23:43', '05bfe6a6-1b8d-4eed-b071-a110e0301d4b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransformindex`
--

CREATE TABLE `craft_assettransformindex` (
  `id` int NOT NULL,
  `assetId` int NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `volumeId` int DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assettransformindex`
--

INSERT INTO `craft_assettransformindex` (`id`, `assetId`, `filename`, `format`, `location`, `volumeId`, `fileExists`, `inProgress`, `error`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 12, 'mainstage-image.png', NULL, '_300x300_crop_center-center_none', 1, 1, 0, 0, '2021-10-17 12:31:47', '2021-10-17 12:31:47', '2021-10-17 12:31:48', '139238d8-4a2b-44c6-94a9-5700e85defc3'),
(4, 12, 'mainstage-image.png', NULL, '_900x600_crop_center-center_90_none', 1, 1, 0, 0, '2021-10-17 12:31:50', '2021-10-17 12:31:50', '2021-10-17 12:31:51', 'cfacb0cc-7cd8-4769-b923-3b5ec65f6ef0'),
(5, 12, 'mainstage-image.png', NULL, '_1400x600_crop_center-center_90_none', 1, 1, 0, 0, '2021-10-17 19:42:58', '2021-10-17 19:42:58', '2021-10-17 19:43:00', '94098d5e-6e1f-4df4-b03d-d27272377d47');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransforms`
--

CREATE TABLE `craft_assettransforms` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `width` int UNSIGNED DEFAULT NULL,
  `height` int UNSIGNED DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categories`
--

CREATE TABLE `craft_categories` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `parentId` int DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_categories`
--

INSERT INTO `craft_categories` (`id`, `groupId`, `parentId`, `deletedWithGroup`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(7, 1, NULL, NULL, '2021-10-16 17:11:52', '2021-10-16 17:11:52', 'f0188570-9072-4fbd-a4bd-0f92b4ff7fb5'),
(25, 1, NULL, NULL, '2021-10-17 12:18:19', '2021-10-17 12:18:19', '1cc1006d-56f0-4203-8d9f-1e2a5613e750'),
(26, 1, NULL, NULL, '2021-10-17 12:18:30', '2021-10-17 12:18:30', 'fadd75d6-e5f2-4420-9afa-8d4588f7ef4a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups`
--

CREATE TABLE `craft_categorygroups` (
  `id` int NOT NULL,
  `structureId` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `defaultPlacement` enum('beginning','end') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'end',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_categorygroups`
--

INSERT INTO `craft_categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `defaultPlacement`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 3, ' Blog Categories', 'blogCategories', 'end', '2021-10-16 16:22:12', '2021-10-16 16:22:12', NULL, 'e52d832e-fdaf-47bf-a192-e1a80d146e96');

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups_sites`
--

CREATE TABLE `craft_categorygroups_sites` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `siteId` int NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text COLLATE utf8_unicode_ci,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_categorygroups_sites`
--

INSERT INTO `craft_categorygroups_sites` (`id`, `groupId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'blog-categories/{slug}', NULL, '2021-10-16 16:22:12', '2021-10-16 16:22:12', '913bb86a-2afc-42b1-b425-2c00001bcb8e');

-- --------------------------------------------------------

--
-- Table structure for table `craft_changedattributes`
--

CREATE TABLE `craft_changedattributes` (
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_changedattributes`
--

INSERT INTO `craft_changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(4, 1, 'enabled', '2021-10-17 12:47:56', 0, 1),
(4, 1, 'slug', '2021-10-16 17:12:30', 0, 1),
(4, 1, 'title', '2021-10-17 13:03:35', 0, 1),
(4, 1, 'uri', '2021-10-16 17:12:30', 0, 1),
(37, 1, 'enabled', '2021-10-17 15:06:12', 0, 1),
(37, 1, 'slug', '2021-10-17 12:46:22', 0, 1),
(37, 1, 'title', '2021-10-17 12:46:25', 0, 1),
(37, 1, 'uri', '2021-10-17 12:46:22', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `craft_changedfields`
--

CREATE TABLE `craft_changedfields` (
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `fieldId` int NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_changedfields`
--

INSERT INTO `craft_changedfields` (`elementId`, `siteId`, `fieldId`, `dateUpdated`, `propagated`, `userId`) VALUES
(4, 1, 1, '2021-10-16 17:12:19', 0, 1),
(4, 1, 2, '2021-10-17 12:19:53', 0, 1),
(4, 1, 3, '2021-10-17 15:15:41', 0, 1),
(4, 1, 4, '2021-10-18 18:23:55', 0, 1),
(27, 1, 6, '2021-10-18 18:23:55', 0, 1),
(37, 1, 1, '2021-10-17 12:46:18', 0, 1),
(37, 1, 4, '2021-10-17 12:46:47', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `craft_content`
--

CREATE TABLE `craft_content` (
  `id` int NOT NULL,
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `field_summary_qkcdwtps` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_summary_qkcdwtps`) VALUES
(1, 1, 1, NULL, '2021-10-15 18:48:42', '2021-10-15 18:48:42', 'e2d3d1f3-5c89-41fc-b719-e32a085563e0', NULL),
(2, 2, 1, NULL, '2021-10-16 14:13:55', '2021-10-16 14:13:55', 'fd8d8ff6-56bc-4c40-a9cb-1226bbd96d16', NULL),
(3, 3, 1, NULL, '2021-10-16 16:00:27', '2021-10-16 16:00:27', '92ad081d-96d0-4141-80b9-cd746170bc33', NULL),
(4, 4, 1, 'page1', '2021-10-16 17:08:23', '2021-10-18 18:23:55', 'bfbddcbf-94b5-4e3a-b5e1-9c29856ccde2', 'Title1- section'),
(5, 7, 1, 'home', '2021-10-16 17:11:52', '2021-10-17 11:23:26', 'f127becb-60eb-4af4-aaaf-3467cac68082', NULL),
(6, 8, 1, 'section1', '2021-10-16 17:12:35', '2021-10-16 17:12:35', 'f4a17f2f-6f12-40f9-b17f-e07584d12d73', 'Title1- section'),
(8, 12, 1, 'Mainstage image', '2021-10-16 19:47:40', '2021-10-17 12:30:40', '0c00cc73-fc2b-49d2-94d5-421eb58e1ee8', NULL),
(9, 17, 1, 'Tech Task 3', '2021-10-16 21:30:18', '2021-10-16 21:30:18', '8d41821e-595b-4d90-98cd-2e0fee889fe4', NULL),
(10, 21, 1, 'Placeholder image square', '2021-10-16 21:31:03', '2021-10-16 21:33:53', '236f0eaf-5220-4595-b87a-73ceb999c7bb', NULL),
(11, 23, 1, 'Placeholder image square', '2021-10-16 21:33:38', '2021-10-16 21:33:38', '8bc2e584-4384-4687-b44f-1733f02ec6f9', NULL),
(12, 24, 1, 'Placeholder image square 2x', '2021-10-16 21:34:15', '2021-10-16 21:34:15', 'f51af2a8-8a6e-424a-a086-9ef6cbf2f8cd', NULL),
(13, 25, 1, 'Blog', '2021-10-17 12:18:19', '2021-10-17 12:18:19', '826202aa-c715-4f82-8461-00f4634f7eba', NULL),
(14, 26, 1, 'About', '2021-10-17 12:18:30', '2021-10-17 15:14:28', '7573ba95-0f7a-467d-bab6-0858cff1e514', NULL),
(15, 28, 1, 'Post-1', '2021-10-17 12:19:54', '2021-10-17 12:19:54', '5c653751-5db7-4101-b581-8a26b55040f0', 'Title1- section'),
(17, 34, 1, 'Blog', '2021-10-17 12:43:47', '2021-10-17 12:43:47', '48c5f490-3e0e-4af0-b814-937b1b1b562c', 'Title1- section'),
(18, 37, 1, 'About', '2021-10-17 12:46:09', '2021-10-17 15:06:11', '2cb48c97-029c-4e46-8778-2f09c3ee7b7d', 'About'),
(19, 47, 1, 'About', '2021-10-17 12:46:52', '2021-10-17 12:46:52', '1ac0ba91-b72b-4c1d-95ac-94f3611b7027', 'About'),
(20, 50, 1, 'Blog', '2021-10-17 12:47:35', '2021-10-17 12:47:35', 'c012205d-a503-49ac-95b2-512358695a61', 'Title1- section'),
(21, 53, 1, 'About', '2021-10-17 12:47:51', '2021-10-17 12:47:51', 'fc03d29a-67b5-4156-a454-77efee168c91', 'About'),
(22, 56, 1, 'Blog', '2021-10-17 12:47:56', '2021-10-17 12:47:56', '4b162f64-5054-4213-9a2f-c755357e7ee6', 'Title1- section'),
(23, 59, 1, 'Blog', '2021-10-17 12:48:36', '2021-10-17 12:48:36', '9a29eb03-05c6-4c64-abe6-0857d70342c6', 'Title1- section'),
(24, 62, 1, 'About', '2021-10-17 12:53:52', '2021-10-17 12:53:52', '9bd8cb43-c8ed-44ba-9a2e-8da6b41f766c', 'About'),
(26, 68, 1, 'page1', '2021-10-17 13:03:35', '2021-10-17 13:03:35', 'c2baf233-d583-4e7e-b335-0c3d24d40134', 'Title1- section'),
(27, 71, 1, 'About', '2021-10-17 15:05:57', '2021-10-17 15:05:57', '6e54e498-8073-45e1-adc6-db7f80b477f6', 'About'),
(28, 74, 1, 'About', '2021-10-17 15:06:11', '2021-10-17 15:06:11', 'ab575be8-c3e9-4b77-8b4b-a9093a93a34b', 'About'),
(30, 80, 1, 'page1', '2021-10-17 15:15:41', '2021-10-17 15:15:41', '42324b19-4d90-444e-b730-25a5287cf4c6', 'Title1- section'),
(31, 83, 1, 'page1', '2021-10-17 17:52:28', '2021-10-17 17:52:28', '7087ea9b-0bef-4509-b25f-2ddb690bd9fb', 'Title1- section'),
(32, 86, 1, 'Placeholder image square', '2021-10-18 18:08:03', '2021-10-18 18:08:03', 'c6ead506-0557-460b-bf04-ac0b0565d046', NULL),
(33, 87, 1, 'Placeholder image square3', '2021-10-18 18:08:47', '2021-10-18 18:08:47', '1251bbc8-19c4-4c8a-a408-5efb11f58c80', NULL),
(35, 91, 1, 'page1', '2021-10-18 18:08:55', '2021-10-18 18:08:55', 'c2b75bfd-284c-4234-9752-41e78cff0ceb', 'Title1- section'),
(37, 97, 1, 'Placeholder image square', '2021-10-18 18:22:39', '2021-10-18 18:22:39', '93554aaa-73a3-44e6-a591-8055573b9cd3', NULL),
(38, 98, 1, 'Placeholder image square11', '2021-10-18 18:23:42', '2021-10-18 18:23:42', '6b32870f-00b3-4825-85bf-46c024780d93', NULL),
(39, 99, 1, 'page1', '2021-10-18 18:23:55', '2021-10-18 18:23:55', '1bc576c2-27e5-43e7-a815-725f44e1740c', 'Title1- section');

-- --------------------------------------------------------

--
-- Table structure for table `craft_craftidtokens`
--

CREATE TABLE `craft_craftidtokens` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `accessToken` text COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_deprecationerrors`
--

CREATE TABLE `craft_deprecationerrors` (
  `id` int NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_deprecationerrors`
--

INSERT INTO `craft_deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'validation.key', '/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/craftcms/cms/src/services/Config.php:168', '2021-10-19 06:27:05', '/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/craftcms/cms/src/services/Config.php', 168, 'The auto-generated validation key stored at `/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/storage/runtime/validation.key` has been deprecated. Copy its value to the `securityKey` config setting in `config/general.php`.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/craftcms/cms/src/services/Config.php\",\"line\":118,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"validation.key\\\", \\\"The auto-generated validation key stored at `/Users/sanaeelkhoun...\\\"\"},{\"objectClass\":\"craft\\\\services\\\\Config\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/craftcms/cms/src/services/Config.php\",\"line\":168,\"class\":\"craft\\\\services\\\\Config\",\"method\":\"getConfigSettings\",\"args\":\"\\\"general\\\"\"},{\"objectClass\":\"craft\\\\services\\\\Config\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/craftcms/cms/src/helpers/App.php\",\"line\":771,\"class\":\"craft\\\\services\\\\Config\",\"method\":\"getGeneral\",\"args\":null},{\"objectClass\":null,\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/craftcms/cms/src/config/app.web.php\",\"line\":11,\"class\":\"craft\\\\helpers\\\\App\",\"method\":\"webRequestConfig\",\"args\":null},{\"objectClass\":null,\"file\":null,\"line\":null,\"class\":null,\"method\":\"{closure}\",\"args\":null},{\"objectClass\":null,\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/yiisoft/yii2/di/Container.php\",\"line\":634,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"Closure, []\"},{\"objectClass\":\"yii\\\\di\\\\Container\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/yiisoft/yii2/BaseYii.php\",\"line\":349,\"class\":\"yii\\\\di\\\\Container\",\"method\":\"invoke\",\"args\":\"Closure, []\"},{\"objectClass\":null,\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/yiisoft/yii2/di/ServiceLocator.php\",\"line\":137,\"class\":\"yii\\\\BaseYii\",\"method\":\"createObject\",\"args\":\"Closure\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/yiisoft/yii2/base/Module.php\",\"line\":748,\"class\":\"yii\\\\di\\\\ServiceLocator\",\"method\":\"get\",\"args\":\"\\\"request\\\", true\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/craftcms/cms/src/web/Application.php\",\"line\":327,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"get\",\"args\":\"\\\"request\\\", true\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/yiisoft/yii2/web/Application.php\",\"line\":161,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"get\",\"args\":\"\\\"request\\\"\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/craftcms/cms/src/base/ApplicationTrait.php\",\"line\":1439,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"getRequest\",\"args\":null},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/craftcms/cms/src/web/Application.php\",\"line\":90,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"_preInit\",\"args\":null},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/yiisoft/yii2/base/BaseObject.php\",\"line\":109,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"init\",\"args\":null},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/yiisoft/yii2/base/Application.php\",\"line\":212,\"class\":\"yii\\\\base\\\\BaseObject\",\"method\":\"__construct\",\"args\":\"[\\\"env\\\" => \\\"dev\\\", \\\"components\\\" => [\\\"config\\\" => craft\\\\services\\\\Config, \\\"announcements\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Announcements\\\"], \\\"api\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Api\\\"], \\\"assets\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Assets\\\"], ...], \\\"id\\\" => \\\"CraftCMS--8cf5503a-2819-416b-afde-753a623d40b7\\\", \\\"name\\\" => \\\"Craft CMS\\\", ...]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":null,\"line\":null,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"__construct\",\"args\":\"[\\\"env\\\" => \\\"dev\\\", \\\"components\\\" => [\\\"config\\\" => craft\\\\services\\\\Config, \\\"announcements\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Announcements\\\"], \\\"api\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Api\\\"], \\\"assets\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Assets\\\"], ...], \\\"id\\\" => \\\"CraftCMS--8cf5503a-2819-416b-afde-753a623d40b7\\\", \\\"name\\\" => \\\"Craft CMS\\\", ...]\"},{\"objectClass\":\"ReflectionClass\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/yiisoft/yii2/di/Container.php\",\"line\":420,\"class\":\"ReflectionClass\",\"method\":\"newInstanceArgs\",\"args\":\"[[\\\"vendorPath\\\" => \\\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor\\\", \\\"env\\\" => \\\"dev\\\", \\\"components\\\" => [\\\"config\\\" => craft\\\\services\\\\Config, \\\"announcements\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Announcements\\\"], \\\"api\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Api\\\"], \\\"assets\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Assets\\\"], ...], \\\"id\\\" => \\\"CraftCMS--8cf5503a-2819-416b-afde-753a623d40b7\\\", ...]]\"},{\"objectClass\":\"yii\\\\di\\\\Container\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/yiisoft/yii2/di/Container.php\",\"line\":171,\"class\":\"yii\\\\di\\\\Container\",\"method\":\"build\",\"args\":\"\\\"craft\\\\web\\\\Application\\\", [], [\\\"vendorPath\\\" => \\\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor\\\", \\\"env\\\" => \\\"dev\\\", \\\"components\\\" => [\\\"config\\\" => craft\\\\services\\\\Config, \\\"announcements\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Announcements\\\"], \\\"api\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Api\\\"], \\\"assets\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Assets\\\"], ...], \\\"id\\\" => \\\"CraftCMS--8cf5503a-2819-416b-afde-753a623d40b7\\\", ...]\"},{\"objectClass\":\"yii\\\\di\\\\Container\",\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/yiisoft/yii2/BaseYii.php\",\"line\":365,\"class\":\"yii\\\\di\\\\Container\",\"method\":\"get\",\"args\":\"\\\"craft\\\\web\\\\Application\\\", [], [\\\"vendorPath\\\" => \\\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor\\\", \\\"env\\\" => \\\"dev\\\", \\\"components\\\" => [\\\"config\\\" => craft\\\\services\\\\Config, \\\"announcements\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Announcements\\\"], \\\"api\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Api\\\"], \\\"assets\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Assets\\\"], ...], \\\"id\\\" => \\\"CraftCMS--8cf5503a-2819-416b-afde-753a623d40b7\\\", ...]\"},{\"objectClass\":null,\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/craftcms/cms/bootstrap/bootstrap.php\",\"line\":242,\"class\":\"yii\\\\BaseYii\",\"method\":\"createObject\",\"args\":\"[\\\"vendorPath\\\" => \\\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor\\\", \\\"env\\\" => \\\"dev\\\", \\\"components\\\" => [\\\"config\\\" => craft\\\\services\\\\Config, \\\"announcements\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Announcements\\\"], \\\"api\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Api\\\"], \\\"assets\\\" => [\\\"class\\\" => \\\"craft\\\\services\\\\Assets\\\"], ...], \\\"id\\\" => \\\"CraftCMS--8cf5503a-2819-416b-afde-753a623d40b7\\\", ...]\"},{\"objectClass\":null,\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/craftcms/cms/bootstrap/web.php\",\"line\":51,\"class\":null,\"method\":\"require\",\"args\":\"\\\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/craftcm...\\\"\"},{\"objectClass\":null,\"file\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/web/index.php\",\"line\":25,\"class\":null,\"method\":\"require\",\"args\":\"\\\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/vendor/craftcm...\\\"\"}]', '2021-10-19 06:27:05', '2021-10-19 06:27:05', '3f58cb37-1c28-4e9f-84f8-fafafee86344');

-- --------------------------------------------------------

--
-- Table structure for table `craft_drafts`
--

CREATE TABLE `craft_drafts` (
  `id` int NOT NULL,
  `sourceId` int DEFAULT NULL,
  `creatorId` int DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_drafts`
--

INSERT INTO `craft_drafts` (`id`, `sourceId`, `creatorId`, `provisional`, `name`, `notes`, `trackChanges`, `dateLastMerged`, `saved`) VALUES
(1, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0),
(2, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `craft_elementindexsettings`
--

CREATE TABLE `craft_elementindexsettings` (
  `id` int NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements`
--

CREATE TABLE `craft_elements` (
  `id` int NOT NULL,
  `canonicalId` int DEFAULT NULL,
  `draftId` int DEFAULT NULL,
  `revisionId` int DEFAULT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2021-10-15 18:48:42', '2021-10-15 18:48:42', NULL, NULL, 'f2f3a350-c073-4cfe-b65f-b565eace2d85'),
(2, NULL, 1, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-16 14:13:55', '2021-10-16 14:13:55', NULL, NULL, '85b0032e-5143-46bf-a5f0-30090ceb9805'),
(3, NULL, 2, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-16 16:00:27', '2021-10-16 16:00:27', NULL, NULL, '8182172d-d7ed-4034-9c40-79e20a9e2211'),
(4, NULL, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-16 17:08:23', '2021-10-18 18:23:55', NULL, NULL, 'd1490c3e-c609-4bbe-9491-8b2928a3fa55'),
(5, NULL, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-16 17:11:02', '2021-10-16 17:11:02', NULL, '2021-10-16 17:11:12', 'eaae04d6-cf98-4c87-b205-ba7b926bde2d'),
(6, NULL, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-16 17:11:12', '2021-10-18 18:23:55', NULL, NULL, 'd5335ed3-c708-43fc-8a0f-4a30ca16e139'),
(7, NULL, NULL, NULL, 3, 'craft\\elements\\Category', 1, 0, '2021-10-16 17:11:52', '2021-10-17 11:23:26', NULL, NULL, 'b066be31-47bc-4c79-baba-f9ec370b2285'),
(8, 4, NULL, 1, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-16 17:12:35', '2021-10-16 17:12:35', NULL, NULL, 'a9b01fe3-5217-40bb-91d0-86713fea995f'),
(9, 6, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-16 17:12:35', '2021-10-16 17:12:35', NULL, NULL, 'cb842f68-d44c-4dab-a5ed-5fd2f916c830'),
(12, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2021-10-16 19:47:40', '2021-10-17 12:30:40', NULL, NULL, '3c3ec080-5347-44d5-b90c-11c3fc7588c7'),
(13, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-16 20:57:16', '2021-10-16 20:57:16', NULL, '2021-10-16 20:57:30', '386eed3f-e010-42f6-bd48-1b7b27688d6b'),
(14, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-16 20:57:29', '2021-10-16 20:57:29', NULL, '2021-10-16 20:57:57', '20b28f08-a4dd-4923-b3ee-718c6ed3cedb'),
(16, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-16 21:28:26', '2021-10-16 21:28:26', NULL, '2021-10-16 21:30:19', '17b54a94-a7ec-4618-b3f7-cb16a2d443bd'),
(17, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2021-10-16 21:30:18', '2021-10-16 21:30:18', NULL, '2021-10-17 12:17:46', '82f1b0da-a92a-4d25-b74d-72295fa10b8c'),
(18, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-16 21:30:19', '2021-10-16 21:30:19', NULL, '2021-10-16 21:30:27', '534fd700-e0a8-41bb-99e4-4e2476849062'),
(19, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-16 21:30:27', '2021-10-16 21:30:27', NULL, '2021-10-16 21:30:35', '5702e444-4ad5-4e9d-82ea-15ca34b8241c'),
(20, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-16 21:30:35', '2021-10-16 21:30:35', NULL, '2021-10-16 21:31:06', '24f0a00b-529c-4bd9-8a39-c2445b03fe8a'),
(21, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2021-10-16 21:31:03', '2021-10-16 21:33:53', NULL, NULL, '6708c84f-aaf3-4704-91cb-f3f97ba84baa'),
(22, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-16 21:31:06', '2021-10-16 21:31:06', NULL, '2021-10-16 21:31:47', '69f33166-8dd9-451a-869a-e3a592883bb7'),
(23, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2021-10-16 21:33:38', '2021-10-16 21:33:38', NULL, '2021-10-16 21:33:53', '2af604bf-8571-4ad5-89c5-8f45f3d5a6e7'),
(24, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2021-10-16 21:34:15', '2021-10-16 21:34:15', NULL, NULL, 'a5f32059-d77b-46d6-a564-ae3e71ed4297'),
(25, NULL, NULL, NULL, 3, 'craft\\elements\\Category', 1, 0, '2021-10-17 12:18:19', '2021-10-17 12:18:19', NULL, NULL, '5d4d9dd5-bf2a-4ee8-a134-83dd4895ad83'),
(26, NULL, NULL, NULL, 3, 'craft\\elements\\Category', 0, 0, '2021-10-17 12:18:30', '2021-10-17 15:14:28', NULL, NULL, 'e3b9e6f9-0998-40e8-bafa-c3d05cd2641c'),
(27, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:19:53', '2021-10-18 18:23:55', NULL, NULL, 'b3455293-d8fe-45d4-be58-6c1a44136a9a'),
(28, 4, NULL, 2, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-17 12:19:53', '2021-10-17 12:19:54', NULL, NULL, 'e034f3b5-0304-4e91-8987-f13d1e187463'),
(29, 6, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:19:54', '2021-10-17 12:19:54', NULL, NULL, 'fe5a4d28-398e-425e-84ef-ed85b5508492'),
(30, 27, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:19:54', '2021-10-17 12:19:54', NULL, NULL, '486565a1-6677-4800-b759-fa69e930f166'),
(34, 4, NULL, 3, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-17 12:43:47', '2021-10-17 12:43:47', NULL, NULL, 'e5ebf462-db8b-4c82-9b6a-9f7930671d22'),
(35, 6, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:43:47', '2021-10-17 12:43:47', NULL, NULL, 'de3f454e-110b-4ab6-8513-b2796fc3af02'),
(36, 27, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:43:47', '2021-10-17 12:43:47', NULL, NULL, '9870bb94-7756-416a-8564-b4d9d9f95667'),
(37, NULL, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-17 12:46:09', '2021-10-17 15:06:11', NULL, '2021-10-17 15:13:09', '92df9c88-4620-4ea2-95f8-0825da179457'),
(38, NULL, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:46:26', '2021-10-17 12:46:26', NULL, '2021-10-17 12:46:31', '03c298fc-77e0-42cc-88ab-a51543215353'),
(39, NULL, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:46:31', '2021-10-17 12:46:31', NULL, '2021-10-17 12:46:32', '875b6a32-c02f-4487-83ad-39983133c750'),
(40, NULL, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:46:32', '2021-10-17 12:46:32', NULL, '2021-10-17 12:46:35', 'e39ea80e-f06d-464d-a7a8-e8e7297f7fc8'),
(41, NULL, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:46:35', '2021-10-17 12:46:35', NULL, '2021-10-17 12:46:37', '0ade5d8e-d15d-4565-a9f3-7d2b42c93dda'),
(42, NULL, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:46:37', '2021-10-17 12:46:37', NULL, '2021-10-17 12:46:40', 'f46c9425-05d7-4b97-86c7-d24d49390134'),
(43, NULL, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:46:40', '2021-10-17 12:46:40', NULL, '2021-10-17 12:46:47', '3176f741-4fab-4c0e-a410-b976f3de4134'),
(44, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:46:40', '2021-10-17 12:46:40', NULL, '2021-10-17 12:46:47', '7e46549d-9b22-490e-b575-39ef15a7763f'),
(45, NULL, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:46:46', '2021-10-17 12:46:46', NULL, '2021-10-17 15:13:09', 'e5bb2cf9-6dff-4d1d-823e-2e9bcd7bd0e6'),
(46, NULL, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:46:46', '2021-10-17 12:46:46', NULL, '2021-10-17 15:13:09', 'ebf17863-56f3-45f5-95e9-235df91da3ab'),
(47, 37, NULL, 4, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-17 12:46:52', '2021-10-17 12:46:52', NULL, '2021-10-17 15:13:09', '31148148-f002-461e-bedd-31dfd764a63f'),
(48, 45, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:46:52', '2021-10-17 12:46:52', NULL, NULL, '9711c98b-8a11-4af6-8bd0-00d0184a9b8a'),
(49, 46, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:46:52', '2021-10-17 12:46:52', NULL, NULL, '38908290-1ea3-45b1-8716-dd54c844a342'),
(50, 4, NULL, 5, 1, 'craft\\elements\\Entry', 0, 0, '2021-10-17 12:47:35', '2021-10-17 12:47:35', NULL, NULL, '23a04f9d-e53f-402f-b776-5467a708c6c2'),
(51, 6, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:47:35', '2021-10-17 12:47:35', NULL, NULL, '7292f798-2fab-454f-9b63-2965f59d185c'),
(52, 27, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:47:35', '2021-10-17 12:47:35', NULL, NULL, '0383dba9-cd83-4947-b51c-fd7a82c543df'),
(53, 37, NULL, 6, 1, 'craft\\elements\\Entry', 0, 0, '2021-10-17 12:47:51', '2021-10-17 12:47:51', NULL, '2021-10-17 15:13:09', '472d9f35-d7bc-4960-931e-56060324b2ae'),
(54, 45, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:47:51', '2021-10-17 12:47:51', NULL, NULL, '9a494dbf-2aa2-4532-b55c-0e1626725e53'),
(55, 46, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:47:51', '2021-10-17 12:47:51', NULL, NULL, '8130da20-05d4-43b9-b843-bd8f21be79f9'),
(56, 4, NULL, 7, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-17 12:47:56', '2021-10-17 12:47:56', NULL, NULL, '30b5561b-9175-4e8b-b5cc-5e4e8256cc13'),
(57, 6, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:47:56', '2021-10-17 12:47:56', NULL, NULL, '51bc679a-65db-4ba6-9165-3d5b9354f272'),
(58, 27, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:47:56', '2021-10-17 12:47:56', NULL, NULL, '3b82d27a-33fe-4afd-a4f4-ed35c6458f0c'),
(59, 4, NULL, 8, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-17 12:48:36', '2021-10-17 12:48:36', NULL, NULL, 'f0bd3ae7-9923-40e7-aeb5-e95a6e599dcb'),
(60, 6, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:48:36', '2021-10-17 12:48:36', NULL, NULL, '541dcc35-92e3-4ac5-a073-022e071c5c9a'),
(61, 27, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:48:36', '2021-10-17 12:48:36', NULL, NULL, '3ce968c7-22bb-41f8-90b5-9f5f3eefb1c6'),
(62, 37, NULL, 9, 1, 'craft\\elements\\Entry', 0, 0, '2021-10-17 12:53:52', '2021-10-17 12:53:52', NULL, '2021-10-17 15:13:09', 'd6703792-1edd-45b4-8dc7-eaa8056695c3'),
(63, 45, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:53:52', '2021-10-17 12:53:52', NULL, NULL, 'a7ada3ca-0c1c-4454-b2d6-6bf8cbea1e9a'),
(64, 46, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 12:53:52', '2021-10-17 12:53:52', NULL, NULL, '4a1a98ff-b54c-4ed8-b72d-969241469481'),
(68, 4, NULL, 10, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-17 13:03:35', '2021-10-17 13:03:35', NULL, NULL, '00bfcf4f-ad5a-49cc-a494-5ab0d689e026'),
(69, 6, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 13:03:35', '2021-10-17 13:03:35', NULL, NULL, 'f2f0529a-f964-479e-aa36-dd3efa7c6276'),
(70, 27, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 13:03:35', '2021-10-17 13:03:35', NULL, NULL, 'f5800180-c402-4d80-9425-6f948d2815cc'),
(71, 37, NULL, 11, 1, 'craft\\elements\\Entry', 0, 0, '2021-10-17 15:05:57', '2021-10-17 15:05:57', NULL, '2021-10-17 15:13:09', 'a4e13b1d-a536-4a73-b0f6-1de54be1eece'),
(72, 45, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 15:05:57', '2021-10-17 15:05:57', NULL, NULL, 'f0de834c-70ba-4165-a696-5331bdab9ea5'),
(73, 46, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 15:05:57', '2021-10-17 15:05:57', NULL, NULL, '2780ee2c-0858-4992-9c02-7df0f707e53c'),
(74, 37, NULL, 12, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-17 15:06:11', '2021-10-17 15:06:11', NULL, '2021-10-17 15:13:09', 'db74759e-9d4e-4f93-964f-19664c785024'),
(75, 45, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 15:06:11', '2021-10-17 15:06:11', NULL, NULL, '7d9b0e82-6b40-4854-8790-e7687e6e65ef'),
(76, 46, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 15:06:11', '2021-10-17 15:06:11', NULL, NULL, 'ecf4d4f5-ec79-4d50-b4e2-1d6e49703097'),
(80, 4, NULL, 13, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-17 15:15:41', '2021-10-17 15:15:41', NULL, NULL, '883fb88a-fff4-4e80-8cf9-8e89405270c7'),
(81, 6, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 15:15:41', '2021-10-17 15:15:41', NULL, NULL, 'a923eb0f-95a3-4232-b68c-c9551c0a776d'),
(82, 27, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 15:15:41', '2021-10-17 15:15:41', NULL, NULL, '8f7e69cd-3229-4921-a897-3c49bad1825e'),
(83, 4, NULL, 14, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-17 17:52:28', '2021-10-17 17:52:28', NULL, NULL, '37a213d8-de40-4e8d-853f-a5824fbf5af7'),
(84, 6, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 17:52:28', '2021-10-17 17:52:28', NULL, NULL, '5eccca25-e337-42b8-b5d9-ed1597807ffd'),
(85, 27, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-17 17:52:28', '2021-10-17 17:52:28', NULL, NULL, '68d34e7d-787e-4d63-b893-56dccd811547'),
(86, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2021-10-18 18:08:03', '2021-10-18 18:08:03', NULL, '2021-10-18 18:08:10', '596c465e-edac-4cfe-87ca-7ff793c3d8dd'),
(87, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2021-10-18 18:08:47', '2021-10-18 18:08:47', NULL, NULL, '13f2dc15-0aeb-449a-b994-7ea90229b9d1'),
(91, 4, NULL, 15, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-18 18:08:54', '2021-10-18 18:08:55', NULL, NULL, 'bd8377f8-74ea-4e00-a23c-9695f9dc5f79'),
(92, 6, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-18 18:08:55', '2021-10-18 18:08:55', NULL, NULL, '5d5bfe94-6aa8-4576-ac5a-caf78f668e7c'),
(93, 27, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-18 18:08:55', '2021-10-18 18:08:55', NULL, NULL, '55b2f98a-bc90-4d2d-bcfe-aa3f71f54a31'),
(97, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2021-10-18 18:22:39', '2021-10-18 18:22:39', NULL, '2021-10-18 18:22:43', 'd15e6b27-ce94-4484-97d8-a77c093637a9'),
(98, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2021-10-18 18:23:42', '2021-10-18 18:23:42', NULL, NULL, '57c363a2-7a56-4453-a61f-b3c3def3462a'),
(99, 4, NULL, 16, 1, 'craft\\elements\\Entry', 1, 0, '2021-10-18 18:23:55', '2021-10-18 18:23:55', NULL, NULL, 'acc0b6b5-4093-4618-8d3b-a664d7a206df'),
(100, 6, NULL, NULL, 4, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-18 18:23:55', '2021-10-18 18:23:55', NULL, NULL, '98c75841-ae8d-4d5e-9c71-c7365aa4a55a'),
(101, 27, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2021-10-18 18:23:56', '2021-10-18 18:23:56', NULL, NULL, '594105ca-d224-448f-8ac2-e7cc260c1a4f');

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements_sites`
--

CREATE TABLE `craft_elements_sites` (
  `id` int NOT NULL,
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elements_sites`
--

INSERT INTO `craft_elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2021-10-15 18:48:42', '2021-10-15 18:48:42', 'b034157b-1bf3-4136-9fa4-49ce118a8270'),
(2, 2, 1, '__temp_latxtjclpvkdpvnpaklqocmdujdyunfknaeh', 'blog/__temp_latxtjclpvkdpvnpaklqocmdujdyunfknaeh', 1, '2021-10-16 14:13:55', '2021-10-16 14:13:55', 'fe6638f9-e3fd-4b63-9056-5bc150a2788f'),
(3, 3, 1, '__temp_svdfnbqyqpxbmaykxqrvphvmjyihsqfkadwx', 'blog/__temp_svdfnbqyqpxbmaykxqrvphvmjyihsqfkadwx', 1, '2021-10-16 16:00:27', '2021-10-16 16:00:27', '70a365eb-91d4-4823-b3d7-4a6a3dce38c3'),
(4, 4, 1, 'section1', 'blog/section1', 1, '2021-10-16 17:08:23', '2021-10-16 17:12:30', '7e3f863e-2076-48b1-a00b-7fc21534c243'),
(5, 5, 1, NULL, NULL, 1, '2021-10-16 17:11:02', '2021-10-16 17:11:02', '824ca522-aa41-4e2c-bc03-3399f2b67b68'),
(6, 6, 1, NULL, NULL, 1, '2021-10-16 17:11:12', '2021-10-16 17:11:12', 'c11d0234-34c3-46da-9244-8de483de1941'),
(7, 7, 1, 'section1', 'blog-categories/section1', 1, '2021-10-16 17:11:52', '2021-10-16 17:11:53', 'ee5797f0-f72e-4c97-94c6-037a36faa902'),
(8, 8, 1, 'section1', 'blog/section1', 1, '2021-10-16 17:12:35', '2021-10-16 17:12:35', '0c1b37b7-f107-4823-8071-26fbe035049f'),
(9, 9, 1, NULL, NULL, 1, '2021-10-16 17:12:35', '2021-10-16 17:12:35', '1a0d8ed8-ec63-4c71-8439-2aa7225edb4d'),
(12, 12, 1, NULL, NULL, 1, '2021-10-16 19:47:40', '2021-10-16 19:47:40', '7303b3ee-b829-43cd-b0c8-d68ecab8c373'),
(13, 13, 1, NULL, NULL, 1, '2021-10-16 20:57:16', '2021-10-16 20:57:16', '7377b55c-0f1b-48e6-b6f4-94775a695845'),
(14, 14, 1, NULL, NULL, 1, '2021-10-16 20:57:29', '2021-10-16 20:57:29', '64f56ac5-cb58-4720-bc37-9ee27a9175d0'),
(16, 16, 1, NULL, NULL, 1, '2021-10-16 21:28:26', '2021-10-16 21:28:26', 'd9f7fd9a-6ed9-4220-8dd0-a04dcc8a1179'),
(17, 17, 1, NULL, NULL, 1, '2021-10-16 21:30:18', '2021-10-16 21:30:18', '20f585f1-cfe6-4b2f-9c16-cc39ba793743'),
(18, 18, 1, NULL, NULL, 1, '2021-10-16 21:30:19', '2021-10-16 21:30:19', 'b296b9c1-afa5-4b5a-b208-6b18676f0a72'),
(19, 19, 1, NULL, NULL, 1, '2021-10-16 21:30:27', '2021-10-16 21:30:27', '72b2ca0a-2d9f-4c52-a236-276bec1542db'),
(20, 20, 1, NULL, NULL, 1, '2021-10-16 21:30:35', '2021-10-16 21:30:35', '2efd468c-5a55-417f-9e00-e51a5be80319'),
(21, 21, 1, NULL, NULL, 1, '2021-10-16 21:31:03', '2021-10-16 21:31:03', 'cde7c485-54ec-4b93-8042-422b1f2496b2'),
(22, 22, 1, NULL, NULL, 1, '2021-10-16 21:31:06', '2021-10-16 21:31:06', '124af085-74a0-433c-af56-3edd9f708e17'),
(23, 23, 1, NULL, NULL, 1, '2021-10-16 21:33:38', '2021-10-16 21:33:38', 'ec483109-db96-4135-ad02-abcf5e89162e'),
(24, 24, 1, NULL, NULL, 1, '2021-10-16 21:34:15', '2021-10-16 21:34:15', '840259cc-40eb-40b4-a011-751fed2e016d'),
(25, 25, 1, 'blog', 'blog-categories/blog', 1, '2021-10-17 12:18:19', '2021-10-17 12:18:20', '87af7697-4ba1-4eba-9dce-150d35923bec'),
(26, 26, 1, 'about', 'blog-categories/about', 1, '2021-10-17 12:18:30', '2021-10-17 12:18:31', '1ccf0ae3-02b6-4404-b38e-92d1c6bb5160'),
(27, 27, 1, NULL, NULL, 1, '2021-10-17 12:19:53', '2021-10-17 12:19:53', '06bf851a-a6eb-4553-8a0a-23314765fcf3'),
(28, 28, 1, 'section1', 'blog/section1', 1, '2021-10-17 12:19:54', '2021-10-17 12:19:54', 'cf4a7c5b-9f4c-455a-8d5a-d4d1c5b73b23'),
(29, 29, 1, NULL, NULL, 1, '2021-10-17 12:19:54', '2021-10-17 12:19:54', '02ef00f0-2f8d-49c8-8f68-d0fc0d36f879'),
(30, 30, 1, NULL, NULL, 1, '2021-10-17 12:19:54', '2021-10-17 12:19:54', '4eb89b2a-1eeb-47a6-8502-db774178a0a0'),
(34, 34, 1, 'section1', 'blog/section1', 1, '2021-10-17 12:43:47', '2021-10-17 12:43:47', '4b2a3b80-990b-4aab-a6a8-68e358cea1fd'),
(35, 35, 1, NULL, NULL, 1, '2021-10-17 12:43:47', '2021-10-17 12:43:47', '95b5a2ce-a64f-49ff-a7c6-92151b9b4a2e'),
(36, 36, 1, NULL, NULL, 1, '2021-10-17 12:43:47', '2021-10-17 12:43:47', 'b2c6fc83-ed84-4ccd-a70b-e50ad8471b26'),
(37, 37, 1, 'about', 'blog/about', 1, '2021-10-17 12:46:09', '2021-10-17 12:46:22', '4ca75c18-0e09-4eb8-b202-c7119efd86f7'),
(38, 38, 1, NULL, NULL, 1, '2021-10-17 12:46:26', '2021-10-17 12:46:26', '39975991-3698-4255-b074-f40f01fea49e'),
(39, 39, 1, NULL, NULL, 1, '2021-10-17 12:46:31', '2021-10-17 12:46:31', '6d5c2937-fad3-4621-b11b-781631105ece'),
(40, 40, 1, NULL, NULL, 1, '2021-10-17 12:46:32', '2021-10-17 12:46:32', 'f46379b0-7e61-483d-b257-24a4d2c85bbc'),
(41, 41, 1, NULL, NULL, 1, '2021-10-17 12:46:35', '2021-10-17 12:46:35', 'c4e2c7ef-05b6-4050-9a86-6132e1975de8'),
(42, 42, 1, NULL, NULL, 1, '2021-10-17 12:46:37', '2021-10-17 12:46:37', '2e1a3943-4a83-4cd2-9b64-364533d2fb1e'),
(43, 43, 1, NULL, NULL, 1, '2021-10-17 12:46:40', '2021-10-17 12:46:40', 'a060bd43-c32d-4188-96e5-196f8e8901fe'),
(44, 44, 1, NULL, NULL, 1, '2021-10-17 12:46:40', '2021-10-17 12:46:40', '27b39921-d349-48a3-83da-e66c722d9e05'),
(45, 45, 1, NULL, NULL, 1, '2021-10-17 12:46:46', '2021-10-17 12:46:46', '576e5ba2-496f-40a0-b9f2-c4431414539b'),
(46, 46, 1, NULL, NULL, 1, '2021-10-17 12:46:46', '2021-10-17 12:46:46', 'acd700f0-affa-418c-bf1a-1021bc6c37e2'),
(47, 47, 1, 'about', 'blog/about', 1, '2021-10-17 12:46:52', '2021-10-17 12:46:52', '96d78335-0b8a-4414-9178-dfc2274f9392'),
(48, 48, 1, NULL, NULL, 1, '2021-10-17 12:46:52', '2021-10-17 12:46:52', 'efe05bf9-85c1-4d49-b51a-6bfa844b0eae'),
(49, 49, 1, NULL, NULL, 1, '2021-10-17 12:46:52', '2021-10-17 12:46:52', 'b0d783d9-1ac8-4ce6-8c1d-1330fa5fc9d1'),
(50, 50, 1, 'section1', 'blog/section1', 1, '2021-10-17 12:47:35', '2021-10-17 12:47:35', '92c9c3b2-b438-46a6-a9eb-9e48d837717d'),
(51, 51, 1, NULL, NULL, 1, '2021-10-17 12:47:35', '2021-10-17 12:47:35', 'c286078b-5749-4ff3-b546-97b24722bfd7'),
(52, 52, 1, NULL, NULL, 1, '2021-10-17 12:47:35', '2021-10-17 12:47:35', '7c3b137f-6ea8-4c9c-a858-2f7ee6d70307'),
(53, 53, 1, 'about', 'blog/about', 1, '2021-10-17 12:47:51', '2021-10-17 12:47:51', '0f9e7fe3-2b93-4da8-a1a1-e74c290ade05'),
(54, 54, 1, NULL, NULL, 1, '2021-10-17 12:47:51', '2021-10-17 12:47:51', '73112750-3a77-4c96-a0dc-2f5ce9ad500a'),
(55, 55, 1, NULL, NULL, 1, '2021-10-17 12:47:51', '2021-10-17 12:47:51', '211f5d86-bf85-40eb-81d6-ebe5af9fd4de'),
(56, 56, 1, 'section1', 'blog/section1', 1, '2021-10-17 12:47:56', '2021-10-17 12:47:56', '94af7cbf-00f0-4dc9-9bea-192b6679cafd'),
(57, 57, 1, NULL, NULL, 1, '2021-10-17 12:47:56', '2021-10-17 12:47:56', '246e71d4-ca5e-45af-99b7-0248a2af8199'),
(58, 58, 1, NULL, NULL, 1, '2021-10-17 12:47:56', '2021-10-17 12:47:56', '63615f82-66c9-45cd-bc59-fbc70bb81aa1'),
(59, 59, 1, 'section1', 'blog/section1', 1, '2021-10-17 12:48:36', '2021-10-17 12:48:36', '68c09380-a7ac-4bc2-89fd-4ac2c383d702'),
(60, 60, 1, NULL, NULL, 1, '2021-10-17 12:48:36', '2021-10-17 12:48:36', '06cdd4f1-96a6-4398-a43f-32bf1f5d8054'),
(61, 61, 1, NULL, NULL, 1, '2021-10-17 12:48:36', '2021-10-17 12:48:36', 'dc8c4d5d-51b5-4f04-986e-9106ebf02004'),
(62, 62, 1, 'about', 'blog/about', 1, '2021-10-17 12:53:52', '2021-10-17 12:53:52', '8500f853-9f7e-4ee8-bc93-aad1e1fc7e94'),
(63, 63, 1, NULL, NULL, 1, '2021-10-17 12:53:52', '2021-10-17 12:53:52', '80374cd5-38c3-47ff-8a4d-a426f355d076'),
(64, 64, 1, NULL, NULL, 1, '2021-10-17 12:53:52', '2021-10-17 12:53:52', 'd22a4cf2-f392-44dc-863f-d414cdc5ee9b'),
(68, 68, 1, 'section1', 'blog/section1', 1, '2021-10-17 13:03:35', '2021-10-17 13:03:35', '69dec167-485f-4d60-bb0d-c8f5a0bd895a'),
(69, 69, 1, NULL, NULL, 1, '2021-10-17 13:03:35', '2021-10-17 13:03:35', 'af5a07fe-6518-4247-8366-b65328de79d9'),
(70, 70, 1, NULL, NULL, 1, '2021-10-17 13:03:35', '2021-10-17 13:03:35', '76f2f653-0791-4a9c-a304-d1c1b05b7ff3'),
(71, 71, 1, 'about', 'blog/about', 1, '2021-10-17 15:05:57', '2021-10-17 15:05:57', '2e18a43f-f5c2-4a5d-8dcf-05b4967bf0ef'),
(72, 72, 1, NULL, NULL, 1, '2021-10-17 15:05:57', '2021-10-17 15:05:57', 'e105da78-77e1-4974-863c-9d4bdb60b42a'),
(73, 73, 1, NULL, NULL, 1, '2021-10-17 15:05:57', '2021-10-17 15:05:57', '277fa0f5-8ce5-42c5-b43b-dbcf65761e03'),
(74, 74, 1, 'about', 'blog/about', 1, '2021-10-17 15:06:11', '2021-10-17 15:06:11', 'cceeabf6-ba87-403a-aa22-295a31dbca78'),
(75, 75, 1, NULL, NULL, 1, '2021-10-17 15:06:11', '2021-10-17 15:06:11', 'cf4e7888-d133-44dd-ada1-4f4e530eac0a'),
(76, 76, 1, NULL, NULL, 1, '2021-10-17 15:06:11', '2021-10-17 15:06:11', '1d4fc13f-ae3c-4b78-b863-34ae8f6fc3e4'),
(80, 80, 1, 'section1', 'blog/section1', 1, '2021-10-17 15:15:41', '2021-10-17 15:15:41', 'c9f16b8d-4f2d-4005-9d9a-4e36ab2d4811'),
(81, 81, 1, NULL, NULL, 1, '2021-10-17 15:15:41', '2021-10-17 15:15:41', '358d90ba-e8d1-4e65-83fa-43844e2b30c8'),
(82, 82, 1, NULL, NULL, 1, '2021-10-17 15:15:41', '2021-10-17 15:15:41', '13f51e71-553b-4b38-b7eb-6cf36cf9818c'),
(83, 83, 1, 'section1', 'blog/section1', 1, '2021-10-17 17:52:28', '2021-10-17 17:52:28', '55f9ba41-71aa-4352-909a-33df7a737447'),
(84, 84, 1, NULL, NULL, 1, '2021-10-17 17:52:28', '2021-10-17 17:52:28', '4b90dcff-fa2a-49e8-8986-42ce4a9c9b37'),
(85, 85, 1, NULL, NULL, 1, '2021-10-17 17:52:28', '2021-10-17 17:52:28', '60791005-2e6b-44e4-8405-a0684bf9a220'),
(86, 86, 1, NULL, NULL, 1, '2021-10-18 18:08:03', '2021-10-18 18:08:03', '8aa44b71-65f4-4564-af4a-24a3f1081609'),
(87, 87, 1, NULL, NULL, 1, '2021-10-18 18:08:47', '2021-10-18 18:08:47', '960e5e32-af79-4aac-bfd2-b3e1f72313ad'),
(91, 91, 1, 'section1', 'blog/section1', 1, '2021-10-18 18:08:55', '2021-10-18 18:08:55', '9c68ca74-2de2-4628-89bf-20f4d3913798'),
(92, 92, 1, NULL, NULL, 1, '2021-10-18 18:08:55', '2021-10-18 18:08:55', 'fa22d49b-c211-401d-a19b-73e31683111f'),
(93, 93, 1, NULL, NULL, 1, '2021-10-18 18:08:55', '2021-10-18 18:08:55', '2cfbcc3e-ba36-43b9-99b7-1df808200851'),
(97, 97, 1, NULL, NULL, 1, '2021-10-18 18:22:39', '2021-10-18 18:22:39', 'f0456408-b364-44fc-9a68-762187841490'),
(98, 98, 1, NULL, NULL, 1, '2021-10-18 18:23:42', '2021-10-18 18:23:42', '0cd6d5db-d0dc-497e-844a-6ca34559b064'),
(99, 99, 1, 'section1', 'blog/section1', 1, '2021-10-18 18:23:55', '2021-10-18 18:23:55', '871487bb-a2cb-4dd1-b372-ee39a5cc265b'),
(100, 100, 1, NULL, NULL, 1, '2021-10-18 18:23:55', '2021-10-18 18:23:55', 'b8f71e23-6a67-4b3a-851c-eab90b95b41b'),
(101, 101, 1, NULL, NULL, 1, '2021-10-18 18:23:56', '2021-10-18 18:23:56', '623c8e58-d407-4c9c-a309-b0587b7adc0c');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entries`
--

CREATE TABLE `craft_entries` (
  `id` int NOT NULL,
  `sectionId` int NOT NULL,
  `parentId` int DEFAULT NULL,
  `typeId` int NOT NULL,
  `authorId` int DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, 1, 1, '2021-10-16 14:13:00', NULL, NULL, '2021-10-16 14:13:55', '2021-10-16 14:13:55', '16ab265b-87d2-4099-ab3d-15fbace0b6a3'),
(3, 1, NULL, 1, 1, '2021-10-16 16:00:00', NULL, NULL, '2021-10-16 16:00:27', '2021-10-16 16:00:27', '90f86cb0-c6f6-4383-acaa-b0b9999ed88b'),
(4, 1, NULL, 1, 1, '2021-10-16 17:08:00', NULL, NULL, '2021-10-16 17:08:23', '2021-10-16 17:08:23', '53c71b98-344b-46be-91f8-564779204e13'),
(8, 1, NULL, 1, 1, '2021-10-16 17:08:00', NULL, NULL, '2021-10-16 17:12:35', '2021-10-16 17:12:35', '52c08a28-e07a-442d-b331-fa98dcac325f'),
(28, 1, NULL, 1, 1, '2021-10-16 17:08:00', NULL, NULL, '2021-10-17 12:19:54', '2021-10-17 12:19:54', 'b25234bd-0a11-4295-80c3-f419408eeaae'),
(34, 1, NULL, 1, 1, '2021-10-16 17:08:00', NULL, NULL, '2021-10-17 12:43:47', '2021-10-17 12:43:47', '2d45983b-91eb-41f3-8b1d-73a94388a96f'),
(37, 1, NULL, 1, 1, '2021-10-17 12:46:00', NULL, 0, '2021-10-17 12:46:09', '2021-10-17 12:46:09', '80e7d0b4-5004-4000-9717-26c10a7b07b6'),
(47, 1, NULL, 1, 1, '2021-10-17 12:46:00', NULL, NULL, '2021-10-17 12:46:52', '2021-10-17 12:46:52', 'd3fe6d2e-be57-487d-a9f0-29653a9cb6fb'),
(50, 1, NULL, 1, 1, '2021-10-16 17:08:00', NULL, NULL, '2021-10-17 12:47:35', '2021-10-17 12:47:35', '5fcda115-5b8d-4bd2-a5af-0359601c056f'),
(53, 1, NULL, 1, 1, '2021-10-17 12:46:00', NULL, NULL, '2021-10-17 12:47:51', '2021-10-17 12:47:51', 'bd10bca2-5524-47e2-909f-5b25416bbd6e'),
(56, 1, NULL, 1, 1, '2021-10-16 17:08:00', NULL, NULL, '2021-10-17 12:47:56', '2021-10-17 12:47:56', 'f121ef0a-681c-4cf8-992c-69ab88e8eb57'),
(59, 1, NULL, 1, 1, '2021-10-16 17:08:00', NULL, NULL, '2021-10-17 12:48:36', '2021-10-17 12:48:36', 'c2f8baac-4eb3-4628-a3b8-8042b2293351'),
(62, 1, NULL, 1, 1, '2021-10-17 12:46:00', NULL, NULL, '2021-10-17 12:53:52', '2021-10-17 12:53:52', '2fef4f0d-0244-4498-8bf2-b9122c075fd5'),
(68, 1, NULL, 1, 1, '2021-10-16 17:08:00', NULL, NULL, '2021-10-17 13:03:35', '2021-10-17 13:03:35', '1f4ed077-586c-4483-8eb9-9f48e196b41f'),
(71, 1, NULL, 1, 1, '2021-10-17 12:46:00', NULL, NULL, '2021-10-17 15:05:57', '2021-10-17 15:05:57', 'b95678a6-d205-44f0-ab22-1820ce1dbff3'),
(74, 1, NULL, 1, 1, '2021-10-17 12:46:00', NULL, NULL, '2021-10-17 15:06:11', '2021-10-17 15:06:11', '1ef6b53e-cf63-4af2-86ec-097ae87ab271'),
(80, 1, NULL, 1, 1, '2021-10-16 17:08:00', NULL, NULL, '2021-10-17 15:15:41', '2021-10-17 15:15:41', 'e7c3afba-8238-410a-bee2-d9460af2e99d'),
(83, 1, NULL, 1, 1, '2021-10-16 17:08:00', NULL, NULL, '2021-10-17 17:52:28', '2021-10-17 17:52:28', '26ec6af2-4a2d-4f85-9996-b0e195622173'),
(91, 1, NULL, 1, 1, '2021-10-16 17:08:00', NULL, NULL, '2021-10-18 18:08:55', '2021-10-18 18:08:55', '3b6903f5-2e24-4743-b0d2-76fe1d0ee8b6'),
(99, 1, NULL, 1, 1, '2021-10-16 17:08:00', NULL, NULL, '2021-10-18 18:23:55', '2021-10-18 18:23:55', '582ec309-9a6f-4cee-bf28-1aa172582020');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrytypes`
--

CREATE TABLE `craft_entrytypes` (
  `id` int NOT NULL,
  `sectionId` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci,
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'Blog', 'blog', 1, 'site', NULL, NULL, 1, '2021-10-16 14:10:15', '2021-10-16 17:02:56', NULL, 'bf874c75-c320-4ba0-b8a3-7a85049c7e77');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldgroups`
--

CREATE TABLE `craft_fieldgroups` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Common', '2021-10-15 18:48:42', '2021-10-15 18:48:42', NULL, 'eeb979bf-c0a6-442f-b8a9-60131af8fd63'),
(2, 'Blog Post Fields', '2021-10-16 16:44:28', '2021-10-16 16:44:28', NULL, '54c3ccf3-230b-400f-9cb5-cf22dc8fc937'),
(3, 'Feature Image', '2021-10-16 16:47:14', '2021-10-16 16:47:14', '2021-10-16 16:47:50', '2afe87cc-5cbf-4995-b49b-62f9f01add6c');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayoutfields`
--

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int NOT NULL,
  `layoutId` int NOT NULL,
  `tabId` int NOT NULL,
  `fieldId` int NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 4, 6, 5, 1, 0, '2021-10-16 17:00:45', '2021-10-16 17:00:45', '9333f7fe-a976-46d6-b827-8a4ba8917636'),
(3, 5, 7, 6, 1, 0, '2021-10-16 17:00:45', '2021-10-16 17:00:45', '2c2ba981-4617-4672-8afd-37ea0f56d261'),
(8, 3, 10, 3, 0, 0, '2021-10-17 12:13:18', '2021-10-17 12:13:18', 'ed7aeb34-63b7-40a6-9897-2368ff686545'),
(9, 1, 11, 3, 0, 0, '2021-10-17 12:51:15', '2021-10-17 12:51:15', 'b2bae5b2-b05f-4424-a01b-603cd60ab5ee'),
(10, 1, 11, 1, 0, 1, '2021-10-17 12:51:15', '2021-10-17 12:51:15', '741a7019-623f-4050-93d4-e6af50496d8a'),
(11, 1, 11, 2, 0, 2, '2021-10-17 12:51:15', '2021-10-17 12:51:15', 'ff724ade-d217-464b-9a73-71935c647dd6'),
(12, 1, 11, 4, 0, 3, '2021-10-17 12:51:15', '2021-10-17 12:51:15', '1767bf3d-ab16-4ba2-a435-93d0fcdb5493');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouts`
--

CREATE TABLE `craft_fieldlayouts` (
  `id` int NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '2021-10-16 14:10:15', '2021-10-16 14:10:15', NULL, 'df8760be-2737-46cd-9de9-9cc9b7eb8077'),
(2, 'craft\\elements\\Asset', '2021-10-16 16:16:05', '2021-10-16 16:16:05', NULL, '46656eb9-4139-44e8-b9a5-6a55219ddb3c'),
(3, 'craft\\elements\\Category', '2021-10-16 16:22:12', '2021-10-16 16:22:12', NULL, 'b0014421-507e-4a06-8fa2-a1b20b9d7fbe'),
(4, 'craft\\elements\\MatrixBlock', '2021-10-16 16:58:31', '2021-10-16 16:58:31', NULL, '639b3921-35fd-4cdd-b7eb-a648b33ff979'),
(5, 'craft\\elements\\MatrixBlock', '2021-10-16 17:00:45', '2021-10-16 17:00:45', NULL, 'ab09b97a-9349-46f3-a7cc-e5533a9757a0');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouttabs`
--

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int NOT NULL,
  `layoutId` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elements` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 2, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-10-16 16:16:05', '2021-10-16 16:16:05', '12bffa7d-016f-4cb6-a47a-3e1ea927cac0'),
(6, 4, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"7069baa7-a178-466d-9d94-6fcd112849e1\"}]', 1, '2021-10-16 17:00:45', '2021-10-16 17:00:45', '93d19ee9-1b03-41fb-8304-af973046cee9'),
(7, 5, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"fb6f2d6e-04c1-4630-ab50-8eee72832e57\"}]', 1, '2021-10-16 17:00:45', '2021-10-16 17:00:45', 'd815fede-57e7-46d5-88bd-5e60fa405667'),
(10, 3, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"7edf93b0-d034-4b31-9ed8-b04802ee7d2a\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-10-17 12:13:18', '2021-10-17 12:13:18', '5b9b8640-fb84-4e31-93de-affcf1799a64'),
(11, 1, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"7edf93b0-d034-4b31-9ed8-b04802ee7d2a\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"91e581ce-25e3-477a-9526-17cb307c40ad\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"2756fc14-9fb4-47ba-99a7-0e1718d63bab\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-10-17 12:51:15', '2021-10-17 12:51:15', 'f2ef6494-d077-4a00-b817-0c56c02aadc8');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fields`
--

CREATE TABLE `craft_fields` (
  `id` int NOT NULL,
  `groupId` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `columnSuffix` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `translationKeyFormat` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `columnSuffix`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 'Summary', 'summary', 'global', 'qkcdwtps', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"1\",\"multiline\":\"1\",\"placeholder\":null,\"uiMode\":\"normal\"}', '2021-10-16 16:46:43', '2021-10-16 16:46:43', '0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3'),
(2, 2, 'Feature Image ', 'featureImage', 'global', NULL, '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:1b917b4f-ab49-47ad-9d59-9af2e408f825\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:1b917b4f-ab49-47ad-9d59-9af2e408f825\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"useSingleFolder\":true,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2021-10-16 16:50:09', '2021-10-16 16:50:09', '91e581ce-25e3-477a-9526-17cb307c40ad'),
(3, 2, 'Post Categories', 'postCategories', 'global', NULL, '', 0, 'site', NULL, 'craft\\fields\\Categories', '{\"allowLimit\":false,\"allowMultipleSources\":false,\"allowSelfRelations\":false,\"branchLimit\":\"\",\"limit\":null,\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":false,\"source\":\"group:e52d832e-fdaf-47bf-a192-e1a80d146e96\",\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2021-10-16 16:52:00', '2021-10-16 16:52:00', '7edf93b0-d034-4b31-9ed8-b04802ee7d2a'),
(4, 2, 'Post Content ', 'postContent', 'global', 'lcbraofl', '', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_postcontent}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationKeyFormat\":null,\"propagationMethod\":\"all\"}', '2021-10-16 16:54:10', '2021-10-16 16:58:30', '2756fc14-9fb4-47ba-99a7-0e1718d63bab'),
(5, NULL, '\\text', 'text', 'matrixBlockType:aa47f385-6d6f-4c62-9404-947a9295c0f6', NULL, '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2021-10-16 16:58:31', '2021-10-16 17:00:45', '7069baa7-a178-466d-9d94-6fcd112849e1'),
(6, NULL, 'image', 'image', 'matrixBlockType:54177621-985c-4739-834d-34de9c7d9519', NULL, '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:1b917b4f-ab49-47ad-9d59-9af2e408f825\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"\",\"selectionLabel\":\"\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:1b917b4f-ab49-47ad-9d59-9af2e408f825\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2021-10-16 17:00:45', '2021-10-16 17:00:45', 'fb6f2d6e-04c1-4630-ab50-8eee72832e57');

-- --------------------------------------------------------

--
-- Table structure for table `craft_globalsets`
--

CREATE TABLE `craft_globalsets` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_gqlschemas`
--

CREATE TABLE `craft_gqlschemas` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scope` text COLLATE utf8_unicode_ci,
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_gqlschemas`
--

INSERT INTO `craft_gqlschemas` (`id`, `name`, `scope`, `isPublic`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Public Schema', '[\"elements.drafts:read\",\"elements.revisions:read\",\"elements.inactive:read\",\"sections.7e91932c-0ddd-436a-a76b-323248640ad6:read\",\"entrytypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77:read\",\"volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825:read\",\"usergroups.everyone:read\",\"categorygroups.e52d832e-fdaf-47bf-a192-e1a80d146e96:read\",\"sections.7e91932c-0ddd-436a-a76b-323248640ad6:edit\",\"entrytypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77:edit\",\"entrytypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77:create\",\"entrytypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77:save\",\"entrytypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77:delete\",\"volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825:edit\",\"volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825:create\",\"volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825:save\",\"volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825:delete\",\"categorygroups.e52d832e-fdaf-47bf-a192-e1a80d146e96:edit\",\"categorygroups.e52d832e-fdaf-47bf-a192-e1a80d146e96:save\",\"categorygroups.e52d832e-fdaf-47bf-a192-e1a80d146e96:delete\"]', 1, '2021-10-17 13:09:14', '2021-10-17 14:50:55', '73459634-3c33-448a-9350-5c5c821dbabf');

-- --------------------------------------------------------

--
-- Table structure for table `craft_gqltokens`
--

CREATE TABLE `craft_gqltokens` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accessToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_gqltokens`
--

INSERT INTO `craft_gqltokens` (`id`, `name`, `accessToken`, `enabled`, `expiryDate`, `lastUsed`, `schemaId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Public Token', '__PUBLIC__', 1, NULL, NULL, 1, '2021-10-17 13:09:14', '2021-10-17 13:09:14', '56419a41-1ce7-43c7-8877-c35ffb9df3b0');

-- --------------------------------------------------------

--
-- Table structure for table `craft_info`
--

CREATE TABLE `craft_info` (
  `id` int NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `configVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.7.16', '3.7.8', 0, 'gajivzggcfxu', 'jkzmeazzoxzv', '2021-10-15 18:48:42', '2021-10-17 14:50:55', 'd8d026f3-3413-453b-9ed6-a8aff64bd462');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocks`
--

CREATE TABLE `craft_matrixblocks` (
  `id` int NOT NULL,
  `ownerId` int NOT NULL,
  `fieldId` int NOT NULL,
  `typeId` int NOT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_matrixblocks`
--

INSERT INTO `craft_matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `deletedWithOwner`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 4, 4, 1, 1, 0, '2021-10-16 17:11:02', '2021-10-16 17:11:02', 'c7ba6b03-eb77-4e48-8078-bf60e973ee32'),
(6, 4, 4, 1, 1, NULL, '2021-10-16 17:11:12', '2021-10-16 17:11:12', '0c0cfa50-dcf1-4b69-b87b-e0fc2da76e50'),
(9, 8, 4, 1, 1, NULL, '2021-10-16 17:12:35', '2021-10-16 17:12:35', '66660116-a64c-4ab7-a12e-334d0972033b'),
(27, 4, 4, 2, 2, NULL, '2021-10-17 12:19:53', '2021-10-17 12:19:53', 'b4c9444a-2f5e-4f62-a1da-581b52d82c3c'),
(29, 28, 4, 1, 1, NULL, '2021-10-17 12:19:54', '2021-10-17 12:19:54', 'd029581c-70db-42c5-b837-5d62f8c2c526'),
(30, 28, 4, 2, 2, NULL, '2021-10-17 12:19:54', '2021-10-17 12:19:54', '1dd10f15-3625-47a3-b1d1-25c41a425f95'),
(35, 34, 4, 1, 1, NULL, '2021-10-17 12:43:47', '2021-10-17 12:43:47', '3906dfe5-5f9b-4079-90df-06315c93f0d1'),
(36, 34, 4, 2, 2, NULL, '2021-10-17 12:43:47', '2021-10-17 12:43:47', 'a1835e8d-41bf-4a90-8b8f-c1810528c295'),
(38, 37, 4, 1, 1, 0, '2021-10-17 12:46:26', '2021-10-17 12:46:26', 'e62de622-ae84-4b52-a1da-48f2abd3f789'),
(39, 37, 4, 1, 1, 0, '2021-10-17 12:46:31', '2021-10-17 12:46:31', '8ae8909d-1ef0-47f5-b101-37b8b5ccd35d'),
(40, 37, 4, 1, 1, 0, '2021-10-17 12:46:32', '2021-10-17 12:46:32', '39af9e84-679b-48ed-b95f-778d42d958ac'),
(41, 37, 4, 1, 1, 0, '2021-10-17 12:46:35', '2021-10-17 12:46:35', 'd5fde0c5-c283-4750-9582-bcbae8f9f1d5'),
(42, 37, 4, 1, 1, 0, '2021-10-17 12:46:37', '2021-10-17 12:46:37', '2d096dfe-1e4f-48c4-aa42-5ba6c258ba9e'),
(43, 37, 4, 1, 1, 0, '2021-10-17 12:46:40', '2021-10-17 12:46:40', '02804cad-6c7a-4dcb-a8f1-61d568274155'),
(44, 37, 4, 2, 2, 0, '2021-10-17 12:46:40', '2021-10-17 12:46:40', 'f29a8215-964e-4d5c-aa99-209efe6e08bf'),
(45, 37, 4, 1, 1, 1, '2021-10-17 12:46:46', '2021-10-17 12:46:46', '8bb008d0-5a03-4655-8e25-669659aa6a4a'),
(46, 37, 4, 2, 2, 1, '2021-10-17 12:46:46', '2021-10-17 12:46:46', '927d8d8c-9cfc-4590-b1e7-b1616cb317d3'),
(48, 47, 4, 1, 1, NULL, '2021-10-17 12:46:52', '2021-10-17 12:46:52', '873b51f3-af40-45da-9c1c-86b05f84803f'),
(49, 47, 4, 2, 2, NULL, '2021-10-17 12:46:52', '2021-10-17 12:46:52', 'edc8baa7-44af-46df-a6a4-da603bcb43cf'),
(51, 50, 4, 1, 1, NULL, '2021-10-17 12:47:35', '2021-10-17 12:47:35', '8402f01d-0fbd-4fa0-9cb4-1e3a15c147ba'),
(52, 50, 4, 2, 2, NULL, '2021-10-17 12:47:35', '2021-10-17 12:47:35', 'b08c0ce2-46c2-4a57-a73b-1d25a0088002'),
(54, 53, 4, 1, 1, NULL, '2021-10-17 12:47:51', '2021-10-17 12:47:51', '1b367597-139e-448d-a97b-4b52c3a0c712'),
(55, 53, 4, 2, 2, NULL, '2021-10-17 12:47:51', '2021-10-17 12:47:51', 'de4791f6-d024-4885-8b33-55a4551362d4'),
(57, 56, 4, 1, 1, NULL, '2021-10-17 12:47:56', '2021-10-17 12:47:56', 'f5a84b77-e366-4c10-8591-fa58d61a5c33'),
(58, 56, 4, 2, 2, NULL, '2021-10-17 12:47:56', '2021-10-17 12:47:56', 'e58fae7e-c7b5-440a-ac28-8453e859c29a'),
(60, 59, 4, 1, 1, NULL, '2021-10-17 12:48:36', '2021-10-17 12:48:36', 'f9b8063d-10b3-4519-b216-ba02bf66c710'),
(61, 59, 4, 2, 2, NULL, '2021-10-17 12:48:36', '2021-10-17 12:48:36', '636de081-cfb4-4042-bab3-816a29d5ec18'),
(63, 62, 4, 1, 1, NULL, '2021-10-17 12:53:52', '2021-10-17 12:53:52', 'd561fb33-68f5-4314-87d2-237604fbeffd'),
(64, 62, 4, 2, 2, NULL, '2021-10-17 12:53:52', '2021-10-17 12:53:52', 'a72fe7c2-45d6-4a7a-b82c-83ce46483847'),
(69, 68, 4, 1, 1, NULL, '2021-10-17 13:03:35', '2021-10-17 13:03:35', '319ca3a5-ca08-4d8e-9b8e-70f36dfde42d'),
(70, 68, 4, 2, 2, NULL, '2021-10-17 13:03:35', '2021-10-17 13:03:35', '3fe30420-9a07-4ff5-b812-d7f379a6fea7'),
(72, 71, 4, 1, 1, NULL, '2021-10-17 15:05:57', '2021-10-17 15:05:57', '34abf25b-7f66-4dc8-879f-290a7f65158f'),
(73, 71, 4, 2, 2, NULL, '2021-10-17 15:05:57', '2021-10-17 15:05:57', 'ae298cb4-40d4-40d1-941a-83d077bed801'),
(75, 74, 4, 1, 1, NULL, '2021-10-17 15:06:11', '2021-10-17 15:06:11', '824d6a6d-fe1c-4cae-aff6-8181295decb6'),
(76, 74, 4, 2, 2, NULL, '2021-10-17 15:06:11', '2021-10-17 15:06:11', '223a68a5-5efe-42da-9803-b33070f786aa'),
(81, 80, 4, 1, 1, NULL, '2021-10-17 15:15:41', '2021-10-17 15:15:41', '4a5daf06-deec-46a1-ab0f-647ac82633a0'),
(82, 80, 4, 2, 2, NULL, '2021-10-17 15:15:41', '2021-10-17 15:15:41', 'fa3625f6-d56c-43b3-8c81-4aecc7c4831c'),
(84, 83, 4, 1, 1, NULL, '2021-10-17 17:52:28', '2021-10-17 17:52:28', 'ca972e37-71e3-42ec-8c5a-bee8aef40377'),
(85, 83, 4, 2, 2, NULL, '2021-10-17 17:52:28', '2021-10-17 17:52:28', 'f9d83570-9223-4ca6-9d91-9a48d8e45fb7'),
(92, 91, 4, 1, 1, NULL, '2021-10-18 18:08:55', '2021-10-18 18:08:55', '546bd179-3ac4-43bc-b757-e38009d4eb12'),
(93, 91, 4, 2, 2, NULL, '2021-10-18 18:08:55', '2021-10-18 18:08:55', '59698f30-aad8-43f4-9efd-003af366a221'),
(100, 99, 4, 1, 1, NULL, '2021-10-18 18:23:56', '2021-10-18 18:23:56', 'b8967a97-0157-4246-a3f3-2ca9a119b88c'),
(101, 99, 4, 2, 2, NULL, '2021-10-18 18:23:56', '2021-10-18 18:23:56', '00e5c20d-6eed-40bb-80c9-020a410e19b6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocktypes`
--

CREATE TABLE `craft_matrixblocktypes` (
  `id` int NOT NULL,
  `fieldId` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_matrixblocktypes`
--

INSERT INTO `craft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 4, 4, 'Text', 'text', 1, '2021-10-16 16:58:31', '2021-10-16 16:58:31', 'aa47f385-6d6f-4c62-9404-947a9295c0f6'),
(2, 4, 5, 'Image', 'image', 2, '2021-10-16 17:00:45', '2021-10-16 17:00:45', '54177621-985c-4739-834d-34de9c7d9519');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixcontent_postcontent`
--

CREATE TABLE `craft_matrixcontent_postcontent` (
  `id` int NOT NULL,
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `field_text_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_matrixcontent_postcontent`
--

INSERT INTO `craft_matrixcontent_postcontent` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_text_text`) VALUES
(1, 5, 1, '2021-10-16 17:11:02', '2021-10-16 17:11:02', '01dc8369-6e1d-41ce-967d-6e6dccf7606d', NULL),
(2, 6, 1, '2021-10-16 17:11:12', '2021-10-18 18:23:55', '79911042-a318-4dfa-8c15-1f9bc66d9e3c', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>'),
(3, 9, 1, '2021-10-16 17:12:35', '2021-10-16 17:12:35', 'f33a2287-e997-45b2-9666-1f9a24d8fc63', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>'),
(5, 13, 1, '2021-10-16 20:57:16', '2021-10-16 20:57:16', '7ff8bf96-a83a-443b-87ec-ee694c2e2903', NULL),
(6, 14, 1, '2021-10-16 20:57:29', '2021-10-16 20:57:29', 'b523d649-050c-4fbc-8344-477c1aae7623', NULL),
(8, 16, 1, '2021-10-16 21:28:26', '2021-10-16 21:28:26', 'b81f277b-1485-466e-99b6-edcb28f39696', NULL),
(9, 18, 1, '2021-10-16 21:30:19', '2021-10-16 21:30:19', '21b995c0-6ec9-42bf-b590-c2d1d5efc65f', NULL),
(10, 19, 1, '2021-10-16 21:30:27', '2021-10-16 21:30:27', 'c366b5a4-05d9-40da-9cf4-5aad46b02aaa', NULL),
(11, 20, 1, '2021-10-16 21:30:35', '2021-10-16 21:30:35', 'e12226d6-9665-4463-9b34-fa108ad636cb', NULL),
(12, 22, 1, '2021-10-16 21:31:06', '2021-10-16 21:31:06', '3e4f99bc-f37d-4cdd-bfd1-cf415b4ca88e', NULL),
(13, 27, 1, '2021-10-17 12:19:53', '2021-10-18 18:23:55', '49dbfc3b-b4f4-4cc5-b512-67a74f62728b', NULL),
(14, 29, 1, '2021-10-17 12:19:54', '2021-10-17 12:19:54', '93a2fedc-0213-4ad0-a436-98bb8ec4e25e', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>'),
(15, 30, 1, '2021-10-17 12:19:54', '2021-10-17 12:19:54', '86868b37-0ba1-4995-a8b2-9bb3d472ea99', NULL),
(18, 35, 1, '2021-10-17 12:43:47', '2021-10-17 12:43:47', '02db9516-7408-4f9a-986f-f3c1341958ab', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>'),
(19, 36, 1, '2021-10-17 12:43:47', '2021-10-17 12:43:47', '0964a101-efc4-46cc-8893-b0cd1e05c0f3', NULL),
(20, 38, 1, '2021-10-17 12:46:26', '2021-10-17 12:46:26', 'cf6a566a-1cec-4369-a31a-4093096f78a1', NULL),
(21, 39, 1, '2021-10-17 12:46:31', '2021-10-17 12:46:31', '6843cd8a-51af-45ed-9083-1541fa054e37', '<p>this page </p>'),
(22, 40, 1, '2021-10-17 12:46:32', '2021-10-17 12:46:32', '479eb280-576c-4794-a441-c97131a4821c', '<p>this page is </p>'),
(23, 41, 1, '2021-10-17 12:46:35', '2021-10-17 12:46:35', '61760444-a094-4cab-a040-8e3fab6157c6', '<p>this page is about </p>'),
(24, 42, 1, '2021-10-17 12:46:37', '2021-10-17 12:46:37', '185a6378-5d50-4eee-ad3c-90b156509a76', '<p>this page is about page </p>'),
(25, 43, 1, '2021-10-17 12:46:40', '2021-10-17 12:46:40', '8eb5739f-629d-495a-8ec2-276015f1bd07', '<p>this page is about page </p>'),
(26, 44, 1, '2021-10-17 12:46:40', '2021-10-17 12:46:40', 'bbf3dd11-2aa6-4ba4-a676-077c9158a0b0', NULL),
(27, 45, 1, '2021-10-17 12:46:46', '2021-10-17 12:46:46', 'ac39d2b8-d856-417f-856f-78a1e31596a2', '<p>this page is about page </p>'),
(28, 46, 1, '2021-10-17 12:46:46', '2021-10-17 12:46:46', 'fa4d1235-c271-409b-a2e8-3096df5e42f3', NULL),
(29, 48, 1, '2021-10-17 12:46:52', '2021-10-17 12:46:52', '2db5a17e-5668-4760-8edf-c438e38d1a52', '<p>this page is about page </p>'),
(30, 49, 1, '2021-10-17 12:46:52', '2021-10-17 12:46:52', '8350b4b7-0795-40e8-8363-fa9db76fd61d', NULL),
(31, 51, 1, '2021-10-17 12:47:35', '2021-10-17 12:47:35', '551bf3f1-4d64-4f85-8f37-677e42046d2c', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>'),
(32, 52, 1, '2021-10-17 12:47:35', '2021-10-17 12:47:35', '2483c1c4-9f95-4d34-a1e2-4953bc0c695e', NULL),
(33, 54, 1, '2021-10-17 12:47:51', '2021-10-17 12:47:51', '14fe933e-175b-4e5a-ba2c-db9ca5fb0e9e', '<p>this page is about page </p>'),
(34, 55, 1, '2021-10-17 12:47:51', '2021-10-17 12:47:51', '9b15033b-bef1-47bd-a6be-ea19aecf7005', NULL),
(35, 57, 1, '2021-10-17 12:47:56', '2021-10-17 12:47:56', '9920b551-3eb7-4eb2-bb99-937b51787511', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>'),
(36, 58, 1, '2021-10-17 12:47:56', '2021-10-17 12:47:56', 'c88ab40d-a718-417d-97bd-ba5e366f9662', NULL),
(37, 60, 1, '2021-10-17 12:48:36', '2021-10-17 12:48:36', '0d68ba43-1715-4016-8ef3-2da39c664721', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>'),
(38, 61, 1, '2021-10-17 12:48:36', '2021-10-17 12:48:36', '156a5eeb-3533-4c48-bf55-64fb4da74abf', NULL),
(39, 63, 1, '2021-10-17 12:53:52', '2021-10-17 12:53:52', '56dad2d7-f4f1-459a-aabb-d33fecca8050', '<p>this page is about page </p>'),
(40, 64, 1, '2021-10-17 12:53:52', '2021-10-17 12:53:52', '1148e7e3-8758-412e-b0ad-b955fb73b3cc', NULL),
(43, 69, 1, '2021-10-17 13:03:35', '2021-10-17 13:03:35', 'f6804f3b-2d02-4c99-a04b-1eeb2b6f9003', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>'),
(44, 70, 1, '2021-10-17 13:03:35', '2021-10-17 13:03:35', '8a822571-1278-4130-a615-e333f0aae202', NULL),
(45, 72, 1, '2021-10-17 15:05:57', '2021-10-17 15:05:57', 'ec5b2f69-3119-443e-b6be-98572de251b8', '<p>this page is about page </p>'),
(46, 73, 1, '2021-10-17 15:05:57', '2021-10-17 15:05:57', '5cea9460-b016-4089-802e-0af49d36956f', NULL),
(47, 75, 1, '2021-10-17 15:06:11', '2021-10-17 15:06:11', 'd02c174c-e22b-43a9-819d-9bc1b5946d24', '<p>this page is about page </p>'),
(48, 76, 1, '2021-10-17 15:06:11', '2021-10-17 15:06:11', '7b623846-de81-471b-b101-a4869aac95e4', NULL),
(51, 81, 1, '2021-10-17 15:15:41', '2021-10-17 15:15:41', '8e031e38-649a-478e-9e4c-b2fed8fcf3fc', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>'),
(52, 82, 1, '2021-10-17 15:15:41', '2021-10-17 15:15:41', '0cd87de1-1487-4ace-be0b-78ee36880b81', NULL),
(53, 84, 1, '2021-10-17 17:52:28', '2021-10-17 17:52:28', 'ca083ea4-e616-471e-a817-723419f48b5d', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>'),
(54, 85, 1, '2021-10-17 17:52:28', '2021-10-17 17:52:28', '55c8cb35-aecd-462f-9eb2-2434c6fbe848', NULL),
(57, 92, 1, '2021-10-18 18:08:55', '2021-10-18 18:08:55', 'a68e4772-2e60-4ae6-a128-ea4d392da493', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>'),
(58, 93, 1, '2021-10-18 18:08:55', '2021-10-18 18:08:55', '177268f3-be59-49a4-8aca-a7236ed44b71', NULL),
(61, 100, 1, '2021-10-18 18:23:56', '2021-10-18 18:23:56', '87f8fc9a-fe7f-45d4-a9b8-af0aadbe3c65', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>'),
(62, 101, 1, '2021-10-18 18:23:56', '2021-10-18 18:23:56', 'd114eb62-2137-40d7-9a14-065e816a043a', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `craft_migrations`
--

CREATE TABLE `craft_migrations` (
  `id` int NOT NULL,
  `track` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2bb4a6a7-1607-4516-830f-e253e2a78944'),
(2, 'craft', 'm150403_183908_migrations_table_changes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '17503c4a-1a38-4d52-9cf2-5088047fea8d'),
(3, 'craft', 'm150403_184247_plugins_table_changes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '4313e456-f85d-4de5-9e88-ef3f628fb276'),
(4, 'craft', 'm150403_184533_field_version', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'fda37a7a-799f-4d41-a8db-d8daa40da53c'),
(5, 'craft', 'm150403_184729_type_columns', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2f5bab81-dd74-4349-8b91-79a5332558ab'),
(6, 'craft', 'm150403_185142_volumes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'eda4da95-1f70-4a33-bc5a-79d0d3dcf458'),
(7, 'craft', 'm150428_231346_userpreferences', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '25ece656-d4e3-4868-b133-17536074b4d9'),
(8, 'craft', 'm150519_150900_fieldversion_conversion', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '806d4fff-b8d8-450e-97d4-cded0bded200'),
(9, 'craft', 'm150617_213829_update_email_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '65e8cc3b-a478-4448-a5a0-0aabc62b8c18'),
(10, 'craft', 'm150721_124739_templatecachequeries', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '9b3da5cb-856e-4b83-a6db-3bea2d85ca20'),
(11, 'craft', 'm150724_140822_adjust_quality_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '30c165db-47c8-4e21-8cfd-8cc82c9fc264'),
(12, 'craft', 'm150815_133521_last_login_attempt_ip', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'b41f84a1-62aa-4dfc-bd00-67eecc5611d0'),
(13, 'craft', 'm151002_095935_volume_cache_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'a48edb0b-72a3-4356-8c6f-bd12d0ca2de3'),
(14, 'craft', 'm151005_142750_volume_s3_storage_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '4e456db3-d4ef-4ede-a5d8-ad15fceeed04'),
(15, 'craft', 'm151016_133600_delete_asset_thumbnails', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '10d7bcbb-d314-4553-9d99-cbfbb27dddde'),
(16, 'craft', 'm151209_000000_move_logo', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '838757de-256f-4b9c-b508-a899feff111f'),
(17, 'craft', 'm151211_000000_rename_fileId_to_assetId', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'f68f0c64-090d-4c86-8f35-bb53b16961db'),
(18, 'craft', 'm151215_000000_rename_asset_permissions', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '11eef297-d2ee-45fe-9587-e9a872a5490a'),
(19, 'craft', 'm160707_000001_rename_richtext_assetsource_setting', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'bbbd6491-101f-4e3b-9532-8ade3af07948'),
(20, 'craft', 'm160708_185142_volume_hasUrls_setting', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '63fd3244-ff54-4fff-b12a-29783d18c71c'),
(21, 'craft', 'm160714_000000_increase_max_asset_filesize', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'abbd5f7e-15d4-4213-9dbd-b1c0c49be1a3'),
(22, 'craft', 'm160727_194637_column_cleanup', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '82bf037c-6f51-4faa-93ea-5b1dbbc714d3'),
(23, 'craft', 'm160804_110002_userphotos_to_assets', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'a2fbe91a-ba67-41bb-9e78-ec58f4be44af'),
(24, 'craft', 'm160807_144858_sites', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'dd060ac5-49a5-4666-9400-19b60e38b7b3'),
(25, 'craft', 'm160829_000000_pending_user_content_cleanup', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'd26109ba-79ac-4fff-b464-3f02ef6d7960'),
(26, 'craft', 'm160830_000000_asset_index_uri_increase', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '50a3b8be-f68a-4951-93e2-f8cc4a176275'),
(27, 'craft', 'm160912_230520_require_entry_type_id', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '7c0f5ea7-fb14-4ef9-b3d1-9e2474b19d94'),
(28, 'craft', 'm160913_134730_require_matrix_block_type_id', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '7666bd8c-85e8-4655-a82b-e2d8cc9fffa0'),
(29, 'craft', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '3dc37ec9-e955-4f0b-92f5-dc516964bc0f'),
(30, 'craft', 'm160920_231045_usergroup_handle_title_unique', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '08402fde-aa90-4745-ae6f-a20fa2ef9fe1'),
(31, 'craft', 'm160925_113941_route_uri_parts', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'ef93b641-96ed-45a1-b1c8-ebc9a526e79c'),
(32, 'craft', 'm161006_205918_schemaVersion_not_null', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '344b3cab-8839-4d01-8538-e9ae11642bed'),
(33, 'craft', 'm161007_130653_update_email_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '14d668be-3f05-4822-a6ce-8a65a3bdc3ae'),
(34, 'craft', 'm161013_175052_newParentId', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '77b6e8aa-3abe-45ed-9553-e6df918c80cc'),
(35, 'craft', 'm161021_102916_fix_recent_entries_widgets', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '150d66a0-ca9b-4173-87be-d6157a7ea5cc'),
(36, 'craft', 'm161021_182140_rename_get_help_widget', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '51df2ec1-c8bc-4824-a001-1d1728d0b672'),
(37, 'craft', 'm161025_000000_fix_char_columns', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '339f69c4-0710-4738-90b5-00b8ea48eeff'),
(38, 'craft', 'm161029_124145_email_message_languages', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '04e08831-39d1-437f-8838-34f95b4b2535'),
(39, 'craft', 'm161108_000000_new_version_format', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '7724e716-67fc-4f22-9f0d-3331f0ab0a99'),
(40, 'craft', 'm161109_000000_index_shuffle', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'c2db1b2d-2728-4fb3-917b-7f29de663c16'),
(41, 'craft', 'm161122_185500_no_craft_app', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'd2d6e3f0-8f05-4875-8216-623d02571bcc'),
(42, 'craft', 'm161125_150752_clear_urlmanager_cache', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'b40a9f60-d3a9-4923-b760-cfa3d1935219'),
(43, 'craft', 'm161220_000000_volumes_hasurl_notnull', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2710df76-7e74-4f8d-8433-b1bc1e2e0223'),
(44, 'craft', 'm170114_161144_udates_permission', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'ba378936-f8f9-41e3-861b-2dcd52e190f7'),
(45, 'craft', 'm170120_000000_schema_cleanup', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '0c166717-045f-4370-8d1f-eb7272dfee33'),
(46, 'craft', 'm170126_000000_assets_focal_point', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '3e200db0-6a66-4611-aadc-15e17bb35bdb'),
(47, 'craft', 'm170206_142126_system_name', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'f86aafeb-014f-4dbd-b5a3-e63120b23f08'),
(48, 'craft', 'm170217_044740_category_branch_limits', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '9ab5240a-95d6-4b86-b61b-4992ddcd0a5d'),
(49, 'craft', 'm170217_120224_asset_indexing_columns', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '0f81be0b-6d99-4bd7-be07-4b1a98f7c79a'),
(50, 'craft', 'm170223_224012_plain_text_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'bc6111a1-8ca6-49b8-abcc-7d7d9cbf3c62'),
(51, 'craft', 'm170227_120814_focal_point_percentage', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'a6e99a62-8db2-49fd-b29a-61c6519a3240'),
(52, 'craft', 'm170228_171113_system_messages', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'd9e2411b-f3e1-467e-a09a-85407d0294bc'),
(53, 'craft', 'm170303_140500_asset_field_source_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '97d12e29-897b-4b99-ad03-ca1db2f5cfd6'),
(54, 'craft', 'm170306_150500_asset_temporary_uploads', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '6a132e92-d466-42fb-a4a1-ab505d20eb0e'),
(55, 'craft', 'm170523_190652_element_field_layout_ids', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '637a23a3-77ad-4fe4-a045-e0c968096647'),
(56, 'craft', 'm170621_195237_format_plugin_handles', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '8da6d092-986c-4862-8638-0f1b19cb58fc'),
(57, 'craft', 'm170630_161027_deprecation_line_nullable', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '3bc3c60c-f29e-4c6c-b2dd-f4810c2df3cc'),
(58, 'craft', 'm170630_161028_deprecation_changes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '8d3cbdcd-1d14-4e0f-947b-1e6a551f8ecb'),
(59, 'craft', 'm170703_181539_plugins_table_tweaks', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'd91a50ce-e3dd-404d-b35d-6b91a5bd3269'),
(60, 'craft', 'm170704_134916_sites_tables', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'd0c7472b-9a62-454e-adb1-0321327be9d4'),
(61, 'craft', 'm170706_183216_rename_sequences', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'd7109265-308c-4a61-aa3e-c3ed12c3f1f1'),
(62, 'craft', 'm170707_094758_delete_compiled_traits', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'e7168022-e331-4680-bf77-5972cd873c08'),
(63, 'craft', 'm170731_190138_drop_asset_packagist', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '84163097-694b-4f56-b7b2-563909a629fd'),
(64, 'craft', 'm170810_201318_create_queue_table', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'c9fd2f33-b5d7-463d-9386-483843abad4d'),
(65, 'craft', 'm170903_192801_longblob_for_queue_jobs', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '3a26a12c-74fa-485a-8775-85b21a0224a9'),
(66, 'craft', 'm170914_204621_asset_cache_shuffle', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'f86f47cf-160b-4ec9-bfaa-a616d7345764'),
(67, 'craft', 'm171011_214115_site_groups', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '68885b7b-6ebe-428b-8672-df3f3b03a6c2'),
(68, 'craft', 'm171012_151440_primary_site', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'b096a297-f88c-48e5-ad9c-bcd6ab838ac3'),
(69, 'craft', 'm171013_142500_transform_interlace', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'b2caedd6-74bb-48ec-9768-395e2f3539d8'),
(70, 'craft', 'm171016_092553_drop_position_select', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'd3c62cf7-d269-4885-a5a0-239f4e63f3a2'),
(71, 'craft', 'm171016_221244_less_strict_translation_method', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'a5ecb4e3-c172-4c2d-a72f-f34897f2d868'),
(72, 'craft', 'm171107_000000_assign_group_permissions', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '417805b0-63a5-4b3a-a00e-a90fae3d115a'),
(73, 'craft', 'm171117_000001_templatecache_index_tune', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '48aeb252-1a46-48fe-b664-13995093ea2f'),
(74, 'craft', 'm171126_105927_disabled_plugins', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '97ce414d-d9a8-46eb-9a09-242f454e2df9'),
(75, 'craft', 'm171130_214407_craftidtokens_table', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '48907648-72e2-465a-92a3-a08788a62924'),
(76, 'craft', 'm171202_004225_update_email_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '0aa73d03-b034-4afb-ad0f-78e22468045f'),
(77, 'craft', 'm171204_000001_templatecache_index_tune_deux', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '4c3777ee-d50f-49ee-bf71-f7aadeb56aeb'),
(78, 'craft', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '334aa95e-4a4e-43e1-8b34-5d316175579e'),
(79, 'craft', 'm171218_143135_longtext_query_column', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '486afe38-2858-44e1-b07a-c243030de7a1'),
(80, 'craft', 'm171231_055546_environment_variables_to_aliases', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '323a5621-9a70-4eb0-9847-5df290a5f14e'),
(81, 'craft', 'm180113_153740_drop_users_archived_column', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'ce396ff6-9e8e-4e89-badf-6a30ffc20740'),
(82, 'craft', 'm180122_213433_propagate_entries_setting', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'ee755b2e-9d13-4b54-aedc-0e7e4bcf2a6f'),
(83, 'craft', 'm180124_230459_fix_propagate_entries_values', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '8ca38fb9-1101-48e7-b0ec-938de5c1712f'),
(84, 'craft', 'm180128_235202_set_tag_slugs', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '864ee944-e582-4b71-8931-7ee4e133076f'),
(85, 'craft', 'm180202_185551_fix_focal_points', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '1d360089-c8f6-473e-b3b3-a620c8c45512'),
(86, 'craft', 'm180217_172123_tiny_ints', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'a14103f2-4d7a-4d8a-bcb2-8a8f72b9d4aa'),
(87, 'craft', 'm180321_233505_small_ints', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'e601e289-e1c4-4634-b13d-561f2f6efc6d'),
(88, 'craft', 'm180404_182320_edition_changes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'ded50dcb-5b7f-4b41-bb29-ba3db6016349'),
(89, 'craft', 'm180411_102218_fix_db_routes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'ad81b92b-4c32-4f87-85cb-27a5d3a0917b'),
(90, 'craft', 'm180416_205628_resourcepaths_table', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '158ec5e1-f2be-4385-b298-992df5fbe1ae'),
(91, 'craft', 'm180418_205713_widget_cleanup', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'bc431017-ed2e-43f4-83f9-88c0f80532ee'),
(92, 'craft', 'm180425_203349_searchable_fields', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '1f8a271b-cef3-4e38-a7c0-2ae96c15bc41'),
(93, 'craft', 'm180516_153000_uids_in_field_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '93422344-dbb6-445f-9208-be9295070caf'),
(94, 'craft', 'm180517_173000_user_photo_volume_to_uid', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '7c634a59-b3a4-458e-8cfe-29ae831324fe'),
(95, 'craft', 'm180518_173000_permissions_to_uid', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'eba08273-2b76-4712-8100-324bba4be486'),
(96, 'craft', 'm180520_173000_matrix_context_to_uids', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '83ce9517-7c86-46b0-93da-f24d29ad97bf'),
(97, 'craft', 'm180521_172900_project_config_table', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'db220ef3-1ad1-4ec8-993f-e87856da2559'),
(98, 'craft', 'm180521_173000_initial_yml_and_snapshot', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '5aa4c482-2ce5-4d99-a0b1-8abd2730e2a5'),
(99, 'craft', 'm180731_162030_soft_delete_sites', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '534aaece-5da1-4b41-9422-b4321d4bc5d8'),
(100, 'craft', 'm180810_214427_soft_delete_field_layouts', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '523574ba-09d1-4cb2-8413-d3dcfddfe2f6'),
(101, 'craft', 'm180810_214439_soft_delete_elements', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '692f9f0c-4fe1-4f45-b805-6fe922046f0c'),
(102, 'craft', 'm180824_193422_case_sensitivity_fixes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'd01454f5-157d-4132-aff0-88d7a1de5078'),
(103, 'craft', 'm180901_151639_fix_matrixcontent_tables', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '4e73c3f7-d626-42d6-86ab-bc7139c2ac13'),
(104, 'craft', 'm180904_112109_permission_changes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2ff91434-dd7e-468b-9e06-c41d86eea25a'),
(105, 'craft', 'm180910_142030_soft_delete_sitegroups', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'fbd07d24-c31f-4f62-af88-98d2cb764b1d'),
(106, 'craft', 'm181011_160000_soft_delete_asset_support', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '974f6be0-0bc0-418e-8e99-614bc0895b1f'),
(107, 'craft', 'm181016_183648_set_default_user_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'b1fe1847-f62a-4f23-8984-677fdef60c57'),
(108, 'craft', 'm181017_225222_system_config_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'b4d92c0f-72f4-4bf3-a42d-25277c0d4662'),
(109, 'craft', 'm181018_222343_drop_userpermissions_from_config', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'd4dc5502-c680-4cef-b579-1118d98af82f'),
(110, 'craft', 'm181029_130000_add_transforms_routes_to_config', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'c7d4e09a-98e1-42af-8f9f-261d37d3610f'),
(111, 'craft', 'm181112_203955_sequences_table', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '0b7ba195-0cdc-4fac-ac87-04835826afcf'),
(112, 'craft', 'm181121_001712_cleanup_field_configs', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '097daf82-ba2b-4823-bdd7-dae6eb37e191'),
(113, 'craft', 'm181128_193942_fix_project_config', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'ab9592e6-d3f9-41b9-90a6-8c6cc0bd22ea'),
(114, 'craft', 'm181130_143040_fix_schema_version', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'bfd50084-8a37-41e4-b633-883ded53c962'),
(115, 'craft', 'm181211_143040_fix_entry_type_uids', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '8afc97ad-fecb-43c8-b757-db290d8f3c91'),
(116, 'craft', 'm181217_153000_fix_structure_uids', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2afeaec5-198d-4956-95be-36632bb3178c'),
(117, 'craft', 'm190104_152725_store_licensed_plugin_editions', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'ce80ab58-927c-4742-91a3-d060f41a4785'),
(118, 'craft', 'm190108_110000_cleanup_project_config', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '77a16d0f-bfcf-452c-a40a-6c2a61644808'),
(119, 'craft', 'm190108_113000_asset_field_setting_change', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '88010956-e78d-4ce6-80c0-efb5d7002c84'),
(120, 'craft', 'm190109_172845_fix_colspan', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '191136ac-7db8-4410-9b83-d4f1c3361119'),
(121, 'craft', 'm190110_150000_prune_nonexisting_sites', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '4b713004-b62b-422f-89cb-97704a67716a'),
(122, 'craft', 'm190110_214819_soft_delete_volumes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '7ee54ee8-f30a-46c7-b7c4-1c16f0b5b042'),
(123, 'craft', 'm190112_124737_fix_user_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '61620660-e257-4057-ac14-40935af9be97'),
(124, 'craft', 'm190112_131225_fix_field_layouts', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '29e37c16-8948-4485-935b-aaf3da2931c9'),
(125, 'craft', 'm190112_201010_more_soft_deletes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '983f4056-80cb-46bb-894c-ab26e23a54e5'),
(126, 'craft', 'm190114_143000_more_asset_field_setting_changes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'a6436ac6-3002-4d9b-80fe-6f6d2c6ef098'),
(127, 'craft', 'm190121_120000_rich_text_config_setting', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '042017f8-2f64-47d3-ac60-4882ff51f283'),
(128, 'craft', 'm190125_191628_fix_email_transport_password', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'ea08f40a-24d0-4caf-b4df-20f51f20c20a'),
(129, 'craft', 'm190128_181422_cleanup_volume_folders', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '947e2d52-8120-444a-b5a1-2fd0e3f12341'),
(130, 'craft', 'm190205_140000_fix_asset_soft_delete_index', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'a718db91-c84e-4dd6-9984-3bbd2f60c5b9'),
(131, 'craft', 'm190218_143000_element_index_settings_uid', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '39105ad4-b810-4e21-8a04-2595cda47b39'),
(132, 'craft', 'm190312_152740_element_revisions', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'a7879579-1f7e-4c1d-a419-a0dd0546ff42'),
(133, 'craft', 'm190327_235137_propagation_method', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2fed92d0-bcd3-414c-b137-d57424e5b44a'),
(134, 'craft', 'm190401_223843_drop_old_indexes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'a6384749-d228-432d-bdb8-db44cae2311c'),
(135, 'craft', 'm190416_014525_drop_unique_global_indexes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '3de45478-c90d-42fe-9569-0b2e8ac12876'),
(136, 'craft', 'm190417_085010_add_image_editor_permissions', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'a650beda-e425-415a-8336-7cefc0f8214b'),
(137, 'craft', 'm190502_122019_store_default_user_group_uid', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '76276c79-58af-4dee-b8c4-b53ec84e3f39'),
(138, 'craft', 'm190504_150349_preview_targets', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'e5d39a8f-869c-4257-86b9-27002ceb8c4f'),
(139, 'craft', 'm190516_184711_job_progress_label', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '3c522071-39bb-4b28-9158-a43392ee527f'),
(140, 'craft', 'm190523_190303_optional_revision_creators', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '65cf987c-13a6-43ed-adfd-ad7c51c660b3'),
(141, 'craft', 'm190529_204501_fix_duplicate_uids', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '11e42b4e-055e-4576-bf9e-619918a546b6'),
(142, 'craft', 'm190605_223807_unsaved_drafts', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '422d4b8c-0487-4546-b5c6-585f5d30cc22'),
(143, 'craft', 'm190607_230042_entry_revision_error_tables', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '39168f73-da5a-48f4-99f9-b4f59287a951'),
(144, 'craft', 'm190608_033429_drop_elements_uid_idx', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '90aecaf0-6b2d-4363-9b10-c10a8041d77b'),
(145, 'craft', 'm190617_164400_add_gqlschemas_table', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'd4e9baf2-d533-423e-89af-302875e45d66'),
(146, 'craft', 'm190624_234204_matrix_propagation_method', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'a4621412-5e32-4e62-a8f2-f441e47eb150'),
(147, 'craft', 'm190711_153020_drop_snapshots', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'be28f2b2-aa32-4cb1-8619-639bb33e3c6c'),
(148, 'craft', 'm190712_195914_no_draft_revisions', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'b0086d43-d432-45e6-8bab-2c5f9345c2b3'),
(149, 'craft', 'm190723_140314_fix_preview_targets_column', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '5edf97ef-e5e1-47ac-a920-41632ff6fbbb'),
(150, 'craft', 'm190820_003519_flush_compiled_templates', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '5ede2e7f-c1db-4737-a306-4587217df3f4'),
(151, 'craft', 'm190823_020339_optional_draft_creators', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '990f7fdb-3190-4ae0-a8ed-8c40c2956e9b'),
(152, 'craft', 'm190913_152146_update_preview_targets', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '31cfdd2d-11f7-45f5-9f62-5bd9e7e67d66'),
(153, 'craft', 'm191107_122000_add_gql_project_config_support', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '8a876937-355f-46d4-955c-0024a6e4bcc7'),
(154, 'craft', 'm191204_085100_pack_savable_component_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '6b4723dc-7089-4ff0-8481-6b08c2a353af'),
(155, 'craft', 'm191206_001148_change_tracking', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '418e59d1-1acc-43c4-b278-f09a49c353d5'),
(156, 'craft', 'm191216_191635_asset_upload_tracking', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'df646c11-dd8c-41ce-95d6-8e52744f72fd'),
(157, 'craft', 'm191222_002848_peer_asset_permissions', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '600cd35e-edb0-47eb-9bda-0e75fe017cf6'),
(158, 'craft', 'm200127_172522_queue_channels', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '189aa5ac-91ae-4019-a522-e3a7b7af8af4'),
(159, 'craft', 'm200211_175048_truncate_element_query_cache', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'ea852955-83ca-4b71-a4c3-6806adcb160c'),
(160, 'craft', 'm200213_172522_new_elements_index', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '35a1eb2b-abbb-4f89-98ee-787ce70bc90d'),
(161, 'craft', 'm200228_195211_long_deprecation_messages', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'ab87e96c-ed33-45b9-9156-f6a2352e43cb'),
(162, 'craft', 'm200306_054652_disabled_sites', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '18783bdd-9ad7-430a-b6d8-aaaff44dbea6'),
(163, 'craft', 'm200522_191453_clear_template_caches', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '0db37235-1a66-440b-a6c4-69bc31e99fc7'),
(164, 'craft', 'm200606_231117_migration_tracks', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '1411f107-2d7c-4147-9da0-1c721be5fb85'),
(165, 'craft', 'm200619_215137_title_translation_method', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'c55468f1-13a6-4624-8433-12a7841b1e2a'),
(166, 'craft', 'm200620_005028_user_group_descriptions', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '4df206bb-072d-4b64-9794-d068d0e9f293'),
(167, 'craft', 'm200620_230205_field_layout_changes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'ab6ea891-167d-42d1-b348-8b5871589932'),
(168, 'craft', 'm200625_131100_move_entrytypes_to_top_project_config', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '52c5ffc2-3c3c-4447-9e3d-f0757476f039'),
(169, 'craft', 'm200629_112700_remove_project_config_legacy_files', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'e92ee451-0240-48a8-9f6d-8c4a844305f5'),
(170, 'craft', 'm200630_183000_drop_configmap', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'd0c687b3-608e-4fb3-bad4-3c3d90b23c56'),
(171, 'craft', 'm200715_113400_transform_index_error_flag', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'f9452274-fd96-4c13-9194-366eac7a187b'),
(172, 'craft', 'm200716_110900_replace_file_asset_permissions', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'e85d8261-7898-4df1-9212-b911b07acf3d'),
(173, 'craft', 'm200716_153800_public_token_settings_in_project_config', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '1b9003e2-4c6e-4cef-a654-fe8d03d29ad9'),
(174, 'craft', 'm200720_175543_drop_unique_constraints', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '211ee4fb-19ca-4178-a4ff-65a27db55013'),
(175, 'craft', 'm200825_051217_project_config_version', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'ad0db7f1-b6e3-405f-8f94-09c47cc54846'),
(176, 'craft', 'm201116_190500_asset_title_translation_method', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '5a77ee15-ff9b-4376-92f7-38ebaba90a21'),
(177, 'craft', 'm201124_003555_plugin_trials', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '45b62dd0-13df-4782-8dd1-58ed4ad41260'),
(178, 'craft', 'm210209_135503_soft_delete_field_groups', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '21623a55-0532-49eb-8c66-e8d902a15484'),
(179, 'craft', 'm210212_223539_delete_invalid_drafts', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '36b279c2-1a65-4d63-9b95-676e9a3b9ff2'),
(180, 'craft', 'm210214_202731_track_saved_drafts', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '8082ae76-78b6-445f-bd2c-03c24107aed3'),
(181, 'craft', 'm210223_150900_add_new_element_gql_schema_components', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'c121ff01-1904-48c0-b7b8-d8f3fdde10bb'),
(182, 'craft', 'm210302_212318_canonical_elements', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '827cad48-d2d1-4b5e-979e-a0b48369bc21'),
(183, 'craft', 'm210326_132000_invalidate_projectconfig_cache', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'bd70d390-a268-437b-8827-a4d609ee666e'),
(184, 'craft', 'm210329_214847_field_column_suffixes', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', 'd894b568-4bb1-4af3-a13e-f414c9ef5042'),
(185, 'craft', 'm210331_220322_null_author', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2d18bbb3-e48b-4f9f-b2f1-6f980a7880f8'),
(186, 'craft', 'm210405_231315_provisional_drafts', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '3b521658-0e2e-4828-9904-b69ec51ec426'),
(187, 'craft', 'm210602_111300_project_config_names_in_config', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '1207c5b1-f0eb-44e5-a581-4f3f6d203f76'),
(188, 'craft', 'm210611_233510_default_placement_settings', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2d1db912-6dd7-465f-9d76-1b4812469030'),
(189, 'craft', 'm210613_145522_sortable_global_sets', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '64d19cb1-756c-4033-840e-2c144ec1ba75'),
(190, 'craft', 'm210613_184103_announcements', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '76fdc7f6-fc72-4c32-b846-f8589a647a3f'),
(191, 'craft', 'm210829_000000_element_index_tweak', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-15 18:48:43', '0962cc22-47fe-44cd-b099-8a8d72a8e4c1'),
(192, 'plugin:redactor', 'm180430_204710_remove_old_plugins', '2021-10-16 16:39:16', '2021-10-16 16:39:16', '2021-10-16 16:39:16', '250a0325-5539-4854-9b7d-733754d9f79f'),
(193, 'plugin:redactor', 'Install', '2021-10-16 16:39:16', '2021-10-16 16:39:16', '2021-10-16 16:39:16', '2be4d4a0-e3fa-4a47-b19c-170180491768'),
(194, 'plugin:redactor', 'm190225_003922_split_cleanup_html_settings', '2021-10-16 16:39:16', '2021-10-16 16:39:16', '2021-10-16 16:39:16', '357711ec-27c9-4274-b85e-98c81a2d8979');

-- --------------------------------------------------------

--
-- Table structure for table `craft_plugins`
--

CREATE TABLE `craft_plugins` (
  `id` int NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `licenseKeyStatus` enum('valid','trial','invalid','mismatched','astray','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_plugins`
--

INSERT INTO `craft_plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'redactor', '2.8.8', '2.3.0', 'unknown', NULL, '2021-10-16 16:39:16', '2021-10-16 16:39:16', '2021-10-18 18:08:58', '7757bb87-440d-49be-8583-aa10917d723a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_projectconfig`
--

CREATE TABLE `craft_projectconfig` (
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_projectconfig`
--

INSERT INTO `craft_projectconfig` (`path`, `value`) VALUES
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.defaultPlacement', '\"end\"'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.0.fieldUid', '\"7edf93b0-d034-4b31-9ed8-b04802ee7d2a\"'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.0.instructions', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.0.label', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.0.required', 'false'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.0.tip', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.0.warning', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.0.width', '100'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.autocapitalize', 'true'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.autocomplete', 'false'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.autocorrect', 'true'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.class', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.disabled', 'false'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.id', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.instructions', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.label', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.max', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.min', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.name', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.orientation', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.placeholder', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.readonly', 'false'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.requirable', 'false'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.size', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.step', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.tip', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.title', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.warning', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.elements.1.width', '100'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.name', '\"Content\"'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.fieldLayouts.b0014421-507e-4a06-8fa2-a1b20b9d7fbe.tabs.0.sortOrder', '1'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.handle', '\"blogCategories\"'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.name', '\" Blog Categories\"'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.siteSettings.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.hasUrls', 'true'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.siteSettings.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.template', 'null'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.siteSettings.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.uriFormat', '\"blog-categories/{slug}\"'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.structure.maxLevels', '1'),
('categoryGroups.e52d832e-fdaf-47bf-a192-e1a80d146e96.structure.uid', '\"9afc5319-4383-443d-bd05-4d8738dd1acf\"'),
('dateModified', '1634482255'),
('email.fromEmail', '\"sanae.k1986@gmail.com\"'),
('email.fromName', '\"test1\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.0.fieldUid', '\"7edf93b0-d034-4b31-9ed8-b04802ee7d2a\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.0.instructions', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.0.label', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.0.required', 'false'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.0.tip', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.0.warning', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.0.width', '100'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.1.fieldUid', '\"0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.1.instructions', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.1.label', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.1.required', 'false'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.1.tip', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.1.warning', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.1.width', '100'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.2.fieldUid', '\"91e581ce-25e3-477a-9526-17cb307c40ad\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.2.instructions', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.2.label', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.2.required', 'false'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.2.tip', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.2.warning', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.2.width', '100'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.3.fieldUid', '\"2756fc14-9fb4-47ba-99a7-0e1718d63bab\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.3.instructions', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.3.label', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.3.required', 'false'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.3.tip', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.3.warning', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.3.width', '100'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.autocapitalize', 'true'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.autocomplete', 'false'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.autocorrect', 'true'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.class', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.disabled', 'false'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.id', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.instructions', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.label', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.max', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.min', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.name', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.orientation', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.placeholder', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.readonly', 'false'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.requirable', 'false'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.size', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.step', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.tip', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.title', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.warning', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.elements.4.width', '100'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.name', '\"Content\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.fieldLayouts.df8760be-2737-46cd-9de9-9cc9b7eb8077.tabs.0.sortOrder', '1'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.handle', '\"blog\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.hasTitleField', 'true'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.name', '\"Blog\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.section', '\"7e91932c-0ddd-436a-a76b-323248640ad6\"'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.sortOrder', '1'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.titleFormat', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.titleTranslationKeyFormat', 'null'),
('entryTypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77.titleTranslationMethod', '\"site\"'),
('fieldGroups.54c3ccf3-230b-400f-9cb5-cf22dc8fc937.name', '\"Blog Post Fields\"'),
('fieldGroups.eeb979bf-c0a6-442f-b8a9-60131af8fd63.name', '\"Common\"'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.columnSuffix', '\"qkcdwtps\"'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.contentColumnType', '\"text\"'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.fieldGroup', '\"54c3ccf3-230b-400f-9cb5-cf22dc8fc937\"'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.handle', '\"summary\"'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.instructions', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam\"'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.name', '\"Summary\"'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.searchable', 'false'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.settings.byteLimit', 'null'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.settings.charLimit', 'null'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.settings.code', '\"\"'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.settings.columnType', 'null'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.settings.initialRows', '\"1\"'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.settings.multiline', '\"1\"'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.settings.placeholder', 'null'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.settings.uiMode', '\"normal\"'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.translationKeyFormat', 'null'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.translationMethod', '\"none\"'),
('fields.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.columnSuffix', '\"lcbraofl\"'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.contentColumnType', '\"string\"'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.fieldGroup', '\"54c3ccf3-230b-400f-9cb5-cf22dc8fc937\"'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.handle', '\"postContent\"'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.instructions', '\"\"'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.name', '\"Post Content \"'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.searchable', 'false'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.settings.contentTable', '\"{{%matrixcontent_postcontent}}\"'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.settings.maxBlocks', '\"\"'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.settings.minBlocks', '\"\"'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.settings.propagationKeyFormat', 'null'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.settings.propagationMethod', '\"all\"'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.translationKeyFormat', 'null'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.translationMethod', '\"site\"'),
('fields.2756fc14-9fb4-47ba-99a7-0e1718d63bab.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.columnSuffix', 'null'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.contentColumnType', '\"string\"'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.fieldGroup', '\"54c3ccf3-230b-400f-9cb5-cf22dc8fc937\"'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.handle', '\"postCategories\"'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.instructions', '\"\"'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.name', '\"Post Categories\"'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.searchable', 'false'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.settings.allowLimit', 'false'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.settings.allowMultipleSources', 'false'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.settings.allowSelfRelations', 'false'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.settings.branchLimit', '\"\"'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.settings.limit', 'null'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.settings.localizeRelations', 'false'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.settings.selectionLabel', '\"\"'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.settings.showSiteMenu', 'false'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.settings.source', '\"group:e52d832e-fdaf-47bf-a192-e1a80d146e96\"'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.settings.sources', '\"*\"'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.settings.targetSiteId', 'null'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.settings.validateRelatedElements', 'false'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.settings.viewMode', 'null'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.translationKeyFormat', 'null'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.translationMethod', '\"site\"'),
('fields.7edf93b0-d034-4b31-9ed8-b04802ee7d2a.type', '\"craft\\\\fields\\\\Categories\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.columnSuffix', 'null'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.contentColumnType', '\"string\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.fieldGroup', '\"54c3ccf3-230b-400f-9cb5-cf22dc8fc937\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.handle', '\"featureImage\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.instructions', '\"\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.name', '\"Feature Image \"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.searchable', 'false'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.allowedKinds.0', '\"image\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.allowSelfRelations', 'false'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.allowUploads', 'true'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.defaultUploadLocationSource', '\"volume:1b917b4f-ab49-47ad-9d59-9af2e408f825\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.limit', '\"1\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.localizeRelations', 'false'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.previewMode', '\"full\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.restrictFiles', '\"1\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.selectionLabel', '\"\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.showSiteMenu', 'false'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.showUnpermittedFiles', 'false'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.showUnpermittedVolumes', 'false'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.singleUploadLocationSource', '\"volume:1b917b4f-ab49-47ad-9d59-9af2e408f825\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.singleUploadLocationSubpath', '\"\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.source', 'null'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.sources', '\"*\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.targetSiteId', 'null'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.useSingleFolder', 'true'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.validateRelatedElements', 'false'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.settings.viewMode', '\"list\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.translationKeyFormat', 'null'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.translationMethod', '\"site\"'),
('fields.91e581ce-25e3-477a-9526-17cb307c40ad.type', '\"craft\\\\fields\\\\Assets\"'),
('graphql.publicToken.enabled', 'true'),
('graphql.publicToken.expiryDate', 'null'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.isPublic', 'true'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.name', '\"Public Schema\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.0', '\"elements.drafts:read\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.1', '\"elements.revisions:read\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.10', '\"entrytypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77:create\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.11', '\"entrytypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77:save\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.12', '\"entrytypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77:delete\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.13', '\"volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825:edit\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.14', '\"volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825:create\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.15', '\"volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825:save\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.16', '\"volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825:delete\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.17', '\"categorygroups.e52d832e-fdaf-47bf-a192-e1a80d146e96:edit\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.18', '\"categorygroups.e52d832e-fdaf-47bf-a192-e1a80d146e96:save\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.19', '\"categorygroups.e52d832e-fdaf-47bf-a192-e1a80d146e96:delete\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.2', '\"elements.inactive:read\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.3', '\"sections.7e91932c-0ddd-436a-a76b-323248640ad6:read\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.4', '\"entrytypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77:read\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.5', '\"volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825:read\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.6', '\"usergroups.everyone:read\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.7', '\"categorygroups.e52d832e-fdaf-47bf-a192-e1a80d146e96:read\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.8', '\"sections.7e91932c-0ddd-436a-a76b-323248640ad6:edit\"'),
('graphql.schemas.73459634-3c33-448a-9350-5c5c821dbabf.scope.9', '\"entrytypes.bf874c75-c320-4ba0-b8a3-7a85049c7e77:edit\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.field', '\"2756fc14-9fb4-47ba-99a7-0e1718d63bab\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fieldLayouts.ab09b97a-9349-46f3-a7cc-e5533a9757a0.tabs.0.elements.0.fieldUid', '\"fb6f2d6e-04c1-4630-ab50-8eee72832e57\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fieldLayouts.ab09b97a-9349-46f3-a7cc-e5533a9757a0.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fieldLayouts.ab09b97a-9349-46f3-a7cc-e5533a9757a0.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fieldLayouts.ab09b97a-9349-46f3-a7cc-e5533a9757a0.tabs.0.elements.0.required', 'true'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fieldLayouts.ab09b97a-9349-46f3-a7cc-e5533a9757a0.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fieldLayouts.ab09b97a-9349-46f3-a7cc-e5533a9757a0.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fieldLayouts.ab09b97a-9349-46f3-a7cc-e5533a9757a0.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fieldLayouts.ab09b97a-9349-46f3-a7cc-e5533a9757a0.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fieldLayouts.ab09b97a-9349-46f3-a7cc-e5533a9757a0.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fieldLayouts.ab09b97a-9349-46f3-a7cc-e5533a9757a0.tabs.0.sortOrder', '1'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.columnSuffix', 'null'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.contentColumnType', '\"string\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.fieldGroup', 'null'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.handle', '\"image\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.instructions', '\"\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.name', '\"image\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.searchable', 'false'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.allowedKinds', 'null'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.allowSelfRelations', 'false'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.allowUploads', 'true'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.defaultUploadLocationSource', '\"volume:1b917b4f-ab49-47ad-9d59-9af2e408f825\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.defaultUploadLocationSubpath', '\"\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.limit', '\"\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.localizeRelations', 'false'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.previewMode', '\"full\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.restrictFiles', '\"\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.selectionLabel', '\"\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.showSiteMenu', 'false'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.singleUploadLocationSource', '\"volume:1b917b4f-ab49-47ad-9d59-9af2e408f825\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.singleUploadLocationSubpath', '\"\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.source', 'null'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.sources', '\"*\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.targetSiteId', 'null'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.useSingleFolder', 'false'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.validateRelatedElements', 'false'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.settings.viewMode', '\"list\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.translationKeyFormat', 'null'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.translationMethod', '\"site\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.fields.fb6f2d6e-04c1-4630-ab50-8eee72832e57.type', '\"craft\\\\fields\\\\Assets\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.handle', '\"image\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.name', '\"Image\"'),
('matrixBlockTypes.54177621-985c-4739-834d-34de9c7d9519.sortOrder', '2'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.field', '\"2756fc14-9fb4-47ba-99a7-0e1718d63bab\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fieldLayouts.639b3921-35fd-4cdd-b7eb-a648b33ff979.tabs.0.elements.0.fieldUid', '\"7069baa7-a178-466d-9d94-6fcd112849e1\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fieldLayouts.639b3921-35fd-4cdd-b7eb-a648b33ff979.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fieldLayouts.639b3921-35fd-4cdd-b7eb-a648b33ff979.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fieldLayouts.639b3921-35fd-4cdd-b7eb-a648b33ff979.tabs.0.elements.0.required', 'true'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fieldLayouts.639b3921-35fd-4cdd-b7eb-a648b33ff979.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fieldLayouts.639b3921-35fd-4cdd-b7eb-a648b33ff979.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fieldLayouts.639b3921-35fd-4cdd-b7eb-a648b33ff979.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fieldLayouts.639b3921-35fd-4cdd-b7eb-a648b33ff979.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fieldLayouts.639b3921-35fd-4cdd-b7eb-a648b33ff979.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fieldLayouts.639b3921-35fd-4cdd-b7eb-a648b33ff979.tabs.0.sortOrder', '1'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.columnSuffix', 'null'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.contentColumnType', '\"text\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.fieldGroup', 'null'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.handle', '\"text\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.instructions', '\"\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.name', '\"\\\\text\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.searchable', 'false'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.availableTransforms', '\"*\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.availableVolumes', '\"*\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.cleanupHtml', 'true'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.columnType', '\"text\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.configSelectionMode', '\"choose\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.defaultTransform', '\"\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.manualConfig', '\"\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.purifierConfig', '\"\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.purifyHtml', '\"1\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.redactorConfig', '\"\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.removeEmptyTags', '\"1\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.removeInlineStyles', '\"1\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.removeNbsp', '\"1\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.showHtmlButtonForNonAdmins', '\"\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.settings.uiMode', '\"enlarged\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.translationKeyFormat', 'null'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.translationMethod', '\"none\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.fields.7069baa7-a178-466d-9d94-6fcd112849e1.type', '\"craft\\\\redactor\\\\Field\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.handle', '\"text\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.name', '\"Text\"'),
('matrixBlockTypes.aa47f385-6d6f-4c62-9404-947a9295c0f6.sortOrder', '1'),
('meta.__names__.0083cb2d-c6a7-44ad-8b95-a77d0d767a10', '\"test1\"'),
('meta.__names__.0fc1dbbc-f51b-4f4a-8b2f-86c6449a1cc3', '\"Summary\"'),
('meta.__names__.1b917b4f-ab49-47ad-9d59-9af2e408f825', '\"Blog\"'),
('meta.__names__.2756fc14-9fb4-47ba-99a7-0e1718d63bab', '\"Post Content \"'),
('meta.__names__.4025f19c-5d4f-4509-85a3-91636ddb1c6c', '\"test1\"'),
('meta.__names__.54177621-985c-4739-834d-34de9c7d9519', '\"Image\"'),
('meta.__names__.54c3ccf3-230b-400f-9cb5-cf22dc8fc937', '\"Blog Post Fields\"'),
('meta.__names__.7069baa7-a178-466d-9d94-6fcd112849e1', '\"\\\\text\"'),
('meta.__names__.73459634-3c33-448a-9350-5c5c821dbabf', '\"Public Schema\"'),
('meta.__names__.7e91932c-0ddd-436a-a76b-323248640ad6', '\"Blog\"'),
('meta.__names__.7edf93b0-d034-4b31-9ed8-b04802ee7d2a', '\"Post Categories\"'),
('meta.__names__.91e581ce-25e3-477a-9526-17cb307c40ad', '\"Feature Image \"'),
('meta.__names__.aa47f385-6d6f-4c62-9404-947a9295c0f6', '\"Text\"'),
('meta.__names__.bf874c75-c320-4ba0-b8a3-7a85049c7e77', '\"Blog\"'),
('meta.__names__.e52d832e-fdaf-47bf-a192-e1a80d146e96', '\" Blog Categories\"'),
('meta.__names__.eeb979bf-c0a6-442f-b8a9-60131af8fd63', '\"Common\"'),
('meta.__names__.fb6f2d6e-04c1-4630-ab50-8eee72832e57', '\"image\"'),
('plugins.redactor.edition', '\"standard\"'),
('plugins.redactor.enabled', 'true'),
('plugins.redactor.schemaVersion', '\"2.3.0\"'),
('sections.7e91932c-0ddd-436a-a76b-323248640ad6.defaultPlacement', '\"end\"'),
('sections.7e91932c-0ddd-436a-a76b-323248640ad6.enableVersioning', 'true'),
('sections.7e91932c-0ddd-436a-a76b-323248640ad6.handle', '\"blog\"'),
('sections.7e91932c-0ddd-436a-a76b-323248640ad6.name', '\"Blog\"'),
('sections.7e91932c-0ddd-436a-a76b-323248640ad6.propagationMethod', '\"all\"'),
('sections.7e91932c-0ddd-436a-a76b-323248640ad6.siteSettings.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.enabledByDefault', 'true'),
('sections.7e91932c-0ddd-436a-a76b-323248640ad6.siteSettings.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.hasUrls', 'true'),
('sections.7e91932c-0ddd-436a-a76b-323248640ad6.siteSettings.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.template', '\"blog/_entry\"'),
('sections.7e91932c-0ddd-436a-a76b-323248640ad6.siteSettings.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.uriFormat', '\"blog/{slug}\"'),
('sections.7e91932c-0ddd-436a-a76b-323248640ad6.type', '\"channel\"'),
('siteGroups.4025f19c-5d4f-4509-85a3-91636ddb1c6c.name', '\"test1\"'),
('sites.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.handle', '\"default\"'),
('sites.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.hasUrls', 'true'),
('sites.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.language', '\"en\"'),
('sites.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.name', '\"test1\"'),
('sites.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.primary', 'true'),
('sites.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.siteGroup', '\"4025f19c-5d4f-4509-85a3-91636ddb1c6c\"'),
('sites.0083cb2d-c6a7-44ad-8b95-a77d0d767a10.sortOrder', '1'),
('system.edition', '\"pro\"'),
('system.live', 'true'),
('system.name', '\"test1\"'),
('system.schemaVersion', '\"3.7.8\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.autocomplete', 'false'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.autocorrect', 'true'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.class', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.disabled', 'false'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.id', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.instructions', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.label', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.max', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.min', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.name', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.orientation', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.placeholder', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.readonly', 'false'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.requirable', 'false'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.size', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.step', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.tip', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.title', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\AssetTitleField\"'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.warning', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.elements.0.width', '100'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.name', '\"Content\"'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.fieldLayouts.46656eb9-4139-44e8-b9a5-6a55219ddb3c.tabs.0.sortOrder', '1'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.handle', '\"blog\"'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.hasUrls', 'true'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.name', '\"Blog\"'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.settings.path', '\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/web/assets/blog\"'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.sortOrder', '1'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.titleTranslationKeyFormat', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.titleTranslationMethod', 'null'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.1b917b4f-ab49-47ad-9d59-9af2e408f825.url', '\"@web/assets/blog\"');

-- --------------------------------------------------------

--
-- Table structure for table `craft_queue`
--

CREATE TABLE `craft_queue` (
  `id` int NOT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `timePushed` int NOT NULL,
  `ttr` int NOT NULL,
  `delay` int NOT NULL DEFAULT '0',
  `priority` int UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int DEFAULT NULL,
  `progress` smallint NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempt` int DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_relations`
--

CREATE TABLE `craft_relations` (
  `id` int NOT NULL,
  `fieldId` int NOT NULL,
  `sourceId` int NOT NULL,
  `sourceSiteId` int DEFAULT NULL,
  `targetId` int NOT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 3, 4, NULL, 7, 1, '2021-10-16 17:12:00', '2021-10-16 17:12:00', 'ddfff73a-fa1a-43f7-88ee-6889bb2f18e0'),
(2, 3, 8, NULL, 7, 1, '2021-10-16 17:12:35', '2021-10-16 17:12:35', '38ea5c39-5bee-48e8-bf53-6db5d83b1f97'),
(5, 6, 14, NULL, 12, 1, '2021-10-16 20:57:29', '2021-10-16 20:57:29', '7b82b848-8fca-453e-a245-6cca5952f95f'),
(6, 6, 18, NULL, 17, 1, '2021-10-16 21:30:19', '2021-10-16 21:30:19', '8b90b0eb-afd5-4f99-8d5b-420a8bdd3b2c'),
(7, 6, 22, NULL, 21, 1, '2021-10-16 21:31:06', '2021-10-16 21:31:06', '37956077-1aed-48e8-871e-3e1628c43bd5'),
(13, 2, 4, NULL, 12, 1, '2021-10-17 12:19:53', '2021-10-17 12:19:53', 'f4b276f7-862e-47ca-a892-26a8d07f36c1'),
(14, 3, 4, NULL, 25, 2, '2021-10-17 12:19:53', '2021-10-17 12:19:53', 'dcca920d-734f-4964-9cee-9d418682c820'),
(17, 6, 27, NULL, 21, 1, '2021-10-17 12:19:54', '2021-10-18 18:23:55', '0d40e35d-5931-4d25-b51f-6fbf54d40785'),
(18, 2, 28, NULL, 12, 1, '2021-10-17 12:19:54', '2021-10-17 12:19:54', '836b6a22-b72e-4dd4-8915-9e3717383d3a'),
(19, 3, 28, NULL, 7, 1, '2021-10-17 12:19:54', '2021-10-17 12:19:54', '42a476ed-0d2e-48e6-b755-23b809c13a56'),
(20, 3, 28, NULL, 25, 2, '2021-10-17 12:19:54', '2021-10-17 12:19:54', '5a5b1f79-bb7e-43a7-8419-242bc0b04e69'),
(21, 3, 28, NULL, 26, 3, '2021-10-17 12:19:54', '2021-10-17 12:19:54', '566a89dc-4026-4930-82cc-d638c039d213'),
(22, 6, 30, NULL, 24, 1, '2021-10-17 12:19:54', '2021-10-17 12:19:54', 'ad550c71-d8e2-4f67-b221-1b5c8504d4f9'),
(23, 6, 30, NULL, 21, 2, '2021-10-17 12:19:54', '2021-10-17 12:19:54', '5d6510da-75b8-4645-bc39-e62a132175a0'),
(30, 2, 34, NULL, 12, 1, '2021-10-17 12:43:47', '2021-10-17 12:43:47', '5b9b9b82-b248-45a7-90b9-168475daba59'),
(31, 3, 34, NULL, 7, 1, '2021-10-17 12:43:47', '2021-10-17 12:43:47', '81b54590-9fe5-45cd-a1ce-631eb0c4fdde'),
(32, 3, 34, NULL, 25, 2, '2021-10-17 12:43:47', '2021-10-17 12:43:47', '03fc1583-e99e-4485-9b1b-ecea0a2a9f13'),
(33, 3, 34, NULL, 26, 3, '2021-10-17 12:43:47', '2021-10-17 12:43:47', 'f0e8c5b6-d476-4b53-bcbe-95bdc83becb9'),
(34, 6, 36, NULL, 24, 1, '2021-10-17 12:43:47', '2021-10-17 12:43:47', 'bf7eb229-4686-4299-96b5-a8947fb898ce'),
(35, 6, 36, NULL, 21, 2, '2021-10-17 12:43:47', '2021-10-17 12:43:47', 'b9e35879-bb03-4823-a602-a1e48212bfc2'),
(36, 6, 46, NULL, 21, 1, '2021-10-17 12:46:46', '2021-10-17 12:46:46', '3b25fded-619b-4342-96d4-8943c24ab0de'),
(37, 6, 49, NULL, 21, 1, '2021-10-17 12:46:52', '2021-10-17 12:46:52', 'b78c917e-0e0b-47e1-b48d-8ee53727383a'),
(38, 2, 50, NULL, 12, 1, '2021-10-17 12:47:35', '2021-10-17 12:47:35', '3f953c45-d02b-4224-92d2-9bf536d25c8a'),
(39, 3, 50, NULL, 7, 1, '2021-10-17 12:47:35', '2021-10-17 12:47:35', 'd7b54b4e-9707-4d64-97ee-cf6af12af5c0'),
(40, 3, 50, NULL, 25, 2, '2021-10-17 12:47:35', '2021-10-17 12:47:35', '82e0ab21-3e19-495a-b91d-625a72bbff4a'),
(41, 3, 50, NULL, 26, 3, '2021-10-17 12:47:35', '2021-10-17 12:47:35', 'f3ab880f-885a-4b2f-b32c-f6dd23fa6571'),
(42, 6, 52, NULL, 24, 1, '2021-10-17 12:47:35', '2021-10-17 12:47:35', '557e9a76-36ec-44b8-80a0-509606b5e9ab'),
(43, 6, 52, NULL, 21, 2, '2021-10-17 12:47:35', '2021-10-17 12:47:35', 'ecd060f1-4a89-4bca-a701-458cc2c343e9'),
(44, 6, 55, NULL, 21, 1, '2021-10-17 12:47:51', '2021-10-17 12:47:51', '37d3f212-fc42-4ba9-84bf-e5e8414d7682'),
(45, 2, 56, NULL, 12, 1, '2021-10-17 12:47:56', '2021-10-17 12:47:56', 'b701052b-8a63-49ef-9e43-6796421be358'),
(46, 3, 56, NULL, 7, 1, '2021-10-17 12:47:56', '2021-10-17 12:47:56', 'f848032c-253d-496a-8aa4-84f670204b6f'),
(47, 3, 56, NULL, 25, 2, '2021-10-17 12:47:56', '2021-10-17 12:47:56', '59d013e1-b803-4a65-8a17-091ac7310d3e'),
(48, 3, 56, NULL, 26, 3, '2021-10-17 12:47:56', '2021-10-17 12:47:56', '340cfdf9-c3d1-47db-9744-5c68a2da082d'),
(49, 6, 58, NULL, 24, 1, '2021-10-17 12:47:56', '2021-10-17 12:47:56', '75a52cf5-b908-4e2f-8d31-da1cb5fb2564'),
(50, 6, 58, NULL, 21, 2, '2021-10-17 12:47:56', '2021-10-17 12:47:56', 'e8683856-8c47-4669-a4c2-c40d18d6fc82'),
(51, 2, 59, NULL, 12, 1, '2021-10-17 12:48:36', '2021-10-17 12:48:36', 'f58562f3-7940-4f07-bb16-621fe6655215'),
(52, 3, 59, NULL, 7, 1, '2021-10-17 12:48:36', '2021-10-17 12:48:36', 'e55465ea-f5e3-486d-9b61-b4226c230ac5'),
(53, 3, 59, NULL, 25, 2, '2021-10-17 12:48:36', '2021-10-17 12:48:36', '42480ba3-d495-42f8-b2d8-0efebf7820e8'),
(54, 3, 59, NULL, 26, 3, '2021-10-17 12:48:36', '2021-10-17 12:48:36', '08fdc988-2141-49c2-8024-922f1efaf9e8'),
(55, 6, 61, NULL, 24, 1, '2021-10-17 12:48:36', '2021-10-17 12:48:36', 'bd1c75cb-48df-479a-a65b-2c3fc3303ace'),
(56, 6, 61, NULL, 21, 2, '2021-10-17 12:48:36', '2021-10-17 12:48:36', '41e0dfee-edd3-4383-9401-d9c809ffc005'),
(57, 6, 64, NULL, 21, 1, '2021-10-17 12:53:52', '2021-10-17 12:53:52', 'c99290f0-d5f7-4297-b5cf-64dcd3ce7983'),
(64, 3, 68, NULL, 7, 1, '2021-10-17 13:03:35', '2021-10-17 13:03:35', '53768870-1c4f-4827-85e8-68a173bef2f4'),
(65, 3, 68, NULL, 25, 2, '2021-10-17 13:03:35', '2021-10-17 13:03:35', 'eed8d2d0-9589-49c9-840e-5fc03bd82a68'),
(66, 3, 68, NULL, 26, 3, '2021-10-17 13:03:35', '2021-10-17 13:03:35', 'e290a00d-7f9a-474a-8850-94831f8b8bd6'),
(67, 2, 68, NULL, 12, 1, '2021-10-17 13:03:35', '2021-10-17 13:03:35', '7171b7e3-13b6-4caa-90f9-822bd286cb71'),
(68, 6, 70, NULL, 24, 1, '2021-10-17 13:03:35', '2021-10-17 13:03:35', '281be35b-9deb-4da9-b0df-b3800487858c'),
(69, 6, 70, NULL, 21, 2, '2021-10-17 13:03:35', '2021-10-17 13:03:35', '6ccee1d7-be7a-4864-818a-e3965bbedfd8'),
(70, 6, 73, NULL, 21, 1, '2021-10-17 15:05:57', '2021-10-17 15:05:57', '9c73f891-b043-442f-abe3-3d21fb851b6b'),
(71, 6, 76, NULL, 21, 1, '2021-10-17 15:06:12', '2021-10-17 15:06:12', 'a522247c-a6e9-4d36-86c0-d4e014b5d624'),
(78, 3, 80, NULL, 7, 1, '2021-10-17 15:15:41', '2021-10-17 15:15:41', 'c4a7302e-8537-4976-b2c7-b233a36ed569'),
(79, 3, 80, NULL, 25, 2, '2021-10-17 15:15:41', '2021-10-17 15:15:41', '5bfbfad1-110c-40d9-8286-277bf47838ae'),
(80, 2, 80, NULL, 12, 1, '2021-10-17 15:15:41', '2021-10-17 15:15:41', 'b6abf4bb-7a16-4457-bc31-8755abb24f0b'),
(81, 6, 82, NULL, 24, 1, '2021-10-17 15:15:41', '2021-10-17 15:15:41', 'dde7e712-70be-48d7-8915-9f93ed9e0e66'),
(82, 6, 82, NULL, 21, 2, '2021-10-17 15:15:41', '2021-10-17 15:15:41', 'bb553dbf-c906-4885-a265-e3199a156d3c'),
(83, 3, 83, NULL, 7, 1, '2021-10-17 17:52:28', '2021-10-17 17:52:28', 'c6b555a5-763c-426a-b479-7cae337ee810'),
(84, 3, 83, NULL, 25, 2, '2021-10-17 17:52:28', '2021-10-17 17:52:28', '86211b04-adb9-4264-8692-87ef47c0dda3'),
(85, 2, 83, NULL, 12, 1, '2021-10-17 17:52:28', '2021-10-17 17:52:28', '68a1494a-e592-4195-a6fc-8ba5de7a77c2'),
(86, 6, 85, NULL, 24, 1, '2021-10-17 17:52:28', '2021-10-17 17:52:28', '0e93042f-9cb3-4145-a60f-1b555fd0c266'),
(87, 6, 85, NULL, 21, 2, '2021-10-17 17:52:28', '2021-10-17 17:52:28', '39b2a61f-0f32-461e-bb1a-3953de0a4991'),
(94, 6, 27, NULL, 87, 2, '2021-10-18 18:08:54', '2021-10-18 18:23:55', '0d873240-bb11-4d23-9fbd-82f3bf1adf49'),
(95, 3, 91, NULL, 7, 1, '2021-10-18 18:08:55', '2021-10-18 18:08:55', '86945075-5c1d-4953-bc71-0343e987fe61'),
(96, 3, 91, NULL, 25, 2, '2021-10-18 18:08:55', '2021-10-18 18:08:55', '4b07289a-1d4a-4aaf-9ef7-b7f9aa8973bf'),
(97, 2, 91, NULL, 12, 1, '2021-10-18 18:08:55', '2021-10-18 18:08:55', '26d8ed6e-3e7e-4d13-abe5-18d2dde97400'),
(98, 6, 93, NULL, 24, 1, '2021-10-18 18:08:55', '2021-10-18 18:08:55', 'e417801b-c249-4f0c-91f9-66b0a32d0e7c'),
(99, 6, 93, NULL, 21, 2, '2021-10-18 18:08:55', '2021-10-18 18:08:55', '6d71a8d0-efc8-46db-a922-b23ac35806ce'),
(100, 6, 93, NULL, 87, 3, '2021-10-18 18:08:55', '2021-10-18 18:08:55', 'c0d18d19-c993-4a40-ae50-f762f69dcd93'),
(108, 6, 27, NULL, 98, 3, '2021-10-18 18:23:55', '2021-10-18 18:23:55', '28d31f33-2f6e-4053-804d-61b80c24d2c7'),
(109, 3, 99, NULL, 7, 1, '2021-10-18 18:23:55', '2021-10-18 18:23:55', 'e2b6feab-2f45-4ec2-90b8-9e138fecea03'),
(110, 3, 99, NULL, 25, 2, '2021-10-18 18:23:55', '2021-10-18 18:23:55', 'be00138f-1e9b-487e-bc90-56d3135afea2'),
(111, 2, 99, NULL, 12, 1, '2021-10-18 18:23:55', '2021-10-18 18:23:55', 'b7235813-3862-4091-9e63-60bc15990460'),
(112, 6, 101, NULL, 21, 1, '2021-10-18 18:23:56', '2021-10-18 18:23:56', '10fd62b1-e9cc-45a0-a9b8-b5814c87646c'),
(113, 6, 101, NULL, 87, 2, '2021-10-18 18:23:56', '2021-10-18 18:23:56', '642c778d-bc0e-4b11-b377-d52a2cbd374b'),
(114, 6, 101, NULL, 98, 3, '2021-10-18 18:23:56', '2021-10-18 18:23:56', '73992401-27de-44a6-b9ec-24ca01ecb0f1');

-- --------------------------------------------------------

--
-- Table structure for table `craft_resourcepaths`
--

CREATE TABLE `craft_resourcepaths` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_resourcepaths`
--

INSERT INTO `craft_resourcepaths` (`hash`, `path`) VALUES
('10a54fb2', '@lib/iframe-resizer-cw'),
('1173c7e8', '@app/web/assets/editsection/dist'),
('1255e802', '@craft/web/assets/dashboard/dist'),
('145b20b4', '@lib/datepicker-i18n'),
('18ba43aa', '@lib/element-resize-detector'),
('26a51f22', '@lib/velocity'),
('2b84b754', '@craft/web/assets/updates/dist'),
('2dd606fe', '@craft/web/assets/deprecationerrors/dist'),
('32f32a02', '@craft/web/assets/editentry/dist'),
('372ae85f', '@bower/jquery/dist'),
('386b9b57', '@lib/timepicker'),
('3a82b0ca', '@lib/jquery.payment'),
('416eabd2', '@lib/fileupload'),
('467a8eb2', '@app/web/assets/updates/dist'),
('4b2c2d3', '@craft/redactor/assets/redactor-plugins/dist/video'),
('4dcd94c5', '@lib/iframe-resizer'),
('4f3067bb', '@lib/vue'),
('5403f38d', '@craft/web/assets/craftsupport/dist'),
('57238a7d', '@lib/d3'),
('572c2bdf', '@app/web/assets/queuemanager/dist'),
('581b53c6', '@app/web/assets/deprecationerrors/dist'),
('5986aa2c', '@lib/picturefill'),
('598741c3', '@app/web/assets/dashboard/dist'),
('5c054440', '@craft/web/assets/login/dist'),
('5e2296ee', '@lib/jquery-touch-events'),
('5ee06f8d', '@app/web/assets/fields/dist'),
('62dbc4ce', '@lib/axios'),
('649e9dfb', '@lib/garnishjs'),
('66cfcee0', '@app/web/assets/dbbackup/dist'),
('680c8487', '@lib/jquery-ui'),
('6b16cec9', '@craft/web/assets/feed/dist'),
('6e7d170', '@craft/redactor/assets/redactor/dist'),
('6f4a284d', '@app/web/assets/sites/dist'),
('706b6924', '@craft/web/assets/editsection/dist'),
('71d849c5', '@lib/fabric'),
('7428593', '@app/web/assets/admintable/dist'),
('76b23536', '@craft/web/assets/plugins/dist'),
('792183c3', '@app/web/assets/editentry/dist'),
('794c322', '@lib/xregexp'),
('80ddba3a', '@lib/axios'),
('81b242a4', '@app/web/assets/pluginstore/dist'),
('8698e30f', '@lib/garnishjs'),
('87c72802', '@app/web/assets/recententries/dist'),
('8a0afa73', '@lib/jquery-ui'),
('931bfedc', '@craft/web/assets/fields/dist'),
('9338dfba', '@craft/web/assets/graphiql/dist'),
('93de3731', '@lib/fabric'),
('93ebfae9', '@craft/redactor/assets/field/dist'),
('9a350609', '@craft/web/assets/admintable/dist'),
('9a8a0f8f', '@app/web/assets/cp/dist'),
('9eb41af1', '@app/web/assets/login/dist'),
('a14f160e', '@app/web/assets/findreplace/dist'),
('a17a07d', '@app/web/assets/clearcaches/dist'),
('a368d526', '@lib/fileupload'),
('a9283853', '@app/web/assets/updater/dist'),
('ab639d3a', '@craft/redactor/assets/redactor-plugins/dist/fullscreen'),
('ad36194f', '@lib/vue'),
('add9067d', '@app/web/assets/generalsettings/dist'),
('adfb76fc', '@craft/web/assets/sites/dist'),
('af7f2e02', '@app/web/assets/installer/dist'),
('afcbea31', '@lib/iframe-resizer'),
('b14c3295', '@craft/web/assets/userpermissions/dist'),
('b323e4df', '@craft/web/assets/utilities/dist'),
('b525f489', '@lib/d3'),
('b7efc6ad', '@app/web/assets/craftsupport/dist'),
('b97d6a6c', '@app/web/assets/updateswidget/dist'),
('bb80d4d8', '@lib/picturefill'),
('bbf830a6', '@craft/web/assets/matrix/dist'),
('bc24e81a', '@lib/jquery-touch-events'),
('bea2e293', '@lib/prismjs'),
('c4a361d6', '@lib/velocity'),
('cd1547ea', '@craft/web/assets/recententries/dist'),
('d52c96ab', '@bower/jquery/dist'),
('d884ce3e', '@lib/jquery.payment'),
('d9f0b6e', '@craft/web/assets/matrixsettings/dist'),
('da6de5a3', '@lib/timepicker'),
('df887a8', '@lib/selectize'),
('e0aaec68', '@craft/web/assets/pluginstore/dist'),
('e3914431', '@app/web/assets/feed/dist'),
('e4ad87c3', '@craft/web/assets/installer/dist'),
('e592bdd6', '@lib/xregexp'),
('e9d1dc15', '@craft/web/assets/cp/dist'),
('effef95c', '@lib/selectize'),
('f3af0584', '@craft/web/assets/updateswidget/dist'),
('f65d5e40', '@lib/datepicker-i18n'),
('f8f14d1e', '@app/web/assets/utilities/dist'),
('fa8051df', '@craft/web/assets/generalsettings/dist'),
('fabc3d5e', '@lib/element-resize-detector'),
('feec26dd', '@craft/web/assets/fieldsettings/dist');

-- --------------------------------------------------------

--
-- Table structure for table `craft_revisions`
--

CREATE TABLE `craft_revisions` (
  `id` int NOT NULL,
  `sourceId` int NOT NULL,
  `creatorId` int DEFAULT NULL,
  `num` int NOT NULL,
  `notes` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_revisions`
--

INSERT INTO `craft_revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 4, 1, 1, ''),
(2, 4, 1, 2, 'Applied “Draft 1”'),
(3, 4, 1, 3, 'Applied “Draft 1”'),
(4, 37, 1, 1, ''),
(5, 4, 1, 4, NULL),
(6, 37, 1, 2, NULL),
(7, 4, 1, 5, NULL),
(8, 4, 1, 6, ''),
(9, 37, 1, 3, ''),
(10, 4, 1, 7, 'Applied “Draft 1”'),
(11, 37, 1, 4, ''),
(12, 37, 1, 5, NULL),
(13, 4, 1, 8, ''),
(14, 4, 1, 9, ''),
(15, 4, 1, 10, 'Applied “Draft 1”'),
(16, 4, 1, 11, 'Applied “Draft 1”');

-- --------------------------------------------------------

--
-- Table structure for table `craft_searchindex`
--

CREATE TABLE `craft_searchindex` (
  `elementId` int NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int NOT NULL,
  `siteId` int NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'username', 0, 1, ' admin '),
(1, 'firstname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' sanae k1986 gmail com '),
(1, 'slug', 0, 1, ''),
(2, 'slug', 0, 1, ' temp latxtjclpvkdpvnpaklqocmdujdyunfknaeh '),
(2, 'title', 0, 1, ''),
(3, 'slug', 0, 1, ' temp svdfnbqyqpxbmaykxqrvphvmjyihsqfkadwx '),
(3, 'title', 0, 1, ''),
(12, 'filename', 0, 1, ' mainstage image png '),
(4, 'slug', 0, 1, ' section1 '),
(4, 'title', 0, 1, ' page1 '),
(6, 'slug', 0, 1, ''),
(7, 'title', 0, 1, ' home '),
(7, 'slug', 0, 1, ' section1 '),
(37, 'slug', 0, 1, ' about '),
(27, 'slug', 0, 1, ''),
(12, 'title', 0, 1, ' mainstage image '),
(12, 'extension', 0, 1, ' png '),
(12, 'kind', 0, 1, ' image '),
(12, 'slug', 0, 1, ''),
(16, 'slug', 0, 1, ''),
(17, 'filename', 0, 1, ' tech task 3 zip '),
(17, 'extension', 0, 1, ' zip '),
(17, 'kind', 0, 1, ' compressed '),
(17, 'slug', 0, 1, ''),
(17, 'title', 0, 1, ' tech task 3 '),
(20, 'slug', 0, 1, ''),
(21, 'kind', 0, 1, ' image '),
(21, 'extension', 0, 1, ' png '),
(21, 'filename', 0, 1, ' placeholder image square png '),
(23, 'filename', 0, 1, ' placeholder image square 2021 10 16 213338 mqit png '),
(23, 'extension', 0, 1, ' png '),
(23, 'kind', 0, 1, ' image '),
(23, 'slug', 0, 1, ''),
(23, 'title', 0, 1, ' placeholder image square '),
(21, 'slug', 0, 1, ''),
(21, 'title', 0, 1, ' placeholder image square '),
(24, 'filename', 0, 1, ' placeholder image square 2x png '),
(24, 'extension', 0, 1, ' png '),
(24, 'kind', 0, 1, ' image '),
(24, 'slug', 0, 1, ''),
(24, 'title', 0, 1, ' placeholder image square 2x '),
(25, 'slug', 0, 1, ' blog '),
(25, 'title', 0, 1, ' blog '),
(26, 'title', 0, 1, ' about '),
(26, 'slug', 0, 1, ' about '),
(37, 'title', 0, 1, ' about '),
(45, 'slug', 0, 1, ''),
(46, 'slug', 0, 1, ''),
(86, 'filename', 0, 1, ' placeholder image square 2021 10 18 180803 pdbe png '),
(86, 'extension', 0, 1, ' png '),
(86, 'kind', 0, 1, ' image '),
(86, 'slug', 0, 1, ''),
(86, 'title', 0, 1, ' placeholder image square '),
(87, 'filename', 0, 1, ' placeholder image square3 png '),
(87, 'extension', 0, 1, ' png '),
(87, 'kind', 0, 1, ' image '),
(87, 'slug', 0, 1, ''),
(87, 'title', 0, 1, ' placeholder image square3 '),
(97, 'filename', 0, 1, ' placeholder image square 2021 10 18 182239 jrdn png '),
(97, 'extension', 0, 1, ' png '),
(97, 'kind', 0, 1, ' image '),
(97, 'slug', 0, 1, ''),
(97, 'title', 0, 1, ' placeholder image square '),
(98, 'filename', 0, 1, ' placeholder image square11 png '),
(98, 'extension', 0, 1, ' png '),
(98, 'kind', 0, 1, ' image '),
(98, 'slug', 0, 1, ''),
(98, 'title', 0, 1, ' placeholder image square11 ');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections`
--

CREATE TABLE `craft_sections` (
  `id` int NOT NULL,
  `structureId` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'end',
  `previewTargets` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `defaultPlacement`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Blog', 'blog', 'channel', 1, 'all', 'end', NULL, '2021-10-16 14:10:15', '2021-10-16 14:10:15', NULL, '7e91932c-0ddd-436a-a76b-323248640ad6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections_sites`
--

CREATE TABLE `craft_sections_sites` (
  `id` int NOT NULL,
  `sectionId` int NOT NULL,
  `siteId` int NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text COLLATE utf8_unicode_ci,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sections_sites`
--

INSERT INTO `craft_sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'blog/{slug}', 'blog/_entry', 1, '2021-10-16 14:10:15', '2021-10-16 14:10:15', '7be01e16-5af4-4cfb-b9b0-89fd6296242b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sequences`
--

CREATE TABLE `craft_sequences` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `next` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_sessions`
--

CREATE TABLE `craft_sessions` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, 'Hmar8twRdp0f0iOzVIOmG02hcFnUgEhsa7NkinsjjWPW8tfGhKR702g1K_vvRddk7s8bMZRS-1N1vH-MpNprRW9Qf412ne9f8La5', '2021-10-16 13:39:42', '2021-10-16 15:44:58', '795e141a-2553-4b7d-9219-b9f51ca41c5c'),
(3, 1, 'lSVtLmiLjFu8qnjISYhi-EyhXBD2fOlgAnbTFZBSASvFURH3RvCzyLMKJBHmTjTRMBC048PtA0hoTyj-EFH8K5KqcrVm0zmx4TBg', '2021-10-16 15:44:58', '2021-10-16 15:52:30', '48e0fd4b-2ca6-4674-959f-bce292afe654'),
(4, 1, 'fqi6ICoDoqxbFVZQBI0sf832lzgrky4_rarpSo8x_cwF19yGxhYsD8Jgll6ziTiYbaxL1eVxcD9Zc3MuexYqJXb1rr_NEck-N-6y', '2021-10-16 15:52:30', '2021-10-16 15:52:40', '60c1f042-b3d5-47dc-9bc8-631149d642a9');

-- --------------------------------------------------------

--
-- Table structure for table `craft_shunnedmessages`
--

CREATE TABLE `craft_shunnedmessages` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_sitegroups`
--

CREATE TABLE `craft_sitegroups` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sitegroups`
--

INSERT INTO `craft_sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'test1', '2021-10-15 18:48:42', '2021-10-15 18:48:42', NULL, '4025f19c-5d4f-4509-85a3-91636ddb1c6c');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sites`
--

CREATE TABLE `craft_sites` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sites`
--

INSERT INTO `craft_sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 1, 'test1', 'default', 'en', 1, '$PRIMARY_SITE_URL', 1, '2021-10-15 18:48:42', '2021-10-15 18:48:42', NULL, '0083cb2d-c6a7-44ad-8b95-a77d0d767a10');

-- --------------------------------------------------------

--
-- Table structure for table `craft_structureelements`
--

CREATE TABLE `craft_structureelements` (
  `id` int NOT NULL,
  `structureId` int NOT NULL,
  `elementId` int DEFAULT NULL,
  `root` int UNSIGNED DEFAULT NULL,
  `lft` int UNSIGNED NOT NULL,
  `rgt` int UNSIGNED NOT NULL,
  `level` smallint UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_structureelements`
--

INSERT INTO `craft_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 8, 0, '2021-10-16 17:11:53', '2021-10-17 12:18:30', 'ed1a17fa-1e1e-4ec0-9f78-7876e58e86f5'),
(2, 1, 7, 1, 2, 3, 1, '2021-10-16 17:11:53', '2021-10-16 17:11:53', 'dda11591-5ad3-4c29-9bc7-298335575267'),
(3, 1, 25, 1, 4, 5, 1, '2021-10-17 12:18:19', '2021-10-17 12:18:19', '942b4a5c-a832-43fb-836f-0861768d12c2'),
(4, 1, 26, 1, 6, 7, 1, '2021-10-17 12:18:30', '2021-10-17 12:18:30', 'f48e46e1-1952-42de-93e9-5c3fd1c635c6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_structures`
--

CREATE TABLE `craft_structures` (
  `id` int NOT NULL,
  `maxLevels` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_structures`
--

INSERT INTO `craft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, '2021-10-16 16:22:12', '2021-10-16 16:22:12', NULL, '9afc5319-4383-443d-bd05-4d8738dd1acf');

-- --------------------------------------------------------

--
-- Table structure for table `craft_systemmessages`
--

CREATE TABLE `craft_systemmessages` (
  `id` int NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_taggroups`
--

CREATE TABLE `craft_taggroups` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tags`
--

CREATE TABLE `craft_tags` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecacheelements`
--

CREATE TABLE `craft_templatecacheelements` (
  `id` int NOT NULL,
  `cacheId` int NOT NULL,
  `elementId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecachequeries`
--

CREATE TABLE `craft_templatecachequeries` (
  `id` int NOT NULL,
  `cacheId` int NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecaches`
--

CREATE TABLE `craft_templatecaches` (
  `id` int NOT NULL,
  `siteId` int NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tokens`
--

CREATE TABLE `craft_tokens` (
  `id` int NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint UNSIGNED DEFAULT NULL,
  `usageCount` tinyint UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_tokens`
--

INSERT INTO `craft_tokens` (`id`, `token`, `route`, `usageLimit`, `usageCount`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'rCCEDx7K6qSrjRBWxsXNFB8xVVImEJOt', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":2,\"siteId\":1,\"draftId\":1,\"revisionId\":null,\"provisional\":false}]', NULL, NULL, '2021-10-17 14:16:15', '2021-10-16 14:16:15', '2021-10-16 14:16:15', '8a71d029-1f56-4e36-8678-33b809dc96e9'),
(2, 'BSoR2L1zoNKRlUVfbG1SJS2oWNF45RJU', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-17 19:44:13', '2021-10-16 19:44:13', '2021-10-16 19:44:13', '02003386-3b3b-4fc5-8e09-d8da51b05aa7'),
(3, 'zbJMGHaLuKguGnyM9UN6in7DJy1VRjCF', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-17 19:48:41', '2021-10-16 19:48:41', '2021-10-16 19:48:41', '4d570204-ac0e-44f3-b1a8-29c385bd3109'),
(4, 'hubN3Le0LNqOqmi4WX8aIERqfsA3zhIg', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-17 21:01:06', '2021-10-16 21:01:06', '2021-10-16 21:01:06', '763112cf-6bf2-4a6c-97b5-6ed42affd9fd'),
(5, 'acaxmCjAv8Ij0o5omoO3cEkJcDlsUmUM', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-17 21:03:29', '2021-10-16 21:03:29', '2021-10-16 21:03:29', '04997889-23d9-4442-92f9-d3de65a15005'),
(6, 'NB4Ea-Cg8lgDNhx-W-z0RMEINVZxlOH4', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-17 21:14:04', '2021-10-16 21:14:04', '2021-10-16 21:14:04', '1d4a6166-2a5f-4440-995d-ed19212a66bc'),
(7, 'vvzqg6fTNa9FLZZymlFIZJrhoA9Lsy3f', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-17 21:19:35', '2021-10-16 21:19:35', '2021-10-16 21:19:35', '919d0d7c-d9fe-4a96-84d4-c7c60c152582'),
(8, '03H36r2kEx63eqRJRP1UXm0-BIVJAe68', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-17 21:22:10', '2021-10-16 21:22:10', '2021-10-16 21:22:10', '4f7f4c4a-bd73-4aa5-98f6-328004a5fc71'),
(9, 'ogBENWtCiYO6nEF1WsIHkS3ytU_ZFj3b', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-18 11:27:49', '2021-10-17 11:27:49', '2021-10-17 11:27:49', '6fe3a6bb-0438-4bad-afae-962e3d820e9f'),
(10, '788dA-xdlXwCPuvMafyhpdYmtxsWv0Fr', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-18 11:30:15', '2021-10-17 11:30:15', '2021-10-17 11:30:15', 'c51ffdd0-ff1b-4ee2-8296-52810ace652b'),
(11, 'ttEQtwSI3HPSVCW9O3g55oGxkHqz9134', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-18 11:33:36', '2021-10-17 11:33:36', '2021-10-17 11:33:36', 'c7bf0c47-eb88-4057-9337-d4cb9e00f2ec'),
(12, 'jGyk65xOU_5amG14iMeYqSsUrd2eDfgg', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-18 11:36:54', '2021-10-17 11:36:54', '2021-10-17 11:36:54', '9875a4d2-9e9e-4cfc-b8b4-6f16d3c8ee3c'),
(13, 'iMol4r99iT5RJvwtwvtO1OtqRfpw4zfO', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-18 11:37:37', '2021-10-17 11:37:37', '2021-10-17 11:37:37', '99d6ccb3-cf16-4265-a655-70078bf0dacc'),
(14, '9Tl2DBezstN2bBpC-GPlw3aN-h-BfLZ-', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-18 11:38:22', '2021-10-17 11:38:22', '2021-10-17 11:38:22', '91810766-6e51-40bb-858c-4f6e43a86b27'),
(15, 'IvEvkOJWYiXwDuPofPiP4ErbdTOwW9R2', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-18 11:41:02', '2021-10-17 11:41:02', '2021-10-17 11:41:02', '1817aa2f-6ae5-47a2-9f78-3e93810a1a83'),
(16, 'WxBMrT_G4GPmUQ3CDh7m6WOzOL13g9qq', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-18 11:49:30', '2021-10-17 11:49:30', '2021-10-17 11:49:30', '99be9ec8-618f-4959-ae36-5b2d21531aa5'),
(17, 'jUWDIGzY2O8ubV3Em6g_2MH-nyG8vq18', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-18 12:06:36', '2021-10-17 12:06:37', '2021-10-17 12:06:37', '8d3eecf6-22dc-4d30-b869-b44ae61006c0'),
(18, '9gQc0yWYTMWIR75yYs16ThtckCLdHmX5', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-18 12:19:12', '2021-10-17 12:19:12', '2021-10-17 12:19:12', '08f62452-106e-4da1-97d3-50c4fb6b14d4'),
(19, 'yMOqp1d_1tg4oeIRY4sIHXQ2x4mtAL8I', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":4,\"siteId\":1,\"draftId\":4,\"revisionId\":null,\"provisional\":true}]', NULL, NULL, '2021-10-18 12:19:12', '2021-10-17 12:19:12', '2021-10-17 12:19:12', '1fcef079-1289-4b36-8105-d1c1ce9b8cff'),
(20, 'H1HRErsGuUYyiR-D4tIKJYuWdkF9Ji8i', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":37,\"siteId\":1,\"draftId\":null,\"revisionId\":null,\"provisional\":false}]', NULL, NULL, '2021-10-18 13:03:57', '2021-10-17 13:03:57', '2021-10-17 13:03:57', '68bf6a91-4863-476f-b795-f41c06a62ba2');

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups`
--

CREATE TABLE `craft_usergroups` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups_users`
--

CREATE TABLE `craft_usergroups_users` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `userId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions`
--

CREATE TABLE `craft_userpermissions` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_usergroups`
--

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int NOT NULL,
  `permissionId` int NOT NULL,
  `groupId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_users`
--

CREATE TABLE `craft_userpermissions_users` (
  `id` int NOT NULL,
  `permissionId` int NOT NULL,
  `userId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpreferences`
--

CREATE TABLE `craft_userpreferences` (
  `userId` int NOT NULL,
  `preferences` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_userpreferences`
--

INSERT INTO `craft_userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en\"}');

-- --------------------------------------------------------

--
-- Table structure for table `craft_users`
--

CREATE TABLE `craft_users` (
  `id` int NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photoId` int DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin', NULL, NULL, NULL, 'sanae.k1986@gmail.com', '$2y$13$WOnX3TweGpHS1n5DGKecu.JutkH3izWE6nV82LP/Q44W5vTrGo0WO', 1, 0, 0, 0, '2021-10-18 20:49:58', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '2021-10-15 18:48:43', '2021-10-15 18:48:43', '2021-10-18 20:49:58', '59ec7dff-bf0c-461c-a65a-099a9464e93f');

-- --------------------------------------------------------

--
-- Table structure for table `craft_volumefolders`
--

CREATE TABLE `craft_volumefolders` (
  `id` int NOT NULL,
  `parentId` int DEFAULT NULL,
  `volumeId` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_volumefolders`
--

INSERT INTO `craft_volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Blog', '', '2021-10-16 16:16:05', '2021-10-16 16:16:05', 'b1c33c9a-8d8b-4dc5-b960-e85321a1529b'),
(2, NULL, NULL, 'Temporary source', NULL, '2021-10-16 16:42:15', '2021-10-16 16:42:15', '85bae0dc-5c7b-4303-adee-ad8e1bca92c2'),
(3, 2, NULL, 'user_1', 'user_1/', '2021-10-16 16:42:15', '2021-10-16 16:42:15', 'c16f10cd-2e4f-43db-89f5-98088b39c17f');

-- --------------------------------------------------------

--
-- Table structure for table `craft_volumes`
--

CREATE TABLE `craft_volumes` (
  `id` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_volumes`
--

INSERT INTO `craft_volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 2, 'Blog', 'blog', 'craft\\volumes\\Local', 1, '@web/assets/blog', 'site', NULL, '{\"path\":\"/Users/sanaeelkhounchoufi/Sites/localhost/Craft-3/web/assets/blog\"}', 1, '2021-10-16 16:16:05', '2021-10-16 16:16:05', NULL, '1b917b4f-ab49-47ad-9d59-9af2e408f825');

-- --------------------------------------------------------

--
-- Table structure for table `craft_widgets`
--

CREATE TABLE `craft_widgets` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `colspan` tinyint DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"siteId\":1,\"section\":\"*\",\"limit\":10}', 1, '2021-10-16 01:35:54', '2021-10-16 01:35:54', '7ed7978e-def1-4b41-85f0-3df86de7c94c'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2021-10-16 01:35:55', '2021-10-16 01:35:55', 'd45b16d0-21f6-46bf-8195-79b63659e594'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2021-10-16 01:35:55', '2021-10-16 01:35:55', 'fab66815-2d33-47a7-8c89-6fc14b8648a5'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2021-10-16 01:35:55', '2021-10-16 01:35:55', 'df044558-ae10-4ded-9bbc-0c2d9bf6854c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `craft_announcements`
--
ALTER TABLE `craft_announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_nimrgaxfngshtbatzhujzrufundennycuohh` (`userId`,`unread`,`dateRead`,`dateCreated`),
  ADD KEY `craft_idx_aoburxngvyrfxfnwonzdlgaysaqplwshqcby` (`dateRead`),
  ADD KEY `craft_fk_nvdkegvrznccalpiwltnjdorymuaeqknswbu` (`pluginId`);

--
-- Indexes for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_qivabslhkyuilqfhbmuvkioljkjpcvdjmzbc` (`sessionId`,`volumeId`),
  ADD KEY `craft_idx_dxpfuwwvnomysnfzgdjkexapaqbuygmxofig` (`volumeId`);

--
-- Indexes for table `craft_assets`
--
ALTER TABLE `craft_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_xjinpasevrmidkwedunyrrrlnkrijrzvflzt` (`filename`,`folderId`),
  ADD KEY `craft_idx_xpluzbnovnldmofjvztxsxaddixlqscphavv` (`folderId`),
  ADD KEY `craft_idx_hgxkgwmvfomhzasnykpdhnfurqvphyegqksk` (`volumeId`),
  ADD KEY `craft_fk_orctvdnopqdjvxgzdifeomsbpxtpdldpdxiz` (`uploaderId`);

--
-- Indexes for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_tqjbwiienhejmklpvyeturckohzgpjqoyzgu` (`volumeId`,`assetId`,`location`);

--
-- Indexes for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_kpsdpjqepbargybiioyacfqosjqkghcsisjt` (`name`),
  ADD KEY `craft_idx_yppfyjejdtkzxcikdfqhyhivynizhvucmral` (`handle`);

--
-- Indexes for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_ebkfrvanwwgmeywdgsjcmikpkmkimskmbntb` (`groupId`),
  ADD KEY `craft_fk_bbpkrpxvyzhiedehecdqfdmikzyefhowpmqa` (`parentId`);

--
-- Indexes for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_afwspxbhpivqrohhwdebsxhoehhntbngtudg` (`name`),
  ADD KEY `craft_idx_dzfhohhlrlbrdtxmobmpeuyykesaidoxkqpv` (`handle`),
  ADD KEY `craft_idx_dmpoofyfsrwanuanamjqcgtlnbdzyejmemky` (`structureId`),
  ADD KEY `craft_idx_ikbhwbhnpaqoyrsidnsmofgiwoljiisdeumj` (`fieldLayoutId`),
  ADD KEY `craft_idx_zkpnphwuaunoaodrvuwiofmlxiuqbnysysiw` (`dateDeleted`);

--
-- Indexes for table `craft_categorygroups_sites`
--
ALTER TABLE `craft_categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_agswouoscbpzktpiqmjaieccssykaeoshrwi` (`groupId`,`siteId`),
  ADD KEY `craft_idx_eppkxwrkbltdkkrurhecsfztvsuwongglknh` (`siteId`);

--
-- Indexes for table `craft_changedattributes`
--
ALTER TABLE `craft_changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `craft_idx_ylhrlufolxenagkbsgghetgwdukgiuiuhmsu` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `craft_fk_xhonomlzyzlgixghuxpigwgeoeuxcfoteyfe` (`siteId`),
  ADD KEY `craft_fk_guzqvcojgcgxcnwetuaionevsdmxpqkyroum` (`userId`);

--
-- Indexes for table `craft_changedfields`
--
ALTER TABLE `craft_changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  ADD KEY `craft_idx_nsadjodqcehuvlsgrpvfdapmzczvugpytzid` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `craft_fk_fxtsyeeterlknyjwgolmwxvfekxcgfizexyy` (`siteId`),
  ADD KEY `craft_fk_acdsnewyurggtdvrfvdnziieeeioumvbmusk` (`fieldId`),
  ADD KEY `craft_fk_bhkhizgazyxunizfswoeivhozoyiedqjzktn` (`userId`);

--
-- Indexes for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_ujhcweftwbtqkcfbauumyutmxzvawzpzqjvw` (`elementId`,`siteId`),
  ADD KEY `craft_idx_pgbqiofautjjutepgssxhhpsjkghfabbgxav` (`siteId`),
  ADD KEY `craft_idx_vldyawuevacjlcaqyfdyrlesmufwjmjjbhvr` (`title`);

--
-- Indexes for table `craft_craftidtokens`
--
ALTER TABLE `craft_craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fk_wkaphttsuvzfmgszlyannxlmjzgltmxhqhvc` (`userId`);

--
-- Indexes for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_zhvemcxrrervxgomkrulbksmbwntjjsxzkzx` (`key`,`fingerprint`);

--
-- Indexes for table `craft_drafts`
--
ALTER TABLE `craft_drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_mxdbcinbjshfoepaolsghykpifobavbirqmt` (`creatorId`,`provisional`),
  ADD KEY `craft_idx_vyjyqsyvqofelvzrcfrzqamidztvjsruyulc` (`saved`),
  ADD KEY `craft_fk_jorclgshlozoymhkqpbhgpanadgsqrfqcpek` (`sourceId`);

--
-- Indexes for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_qufmqlgnmlzbmbpxkztuntjwltjmiryxobsb` (`type`);

--
-- Indexes for table `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_oecfqyyqpwfiwdxxlptzhgbazzhuwxdnrlow` (`dateDeleted`),
  ADD KEY `craft_idx_vrrufpmiqlzxtxzgyirnqkcnmovnfrxzoyyv` (`fieldLayoutId`),
  ADD KEY `craft_idx_mncrwlcijkqnfmmozeszceztvuumngxbulam` (`type`),
  ADD KEY `craft_idx_wiynaebxbmlbylrxpotlblloqzfufxsslctb` (`enabled`),
  ADD KEY `craft_idx_pcybshdvbsulvbwunvmyyqlifuwppwfpgqyv` (`archived`,`dateCreated`),
  ADD KEY `craft_idx_uofambgdilazvqagivubakyeycizzaszrjcv` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`),
  ADD KEY `craft_fk_srgquknfuedbkamxcinnkavthrpeoyohwldx` (`canonicalId`),
  ADD KEY `craft_fk_lsqoycesahdhpaugqhxliajypfyuagiuaael` (`draftId`),
  ADD KEY `craft_fk_npubwlkivimefamvnvybaprxdaupzucixcjm` (`revisionId`);

--
-- Indexes for table `craft_elements_sites`
--
ALTER TABLE `craft_elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_qgiakcummtdqpmajbkcpzmkghxzbqnzdseax` (`elementId`,`siteId`),
  ADD KEY `craft_idx_vzxwncuhyjdzytskscwsjcoaoixptvuoycyd` (`siteId`),
  ADD KEY `craft_idx_vbmisqnlunwcmuinxjbgrwvqlmdtmllrivxa` (`slug`,`siteId`),
  ADD KEY `craft_idx_uuxavkkzxrnogtmrlckfxmhsdxwnquegrejp` (`enabled`),
  ADD KEY `craft_idx_aedizxrkktkgrhfzdvqeiilkpgdtojrpoicg` (`uri`,`siteId`);

--
-- Indexes for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_pheuuabeqxhlyxiulzeqxogmoebbetcgadfz` (`postDate`),
  ADD KEY `craft_idx_bzgwwukpquvwufuknddycijtjnmrzqrjzrdz` (`expiryDate`),
  ADD KEY `craft_idx_millpsersufebepnremukvdifixhdcbrqhyg` (`authorId`),
  ADD KEY `craft_idx_pqttuezfhxdxboqkfwapjipckmdeukruorbd` (`sectionId`),
  ADD KEY `craft_idx_rzdgqiogkfmozfzpzuobmbkeyvjtjodowbvm` (`typeId`),
  ADD KEY `craft_fk_jpmrvonbtbyqkyqdxkbxewfwfbwzjddvegbc` (`parentId`);

--
-- Indexes for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_hdaqlafghmnxeddnjywnahyydfdocvduppjv` (`name`,`sectionId`),
  ADD KEY `craft_idx_lthzbumqkqtzriwiglstuqjhjyjibitzszop` (`handle`,`sectionId`),
  ADD KEY `craft_idx_xgbjyuxsappgesdbxmrsemuorgntxqujeqtg` (`sectionId`),
  ADD KEY `craft_idx_eznqtjlwznligiglmhmbtfcsztfpzskmwmsh` (`fieldLayoutId`),
  ADD KEY `craft_idx_vzlzthbsitbxnpqlcouprdauonbgfiuxywwd` (`dateDeleted`);

--
-- Indexes for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_msqswdxaqzcndycmfdpuaaozrwzvicdzqgrm` (`name`),
  ADD KEY `craft_idx_mjbatavfhrbelpurjfhlaueufqqyzlciknof` (`dateDeleted`,`name`);

--
-- Indexes for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_hcunyhzznwbjhxzidowlbaefkacdymlqkmld` (`layoutId`,`fieldId`),
  ADD KEY `craft_idx_tciccjxiojgjlmignedjazwzrhlaxavxeiuw` (`sortOrder`),
  ADD KEY `craft_idx_xgjpotcwqbcteemozqazizcddmkzyezmdzbk` (`tabId`),
  ADD KEY `craft_idx_qbbsofyvxcvokkuhwzoqaucxmyvoznfbinra` (`fieldId`);

--
-- Indexes for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_dkdqyofzmsxoncfhedxvjhdxpognqlnarria` (`dateDeleted`),
  ADD KEY `craft_idx_boxcmtmhxgpevbkfzgaeoghbmtxxuzqkxane` (`type`);

--
-- Indexes for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_zewxuexxrmxqtbfjwdfgbjosotzpqjixtskt` (`sortOrder`),
  ADD KEY `craft_idx_qrrcydiaruuylrusypywrdusdgtopphgjtdf` (`layoutId`);

--
-- Indexes for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_bmsbultfcowjajycctsscsesmrnjmzypvrop` (`handle`,`context`),
  ADD KEY `craft_idx_xznwjjbfzugphgomfnwpqoidvfwukrwxrwkn` (`groupId`),
  ADD KEY `craft_idx_zdrujhtfpmxbmspqisasipcwyttxltaiicld` (`context`);

--
-- Indexes for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_xsljtrhjsexwmwbwozfgwmvhhpfcuwkswmvt` (`name`),
  ADD KEY `craft_idx_gnttqmdzpspzuqsfeesxoqibiffbhcuibccd` (`handle`),
  ADD KEY `craft_idx_ghouobmfrsasevikbfjtsvsravsqbkfgcerl` (`fieldLayoutId`),
  ADD KEY `craft_idx_npbtacnubfhwnwauzpnjpbdsyycjvxkxgcat` (`sortOrder`);

--
-- Indexes for table `craft_gqlschemas`
--
ALTER TABLE `craft_gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_gqltokens`
--
ALTER TABLE `craft_gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_tnknkgjyaxtnlprmhkjrgvndelregjvrmius` (`accessToken`),
  ADD UNIQUE KEY `craft_idx_dutzzxnfhccbgllvkpgeqyysmpfpovthgqsh` (`name`),
  ADD KEY `craft_fk_aeadkscgsffoatcshncfzbebdnavlhrvdsuc` (`schemaId`);

--
-- Indexes for table `craft_info`
--
ALTER TABLE `craft_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_gczagzignmnyvzyjqrmhzihqsxpvljihakad` (`ownerId`),
  ADD KEY `craft_idx_olapkusiazvlkzvejnlzbmgxsvxsoikizdpn` (`fieldId`),
  ADD KEY `craft_idx_xuvfqilaauthwynzelyruthmbbqfotnrnovl` (`typeId`),
  ADD KEY `craft_idx_gdafgayeacijwolymnqsmrhzzaonkvplidpg` (`sortOrder`);

--
-- Indexes for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_lhkjzkfcfgkalbawsmtqeizznjumnmphefjv` (`name`,`fieldId`),
  ADD KEY `craft_idx_pskvofldtxtlpjjgwwdcgmzwpnjzuvpsxdpl` (`handle`,`fieldId`),
  ADD KEY `craft_idx_uwekmwswsidmrqvtpxatscvcoadeejhnaads` (`fieldId`),
  ADD KEY `craft_idx_iurturuhnxwexubobkrgtxwujlbdewjrizih` (`fieldLayoutId`);

--
-- Indexes for table `craft_matrixcontent_postcontent`
--
ALTER TABLE `craft_matrixcontent_postcontent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_nqfeijmhtsdyqowhcecsxyfbvjpthemdutix` (`elementId`,`siteId`),
  ADD KEY `craft_fk_yosozqlczrhnejubjkeoucrsqdtthqlnynhx` (`siteId`);

--
-- Indexes for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_gnyaodbkodktrdhyyouffhtrokjbkydrxuwx` (`track`,`name`);

--
-- Indexes for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_bpweoljgpwlflrumyjbtvxwpgrvtxyzeritp` (`handle`);

--
-- Indexes for table `craft_projectconfig`
--
ALTER TABLE `craft_projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `craft_queue`
--
ALTER TABLE `craft_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_rqzfvpdczsewxhferoxeqpwcmpjmpgqcgyrg` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `craft_idx_dcocuspjucogfqroitxsmdtdauxrlmkwatup` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_byhvxrpyrfaepavqzqxuarfvsgzpoquagpkn` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `craft_idx_iqlmsooltfacjvhjzbxklukrpcmtqingfcnr` (`sourceId`),
  ADD KEY `craft_idx_vtgeycladxrgpmmrgdbaldmncedfulknonht` (`targetId`),
  ADD KEY `craft_idx_exlqqhyjqvdedvmxoyageodndokipfcxisjm` (`sourceSiteId`);

--
-- Indexes for table `craft_resourcepaths`
--
ALTER TABLE `craft_resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `craft_revisions`
--
ALTER TABLE `craft_revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_yubjawufndtqbkmtqbbvvswsbrjgctukxorz` (`sourceId`,`num`),
  ADD KEY `craft_fk_vjbrixgyivpjzgyavxhnaqpgnxuvpuvuclfk` (`creatorId`);

--
-- Indexes for table `craft_searchindex`
--
ALTER TABLE `craft_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `craft_searchindex` ADD FULLTEXT KEY `craft_idx_fginbrtzhdxyixltvjijjnadkrmidqywlnsf` (`keywords`);

--
-- Indexes for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_xddcrbirwvrakoepvimhgqdnehwjcvpqkign` (`handle`),
  ADD KEY `craft_idx_qxmtqdstmrldozwrmiiqwdteinycveebhwaf` (`name`),
  ADD KEY `craft_idx_bdvqrsemspzmhfejkuajnkkkzpenmfipfsle` (`structureId`),
  ADD KEY `craft_idx_ctyxojdvplqrgrapfkthiwddkztoonsywxir` (`dateDeleted`);

--
-- Indexes for table `craft_sections_sites`
--
ALTER TABLE `craft_sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_vccepahynhpmrapdxwxpfqvbeftvstwlkbfc` (`sectionId`,`siteId`),
  ADD KEY `craft_idx_nzxjopruoduvaqtqqcafcpqntxjmitrjugff` (`siteId`);

--
-- Indexes for table `craft_sequences`
--
ALTER TABLE `craft_sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_nvgkxbcvnoobboccibbzuycqvxlnpktcegav` (`uid`),
  ADD KEY `craft_idx_bsjjmuoivxddgyvytbzxwsxijarvyjkfffiv` (`token`),
  ADD KEY `craft_idx_hlwgyqmgjrtrktdftitnvegsdpmjivuunilq` (`dateUpdated`),
  ADD KEY `craft_idx_wqgdhmwbvqpmifsyrxhblbmltamkuycxwjxd` (`userId`);

--
-- Indexes for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_deiveyqevebuovpcwqmsbnuptopyybqnznwt` (`userId`,`message`);

--
-- Indexes for table `craft_sitegroups`
--
ALTER TABLE `craft_sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_pvwfkwpjmjhecjoszbjfatrcwfgimaqzzcqj` (`name`);

--
-- Indexes for table `craft_sites`
--
ALTER TABLE `craft_sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_ezjzqdtkovrcwxreioksvpcojgojskbatqnp` (`dateDeleted`),
  ADD KEY `craft_idx_mctaterltvakrfbtyzgwqimvzwhnrciezkks` (`handle`),
  ADD KEY `craft_idx_szhosmdofyqwnkaziznzhzhlitxtnyudrcov` (`sortOrder`),
  ADD KEY `craft_fk_mzggcflymgshhchlvudiojbhswcunnkuopgz` (`groupId`);

--
-- Indexes for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_cykihaccybrmekhhzsbtwhhirhmdgsqnyfbp` (`structureId`,`elementId`),
  ADD KEY `craft_idx_hjnzftvhycnebrilfkpznblqmbdlmcrvonoq` (`root`),
  ADD KEY `craft_idx_wsvrsbyogkbfsmgpzaxoqmnzskpsxwutlvxp` (`lft`),
  ADD KEY `craft_idx_zijkqdfjabvuhygqrvctzjoqsthtphaxqhlp` (`rgt`),
  ADD KEY `craft_idx_wcwkmlhasdxcvqylpmrxqqkskbxlkscfvbhw` (`level`),
  ADD KEY `craft_idx_drnlkdwxqxulozcujphlitcfgfkgbeagygqf` (`elementId`);

--
-- Indexes for table `craft_structures`
--
ALTER TABLE `craft_structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_gomczgualdgnxvtvudnmmtxcspeiaulfytnk` (`dateDeleted`);

--
-- Indexes for table `craft_systemmessages`
--
ALTER TABLE `craft_systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_tiodtnpukurbdsokuycmqihdrllmtskmtpdi` (`key`,`language`),
  ADD KEY `craft_idx_ivtisozgadmybnbblfecbsrbeiwrykctfstx` (`language`);

--
-- Indexes for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_wtmgmbtseizlraxoerznkkpmfrfcmfdouxuq` (`name`),
  ADD KEY `craft_idx_kglmkzvxxdsmhsabpzkrwmogbujmhklzydte` (`handle`),
  ADD KEY `craft_idx_khlvjywzspjhkkwlsjvltkcvfrexpauojgle` (`dateDeleted`),
  ADD KEY `craft_fk_uqluiagvhxwfyteigqugrdozbcyhdblcjnlq` (`fieldLayoutId`);

--
-- Indexes for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_qghoooqgjbwaorgebggiugsrmfkfbkzpguuz` (`groupId`);

--
-- Indexes for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_vruddhncgkgcfskldgnxvfdmonjnwurdxlhw` (`cacheId`),
  ADD KEY `craft_idx_okdxxndnvizobgahpzfsgzhatlxillnoffoy` (`elementId`);

--
-- Indexes for table `craft_templatecachequeries`
--
ALTER TABLE `craft_templatecachequeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_jzcvgmxhiffhmjamtjugvwhwrtzrteqabizm` (`cacheId`),
  ADD KEY `craft_idx_jnjsvmayujyixnfevbiaadmgsxpaawlgavrp` (`type`);

--
-- Indexes for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_yrfhamhausqypopjjzyqoedglpkurtvtwwea` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  ADD KEY `craft_idx_mywfiygmhsxkwoxpfpacdfyswziaasqdpmjb` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `craft_idx_xlshgvujtktjckmknkdhxhivrnpckctkpqfn` (`siteId`);

--
-- Indexes for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_cmngslhojrsdcxrecxbdcvndoohbkhhblluc` (`token`),
  ADD KEY `craft_idx_etququuhgerlyqnnttidzzdtzpfjgacwkutv` (`expiryDate`);

--
-- Indexes for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_lrwmhnsbxmwdpsannjvkzeptrvfqjoqgaevc` (`handle`),
  ADD KEY `craft_idx_khxxdndkpqschbkifuhfzuvqtmdgwtuuanve` (`name`);

--
-- Indexes for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_soxlmttcnsixrubfafiybdwxwaqmogfounim` (`groupId`,`userId`),
  ADD KEY `craft_idx_hmeamqbcuncjzdrckfifqblghmmtoabfpahm` (`userId`);

--
-- Indexes for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_aunungnredruvonhyaorhxiuuqsarrudqlyt` (`name`);

--
-- Indexes for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_dyjkgladfgprdjbkghcblpikyhwjaplyruak` (`permissionId`,`groupId`),
  ADD KEY `craft_idx_fjvvquqbdhevifublgninxjybfiycxlduenj` (`groupId`);

--
-- Indexes for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_qactuuskwjjddrnfveowokpxsxdwmwmmhqzc` (`permissionId`,`userId`),
  ADD KEY `craft_idx_xbmzmqvrvubswytrvgkyxjroipifugphveuk` (`userId`);

--
-- Indexes for table `craft_userpreferences`
--
ALTER TABLE `craft_userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_irouxwgahjjihmvrebyxvdcfllvotinrryyf` (`uid`),
  ADD KEY `craft_idx_pusbphuffvrnsaowbimhljjddsuhyurgxaaq` (`verificationCode`),
  ADD KEY `craft_idx_vutamuqcqejozudwunlkuflkfnlqhrvuvyfa` (`email`),
  ADD KEY `craft_idx_xhsmchookeitfrkroonzkltjjhodsoksvxbr` (`username`),
  ADD KEY `craft_fk_cgwlqlhvdskhvnczacaxfzdwyiollqoucpvx` (`photoId`);

--
-- Indexes for table `craft_volumefolders`
--
ALTER TABLE `craft_volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_idx_jasoxpkgjrgyjtndrwspvgpukdpxvphtczzm` (`name`,`parentId`,`volumeId`),
  ADD KEY `craft_idx_qzngtohsnloqqqoejihchaubrttvqrrmhwvt` (`parentId`),
  ADD KEY `craft_idx_ijsjnrqxovomqrcdxuqwlhwpscvfhmzprelz` (`volumeId`);

--
-- Indexes for table `craft_volumes`
--
ALTER TABLE `craft_volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_hoknmydzevdixusfxiaefjidalduqwcetpkd` (`name`),
  ADD KEY `craft_idx_xpxxibocdqnqazxhwxadhxuowjkcvgyfpaqk` (`handle`),
  ADD KEY `craft_idx_yeunsinmqcqbcavlmfwqnruxgwrqwywwvdkm` (`fieldLayoutId`),
  ADD KEY `craft_idx_vassctpsyeijxhqlpuuqeaxxmkkqappbsawa` (`dateDeleted`);

--
-- Indexes for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_idx_dgyssfmkqhfngaumbzyfxdepwrdmuabkcada` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `craft_announcements`
--
ALTER TABLE `craft_announcements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_categorygroups_sites`
--
ALTER TABLE `craft_categorygroups_sites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_content`
--
ALTER TABLE `craft_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `craft_craftidtokens`
--
ALTER TABLE `craft_craftidtokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1131;

--
-- AUTO_INCREMENT for table `craft_drafts`
--
ALTER TABLE `craft_drafts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_elements`
--
ALTER TABLE `craft_elements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `craft_elements_sites`
--
ALTER TABLE `craft_elements_sites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `craft_fields`
--
ALTER TABLE `craft_fields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_gqlschemas`
--
ALTER TABLE `craft_gqlschemas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_gqltokens`
--
ALTER TABLE `craft_gqltokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_info`
--
ALTER TABLE `craft_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `craft_matrixcontent_postcontent`
--
ALTER TABLE `craft_matrixcontent_postcontent`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_queue`
--
ALTER TABLE `craft_queue`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `craft_relations`
--
ALTER TABLE `craft_relations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `craft_revisions`
--
ALTER TABLE `craft_revisions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `craft_sections`
--
ALTER TABLE `craft_sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_sections_sites`
--
ALTER TABLE `craft_sections_sites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_sitegroups`
--
ALTER TABLE `craft_sitegroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_sites`
--
ALTER TABLE `craft_sites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `craft_structures`
--
ALTER TABLE `craft_structures`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_systemmessages`
--
ALTER TABLE `craft_systemmessages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_templatecachequeries`
--
ALTER TABLE `craft_templatecachequeries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_userpreferences`
--
ALTER TABLE `craft_userpreferences`
  MODIFY `userId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_volumefolders`
--
ALTER TABLE `craft_volumefolders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `craft_volumes`
--
ALTER TABLE `craft_volumes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `craft_announcements`
--
ALTER TABLE `craft_announcements`
  ADD CONSTRAINT `craft_fk_exdyzwpbnyyvunegqpmezdopmnpywkbbcasy` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_nvdkegvrznccalpiwltnjdorymuaeqknswbu` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_fk_eqpvrevbqrjittteytuuquiavpbyblkyxaqs` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assets`
--
ALTER TABLE `craft_assets`
  ADD CONSTRAINT `craft_fk_akxxgxxgqgkdejiynjsqbxsawcngzgityvzp` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_ilamnczilqdukxwtfrutqxehtdjrwejyrhri` FOREIGN KEY (`folderId`) REFERENCES `craft_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_orctvdnopqdjvxgzdifeomsbpxtpdldpdxiz` FOREIGN KEY (`uploaderId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_ugcujuiyqxjnanzhiksgpqukrkrplricxuqh` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_fk_bbpkrpxvyzhiedehecdqfdmikzyefhowpmqa` FOREIGN KEY (`parentId`) REFERENCES `craft_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_dnrshlkagcotqescgvfijycglsjuzssryvxw` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_vktsfbspmumkmkihtqyxlfosacibozbykvnl` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_fk_baprvkezoojqblahiedlweaicqskxhdzxlha` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_xahwgntdgrnytssfuzudvvmflnourbzllrdv` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_categorygroups_sites`
--
ALTER TABLE `craft_categorygroups_sites`
  ADD CONSTRAINT `craft_fk_dpimnanocdahnhouiredisdafnghxnrgqoec` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_kmskmnmnyvopifdhcjapiraqonbuxxpzllir` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_changedattributes`
--
ALTER TABLE `craft_changedattributes`
  ADD CONSTRAINT `craft_fk_guzqvcojgcgxcnwetuaionevsdmxpqkyroum` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_jovqnzyqpzwsywwhqqgdpdgifcbvoborkkvu` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_xhonomlzyzlgixghuxpigwgeoeuxcfoteyfe` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_changedfields`
--
ALTER TABLE `craft_changedfields`
  ADD CONSTRAINT `craft_fk_acdsnewyurggtdvrfvdnziieeeioumvbmusk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_bhkhizgazyxunizfswoeivhozoyiedqjzktn` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_fxtsyeeterlknyjwgolmwxvfekxcgfizexyy` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_ydayslrkwcgkddkklvythgtkqoucogzgxwcg` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_fk_jehhbtujtdqwzmnfptspwjadwbicknqlbgen` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_juqfttlrvwpyodmyyxpikrukfuthcxvfhnlf` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_craftidtokens`
--
ALTER TABLE `craft_craftidtokens`
  ADD CONSTRAINT `craft_fk_wkaphttsuvzfmgszlyannxlmjzgltmxhqhvc` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_drafts`
--
ALTER TABLE `craft_drafts`
  ADD CONSTRAINT `craft_fk_jorclgshlozoymhkqpbhgpanadgsqrfqcpek` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_uuheofhciebnsevuffdcjuouewtbtlcgoaba` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD CONSTRAINT `craft_fk_bumkorowmkldmtjpzpmmnjhcvzivagwfqhmh` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_lsqoycesahdhpaugqhxliajypfyuagiuaael` FOREIGN KEY (`draftId`) REFERENCES `craft_drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_npubwlkivimefamvnvybaprxdaupzucixcjm` FOREIGN KEY (`revisionId`) REFERENCES `craft_revisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_srgquknfuedbkamxcinnkavthrpeoyohwldx` FOREIGN KEY (`canonicalId`) REFERENCES `craft_elements` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_elements_sites`
--
ALTER TABLE `craft_elements_sites`
  ADD CONSTRAINT `craft_fk_ubybsbcbuwoonblmvknpaybnedznspsfilaa` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_yvfrdurqlxnioyqmuxitamugbyhazwqqcaiw` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_fk_fxlivynypyoanrdkbilcwrodnnzsfdysevua` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_hobdmvrlishkmzziihehwikgwctawqgcdfgd` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_jpmrvonbtbyqkyqdxkbxewfwfbwzjddvegbc` FOREIGN KEY (`parentId`) REFERENCES `craft_entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_pqtxniljccivsomuwqbksqbscwzefltfqpgc` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_yeqxpivrcsnfccfijhhvmvjfxedcodxpihfk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_fk_bflfvhbrqijieueslqqxjxnjxoazpennkvjz` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_gewmrzpdqreqkfacwpnxgjrfxfywumhsonnn` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fk_cdmgkgcuvjtvukoqvkvxajusktfichcizjpu` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_eesvupoizncdfobwwmzstdeicmyqpvjisjwx` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_ozjowafstxvoqbovbuvjeihwyvsxvbezswzl` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fk_kuzdbhbfouyllodjcbryhufglfypuporsusd` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fk_ztwumphvmepotjolkhktsjshxiyqpgyooehi` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_fk_brwlkcuhvpplvyjazzeaoszrigwpngvqmbtc` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_hwypxzahmvzfmbbftqsbuwasiedpfoduzelj` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_gqltokens`
--
ALTER TABLE `craft_gqltokens`
  ADD CONSTRAINT `craft_fk_aeadkscgsffoatcshncfzbebdnavlhrvdsuc` FOREIGN KEY (`schemaId`) REFERENCES `craft_gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_fk_lgxozoredwldxslzogvnbrssjqobeazkhdis` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_seqldneqkagsouyeictlcewehcppebneabsr` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_wnoequablqdddaggrmvfuqywbhvwxnbtacvr` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_zpshjpzqqjyvdatjnilqwuuhyqixgwoyyycr` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_fk_evafkynhuxasyodazesbkouyoosdnziqhbtx` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_pbogkwsgyxjosbmyjluzqfwptopwjttvfkxr` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixcontent_postcontent`
--
ALTER TABLE `craft_matrixcontent_postcontent`
  ADD CONSTRAINT `craft_fk_gfhxamxchvohtfvetbkcsiatreunfjrskvwh` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_yosozqlczrhnejubjkeoucrsqdtthqlnynhx` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_fk_mumozwryqspaselyrxmkbqjbnhvmoivcgeyu` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_tysdamopyyoohcrngqepcjtfscwwiewjswhr` FOREIGN KEY (`sourceSiteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_upgnqubhxfklxtargnxpnbrqwjxkphyvdmfl` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_usgzktrhiytiuprildrxmzsfscrdjpttmyjz` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_revisions`
--
ALTER TABLE `craft_revisions`
  ADD CONSTRAINT `craft_fk_vjbrixgyivpjzgyavxhnaqpgnxuvpuvuclfk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_wkijvrrcvwwngajwzhjodbssrwmpjazewors` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_fk_jovkinovwjmptggxuntmkwjojrccsgqtkewv` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_sections_sites`
--
ALTER TABLE `craft_sections_sites`
  ADD CONSTRAINT `craft_fk_bctfifrnpjijakocgtzcuuuykwyhvpbcixzy` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_fk_gchbdyhocmmedkyowzzedoicigptulmcvvkn` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_fk_upucvjkbtkemqaltfbjyjfwhvptfgwklwhix` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_fk_loqsortkyuuxlwshkbbmqgelpsaicjblmgyo` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_sites`
--
ALTER TABLE `craft_sites`
  ADD CONSTRAINT `craft_fk_mzggcflymgshhchlvudiojbhswcunnkuopgz` FOREIGN KEY (`groupId`) REFERENCES `craft_sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_fk_nbutkryueskgpjqfykrtssamwmsqpiixiypu` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_tmudxiythehgnoumtidpsgobtqjghqwkifwl` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_fk_uqluiagvhxwfyteigqugrdozbcyhdblcjnlq` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_fk_jxkpsqrvinmqmllaxhezrxpzsgggrxjomtjf` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_vfmpfvmdztnzjjenlukzsjcuvdqxfpjzbkvx` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_fk_lrdwullgnxyddewuwlgfjwlnuapqibtwovut` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_ojijuhciyvvxvgccgtxiigvgxzjjzdymapyd` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecachequeries`
--
ALTER TABLE `craft_templatecachequeries`
  ADD CONSTRAINT `craft_fk_szdcijjgfievgcynxkwoaqznfujtefqpsfht` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_fk_olzpyjakzawfxdewtvwltesiqtrcgtpdkmia` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_fk_cmoiltktofozrnpwihlulddppffxwpvkqsgu` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_upgdsrzlulgeylmyhvtkgkmjyhhsqstsvoty` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_fk_sblrrtatsascslzdcvribnknaaqtgnyodsdv` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_uemywjvjfqsadconouwzencbzfomsrwwwcvq` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_fk_wjaqedjtxugrpjrfclbonrytscondadwjirk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_xiwbaxubzyifqqqhsdluzjfuxrjmfujjnatg` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpreferences`
--
ALTER TABLE `craft_userpreferences`
  ADD CONSTRAINT `craft_fk_wqqwidczgwkgptwktmqcbqdeacftswcgkbpk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_fk_cgwlqlhvdskhvnczacaxfzdwyiollqoucpvx` FOREIGN KEY (`photoId`) REFERENCES `craft_assets` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_fk_gefxdzwmrfrnpwndarrcagaoyycbgogfqsrq` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_volumefolders`
--
ALTER TABLE `craft_volumefolders`
  ADD CONSTRAINT `craft_fk_cneeeeqfbhnftmcezkzblfnaledmhntuyctg` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fk_nppepatvzuvfhzgighvulldwgbsxovbwolma` FOREIGN KEY (`parentId`) REFERENCES `craft_volumefolders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_volumes`
--
ALTER TABLE `craft_volumes`
  ADD CONSTRAINT `craft_fk_szsezkwbgbakhtnklzgbrikjyrekcrudhtby` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_fk_olfivcoqkmdwvtzoqzipthxiipwsjpylgqtd` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
