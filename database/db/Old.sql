-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2022 at 02:33 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secureli_apitest`
--

-- --------------------------------------------------------

--
-- Table structure for table `ca_preliminary_notice`
--

CREATE TABLE `ca_preliminary_notice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direct_contractor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direct_contractor_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direct_contractor_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direct_contractor_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direct_contractor_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractor_leader_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractor_leader_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractor_leader_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractor_leader_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractor_leader_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_license` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_services` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_apn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_of` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_license` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_provider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_delivery_status_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_name_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_address_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_date_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_time_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pursuant_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pursuant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signed_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ca_preliminary_notice`
--

INSERT INTO `ca_preliminary_notice` (`id`, `user_id`, `client_id`, `invoice_id`, `owner_name`, `owner_address`, `owner_city`, `owner_state`, `owner_zip`, `direct_contractor_name`, `direct_contractor_address`, `direct_contractor_city`, `direct_contractor_state`, `direct_contractor_zip`, `contractor_leader_name`, `contractor_leader_address`, `contractor_leader_city`, `contractor_leader_state`, `contractor_leader_zip`, `other_name`, `other_address`, `other_city`, `other_state`, `other_zip`, `company_name`, `company_address`, `company_license`, `company_phone`, `company_city`, `company_state`, `company_zip`, `company_services`, `property_address`, `property_city`, `property_state`, `property_zip`, `property_apn`, `amount_of`, `contract_name`, `contract_address`, `contract_license`, `contract_phone`, `contract_city`, `contract_state`, `contract_zip`, `prof_provider_name`, `personal_delivery_status`, `prof_name`, `prof_address`, `prof_date`, `prof_time`, `personal_delivery_status_2`, `prof_name_2`, `prof_address_2`, `prof_date_2`, `prof_time_2`, `pursuant_status`, `pursuant`, `signed_date`, `signature`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Islamabad', 'Islamabad', 'Alabama', '1311', 'Web Development', 'Karachi', 'Web Development', '13131212', 'Karachi', 'Alabama', '1311', 'Web Development', 'Karachi', 'Karachi', 'Alabama', '1311', 'Paint', '100', 'Web Development', 'Karachi', '2343232', '21323242', 'Karachi', 'Alabama', '1311', 'Nabeel', 'on', 'Nabeel', 'Lahore', '2021-11-01', '18:55', 'on', 'Ahmad', 'Karachi', '2021-11-20', '18:55', 'on', '32', '2021-11-01', 'Signatures/11022021174845618179fdcb6d3.png', 1, '2021-11-02 08:56:29', '2021-11-02 08:56:29'),
(2, 1, 1, 2, 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Islamabad', 'Islamabad', 'Alabama', '1311', 'Web Development', 'Karachi', 'Web Development', '13131212', 'Karachi', 'Alabama', '1311', 'Web Development', 'Karachi', 'Karachi', 'Alabama', '1311', 'Paint', '100', 'Web Development', 'Karachi', '2343232', '21323242', 'Karachi', 'Alabama', '1311', 'Nabeel', 'on', 'Nabeel', 'Lahore', '2021-11-02', '10:37', 'on', 'Ahmad', 'Karachi', '2021-11-03', '10:36', 'on', '32', '2021-11-08', 'Signatures/1102202117544861817b683e7a2.png', 1, '2021-11-03 00:54:48', '2021-11-03 00:54:48'),
(3, 1, 1, 3, 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Islamabad', 'Islamabad', 'Alabama', '1311', 'Web Development', 'Karachi', 'Web Development', '13131212', 'Karachi', 'Alabama', '1311', 'Web Development', 'Karachi', 'Karachi', 'Alabama', '1311', 'Paint', '100', 'Web Development', 'Karachi', '2343232', '21323242', 'Karachi', 'Alabama', '1311', 'Nabeel', 'on', 'Nabeel', 'Lahore', '2021-11-02', '01:09', 'on', 'Ahmad', 'Karachi', '2021-11-10', '01:10', 'on', '32', '2021-11-16', 'Signatures/1102202118101861817f0a2697b.png', 1, '2021-11-03 01:10:18', '2021-11-03 01:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `ca_preliminary_notice_fill`
--

CREATE TABLE `ca_preliminary_notice_fill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direct_contractor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direct_contractor_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direct_contractor_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direct_contractor_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direct_contractor_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractor_leader_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractor_leader_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractor_leader_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractor_leader_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractor_leader_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_license` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_services` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_apn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_of` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_license` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_provider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_delivery_status_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_name_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_address_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_date_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prof_time_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pursuant_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pursuant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signed_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ca_preliminary_notice_fill`
--

INSERT INTO `ca_preliminary_notice_fill` (`id`, `user_id`, `email`, `owner_name`, `owner_address`, `owner_city`, `owner_state`, `owner_zip`, `direct_contractor_name`, `direct_contractor_address`, `direct_contractor_city`, `direct_contractor_state`, `direct_contractor_zip`, `contractor_leader_name`, `contractor_leader_address`, `contractor_leader_city`, `contractor_leader_state`, `contractor_leader_zip`, `other_name`, `other_address`, `other_city`, `other_state`, `other_zip`, `company_name`, `company_address`, `company_license`, `company_phone`, `company_city`, `company_state`, `company_zip`, `company_services`, `property_address`, `property_city`, `property_state`, `property_zip`, `property_apn`, `amount_of`, `contract_name`, `contract_address`, `contract_license`, `contract_phone`, `contract_city`, `contract_state`, `contract_zip`, `prof_provider_name`, `personal_delivery_status`, `prof_name`, `prof_address`, `prof_date`, `prof_time`, `personal_delivery_status_2`, `prof_name_2`, `prof_address_2`, `prof_date_2`, `prof_time_2`, `pursuant_status`, `pursuant`, `signed_date`, `signature`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'ramnikluthra@gmail.com', 'Ramnik Luthra', '9721 Artesia Blvd Suite A', 'Bellflower', 'Arizona', '90706', 'Ramnik Luthra', '9721 Artesia Blvd Suite A', 'Bellflower', 'Arizona', '90706', 'Ramnik Luthra', '9721 Artesia Blvd Suite A', 'Bellflower', 'Alaska', '90706', 'Ramnik Luthra', '9721 Artesia Blvd Suite A', 'Bellflower', 'Alaska', '90706', 'WTS', '9721 Artesia Blvd Suite A', 'WTS', '5625694901', 'Bellflower', 'Arizona', '90706', 'WTS', '9721 Artesia Blvd Suite A', 'Bellflower', 'Arizona', '90706', 'Hi', 'Hi', 'Ramnik Luthra', '9721 Artesia Blvd Suite A', 'Bhhhj', '5625694901', 'Bellflower', 'Alaska', '90706', 'Ramnik Luthra', 'on', 'Ramnik Luthra', '9721 Artesia Blvd Suite A', '2022-02-03', '23:14', 'on', 'Ramnik Luthra', 'Yuyu', '2022-02-17', '23:14', 'on', 'ramnik@websquareinfotech.com', '2022-02-02', 'Signatures/0203202207143961fb80df5c051.png', 1, '2022-02-03 13:14:39', '2022-02-03 13:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `other_mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `postel_code` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `user_id`, `name`, `email`, `mobile`, `other_mobile`, `address`, `address2`, `city`, `state`, `postel_code`, `note`, `created_at`, `updated_at`) VALUES
(27, 17, 'raheels client', 'rahclient@gmail.com', '3525252525', '3568686868', 'addrr', 'adfd', 'isb', 'kpk', '24555', NULL, '2021-12-01 15:40:42', '2021-12-01 15:40:42'),
(28, 17, 'r client 2', 'rclient2@gmail.com', '225255522', '555555555', 'ggggg', 'fffff', 'lhr', 'punjab', '122222', NULL, '2021-12-01 16:26:00', '2021-12-01 16:26:00'),
(29, 17, 'hamza', 'hamza@gmail.com', '2525255', '22222225', 'ffff', 'hhhh', 'isb', 'isb', '33334', NULL, '2021-12-01 10:59:01', '2021-12-01 16:59:01'),
(30, 27, 'test', 'test-ing@gmail.com', '0314456935', '968686868', 'avxnxn', 'hdjdjxnx', 'Lahore', 'punjab', '54600', 'good clients', '2021-12-02 12:42:10', '2021-12-02 12:42:10'),
(31, 27, 'test2', 'test-ing@gmail.com', '9868386868', '8998989898', 'vshshdnddj', 'ehdhbd', 'lahore', 'punjab', '54600', NULL, '2021-12-02 12:48:09', '2021-12-02 12:48:09'),
(32, 27, 'test', 'rizwanakh77@gmail.com', '03072193538', '87979979', 'acvzbznz', 'wgdbbd', 'lahoe', 'punjab', '54600', NULL, '2021-12-02 12:56:27', '2021-12-02 12:56:27'),
(33, 27, 'rizwan', 'rizwanakhtar2490@gmail.com', '03072193538', '956866479', 'jdjdndjd', 'hshshsjs', 'lajire', 'punajb', '54600', NULL, '2021-12-02 13:02:09', '2021-12-02 13:02:09'),
(34, 27, 'final test', 'finaltest@gmail.com', '030096325536', '0300096568686', 'shdjjdkdkfcm. njx', 'hdnxmxkxxo', 'lah9ree', 'punaj', '54939', 'good client', '2021-12-02 07:20:44', '2021-12-02 13:20:44'),
(53, 37, 'Ramnik Luthra', 'ramnikluthra@gmail.com', '5625694901', '5625694901', '9448  artesia blvd h', NULL, 'bellflower', 'ca', '90706', NULL, '2021-12-20 15:42:45', '2021-12-20 15:42:45'),
(54, 41, 'Rita samuel', 'ritasamuelluthra@gmail.com', '5622936346', '5622936346', '9448 Artesia blvd A', 'A', 'bellflower', 'california', '90706', NULL, '2021-12-24 14:49:42', '2021-12-24 14:49:42'),
(55, 42, 'john client', 'jc@gmqil.com', '+95255448888', '+89966555566', 'test', 'test 2', 'test', 'test', '25255', 'test note', '2021-12-29 12:09:28', '2021-12-29 12:09:28'),
(57, 44, 'Ali', 'rizwanakhtar2490@gmail.com', '0345242466', '042659989898', 'lahore', 'multan', 'lahor3', 'punjab', '542577', NULL, '2021-12-29 06:44:13', '2021-12-29 12:44:13'),
(58, 44, 'Shuja', 'shuja@gmail.com', '0316646467', '0167646766', 'lahore', 'lgaon 1', 'multan', 'punjab', '4855', 'good client', '2021-12-29 12:45:31', '2021-12-29 12:45:31'),
(59, 44, 'Rizwan', 'rizwanakh77@gmail.com', '03072193538', '0349949494', 'Lahore', 'G1', 'Lahore', 'Punjab', '54600', NULL, '2021-12-29 13:02:21', '2021-12-29 13:02:21'),
(60, 40, 'The Water Brewery - Einar - Wennifer Haven', 'thewaterbreweryunity@gmail.com', '714 916-6823', '(714) 345-3033', '1001 West 17th Street', 'Suites D&E', 'Costa Mesa', 'California', '92627', NULL, '2021-12-30 09:22:49', '2021-12-30 09:22:49'),
(61, 45, 'javonn', 'ritasamuelluthra@gmail.com', '+15627329894', '+15627329894', '9448 arteisia Blvd apt h 90706', '9448 arteisia Blvd apt h 90706', 'bellflower', 'ca', '90706', NULL, '2021-12-31 13:43:03', '2021-12-31 13:43:03'),
(66, 58, 'b b b b', 'fhchchc@gmail.com', '586858585858', '9090909868', 'bxbb jfjchchc', 'jchfhcjcjccjjc', 'hchcch', 'fjjgjc', '686889', NULL, '2022-03-09 18:13:21', '2022-03-09 18:13:21'),
(67, 72, 'chhcchch', 'jvjvjv@gmail.com', '88686888668', '68868868099', 'hxhxhchhhhc', 'jcjcjcjvjjvjjvgjv', 'gjjvjvjg', 'cjncjc', '8668688', NULL, '2022-03-10 12:41:24', '2022-03-10 12:41:24'),
(68, 72, 'yuug', 'ycyv@gmail.com', '6969966969', '8668686868', 'yvuvuvuvuv', 'uvvjvibjbjbib', 'esezrxrxrxrx', 'nononnoon', '386868', NULL, '2022-03-10 12:43:10', '2022-03-10 12:43:10'),
(69, 72, 'vuuuv', 'uguguug@g.com', '669666686869', '6868686868', 'gcvhyvuvuvuvuv', 'vhuvhvjvuu', 'hvjvjvjv', 'hvuvuuv', '54000', NULL, '2022-03-10 12:44:57', '2022-03-10 12:44:57'),
(70, 72, 'vhjvjvv', 'uguguug@gmail.com', '60683838688', '85686868686', 'gcgvhvhvhvhvhhv', 'vhhvvhuvuvvvh', 'vyuvjvjvjvvj', 'vjjbjb', '836886', NULL, '2022-03-10 12:47:32', '2022-03-10 12:47:32'),
(71, 37, 'Mark J. Rice', 'markjrice@gmail.com', '2059939922', '2059939933', '3346;Wright Court', 'Phill Campbell', 'Phill Campbell', 'AL', '35581', NULL, '2022-03-20 13:17:04', '2022-03-20 13:17:04'),
(72, 37, 'Robert G. Hunt', 'robertghunt@gmail.com', '6362883759', '6362883658', '812 Irving Place', 'Monchester', 'Monchester', 'MO', '63011', NULL, '2022-03-20 13:36:44', '2022-03-20 13:36:44'),
(73, 40, 'Noah Sadowski', 'sadowskinoah@yahoo.com', '9492856783', '9492856783', '25525 Tossamar', 'Street', 'Mission Viejo', 'CA', '92691', NULL, '2022-03-24 04:49:21', '2022-03-24 04:49:21'),
(74, 40, 'Martha Webb', 'marthawebb2007@yahoo.com', '7602077075', '3233231323', '952 knoll park lane', 'repair this', 'Fallbrook', 'CA', '92028', NULL, '2022-03-24 04:26:51', '2022-03-24 09:26:51'),
(75, 1, 'nabeel client', 'nabeel@pixelpk.com', '+923244662588', '+923255888858', 'test addr', 'addr', 'lhr', 'punjab', '54000', NULL, '2022-03-25 13:12:43', '2022-03-25 13:12:43'),
(76, 1, 'nab', 'abc@gggg.com', '+9259565645455', NULL, 'dbfjrj dbdhdb', NULL, 'Isb', 'State', '48599', NULL, '2022-03-25 10:20:27', '2022-03-25 15:20:27'),
(77, 1, 'new client', 'newclient@gmail.co', '+934234324', NULL, 'test address', NULL, 'Lahore', 'Punjab', '54000', NULL, '2022-03-25 15:41:09', '2022-03-25 15:41:09'),
(78, 40, 'Tim Sadowski', 'interiorestorations@yahoo.com', '9492833952', '9492833952', '28562 Oso Pkwy', 'd234', 'Rancho Santa Margarita', 'ca', '92688', NULL, '2022-03-30 12:34:15', '2022-03-30 17:34:15'),
(79, 40, 'Ramnik Luthra', 'ramnik@websquareinfotech.com', '562 569-4901', NULL, '9721 Artesia Blvd', 'Suite A', 'Bellflower', 'Ca.', '90706', NULL, '2022-03-30 16:06:50', '2022-03-30 21:06:50'),
(80, 40, 'Joel Collins', 'joeldcollinsinc@gmail.com', '7144930028', NULL, '286', 'Collins', 'orange', 'ca', '92867', NULL, '2022-04-06 10:24:35', '2022-04-06 10:24:35'),
(81, 78, 'Peter Pan', 'marthawebb2007@yahoo.com', '760-207-7075', NULL, '1805 Laurel Rd', NULL, 'Oceanside', 'California', '92054', NULL, '2022-04-25 07:35:16', '2022-04-25 07:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_url` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`id`, `user_id`, `name`, `phone`, `address`, `city`, `state`, `county`, `postal_code`, `file_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'WebSquare Infotech', '5625694901', '9721 Artesia blvd A', 'bellflower', 'test', 'usa', '90706', '20220325-120940.scaled_image_picker5634088262802333086.jpg', '2022-03-25 12:09:40', '2022-03-25 17:09:40'),
(2, 25, 'test', '34677544445', 'test addr', 'lhr', 'punjab', 'pak', '45667', '20211130-021753.scaled_image_picker24227744.jpg', '2021-11-30 20:17:53', '2021-11-30 20:17:53'),
(3, 37, 'websquare Infotech', '5625694901', '9721 artesia blvd A', 'bellflower', 'ca', 'usa', '90706', '20220311-083129.image_picker_A079152F-65C7-4A01-8B73-CD4DA7DFB3EA-357-0000000B68BAA646.jpg', '2022-03-11 20:31:29', '2022-03-12 02:31:29'),
(4, 44, 'p8xel', '03149494646', 'lahore', 'lahore', 'punjab', 'pakistan', '54600', '20211229-065156.scaled_image_picker1078897906805247687.jpg', '2021-12-29 12:51:56', '2021-12-29 12:51:56'),
(5, 42, 'test', '+956569599559', 'dbdbdb', 'lhr', 'test', 'Pakistan', '5588', '20211229-074412.scaled_image_picker3492656175481012503.jpg', '2021-12-29 13:44:12', '2021-12-29 13:44:12'),
(6, 40, 'Interior Restorations', '9492833952', '28562 Oso Parkway 234', 'Rancho Santa Margarita, CALIFORNIA', 'California', 'United States', '92688', '20211230-033323.s-l1600 (1).jpg', '2022-03-23 23:58:38', '2022-03-24 04:58:38'),
(7, 72, 'gujguvug', '+92336329593', 'chhcvjhvvhjv', 'jcjcjvjvjvjv', 'cjcjjchcjcjc', 'vjjvjvjvjv', '8868686', '20220310-071014.scaled_ad58d013-6d8d-417c-82de-c489782215ca6718167370763336106.jpg', '2022-03-10 13:10:14', '2022-03-10 13:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `conditional_waiver_and_release_on_final_paymenyt`
--

CREATE TABLE `conditional_waiver_and_release_on_final_paymenyt` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `claimant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_payable_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_effect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conditional_waiver_and_release_on_final_paymenyt`
--

INSERT INTO `conditional_waiver_and_release_on_final_paymenyt` (`id`, `user_id`, `client_id`, `invoice_id`, `claimant_name`, `customer_name`, `job_location`, `owner`, `check_owner`, `check_amount`, `check_payable_to`, `document_effect`, `extra_amount`, `signature`, `claimant_title`, `signature_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Nabeel', 'Bilal', 'Lahore', 'Anas', 'Nabeel', '100', 'Anas', 'No', '100', 'Signatures/110220212042486181a2c8d8305.png', 'Nabeel', '2021-12-31', 1, '2021-11-03 03:42:48', '2021-11-03 03:42:48'),
(2, 27, 33, 101, 'Anc', 'Abc', 'Lahore', 'Me', 'Test', '72', 'Me', 'Eed', '60', 'Signatures/1202202107085761a87109a6c60.png', 'Abc', '2021-12-02', 1, '2021-12-02 13:08:57', '2021-12-02 13:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `conditional_waiver_and_release_on_final_paymenyt_fill`
--

CREATE TABLE `conditional_waiver_and_release_on_final_paymenyt_fill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_payable_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_effect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conditional_waiver_and_release_on_progress_paymenyt`
--

CREATE TABLE `conditional_waiver_and_release_on_progress_paymenyt` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `claimant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `through_date` date NOT NULL,
  `check_owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_payable_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_waiver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_of_unpaid_progress_payments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conditional_waiver_and_release_on_progress_paymenyt`
--

INSERT INTO `conditional_waiver_and_release_on_progress_paymenyt` (`id`, `user_id`, `client_id`, `invoice_id`, `claimant_name`, `customer_name`, `job_location`, `owner`, `through_date`, `check_owner`, `check_amount`, `check_payable_to`, `date_of_waiver`, `amount_of_unpaid_progress_payments`, `signature`, `claimant_title`, `signature_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Nabeel', 'Bilal', 'Lahore', 'Anas', '2021-11-02', 'Nabeel', '100', 'Anas', '2021-11-02', '1000', 'Signatures/110220212051486181a4e4ec2df.png', 'Nabeel', '2021-11-02', 1, '2021-11-03 03:51:48', '2021-11-03 03:51:48'),
(2, 44, 59, 115, 'njhdjkk', 'kss', 'jjljfj', 'ojjf', '2021-12-30', 'kdjal', 'idhoi', 'hdoh', '2021-12-30', 'jsbhlxkjba', 'Signatures/1229202113553061cc68d2ac47f.png', 'Estimate', '2021-12-30', 1, '2021-12-29 19:55:30', '2021-12-29 19:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `conditional_waiver_and_release_on_progress_paymenyt_fill`
--

CREATE TABLE `conditional_waiver_and_release_on_progress_paymenyt_fill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `through_date` date NOT NULL,
  `check_owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_payable_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_waiver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_of_unpaid_progress_payments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_forms`
--

CREATE TABLE `contract_forms` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract_forms`
--

INSERT INTO `contract_forms` (`id`, `user_id`, `name`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 'Generic Contract', 'contract/forms/1632506895.pdf', '2021-09-25 01:08:15', '2021-09-25 01:08:15'),
(2, 1, 'Test', 'contract/forms/1634926833.pdf', '2021-10-23 01:20:33', '2021-10-23 01:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `po_number` int(11) DEFAULT NULL,
  `days_to_pay` int(11) DEFAULT NULL,
  `markup` double NOT NULL,
  `subtotal` double NOT NULL,
  `tax` double NOT NULL,
  `discount` double NOT NULL,
  `total` double NOT NULL,
  `date` date NOT NULL,
  `notes` text,
  `forms` text,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `email_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `estimates`
--

INSERT INTO `estimates` (`id`, `user_id`, `client_id`, `po_number`, `days_to_pay`, `markup`, `subtotal`, `tax`, `discount`, `total`, `date`, `notes`, `forms`, `status`, `email_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 2, '2021-09-15', 'All things good', '[]', 0, 0, '2021-12-24 10:28:23', '2021-12-24 16:28:23'),
(2, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-09-16', 'All things good', NULL, 1, 0, '2021-11-23 06:45:57', '2021-11-12 12:49:19'),
(3, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-09-18', 'All things good', NULL, 2, 0, '2021-11-23 06:45:59', '2021-11-12 12:49:21'),
(4, 1, 1, 1, 1, 0, 1, 1, 1, 1, '2021-09-09', 'All things good', NULL, 0, 0, '2021-11-23 16:04:50', '2021-11-23 16:04:50'),
(5, 1, 1, 1, 1, 0, 1, 1, 1, 1, '2021-09-09', 'All things good', NULL, 0, 0, '2021-11-23 16:05:45', '2021-11-23 16:05:45'),
(6, 1, 1, 1, 1, 0, 1, 1, 1, 1, '2021-09-09', 'All things good', NULL, 0, 0, '2021-11-23 16:09:25', '2021-11-23 16:09:25'),
(7, 1, 1, 1, 1, 20, 1, 1, 1, 1, '2021-09-09', 'All things good', NULL, 0, 0, '2021-11-23 16:11:05', '2021-11-23 16:11:05'),
(8, 1, 1, 1, 4, 0, 675, 30, 0, 705, '2021-11-23', 'ffff', NULL, 0, 0, '2021-11-23 17:51:11', '2021-11-23 17:51:11'),
(9, 1, 1, 1, 4, 0, 675, 30, 0, 705, '2021-11-23', 'ffff', NULL, 0, 0, '2021-11-23 17:51:37', '2021-11-23 17:51:37'),
(10, 1, 1, 4, 2, 0, 225, 4, 0, 229, '2021-11-23', 'fffff', NULL, 0, 0, '2021-11-23 17:54:21', '2021-11-23 17:54:21'),
(11, 1, 1, 4, 2, 0, 225, 4, 0, 229, '2021-11-23', 'fffff', NULL, 0, 0, '2021-11-23 17:56:02', '2021-11-23 17:56:02'),
(12, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-23', 'ffff', NULL, 0, 0, '2021-11-23 18:14:11', '2021-11-23 18:14:11'),
(13, 1, 3, 3, 1, 0, 225, 0, 0, 225, '2021-11-23', 'ffff', NULL, 0, 0, '2021-11-23 18:44:06', '2021-11-23 18:44:06'),
(14, 1, 3, 3, 1, 0, 225, 0, 0, 225, '2021-11-23', 'ffff', NULL, 0, 0, '2021-11-23 18:44:24', '2021-11-23 18:44:24'),
(15, 1, 3, 3, 1, 0, 225, 0, 0, 225, '2021-11-23', 'ffff', NULL, 0, 0, '2021-11-23 18:45:12', '2021-11-23 18:45:12'),
(16, 1, 1, 5, 2, 0, 225, 10, 0, 235, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 18:47:35', '2021-11-23 18:47:35'),
(17, 1, 1, 212, 10, 0, 0, 0, 0, 0, '2021-11-23', 'this is a note', NULL, 0, 0, '2021-11-23 18:48:17', '2021-11-23 18:48:17'),
(18, 1, 1, 3, 1, 0, 225, 10, 0, 235, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 18:54:33', '2021-11-23 18:54:33'),
(19, 1, 1, 5, 2, 0, 225, 0, 0, 225, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 18:58:53', '2021-11-23 18:58:53'),
(20, 1, 1, 1, 1, 20, 1, 1, 1, 1, '2021-09-09', 'All things good', NULL, 0, 0, '2021-11-23 19:00:27', '2021-11-23 19:00:27'),
(21, 1, 1, 5, 2, 0, 225, 0, 0, 225, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:01:22', '2021-11-23 19:01:22'),
(22, 1, 1, 5, 2, 0, 225, 0, 0, 225, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:04:40', '2021-11-23 19:04:40'),
(23, 1, 1, 1215, 17, 0, 270, 27, 0, 297, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:09:12', '2021-11-23 19:09:12'),
(24, 1, 1, 4, 2, 0, 0, 0, 0, 0, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:11:08', '2021-11-23 19:11:08'),
(25, 1, 11, 117, 137, 0, 150, 15, 0, 165, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:11:18', '2021-11-23 19:11:18'),
(26, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:26:14', '2021-11-23 19:26:14'),
(27, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:28:08', '2021-11-23 19:28:08'),
(28, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:28:13', '2021-11-23 19:28:13'),
(29, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:29:27', '2021-11-23 19:29:27'),
(30, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:32:07', '2021-11-23 19:32:07'),
(31, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-15', NULL, NULL, 0, 0, '2021-11-23 19:33:18', '2021-11-23 19:33:18'),
(32, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-15', NULL, NULL, 0, 0, '2021-11-23 19:36:21', '2021-11-23 19:36:21'),
(33, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-15', NULL, NULL, 0, 0, '2021-11-23 19:40:41', '2021-11-23 19:40:41'),
(34, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-15', NULL, NULL, 0, 0, '2021-11-23 19:42:51', '2021-11-23 19:42:51'),
(35, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:43:56', '2021-11-23 19:43:56'),
(36, 1, 1, 1, 1, 20, 1, 1, 1, 1, '2021-09-09', 'All things good', NULL, 0, 0, '2021-11-23 19:44:30', '2021-11-23 19:44:30'),
(37, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:48:03', '2021-11-23 19:48:03'),
(38, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:49:00', '2021-11-23 19:49:00'),
(39, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:51:03', '2021-11-23 19:51:03'),
(40, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:52:17', '2021-11-23 19:52:17'),
(41, 1, 1, 5, 2, 0, 675, 30, 0, 705, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 11:48:29', '2021-11-24 11:48:29'),
(42, 1, 1, 4, 2, 0, 675, 30, 0, 705, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 12:00:02', '2021-11-24 12:00:02'),
(43, 1, 1, 4, 2, 0, 675, 30, 0, 705, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 12:00:18', '2021-11-24 12:00:18'),
(44, 1, 1, 5, 3, 25, 675, 30, 15, 715, '2021-11-24', 'test', NULL, 0, 0, '2021-11-24 12:13:17', '2021-11-24 12:13:17'),
(45, 1, 1, 5, 3, 25, 675, 30, 15, 715, '2021-11-24', 'test', NULL, 0, 0, '2021-11-24 12:15:00', '2021-11-24 12:15:00'),
(46, 1, 1, 5, 3, 25, 675, 30, 15, 715, '2021-11-24', 'test', NULL, 0, 0, '2021-11-24 12:19:47', '2021-11-24 12:19:47'),
(47, 1, 1, 5, 3, 25, 675, 30, 15, 715, '2021-11-24', 'test', NULL, 0, 0, '2021-11-24 12:25:15', '2021-11-24 12:25:15'),
(48, 1, 1, 5, 3, 25, 675, 30, 15, 715, '2021-11-24', 'test', NULL, 0, 0, '2021-11-24 12:27:08', '2021-11-24 12:27:08'),
(49, 1, 1, 5, 3, 25, 675, 30, 15, 715, '2021-11-24', 'test', NULL, 0, 0, '2021-11-24 12:27:33', '2021-11-24 12:27:33'),
(50, 1, 1, 5, 3, 25, 675, 30, 15, 715, '2021-11-24', 'test', NULL, 0, 0, '2021-11-24 12:43:27', '2021-11-24 12:43:27'),
(51, 1, 1, 5, 3, 25, 675, 30, 15, 715, '2021-11-24', 'test', NULL, 0, 0, '2021-11-24 12:46:03', '2021-11-24 12:46:03'),
(52, 1, 1, 5, 3, 25, 675, 30, 15, 715, '2021-11-24', 'test', NULL, 0, 0, '2021-11-24 12:46:17', '2021-11-24 12:46:17'),
(53, 1, 1, 5, 3, 25, 675, 40, 15, 715, '2021-11-24', 'test', NULL, 0, 0, '2021-11-24 12:48:02', '2021-11-24 12:48:02'),
(54, 1, 1, 5, 3, 25, 675, 40, 15, 715, '2021-11-24', 'test', NULL, 0, 0, '2021-11-24 12:48:44', '2021-11-24 12:48:44'),
(55, 1, 1, 4, 2, 0, 225, 40, 0, 235, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 12:50:06', '2021-11-24 12:50:06'),
(56, 1, 1, 4, 2, 0, 225, 40, 0, 235, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 12:51:25', '2021-11-24 12:51:25'),
(57, 1, 3, 5, 3, 0, 675, 40, 0, 705, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 12:54:24', '2021-11-24 12:54:24'),
(58, 1, 1, 5, 3, 0, 225, 40, 0, 235, '2021-11-16', NULL, NULL, 0, 0, '2021-11-24 13:12:13', '2021-11-24 13:12:13'),
(59, 1, 1, 4, 2, 0, 225, 40, 0, 235, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 13:15:19', '2021-11-24 13:15:19'),
(60, 1, 1, 3, 2, 0, 225, 40, 0, 235, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 13:16:55', '2021-11-24 13:16:55'),
(61, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 14:28:30', '2021-11-24 14:28:30'),
(62, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 14:31:26', '2021-11-24 14:31:26'),
(63, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 14:32:42', '2021-11-24 14:32:42'),
(64, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 14:33:33', '2021-11-24 14:33:33'),
(65, 1, 1, 5, 2, 0, 225, 10, 0, 235, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 15:23:18', '2021-11-24 15:23:18'),
(66, 1, 1, 5, 2, 0, 225, 10, 0, 235, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 15:32:29', '2021-11-24 15:32:29'),
(67, 1, 1, 4, 2, 0, 225, 10, 0, 235, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 15:34:03', '2021-11-24 15:34:03'),
(68, 1, 1, 3, 2, 0, 675, 12.899999999999999, 0, 687.9, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 15:44:58', '2021-11-24 15:44:58'),
(69, 1, 1, 3, 2, 0, 675, 12.899999999999999, 0, 687.9, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 15:45:53', '2021-11-24 15:45:53'),
(70, 1, 1, 3, 2, 0, 675, 12.899999999999999, 0, 687.9, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 15:55:15', '2021-11-24 15:55:15'),
(71, 1, 1, 3, 2, 0, 675, 12.899999999999999, 0, 687.9, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 15:57:33', '2021-11-24 15:57:33'),
(72, 1, 1, 3, 2, 0, 675, 12.899999999999999, 0, 687.9, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 15:58:35', '2021-11-24 15:58:35'),
(73, 1, 1, 3, 2, 0, 675, 12.899999999999999, 0, 687.9, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(74, 1, 1, 3, 2, 0, 675, 12.899999999999999, 0, 687.9, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(75, 1, 1, 3, 2, 0, 675, 12.899999999999999, 0, 687.9, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(76, 1, 1, 3, 2, 0, 675, 12.899999999999999, 0, 687.9, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 16:12:10', '2021-11-24 16:12:10'),
(77, 1, 1, 4, 3, 0, 30, 10, 0, 40, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 16:15:51', '2021-11-24 16:15:51'),
(78, 1, 1, 4, 3, 0, 30, 10, 0, 40, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 16:21:25', '2021-11-24 16:21:25'),
(79, 1, 1, 4, 3, 0, 30, 10, 0, 40, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(80, 1, 5, 5, 2, 0, 450, 40, 0, 490, '2021-11-25', NULL, NULL, 0, 0, '2021-11-24 17:23:41', '2021-11-24 17:23:41'),
(81, 1, 5, 5, 2, 0, 450, 40, 0, 490, '2021-11-25', NULL, NULL, 0, 0, '2021-11-24 17:25:14', '2021-11-24 17:25:14'),
(82, 1, 5, 5, 2, 0, 450, 40, 0, 490, '2021-11-25', NULL, NULL, 0, 1, '2021-11-24 11:29:23', '2021-11-24 17:29:23'),
(83, 1, 5, 5, 2, 0, 450, 40, 0, 490, '2021-11-25', NULL, NULL, 0, 1, '2021-11-24 11:44:03', '2021-11-24 17:44:03'),
(84, 1, 23, 3, 2, 0, 90, 90, 0, 180, '2021-11-24', NULL, NULL, 0, 1, '2021-11-24 11:55:56', '2021-11-24 17:55:56'),
(85, 1, 23, 1, 1, 0, 0, 0, 0, 0, '2021-11-24', NULL, NULL, 0, 0, '2021-11-24 18:34:08', '2021-11-24 18:34:08'),
(86, 1, 23, 4, 2, 0, 225, 30, 0, 255, '2021-11-24', NULL, NULL, 0, 1, '2021-11-24 12:59:36', '2021-11-24 18:59:36'),
(87, 1, 1, 1122334, 12, 20, 2250, 450, 50, 2670, '2021-11-25', 'this is a note', NULL, 0, 0, '2021-11-25 17:58:13', '2021-11-25 17:58:13'),
(88, 1, 1, 1212208, 12, 20, 2550, 255, 15, 2810, '2021-11-25', NULL, NULL, 0, 0, '2021-11-25 18:11:38', '2021-11-25 18:11:38'),
(89, 1, 1, 45, 16, 10, 2320, 296, 20, 2606, '2021-11-25', NULL, NULL, 0, 0, '2021-11-25 18:14:32', '2021-11-25 18:14:32'),
(90, 1, 3, 2121, 2121, 0, 9000, 1350, 0, 10350, '2021-11-25', NULL, NULL, 0, 0, '2021-11-25 18:17:40', '2021-11-25 18:17:40'),
(91, 1, 1, 12121, 12, 0, 640, 128, 0, 768, '2021-11-25', NULL, NULL, 0, 0, '2021-11-25 18:20:45', '2021-11-25 18:20:45'),
(92, 1, 1, 1223, 12, 20, 4200, 840, 30, 5030, '2021-11-25', 'this is a note', NULL, 0, 0, '2021-11-25 18:24:55', '2021-11-25 18:24:55'),
(93, 1, 1, 12223334, 12, 0, 600, 60, 0, 660, '2021-11-25', 'note', NULL, 0, 0, '2021-11-25 18:32:15', '2021-11-25 18:32:15'),
(94, 1, 1, 1123, 11, 0, 600, 60, 0, 660, '2021-11-25', NULL, NULL, 0, 0, '2021-11-25 18:38:17', '2021-11-25 18:38:17'),
(95, 1, 23, 4, 2, 0, 90, 90, 0, 180, '2021-11-26', NULL, NULL, 0, 0, '2021-11-26 16:48:24', '2021-11-26 16:48:24'),
(96, 1, 23, 4, 2, 50, 248, 200, 5, 493, '2021-12-14', 'test', NULL, 0, 0, '2021-11-26 16:52:22', '2021-11-26 16:52:22'),
(97, 17, 26, 4, 2, 0, 75, 0, 0, 75, '2021-12-01', NULL, NULL, 0, 0, '2021-12-01 14:30:31', '2021-12-01 14:30:31'),
(98, 17, 27, 4, 2, 0, 75, 0, 0, 75, '2021-12-01', NULL, NULL, 0, 0, '2021-12-01 15:41:11', '2021-12-01 15:41:11'),
(99, 27, 31, 2, 2, 0, 48, 0, 0, 48, '2021-12-02', NULL, NULL, 0, 0, '2021-12-02 12:54:27', '2021-12-02 12:54:27'),
(100, 27, 30, 2, 2, 10, 84, 0, 50, 44, '2021-12-02', 'vjjbcgj', NULL, 0, 0, '2021-12-02 12:57:27', '2021-12-02 12:57:27'),
(101, 27, 33, 3, 2, 20, 72, 0, 0, 92, '2021-11-12', 'udjdjd', NULL, 0, 1, '2021-12-02 07:04:26', '2021-12-02 13:04:26'),
(102, 1, 3, 1, 1, 40, 675, 30, 50, 695, '2021-12-03', NULL, NULL, 0, 0, '2021-12-03 12:30:54', '2021-12-03 12:30:54'),
(103, 1, 1, 4, 2, 0, 675, 60, 0, 735, '2021-12-03', NULL, NULL, 0, 0, '2021-12-03 16:34:15', '2021-12-03 16:34:15'),
(104, 1, 23, 4, 2, 0, 30, 20, 0, 50, '2021-12-03', NULL, NULL, 0, 1, '2021-12-03 10:36:58', '2021-12-03 16:36:58'),
(105, 1, 1, 11211, 11, 0, 4500, 900, 0, 5400, '2021-12-07', 'this is a note', NULL, 0, 0, '2021-12-07 18:17:34', '2021-12-07 18:17:34'),
(106, 1, 3, 909090, 112, 0, 1125, 225, 0, 1350, '2021-12-07', NULL, NULL, 0, 0, '2021-12-07 18:18:35', '2021-12-07 18:18:35'),
(107, 1, 3, 31100, 16, 4, 10005, 2001, 110, 11900, '2021-12-09', 'notes to check', '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/1\\/\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/1\\/\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/1\\/\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/1\\/\",\"https:\\/\\/api.securelienrelease.com\\/form5\\/1\\/\"]', 0, 0, '2021-12-09 13:04:37', '2021-12-09 19:04:37'),
(108, 1, 1, 11222229, 121, 0, 5980, 1035, 0, 7015, '2021-12-22', 'notes to check', '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/1\\/1\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/1\\/1\"]', 0, 0, '2021-12-10 17:47:17', '2021-12-10 17:47:17'),
(109, 1, 1, 23, 90, 0, 520, 52, 0, 572, '2021-12-10', 'null', '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/1\\/\"]', 0, 0, '2021-12-10 12:30:06', '2021-12-10 18:30:06'),
(110, 41, 54, 1, 4, 10, 1000, 0, 5, 1005, '2021-12-24', 'hola', '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/41\\/54\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/41\\/54\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/41\\/54\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/41\\/54\"]', 0, 0, '2021-12-25 02:05:30', '2021-12-25 02:05:30'),
(111, 1, 23, 6, 3, 2, 25, 20, 10, 37, '2021-12-30', 'test', '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/1\\/23\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/1\\/23\"]', 0, 0, '2021-12-27 12:59:58', '2021-12-27 12:59:58'),
(112, 42, 55, 5, 2, 0, 75, 75, 0, 150, '2021-12-31', 'dfff. fffff', '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/42\\/55\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/42\\/55\"]', 0, 0, '2021-12-29 12:10:54', '2021-12-29 12:10:54'),
(113, 44, 59, 2, 2, 40, 300, 30, 50, 320, '2021-12-29', 'please make payment', '[\"https:\\/\\/api.securelienrelease.com\\/form4\\/44\\/59\"]', 1, 1, '2021-12-29 13:34:43', '2021-12-29 19:34:43'),
(114, 44, 59, 3, 3, 12, 900, 0, 0, 900, '2021-12-29', 'null', '[\"https:\\/\\/api.securelienrelease.com\\/form2\\/44\\/59\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/44\\/\"]', 0, 1, '2021-12-29 13:48:55', '2021-12-29 19:48:55'),
(115, 44, 59, 6, 2, 0, 1500, 0, 0, 1500, '2021-12-29', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/44\\/59\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/44\\/59\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/44\\/59\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/44\\/59\",\"https:\\/\\/api.securelienrelease.com\\/form5\\/44\\/59\"]', 0, 0, '2021-12-29 19:52:46', '2021-12-29 19:52:46'),
(116, 44, 59, 3, 2, 20, 600, 60, 20, 660, '2021-12-30', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form2\\/44\\/\"]', 0, 0, '2021-12-30 18:53:29', '2021-12-30 18:53:29'),
(117, 1, 62, 65, 26, 0, 20, 0, 0, 20, '2022-02-08', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form2\\/1\\/62\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/1\\/62\"]', 1, 1, '2022-02-08 13:54:38', '2022-02-08 19:54:38'),
(118, 40, 60, 2022022, 1, 0, 6450.9, 0, 0, 6450.9, '2022-02-08', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form3\\/40\\/60\",\"https:\\/\\/api.securelienrelease.com\\/form1\\/40\\/60\"]', 0, 1, '2022-02-09 03:18:40', '2022-02-09 09:18:40'),
(119, 1, 64, 3, 3, 0, 20, 10, 0, 30, '2022-03-07', 'vjivivvijv', '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/1\\/64\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/1\\/64\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/1\\/64\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/1\\/64\",\"https:\\/\\/api.securelienrelease.com\\/form5\\/1\\/64\"]', 0, 0, '2022-03-07 18:58:47', '2022-03-07 18:58:47'),
(120, 72, 67, 5, 6, 0, 60, 0, 0, 60, '2022-03-10', 'ihihihihh', '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/72\\/67\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/72\\/67\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/72\\/67\"]', 0, 0, '2022-03-10 12:43:41', '2022-03-10 12:43:41'),
(121, 37, 71, 123456789, 30, 0, 1250, 0, 0, 1250, '2022-04-21', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form2\\/37\\/71\"]', 0, 0, '2022-03-20 13:22:45', '2022-03-20 13:22:45'),
(122, 37, 71, 123456, 15, 0, 3750, 0, 0, 3750, '2022-04-15', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form4\\/37\\/71\"]', 0, 0, '2022-03-20 13:25:44', '2022-03-20 13:25:44'),
(123, 37, 72, 1, 7, 0, 8750, 0, 0, 8750, '2022-03-20', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form4\\/37\\/72\"]', 0, 0, '2022-03-20 16:29:34', '2022-03-20 16:29:34'),
(124, 37, 53, 1, 1, 0, 0, 0, 0, 0, '2022-03-21', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form5\\/37\\/53\"]', 0, 1, '2022-03-21 13:45:41', '2022-03-21 18:45:41'),
(125, 37, 72, 1, 1, 0, 0, 0, 0, 0, '2022-03-22', 'forms only', '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/37\\/72\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/37\\/72\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/37\\/72\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/37\\/72\",\"https:\\/\\/api.securelienrelease.com\\/form5\\/37\\/72\"]', 0, 0, '2022-03-21 18:42:53', '2022-03-21 18:42:53'),
(126, 40, 73, 2, 1, 0, 6450.9, 0, 0, 6450.9, '2022-03-23', NULL, '[]', 0, 0, '2022-03-24 04:52:24', '2022-03-24 04:52:24'),
(127, 40, 73, 1, 1, 0, 3000, 0, 0, 3000, '2022-03-23', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/40\\/73\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/40\\/73\"]', 0, 0, '2022-03-24 05:01:02', '2022-03-24 05:01:02'),
(128, 40, 73, 1, 1, 0, 6000, 0, 0, 6000, '2022-03-23', NULL, '[]', 0, 0, '2022-03-24 05:29:04', '2022-03-24 05:29:04'),
(129, 40, 74, 1, 1, 0, 3000, 0, 0, 3000, '2022-03-23', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/40\\/74\"]', 1, 1, '2022-03-24 04:33:28', '2022-03-24 09:33:28'),
(130, 1, 75, 4, 5, 0, 1118, 100, 0, 1218, '2022-04-13', 'test desc', '[\"https:\\/\\/api.securelienrelease.com\\/form3\\/1\\/75\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/1\\/75\"]', 0, 0, '2022-03-25 17:13:57', '2022-03-25 17:13:57'),
(131, 37, 53, 1, 1, 0, 250, 0, 0, 250, '2022-03-25', NULL, '[]', 0, 0, '2022-03-25 22:46:05', '2022-03-25 22:46:05'),
(132, 40, 78, 1, 1, 0, 6000, 0, 0, 6000, '2022-03-25', NULL, '[]', 0, 1, '2022-03-25 18:10:20', '2022-03-25 23:10:20'),
(133, 40, 78, 6, 1, 0, 1875, 0, 125, 1750, '2022-03-30', NULL, '[]', 1, 1, '2022-03-30 13:25:45', '2022-03-30 18:25:45'),
(134, 40, 79, 1, 1, 0, 6, 0, 0, 6, '2022-03-30', NULL, '[]', 1, 1, '2022-03-30 16:39:34', '2022-03-30 21:39:34'),
(135, 40, 79, 2, 1, 0, 5, 0, 0, 5, '2022-04-03', NULL, '[]', 0, 0, '2022-04-04 10:27:56', '2022-04-04 10:27:56'),
(136, 40, 80, 1, 1, 0, 3775, 0, 0, 3775, '2022-04-07', NULL, '[]', 0, 0, '2022-04-08 01:44:56', '2022-04-08 01:44:56'),
(137, 40, 74, 1, 1, 0, 250, 0, 0, 250, '2022-04-24', NULL, '[]', 1, 1, '2022-04-25 02:47:22', '2022-04-25 07:47:22'),
(138, 40, 79, 3, 1, 0, 48, 0, 0, 48, '2022-04-24', NULL, '[]', 0, 0, '2022-04-25 07:56:44', '2022-04-25 07:56:44'),
(139, 40, 79, 1, 1, 0, 1, 0, 0, 1, '2022-04-26', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/40\\/79\"]', 0, 0, '2022-04-26 22:01:20', '2022-04-26 22:01:20'),
(140, 40, 79, 2, 1, 0, 212, 0, 0, 212, '2022-04-29', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form3\\/40\\/\"]', 0, 0, '2022-04-29 16:49:56', '2022-04-29 16:49:56'),
(141, 40, 80, 1, 1, 0, 1, 0, 0, 1, '2022-04-29', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/40\\/80\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/40\\/\"]', 2, 1, '2022-04-29 16:47:04', '2022-04-29 21:47:04'),
(142, 40, 78, 1, 1, 0, 1, 0, 0, 1, '2022-04-29', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form2\\/40\\/78\"]', 0, 1, '2022-04-29 17:26:58', '2022-04-29 22:26:58'),
(143, 40, 79, 1, 1, 0, 1, 0, 0, 1, '2022-05-02', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form2\\/40\\/79\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/40\\/79\"]', 0, 0, '2022-05-03 00:09:40', '2022-05-03 00:09:40'),
(144, 40, 79, 1, 1, 0, 3000, 0, 0, 3000, '2022-05-17', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form2\\/40\\/79\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/40\\/79\"]', 0, 1, '2022-05-18 06:06:27', '2022-05-18 11:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `estimate_documents`
--

CREATE TABLE `estimate_documents` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `document_type` varchar(255) NOT NULL,
  `file_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `estimate_documents`
--

INSERT INTO `estimate_documents` (`id`, `invoice_id`, `document_type`, `file_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'attachments', '20211112-064902.1636075044.pdf', '2021-11-12 12:49:02', '2021-11-12 12:49:02'),
(2, 1, 'attachments', '20211112-064902.1635175663513.jfif', '2021-11-12 12:49:02', '2021-11-12 12:49:02'),
(3, 1, 'photos', '20211112-064902.1.jpg', '2021-11-12 12:49:02', '2021-11-12 12:49:02'),
(4, 1, 'photos', '20211112-064902.1 - Copy.jpg', '2021-11-12 12:49:02', '2021-11-12 12:49:02'),
(5, 2, 'attachments', '20211112-064919.1636075044.pdf', '2021-11-12 12:49:19', '2021-11-12 12:49:19'),
(6, 2, 'attachments', '20211112-064919.1635175663513.jfif', '2021-11-12 12:49:19', '2021-11-12 12:49:19'),
(7, 2, 'photos', '20211112-064919.1.jpg', '2021-11-12 12:49:19', '2021-11-12 12:49:19'),
(8, 2, 'photos', '20211112-064919.1 - Copy.jpg', '2021-11-12 12:49:19', '2021-11-12 12:49:19'),
(9, 3, 'attachments', '20211112-064921.1636075044.pdf', '2021-11-12 12:49:21', '2021-11-12 12:49:21'),
(10, 3, 'attachments', '20211112-064921.1635175663513.jfif', '2021-11-12 12:49:21', '2021-11-12 12:49:21'),
(11, 3, 'photos', '20211112-064921.1.jpg', '2021-11-12 12:49:21', '2021-11-12 12:49:21'),
(12, 3, 'photos', '20211112-064921.1 - Copy.jpg', '2021-11-12 12:49:21', '2021-11-12 12:49:21'),
(13, 7, 'attachments', '20211123-101105.3.png', '2021-11-23 16:11:05', '2021-11-23 16:11:05'),
(14, 7, 'attachments', '20211123-101105.7.png', '2021-11-23 16:11:05', '2021-11-23 16:11:05'),
(15, 20, 'attachments', '20211123-010027.3.png', '2021-11-23 19:00:27', '2021-11-23 19:00:27'),
(16, 20, 'attachments', '20211123-010027.7.png', '2021-11-23 19:00:27', '2021-11-23 19:00:27'),
(17, 22, 'attachments', '20211123-010441.IMG_20211002_235925_049.jpg', '2021-11-23 19:04:41', '2021-11-23 19:04:41'),
(18, 22, 'attachments', '20211123-010441.IMG_20211002_235925_049.jpg', '2021-11-23 19:04:41', '2021-11-23 19:04:41'),
(19, 22, 'attachments', '20211123-010441.IMG_20211002_235925_049.jpg', '2021-11-23 19:04:41', '2021-11-23 19:04:41'),
(20, 22, 'photos', '20211123-010441.IMG_20211010_225749_228.jpg', '2021-11-23 19:04:41', '2021-11-23 19:04:41'),
(21, 22, 'photos', '20211123-010441.IMG_20211010_225749_228.jpg', '2021-11-23 19:04:41', '2021-11-23 19:04:41'),
(22, 22, 'photos', '20211123-010441.IMG_20211010_225749_228.jpg', '2021-11-23 19:04:41', '2021-11-23 19:04:41'),
(23, 24, 'attachments', '20211123-011108.IMG_20210924_205237_745.jpg', '2021-11-23 19:11:08', '2021-11-23 19:11:08'),
(24, 24, 'photos', '20211123-011108.IMG_20211003_135122_329.jpg', '2021-11-23 19:11:08', '2021-11-23 19:11:08'),
(25, 58, 'attachments', '20211124-071213.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 13:12:13', '2021-11-24 13:12:13'),
(26, 58, 'photos', '20211124-071213.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 13:12:13', '2021-11-24 13:12:13'),
(27, 61, 'attachments', '20211124-082830.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:28:30', '2021-11-24 14:28:30'),
(28, 61, 'attachments', '20211124-082830.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:28:30', '2021-11-24 14:28:30'),
(29, 61, 'attachments', '20211124-082830.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:28:30', '2021-11-24 14:28:30'),
(30, 61, 'photos', '20211124-082830.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:28:30', '2021-11-24 14:28:30'),
(31, 61, 'photos', '20211124-082830.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:28:30', '2021-11-24 14:28:30'),
(32, 61, 'photos', '20211124-082830.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:28:30', '2021-11-24 14:28:30'),
(33, 62, 'attachments', '20211124-083126.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:31:26', '2021-11-24 14:31:26'),
(34, 62, 'attachments', '20211124-083126.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:31:26', '2021-11-24 14:31:26'),
(35, 62, 'attachments', '20211124-083126.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:31:26', '2021-11-24 14:31:26'),
(36, 62, 'attachments', '20211124-083126.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:31:26', '2021-11-24 14:31:26'),
(37, 62, 'photos', '20211124-083126.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:31:26', '2021-11-24 14:31:26'),
(38, 62, 'photos', '20211124-083126.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:31:26', '2021-11-24 14:31:26'),
(39, 62, 'photos', '20211124-083126.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:31:26', '2021-11-24 14:31:26'),
(40, 62, 'photos', '20211124-083126.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:31:26', '2021-11-24 14:31:26'),
(41, 63, 'attachments', '20211124-083242.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:32:42', '2021-11-24 14:32:42'),
(42, 63, 'attachments', '20211124-083242.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:32:42', '2021-11-24 14:32:42'),
(43, 63, 'attachments', '20211124-083242.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:32:42', '2021-11-24 14:32:42'),
(44, 63, 'attachments', '20211124-083242.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:32:42', '2021-11-24 14:32:42'),
(45, 63, 'attachments', '20211124-083242.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:32:42', '2021-11-24 14:32:42'),
(46, 63, 'photos', '20211124-083242.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:32:42', '2021-11-24 14:32:42'),
(47, 63, 'photos', '20211124-083242.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:32:42', '2021-11-24 14:32:42'),
(48, 63, 'photos', '20211124-083242.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:32:42', '2021-11-24 14:32:42'),
(49, 63, 'photos', '20211124-083242.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:32:42', '2021-11-24 14:32:42'),
(50, 63, 'photos', '20211124-083242.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:32:42', '2021-11-24 14:32:42'),
(51, 64, 'attachments', '20211124-083333.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:33:33', '2021-11-24 14:33:33'),
(52, 64, 'attachments', '20211124-083333.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:33:33', '2021-11-24 14:33:33'),
(53, 64, 'attachments', '20211124-083333.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:33:33', '2021-11-24 14:33:33'),
(54, 64, 'attachments', '20211124-083333.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:33:33', '2021-11-24 14:33:33'),
(55, 64, 'attachments', '20211124-083333.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:33:33', '2021-11-24 14:33:33'),
(56, 64, 'attachments', '20211124-083333.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:33:33', '2021-11-24 14:33:33'),
(57, 64, 'photos', '20211124-083333.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:33:34', '2021-11-24 14:33:34'),
(58, 64, 'photos', '20211124-083334.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:33:34', '2021-11-24 14:33:34'),
(59, 64, 'photos', '20211124-083334.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:33:34', '2021-11-24 14:33:34'),
(60, 64, 'photos', '20211124-083334.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:33:34', '2021-11-24 14:33:34'),
(61, 64, 'photos', '20211124-083334.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:33:34', '2021-11-24 14:33:34'),
(62, 64, 'photos', '20211124-083334.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 14:33:34', '2021-11-24 14:33:34'),
(63, 65, 'attachments', '20211124-092318.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:23:18', '2021-11-24 15:23:18'),
(64, 65, 'photos', '20211124-092318.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:23:18', '2021-11-24 15:23:18'),
(65, 66, 'attachments', '20211124-093229.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:32:29', '2021-11-24 15:32:29'),
(66, 66, 'attachments', '20211124-093229.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:32:29', '2021-11-24 15:32:29'),
(67, 66, 'photos', '20211124-093229.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:32:29', '2021-11-24 15:32:29'),
(68, 66, 'photos', '20211124-093229.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:32:29', '2021-11-24 15:32:29'),
(69, 67, 'attachments', '20211124-093404.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:34:04', '2021-11-24 15:34:04'),
(70, 67, 'photos', '20211124-093404.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:34:04', '2021-11-24 15:34:04'),
(71, 68, 'attachments', '20211124-094459.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:44:59', '2021-11-24 15:44:59'),
(72, 68, 'photos', '20211124-094459.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:44:59', '2021-11-24 15:44:59'),
(73, 69, 'attachments', '20211124-094553.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:45:53', '2021-11-24 15:45:53'),
(74, 69, 'attachments', '20211124-094553.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:45:53', '2021-11-24 15:45:53'),
(75, 69, 'photos', '20211124-094553.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:45:53', '2021-11-24 15:45:53'),
(76, 69, 'photos', '20211124-094553.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:45:53', '2021-11-24 15:45:53'),
(77, 70, 'attachments', '20211124-095515.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:55:15', '2021-11-24 15:55:15'),
(78, 70, 'attachments', '20211124-095515.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:55:15', '2021-11-24 15:55:15'),
(79, 70, 'attachments', '20211124-095515.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:55:15', '2021-11-24 15:55:15'),
(80, 70, 'photos', '20211124-095515.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:55:15', '2021-11-24 15:55:15'),
(81, 70, 'photos', '20211124-095515.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:55:15', '2021-11-24 15:55:15'),
(82, 70, 'photos', '20211124-095515.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:55:15', '2021-11-24 15:55:15'),
(83, 71, 'attachments', '20211124-095733.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:57:33', '2021-11-24 15:57:33'),
(84, 71, 'attachments', '20211124-095733.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:57:33', '2021-11-24 15:57:33'),
(85, 71, 'attachments', '20211124-095733.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:57:33', '2021-11-24 15:57:33'),
(86, 71, 'attachments', '20211124-095733.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:57:33', '2021-11-24 15:57:33'),
(87, 71, 'photos', '20211124-095733.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:57:33', '2021-11-24 15:57:33'),
(88, 71, 'photos', '20211124-095733.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:57:33', '2021-11-24 15:57:33'),
(89, 71, 'photos', '20211124-095733.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:57:33', '2021-11-24 15:57:33'),
(90, 71, 'photos', '20211124-095733.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:57:33', '2021-11-24 15:57:33'),
(91, 72, 'attachments', '20211124-095835.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:58:35', '2021-11-24 15:58:35'),
(92, 72, 'attachments', '20211124-095835.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:58:35', '2021-11-24 15:58:35'),
(93, 72, 'attachments', '20211124-095835.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:58:35', '2021-11-24 15:58:35'),
(94, 72, 'attachments', '20211124-095835.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:58:35', '2021-11-24 15:58:35'),
(95, 72, 'attachments', '20211124-095835.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:58:35', '2021-11-24 15:58:35'),
(96, 72, 'photos', '20211124-095835.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:58:35', '2021-11-24 15:58:35'),
(97, 72, 'photos', '20211124-095835.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:58:35', '2021-11-24 15:58:35'),
(98, 72, 'photos', '20211124-095835.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:58:35', '2021-11-24 15:58:35'),
(99, 72, 'photos', '20211124-095835.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:58:35', '2021-11-24 15:58:35'),
(100, 72, 'photos', '20211124-095835.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 15:58:35', '2021-11-24 15:58:35'),
(101, 73, 'attachments', '20211124-100151.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(102, 73, 'attachments', '20211124-100151.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(103, 73, 'attachments', '20211124-100151.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(104, 73, 'attachments', '20211124-100151.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(105, 73, 'attachments', '20211124-100151.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(106, 73, 'attachments', '20211124-100151.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(107, 73, 'photos', '20211124-100151.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(108, 73, 'photos', '20211124-100151.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(109, 73, 'photos', '20211124-100151.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(110, 73, 'photos', '20211124-100151.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(111, 73, 'photos', '20211124-100151.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(112, 73, 'photos', '20211124-100151.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(113, 74, 'attachments', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(114, 74, 'attachments', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(115, 74, 'attachments', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(116, 74, 'attachments', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(117, 74, 'attachments', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(118, 74, 'attachments', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(119, 74, 'attachments', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(120, 74, 'photos', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(121, 74, 'photos', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(122, 74, 'photos', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(123, 74, 'photos', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(124, 74, 'photos', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(125, 74, 'photos', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(126, 74, 'photos', '20211124-100937.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(127, 75, 'attachments', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(128, 75, 'attachments', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(129, 75, 'attachments', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(130, 75, 'attachments', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(131, 75, 'attachments', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(132, 75, 'attachments', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(133, 75, 'attachments', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(134, 75, 'attachments', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(135, 75, 'photos', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(136, 75, 'photos', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(137, 75, 'photos', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(138, 75, 'photos', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(139, 75, 'photos', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(140, 75, 'photos', '20211124-101035.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:36', '2021-11-24 16:10:36'),
(141, 75, 'photos', '20211124-101036.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:36', '2021-11-24 16:10:36'),
(142, 75, 'photos', '20211124-101036.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:10:36', '2021-11-24 16:10:36'),
(143, 76, 'attachments', '20211124-101210.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:10', '2021-11-24 16:12:10'),
(144, 76, 'attachments', '20211124-101210.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:10', '2021-11-24 16:12:10'),
(145, 76, 'attachments', '20211124-101210.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:10', '2021-11-24 16:12:10'),
(146, 76, 'attachments', '20211124-101210.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:10', '2021-11-24 16:12:10'),
(147, 76, 'attachments', '20211124-101210.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:10', '2021-11-24 16:12:10'),
(148, 76, 'attachments', '20211124-101210.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:10', '2021-11-24 16:12:10'),
(149, 76, 'attachments', '20211124-101210.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:10', '2021-11-24 16:12:10'),
(150, 76, 'attachments', '20211124-101210.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:10', '2021-11-24 16:12:10'),
(151, 76, 'attachments', '20211124-101210.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:10', '2021-11-24 16:12:10'),
(152, 76, 'photos', '20211124-101210.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:10', '2021-11-24 16:12:10'),
(153, 76, 'photos', '20211124-101210.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:10', '2021-11-24 16:12:10'),
(154, 76, 'photos', '20211124-101210.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:11', '2021-11-24 16:12:11'),
(155, 76, 'photos', '20211124-101211.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:11', '2021-11-24 16:12:11'),
(156, 76, 'photos', '20211124-101211.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:11', '2021-11-24 16:12:11'),
(157, 76, 'photos', '20211124-101211.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:11', '2021-11-24 16:12:11'),
(158, 76, 'photos', '20211124-101211.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:11', '2021-11-24 16:12:11'),
(159, 76, 'photos', '20211124-101211.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:11', '2021-11-24 16:12:11'),
(160, 76, 'photos', '20211124-101211.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:12:11', '2021-11-24 16:12:11'),
(161, 77, 'attachments', '20211124-101551.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:15:51', '2021-11-24 16:15:51'),
(162, 77, 'photos', '20211124-101551.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:15:51', '2021-11-24 16:15:51'),
(163, 78, 'attachments', '20211124-102125.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:21:25', '2021-11-24 16:21:25'),
(164, 78, 'attachments', '20211124-102125.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:21:25', '2021-11-24 16:21:25'),
(165, 78, 'photos', '20211124-102125.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:21:25', '2021-11-24 16:21:25'),
(166, 78, 'photos', '20211124-102125.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:21:25', '2021-11-24 16:21:25'),
(167, 79, 'attachments', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(168, 79, 'attachments', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(169, 79, 'attachments', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(170, 79, 'attachments', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(171, 79, 'attachments', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(172, 79, 'attachments', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(173, 79, 'attachments', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(174, 79, 'photos', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(175, 79, 'photos', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(176, 79, 'photos', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(177, 79, 'photos', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(178, 79, 'photos', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(179, 79, 'photos', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(180, 79, 'photos', '20211124-103221.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(181, 81, 'attachments', '20211124-112514.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:25:14', '2021-11-24 17:25:14'),
(182, 81, 'attachments', '20211124-112514.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:25:14', '2021-11-24 17:25:14'),
(183, 81, 'photos', '20211124-112514.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:25:14', '2021-11-24 17:25:14'),
(184, 81, 'photos', '20211124-112514.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:25:14', '2021-11-24 17:25:14'),
(185, 82, 'attachments', '20211124-112633.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:26:33', '2021-11-24 17:26:33'),
(186, 82, 'attachments', '20211124-112633.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:26:33', '2021-11-24 17:26:33'),
(187, 82, 'attachments', '20211124-112633.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:26:33', '2021-11-24 17:26:33'),
(188, 82, 'photos', '20211124-112633.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:26:33', '2021-11-24 17:26:33'),
(189, 82, 'photos', '20211124-112633.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:26:33', '2021-11-24 17:26:33'),
(190, 82, 'photos', '20211124-112633.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:26:33', '2021-11-24 17:26:33'),
(191, 83, 'attachments', '20211124-114327.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:43:27', '2021-11-24 17:43:27'),
(192, 83, 'attachments', '20211124-114327.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:43:27', '2021-11-24 17:43:27'),
(193, 83, 'attachments', '20211124-114327.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:43:27', '2021-11-24 17:43:27'),
(194, 83, 'photos', '20211124-114327.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:43:27', '2021-11-24 17:43:27'),
(195, 83, 'photos', '20211124-114327.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:43:27', '2021-11-24 17:43:27'),
(196, 83, 'photos', '20211124-114327.Screenshot_2021-11-22-23-11-29-271_com.whatsapp.jpg', '2021-11-24 17:43:27', '2021-11-24 17:43:27'),
(197, 84, 'attachments', '20211124-115510.SOC-Julyy-To-December-2021-Final.pdf', '2021-11-24 17:55:10', '2021-11-24 17:55:10'),
(198, 84, 'photos', '20211124-115510.Preparing to set…', '2021-11-24 17:55:10', '2021-11-24 17:55:10'),
(199, 99, 'attachments', '20211202-065427.1638324219137.jpg', '2021-12-02 12:54:27', '2021-12-02 12:54:27'),
(200, 99, 'photos', '20211202-065427.1638324219137.jpg', '2021-12-02 12:54:27', '2021-12-02 12:54:27'),
(201, 104, 'attachments', '20211203-1036378631.pdf', '2021-12-03 16:36:37', '2021-12-03 16:36:37'),
(202, 104, 'photos', '20211203-1036372270.jpg', '2021-12-03 16:36:37', '2021-12-03 16:36:37'),
(203, 104, 'photos', '20211203-1036376135.jpg', '2021-12-03 16:36:37', '2021-12-03 16:36:37'),
(204, 105, 'attachments', '20211207-121734582.jpg', '2021-12-07 18:17:34', '2021-12-07 18:17:34'),
(205, 105, 'attachments', '20211207-121734514.jpg', '2021-12-07 18:17:34', '2021-12-07 18:17:34'),
(206, 105, 'photos', '20211207-1217345043.jpg', '2021-12-07 18:17:34', '2021-12-07 18:17:34'),
(207, 105, 'photos', '20211207-1217347351.jpg', '2021-12-07 18:17:34', '2021-12-07 18:17:34'),
(208, 106, 'attachments', '20211207-1218358739.jpg', '2021-12-07 18:18:35', '2021-12-07 18:18:35'),
(209, 106, 'attachments', '20211207-1218351863.jpg', '2021-12-07 18:18:35', '2021-12-07 18:18:35'),
(210, 106, 'photos', '20211207-1218353109.jpg', '2021-12-07 18:18:35', '2021-12-07 18:18:35'),
(213, 107, 'attachments', '20211209-1110112441.docx', '2021-12-09 17:10:11', '2021-12-09 17:10:11'),
(216, 107, 'photos', '20211209-1112333944.jpg', '2021-12-09 17:12:33', '2021-12-09 17:12:33'),
(218, 108, 'attachments', '20211210-114717572.docx', '2021-12-10 17:47:17', '2021-12-10 17:47:17'),
(219, 108, 'attachments', '20211210-114717437.docx', '2021-12-10 17:47:17', '2021-12-10 17:47:17'),
(220, 108, 'photos', '20211210-1147174365.jpg', '2021-12-10 17:47:17', '2021-12-10 17:47:17'),
(221, 108, 'photos', '20211210-1147177706.jpg', '2021-12-10 17:47:17', '2021-12-10 17:47:17'),
(222, 109, 'photos', '20211210-1228437576.png', '2021-12-10 18:28:43', '2021-12-10 18:28:43'),
(223, 109, 'photos', '20211210-1228439290.png', '2021-12-10 18:28:43', '2021-12-10 18:28:43'),
(224, 110, 'photos', '20211224-0805303970.jpg', '2021-12-25 02:05:30', '2021-12-25 02:05:30'),
(225, 114, 'attachments', '20211229-014831209.pdf', '2021-12-29 19:48:31', '2021-12-29 19:48:31'),
(226, 114, 'photos', '20211229-0148316530.png', '2021-12-29 19:48:31', '2021-12-29 19:48:31'),
(227, 114, 'photos', '20211229-0148314058.jpg', '2021-12-29 19:48:31', '2021-12-29 19:48:31'),
(228, 115, 'attachments', '20211229-0152465199.pdf', '2021-12-29 19:52:46', '2021-12-29 19:52:46'),
(229, 115, 'photos', '20211229-015246279.png', '2021-12-29 19:52:46', '2021-12-29 19:52:46'),
(230, 115, 'photos', '20211229-0152464739.jpg', '2021-12-29 19:52:46', '2021-12-29 19:52:46'),
(231, 118, 'photos', '20220209-02325190.jpg', '2022-02-09 08:32:51', '2022-02-09 08:32:51'),
(232, 123, 'attachments', '20220320-1129347855.png', '2022-03-20 16:29:34', '2022-03-20 16:29:34'),
(233, 123, 'photos', '20220320-1129345036.png', '2022-03-20 16:29:34', '2022-03-20 16:29:34'),
(234, 126, 'photos', '20220323-1152242584.jpg', '2022-03-24 04:52:24', '2022-03-24 04:52:24'),
(235, 127, 'photos', '20220324-1201025140.jpg', '2022-03-24 05:01:02', '2022-03-24 05:01:02'),
(236, 128, 'photos', '20220324-12290452.jpg', '2022-03-24 05:29:04', '2022-03-24 05:29:04'),
(237, 129, 'photos', '20220324-0430527627.jpg', '2022-03-24 09:30:52', '2022-03-24 09:30:52'),
(238, 130, 'photos', '20220325-1213576660.jpg', '2022-03-25 17:13:57', '2022-03-25 17:13:57'),
(239, 134, 'photos', '20220330-0428214284.jpg', '2022-03-30 21:28:21', '2022-03-30 21:28:21'),
(240, 136, 'attachments', '20220407-0844561288.jpg', '2022-04-08 01:44:56', '2022-04-08 01:44:56'),
(241, 136, 'photos', '20220407-0844569437.jpg', '2022-04-08 01:44:56', '2022-04-08 01:44:56'),
(242, 137, 'photos', '20220425-0243423670.jpg', '2022-04-25 07:43:42', '2022-04-25 07:43:42'),
(243, 139, 'photos', '20220426-0501201184.jpg', '2022-04-26 22:01:20', '2022-04-26 22:01:20'),
(244, 140, 'photos', '20220429-1149569707.jpg', '2022-04-29 16:49:56', '2022-04-29 16:49:56'),
(245, 141, 'photos', '20220429-1152153191.jpg', '2022-04-29 16:52:15', '2022-04-29 16:52:15'),
(246, 142, 'photos', '20220429-052606615.jpg', '2022-04-29 22:26:06', '2022-04-29 22:26:06'),
(247, 143, 'photos', '20220502-0709406632.jpg', '2022-05-03 00:09:40', '2022-05-03 00:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `estimate_items`
--

CREATE TABLE `estimate_items` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rate` double NOT NULL,
  `qty` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `estimate_items`
--

INSERT INTO `estimate_items` (`id`, `invoice_id`, `item_id`, `name`, `rate`, `qty`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'Snacks', 1, 1, 1, 1, '2021-11-12 12:49:19', '2021-11-12 12:49:19'),
(3, 3, 1, 'Snacks', 1, 1, 1, 1, '2021-11-12 12:49:21', '2021-11-12 12:49:21'),
(4, 4, 1, 'Snacks', 1, 1, 1, 1, '2021-11-23 16:04:50', '2021-11-23 16:04:50'),
(5, 5, 1, 'Snacks', 1, 1, 1, 1, '2021-11-23 16:05:45', '2021-11-23 16:05:45'),
(6, 6, 1, 'Snacks', 1, 1, 1, 1, '2021-11-23 16:09:25', '2021-11-23 16:09:25'),
(7, 7, 1, 'Snacks', 1, 1, 1, 1, '2021-11-23 16:11:05', '2021-11-23 16:11:05'),
(8, 20, 1, 'Snacks', 1, 1, 1, 1, '2021-11-23 19:00:27', '2021-11-23 19:00:27'),
(9, 22, 1, 'Snacks', 1, 1, 1, 1, '2021-11-23 19:04:40', '2021-11-23 19:04:40'),
(10, 24, 1, 'Snacks', 1, 1, 1, 1, '2021-11-23 19:11:08', '2021-11-23 19:11:08'),
(11, 58, 11, 'ice cream', 225, 1, 23, 225, '2021-11-24 13:12:13', '2021-11-24 13:12:13'),
(12, 61, 11, 'ice cream', 225, 1, 10, 225, '2021-11-24 14:28:30', '2021-11-24 14:28:30'),
(13, 62, 11, 'ice cream', 225, 1, 10, 225, '2021-11-24 14:31:26', '2021-11-24 14:31:26'),
(14, 63, 11, 'ice cream', 225, 1, 10, 225, '2021-11-24 14:32:42', '2021-11-24 14:32:42'),
(15, 64, 11, 'ice cream', 225, 1, 10, 225, '2021-11-24 14:33:33', '2021-11-24 14:33:33'),
(16, 65, 11, 'ice cream', 225, 1, 10, 225, '2021-11-24 15:23:18', '2021-11-24 15:23:18'),
(17, 66, 11, 'ice cream', 225, 1, 10, 225, '2021-11-24 15:32:29', '2021-11-24 15:32:29'),
(18, 67, 11, 'ice cream', 225, 1, 10, 225, '2021-11-24 15:34:03', '2021-11-24 15:34:03'),
(19, 68, 11, 'ice cream', 225, 3, 12.9, 675, '2021-11-24 15:44:58', '2021-11-24 15:44:58'),
(20, 69, 11, 'ice cream', 225, 3, 12.9, 675, '2021-11-24 15:45:53', '2021-11-24 15:45:53'),
(21, 70, 11, 'ice cream', 225, 3, 12.9, 675, '2021-11-24 15:55:15', '2021-11-24 15:55:15'),
(22, 71, 11, 'ice cream', 225, 3, 12.9, 675, '2021-11-24 15:57:33', '2021-11-24 15:57:33'),
(23, 72, 11, 'ice cream', 225, 3, 12.9, 675, '2021-11-24 15:58:35', '2021-11-24 15:58:35'),
(24, 73, 11, 'ice cream', 225, 3, 12.9, 675, '2021-11-24 16:01:51', '2021-11-24 16:01:51'),
(25, 74, 11, 'ice cream', 225, 3, 12.9, 675, '2021-11-24 16:09:37', '2021-11-24 16:09:37'),
(26, 75, 11, 'ice cream', 225, 3, 12.9, 675, '2021-11-24 16:10:35', '2021-11-24 16:10:35'),
(27, 76, 11, 'ice cream', 225, 3, 12.9, 675, '2021-11-24 16:12:10', '2021-11-24 16:12:10'),
(28, 77, 10, 'Coke dddddd', 30, 1, 10, 30, '2021-11-24 16:15:51', '2021-11-24 16:15:51'),
(29, 78, 10, 'Coke dddddd', 30, 1, 10, 30, '2021-11-24 16:21:25', '2021-11-24 16:21:25'),
(30, 79, 10, 'Coke dddddd', 30, 1, 10, 30, '2021-11-24 16:32:21', '2021-11-24 16:32:21'),
(31, 81, 11, 'ice cream', 225, 2, 40, 450, '2021-11-24 17:25:14', '2021-11-24 17:25:14'),
(32, 82, 11, 'ice cream', 225, 2, 40, 450, '2021-11-24 17:26:33', '2021-11-24 17:26:33'),
(33, 83, 11, 'ice cream', 225, 2, 40, 450, '2021-11-24 17:43:27', '2021-11-24 17:43:27'),
(34, 84, 10, 'Coke', 30, 3, 90, 90, '2021-11-24 17:55:10', '2021-11-24 17:55:10'),
(35, 86, 11, 'ice cream', 225, 1, 30, 225, '2021-11-24 18:54:06', '2021-11-24 18:54:06'),
(36, 89, 10, 'Coke', 30, 56, 168, 1680, '2021-11-25 18:14:32', '2021-11-25 18:14:32'),
(37, 89, 7, 'ttost', 32, 20, 128, 640, '2021-11-25 18:14:32', '2021-11-25 18:14:32'),
(38, 90, 11, 'ice cream', 225, 20, 900, 4500, '2021-11-25 18:17:40', '2021-11-25 18:17:40'),
(39, 90, 11, 'ice cream', 225, 20, 450, 4500, '2021-11-25 18:17:40', '2021-11-25 18:17:40'),
(40, 91, 7, 'ttost', 32, 20, 128, 640, '2021-11-25 18:20:45', '2021-11-25 18:20:45'),
(41, 92, 10, 'Coke', 30, 20, 120, 600, '2021-11-25 18:24:55', '2021-11-25 18:24:55'),
(42, 92, 11, 'ice cream', 225, 16, 720, 3600, '2021-11-25 18:24:55', '2021-11-25 18:24:55'),
(43, 93, 10, 'Coke', 30, 20, 60, 600, '2021-11-25 18:32:15', '2021-11-25 18:32:15'),
(44, 94, 10, 'Coke', 30, 20, 60, 600, '2021-11-25 18:38:17', '2021-11-25 18:38:17'),
(45, 95, 10, 'Coke', 30, 3, 90, 90, '2021-11-26 16:48:24', '2021-11-26 16:48:24'),
(46, 96, 10, 'Coke', 30, 4, 120, 120, '2021-11-26 16:52:22', '2021-11-26 16:52:22'),
(47, 96, 7, 'ttost', 32, 4, 80, 128, '2021-11-26 16:52:22', '2021-11-26 16:52:22'),
(48, 97, 15, 'test', 25, 3, 0, 75, '2021-12-01 14:30:31', '2021-12-01 14:30:31'),
(49, 98, 15, 'test', 25, 3, 0, 75, '2021-12-01 15:41:11', '2021-12-01 15:41:11'),
(50, 99, 16, 'Chair', 12, 4, 0, 48, '2021-12-02 12:54:27', '2021-12-02 12:54:27'),
(51, 100, 16, 'Chair', 12, 7, 0, 84, '2021-12-02 12:57:27', '2021-12-02 12:57:27'),
(52, 101, 16, 'Chair', 12, 6, 0, 72, '2021-12-02 13:03:59', '2021-12-02 13:03:59'),
(53, 102, 11, 'ice cream', 225, 3, 30, 675, '2021-12-03 12:30:54', '2021-12-03 12:30:54'),
(54, 103, 11, 'ice cream', 225, 3, 60, 675, '2021-12-03 16:34:15', '2021-12-03 16:34:15'),
(55, 104, 10, 'Coke', 30, 1, 20, 30, '2021-12-03 16:36:37', '2021-12-03 16:36:37'),
(56, 105, 11, 'ice cream', 225, 20, 900, 4500, '2021-12-07 18:17:34', '2021-12-07 18:17:34'),
(57, 106, 11, 'ice cream', 225, 5, 225, 1125, '2021-12-07 18:18:35', '2021-12-07 18:18:35'),
(63, 107, 11, 'ice cream', 225, 20, 900, 4500, '2021-12-09 19:04:37', '2021-12-09 19:04:37'),
(64, 107, 10, 'Coke', 35, 3, 21, 105, '2021-12-09 19:04:37', '2021-12-09 19:04:37'),
(65, 107, 11, 'ice cream', 225, 24, 1080, 5400, '2021-12-09 19:04:37', '2021-12-09 19:04:37'),
(66, 108, 11, 'ice cream', 225, 23, 1035, 5175, '2021-12-10 17:47:17', '2021-12-10 17:47:17'),
(67, 108, 10, 'Coke', 35, 23, 0, 805, '2021-12-10 17:47:17', '2021-12-10 17:47:17'),
(73, 109, 11, 'ice cream', 225, 2, 45, 450, '2021-12-10 18:30:06', '2021-12-10 18:30:06'),
(74, 109, 10, 'Coke', 35, 2, 7, 70, '2021-12-10 18:30:06', '2021-12-10 18:30:06'),
(76, 1, 1, 'Snacks', 1, 1, 1, 1, '2021-12-24 17:27:39', '2021-12-24 17:27:39'),
(77, 110, 23, 'website design', 1000, 1, 0, 1000, '2021-12-25 02:05:30', '2021-12-25 02:05:30'),
(78, 111, 27, 'cleaning service', 12.5, 2, 20, 25, '2021-12-27 12:59:58', '2021-12-27 12:59:58'),
(79, 112, 33, 'carwash', 25, 3, 75, 75, '2021-12-29 12:10:54', '2021-12-29 12:10:54'),
(80, 113, 34, 'Mobile', 300, 1, 30, 300, '2021-12-29 13:04:59', '2021-12-29 13:04:59'),
(82, 114, 34, 'Mobile', 300, 3, 0, 900, '2021-12-29 19:48:31', '2021-12-29 19:48:31'),
(83, 115, 34, 'Mobile', 300, 5, 0, 1500, '2021-12-29 19:52:46', '2021-12-29 19:52:46'),
(84, 116, 34, 'Mobile', 300, 2, 60, 600, '2021-12-30 18:53:29', '2021-12-30 18:53:29'),
(85, 117, 30, 'cleaning service', 20, 1, 0, 20, '2022-02-08 19:46:56', '2022-02-08 19:46:56'),
(86, 118, 22, 'Drywall materials', 3000, 1, 0, 3000, '2022-02-09 08:32:51', '2022-02-09 08:32:51'),
(87, 118, 37, 'T Bar Ceilings', 3450.9, 1, 0, 3450.9, '2022-02-09 08:32:51', '2022-02-09 08:32:51'),
(88, 119, 30, 'cleaning service', 20, 1, 10, 20, '2022-03-07 18:58:47', '2022-03-07 18:58:47'),
(89, 120, 42, 'ibibub', 60, 1, 0, 60, '2022-03-10 12:43:41', '2022-03-10 12:43:41'),
(90, 121, 21, 'website design', 1000, 1, 0, 1000, '2022-03-20 13:22:45', '2022-03-20 13:22:45'),
(91, 121, 39, 'SEO services', 250, 1, 0, 250, '2022-03-20 13:22:45', '2022-03-20 13:22:45'),
(92, 121, 40, 'forms', 0, 1, 0, 0, '2022-03-20 13:22:45', '2022-03-20 13:22:45'),
(93, 122, 21, 'website design', 1000, 3, 0, 3000, '2022-03-20 13:25:44', '2022-03-20 13:25:44'),
(94, 122, 39, 'SEO services', 250, 3, 0, 750, '2022-03-20 13:25:44', '2022-03-20 13:25:44'),
(95, 122, 40, 'forms', 0, 1, 0, 0, '2022-03-20 13:25:44', '2022-03-20 13:25:44'),
(96, 123, 21, 'website design', 1000, 7, 0, 7000, '2022-03-20 16:29:34', '2022-03-20 16:29:34'),
(97, 123, 39, 'SEO services', 250, 7, 0, 1750, '2022-03-20 16:29:34', '2022-03-20 16:29:34'),
(98, 124, 40, 'forms', 0, 1, 0, 0, '2022-03-21 18:37:07', '2022-03-21 18:37:07'),
(99, 125, 40, 'forms', 0, 1, 0, 0, '2022-03-21 18:42:53', '2022-03-21 18:42:53'),
(100, 126, 22, 'Drywall materials', 3000, 1, 0, 3000, '2022-03-24 04:52:24', '2022-03-24 04:52:24'),
(101, 126, 37, 'T Bar Ceilings', 3450.9, 1, 0, 3450.9, '2022-03-24 04:52:24', '2022-03-24 04:52:24'),
(102, 127, 22, 'Drywall materials', 3000, 1, 0, 3000, '2022-03-24 05:01:02', '2022-03-24 05:01:02'),
(103, 128, 22, 'Drywall materials', 3000, 2, 0, 6000, '2022-03-24 05:29:04', '2022-03-24 05:29:04'),
(104, 129, 22, 'Drywall materials', 3000, 1, 0, 3000, '2022-03-24 09:30:52', '2022-03-24 09:30:52'),
(105, 130, 30, 'cleaning service', 20, 1, 25, 20, '2022-03-25 17:13:57', '2022-03-25 17:13:57'),
(106, 130, 43, 'laptop repairing', 366, 3, 75, 1098, '2022-03-25 17:13:57', '2022-03-25 17:13:57'),
(107, 131, 39, 'SEO services', 250, 1, 0, 250, '2022-03-25 22:46:05', '2022-03-25 22:46:05'),
(108, 132, 22, 'Drywall materials', 3000, 1, 0, 3000, '2022-03-25 23:10:01', '2022-03-25 23:10:01'),
(109, 132, 22, 'Drywall materials', 3000, 1, 0, 3000, '2022-03-25 23:10:01', '2022-03-25 23:10:01'),
(110, 133, 45, 'Electrical', 775, 1, 0, 775, '2022-03-30 18:14:43', '2022-03-30 18:14:43'),
(111, 133, 47, 'Electrical Installation', 1100, 1, 0, 1100, '2022-03-30 18:14:43', '2022-03-30 18:14:43'),
(112, 134, 48, 'Under estimate \" Actions\" won\'t allow to input own description of work . Have to choose from items. Should be able to input description of work on the actual estimate and invoices', 1, 1, 0, 1, '2022-03-30 21:28:21', '2022-03-30 21:28:21'),
(113, 134, 49, 'Spelling Mistakes  \"POSTAL\" not postel', 1, 1, 0, 1, '2022-03-30 21:28:21', '2022-03-30 21:28:21'),
(114, 134, 50, 'When sending estimate, description is not included', 1, 1, 0, 1, '2022-03-30 21:28:21', '2022-03-30 21:28:21'),
(115, 134, 51, 'Edit information from all forms. Should be able to edit the text on Estimates , Invoices , Additional Work Authorizations and Lien releases.', 1, 1, 0, 1, '2022-03-30 21:28:21', '2022-03-30 21:28:21'),
(116, 134, 52, 'When inputting text. Run out of room. Stays on 1 line. When reaching the end of the line a 2nd , 3rd , 4th line for additional text needs to be created', 1, 1, 0, 1, '2022-03-30 21:28:21', '2022-03-30 21:28:21'),
(117, 134, 53, 'Cannot open pending estimates on Estimate platform. Ios and Android', 1, 1, 0, 1, '2022-03-30 21:28:21', '2022-03-30 21:28:21'),
(118, 135, 48, 'Under estimate \" Actions\" won\'t allow to input own description of work . Have to choose from items. Should be able to input description of work on the actual estimate and invoices', 1, 1, 0, 1, '2022-04-04 10:27:56', '2022-04-04 10:27:56'),
(119, 135, 50, 'When sending estimate, description is not included', 1, 1, 0, 1, '2022-04-04 10:27:56', '2022-04-04 10:27:56'),
(120, 135, 51, 'Edit information from all forms. Should be able to edit the text on Estimates , Invoices , Additional Work Authorizations and Lien releases.', 1, 1, 0, 1, '2022-04-04 10:27:56', '2022-04-04 10:27:56'),
(121, 135, 53, 'Cannot open pending estimates on Estimate platform. Ios and Android', 1, 1, 0, 1, '2022-04-04 10:27:56', '2022-04-04 10:27:56'),
(122, 135, 52, 'When inputting text. Run out of room. Stays on 1 line. When reaching the end of the line a 2nd , 3rd , 4th line for additional text needs to be created', 1, 1, 0, 1, '2022-04-04 10:27:56', '2022-04-04 10:27:56'),
(123, 136, 22, 'Drywall materials', 3000, 1, 0, 3000, '2022-04-08 01:44:56', '2022-04-08 01:44:56'),
(124, 136, 45, 'Electrical', 775, 1, 0, 775, '2022-04-08 01:44:56', '2022-04-08 01:44:56'),
(125, 137, 55, 'Eat your pussy', 1, 250, 0, 250, '2022-04-25 07:43:42', '2022-04-25 07:43:42'),
(126, 138, 56, 'REFINE WEBSITE/APP', 12, 3, 0, 36, '2022-04-25 07:56:44', '2022-04-25 07:56:44'),
(127, 138, 56, 'REFINE WEBSITE/APP', 12, 1, 0, 12, '2022-04-25 07:56:44', '2022-04-25 07:56:44'),
(128, 139, 53, 'Cannot open pending estimates on Estimate platform. Ios and Android', 1, 1, 0, 1, '2022-04-26 22:01:20', '2022-04-26 22:01:20'),
(129, 140, 58, 'Please set up \"WE Pay\" with Bank account to process monthly subscriptions.', 212, 1, 0, 212, '2022-04-29 16:49:56', '2022-04-29 16:49:56'),
(130, 141, 59, 'DRYWALL THE WORLD AND FIND WATER LEAKS AT THE HARBOR', 1, 1, 0, 1, '2022-04-29 16:52:15', '2022-04-29 16:52:15'),
(131, 142, 48, 'Under estimate \" Actions\" won\'t allow to input own description of work . Have to choose from items. Should be able to input description of work on the actual estimate and invoices', 1, 1, 0, 1, '2022-04-29 22:26:06', '2022-04-29 22:26:06'),
(132, 143, 54, 'Please upload Lien Releases', 1, 1, 0, 1, '2022-05-03 00:09:40', '2022-05-03 00:09:40'),
(133, 144, 22, 'Drywall materials', 3000, 1, 0, 3000, '2022-05-18 08:52:42', '2022-05-18 08:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `form_type` varchar(255) NOT NULL,
  `meta_data` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `signature` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `po_number` int(11) DEFAULT NULL,
  `days_to_pay` int(11) DEFAULT NULL,
  `markup` double NOT NULL,
  `subtotal` double NOT NULL,
  `tax` double NOT NULL,
  `discount` double NOT NULL,
  `total` double NOT NULL,
  `date` date NOT NULL,
  `notes` text,
  `forms` text,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `email_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `client_id`, `po_number`, `days_to_pay`, `markup`, `subtotal`, `tax`, `discount`, `total`, `date`, `notes`, `forms`, `status`, `email_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 10, 1, 1, 1, 1, 1, '2021-09-09', 'All things good', '[]', 0, 0, '2021-12-24 13:08:24', '2021-12-24 19:08:24'),
(2, 1, 1, 2, 20, 1, 1, 1, 1, 1, '2021-09-15', 'All things good', NULL, 2, 0, '2021-11-23 06:46:14', '2021-11-12 12:12:58'),
(3, 1, 1, 2, 30, 1, 1, 1, 1, 1, '2021-09-09', 'All things good', NULL, 1, 0, '2021-11-23 06:46:16', '2021-11-12 12:13:33'),
(4, 1, 3, 2121, 23, 0, 12000, 1200, 0, 13200, '2021-11-23', 'note', NULL, 0, 0, '2021-11-23 17:14:39', '2021-11-23 17:14:39'),
(5, 1, 1, 122, 11, 0, 256, 26, 0, 282, '2021-11-23', 'this is a note', NULL, 0, 0, '2021-11-23 17:47:13', '2021-11-23 17:47:13'),
(6, 1, 1, 66572, 12, 0, 11850, 1125, 200, 12875, '2021-11-23', 'this is a note', NULL, 0, 0, '2021-11-23 18:53:56', '2021-11-23 18:53:56'),
(7, 1, 1, 2107, 21, 0, 7425, 23, 0, 7448, '2021-11-23', NULL, NULL, 0, 0, '2021-11-23 19:26:15', '2021-11-23 19:26:15'),
(8, 1, 23, 4, 2, 0, 30, 20, 0, 50, '2021-11-24', NULL, NULL, 0, 1, '2021-11-24 13:33:28', '2021-11-24 19:33:28'),
(9, 1, 1, 12223, 12, 20, 4800, 930, 10, 5740, '2021-11-25', 'note', NULL, 0, 0, '2021-11-25 18:51:03', '2021-11-25 18:51:03'),
(10, 1, 1, 1222344, 12, 0, 27640, 2828, 0, 30468, '2021-11-25', 'this is a note', NULL, 0, 0, '2021-11-25 18:55:50', '2021-11-25 18:55:50'),
(11, 1, 1, 1111111, 10, 0, 4500, 900, 0, 5400, '2021-11-25', 'this is a note', NULL, 0, 0, '2021-11-25 19:10:27', '2021-11-25 19:10:27'),
(12, 1, 1, 212, 1212, 0, 0, 0, 0, 0, '2021-11-25', NULL, NULL, 0, 0, '2021-11-25 19:22:58', '2021-11-25 19:22:58'),
(13, 1, 1, 1123, 1111, 0, 4500, 900, 0, 5400, '2021-11-30', NULL, NULL, 0, 0, '2021-11-30 16:27:15', '2021-11-30 16:27:15'),
(14, 1, 1, 67678675, 12, 0, 6750, 1350, 0, 8100, '2021-11-30', NULL, NULL, 0, 0, '2021-11-30 16:38:07', '2021-11-30 16:38:07'),
(15, 1, 1, 12117, 11, 0, 6750, 2025, 0, 8775, '2021-11-30', NULL, NULL, 0, 0, '2021-11-30 16:56:31', '2021-11-30 16:56:31'),
(16, 1, 1, 121212, 11, 0, 6750, 2025, 0, 8775, '2021-11-30', NULL, NULL, 0, 0, '2021-11-30 16:57:10', '2021-11-30 16:57:10'),
(17, 1, 1, 4, 2, 0, 90, 90, 0, 180, '2021-11-30', NULL, NULL, 0, 0, '2021-11-30 17:03:55', '2021-11-30 17:03:55'),
(18, 27, 33, 3, 2, 100, 1800, 0, 50, 1850, '2021-12-02', 'hhxh', NULL, 0, 1, '2021-12-02 07:22:37', '2021-12-02 13:22:37'),
(19, 27, 33, 3, 2, 100, 1800, 0, 50, 1850, '2021-12-02', 'hhxh', NULL, 0, 0, '2021-12-02 13:22:17', '2021-12-02 13:22:17'),
(20, 27, 33, 3, 2, 100, 1800, 0, 50, 1850, '2021-12-02', 'hhxh', NULL, 0, 0, '2021-12-02 13:23:08', '2021-12-02 13:23:08'),
(21, 1, 1, 3, 3, 0, 30, 30, 0, 60, '2021-12-02', NULL, NULL, 0, 0, '2021-12-02 16:59:59', '2021-12-02 16:59:59'),
(22, 1, 1, 3, 3, 0, 30, 30, 0, 60, '2021-12-02', NULL, NULL, 0, 0, '2021-12-02 17:00:52', '2021-12-02 17:00:52'),
(23, 1, 1, 3, 3, 0, 30, 30, 0, 60, '2021-12-02', NULL, NULL, 0, 0, '2021-12-02 17:02:28', '2021-12-02 17:02:28'),
(24, 1, 1, 5, 2, 25, 90, 90, 10, 195, '2021-12-02', NULL, NULL, 0, 1, '2021-12-02 11:06:50', '2021-12-02 17:06:50'),
(25, 1, 1, 5, 2, 25, 90, 90, 10, 195, '2021-12-02', NULL, NULL, 0, 1, '2021-12-02 11:43:19', '2021-12-02 17:43:19'),
(26, 1, 1, 5, 2, 25, 90, 90, 10, 195, '2021-12-02', NULL, NULL, 0, 1, '2021-12-02 11:43:25', '2021-12-02 17:43:25'),
(27, 1, 23, 4, 2, 0, 675, 60, 0, 735, '2021-12-03', 'trst', NULL, 0, 1, '2021-12-03 10:40:00', '2021-12-03 16:40:00'),
(28, 1, 1, 112, 11, 0, 420, 84, 0, 504, '2021-12-07', 'note', NULL, 0, 0, '2021-12-07 17:49:14', '2021-12-07 17:49:14'),
(29, 1, 1, 400000, 12, 0, 420, 84, 0, 504, '2021-12-07', NULL, NULL, 0, 0, '2021-12-07 17:49:50', '2021-12-07 17:49:50'),
(30, 1, 1, 6, 3, 0, 225, 20, 0, 245, '2021-12-07', NULL, NULL, 0, 1, '2021-12-07 13:05:17', '2021-12-07 19:05:17'),
(31, 1, 1, 10203, 12, 20, 5175, 1035, 30, 6200, '2021-12-08', 'this is a note', NULL, 0, 1, '2021-12-08 11:09:30', '2021-12-08 17:09:30'),
(32, 1, 1, 1112223, 11, 0, 4500, 900, 0, 5400, '2021-12-08', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/1\\/1\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/1\\/1\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/1\\/1\"]', 0, 1, '2021-12-08 11:09:33', '2021-12-08 17:09:33'),
(33, 1, 1, 112112, 12, 15, 5980, 1196, 150, 7041, '2021-12-08', 'this is a note', '[\"https:\\/\\/api.securelienrelease.com\\/form3\\/1\\/\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/1\\/\",\"https:\\/\\/api.securelienrelease.com\\/form5\\/1\\/\"]', 0, 1, '2021-12-09 11:27:21', '2021-12-09 17:27:21'),
(34, 1, 1, 112112, 12, 12, 805, 161, 100, 878, '2021-12-08', 'this is a note', '[]', 0, 0, '2021-12-08 19:19:25', '2021-12-08 19:19:25'),
(35, 37, 53, 1001, 5, 10, 1000, 0, 5, 1005, '2021-12-20', 'need to website dsign asap', '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form5\\/37\\/53\"]', 0, 1, '2021-12-20 09:50:15', '2021-12-20 15:50:15'),
(36, 1, 23, 4345, 2, 3, 60, 30, 10, 83, '2021-11-09', 'testing new invoice', '[\"https:\\/\\/api.securelienrelease.com\\/form2\\/1\\/23\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/1\\/23\"]', 0, 0, '2021-12-27 13:27:48', '2021-12-27 13:27:48'),
(37, 44, 59, 1, 1, 0, 900, 90, 0, 990, '2021-12-29', 'jzjzj', '[\"https:\\/\\/api.securelienrelease.com\\/form5\\/44\\/59\"]', 0, 1, '2021-12-29 07:28:07', '2021-12-29 13:28:07'),
(38, 44, 59, 3, 2, 0, 900, 0, 0, 900, '2021-12-29', NULL, '[]', 0, 0, '2021-12-29 19:21:42', '2021-12-29 19:21:42'),
(39, 45, 61, 1, 1, 0, 500, 0, 0, 500, '2021-12-31', NULL, '[]', 0, 0, '2021-12-31 13:45:31', '2021-12-31 13:45:31'),
(40, 37, 53, 1, 1, 0, 250, 0, 0, 250, '2022-02-04', NULL, '[]', 0, 0, '2022-02-05 07:55:30', '2022-02-05 07:55:30'),
(41, 37, 53, 1, 1, 0, 250, 0, 0, 250, '2022-02-08', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form5\\/37\\/53\"]', 0, 0, '2022-02-08 04:52:33', '2022-02-08 04:52:33'),
(42, 37, 53, 1, 1, 0, 1000, 0, 0, 1000, '2022-02-07', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form5\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/37\\/53\"]', 0, 0, '2022-02-08 12:30:41', '2022-02-08 12:30:41'),
(43, 1, 11, 234234, 2, 0, 20, 0, 0, 20, '2022-02-08', NULL, '[]', 0, 0, '2022-02-08 16:20:17', '2022-02-08 16:20:17'),
(44, 1, 62, 3030, 30, 0, 20, 0, 0, 20, '2022-02-08', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/1\\/62\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/1\\/62\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/1\\/62\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/1\\/62\"]', 0, 1, '2022-02-08 13:49:19', '2022-02-08 19:49:19'),
(45, 1, 62, 88, 30, 0, 20, 0, 0, 20, '2022-02-08', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/1\\/62\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/1\\/62\"]', 0, 0, '2022-02-08 19:46:20', '2022-02-08 19:46:20'),
(46, 1, 63, 2423, 3, 0, 20, 10, 0, 30, '2022-03-01', 'test', '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/1\\/63\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/1\\/63\"]', 0, 1, '2022-03-01 09:55:49', '2022-03-01 15:55:49'),
(47, 1, 64, 4, 4, 0, 20, 0, 0, 20, '2022-03-07', 'jvjvjvuvjv', '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/1\\/64\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/1\\/64\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/1\\/64\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/1\\/64\",\"https:\\/\\/api.securelienrelease.com\\/form5\\/1\\/64\"]', 0, 0, '2022-03-07 19:06:05', '2022-03-07 19:06:05'),
(48, 72, 68, 1, 1, 0, 60, 0, 0, 60, '2022-03-19', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form5\\/72\\/68\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/72\\/68\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/72\\/68\"]', 0, 0, '2022-03-10 12:45:23', '2022-03-10 12:45:23'),
(49, 1, 75, 4, 2, 0, 366, 0, 0, 366, '2022-03-25', 'test', '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/1\\/75\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/1\\/75\"]', 0, 0, '2022-03-25 17:11:37', '2022-03-25 17:11:37'),
(50, 37, 53, 1, 1, 0, 0, 0, 0, 0, '2022-03-25', NULL, '[\"https:\\/\\/api.securelienrelease.com\\/form1\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form2\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form3\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form4\\/37\\/53\",\"https:\\/\\/api.securelienrelease.com\\/form5\\/37\\/53\"]', 0, 0, '2022-03-25 22:35:12', '2022-03-25 22:35:12'),
(51, 40, 79, 4, 1, 0, 11, 0, 0, 11, '2022-04-03', NULL, '[]', 0, 1, '2022-04-05 07:10:22', '2022-04-05 12:10:22'),
(52, 37, 71, 1, 1, 0, 2500, 0, 0, 2500, '2022-04-20', NULL, '[]', 0, 0, '2022-04-09 00:23:30', '2022-04-09 00:23:30'),
(53, 40, 78, 1234, 1, 0, 3000, 0, 0, 3000, '2022-05-13', NULL, '[]', 0, 1, '2022-05-14 05:26:58', '2022-05-14 10:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_documents`
--

CREATE TABLE `invoice_documents` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `document_type` varchar(255) NOT NULL,
  `file_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_documents`
--

INSERT INTO `invoice_documents` (`id`, `invoice_id`, `document_type`, `file_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'attachments', '20211112-061231.1636075044.pdf', '2021-11-12 12:12:31', '2021-11-12 12:12:31'),
(2, 1, 'attachments', '20211112-061231.1635175663513.jfif', '2021-11-12 12:12:31', '2021-11-12 12:12:31'),
(3, 1, 'photos', '20211112-061231.1.jpg', '2021-11-12 12:12:31', '2021-11-12 12:12:31'),
(4, 1, 'photos', '20211112-061231.1 - Copy.jpg', '2021-11-12 12:12:31', '2021-11-12 12:12:31'),
(5, 2, 'attachments', '20211112-061258.1636075044.pdf', '2021-11-12 12:12:58', '2021-11-12 12:12:58'),
(6, 2, 'attachments', '20211112-061258.1635175663513.jfif', '2021-11-12 12:12:58', '2021-11-12 12:12:58'),
(7, 2, 'photos', '20211112-061258.1.jpg', '2021-11-12 12:12:58', '2021-11-12 12:12:58'),
(8, 2, 'photos', '20211112-061258.1 - Copy.jpg', '2021-11-12 12:12:58', '2021-11-12 12:12:58'),
(9, 3, 'attachments', '20211112-061333.1636075044.pdf', '2021-11-12 12:13:33', '2021-11-12 12:13:33'),
(10, 3, 'attachments', '20211112-061333.1635175663513.jfif', '2021-11-12 12:13:33', '2021-11-12 12:13:33'),
(11, 3, 'photos', '20211112-061333.1.jpg', '2021-11-12 12:13:33', '2021-11-12 12:13:33'),
(12, 3, 'photos', '20211112-061333.1 - Copy.jpg', '2021-11-12 12:13:33', '2021-11-12 12:13:33'),
(13, 8, 'attachments', '20211124-013242.89. 20210503 Guidelines for Sinopharm Vaccine _5704.pdf', '2021-11-24 19:32:42', '2021-11-24 19:32:42'),
(14, 8, 'photos', '20211124-013242.images (7).jpeg', '2021-11-24 19:32:42', '2021-11-24 19:32:42'),
(15, 17, 'attachments', '20211130-110355.SOC-Julyy-To-December-2021-Final.pdf', '2021-11-30 17:03:55', '2021-11-30 17:03:55'),
(16, 17, 'attachments', '20211130-110355.SOC-JAN-JUN-2020-CONVENTIONAL-BANKING.pdf', '2021-11-30 17:03:55', '2021-11-30 17:03:55'),
(17, 17, 'photos', '20211130-110355.Preparing to set…', '2021-11-30 17:03:55', '2021-11-30 17:03:55'),
(18, 17, 'photos', '20211130-110355.WhatsApp Image 2021-10-08 at 2.58.33 AM.jpeg', '2021-11-30 17:03:55', '2021-11-30 17:03:55'),
(19, 21, 'attachments', '20211202-105959.SOC-Julyy-To-December-2021-Final.pdf', '2021-12-02 16:59:59', '2021-12-02 16:59:59'),
(20, 21, 'attachments', '20211202-105959.SOC-JAN-JUN-2020-CONVENTIONAL-BANKING.pdf', '2021-12-02 16:59:59', '2021-12-02 16:59:59'),
(21, 22, 'attachments', '20211202-110052.SOC-Julyy-To-December-2021-Final.pdf', '2021-12-02 17:00:52', '2021-12-02 17:00:52'),
(22, 22, 'attachments', '20211202-110052.SOC-JAN-JUN-2020-CONVENTIONAL-BANKING.pdf', '2021-12-02 17:00:52', '2021-12-02 17:00:52'),
(23, 22, 'attachments', '20211202-110052.SOC-Julyy-To-December-2021-Final.pdf', '2021-12-02 17:00:52', '2021-12-02 17:00:52'),
(24, 22, 'attachments', '20211202-110052.SOC-JAN-JUN-2020-CONVENTIONAL-BANKING.pdf', '2021-12-02 17:00:52', '2021-12-02 17:00:52'),
(61, 27, 'attachments', '20211203-103931254.pdf', '2021-12-03 16:39:31', '2021-12-03 16:39:31'),
(62, 27, 'photos', '20211203-1039317501.jpg', '2021-12-03 16:39:31', '2021-12-03 16:39:31'),
(63, 27, 'photos', '20211203-1039318069.jpg', '2021-12-03 16:39:31', '2021-12-03 16:39:31'),
(64, 28, 'attachments', '20211207-1149143689.jpg', '2021-12-07 17:49:14', '2021-12-07 17:49:14'),
(65, 28, 'photos', '20211207-1149144974.jpg', '2021-12-07 17:49:14', '2021-12-07 17:49:14'),
(66, 28, 'photos', '20211207-1149141779.jpg', '2021-12-07 17:49:14', '2021-12-07 17:49:14'),
(67, 29, 'attachments', '20211207-1149509981.jpg', '2021-12-07 17:49:50', '2021-12-07 17:49:50'),
(68, 29, 'photos', '20211207-1149504506.jpg', '2021-12-07 17:49:50', '2021-12-07 17:49:50'),
(69, 29, 'photos', '20211207-1149504830.jpg', '2021-12-07 17:49:50', '2021-12-07 17:49:50'),
(70, 31, 'attachments', '20211208-1019521761.docx', '2021-12-08 16:19:52', '2021-12-08 16:19:52'),
(71, 31, 'photos', '20211208-1019524274.jpg', '2021-12-08 16:19:52', '2021-12-08 16:19:52'),
(72, 31, 'photos', '20211208-1019527560.jpg', '2021-12-08 16:19:52', '2021-12-08 16:19:52'),
(73, 32, 'attachments', '20211208-1100153266.docx', '2021-12-08 17:00:15', '2021-12-08 17:00:15'),
(74, 32, 'photos', '20211208-1100155808.jpg', '2021-12-08 17:00:15', '2021-12-08 17:00:15'),
(75, 32, 'photos', '20211208-1100155505.jpg', '2021-12-08 17:00:15', '2021-12-08 17:00:15'),
(77, 33, 'photos', '20211208-1143179693.jpg', '2021-12-08 17:43:17', '2021-12-08 17:43:17'),
(78, 33, 'photos', '20211208-1143176041.jpg', '2021-12-08 17:43:17', '2021-12-08 17:43:17'),
(79, 33, 'attachments', '20211208-0151087891.docx', '2021-12-08 19:51:08', '2021-12-08 19:51:08'),
(80, 33, 'attachments', '20211208-015108572.docx', '2021-12-08 19:51:08', '2021-12-08 19:51:08'),
(81, 33, 'attachments', '20211208-0151083527.pdf', '2021-12-08 19:51:08', '2021-12-08 19:51:08'),
(82, 33, 'attachments', '20211208-0151085463.docx', '2021-12-08 19:51:08', '2021-12-08 19:51:08'),
(83, 35, 'attachments', '20211220-0948588474.pdf', '2021-12-20 15:48:58', '2021-12-20 15:48:58'),
(84, 35, 'photos', '20211220-0948588829.jpg', '2021-12-20 15:48:58', '2021-12-20 15:48:58'),
(85, 35, 'photos', '20211220-0948587985.jpg', '2021-12-20 15:48:58', '2021-12-20 15:48:58'),
(86, 35, 'photos', '20211220-0948588176.jpg', '2021-12-20 15:48:58', '2021-12-20 15:48:58'),
(87, 35, 'photos', '20211220-0948589196.jpg', '2021-12-20 15:48:58', '2021-12-20 15:48:58'),
(88, 35, 'photos', '20211220-0948582054.jpg', '2021-12-20 15:48:58', '2021-12-20 15:48:58'),
(89, 39, 'photos', '20211231-0745317981.jpg', '2021-12-31 13:45:31', '2021-12-31 13:45:31'),
(90, 49, 'photos', '20220325-1211376796.jpg', '2022-03-25 17:11:37', '2022-03-25 17:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rate` double NOT NULL,
  `qty` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `item_id`, `name`, `rate`, `qty`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'Snacks', 1, 1, 1, 1, '2021-11-12 12:12:58', '2021-11-12 12:12:58'),
(3, 3, 1, 'Snacks', 1, 1, 1, 1, '2021-11-12 12:13:33', '2021-11-12 12:13:33'),
(4, 4, 1, 'Snacks', 1, 1, 1, 1, '2021-11-22 14:28:14', '2021-11-22 14:28:14'),
(5, 8, 10, 'Coke', 30, 1, 20, 30, '2021-11-24 19:32:42', '2021-11-24 19:32:42'),
(6, 9, 11, 'ice cream', 225, 20, 900, 4500, '2021-11-25 18:51:03', '2021-11-25 18:51:03'),
(7, 9, 10, 'Coke', 30, 10, 30, 300, '2021-11-25 18:51:03', '2021-11-25 18:51:03'),
(8, 10, 11, 'ice cream', 225, 120, 2700, 27000, '2021-11-25 18:55:50', '2021-11-25 18:55:50'),
(9, 10, 7, 'ttost', 32, 20, 128, 640, '2021-11-25 18:55:50', '2021-11-25 18:55:50'),
(10, 11, 11, 'ice cream', 225, 20, 900, 4500, '2021-11-25 19:10:27', '2021-11-25 19:10:27'),
(11, 13, 11, 'ice cream', 225, 20, 900, 4500, '2021-11-30 16:27:15', '2021-11-30 16:27:15'),
(12, 14, 11, 'ice cream', 225, 30, 1350, 6750, '2021-11-30 16:38:07', '2021-11-30 16:38:07'),
(13, 15, 11, 'ice cream', 225, 30, 2025, 6750, '2021-11-30 16:56:31', '2021-11-30 16:56:31'),
(14, 16, 11, 'ice cream', 225, 30, 2025, 6750, '2021-11-30 16:57:10', '2021-11-30 16:57:10'),
(15, 17, 10, 'Coke', 30, 3, 90, 90, '2021-11-30 17:03:55', '2021-11-30 17:03:55'),
(16, 18, 20, 'laptop', 600, 3, 0, 1800, '2021-12-02 13:22:08', '2021-12-02 13:22:08'),
(17, 19, 20, 'laptop', 600, 3, 0, 1800, '2021-12-02 13:22:17', '2021-12-02 13:22:17'),
(18, 20, 20, 'laptop', 600, 3, 0, 1800, '2021-12-02 13:23:08', '2021-12-02 13:23:08'),
(19, 21, 10, 'Coke', 30, 1, 30, 30, '2021-12-02 16:59:59', '2021-12-02 16:59:59'),
(20, 22, 10, 'Coke', 30, 1, 30, 30, '2021-12-02 17:00:52', '2021-12-02 17:00:52'),
(21, 23, 10, 'Coke', 30, 1, 30, 30, '2021-12-02 17:02:28', '2021-12-02 17:02:28'),
(22, 24, 10, 'Coke', 30, 3, 90, 90, '2021-12-02 17:06:19', '2021-12-02 17:06:19'),
(23, 25, 10, 'Coke', 30, 3, 90, 90, '2021-12-02 17:09:35', '2021-12-02 17:09:35'),
(24, 26, 10, 'Coke', 30, 3, 90, 90, '2021-12-02 17:14:15', '2021-12-02 17:14:15'),
(25, 27, 11, 'ice cream', 225, 3, 60, 675, '2021-12-03 16:39:31', '2021-12-03 16:39:31'),
(26, 28, 10, 'Coke', 35, 12, 84, 420, '2021-12-07 17:49:14', '2021-12-07 17:49:14'),
(27, 29, 10, 'Coke', 35, 12, 84, 420, '2021-12-07 17:49:50', '2021-12-07 17:49:50'),
(28, 30, 11, 'ice cream', 225, 1, 20, 225, '2021-12-07 19:04:59', '2021-12-07 19:04:59'),
(29, 31, 11, 'ice cream', 225, 23, 1035, 5175, '2021-12-08 16:19:52', '2021-12-08 16:19:52'),
(30, 32, 11, 'ice cream', 225, 20, 900, 4500, '2021-12-08 17:00:15', '2021-12-08 17:00:15'),
(32, 34, 10, 'Coke', 35, 23, 161, 805, '2021-12-08 19:19:25', '2021-12-08 19:19:25'),
(35, 33, 10, 'Coke', 35, 23, 161, 805, '2021-12-08 20:19:08', '2021-12-08 20:19:08'),
(36, 33, 11, 'ice cream', 225, 23, 1035, 5175, '2021-12-08 20:19:08', '2021-12-08 20:19:08'),
(37, 35, 21, 'website design', 1000, 1, 0, 1000, '2021-12-20 15:48:58', '2021-12-20 15:48:58'),
(38, 1, 1, 'Snacks', 1, 1, 1, 1, '2021-12-24 19:08:24', '2021-12-24 19:08:24'),
(39, 36, 30, 'cleaning service', 20, 3, 30, 60, '2021-12-27 13:27:48', '2021-12-27 13:27:48'),
(40, 37, 34, 'Mobile', 300, 3, 90, 900, '2021-12-29 13:20:51', '2021-12-29 13:20:51'),
(41, 38, 34, 'Mobile', 300, 3, 0, 900, '2021-12-29 19:21:42', '2021-12-29 19:21:42'),
(42, 39, 38, 'video', 500, 1, 0, 500, '2021-12-31 13:45:31', '2021-12-31 13:45:31'),
(43, 40, 39, 'SEO services', 250, 1, 0, 250, '2022-02-05 07:55:30', '2022-02-05 07:55:30'),
(44, 41, 39, 'SEO services', 250, 1, 0, 250, '2022-02-08 04:52:33', '2022-02-08 04:52:33'),
(45, 42, 21, 'website design', 1000, 1, 0, 1000, '2022-02-08 12:30:41', '2022-02-08 12:30:41'),
(46, 43, 30, 'cleaning service', 20, 1, 0, 20, '2022-02-08 16:20:17', '2022-02-08 16:20:17'),
(47, 44, 30, 'cleaning service', 20, 1, 0, 20, '2022-02-08 19:03:03', '2022-02-08 19:03:03'),
(48, 45, 30, 'cleaning service', 20, 1, 0, 20, '2022-02-08 19:46:20', '2022-02-08 19:46:20'),
(49, 46, 30, 'cleaning service', 20, 1, 10, 20, '2022-03-01 15:55:41', '2022-03-01 15:55:41'),
(50, 47, 30, 'cleaning service', 20, 1, 0, 20, '2022-03-07 19:06:05', '2022-03-07 19:06:05'),
(51, 48, 42, 'ibibub', 60, 1, 0, 60, '2022-03-10 12:45:23', '2022-03-10 12:45:23'),
(52, 49, 43, 'laptop repairing', 366, 1, 0, 366, '2022-03-25 17:11:37', '2022-03-25 17:11:37'),
(53, 50, 40, 'forms', 0, 1, 0, 0, '2022-03-25 22:35:12', '2022-03-25 22:35:12'),
(54, 51, 54, 'Please upload Lien Releases', 1, 11, 0, 11, '2022-04-04 10:32:00', '2022-04-04 10:32:00'),
(55, 52, 21, 'website design', 1000, 2, 0, 2000, '2022-04-09 00:23:30', '2022-04-09 00:23:30'),
(56, 52, 39, 'SEO services', 250, 2, 0, 500, '2022-04-09 00:23:30', '2022-04-09 00:23:30'),
(57, 53, 22, 'Drywall materials', 3000, 1, 0, 3000, '2022-05-14 10:26:06', '2022-05-14 10:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `user_id`, `name`, `price`, `note`, `created_at`, `updated_at`) VALUES
(5, 2, 'test item 1', 20, 'yes', '2021-09-06 18:48:09', '2021-09-02 07:29:20'),
(6, 2, 'test item', 20, 'yes', '2021-09-06 18:48:07', '2021-09-02 07:43:49'),
(14, 25, 'bread', 25, 'bread', '2021-11-29 15:25:36', '2021-11-29 15:25:36'),
(15, 17, 'test', 25, 'test desc', '2021-12-01 10:38:49', '2021-12-01 16:38:49'),
(18, 27, 'desk', 500, 'dedy', '2021-12-02 13:18:02', '2021-12-02 13:18:02'),
(19, 27, 'pen', 9, 'beautiful pen', '2021-12-02 07:21:28', '2021-12-02 13:21:28'),
(20, 27, 'laptop', 600, 'HP', '2021-12-02 13:18:46', '2021-12-02 13:18:46'),
(21, 37, 'website design', 1000, 'website design', '2021-12-20 15:44:19', '2021-12-20 15:44:19'),
(22, 40, 'Drywall materials', 3000, 'Purchase drywall materials', '2021-12-30 03:23:08', '2021-12-30 09:23:08'),
(23, 41, 'website design', 1000, 'whole website design', '2021-12-25 02:04:20', '2021-12-25 02:04:20'),
(30, 1, 'cleaning service', 20, 'house cleaning service', '2021-12-27 13:24:44', '2021-12-27 13:24:44'),
(33, 42, 'carwash', 25, 'test', '2021-12-29 12:09:45', '2021-12-29 12:09:45'),
(34, 44, 'Mobile', 300, '4 GB 128 GB', '2021-12-29 06:46:22', '2021-12-29 12:46:22'),
(37, 40, 'T Bar Ceilings', 3450.9, NULL, '2021-12-30 09:23:48', '2021-12-30 09:23:48'),
(38, 45, 'video', 500, 'video graphic', '2021-12-31 13:44:05', '2021-12-31 13:44:05'),
(39, 37, 'SEO services', 250, 'marketing seo', '2022-02-05 07:54:48', '2022-02-05 07:54:48'),
(40, 37, 'forms', 0, NULL, '2022-02-22 14:53:44', '2022-02-22 14:53:44'),
(41, 1, 'Car service', 200000, 'car service', '2022-03-25 12:05:54', '2022-03-25 17:05:54'),
(42, 72, 'ibibub', 60, 'hvjvjvvjvjb', '2022-03-10 12:42:36', '2022-03-10 12:42:36'),
(43, 1, 'laptop repairing', 366, 'laptop repairing service', '2022-03-25 12:05:26', '2022-03-25 17:05:26'),
(44, 1, 'new', 25, 'item', '2022-03-25 17:06:14', '2022-03-25 17:06:14'),
(45, 40, 'Electrical', 775, 'Purchase all electrical products . Includes mc cable , Metal electrical boxes . Plugs  ,plate covers.', '2022-03-30 18:00:49', '2022-03-30 18:00:49'),
(46, 40, 'Fuel Surcharge', 250, 'Fuel surcharge.', '2022-03-30 13:05:54', '2022-03-30 18:05:54'),
(47, 40, 'Electrical Installation', 1100, 'Install mc cable through top of wall track. Install 4 metal 2 gang boxes. Run mc cable to each box and electrical panel. Install 8 plugs, 2 at each outlet', '2022-03-30 18:09:20', '2022-03-30 18:09:20'),
(48, 40, 'Under estimate \" Actions\" won\'t allow to input own description of work . Have to choose from items. Should be able to input description of work on the actual estimate and invoices', 1, 'Please repair', '2022-03-30 16:25:00', '2022-03-30 21:25:00'),
(49, 40, 'Spelling Mistakes  \"POSTAL\" not postel', 1, 'Please fix', '2022-03-30 16:23:46', '2022-03-30 21:23:46'),
(50, 40, 'When sending estimate, description is not included', 1, 'Fuel surcharge.', '2022-03-30 16:24:03', '2022-03-30 21:24:03'),
(51, 40, 'Edit information from all forms. Should be able to edit the text on Estimates , Invoices , Additional Work Authorizations and Lien releases.', 1, 'Please repair.', '2022-03-30 16:25:14', '2022-03-30 21:25:14'),
(52, 40, 'When inputting text. Run out of room. Stays on 1 line. When reaching the end of the line a 2nd , 3rd , 4th line for additional text needs to be created', 1, 'Please repair', '2022-03-30 16:24:44', '2022-03-30 21:24:44'),
(53, 40, 'Cannot open pending estimates on Estimate platform. Ios and Android', 1, 'repair', '2022-03-30 16:24:30', '2022-03-30 21:24:30'),
(54, 40, 'Please upload Lien Releases', 1, NULL, '2022-04-04 10:30:15', '2022-04-04 10:30:15'),
(56, 40, 'REFINE WEBSITE/APP', 12, '1). No email confirmation after signing up. 2) Did not charge credit card 3) After client added name \"Undefined\" was automatically added to that name', '2022-04-25 07:54:46', '2022-04-25 07:54:46'),
(57, 40, 'Web App Builders', 1, 'Ask your WebApp builders to look closely at JoistApp . This will help clarify,  SecureLienRelease and the Construction industry.', '2022-04-27 06:13:59', '2022-04-27 06:13:59'),
(58, 40, 'Please set up \"WE Pay\" with Bank account to process monthly subscriptions.', 212, 'Please Finalize App . We are very close.', '2022-04-29 11:48:35', '2022-04-29 16:48:35'),
(59, 40, 'DRYWALL THE WORLD AND FIND WATER LEAKS AT THE HARBOR', 1, 'YOUR THE DRYWALL AND WATER LEAK WHISPERER', '2022-04-29 16:51:15', '2022-04-29 16:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `item_taxes`
--

CREATE TABLE `item_taxes` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_taxes`
--

INSERT INTO `item_taxes` (`id`, `user_id`, `item_id`, `tax_id`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 1, '2021-09-11 09:42:04', '2021-09-11 09:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `license_web_links`
--

CREATE TABLE `license_web_links` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `web_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `license_web_links`
--

INSERT INTO `license_web_links` (`id`, `user_id`, `file_url`, `facebook_url`, `twitter_url`, `instagram_url`, `web_url`, `created_at`, `updated_at`) VALUES
(1, 1, '20211130-075615.scaled_image_picker1381427549.jpg', 'www.facebook.com', 'Twitter.com', 'www.instagram.com', 'www.securelienrelease.com', '2022-03-25 12:10:01', '2022-03-25 17:10:01'),
(2, 25, '20211130-011745.dummy.pdf', 'www.facebook.com', 'www.twitter.com', 'www.instagram.com', 'www.securelienrelease.com', '2021-11-30 13:17:45', '2021-11-30 19:17:45'),
(3, 27, '20211202-073005.11706', 'www.facebook.com', 'https://www.securelienrelease.com', 'https://www.securelienrelease.com', 'https://www.securelienrelease.com', '2021-12-02 07:30:50', '2021-12-02 13:30:50'),
(4, 31, '20211202-073634.11706', 'https://www.securelienrelease.com', 'https://www.securelienrelease.com', 'https://www.securelienrelease.com', 'https://www.securelienrelease.com', '2021-12-02 13:36:34', '2021-12-02 13:36:34'),
(5, 37, '20211220-094138.photo(3).jpg', 'https://www.facebook.com/websquareinfotech1', 'https://www.facebook.com/websquareinfotech1', 'https://www.facebook.com/websquareinfotech1', 'https://www.facebook.com/websquareinfotech1', '2021-12-20 15:41:38', '2021-12-20 15:41:38'),
(6, 44, '20211229-065956.Flyer 3-02-1.jpg', 'www.facebook.com', 'www.twitter.com', 'https://www.securelienrelease.com', 'https://www.securelienrelease.com', '2021-12-29 12:59:56', '2021-12-29 12:59:56'),
(7, 40, '20211230-032659.Certicate CSLB 001.jpg', 'Interior Restorations', 'N/A', 'N/A', 'interiorestorations.com', '2021-12-30 09:26:59', '2021-12-30 09:26:59'),
(8, 72, '20220310-071158.Fee_Voucher Student.pdf', 'www.google.com', 'www.google.com', 'www.google.com', 'www.google.com', '2022-03-10 13:11:58', '2022-03-10 13:11:58');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_11_01_225255_create_ca_preliminary_notice_table', 2),
(10, '2021_11_02_191617_create_conditional_waiver_and_release_on_final_paymenyt_table', 3),
(11, '2021_11_02_191911_create_conditional_waiver_and_release_on_progress_paymenyt_table', 3),
(12, '2021_11_02_191941_create_unconditional_waiver_and_release_on_final_paymenyt_table', 3),
(13, '2021_11_02_192002_create_unconditional_waiver_and_release_on_progress_paymenyt_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0011e0c7f3982524ba0ace05f5b6401be899a370c0f2665385551f20df0acf157fe827d6ca8f2738', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 12:20:51', '2021-12-13 12:20:51', '2022-12-13 06:20:51'),
('00e2578cdf3a6592a32d06060a8e0e0b99c8867a734a602f5480a68ff06dcdc073c85680cf2cfa7b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:43:00', '2021-11-15 18:43:00', '2022-11-15 12:43:00'),
('00e6598890f2f31192d484801bfdaa9dbbc86af95cfb73cd4cfc9d326ba4a45b45884deffbdef47b', 72, 1, 'Personal Access Token', '[]', 0, '2022-03-10 12:48:29', '2022-03-10 12:48:29', '2023-03-10 06:48:29'),
('012cc278bd297d1f56e2cc0ef1bd9f48d76c34aaf0ddfca0ccaf6e84407bd1e303a38cf3c54fece6', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-04 14:26:10', '2022-02-04 14:26:10', '2023-02-04 08:26:10'),
('014a188399958acc7d316e66a8d1b31bf4582664d4d5f26b1cfad9bda98f78947fc7ec370ecd52ec', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:08:10', '2021-08-27 01:08:10', '2022-08-26 18:08:10'),
('01860a1137bb129cb084fe090826dedd6cc6f9b033db78105e010009ad4550546eab1f98277fb669', 70, 1, 'Personal Access Token', '[]', 0, '2022-03-10 12:24:33', '2022-03-10 12:24:33', '2023-03-10 06:24:33'),
('01f3d2334b810b128c704d48f5614ada0ce09dfde361705a9eb804e6619c42978e8e07fa68c7ff52', 1, 1, 'Personal Access Token', '[]', 0, '2022-06-02 12:17:09', '2022-06-02 12:17:09', '2023-06-02 07:17:09'),
('02a06a5220103e9ec100ac0ef3365614b6cc8e2fb45dd2ca2e3f35666799b5c7ee8c780ca0ff5443', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 13:51:50', '2021-11-17 13:51:50', '2022-11-17 07:51:50'),
('0338b3cfb34ba8b39497581e29547a8a95d6a47c3b169ce60832bdab10d5be02de4fd3327ad0d3dd', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-26 19:47:00', '2021-11-26 19:47:00', '2022-11-26 13:47:00'),
('0344d8c53a61c196850f4e2857e4a96d3a80762aa30b3252b0531877e2c2e7f0afece783ac36824b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:33:32', '2021-11-17 17:33:32', '2022-11-17 11:33:32'),
('0368d047ad7d55a1ed7a8bb22f93c6f42ff7f06ab600d1ad05a3e64f9d9045d77d52854bf1d2b5b4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:08:08', '2021-11-15 18:08:08', '2022-11-15 12:08:08'),
('03716d2879b6cc5be8c51287fe6db08f8f7b7800a2987d24dc8be2366e84611e10bda752b44bc1be', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 18:25:54', '2021-11-12 18:25:54', '2022-11-12 12:25:54'),
('0373b2bc34c47d47ea90ae8e1f110c4bf487b1929af65444ce56e771373b2a127095abb917534bd8', 40, 1, 'Personal Access Token', '[]', 0, '2021-12-17 00:30:30', '2021-12-17 00:30:30', '2022-12-16 18:30:30'),
('038033483b54daeed6f1de99b99bdaf5fe74e7d9016943f084348f08573524677c75f4ecfaa43cf4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-26 19:37:03', '2021-11-26 19:37:03', '2022-11-26 13:37:03'),
('038f096e1a2de698b0d4106d83e678cf30a55d798b9fff48c617f1f0e1b44cd8a5985b9610549c95', 44, 1, 'Personal Access Token', '[]', 0, '2021-12-29 13:10:47', '2021-12-29 13:10:47', '2022-12-29 07:10:47'),
('044019d6086e001dad95d4ab455d0b5532cbeaa9da68b616a7ab8cba05ac408d7601102608b48c0a', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-03 11:50:37', '2022-03-03 11:50:37', '2023-03-03 05:50:37'),
('04a5389d68c484c851f9a132754547c58551cd59bd5bbaa812156e3fe8fae08755f1f187e4c908f1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 13:45:41', '2021-11-29 13:45:41', '2022-11-29 07:45:41'),
('05011fddb0e7d1ac4c4029e974f65d2f89a7503e0eb7a8fc7b5409fecf5dba11a2d9e8a4dfed9282', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 11:54:21', '2021-11-16 11:54:21', '2022-11-16 05:54:21'),
('05edf2f62febfb2a002701ed411e621a350e958786101cb9c8615a4694cda44849bddfd974a256cb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 14:42:31', '2021-11-22 14:42:31', '2022-11-22 08:42:31'),
('06146101dce1be69cd0207d61b2999ba2b898f05712f6665b1292052493fc106f1c8bc596c91798b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:09:52', '2021-11-17 14:09:52', '2022-11-17 08:09:52'),
('065f85da6092b33666e90d69e5e5c81e4f6f5fb4dcce11ce05ed950a208fa5720454a4f6e3a0e76c', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-10 13:45:23', '2022-03-10 13:45:23', '2023-03-10 07:45:23'),
('06a7a2a013047d15aeeb3f6c838c4f747341f8569bca9724f8092b19a0dd2cf4581273a39959da39', 61, 1, 'Personal Access Token', '[]', 0, '2022-03-09 20:00:55', '2022-03-09 20:00:55', '2023-03-09 14:00:55'),
('06f739fc6e4eddd0a851a1d0207e7b0a65dbc7c5527fe15eb25f53b974e40075103de3f4b3f2c710', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-13 23:58:15', '2021-09-13 23:58:15', '2022-09-13 16:58:15'),
('07166e1ec9e188c471d37cce62c022d93b5dd7bb12e8007f4fe1914a444f1af2155fec85d5e2d37d', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 16:56:13', '2021-12-02 16:56:13', '2022-12-02 10:56:13'),
('07512b72e4ca0c5993e97f1a777b6caea08a526008206482135911b2913e7b5614d3aa85993ba1e8', 66, 1, 'Personal Access Token', '[]', 0, '2022-03-10 12:03:12', '2022-03-10 12:03:12', '2023-03-10 06:03:12'),
('07a6a765b4ef70ccf03cdc2541be88e5e65ded420ea3ee6591da1a7abe74f01c2c262c9ccf54c2f8', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:19:41', '2021-11-17 14:19:41', '2022-11-17 08:19:41'),
('07deb5fa14e21cfd6965d5d7ae2b1e3656c276c4726e0da40466227275fffab1242e80cc5598fcef', 65, 1, 'Personal Access Token', '[]', 0, '2022-03-10 12:01:11', '2022-03-10 12:01:11', '2023-03-10 06:01:11'),
('07f592836f8c6e1c1311f87793b05e82906e3aac905f264c3074e3457744b04adb070aa0821b71ce', 74, 1, 'Personal Access Token', '[]', 0, '2022-03-10 16:08:58', '2022-03-10 16:08:58', '2023-03-10 10:08:58'),
('08fad3beb72005ae71d6d6df3e8596b95e80c9a7684df24938df11d09099020f831aea48ab6fa4ca', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 12:49:49', '2021-11-25 12:49:49', '2022-11-25 06:49:49'),
('0911dfe171be329351f2f3e62a31124b40823826692f59f683ea8542e5aa07ae5b4c839dc8599dd1', 44, 1, 'Personal Access Token', '[]', 0, '2021-12-29 16:29:57', '2021-12-29 16:29:57', '2022-12-29 10:29:57'),
('09624f14e49fac0a432efc60b7294fbb2061fccd39c63dc4b6c50115b38aa929ad954bcaf63446a7', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-01 01:38:57', '2021-10-01 01:38:57', '2022-09-30 18:38:57'),
('09be1cb97fa1041fd138926fed628053d6676d099f97287bc646561ff4c5a86926166425bab47cd9', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 14:24:42', '2022-02-04 14:24:42', '2023-02-04 08:24:42'),
('0a676f9eb461ae941d19a493ed5528ff82044b9c8062b29912b3aa05d1764cee0a01ab16d39847fb', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:32:18', '2021-08-27 01:32:18', '2022-08-26 18:32:18'),
('0af3abc361fbe7a354e9ac34f234573933cd8bd103ad21b582929496281023b58e97aecd07c2f0cf', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-03 13:39:02', '2021-12-03 13:39:02', '2022-12-03 07:39:02'),
('0b2975db10f8d3aa8d7ca4af5f0d98d7777d311517be2db9cbf2938cf17b9ecd5e2e03913cec095e', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-03 12:31:53', '2021-12-03 12:31:53', '2022-12-03 06:31:53'),
('0b350a739c4efe1e5034ff5fb80ada5d5546b8c69413e8eeb96ec571a6dc81bf7eace1c38eb011c1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:54:44', '2021-11-17 16:54:44', '2022-11-17 10:54:44'),
('0bc2746a705725564bf3b8fdaea39dd8dee61808236458732226c129b629ea81d77d65bacc578858', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:42:37', '2022-03-09 19:42:37', '2023-03-09 13:42:37'),
('0bcf3e9085c3baf551aa68636ea92ecdc616eadb27842ac05908ae51a11df9b64ed0121b1f5db8d9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 11:55:33', '2021-11-12 11:55:33', '2022-11-12 05:55:33'),
('0bf80a836c93c927a45879d0136c47888b67a081bb8fde4e48744d195f65a0580c31de141e4776ef', 40, 1, 'Personal Access Token', '[]', 0, '2022-05-02 18:48:46', '2022-05-02 18:48:46', '2023-05-02 13:48:46'),
('0c01a029e274434908817b4340488f178ef06b11cec1e91ef3704cc6ba4ec6ee6e1b65d089d5e1e0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 19:53:10', '2021-11-12 19:53:10', '2022-11-12 13:53:10'),
('0d2a69851c0acb170d930c3646d613c53037a901abf8b17a5b4303b87d22a23c2c916bcb85fb8568', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 00:30:11', '2021-09-01 00:30:11', '2022-08-31 17:30:11'),
('0d672da7605897cef3aa77daf16f2b00dbea9d21b4fa1f1c5c50e51cec8259bcef7add79c5759279', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-10 17:39:28', '2021-12-10 17:39:28', '2022-12-10 11:39:28'),
('0dc5d35b100895f738d153e14979957ffe1dc839c864e98823c42dfaa32a8d4a058bf00b9ec03223', 47, 1, 'Personal Access Token', '[]', 0, '2022-02-04 17:10:34', '2022-02-04 17:10:34', '2023-02-04 11:10:34'),
('0dd4edd9d58aef54e33d5eadea1ea903779aa3d2bc9177fc40002c1e2a856b23c55366028a47f98b', 56, 1, 'Personal Access Token', '[]', 0, '2022-03-07 19:56:35', '2022-03-07 19:56:35', '2023-03-07 13:56:35'),
('0e2b983edcc99f5788d1cae75c2c8231bf654d5873f65b666afa3fa45d65ad63f5d326c78d6ce52a', 38, 1, 'Personal Access Token', '[]', 0, '2021-12-13 11:35:04', '2021-12-13 11:35:04', '2022-12-13 05:35:04'),
('0e4901a21691fc8cb973c21d35676be17b79f3f96be790d0f82a32a2c0093d35300e82bc7a04de00', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:06:23', '2021-11-17 16:06:23', '2022-11-17 10:06:23'),
('0e56a7f1497071524630c0888777a5222dc93777d9368021a2b513777c317dc341c2dbd6638cebd8', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-29 16:47:45', '2021-12-29 16:47:45', '2022-12-29 10:47:45'),
('0f78518cf425eea935fd68bcf0b1d2bd005fcc9c733561715e859253f04587513a74d08ea4cb86da', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-04 14:19:38', '2022-02-04 14:19:38', '2023-02-04 08:19:38'),
('0f8fbb9efab4f694e3704e940fbb83cce6cea3d52e2bc6537d926f9e6c0ae13938fa0fd172b3fc54', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-07 01:53:19', '2021-09-07 01:53:19', '2022-09-06 18:53:19'),
('0fa0ea5fd256de8af0b884210f3d824e09e9165059537124503304d50f02edae135b7ff7ccbf4bda', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 20:13:26', '2021-11-29 20:13:26', '2022-11-29 14:13:26'),
('0fe31436f8b423139f906b1d02d52c75ebfa6dbf1929cae6a52a11e94e75e00a93452741569f4dff', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-10 13:16:37', '2022-01-10 13:16:37', '2023-01-10 07:16:37'),
('1018907faa3fc596f0c45d8bf36d6b7fb0f0b1ac44ff0821717ab1f573543be9081414e089f41dff', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-10 13:37:01', '2022-03-10 13:37:01', '2023-03-10 07:37:01'),
('1042f3285be6e879d3a3bbade8868084d9ca461eebc8919d038e67cd574d69465ce6440a4029263e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:47:32', '2021-11-15 19:47:32', '2022-11-15 13:47:32'),
('1086af8b27fccf8289c6724657e29841290b990a662bd6d155ae237cd29622d0180b9cf710e08a54', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-15 17:52:25', '2021-11-15 17:52:25', '2022-11-15 11:52:25'),
('110c54c2c258fb00f240f309e177f29f975e1557169ec2204c1bd0e5532ab660b4310733cd4efff7', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-31 13:42:50', '2022-01-31 13:42:50', '2023-01-31 07:42:50'),
('1151d9d791ef80ef1c00201bad2959bd94ed452c250b220c48f431f7b068e77d17b4956661408824', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 12:41:46', '2021-11-22 12:41:46', '2022-11-22 06:41:46'),
('116743c5e10c566f0b9998a8f3b7f516ac6d8e6d17983b08f5b2601e9268455189842223102a950c', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:06:28', '2021-08-27 03:06:28', '2022-08-26 20:06:28'),
('116c8b3316aa7acbecd80c7f147426292f2d92b786ea6f83249676a2db77e32712856201072aa021', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-29 11:51:17', '2021-12-29 11:51:17', '2022-12-29 05:51:17'),
('118aeda6dfb0a4c6aaaa8464aab40c75c9bd04a9f75a35fb8ba2a22ef2331dda5d76864ab839d79b', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-22 16:15:44', '2021-12-22 16:15:44', '2022-12-22 10:15:44'),
('118b52bce89a4570ec54dcb7ea56fdbc1e4d683136d851674fcb938d37b8524dc5431aba3ce189d4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:42:32', '2021-11-15 19:42:32', '2022-11-15 13:42:32'),
('11c5838a73b6499c7ef7417b3fdc620fba0eeb9dd92c0f21de53e15b9584c0f9aff4aad5e1586b01', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-02 12:11:41', '2022-02-02 12:11:41', '2023-02-02 06:11:41'),
('1225245036f68b164d4deebf34fc3ff7173d02aa64bb65fd75b06a41d5618b3abad7431753a426b7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:45:40', '2021-11-17 14:45:40', '2022-11-17 08:45:40'),
('127d0288acb7181dd2e38a22cde8812e3bd815efeb15fb9b6e5a6b0c8d2bd1944860b0b773ba7133', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-15 13:52:07', '2021-12-15 13:52:07', '2022-12-15 07:52:07'),
('12a76747234ac9872ac76f2459fbdea7213abd2284150b5f602616dc53c9adf9eb8248e5321b68fc', 69, 1, 'Personal Access Token', '[]', 0, '2022-03-10 12:22:44', '2022-03-10 12:22:44', '2023-03-10 06:22:44'),
('12b93901e1c89bf10e79e48218f98c41925b23d464b467b68bc43fa33ce2ccb30fe1a28bccb6dea4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 19:43:46', '2021-11-17 19:43:46', '2022-11-17 13:43:46'),
('12f9f34f6f8a203f895339959921ed0265a69586685e30f205acf5f3f29604a495496e3ebc67cee4', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 04:49:25', '2021-08-28 04:49:25', '2022-08-27 21:49:25'),
('13333395e8b5c9ee64c20a5cb42fd2e31e8014a98c82c1701c01b9f1af2ba5b92aa4c96a40fe9571', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 11:56:55', '2021-11-16 11:56:55', '2022-11-16 05:56:55'),
('13b12cb46c62465a5fa5f83d237777d66d9981c51aa624af589df79666791453da6e2bed371cc88a', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-10 00:20:04', '2021-09-10 00:20:04', '2022-09-09 17:20:04'),
('13fda3989f6a2780bce11e687b03145797895a311091bcbb6879997726ad35d7f27cfeff967543c4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:04:04', '2021-11-17 17:04:04', '2022-11-17 11:04:04'),
('1494dfaa8dcc940846efe4f92ca4806f9b8a32c3fdadd2a4263eeb74c4556652b8a0e6bc73acb6af', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 17:44:24', '2021-11-16 17:44:24', '2022-11-16 11:44:24'),
('14e06fb111d3c9a3541dbfff3430b63b99c737007671d3ddfb2c41437aa1d636df81c7416efed52a', 37, 1, 'Personal Access Token', '[]', 0, '2022-03-20 13:43:40', '2022-03-20 13:43:40', '2023-03-20 08:43:40'),
('171724af424bf7c23e66d5993550a0863b7a7d4db69c6d5dd1346de1bbf893c9b2caf159eabdbd7d', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-03 05:24:07', '2022-01-03 05:24:07', '2023-01-02 23:24:07'),
('175a3ad8368d281b566da5062be3374024e3efb3a8bdf7dcaf0478e22bd5ce9c3ac3d8499d626971', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 13:59:06', '2021-11-17 13:59:06', '2022-11-17 07:59:06'),
('17d7e7c33b615e181454388fb97b9be1155fefc97dcabb80b43e1d501f5fe09ecc943d1b44c8a41e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:54:13', '2021-11-15 19:54:13', '2022-11-15 13:54:13'),
('17f4f47aa0d4149342d4c241591494c5ee8d5222b53e5715b8567228e6c4deadca069ee664351d72', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-29 18:32:56', '2021-12-29 18:32:56', '2022-12-29 12:32:56'),
('18193c23416cf03c53f4b21be3e6161eaf1df5a345dd40432e052c995cc397df3fcc71f3abf15deb', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-05 00:18:38', '2021-10-05 00:18:38', '2022-10-04 17:18:38'),
('18ad55907320abce852b46b9935e4f4fd1b7f2101eeb9955ed51ab2633c834656ea3bdb6f2212f98', 60, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:46:09', '2022-03-09 19:46:09', '2023-03-09 13:46:09'),
('19055637a8f01dc07ef75f6dd9acff0ebb5e14a0ae32d0103540239cfc536b4f64b166f13a8c18b2', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-14 00:08:06', '2021-09-14 00:08:06', '2022-09-13 17:08:06'),
('19465b6e0cb711d2d25ad2dbc12b6b045feccfee4b95ad8365fddaae8b4d5d1ac1cd205807a5d1c0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-26 19:54:04', '2021-11-26 19:54:04', '2022-11-26 13:54:04'),
('1970a16b901a0130ccf3e7c125db6f24ff74730499044f1a8e0042556737560367b27b7237d9bb09', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 12:05:12', '2021-11-22 12:05:12', '2022-11-22 06:05:12'),
('1997e552e11ef2efabfa6ce556f1c3ccd5d28b42fb472f35cac29a6345ace5051e24420e8546c18b', 80, 1, 'Personal Access Token', '[]', 0, '2022-05-27 00:57:19', '2022-05-27 00:57:19', '2023-05-26 19:57:19'),
('19e39e6fbac77378aa5825d0a54d65261d214c9bc11c07dab78f6e0702b1718ee99a7ccf6bfd024f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 18:12:16', '2021-11-16 18:12:16', '2022-11-16 12:12:16'),
('1a0e0c518c65e2b43b01765761536b3c48bc513753e0e97487d2f82af46099f7b9835c45d2906167', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-25 13:09:12', '2022-03-25 13:09:12', '2023-03-25 08:09:12'),
('1ae57f5f68c9f85cb3e4da627e99b1a40f85c19545c02ecbf2e7ab434dbca5e3ee312da17ca03806', 47, 1, 'Personal Access Token', '[]', 0, '2022-02-04 17:26:22', '2022-02-04 17:26:22', '2023-02-04 11:26:22'),
('1bafe35862f2d76889ed164914a8e5aa23c7be0c518a03f2810645447076d7aa00719be89948266e', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-03 13:00:27', '2021-12-03 13:00:27', '2022-12-03 07:00:27'),
('1bbbf2e878b2d77a3daba7c7dcfb416d08ed7db4879b9a0b0ff77f20cdcc1dafa687a2dcad43e3d9', 14, 1, 'Personal Access Token', '[]', 0, '2022-02-07 13:13:37', '2022-02-07 13:13:37', '2023-02-07 07:13:37'),
('1bf006818069db706828ba4494055d6bb90b4dffd22a12d9b73d0ae7c927d78c252ae8887b406e43', 37, 1, 'Personal Access Token', '[]', 0, '2022-03-21 07:15:09', '2022-03-21 07:15:09', '2023-03-21 02:15:09'),
('1c21fec056129a25d4bc7c3ef0a23b335878fd0cd09d33b5134b61dc8c0bb1ec09c17275dcd12e32', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:51:28', '2021-12-13 19:51:28', '2022-12-13 13:51:28'),
('1c65ea894696415b74981139722b946bd10d92838fdc01c973da04379a89bb97383c6b23ba241184', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:40:47', '2021-11-15 16:40:47', '2022-11-15 10:40:47'),
('1cb76d6e4a2586645d621c0b9e16011f77f245559aa268dca50d4be08b35ebd0876aef48999cf84c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:10:06', '2021-11-15 18:10:06', '2022-11-15 12:10:06'),
('1d22b747d55f806c25dbe1b8583d42ddb881a735fbfb35751681caf2e6c63b98853ebe74dbad61c6', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-17 11:25:43', '2021-12-17 11:25:43', '2022-12-17 05:25:43'),
('1d39326e04c0a9aa3b96d2ce128820fcdc16af9808d6f9165ebed54e2fae970b603f50ba2a5d90ef', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-16 12:44:02', '2021-11-16 12:44:02', '2022-11-16 06:44:02'),
('1d4c79baa83c125e18f5777df6e15cf17734532576dafc4ef8ae05815e20473638d398a6c4e59e95', 25, 1, 'Personal Access Token', '[]', 0, '2021-12-01 14:11:59', '2021-12-01 14:11:59', '2022-12-01 08:11:59'),
('1d7864b005ecb2d9e5c29aad320180419f17ad336f985f1302ccaaed93c70d1399022ca27ad72c7a', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-29 11:36:41', '2021-12-29 11:36:41', '2022-12-29 05:36:41'),
('1dcb76f10ac8efef159e5d35747eff11224dc648d0960f4361818760eca8a65039c1ac174490ce92', 44, 1, 'Personal Access Token', '[]', 0, '2021-12-29 12:22:58', '2021-12-29 12:22:58', '2022-12-29 06:22:58'),
('1e07d8cad7177ee6d374f902c573f17b721654bdef6db24e57b60645baf06211950894dfb16b9932', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 13:13:48', '2022-02-08 13:13:48', '2023-02-08 07:13:48'),
('1e1d7057fdde254b541066de1aea1eb681185ff3a0857c754b212c12ec634ffe9baea3497f1ee750', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 11:09:28', '2021-11-22 11:09:28', '2022-11-22 05:09:28'),
('1e669eac099986f09623ad32b449939f163d40b63d48c7d671113f7102f0b2aac512cdfb6907c94e', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-18 17:24:39', '2022-01-18 17:24:39', '2023-01-18 11:24:39'),
('1e8eeffb9c5c682a6372f8f0406441baf1252ced9cdd2584b9692731abd96581eb218d166e0974e2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 12:15:54', '2021-11-25 12:15:54', '2022-11-25 06:15:54'),
('1e9f71b50b7d7927b7bceae582d21c196fd1151a1cc262eb7e9a7fc6657a75fcd06556a595797c02', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-22 16:11:51', '2021-12-22 16:11:51', '2022-12-22 10:11:51'),
('21b98aea23f88bdb1e098f604a64995152d488b23acb4c081cc85afb68b14d319a9cd783568e546e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-04 08:16:44', '2021-11-04 08:16:44', '2022-11-04 01:16:44'),
('21d62188fcda5a69ce66fb6675d3004d681a899c091b02e6e28d74d7c98a8c80e441233c415c2b7c', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-07 12:57:41', '2022-01-07 12:57:41', '2023-01-07 06:57:41'),
('22083f9d45066674ab9ca4e00418a6b12eda41c3d90c4ea2ce83cd990b709001c873e626781fac05', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:25:25', '2021-11-17 17:25:25', '2022-11-17 11:25:25'),
('2348a0830e094c40e030deec259933d5602e2277895a54b56651c0d7a7aff98d6726a899db0ff7ce', 42, 1, 'Personal Access Token', '[]', 0, '2021-12-28 14:24:08', '2021-12-28 14:24:08', '2022-12-28 08:24:08'),
('24ff85ba98fcb9b66b2ecdea8342e34865d081e19dd12fa5439c50b70afb3ebc57a7daeb3c8b2cdc', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:44:23', '2021-11-17 16:44:23', '2022-11-17 10:44:23'),
('25164f201a672c8888257d9b514ba920f138efd5e09eceb9f1c91663014e6bd3c81c85d103b3b039', 37, 1, 'Personal Access Token', '[]', 0, '2021-12-29 00:34:51', '2021-12-29 00:34:51', '2022-12-28 18:34:51'),
('25dfe98e4810543ff4b6fa3938d7865810eb2950bdb513c3aba34f29118c8380db421558a4b7cd5e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 05:35:09', '2021-08-28 05:35:09', '2022-08-27 22:35:09'),
('263f062fe7f74030f0b1a4f992173a3651dfc7aa7bea0ed533c8c7ba6d4ca1682830ece9465fda39', 59, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:15:56', '2022-03-09 19:15:56', '2023-03-09 13:15:56'),
('2656f1491c032d92b9341c9bcfcc2d399d73717a928e50042392fa0e0c4c68115b2dc112c51a47ff', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-30 19:32:12', '2021-12-30 19:32:12', '2022-12-30 13:32:12'),
('2666e6a3578e1b406d68f0414683ebe85161faad6cdd54afb8a2279c0b0be021430b385ffa70fe10', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-04 00:57:09', '2021-09-04 00:57:09', '2022-09-03 17:57:09'),
('26b4c25f283c1b1b7a1154b6ad4c7fce314c63a2153baad59a2acf2772c2d3fcb60c3f516cabe07a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:49:40', '2021-11-12 12:49:40', '2022-11-12 06:49:40'),
('26d18ea31208944dd94b45492d9d14e088c2b72a0c87d36b7304f177f06beca151753f0f95cb3a1d', 40, 1, 'Personal Access Token', '[]', 0, '2022-02-12 10:06:55', '2022-02-12 10:06:55', '2023-02-12 04:06:55'),
('2728aa876ba9c5d858e4436ae49f376765a9c7de20831bf26d9565b5f3c2188997cd65d8dbc75bcb', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-03 00:06:53', '2021-12-03 00:06:53', '2022-12-02 18:06:53'),
('2782af590a2800886ce2d25af3fbcdd47b9ef2df6b0d0f49138b36d0468c7fa6d54c69ff890d3489', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 14:14:12', '2022-02-01 14:14:12', '2023-02-01 08:14:12'),
('2840a5f1142e1a54f9213c787bea5913ac8cb48902b6028c385d2ca1e9ad5d2887df7a338e54b05a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:22:03', '2021-11-15 16:22:03', '2022-11-15 10:22:03'),
('288a287ef2f5d99db707cc36b45762f3297a96b2512ad16e8400e484aff8a7b3d9386c7b8bd2810b', 1, 1, 'Personal Access Token', '[]', 0, '2022-06-02 12:16:42', '2022-06-02 12:16:42', '2023-06-02 07:16:42'),
('28bba5156aaa80d245ed3a367bf0f28edec8919b3802e73b77d97a9cfde4db6a847ce68eea2c26c8', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 12:23:38', '2021-11-22 12:23:38', '2022-11-22 06:23:38'),
('28ed849893a32bacdc1cc973aa462e681501d9cc9d7a94158225397e3f6bcf682ea0aef141ad0e9e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 13:21:12', '2021-11-29 13:21:12', '2022-11-29 07:21:12'),
('290a84eeb273160436879925c076220240d1b64c3e00edce5d4509527a5f6a0a9f88470b14cb8f2d', 40, 1, 'Personal Access Token', '[]', 0, '2022-02-12 10:06:39', '2022-02-12 10:06:39', '2023-02-12 04:06:39'),
('29a23eb7246e49ed909aa7228f0fd803fb22ea2ada2e2780d116daa245949d720d362b62f49b8925', 39, 1, 'Personal Access Token', '[]', 0, '2022-02-04 13:31:10', '2022-02-04 13:31:10', '2023-02-04 07:31:10'),
('29c1f99eb7c662063b4b6da2dc8f13d835fc085a195da7883ca0a1fe23456ff26d337392428c0c03', 40, 1, 'Personal Access Token', '[]', 0, '2022-03-22 19:54:28', '2022-03-22 19:54:28', '2023-03-22 14:54:28'),
('2a63331d2b9f5be7010abdac28f369524be10bf17b038ead2869f14a823257f9564856e649d77ce8', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-30 18:47:56', '2021-12-30 18:47:56', '2022-12-30 12:47:56'),
('2b0b613016095d73c41e67bbc6657d77bcb25f787d9878b921d772f38be7c0b9bce7e7b724b9028c', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 14:27:15', '2022-02-08 14:27:15', '2023-02-08 08:27:15'),
('2b9fb4fa1e7b727d3242e25adf2a4742367c3d15f473cadcf3249ba1d5da49c8bcf6de64af6138e4', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-01 15:57:40', '2021-12-01 15:57:40', '2022-12-01 09:57:40'),
('2cfb07ce4e07fb38e154ff6346e390d22cd5f8296699412766d8461ce493eaf0429bf0f6402c7585', 27, 1, 'Personal Access Token', '[]', 0, '2021-12-02 12:38:28', '2021-12-02 12:38:28', '2022-12-02 06:38:28'),
('2e46f87595f93372e7afbd244ce293994da85cdd71e9e873125027e88d56c37251b94d79668cb573', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:59:48', '2021-11-15 18:59:48', '2022-11-15 12:59:48'),
('2e6cccaf0874c0c4d3a1c91ec590144fed83fd6dca7030e8d1aeab1817b465082dd34bfbdc7a013c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 12:32:32', '2021-11-22 12:32:32', '2022-11-22 06:32:32'),
('2e7c02fae5b5899ff22979caed43ace0194914991816dfd53fd7f692b0facc0542789abd84399645', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-10 13:45:43', '2022-03-10 13:45:43', '2023-03-10 07:45:43'),
('2ea18729850edb9a9cb93e1fe1fd54384c4f177d8f7c823251598fb51814043808fed59b82f5d358', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 12:46:29', '2021-11-16 12:46:29', '2022-11-16 06:46:29'),
('2efcd09bfa846534c6771ca9ec97f4fa0d4fba768ef311333a139960aadf61a437cee31d7abf92bb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:40:49', '2021-11-15 19:40:49', '2022-11-15 13:40:49'),
('2f8360d30b86c5c82506b7b9b0af0954193c3370befeaa1dc8f04c565ac409576990293089651dcb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:23:43', '2021-11-17 17:23:43', '2022-11-17 11:23:43'),
('2ffcb3114842d8e78d6a78bafcd7542b18dfa0266dbb1be89761e1df163e271b296ca9dca68acd2b', 44, 1, 'Personal Access Token', '[]', 0, '2021-12-29 12:32:34', '2021-12-29 12:32:34', '2022-12-29 06:32:34'),
('308f49fb7f1c78179c5251cba100c23ad538dacfb50b3777811edb393faa1094d848da6e1450befe', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 12:03:11', '2022-02-04 12:03:11', '2023-02-04 06:03:11'),
('31097192ab5a5ce0efe4e92af4ef0f5b32bb850a62b6a91f8fd1f58bf73e8543f1e24422c935a4b1', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-05 00:18:39', '2021-10-05 00:18:39', '2022-10-04 17:18:39'),
('31183bfb4ec185e2b78bd5ffcf0470299088a1cae83865d0627ee46b8c27ddd385bf15d0ca0d71ce', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:08', '2021-11-17 16:47:08', '2022-11-17 10:47:08'),
('31741a9b148f6f1656964b821a65d94879f6ef1d55b758c2680bedea431e11c933e3ce866923b0a6', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-28 00:37:20', '2021-10-28 00:37:20', '2022-10-27 17:37:20'),
('3185a975da3100b0956cbfadf23e1a3fed897d8b2a1472b48b5a2e77846533ce49f7e84b9161921d', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-25 12:53:37', '2022-03-25 12:53:37', '2023-03-25 07:53:37'),
('3197a850dc6bee43a7bc70f0cc9247d0c368aac17148777ef687c09a5b88cbc65b9350eade073233', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-04 00:59:03', '2021-09-04 00:59:03', '2022-09-03 17:59:03'),
('31c652bbf40bf8fe8fa58353379e4495d457c119413ffff4e3d68b87d9b7b75424fa259f36e4a036', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-02 14:32:57', '2022-02-02 14:32:57', '2023-02-02 08:32:57'),
('31d10e87684875957363657526f75bea9162e5b3beaa431672f36605d709a381b0daf9ab435e8586', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:27:20', '2021-12-13 19:27:20', '2022-12-13 13:27:20'),
('3219216ea05d85d5f1c39e5d448e2f27e8c7c7ce1ae32e8f1a3f5c1c968eeb2f07810060efc8a7eb', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-22 16:15:51', '2021-12-22 16:15:51', '2022-12-22 10:15:51'),
('327375d1653e8bd2f88bf5d356ba10926aa98550a1480e72ba915adecb3720e408732cca2e8c60c4', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-27 18:45:36', '2021-12-27 18:45:36', '2022-12-27 12:45:36'),
('33047a6bcbe7ef01d31057a4fa0609808fee1278eaf2985009d4cc42c03b1d3c0170d84bbf56995b', 78, 1, 'Personal Access Token', '[]', 0, '2022-04-25 07:21:59', '2022-04-25 07:21:59', '2023-04-25 02:21:59'),
('33368bdeedc890560ec5bf21b81404395cab022ca32210fbaf5745384153e852a247a69cabc05d2a', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 13:11:16', '2022-02-08 13:11:16', '2023-02-08 07:11:16'),
('3351b8fd2910e6fc70ccc04f0edd009f6eca3aa79514b0ef8f196a73eb8213880dd84749b17f374a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:39:37', '2021-11-17 17:39:37', '2022-11-17 11:39:37'),
('3522dd9e4166f648c56aa86a4c7ef5a03e267130474f1213773f8fda218a1c54c71606c8c975b711', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 15:26:37', '2021-12-14 15:26:37', '2022-12-14 09:26:37'),
('354d21bd0494658d309889f50d1bed080638b2d7d2c3aba640d4d02c1a3879024e1eefa258815df9', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-07 19:06:23', '2022-02-07 19:06:23', '2023-02-07 13:06:23'),
('3561687356e5c55df299aca37f6837754589bcf6dcd9257099458ed1e4f83c26f6c13d4495442ab2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 12:46:19', '2021-11-22 12:46:19', '2022-11-22 06:46:19'),
('35888731e224fc0c7b2095c04ec7080ccf529ee0bda71450630076ffdd3e256c3f1062f35505cdd3', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 14:05:36', '2021-11-15 14:05:36', '2022-11-15 08:05:36'),
('364f8e52ea07db0e74551bff4b5dbfe50115d3c091705ecd737f6f942f47fdcc4bd13671ef1207af', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:07:51', '2021-08-27 03:07:51', '2022-08-26 20:07:51'),
('3657155fdd346087de52260d2168376644f7505e2518d787d98a37d56cf79b350c4e48b077daebb2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-10 06:58:23', '2021-11-10 06:58:23', '2022-11-09 23:58:23'),
('367d65e6617bd0029d88f4dbb7b6cd8c5846ed9041bb1e8313d4e42139db64c7f7d0ec080a9b3d2e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-13 02:25:39', '2021-11-13 02:25:39', '2022-11-12 20:25:39'),
('3685b9941969401467d0a993fef4d5b4be720f32f9c48f462e7e15687abd02cc3878b34668c8da57', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-01 15:44:01', '2021-12-01 15:44:01', '2022-12-01 09:44:01'),
('37487d7d1e921a63dc4cf61e2c261f5bdcef74c671697b86c05c9c8be45ff21501d7da75019e81ee', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:56:09', '2021-11-15 19:56:09', '2022-11-15 13:56:09'),
('37a9dc1968ce31a327fd5e0cd8b747b99133d36132bf3abd36c1efca7f768da2e802322dedb5b9d2', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-23 00:46:46', '2021-09-23 00:46:46', '2022-09-22 17:46:46'),
('37b5829f135335fa54867b09815c8bd0918be31f7b9bcada17c3c8c5fdf44caa02d52d7163fbfb23', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:03:34', '2021-08-27 03:03:34', '2022-08-26 20:03:34'),
('3821aaca23419c0e770b685be348b136ae3cd2128fbb2916e39573a356e4e06016216706c17f7fd6', 60, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:59:32', '2022-03-09 19:59:32', '2023-03-09 13:59:32'),
('3823ac9af86e9974adb96a69bb6488d9167c7033641da975e8d582a60c87da1ee5db5485d70eafcd', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:12:28', '2021-08-27 03:12:28', '2022-08-26 20:12:28'),
('38b8a700eb2d502aa13e4ef19059b951e07caaeab2efa2dfab0cfe20f4f939085678d6bd52652fce', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-14 00:57:26', '2021-09-14 00:57:26', '2022-09-13 17:57:26'),
('38d11fc361ba02b40e6f72fa73b7611169c7d21f507ee078bc5e0f14128d5dde9b17cf1a82ac9392', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-22 01:27:04', '2021-09-22 01:27:04', '2022-09-21 18:27:04'),
('39b1ddf13e29fc1e1db8ff60fd68299addde4308c809fc0f5bc570639e15575c366f283ede9adea9', 37, 1, 'Personal Access Token', '[]', 0, '2022-01-07 13:01:27', '2022-01-07 13:01:27', '2023-01-07 07:01:27'),
('39b863a9930e91fc23851e1ae64912bd2bfb8e57b49a937d08ddac21e7732e5bba415d7f8282d55c', 63, 1, 'Personal Access Token', '[]', 0, '2022-03-10 11:50:59', '2022-03-10 11:50:59', '2023-03-10 05:50:59'),
('3b511d0d241c2824ef0dc8633e58789adeaa1319e144db13da43ed30b1513cbdb7aaa63ea104b865', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-25 02:53:28', '2021-12-25 02:53:28', '2022-12-24 20:53:28'),
('3b9cd30b005b3e421f202cd21ed460bba1f4a40eba43ebe2cf58875a23d335b329fe314a98455bba', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 19:14:19', '2022-02-01 19:14:19', '2023-02-01 13:14:19'),
('3bbd289d260e0b5e4edc7425a51097fec5b35ef74e86d5a88496e8ae1575d87fac781fa76f4db00c', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-19 17:25:38', '2022-01-19 17:25:38', '2023-01-19 11:25:38'),
('3bf22aab885fdedd96df20507c8c98726b3bd107d793d43d7fb2045c5ba832e8b1aa4c62a9f5556f', 37, 1, 'Personal Access Token', '[]', 0, '2022-01-05 14:20:06', '2022-01-05 14:20:06', '2023-01-05 08:20:06'),
('3c8c168d0f96d03583d3df3a297a7a39b75b7f4322bc7da3a6c73bf71a6bfd86f765261ba81e7411', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 14:24:11', '2021-12-13 14:24:11', '2022-12-13 08:24:11'),
('3c904b1642a09169da93f1f252f923efb5ad5a6468dd731d391f795b23f54605945fc28bdee6d852', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 13:50:17', '2021-11-17 13:50:17', '2022-11-17 07:50:17'),
('3ce463b3d0c8a2f07207cb1d9ca1201d211c611e1983b96690f0a40d53386fc2ea310a3024a26ee0', 70, 1, 'Personal Access Token', '[]', 0, '2022-03-10 12:28:43', '2022-03-10 12:28:43', '2023-03-10 06:28:43'),
('3e5cb1289da05616b19ed0b85366f1535e735eaae2eab2109aa6692a524a94bf1991c6e55748fec3', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 18:42:26', '2021-11-12 18:42:26', '2022-11-12 12:42:26'),
('3e5e1d2954624c0f0983c89474a9deb50a468b02563cd8779e0b33703738254c1b3b90f6a9630e5d', 40, 1, 'Personal Access Token', '[]', 0, '2022-03-20 00:41:31', '2022-03-20 00:41:31', '2023-03-19 19:41:31'),
('3e71f4658ebc13a592accd4536e369e342042d127e4789b927ec40167844300ca166c083fbe36d3f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-30 16:59:36', '2021-11-30 16:59:36', '2022-11-30 10:59:36'),
('3e9e2ae5ac7f9e8141e5d6ccf833ec4d1cb7a2ba191ed262e85df740459b3558740a8f35bf1b3e9b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 19:17:19', '2021-11-17 19:17:19', '2022-11-17 13:17:19'),
('3f466e7344d3285a5aeee66ac3aafdc08911ce8d49e906c2f859f88e798a6b733c7247b0745a5ef1', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-22 01:17:52', '2021-10-22 01:17:52', '2022-10-21 18:17:52'),
('3f6cf370275224d21cdc5a42b0e234b03aeac883bd8c354b02616d7905d8080ed8c2c6ca09a4d495', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-11 04:55:10', '2022-03-11 04:55:10', '2023-03-10 22:55:10'),
('3fa29ab4f8be57019ab5d5eb7a48326ebccff4065f5e7c1e8c562e4880f06f705f7a66a520ff7601', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-10 06:17:17', '2021-11-10 06:17:17', '2022-11-09 23:17:17'),
('4021691518606e5e55ea1efbde83b6f7f37ee0267dd0362ec4078ee032fa845be983986b4f379bce', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 15:49:48', '2021-11-15 15:49:48', '2022-11-15 09:49:48'),
('4059b4390ea7f2d1f30c797b690c024de68c181fa6f6a7f0d6021fc343b1632ca4abe8d050d8d45f', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 14:20:11', '2022-02-04 14:20:11', '2023-02-04 08:20:11'),
('40a669ae409a5c2a5e4a092beb1dcaab4658f0dd83712fa55c07bbdec41e435c95fb0197b7d663e8', 40, 1, 'Personal Access Token', '[]', 0, '2022-04-25 18:35:38', '2022-04-25 18:35:38', '2023-04-25 13:35:38'),
('40c272fe46fb93d55b52c8253cb6a3dede9fce47ef4d2f10dfae69bc6130c930392bd0320237d4c7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 18:33:51', '2021-11-17 18:33:51', '2022-11-17 12:33:51'),
('41a4a90538f9041cb51a68495a12e816a5f1a66f2f6dd74f4c201bfb7c860ffd0e60d754c2f0942a', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-04 22:33:51', '2021-12-04 22:33:51', '2022-12-04 16:33:51'),
('41e410f49f1d33905e193237e457900e219975200b2b49ea19e33141303203e816a5ec6f8f2a9ba0', 25, 1, 'Personal Access Token', '[]', 0, '2021-11-30 16:13:31', '2021-11-30 16:13:31', '2022-11-30 10:13:31'),
('42d3be159ff61b6ac5b40d56ecd0ac2cd25851561defe362e26b8354b1f97f6cbd474c7647c932cf', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 14:20:11', '2022-02-04 14:20:11', '2023-02-04 08:20:11'),
('42db2cff6f1ffee7bdc19a55561eacee4ada178e73829d960141a4edcd4fdd69a1e88c252ce8e725', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 14:15:16', '2021-12-01 14:15:16', '2022-12-01 08:15:16'),
('43a426f08ba3e1857924dad21afde4cb9ad498553d53f40aa07e390ecc03cdf0dd22bc0e01d56aeb', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-04 14:05:05', '2022-02-04 14:05:05', '2023-02-04 08:05:05'),
('440d93f6198ec1724b2c7ef88f944c7713caca8f8c67db09da4fecda4b661813144fa3e0c3de91e0', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-21 18:02:03', '2021-12-21 18:02:03', '2022-12-21 12:02:03'),
('4415a4666ca882bc421727d853f75006caaf0ec3facd97b4c1fcebfd93c76b6d8f60859f48338bcb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 13:12:23', '2021-11-25 13:12:23', '2022-11-25 07:12:23'),
('44e3ac23149e4b01dbd865a7f59a72909f585cd4f238b5a6a9dc045e4846bd718a577d886058529c', 58, 1, 'Personal Access Token', '[]', 0, '2022-03-09 18:12:17', '2022-03-09 18:12:17', '2023-03-09 12:12:17'),
('47329c241cff5ccfd453f373b1f188363d6227352d458fb7a06683d5f9605c1dc9bd0a2576752048', 37, 1, 'Personal Access Token', '[]', 0, '2022-03-20 00:45:03', '2022-03-20 00:45:03', '2023-03-19 19:45:03'),
('4743d02de2ac2d5e2d0bb3e7855d1a57fd38a4c299775e8597aa48672ba26fad1506fd8f885cb3b4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 11:35:49', '2021-11-15 11:35:49', '2022-11-15 05:35:49'),
('47b6cfa764d4a4f175e0fe5e415dd6e49f68f4ca08043761ed1782f36eb30036eefd551d0df1ee4c', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-29 18:35:56', '2021-12-29 18:35:56', '2022-12-29 12:35:56'),
('47f20a01413a41ca9207bf086d61365e2d4dbeefac40a5e9d5c8b09e3672c2fdc3c4dac48dfe8a2e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:44:49', '2021-11-15 19:44:49', '2022-11-15 13:44:49'),
('480320733dc205c391a5c9a775317ca1bddb7ac371b468647562df78256d2b3b15bc3997c706db77', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-24 11:44:38', '2021-11-24 11:44:38', '2022-11-24 05:44:38'),
('4819ee4d51c8f47aa10c23ee46dde4ad2e8c90fddb7c06aef6286ba6fae98e6a2686bc368ca2eb97', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:04:18', '2021-08-27 03:04:18', '2022-08-26 20:04:18'),
('48483a732ddb3da40e28737636107429433330bacdb43b1136907424d747b250cbf0d742d66db715', 64, 1, 'Personal Access Token', '[]', 0, '2022-03-10 11:53:12', '2022-03-10 11:53:12', '2023-03-10 05:53:12'),
('487599575fb8eb93bf19b0bbdd09bfc2edead0f9a8dcc53fda60d6cdba1f61ee179731a1dfe6f8fe', 14, 1, 'Personal Access Token', '[]', 0, '2022-02-04 16:07:15', '2022-02-04 16:07:15', '2023-02-04 10:07:15'),
('48a923ff6cb99d2d16376e72468b1244e74a76b75d40807fc9563da31e852983bcf7623482af10c2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 19:53:10', '2021-11-16 19:53:10', '2022-11-16 13:53:10'),
('48b9b768f89f21f8c6cb7a4f3d20ec39b029c2ce8341cb7353f2762f09e3b831052e844d93335476', 68, 1, 'Personal Access Token', '[]', 0, '2022-03-10 12:10:22', '2022-03-10 12:10:22', '2023-03-10 06:10:22'),
('48d57f9135f2fdfab025cf73fb86df95ea32ab5c6f3ac0bf12e22b8d287fc260bc6beb26c937d447', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-15 17:05:10', '2021-12-15 17:05:10', '2022-12-15 11:05:10'),
('495ff85c73cea81f20d95f445d23e679a04096430eac0589e8949601d8bb3f2875910fb1a6ca131a', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-24 00:24:13', '2021-09-24 00:24:13', '2022-09-23 17:24:13'),
('49693c008a665f5631d76e492b808da2ac772ffd73f9c6679ceccdec45977da2470a5d4ac43adc66', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-30 16:07:34', '2021-11-30 16:07:34', '2022-11-30 10:07:34'),
('49db1fa1be2b9d2a580495333d657c146eb81fd8838ecaa8104c4ce52a5b13e8168d7f093895c606', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-07 19:06:31', '2022-02-07 19:06:31', '2023-02-07 13:06:31'),
('49eb07a5242fce19810cef72a3b136ded1b499d2c56587668c6b27ef8ab83bb93c26bf16387265cb', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-27 13:23:26', '2021-12-27 13:23:26', '2022-12-27 07:23:26'),
('49fb67c3ff29da9424ab7d2966f73b3a9c6ad6bf5690c2b13af861f2786ed09c32932f81acea2a4b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:12:04', '2021-11-16 13:12:04', '2022-11-16 07:12:04'),
('4a7542f317f78a0032e71fed8b1aeb65d6017f4d4577f5c7d35c1d0aa8df2e5c6fc322c15330ad89', 37, 1, 'Personal Access Token', '[]', 0, '2022-02-02 12:33:26', '2022-02-02 12:33:26', '2023-02-02 06:33:26'),
('4a7ff609683920286e43a28667eef104ecf416a0bb45225e5e8d008db6702822eb30394313d5b7e3', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:24:57', '2021-11-15 16:24:57', '2022-11-15 10:24:57'),
('4ab9d8e3603b2117bc000402832e4abc2eef123f2d2237123401c562bc94a3c37a7356e35a4e0291', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:08:32', '2021-08-27 01:08:32', '2022-08-26 18:08:32'),
('4ac4d905fc8688c0e76050303326a5b0a746a8d09158e5e8c8659295cf460cbe10ed26f89291f6c3', 37, 1, 'Personal Access Token', '[]', 0, '2022-02-08 04:50:47', '2022-02-08 04:50:47', '2023-02-07 22:50:47'),
('4acf7eba0b0f72a7a8e61f58ff33c2d77356d4a76ee334396d409d3368d5c149feb9d5f636317630', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-01 13:58:16', '2021-12-01 13:58:16', '2022-12-01 07:58:16'),
('4b09c46ac43ff1be431130f12f4531ddec588a7906d5319d3a292229c70c2b847a69c592f6776b51', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 13:59:03', '2022-02-08 13:59:03', '2023-02-08 07:59:03'),
('4b228b22d1a689d9d01d175160230a9cac96eb1a38eb3ef9449e44eadaab5ab32b5646d1eb6890a7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 11:57:08', '2021-11-29 11:57:08', '2022-11-29 05:57:08'),
('4b8f928251538ae2732decc5b0e841056b2a935eadd6b5ef41b41cdf1b4a839c59583a2606a2ecd2', 41, 1, 'Personal Access Token', '[]', 0, '2021-12-25 02:17:29', '2021-12-25 02:17:29', '2022-12-24 20:17:29'),
('4bc21a6516b5128c205e33b2b432f55c1db0a81969079ab29ad35a0ae79d5702e95e840c7bf151c5', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-17 15:50:28', '2021-11-17 15:50:28', '2022-11-17 09:50:28'),
('4beea0932eab9a23adfdebc456d8f4e2399e689113882026f715904d97d72a181d51aba65f0c0e06', 44, 1, 'Personal Access Token', '[]', 0, '2021-12-29 12:50:54', '2021-12-29 12:50:54', '2022-12-29 06:50:54'),
('4c3392975fed851b7e99721fa1e4d5821869d618942834313c36f1b337e25442d2de00726bc38b3d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:10:07', '2021-11-17 16:10:07', '2022-11-17 10:10:07'),
('4d333484e9fce21a1322a80a695a278559b02b3bbf7913226e081d1cc4c0a1630c3b349b5b88cdf7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:53:23', '2021-11-15 18:53:23', '2022-11-15 12:53:23'),
('4d5da62a03a7f1b5ab123e6efb1b73a6ddbfa644b49faa8978ace523fc7b8941a4dac6d00ca5f5cb', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 14:04:49', '2022-02-04 14:04:49', '2023-02-04 08:04:49'),
('4d8f27f2f072cdfa84cabe49ce92882398523fbe64d0c1cf741010927114d6750d43285919bd94cd', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-25 14:57:40', '2022-03-25 14:57:40', '2023-03-25 09:57:40'),
('4dcbec32ae38462eceb4d80dfabc750dcd20b8107756e3b1371b4c659609f6c6991adf842be817a9', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 11:42:50', '2021-12-13 11:42:50', '2022-12-13 05:42:50'),
('4df61e1f353d3be84976a682667f9e2667afa29b523c75f22547f8f11d30f85037a1e1c9c8bdc000', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:01:34', '2021-11-15 19:01:34', '2022-11-15 13:01:34'),
('4dfcbe09b39685c45c9fb2fb7924139f631d88e1cd229af2fb352960c96d179cf09055852537b781', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:38:07', '2021-11-15 19:38:07', '2022-11-15 13:38:07'),
('4e00f92a13607ed69b6a298dca29dbbb291f6c41cff2dd08d33e8731d02a650f5c03e4a39581b1dc', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 07:19:23', '2021-08-28 07:19:23', '2022-08-28 00:19:23'),
('4e1dbbbdbf87753c107eaf9d79ea93bcfa5bb76fb310b30fd5c70699251881086af9f355cb1d7048', 37, 1, 'Personal Access Token', '[]', 0, '2021-12-20 14:35:12', '2021-12-20 14:35:12', '2022-12-20 08:35:12'),
('4e616fd7dff83b016d8a84a937bcf079e3b67d1ccce9ac21a28f6d0c1a11b07698bc12ac7c38c61f', 25, 1, 'Personal Access Token', '[]', 0, '2021-11-29 12:36:01', '2021-11-29 12:36:01', '2022-11-29 06:36:01'),
('4e86e9d2adfe2f4dda40a5ea09dce11e86be23fe4d2d87ef602d33bbbafa7f94bdf6b641e21e05c9', 48, 1, 'Personal Access Token', '[]', 0, '2022-02-04 17:52:12', '2022-02-04 17:52:12', '2023-02-04 11:52:12'),
('4f6d972d4c2cab76dcb69a3bc33a952a09c96a9ffee44a37739fc531a69ea93cb0466c5684e5452e', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 19:25:24', '2021-12-02 19:25:24', '2022-12-02 13:25:24'),
('4f8743f475c907796a785b910d9d83595c21f26570ac8ecd50fe2d3a2fe4d33556988578506e19d7', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 15:55:08', '2021-12-13 15:55:08', '2022-12-13 09:55:08'),
('4fc90784cc9d2aa132b1d8944758043baabd985cdacc2f0c14332c8bc17de8cdd8ab4579b35cc769', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-07 17:21:13', '2022-03-07 17:21:13', '2023-03-07 11:21:13'),
('4ff29446b46536cfd09c97c2f7515b030440afab3887de80032413da797d47fdf92e5ff6f8130b44', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:36:41', '2021-11-15 19:36:41', '2022-11-15 13:36:41'),
('502efa965de8de3be5145ba9c9b5aca76a52631215f1173806a319c7d19af22826bee897d480d515', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-26 19:42:08', '2021-11-26 19:42:08', '2022-11-26 13:42:08'),
('50487eb6088fbb3f503c3c9d99035e594aa105d2a9c7d88af4ddea1f559ccf645b4dd78b55cf848d', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-01 13:23:34', '2021-12-01 13:23:34', '2022-12-01 07:23:34'),
('505c10afa985594b926dcadaa7201c751e44de58b746079445591e750e730224d1c0b2fa8b93c7de', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 18:03:20', '2021-11-22 18:03:20', '2022-11-22 12:03:20'),
('51a561cac1742bd1683552d9da7dca3ff2e2e66585f388f750e4540b0ca5d454e9f2f04c95a27dfa', 63, 1, 'Personal Access Token', '[]', 0, '2022-03-10 11:35:48', '2022-03-10 11:35:48', '2023-03-10 05:35:48'),
('523659ea4bedede080ef27f608260b6b0500d67c2614693844538e4873090008c17bb534d4e67220', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-17 14:18:47', '2021-12-17 14:18:47', '2022-12-17 08:18:47'),
('526435a89197fcca5875c7daa3e8f24e3eef11b5c96fdda1d9dbe4ab2a228e55982b7e916cb9ab6c', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-22 16:11:35', '2021-12-22 16:11:35', '2022-12-22 10:11:35'),
('5310fbd2db847e1bf3b64f4d3bb0f54625655415349aa94aa96eead14bad84576c0388e2f1680fbb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:35:28', '2021-11-12 12:35:28', '2022-11-12 06:35:28'),
('531839aa46baa2c04593c868f1d8bae9abd4db43f1a1177651c5630f341530678c4f825b0ced76e2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 12:37:55', '2021-11-22 12:37:55', '2022-11-22 06:37:55'),
('53852cc2ad3d5aa5cec41d960fdd1f3005b5a0f2ef3dd74d6b2fa5b843f4f4d003d43b1ae3c00fda', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 00:34:33', '2021-09-15 00:34:33', '2022-09-14 17:34:33'),
('53a44a0a4f9b799c53d051e6043e63e2f45a8a1465865af824e37f5422b45dd1f73fe3031719d5a2', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-28 11:57:09', '2021-12-28 11:57:09', '2022-12-28 05:57:09'),
('554babad76ddf9c85290fc5c1f1151d0f1ee157220e511a07be9c9c46a55d4e788abbd8739e50ed1', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 09:25:50', '2021-08-27 09:25:50', '2022-08-27 02:25:50'),
('55640debd4ba91ec18479a8b61a407702f509cf0908493a4a9eac8ec335fe719bab522c83049fee6', 69, 1, 'Personal Access Token', '[]', 0, '2022-03-10 12:18:19', '2022-03-10 12:18:19', '2023-03-10 06:18:19'),
('5598e1bd7870b47eb32b3e2819605dfa87d9b20ccb01c9963b88617f73e63647edc4232d3857ad2e', 56, 1, 'Personal Access Token', '[]', 0, '2022-03-07 19:54:59', '2022-03-07 19:54:59', '2023-03-07 13:54:59'),
('55ab2a3b31707079c8017678632a0aa3964fc2fb0e160f55342a1a32b1d39401efc2b16d25a8ad26', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 12:58:50', '2021-11-22 12:58:50', '2022-11-22 06:58:50'),
('566c4fe747bc0b5b7e8bef072ad5239a1c65e683135b2ed1f9f69f7e4dcd256ed045874fb232eff0', 62, 1, 'Personal Access Token', '[]', 0, '2022-03-09 20:18:35', '2022-03-09 20:18:35', '2023-03-09 14:18:35'),
('567751db3d9f8c12f48ad74c17c9662ddf551874c707a204fce2fa5dd1b437252b9fc0b1e88d87b3', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:09:03', '2021-08-27 03:09:03', '2022-08-26 20:09:03'),
('5709579d86d5a1ba3e1b56179730f1283464e7dfa446efe46dccd58833a7fe0e3e616a5cacf2e24c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 14:15:37', '2021-11-15 14:15:37', '2022-11-15 08:15:37'),
('5783d21aa641e265d54a4e487cbed12fc509776777ae07ad8726a4b24b77d34dfa72d3bd6f44aa2d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 14:21:59', '2021-11-22 14:21:59', '2022-11-22 08:21:59'),
('584dc311bd1ec083c49b90afbda52d9653aef82fd6fa49428ae06211f32d33b6f8f13a2f23d7896a', 60, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:40:26', '2022-03-09 19:40:26', '2023-03-09 13:40:26'),
('586c950d1644e2712571ba90c42481b6b23ad1a91bfbc648a507976e61cb1c7433f5b1789f854746', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 13:29:38', '2021-11-22 13:29:38', '2022-11-22 07:29:38'),
('5920e2c76d31e09a2762ec60975f803e6cdb640bab3e2e953e4a7919814cf82c58e481075500a355', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:51:04', '2021-11-17 14:51:04', '2022-11-17 08:51:04'),
('5945c8cf14247ce56cd578e44e7de39c0b442e94b24272023d6ea58ca59428ac7bfe8eb38e7188a0', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 13:44:10', '2022-02-04 13:44:10', '2023-02-04 07:44:10'),
('596abcb421cd0707863af4b4e679a28419d0c177a87b9f19b7465e5586509f4e8ac338bc36c5ddc7', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-07 09:00:23', '2022-02-07 09:00:23', '2023-02-07 03:00:23'),
('59814f7f9a4d9e7472c54779eaece2b0df590609412235b7ff9ff208dd870a2feec8a0b7c7992234', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:52:25', '2021-12-13 19:52:25', '2022-12-13 13:52:25'),
('5982288de53fb7bd0ecf426621b06da8d9c18f9625d27000a31e4ea15b8eaa92cf4398550bf9fd74', 72, 1, 'Personal Access Token', '[]', 0, '2022-03-10 12:40:31', '2022-03-10 12:40:31', '2023-03-10 06:40:31'),
('5a7247b8086190d52ecd789a019ec7ac75ebf80af66a0b04b6a479a086ddf33f2d1bf4334acf32a5', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 11:47:42', '2021-11-29 11:47:42', '2022-11-29 05:47:42'),
('5addfdaa37cb6115c11bb41dbddc70ac2c0f0c7d2b756544f79cd75f988f294a931b45d4ddf7d97a', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 13:43:03', '2022-02-04 13:43:03', '2023-02-04 07:43:03'),
('5b72a7a740d13cb517e6c733736a4876a661552492f3e4099c59550d6c3aedcb31894df7b752a1f0', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-10 13:16:38', '2022-01-10 13:16:38', '2023-01-10 07:16:38');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('5b91ac42f5faa48db8378083bae3dac1b777bc5696ff3e706bf6947e7d9a807a5ad45f18f1af43d0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 12:50:19', '2021-11-22 12:50:19', '2022-11-22 06:50:19'),
('5cebcedc7320906b533457f09ebcbb6ce1ef434035123104a8dd3aafa1fa4b372ab9dd6f76a09fa2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:57:43', '2021-11-15 18:57:43', '2022-11-15 12:57:43'),
('5dfcfff4e0fa89e39ffd02784eaa1e786ffc906746aa4cf9c7dc74ce83e4054b3d6e890e1df7c0d0', 59, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:14:46', '2022-03-09 19:14:46', '2023-03-09 13:14:46'),
('5e0f0b28943200266570dd57ddbea75aa4f4d36f061670a8e338aad0a56c6346167f81f71b98ed54', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:51:14', '2021-12-13 19:51:14', '2022-12-13 13:51:14'),
('5e1475f1d2d02f59746e86b54b3600f4fccbe1a97fd5895085bd7591f5718e523ebc6597f5a72dd4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:02:31', '2021-11-17 17:02:31', '2022-11-17 11:02:31'),
('5e2a5ac0dd4a832265c6888198031f3eee18fb7644609560bb2eae3699e57bfe0771b159c3a52924', 42, 1, 'Personal Access Token', '[]', 0, '2021-12-29 12:08:17', '2021-12-29 12:08:17', '2022-12-29 06:08:17'),
('5e3b03e3c7c823951d8519e4e5e22b0fdd463a8013d8dffe0bf13aff2d365d08d6447ade69ed5978', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 06:36:39', '2021-12-14 06:36:39', '2022-12-14 00:36:39'),
('5f9f1cc25b745994f7a276deebac15456f9679cb0950e46cc3f5df8435a137182a1bb42623884df8', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 13:22:25', '2021-11-29 13:22:25', '2022-11-29 07:22:25'),
('5fa8fc339464e4117d2199de2fcc325ccff21ab50a4bf097bc3fb1e1c651f7738071af4374e9000a', 37, 1, 'Personal Access Token', '[]', 0, '2022-02-12 14:54:44', '2022-02-12 14:54:44', '2023-02-12 08:54:44'),
('603970bc37f72545a4cbd254d67101aaa4d4de7b15768827295ac5d49d68e7adc527a0ca88cfb4b2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 12:16:09', '2021-11-22 12:16:09', '2022-11-22 06:16:09'),
('6062bbb26c45117d33663c1f21b298b145379e417f60472002b502e5fb434205ca7a7f5bebda65f2', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-28 14:10:41', '2021-12-28 14:10:41', '2022-12-28 08:10:41'),
('613222fad962c9d5847bc96ed3048a7642bd9925a65cbf328171ef7a7fcaf978e94d7b42e58b736d', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-25 17:41:05', '2021-12-25 17:41:05', '2022-12-25 11:41:05'),
('61db9d30539cad733a5a8bf647338932ba3b25f7832a4f3b16c90c4d872a52af3c1b86b6fb9c8839', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-17 11:54:53', '2021-12-17 11:54:53', '2022-12-17 05:54:53'),
('61f40c9e7e84e1eeae67c36ed014b756c9b1a755390193d6105a26532ce31be3351aa872f980a34c', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 12:44:04', '2021-12-01 12:44:04', '2022-12-01 06:44:04'),
('6242fdd38c3fa5712494d9ff46f7aa4eae305a4cd61f1a8047d0332bb3d292e12ce7641324dcccd9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 16:39:59', '2021-11-16 16:39:59', '2022-11-16 10:39:59'),
('62935f417c0934b25851b490a6ba9ca1121ab60f9daed4bd09124f65ce55f8387ae3743465211fca', 72, 1, 'Personal Access Token', '[]', 0, '2022-03-10 13:09:01', '2022-03-10 13:09:01', '2023-03-10 07:09:01'),
('639c9269e38d841404ad8783a16aee75a411f66efad8bcbaaa0ca1c09cde8e976d4a2480332ce6a1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:23:09', '2021-11-15 16:23:09', '2022-11-15 10:23:09'),
('64fa7d32ddcb8cca0dade04e1fccea636ff274a190114b7a4ce77384185578c899b1c91c801e30d2', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-31 14:11:39', '2022-01-31 14:11:39', '2023-01-31 08:11:39'),
('65c99fbd5063d8371357bc4750d051d676ba79262a8001f6089b1d4ed448c6a57230f233a4ebc489', 27, 1, 'Personal Access Token', '[]', 0, '2021-12-02 12:33:27', '2021-12-02 12:33:27', '2022-12-02 06:33:27'),
('65f1c7400c8e91aa36818ac39348c99b6be7c33118725c16d1824745839cf5eeb343e1bc11087fbc', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-15 12:20:09', '2021-12-15 12:20:09', '2022-12-15 06:20:09'),
('669a324dcf6776353818c6a7010c5d24160a41ec91b3ad30a7af12243bf7f95d121b5687593604fd', 14, 1, 'Personal Access Token', '[]', 0, '2022-02-04 16:16:52', '2022-02-04 16:16:52', '2023-02-04 10:16:52'),
('66b9884516192aedb1f0550ec19ec768c333018355f2bd23698962ccbfc34407f1232945a61cfa34', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 15:26:05', '2021-11-29 15:26:05', '2022-11-29 09:26:05'),
('673b60f1a09897d3acea19b26a5ad0f5f5d43977c6d3301f1cc1a87ca0cc3057e4527212537ef2bd', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-01 14:33:20', '2021-12-01 14:33:20', '2022-12-01 08:33:20'),
('6779e3c55fa8fb367b3a43a571cd252d321e14842b6a38bce69f31cfe6500ca159124177bec2ba93', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 18:08:09', '2022-02-04 18:08:09', '2023-02-04 12:08:09'),
('68acc38a400d5cf898ef8cb43ff70cd4861b3ce782c31878cefdca56d89fe4867bbbc345855e389b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:09:10', '2021-11-15 19:09:10', '2022-11-15 13:09:10'),
('68b610ccb1cac5b4049397eb98bac0ffc6f462a9e6a844473ac73fb0d74bfeb7977d713bf3d63ed8', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 07:11:35', '2021-08-27 07:11:35', '2022-08-27 00:11:35'),
('68bcfa246f2a77c066c7118ed56558c41cc997764039e30a982649872fa32ea62a8dae29998d79a9', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-03 18:33:31', '2022-02-03 18:33:31', '2023-02-03 12:33:31'),
('68c233f7e367dadc7616a9f300382dcfea3efec54ad1914c6fe09295bead0328e2629f2f0c6aa794', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-28 13:53:15', '2021-12-28 13:53:15', '2022-12-28 07:53:15'),
('68c2472359d1b431de95f577611c05e22033affa58c03a499ce36940b8406920e85ba857b78dc1e6', 40, 1, 'Personal Access Token', '[]', 0, '2022-03-24 04:15:23', '2022-03-24 04:15:23', '2023-03-23 23:15:23'),
('68ce4674222b937671e56945285dfbeb73a273fdd3a37085758f816812f8d487ce4f9dc509da493e', 60, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:50:18', '2022-03-09 19:50:18', '2023-03-09 13:50:18'),
('696014030e6648e931dae5409e24328bb6d6dfb2a66d8e3c15e49c2f64f077affffe0e927263ea16', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:59:08', '2021-11-16 13:59:08', '2022-11-16 07:59:08'),
('69aa8348ddd3adf973cfa75ab6fa93612c18fdab72dd2501c8dadf300d07ed9f0db73b145f42d845', 74, 1, 'Personal Access Token', '[]', 0, '2022-03-10 16:04:40', '2022-03-10 16:04:40', '2023-03-10 10:04:40'),
('6a11e19f1fac8d395d1cc03863e394845c73e21fbb483ea1ae75c9a878bae393503081ce256ab5c4', 77, 1, 'Personal Access Token', '[]', 0, '2022-03-26 19:00:15', '2022-03-26 19:00:15', '2023-03-26 14:00:15'),
('6a559084fee47b5792b9fff33ae1428edfd3054f7cea9ceacedbaf687915513cb088bb27a1d1ff78', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-01 15:46:14', '2022-03-01 15:46:14', '2023-03-01 09:46:14'),
('6a5ede1bd7f3424d769dc9738c6870d71922124370a6ede02035f8f991abca3422bc7204b6030064', 55, 1, 'Personal Access Token', '[]', 0, '2022-03-07 00:59:07', '2022-03-07 00:59:07', '2023-03-06 18:59:07'),
('6a6a09dd8321df93766604fff4317d733fb91d7e4de973cc002b5dc28130dc0f96368100fe6e978e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-13 00:42:16', '2021-11-13 00:42:16', '2022-11-12 18:42:16'),
('6b083d4870afd1a7bd41f8793e182a8e2640697a6e6c9e801aee6ec5253e7c8be88870b6b367e2c0', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-25 00:24:10', '2021-09-25 00:24:10', '2022-09-24 17:24:10'),
('6b738a133ed8acd81f4c7fddeb757ec6277a11049fb6783f3b695c63fb3a034d67b78ceb79eee3c2', 65, 1, 'Personal Access Token', '[]', 0, '2022-03-10 11:57:20', '2022-03-10 11:57:20', '2023-03-10 05:57:20'),
('6b84bf284b012db892de09da118935a11c371b4fd672d25c93175edb85f49f2f72d06836d8e0dfd3', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-31 13:44:48', '2022-01-31 13:44:48', '2023-01-31 07:44:48'),
('6bea081f408aa4cec2adfc0a7828546fce1ab082146df32e90b36b9e0aab62ea60d712f318b066c8', 40, 1, 'Personal Access Token', '[]', 0, '2022-06-01 20:15:15', '2022-06-01 20:15:15', '2023-06-01 15:15:15'),
('6bee2f344ee6037661a008ec99df43a6f622eb93e7f5112413e16a6cb5c771959e6561392f5347f8', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 19:26:06', '2022-02-01 19:26:06', '2023-02-01 13:26:06'),
('6c65aeb6efe517f44460529c7bb2523d95e3cb23784c46d7a367ba86c21bcace8b25085d293a46a7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 17:23:07', '2021-11-12 17:23:07', '2022-11-12 11:23:07'),
('6df8c0b414bda00a145b297cf9a099a1f9b70f9f9baf4f3077f00b18cfe0241e3aafe1e8af3e9957', 40, 1, 'Personal Access Token', '[]', 0, '2022-03-20 00:40:48', '2022-03-20 00:40:48', '2023-03-19 19:40:48'),
('6e0641976b032944d0234dd9c495bcdf695a17beacea2d35c698e36ca7b889eec78dd6cb081982f5', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-10 06:14:36', '2021-11-10 06:14:36', '2022-11-09 23:14:36'),
('6f0ecabafd31822a8011633fd0103dd03dbe16bdfab676782fdf58bf02311c90856dcf973756540e', 14, 1, 'Personal Access Token', '[]', 0, '2022-02-04 16:34:27', '2022-02-04 16:34:27', '2023-02-04 10:34:27'),
('6f2b98b14083f5297358c6d6af116c76a40c5d76145a5324c5920fd75b8dbdc31468d1fcbe1828d1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:21:49', '2021-11-17 17:21:49', '2022-11-17 11:21:49'),
('6ffbbc6a3e77719174d5602204daf548359d98a70af00e828e5f649f49254c8bb74dd1d6ec842714', 40, 1, 'Personal Access Token', '[]', 0, '2022-02-17 22:01:04', '2022-02-17 22:01:04', '2023-02-17 16:01:04'),
('70fca29289910aae2779e2edd02311ab976e7b084862fd048dd3ec8461d7cf3b6e8d444b83a3ba1e', 61, 1, 'Personal Access Token', '[]', 0, '2022-03-09 20:14:30', '2022-03-09 20:14:30', '2023-03-09 14:14:30'),
('71333c4a90da7ecd0a811305e3f98ca23a5b9f84e8181bf93bd896edabce08f0f2da1942d0951940', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-03 11:36:34', '2021-12-03 11:36:34', '2022-12-03 05:36:34'),
('7157c1aac89b806c133b9101d8d54a1a43d490827f51b0f6065ba4797bcaf158ab3298a275d7cbdb', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:27:30', '2021-12-13 19:27:30', '2022-12-13 13:27:30'),
('7182b7a3b46aef135efe7afa65a7ef4eaaae002e9cba5c8d4b00c943916bd1abe24eb519ada15635', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 00:45:53', '2021-08-27 00:45:53', '2022-08-26 17:45:53'),
('71916125a1b4107b60c2189b7eb71d3cd97e7a25607a8304e23309fec5e599fcd69d0e40e0caa2ac', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-10 13:36:30', '2022-03-10 13:36:30', '2023-03-10 07:36:30'),
('71bfbbdbb19a2d4096263ff84fe0c9fea2aaea7d001a938c54612efaa43f7a9c204931fc21f8e664', 58, 1, 'Personal Access Token', '[]', 0, '2022-03-09 18:10:58', '2022-03-09 18:10:58', '2023-03-09 12:10:58'),
('729350bfeb6cf378a4995db5b8d6802f6713885dc40a8a6b15cb6bf64ad61eea05efd5339e05d480', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-22 01:08:33', '2021-09-22 01:08:33', '2022-09-21 18:08:33'),
('737991e302987a4198cb05111f61ea702a454ad6e2e80117b9f8118c7e4fffb5a202e2ea1ffb5b35', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-31 12:42:43', '2021-12-31 12:42:43', '2022-12-31 06:42:43'),
('73faf7e4196aad00da15938fd626c0eb21c5485f310d77e5171dead26f0fc14fb6213e29200e22fb', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-15 13:05:36', '2021-11-15 13:05:36', '2022-11-15 07:05:36'),
('74161c39d7983303189ec471405a94838f0949909be0c4c9930e7d1a3acaf312bf76be161c5001cc', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-04 07:56:11', '2021-11-04 07:56:11', '2022-11-04 00:56:11'),
('742051bd514672403dbeff14d45a2aaf3719c5e6631d2450715bc36ed470874ad780218039a070a0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:23:15', '2021-11-17 17:23:15', '2022-11-17 11:23:15'),
('74379a0e5083b6b11a6c0bf352623bcc6cfed8314e3f4082b88e73b008f1326843bcac92f6e382b5', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 13:58:36', '2021-11-15 13:58:36', '2022-11-15 07:58:36'),
('74acea1c7918de5e6bf6a7ab4ff41e66b7ce63fba992de3eea0496d096278dbe3db4180fe19f46d2', 45, 1, 'Personal Access Token', '[]', 0, '2021-12-31 13:38:17', '2021-12-31 13:38:17', '2022-12-31 07:38:17'),
('74d37a54cac9586e272fd4aabfffaead48bda180151ef907b64ae4dbcd2bc097c5d9cbde9f005361', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-25 15:35:27', '2022-03-25 15:35:27', '2023-03-25 10:35:27'),
('7545a2863fbc5c3b920724b724ab9efc552d86c418315581804c11a6410e22f52834f332771baa0a', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-10 13:36:23', '2022-03-10 13:36:23', '2023-03-10 07:36:23'),
('762ad67bee0da77ee11f0143566ee072b2930ef7bf43aa5f6e6deec0534aa93da2af3c8a80c04e93', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 18:50:22', '2021-11-16 18:50:22', '2022-11-16 12:50:22'),
('763beabeb0c8f102dc362b3d54b05e3d1ec4afd6b9dbc442a2f7cadbef03c016ce87b5b7a99a1842', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:24:22', '2021-11-15 19:24:22', '2022-11-15 13:24:22'),
('76ed1f38f2a5c3d492b7f20b6ea13e9077f2729f9c9a8c314e3b63fbc930b86228fcbf7946c68142', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 11:43:01', '2021-12-13 11:43:01', '2022-12-13 05:43:01'),
('775999fe9c3bc67f17372bb68865340daa19a9f9187009e21c4c3a302eb2b5138bfdf635f14519c1', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-10 18:01:18', '2021-12-10 18:01:18', '2022-12-10 12:01:18'),
('7779925379caf646676d68b1cb7bf8e5478e23bfd57080ee08c3c358f2cb03f86f8c69af276d1655', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-10 13:36:37', '2022-03-10 13:36:37', '2023-03-10 07:36:37'),
('7804498883e58041d1c307d78027421561bd1d12714212cfaa17ba6684e1a917d584410e317582f3', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:38:27', '2021-11-15 18:38:27', '2022-11-15 12:38:27'),
('785ac239bfc3dfb4fc35ecf5f071bd304a6ef08e5b35fb0a455774f62503da89b5c2108c48c11c89', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-29 17:17:51', '2021-12-29 17:17:51', '2022-12-29 11:17:51'),
('786a2f36beb3a96928237b93895dc10d5faa1cb86c4d7472bc8f686c1595a79c0be4aaac08e48abd', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:27:06', '2021-11-17 17:27:06', '2022-11-17 11:27:06'),
('78da0bb3a08688949239a9dd47252057f991dd5b19cbcb96450ca7fccc441b965adfd65c6233bccf', 64, 1, 'Personal Access Token', '[]', 0, '2022-03-10 11:54:27', '2022-03-10 11:54:27', '2023-03-10 05:54:27'),
('78f26f4c21414d37d5ce7098512e0b7a968cdfd5e1b54bd545bfbcf0ecef0c58044544143857b848', 62, 1, 'Personal Access Token', '[]', 0, '2022-03-09 20:20:58', '2022-03-09 20:20:58', '2023-03-09 14:20:58'),
('7940ee2da60ff605ad03398cb5ca4f3cd5fe2aa33241d5437bb68dd63c03e9392c275d0754b61724', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 13:22:39', '2021-11-29 13:22:39', '2022-11-29 07:22:39'),
('799e132f5095b94a26988e8aced6f705db518a77b8aa6caad611e00932768892ed819ba416147873', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-27 05:58:56', '2021-10-27 05:58:56', '2022-10-26 22:58:56'),
('7a35285b6859b13b9da94c0b014a6bab95cf64ee6931996417f5ff6e5f406931a8efb6a797566366', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-07 19:53:33', '2022-03-07 19:53:33', '2023-03-07 13:53:33'),
('7afc888a5c0ed3586e091c657cce8567b928cc754ee7f3ecc6698958a77b3b94669817f54bca28b2', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-29 18:33:06', '2021-12-29 18:33:06', '2022-12-29 12:33:06'),
('7b4de27d291e7c0196ff87c6f29dd98483baade1d530d5403b3e361c7a0fe7f5d0db097019aeebc8', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 22:33:22', '2022-02-05 22:33:22', '2023-02-05 16:33:22'),
('7b7f74b3a3795a62d9976c738cccbe49e3b4fd339ad3aab64d1cc56da0404121b877b67cb192c45b', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 16:00:33', '2021-12-01 16:00:33', '2022-12-01 10:00:33'),
('7bda830e4cac9805c8273e601f63c46ab6ba64c90ddc88ccd4adf4baa2f99ba03e8a81b9ef8170e4', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-31 14:20:31', '2021-12-31 14:20:31', '2022-12-31 08:20:31'),
('7c4407953c2728c3c71e32cb7285ef1b2055729adde3012e57e84e43bd718bd9ce67eb0a2ff7313b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:02:41', '2021-11-16 13:02:41', '2022-11-16 07:02:41'),
('7c7fd1cbdc1ea5abe98e757326f734dea8a6d3761ee7ae52e0fb0faa8f3ba9fc95dc2bdcba9ce82f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 19:14:49', '2021-11-17 19:14:49', '2022-11-17 13:14:49'),
('7c99d2f8aa1a2c14b0fccc2bceac2536b304c83ff8016b64a44c00fa2ebe3b3e3396416ecf164f5a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 15:55:20', '2021-11-17 15:55:20', '2022-11-17 09:55:20'),
('7ca333ffc2ccf461e703338495a07852be81fa3f693155d37dac15b039a353f6271a2ec053e1ff05', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-03 00:58:10', '2021-09-03 00:58:10', '2022-09-02 17:58:10'),
('7cb928310ce1e9e266d3673a28e4e1da076cd8a98046b87e035b10ee6ab166686cc444fed3536b70', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-04 00:12:24', '2021-11-04 00:12:24', '2022-11-03 17:12:24'),
('7d5c25fc58ca86d3c9dd2c2071950ad13ef69e8ff34f06c46b71fb29f7de9a2a86db6a5bc4cd2f92', 1, 1, 'Personal Access Token', '[]', 0, '2022-06-02 12:13:24', '2022-06-02 12:13:24', '2023-06-02 07:13:24'),
('7e2ada49c597884bf50ab8a9df6231a30446c4d4dc3899029728497f77fe4c9f6ca43e950903806b', 62, 1, 'Personal Access Token', '[]', 0, '2022-03-09 20:19:08', '2022-03-09 20:19:08', '2023-03-09 14:19:08'),
('7f30adb54ddf036689395bdb6e087e3a5de614bc39e3996c508588074002d4c6d309f5ca56615e04', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 13:11:17', '2021-12-02 13:11:17', '2022-12-02 07:11:17'),
('7f5d2963fc3b65858f3da4fbc86e01e57b49dc50b187c4b0f1fb2169e7f33aab65fb1e0b4ddf692b', 37, 1, 'Personal Access Token', '[]', 0, '2022-02-03 13:33:17', '2022-02-03 13:33:17', '2023-02-03 07:33:17'),
('7f891e9529ecda3d94cf2db57ca932d0dc2ab4b68a0e427d9fb85f344803288bc6de17a5e947f9df', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-29 18:35:15', '2021-12-29 18:35:15', '2022-12-29 12:35:15'),
('801444a6d8944a0241fd07f60e99c6142b146123d70e4c5f8d18ddfec18aa64a89fe816f41064c9c', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-26 19:17:26', '2021-11-26 19:17:26', '2022-11-26 13:17:26'),
('80b328a2b8ec39d8857bb399d43f3f1304341cc1fedeab861d8423ef90a3271f55e9078ee56d7d24', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:46:04', '2021-11-15 16:46:04', '2022-11-15 10:46:04'),
('80d1716c35f479619056d83c001bad0b28f02c34549d0892bd666aa395ae5977384d890ba6a5bb02', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 14:01:23', '2022-02-04 14:01:23', '2023-02-04 08:01:23'),
('80ffc68e722c035f22fd9a9e55e8443d300f01e4e813647ba9b58803a1e01d6b4576a982043fe75c', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-04 15:18:27', '2022-02-04 15:18:27', '2023-02-04 09:18:27'),
('81170f56ea2b41cbda5099ff419e81596eaecf704f9ba0d1cc42f14a0d86d6354f622630a7d5bb70', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-22 16:11:43', '2021-12-22 16:11:43', '2022-12-22 10:11:43'),
('813617094e59f9719d8c2316c540d60fb4af59aae00067fb6167a2467ae7a5c6aa7074d89ff2af70', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-14 07:11:40', '2021-09-14 07:11:40', '2022-09-14 00:11:40'),
('8174bfa4358b94cbb2a95437156eaa8c8ea31cdd7f725eeb26f508f1be55d793e323b53b7eccfc3c', 71, 1, 'Personal Access Token', '[]', 0, '2022-03-10 12:33:41', '2022-03-10 12:33:41', '2023-03-10 06:33:41'),
('820b1d6562f157d6ff157b8cecfe46d5e858e6763f76293907592ad382f4a649a70f1a1908398312', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:29:35', '2021-11-15 16:29:35', '2022-11-15 10:29:35'),
('8256c9cfd43fff8a8efe582a0997c505d29adea9f535fcd4ce7ca7f933f1a16fa62ed777949f8fd0', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-04 13:43:24', '2022-02-04 13:43:24', '2023-02-04 07:43:24'),
('834cf6a8f49e5b25c38d612d817c33b9049b88bd5e1f4c7b19fcea32b274c8b02b5906892bd2d827', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-03 13:26:32', '2021-12-03 13:26:32', '2022-12-03 07:26:32'),
('83a504cb3b35aed805fb520dfe99d28fcd0496fb9076d69d72ca693345f17466edeb406f3a515597', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 14:34:03', '2021-12-16 14:34:03', '2022-12-16 08:34:03'),
('83c11d954cf07683cd8d7b48b2ae621f4cc0495089823116aed1ed51e00bf585a41d54ea75764117', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-31 14:24:34', '2022-01-31 14:24:34', '2023-01-31 08:24:34'),
('83fbc9124c132f095e760a4fbd635f9ea8b245fed9ef8f7b05f03ad47cb7a9cee40346fcc2d5a5d7', 47, 1, 'Personal Access Token', '[]', 0, '2022-02-04 17:34:23', '2022-02-04 17:34:23', '2023-02-04 11:34:23'),
('842e46922cc16af29d3896b05955c8d5731f7d54d10220235226216109c984a0b65222a463130394', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:22:39', '2021-08-27 03:22:39', '2022-08-26 20:22:39'),
('84d876dff1b46c8219edeb885853c65c6bdd4b8089f61a48c16f3b8ad1a7dac652e397adbacc2d7d', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-12 17:56:13', '2021-11-12 17:56:13', '2022-11-12 11:56:13'),
('85234bd9998b2e02626ed4d5960702c2a620a96fee2444806f180ec2f9e53cbf446fe020b755329f', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-20 12:54:31', '2021-12-20 12:54:31', '2022-12-20 06:54:31'),
('857f78d9672ff95056272420f9e9317d60a97932eda0f04aba0c1b32cca5317ad2a97fc7aa8fd980', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-28 00:18:00', '2021-09-28 00:18:00', '2022-09-27 17:18:00'),
('85b539bef80161ea21b354819f4ea80e8cde59e49664d0c8110b9c3e86144ffb9967c1a6c094b05c', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-22 16:13:31', '2021-12-22 16:13:31', '2022-12-22 10:13:31'),
('85b67e16ed13bb954ad0b543bc69050dcae7f23f6e14f69fc2a8e033d2c151d93e79367ea2c6c52d', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-25 17:08:54', '2022-03-25 17:08:54', '2023-03-25 12:08:54'),
('86009e496450355f3d4d0173443150ece9bdd7f5c4b3341141e55a83a94f4d2f4441103abcde07d7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 13:22:19', '2021-11-29 13:22:19', '2022-11-29 07:22:19'),
('866b39c2790638d487ac8838f4156026fee10ce982b5f350bc5a6de6d5e0384cb73dca08a3d2b79c', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 15:34:35', '2021-12-01 15:34:35', '2022-12-01 09:34:35'),
('86f8c458b7d6e5854bb372c47939a48c864855124b8783eb564e09fe7b0f17274bfbf6ac2334346b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:46:59', '2021-11-17 16:46:59', '2022-11-17 10:46:59'),
('8795b855e0c27552c7073a12d0e7f421955bd84de7bdfb17b215573e31d753d99d51fb50d57a08fe', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-01 14:02:54', '2021-12-01 14:02:54', '2022-12-01 08:02:54'),
('87b5949a2978737dd5e52d92c78335ef89102afc7603fa64b725821f5a86178035631bb350da5c88', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-03 12:26:56', '2021-12-03 12:26:56', '2022-12-03 06:26:56'),
('87d2650632cb5c4a5fb77a4ffe4ba06946d550a983a7f7be3c730545c915f4804b44ecf7368f6904', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 16:26:46', '2021-11-16 16:26:46', '2022-11-16 10:26:46'),
('886244a1e30bc265d240ff2bf57da5e6e7000146820e69337c2a6ab27a37ce1fafcdd10bab29bf44', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 20:01:30', '2021-12-02 20:01:30', '2022-12-02 14:01:30'),
('88b86ecb1c41ea7d58cf09800530ad325755df23c16d322c945f5a05d16ff599b70c53675219eb72', 78, 1, 'Personal Access Token', '[]', 0, '2022-04-25 07:20:07', '2022-04-25 07:20:07', '2023-04-25 02:20:07'),
('8933d12748c6129fd8b1e99b1e784a88468d542cc30e60c0cdb323ec9184556cea4d18e7418613d4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 16:41:47', '2021-11-16 16:41:47', '2022-11-16 10:41:47'),
('896cc209bc73c0ddde67f85021987f7616495d0efd41a52d1c6d27992db26f32ec0f890de860005e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:23:35', '2021-11-15 19:23:35', '2022-11-15 13:23:35'),
('8987ac984a885ffb7bb9caf81a159e5f59a97e6fb1d26362416e24015c8547dcf660cff8125230c6', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 16:38:27', '2021-12-01 16:38:27', '2022-12-01 10:38:27'),
('89a92d141b322a151a0a5368732eef0e97d6d8446b3a953ec674ab270fce294e06aad404f0e942eb', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-01 13:39:50', '2021-12-01 13:39:50', '2022-12-01 07:39:50'),
('8a02d3c8fc4085737b58c833d2610b2add416f93834b6fc97fc00de573da9132c24d52da716b4e92', 65, 1, 'Personal Access Token', '[]', 0, '2022-03-10 11:56:01', '2022-03-10 11:56:01', '2023-03-10 05:56:01'),
('8a0a54fe44d8a2f35c778c44eaab256cfc7c3c06af0d99102835e2e6b22d06793d26cf8ed824a5d6', 47, 1, 'Personal Access Token', '[]', 0, '2022-02-04 17:32:39', '2022-02-04 17:32:39', '2023-02-04 11:32:39'),
('8a15a36d8cb4c6971e795ffb38bc6006203c02ea34dd568c818ebd55361c9d1b1e12e259d7c6eae5', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:30:14', '2021-11-15 16:30:14', '2022-11-15 10:30:14'),
('8a57ade9b14ed540f28f40b7fdbd9738b8cae59321d8e7eb788fc3216ced9b8d9bd3a45427cb9fe4', 25, 1, 'Personal Access Token', '[]', 0, '2021-11-29 14:06:50', '2021-11-29 14:06:50', '2022-11-29 08:06:50'),
('8a92b8fef477cccec5e1d28ed10feb14696a63c02b5784180b990ec694c71f0a15311cfb948703fa', 44, 1, 'Personal Access Token', '[]', 0, '2021-12-30 18:49:18', '2021-12-30 18:49:18', '2022-12-30 12:49:18'),
('8ad383338189ccd7c15d97aa7496f6ae162fd22ef95de894f9d0eae7874265b233d1438b33b3dae3', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:29:23', '2021-11-16 13:29:23', '2022-11-16 07:29:23'),
('8b116914c6cd9367554ab5ee64b0c0fa082c6d35427299b513a583a8d98e468049257fc7372747e8', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 03:39:36', '2021-09-01 03:39:36', '2022-08-31 20:39:36'),
('8b3bd4e244bde8c6de6d8532ca7b3a002643657e8a253b616d9d5bbd6ed808f85ac14eecfb750b6b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-04 07:56:09', '2021-11-04 07:56:09', '2022-11-04 00:56:09'),
('8b3f01c00c504655aefa9f4cdaa052b6975f0e798bf56b54187633cba69ecb8bb0ff14fbc92ad212', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:54:57', '2021-11-15 18:54:57', '2022-11-15 12:54:57'),
('8b8b47cee92f8ca548e82bf4a09c558f7a4b704d3b570449fb9af54df6d32662e173b2eca44706b8', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-23 00:46:47', '2021-09-23 00:46:47', '2022-09-22 17:46:47'),
('8bbe85233971e8a72025093d39c456c509f6d79e48bcbdd6b8a8dced1f5fa01b4ec55a041da9b3ec', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 13:23:27', '2021-11-25 13:23:27', '2022-11-25 07:23:27'),
('8c1f3c8e1341119702c1bba2955f6926fdb2128f67005aa592c85f74c7c4c2743ce926d98056fdda', 25, 1, 'Personal Access Token', '[]', 0, '2021-11-30 17:22:51', '2021-11-30 17:22:51', '2022-11-30 11:22:51'),
('8e544443e73cf2d484e7c68a09c4a92a9653bd655166071938b88217a0db8899ccbf4364a833f7f5', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 15:00:48', '2021-11-17 15:00:48', '2022-11-17 09:00:48'),
('8f04be7086fae8a4ef703f585fa1e9a963666beaa83452c770c6ddd8a479a99e0edcd281f723911c', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-23 10:48:01', '2021-12-23 10:48:01', '2022-12-23 04:48:01'),
('8f933a026a61e9f01500c6f51d7bc9f8ad7ad2414df0a8fcffd2305196a08b3ed2ff458a3d70d32e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 05:55:38', '2021-08-28 05:55:38', '2022-08-27 22:55:38'),
('8fb88a89617eccbc8e5dcdab1c67ec93e476254685c5115a333ca504b0ec94946e93a3331c4ba61b', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:22:19', '2021-12-13 19:22:19', '2022-12-13 13:22:19'),
('8fe7bd37a4aa147fa32275fd9d9069c64a47a800e7a63d654f613868e6f62973db2bd1968e329062', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-22 01:57:34', '2021-09-22 01:57:34', '2022-09-21 18:57:34'),
('906695dc52cb0aee4751f4d955245c5a8af9a6cb692dd902193e8b925f36db9c36e24b7fbd70123e', 25, 1, 'Personal Access Token', '[]', 0, '2021-12-01 13:00:15', '2021-12-01 13:00:15', '2022-12-01 07:00:15'),
('90ef2ed66a100b815dd1f377fa8a90b8723c3ec4143ad0844bf761d7fb0fdcbf771e89c36264da2c', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-23 13:32:29', '2021-12-23 13:32:29', '2022-12-23 07:32:29'),
('90fcacefa1ed44b19bec8648f8615cb4835189afa455ac8722abcd7536b7be72eec3e6b6d6315e12', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:55:11', '2021-08-27 03:55:11', '2022-08-26 20:55:11'),
('912f68382a1fa37a8062159825f1d62a0f3dffa17087d9b17b36f22744e43a7b79496592060852a6', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:58:43', '2021-11-15 19:58:43', '2022-11-15 13:58:43'),
('91ad593a6ed171d625ec40e0d419aee4c56c4ebde48551df31bc4f68dcc92b5132552f2d1454eb5f', 62, 1, 'Personal Access Token', '[]', 0, '2022-03-09 20:20:09', '2022-03-09 20:20:09', '2023-03-09 14:20:09'),
('92100c4065646db0c753657e99f384bc6bea2c8b2168f5af0c20d4998d2dc065b95ac88bf7abe3ed', 58, 1, 'Personal Access Token', '[]', 0, '2022-03-09 18:05:18', '2022-03-09 18:05:18', '2023-03-09 12:05:18'),
('922dc8e34f3761fcc801af2ae56445f2bb1675f9de795f55ee2ee0419a2a28022b4fc4063321dc9c', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-07 19:08:33', '2022-02-07 19:08:33', '2023-02-07 13:08:33'),
('92a90a9bc8f06bd05dc8cde711b54059211c6aa5f700f10a855d1e942b1bc9c8f020174837f1d756', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-04 07:20:04', '2021-11-04 07:20:04', '2022-11-04 00:20:04'),
('933b287f119d2efd7da28c7fd2c62f0f94cf96c211e0a1e5a23cff426234b4dbe80da071ff2ae356', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-30 01:49:33', '2021-09-30 01:49:33', '2022-09-29 18:49:33'),
('939e84ba1b62502256bbfd1b8df0ccd02464ef42e3b6434115d5d2e1acef24bf250921e0cb1d6555', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:25:52', '2021-08-27 03:25:52', '2022-08-26 20:25:52'),
('9442dbac932a7caf43903f6ad072f152b03647099d061db17d3e8ab77d6eb046a8c1306c69373e91', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:46:07', '2021-11-15 19:46:07', '2022-11-15 13:46:07'),
('944dcbbebdba8baf008dda413c7e9da605079e5c492f290d61aedea1e16e5f0f107075723f89a7f1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 12:18:31', '2021-11-29 12:18:31', '2022-11-29 06:18:31'),
('947f644837466c0a90b0319c40359b5142eb7b42343d8be435147d9ff6fb1c75947669c184e9da0f', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 00:47:41', '2021-08-27 00:47:41', '2022-08-26 17:47:41'),
('9485ccd2133263673dd820ce5ec4289b5c94ded9a099396c1becba3cc0b2f5bbd815a22b331e0d69', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 05:32:53', '2021-08-28 05:32:53', '2022-08-27 22:32:53'),
('9487799175ed7d60ca3c73ba81fdac6ce6fd4b2534725db7aa8510117d508c59eee4c9716d0d0f70', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:19:23', '2021-08-27 03:19:23', '2022-08-26 20:19:23'),
('950253300dad783f8a522cf73301e703c250e42604d4f288b51be2a178dbb59826d0645e6069d134', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 12:35:33', '2021-11-17 12:35:33', '2022-11-17 06:35:33'),
('95212543b1e99c10c9e3b5335d71c30744ee9926ab0c25133f1f94f3d03e5e1aef664a0dbd5dde7e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-26 16:58:29', '2021-11-26 16:58:29', '2022-11-26 10:58:29'),
('952f9821ea7022ddd212ad065ba033072e7c0720f2d58f1552f200ee9a5f502a88707f485cbea312', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:16:58', '2021-11-17 17:16:58', '2022-11-17 11:16:58'),
('9570fb5bd2e96dae999525586e72c2bd2d102a1885a02083e84a1f338b943718a2bd0704379bc45b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:09', '2021-11-17 16:47:09', '2022-11-17 10:47:09'),
('960f0d9b077bc9f8974798e339ede9465b257f34bde9e4032807ce34ab9db05d3fdbbd098b4e487a', 76, 1, 'Personal Access Token', '[]', 0, '2022-03-20 00:39:47', '2022-03-20 00:39:47', '2023-03-19 19:39:47'),
('964464a51ef1df844cab89b791592502fe11e69d7c9d83ff6c2c84c015c58e5a3130d2fed9576306', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 02:25:48', '2021-08-27 02:25:48', '2022-08-26 19:25:48'),
('98a7182ef4daca5d41606fa905001875d6728968fdd13d0ac5ec5e16aefb7ce0f5e1e3c8f9b24fb5', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 12:23:31', '2021-11-16 12:23:31', '2022-11-16 06:23:31'),
('996ee85e1a9b886c877728ad011af2dd23258cbba7a52c28004568b3ab4c61045415ab670971e579', 44, 1, 'Personal Access Token', '[]', 0, '2021-12-29 19:09:47', '2021-12-29 19:09:47', '2022-12-29 13:09:47'),
('996fc6a85d14bc1170fc980d62533d5c26915e7705c4382b87248064cc4be32dbce24e393ce31aa0', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-10 13:37:59', '2022-03-10 13:37:59', '2023-03-10 07:37:59'),
('997435d2f5940b98a8396244832ea188070f9fda00b56b1a28bf71909321bb602ecd8393a67c9e49', 37, 1, 'Personal Access Token', '[]', 0, '2022-03-12 02:30:33', '2022-03-12 02:30:33', '2023-03-11 20:30:33'),
('9a0916efae669d3c1211e086ad819f00b3a63d41f4bb88d4faaf385c4ed3269c8aa5e0f67dca4bde', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-03 00:27:30', '2021-09-03 00:27:30', '2022-09-02 17:27:30'),
('9a41ce52d584edd34858580b97ec721e018351102afffe9c83d795ff8f4f43b7fc1c33ee9ef87b63', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-29 18:32:58', '2021-12-29 18:32:58', '2022-12-29 12:32:58'),
('9a84676e3dcb57094f406f79f1a2ab90d7e6a1fe22d6cb55cfb4e2c89219fd45c884aafc7f8524d2', 40, 1, 'Personal Access Token', '[]', 0, '2021-12-29 21:43:05', '2021-12-29 21:43:05', '2022-12-29 15:43:05'),
('9a9086b428861d1c5066d95edc8dae5c88c86a39a9abf9e6173bc983e3e7ba6760313c0f556546bd', 60, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:52:13', '2022-03-09 19:52:13', '2023-03-09 13:52:13'),
('9ad6d74950bd0fa29e32493678d0037deda066b8bd14ba1e2e6aa0796f2b79070bf9fab52cf07e1f', 40, 1, 'Personal Access Token', '[]', 0, '2022-03-30 20:51:20', '2022-03-30 20:51:20', '2023-03-30 15:51:20'),
('9ae85a8dabe8e90ef384ad48579fff98413334c1800d6dbd387e7c978cb9212b2e6832b9eeef576d', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 09:25:49', '2021-08-27 09:25:49', '2022-08-27 02:25:49'),
('9b3165b0fdfd1732b77aef17dcb54959fbf08d951bfcb204e3d952a55a83786d6cf69513864381c0', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-02 17:41:01', '2022-02-02 17:41:01', '2023-02-02 11:41:01'),
('9b3dbcc553976f185a211c8297aef31428956b08d22936979867fa60ab13765b7202f9f59d488cc1', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-29 16:03:03', '2022-03-29 16:03:03', '2023-03-29 11:03:03'),
('9b65cc4a45124612e32b59f3e3f49151acd9e315614eef188eb74fd2595f66a5f91906dd91b88fb1', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-21 02:07:19', '2021-09-21 02:07:19', '2022-09-20 19:07:19'),
('9b87ede6b5f2eecf662c1489cf3c8853121f7b0490f32c3958867a42477384a43fcb4a04ae815619', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:26:43', '2021-08-27 03:26:43', '2022-08-26 20:26:43'),
('9b9a92602a61bf0cc1555c86752bdc2668174c4aa22cb1183a31c37812d44e2fbfddba8e5f9c1037', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-21 18:41:02', '2021-12-21 18:41:02', '2022-12-21 12:41:02'),
('9bc255359fca84952233dc2ab0ae8e522060a38e4a4f276c99152275eb0fd1f9dcdde2f517cc77fa', 14, 1, 'Personal Access Token', '[]', 0, '2022-02-04 16:59:33', '2022-02-04 16:59:33', '2023-02-04 10:59:33'),
('9c16eaa1ac3d691abae08a24ab506ebc0cc387330960ef8553424c0b8ed27fe61d12e250cbab2569', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 14:10:28', '2021-12-01 14:10:28', '2022-12-01 08:10:28'),
('9c6c21d561ef8ef57caaa919991e788cee8eb9f27ee32896920384965fc217f3e6dcaea9c4309366', 37, 1, 'Personal Access Token', '[]', 0, '2022-02-05 07:53:21', '2022-02-05 07:53:21', '2023-02-05 01:53:21'),
('9c7bc9283aad5fc1427f820beeefb35fcdb1d41a54ab36a38a7e592988d3807ee3a4a2f725191684', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-01 15:38:54', '2021-12-01 15:38:54', '2022-12-01 09:38:54'),
('9cac6c0fb39ec42d4ca99eae77e72d83cd49b27f2f0515d75df6aa954160d104c3c939fab1bcf73b', 40, 1, 'Personal Access Token', '[]', 0, '2022-02-07 11:02:42', '2022-02-07 11:02:42', '2023-02-07 05:02:42'),
('9caec6a4fe8afbffd986733c35f934d50f72b0edbe834c427f4536d9df936ca2772114bed9d8e355', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-29 13:47:01', '2021-12-29 13:47:01', '2022-12-29 07:47:01'),
('9d257be2828e6310bd3f08e82371564e98dc0f96f9a0d9df475ea9bf4918e364a8b660048c2095b7', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-30 19:57:50', '2021-12-30 19:57:50', '2022-12-30 13:57:50'),
('9db2059f31bdecada310da2d1e476b1d2386e2cf4dac11385a6640ad65db524d739e1077c11d97d7', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-14 07:02:46', '2021-09-14 07:02:46', '2022-09-14 00:02:46'),
('9db825ceb232c06608ac1c80558782e187063fd6a9e4753bd4ccd02d2d772ee165b4e8b6ed1a09a9', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-24 12:13:49', '2021-12-24 12:13:49', '2022-12-24 06:13:49'),
('9db97e72296e190a969446d302953e463763680434f505a4195a40b81f9e963829a93ad449a4defc', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-22 16:14:56', '2021-12-22 16:14:56', '2022-12-22 10:14:56'),
('9ed7d1454d235e232373957c3c40b8cbd1349e2a2819a016b37834f06ab5f8193f559d8ea424a337', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:26:20', '2021-12-13 19:26:20', '2022-12-13 13:26:20'),
('9ee13bbf570c43ad5e7f704837ecaa2485f566b50c7dd5d452fb0f30a5148d160a15e30e916b912c', 48, 1, 'Personal Access Token', '[]', 0, '2022-02-04 17:51:20', '2022-02-04 17:51:20', '2023-02-04 11:51:20'),
('9f036fe6c2010980d36413bc7432ee5e4ac22abf75557c38a3d4fd8a582b2a033f61977a730566ac', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:52:30', '2021-11-15 19:52:30', '2022-11-15 13:52:30'),
('9f12c917e19d660c27acefaa8aa603df78f57cb68cad8f029a53877804561304df7d8ba275556e92', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:05:51', '2021-08-27 03:05:51', '2022-08-26 20:05:51'),
('9f35a7278eb8e9f86a60e6ca74f9a0c2e75568af2556152c12136e31c17bfacce0a4868aca42fccf', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-10 16:44:23', '2022-01-10 16:44:23', '2023-01-10 10:44:23'),
('a01d79293b638c30dab3c3b6bbc8d988ff16997ca44745e07d196eaae7222af40cd20c8d74a4fe2a', 25, 1, 'Personal Access Token', '[]', 0, '2021-12-01 15:57:04', '2021-12-01 15:57:04', '2022-12-01 09:57:04'),
('a0208ed9fbd5aaa8ed20a1f7b1e9e10c2fe46cb2d8d217d54871c0cd2a84a933018bfdd58fe13f52', 37, 1, 'Personal Access Token', '[]', 0, '2022-03-21 08:42:18', '2022-03-21 08:42:18', '2023-03-21 03:42:18'),
('a03614ef573fca0534ccbef3b5e0bb712b851ce60e7f4e67bd68672f265dd253690327bf4312c870', 37, 1, 'Personal Access Token', '[]', 0, '2021-12-13 10:47:30', '2021-12-13 10:47:30', '2022-12-13 04:47:30'),
('a0d0e3e583dfd801c5b22ec6f0b7c52443d747a5e715bf1c7161d202ccd152b859c6a7a96f694e62', 43, 1, 'Personal Access Token', '[]', 0, '2021-12-28 13:59:58', '2021-12-28 13:59:58', '2022-12-28 07:59:58'),
('a0e66ed0bf6f2481cb3d4951798707c89248eabe0eb6c7e58c166acfc16ad894034e1bdebfea12c5', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:06:55', '2021-08-27 01:06:55', '2022-08-26 18:06:55'),
('a13b9194618d2b7a984c7180dbda8f9c0ca1bfa06aaa556a4691ef4fe534c7d5821876c38152df7c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 18:56:46', '2021-11-12 18:56:46', '2022-11-12 12:56:46'),
('a215c255c7331229e328410e3f7b4b42b2243a7b4cb1fbf4b6853a37c50c1323acb75313baa190c1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 13:46:38', '2021-11-15 13:46:38', '2022-11-15 07:46:38'),
('a2eb963f09685f02681a485407e4cd998791f92c5b5fc6b6270bd166ef9792474eaf9a797ceb232f', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-24 12:11:04', '2021-12-24 12:11:04', '2022-12-24 06:11:04'),
('a2f0b55a6f4da2b6d75b3a255f4979f09d76df00d20f26a5a5093c68ebd29aba497f7a747438dd39', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 19:26:38', '2021-12-02 19:26:38', '2022-12-02 13:26:38'),
('a3066848b634cc4d102546378d4738ab04fe64a8b1524df7f61329b717a011d09ea7cbaa6bbce896', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-07 16:07:55', '2021-12-07 16:07:55', '2022-12-07 10:07:55'),
('a322506b4ad1b1bec2b27dad930d1a4484817d98935ff4252ca135b3cee598f0716eae39afaff5fa', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-28 14:15:05', '2021-12-28 14:15:05', '2022-12-28 08:15:05'),
('a3f1ab3f993c2ae74a97a73658689fbf298c3631e20eedd9ae7cbd6a5dfde466fe53333ddfd2716e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:09:24', '2021-11-17 17:09:24', '2022-11-17 11:09:24'),
('a563289d2da1a77ddb7bcc847cb912c689f52516e3ca9aca2115f462ca3c4d86875baf8a3dcac4f7', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-02 12:13:43', '2022-02-02 12:13:43', '2023-02-02 06:13:43'),
('a58108ffe07241585a86c38719a0afe82336f10a1d9913ee619e52889998ff57e3f92d62856ddad7', 25, 1, 'Personal Access Token', '[]', 0, '2021-11-30 15:25:29', '2021-11-30 15:25:29', '2022-11-30 09:25:29'),
('a5ae1fbb4cb9465422d46aa4bde3c963fb9bf4593691ce88fbe3acca5fc084b2734e5ba2095d8e86', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 18:29:53', '2021-11-17 18:29:53', '2022-11-17 12:29:53'),
('a5aed46f15c9432b4269ace4bbb0eb8cdeb3eabcf33dff11e4d68148f32c5e3bc7b8eb4878a0f910', 40, 1, 'Personal Access Token', '[]', 0, '2022-02-09 08:28:33', '2022-02-09 08:28:33', '2023-02-09 02:28:33'),
('a5dd760550748694aa69dd37d5f8acde3d9c1301346e900e97b9fae4a79da87d70b9e6d29e779006', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-29 16:45:15', '2021-12-29 16:45:15', '2022-12-29 10:45:15'),
('a5f2d583501aac4b8cf9ea0a83f55f5a3707df5081e753f8517f1986a9e85b1da9e8570b7971d4d7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 12:15:17', '2021-11-17 12:15:17', '2022-11-17 06:15:17'),
('a628221aa5c0d0ae77cd822a19d773e45b416e27f35847b0a44ba674bb83354ad21dfe6d87fff7f0', 60, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:58:33', '2022-03-09 19:58:33', '2023-03-09 13:58:33'),
('a6cd83c8ec5fbfbf82584227a04c0057b13958bd7e5bc6772eaef91f4d75e359f2b3fe4395c01fe9', 37, 1, 'Personal Access Token', '[]', 0, '2022-02-08 04:48:40', '2022-02-08 04:48:40', '2023-02-07 22:48:40'),
('a75e69327a2dc79c69e6d70caac61fb736f5ccd687a992acd6325992b91115b1369162d80ef04d86', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 14:13:51', '2021-11-22 14:13:51', '2022-11-22 08:13:51'),
('a853b14242202f6be04325e7025674b37334813d7cd94b0334fdb958b67987a7fe7fa617bb59975f', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-29 10:35:58', '2022-03-29 10:35:58', '2023-03-29 05:35:58'),
('a8d6d6dc9e237de7e0a43740b58beb91eb40c821d22199f0ef9d6d1e75bd5c4eab8ef87661697262', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-29 09:19:51', '2021-12-29 09:19:51', '2022-12-29 03:19:51'),
('a91402d3b67c213a720c91d4a0406c7e0f378aedc177df28ef3dbff6c8834cfeeae8880778e62fa3', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 14:17:36', '2021-11-22 14:17:36', '2022-11-22 08:17:36'),
('a946bbcaf780f0daf0b43267539c282764406ca9df81cb63bd0c76ca3750b4bd77507d05e6636885', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 14:36:26', '2021-11-22 14:36:26', '2022-11-22 08:36:26'),
('a94889ea1c527752b009e272ed088b6f4964bfd6964eb53713b452bd84e084ebf5d42e373cc6704b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 11:50:46', '2021-11-16 11:50:46', '2022-11-16 05:50:46'),
('a97146b93b6e999ab9e408e26757ea506c89684fde702bd8885f24bdb5f4424e81ec672ca30031ac', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 14:22:43', '2021-11-16 14:22:43', '2022-11-16 08:22:43'),
('aa59be757baf0e69588b3447ecdeb12ce925582887f6785c4c7b1fa62c5003e57cc04cc22f1eaa78', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 16:33:00', '2021-11-29 16:33:00', '2022-11-29 10:33:00'),
('aa883bb22447f761017d1cf337f50c3d13a88c53fd2a815a98451645736a3ea4c0ef26e7978e88a9', 78, 1, 'Personal Access Token', '[]', 0, '2022-04-25 07:26:17', '2022-04-25 07:26:17', '2023-04-25 02:26:17'),
('abfc59f46c1fdb0007878be4d03167c4368f4d5d54339816295acc1853573b601cb96fe16167369a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:58:38', '2021-11-15 18:58:38', '2022-11-15 12:58:38'),
('ac287059edfd3915d1021f15d6ad83948f3f4ad093e33402eb4feba3e1a39652aa8a3c9873f8527f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 12:03:40', '2021-11-29 12:03:40', '2022-11-29 06:03:40'),
('aceb5fad32a4c5dcab34feedc2bfababfd65c36d106379197356291de58c627141ada18bf132a751', 40, 1, 'Personal Access Token', '[]', 0, '2022-01-18 16:35:29', '2022-01-18 16:35:29', '2023-01-18 10:35:29'),
('ad72780aa8ab7f3d9255f41cb1f001324a5a6562bb0eac6a529ee2574b3bf6a83407b295a76a5b0d', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-21 18:07:42', '2021-12-21 18:07:42', '2022-12-21 12:07:42'),
('aef3ae3428b7b063fb7d2e9684f37c809337b857978a637bb9220b4b1e5682fac9d9526e46545cde', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 13:06:35', '2021-12-13 13:06:35', '2022-12-13 07:06:35'),
('aefe70eb91cb1682625a49d99371164632c11d9f2d248c4794a57163228e9ebe2a7dcf735e25cb79', 40, 1, 'Personal Access Token', '[]', 0, '2022-02-09 05:08:52', '2022-02-09 05:08:52', '2023-02-08 23:08:52'),
('af84cfbc455205852ba27e7e5093b59f23ec82f91645b181652070783e0ec8319aab38cc0d2ab758', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-06 00:23:52', '2021-10-06 00:23:52', '2022-10-05 17:23:52'),
('b002a133b154b3fdc21281923ee6aae7ec5a2de3ef943422b9ed5be8a87bdc353dfe8d30e9b713c6', 60, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:58:03', '2022-03-09 19:58:03', '2023-03-09 13:58:03'),
('b029ccdd691ecaca406726d3461b433d2cc61e469498c88a035e9d929e37f10e80142ea7c70dd36d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 19:08:06', '2021-11-12 19:08:06', '2022-11-12 13:08:06'),
('b09492a95af1037ee58ec1cd082500e6af76ffcb24f2f2777190e918692efc63313a63025ce4dd40', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 12:19:08', '2021-11-22 12:19:08', '2022-11-22 06:19:08'),
('b0bd12cf34c3a81fc7bf6e992bb192e5bfb7d773a1a47b594bfc8af317526dedf038adbd5ceef4f8', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-01 14:13:38', '2021-12-01 14:13:38', '2022-12-01 08:13:38'),
('b0d21a22c89a9d46601761276e4a64bc98e338f3d2c057d208ee3f59d231d448efcca228f073bc01', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-02 19:41:58', '2022-03-02 19:41:58', '2023-03-02 13:41:58'),
('b1e3949029702b595b4d18ff345495d98fadef98b429dd9fe9501d6ec1472162ebe28e3975c0d77c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 17:42:03', '2021-11-12 17:42:03', '2022-11-12 11:42:03'),
('b3628b81decc112c0b0ad47066be9cfe612f6b396b0538cb270e944a73fcd571958b86f0c4658b59', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:39:17', '2021-11-15 19:39:17', '2022-11-15 13:39:17'),
('b3644e6586fa7362e1345dc4d35c6a1258fefd080188541ec7c79803a848f3c3813a288872018b11', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-25 12:05:48', '2022-03-25 12:05:48', '2023-03-25 07:05:48'),
('b38e1f7ac917cb53d8fe60d79f1c18d9d5c27559f5a2d964220d90cd53d451fefc871f556e11e8e9', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-03 21:35:18', '2022-03-03 21:35:18', '2023-03-03 15:35:18'),
('b3da733a96f0b2a7340089424e6ac7a0d99eff22b21aa8dc2f6c021d25c2255a88ffa9769676f789', 40, 1, 'Personal Access Token', '[]', 0, '2022-01-08 07:19:02', '2022-01-08 07:19:02', '2023-01-08 01:19:02'),
('b3e3839ca0aa77e89f79d61e6830ba1b566b224f3cb86c299d910df217ce3f036fe89b876d6ed36b', 25, 1, 'Personal Access Token', '[]', 0, '2021-11-30 15:37:06', '2021-11-30 15:37:06', '2022-11-30 09:37:06'),
('b4163dae1002b38b97021ed24c0c55b0fbcffe57d44ab7b79721458d9ec54813dfbf841576acce26', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-18 16:52:33', '2022-01-18 16:52:33', '2023-01-18 10:52:33'),
('b42deb46663730f2dd664d020de98458a4f1d2d1502cb525ce32fca78c563f27aec1e7eeceb3b05a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:31:25', '2021-11-15 16:31:25', '2022-11-15 10:31:25'),
('b4d9328276370624d854198360da0bc800261273dc032c0c88f8efeeca8d18183acdf35a2b05a7af', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 13:41:27', '2022-02-08 13:41:27', '2023-02-08 07:41:27'),
('b54b4b7999a00ec437d99a0b5167f8e9a9f094e4881208c7fdf3e465597fe017bf6f6edbc9f834e2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:32:20', '2021-11-15 19:32:20', '2022-11-15 13:32:20'),
('b5818f721a5ba41479deefd358e29d230ce87b3d3b782faef330dd587dded01fe788f76dd9752810', 40, 1, 'Personal Access Token', '[]', 0, '2022-03-26 23:20:42', '2022-03-26 23:20:42', '2023-03-26 18:20:42'),
('b5a5665305245afb0721af5231a48c5a133901183cf4a1eb2891186f3aff70e1479657ebeeebfed8', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-01 15:48:41', '2022-03-01 15:48:41', '2023-03-01 09:48:41'),
('b5fdcbd46e80afbf654d2dfc5da51db305a9b617ce4bbc0e3c063fba944646da78cca79e41601303', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:41:36', '2021-11-15 19:41:36', '2022-11-15 13:41:36'),
('b629a9381405a089b16b9de57c37a33b08a79bb842e32f7bebbff336cc9f1ca2524fcbea02281679', 47, 1, 'Personal Access Token', '[]', 0, '2022-02-04 17:31:21', '2022-02-04 17:31:21', '2023-02-04 11:31:21'),
('b6c4f6e962026af3c2cd250e8a7f2a32aae6cb9e32cb88dcbae1f70545195bc114558b279f6426a6', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:51:01', '2021-12-13 19:51:01', '2022-12-13 13:51:01'),
('b7a2f4896b8676bd4b228369f29da9825c5c03a8e89bef15acdf8ee3bd2301017d1aad4f540b580f', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 15:28:52', '2022-02-01 15:28:52', '2023-02-01 09:28:52'),
('b803bae0f8f91abd1ee5d69d3ce9fa1059f003aed7aae8ed588e4121579e512a57822191ff5c267c', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-15 17:43:10', '2021-12-15 17:43:10', '2022-12-15 11:43:10'),
('b837fbb46aa1c0c01d57d0a6d71e6c43172871ed2ad109dfc0ac1c9a742926e931e583cea9a9530d', 27, 1, 'Personal Access Token', '[]', 0, '2021-12-02 13:14:37', '2021-12-02 13:14:37', '2022-12-02 07:14:37'),
('b883c8b8ee27311dbbff6fa2f6ed5c04a5530c0f46e4a29f9fa6b9d423807889557b3a3e718bfa28', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:23:03', '2021-12-13 19:23:03', '2022-12-13 13:23:03'),
('b8ba21e540ca5439be00921ffd62fb2c710694021382c2e33f2cdb951ae01539e0f9f8bd81ec0fdc', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 15:56:03', '2021-12-01 15:56:03', '2022-12-01 09:56:03'),
('b950720309f95eb9d273fa462c29d63966da4de6a15789f2d13ded5561954574fbf8135e56ea5bc0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:30:08', '2021-11-15 19:30:08', '2022-11-15 13:30:08'),
('b97aa25cb55ece9cab857f47102e11a857b59f6431ddc9afa547b7d93570e52e15a2a8977e447acf', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-28 15:56:45', '2021-12-28 15:56:45', '2022-12-28 09:56:45'),
('b9a392827cf37c8a9c031a90a32d09d86f08ba234505265e513561410d87baefe83ad63fd0680b20', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:09', '2021-11-17 16:47:09', '2022-11-17 10:47:09'),
('b9addd8b955eb948bbf59ad64aa41d6797de7037921e69b1d6af2925d2a44402a7897ce184488252', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:43:48', '2021-11-17 16:43:48', '2022-11-17 10:43:48'),
('b9e53569c83841fa805cdf6e8dedf5d95238b1b6d48b5795820ed473a4383800549c2c1fc9bfb9be', 40, 1, 'Personal Access Token', '[]', 0, '2022-02-18 21:52:54', '2022-02-18 21:52:54', '2023-02-18 15:52:54'),
('ba1006b99d7e020f693dde54867d90d494d11a373a108cdaee6369163e6bbe2462cc81368c35149d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 13:57:38', '2021-11-17 13:57:38', '2022-11-17 07:57:38'),
('ba5ab888f0869f80730a55a3b988500bf5f5557226126ecd43afe0eeb2b82fd9536b62b6bdfc0a08', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 00:49:46', '2021-08-27 00:49:46', '2022-08-26 17:49:46'),
('ba8b2f12776fd1cb7a4048e7ba51450efb4e995943a80181f900fd3cc9f410b6adad35c90c9a005b', 37, 1, 'Personal Access Token', '[]', 0, '2022-03-12 02:30:16', '2022-03-12 02:30:16', '2023-03-11 20:30:16');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('bb8f028aa161b00bdc2e98194608cbc1d85bdb19e29251a7d372e16a0f98750bb58b8b9d5e2b26fe', 72, 1, 'Personal Access Token', '[]', 0, '2022-03-10 12:39:51', '2022-03-10 12:39:51', '2023-03-10 06:39:51'),
('bcbd826669ba2dab96fed027c0bded18024bdf0dc425cebed4b99b8cea178c105f6487648967dde1', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 05:36:51', '2021-08-28 05:36:51', '2022-08-27 22:36:51'),
('bce89b15e95aaf172fd0e232b1469a583b865bb4652878f9867e8d64bd1680cdea433d20fc895841', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:27:56', '2021-11-12 12:27:56', '2022-11-12 06:27:56'),
('bd37939d4ae116a3cc4b3d5d42828573965ee0f714896436413aa70bfcca2c6f91f33ed10c8c7629', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:22:11', '2021-12-13 19:22:11', '2022-12-13 13:22:11'),
('bd752353fb664c2eba9bb81c13b213b6d134b92d356385c9632ff7204dee0a28ef9f9fcca9332f26', 41, 1, 'Personal Access Token', '[]', 0, '2021-12-24 14:47:58', '2021-12-24 14:47:58', '2022-12-24 08:47:58'),
('bd915115d2d87c3b3c36d9c04f5783f13cb4d688159ca2cf5547b7a8583f7967f9b3a9b824832b90', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-22 16:13:46', '2021-12-22 16:13:46', '2022-12-22 10:13:46'),
('bd9e792f2453bc003cb1352b0dde835eb039fcece975d4a797d0ad62562b76c2b6ea2cb76120b621', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:35:33', '2021-11-16 13:35:33', '2022-11-16 07:35:33'),
('be7ea43cc56c0debeafbcf62f44172aaecc81444963db7c32d26dce426d7d44a2407bd83ad9a82ff', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 11:54:52', '2021-11-22 11:54:52', '2022-11-22 05:54:52'),
('be8dd8a419c0ca0bbabcd33b1f2970a2c309306924acbb847d7a48e56d5e6b699d066c032bddf3c1', 59, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:16:10', '2022-03-09 19:16:10', '2023-03-09 13:16:10'),
('bf8dcd1ddfdaa2c65e142bb5447ca5a3fba31d4f4a656bc8f04ad45c32cfda81a7b459135fd37f5c', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:08:28', '2021-08-27 01:08:28', '2022-08-26 18:08:28'),
('bfbdc6a30cacf48acb6ac756450f67c10cbf3b6327e905a6e693d3f587ab2a2a69da218116badbd2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 14:22:43', '2021-11-22 14:22:43', '2022-11-22 08:22:43'),
('c09abe37b08a0b452584a67913b909cc59745b8c5175f6384a7182cb89f533035138f7be92d6103b', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-22 16:11:33', '2021-12-22 16:11:33', '2022-12-22 10:11:33'),
('c0b921b06e73f2744f4f70fb38e3a7fd442fbfcaac9ff36e551c7c97104988f0438a62f36b70d7f8', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 19:00:33', '2022-02-08 19:00:33', '2023-02-08 13:00:33'),
('c20bdf1911f715de9b15a9118741a7254630954e348716676b72bfd134910e09bfcc48a277ab8363', 40, 1, 'Personal Access Token', '[]', 0, '2021-12-18 08:08:03', '2021-12-18 08:08:03', '2022-12-18 02:08:03'),
('c2233c55ec9ff9e9c718d3528d65622daf9ee49c54e2a8d3affbe534043dcdff7e885e225e1c4570', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-31 12:50:51', '2021-12-31 12:50:51', '2022-12-31 06:50:51'),
('c243cbf224d99e3ea47c6b090bb953eb1f196475e169ccc8d55837b1d6b1683320e639eb8fd8bc71', 37, 1, 'Personal Access Token', '[]', 0, '2022-04-14 10:03:08', '2022-04-14 10:03:08', '2023-04-14 05:03:08'),
('c34a86fa361fe94e872e383f99988009ae733e9153bfb2412f3aca8e1b1d70d845a1af5de43bd826', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 12:02:30', '2021-11-17 12:02:30', '2022-11-17 06:02:30'),
('c3659848819dfb268977324cb2ebc69b630b2965c35df8bd52f81247fae952c8a81ffb144ea104c4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 18:44:25', '2021-11-16 18:44:25', '2022-11-16 12:44:25'),
('c36c48953dc0e6698ad209d0b96b21b392cde7998af5559842287f52d6944286e40fcf466aed0fb1', 25, 1, 'Personal Access Token', '[]', 0, '2021-12-01 14:03:28', '2021-12-01 14:03:28', '2022-12-01 08:03:28'),
('c40446bc98c9b8d7f97bf3b61d635a037f40c81d4c49c217c8cfe05677a2e67ddaaaf136b5c3b81e', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 19:01:19', '2021-12-01 19:01:19', '2022-12-01 13:01:19'),
('c425fc46b1d316fc9b3c8de47d73a5bde898428ffc119d4a2c4884cce860057baf50cb2ca65d970e', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-30 00:29:25', '2021-09-30 00:29:25', '2022-09-29 17:29:25'),
('c4c8b68bb021ac17892cecc1e4aa3cfe16a858a7c442522532d733edf173124709877efcc5b62639', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 18:42:46', '2021-11-16 18:42:46', '2022-11-16 12:42:46'),
('c4e426c63c676a46e234613f0620f41c78e632e303a13448527e358e1548f16935f05af7d4500503', 40, 1, 'Personal Access Token', '[]', 0, '2022-03-24 06:36:40', '2022-03-24 06:36:40', '2023-03-24 01:36:40'),
('c559ffad35855ffc0a30809a44eb7312cec48c6bd8a59aca72269fec59f31374893c2a46963643b3', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 00:30:12', '2021-09-01 00:30:12', '2022-08-31 17:30:12'),
('c55ebfacffb299d3d114fee51554c9f9bafa602fdfe8be80883ce62b7148c20df2bbffb72eb0be4c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:53:06', '2021-11-15 16:53:06', '2022-11-15 10:53:06'),
('c5bed7921804cc7e1b5bf8572fb3a458393505940e33b42f5da8b66c2c3a3f666c63068e4f336652', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 12:30:21', '2021-11-25 12:30:21', '2022-11-25 06:30:21'),
('c5eacfbbf5f6c723868b3f2287071f629fc9b6f2ce2bc293fe82f9e92c9e492170489323d8bf23cc', 27, 1, 'Personal Access Token', '[]', 0, '2021-12-02 12:50:48', '2021-12-02 12:50:48', '2022-12-02 06:50:48'),
('c64c075e7ace00aad7f9856f33f8ae33f3ff42fa03bc001113d7c3c1d8c66b5ea7a9adfdc20276a8', 60, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:39:48', '2022-03-09 19:39:48', '2023-03-09 13:39:48'),
('c65cadaeab9323091e5175955161e68504d9d6804c1131f6e90c77b847586982ed40f49809ff869f', 61, 1, 'Personal Access Token', '[]', 0, '2022-03-09 20:17:33', '2022-03-09 20:17:33', '2023-03-09 14:17:33'),
('c6905f3e9e7aed4482b9e8fac3ae6e88d96237589154eb1956560794362361158c19f46daf050a0a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:42:09', '2021-11-12 12:42:09', '2022-11-12 06:42:09'),
('c6f1d67e997c5a229e40cb17fd57d6e7b00d93a4375fb99effdf2f468b59c466928727c886852b73', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:31:05', '2021-11-16 13:31:05', '2022-11-16 07:31:05'),
('c71b5b22a77f22b2b9e12107604a573a20aad67ad351307cd9b1837e35a4b85eeef3d371b6e33cba', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:14:31', '2021-11-16 13:14:31', '2022-11-16 07:14:31'),
('c74f85b69307b0148d9156f5fc5ea5f385dd7f4c87e8b0d08aef6d479526939c2b4aa49aede5a591', 37, 1, 'Personal Access Token', '[]', 0, '2022-01-05 14:25:13', '2022-01-05 14:25:13', '2023-01-05 08:25:13'),
('c7edfdb0476c83ff3f6e08ee0b777e362fd5c69dbd418f140ed39300814f050503a606c429a28c27', 63, 1, 'Personal Access Token', '[]', 0, '2022-03-10 11:42:50', '2022-03-10 11:42:50', '2023-03-10 05:42:50'),
('c842b289176f2da3a61ba23d9ec3efb7124997bca66bcf2efbe8366ba7618d086ac8f085dea34073', 37, 1, 'Personal Access Token', '[]', 0, '2022-02-03 13:04:47', '2022-02-03 13:04:47', '2023-02-03 07:04:47'),
('c84ebe0ba265a96bc854662f20979fc26998cbb900e0e5d31430c0f398217ef01c189189c1ceae0c', 42, 1, 'Personal Access Token', '[]', 0, '2021-12-28 17:12:51', '2021-12-28 17:12:51', '2022-12-28 11:12:51'),
('c8b74b770664732ff89b9d7471650e03b1b23c6f6aafbd7af65ca7bd3b0c6e40c55b8f369b2cdcb1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:49:42', '2021-11-17 16:49:42', '2022-11-17 10:49:42'),
('c8f8d2b66bf763d5e47bfc7d4e2214b8e516f04aacd7dca4a7f2822fa18a7dee02cfbe94a8b2c3de', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-09 00:53:33', '2021-09-09 00:53:33', '2022-09-08 17:53:33'),
('ca55b1520d3eb4231a1790d5d89a3945c804bd1e2123b61d739074160c61b64bb40f362f5e4faaa3', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-10 13:37:14', '2022-03-10 13:37:14', '2023-03-10 07:37:14'),
('ca9bbe4b82198a7d5c63f53bc2efbea62e7caedc1ebb7d1ff4644aa0d2e963bdf328efa3865b45c7', 44, 1, 'Personal Access Token', '[]', 0, '2021-12-29 16:32:37', '2021-12-29 16:32:37', '2022-12-29 10:32:37'),
('cad680e14854986546de7326ce18396b9aead46b7616bde6290af1a44671866bf902e647708cbf89', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 16:19:35', '2022-02-08 16:19:35', '2023-02-08 10:19:35'),
('cb567be9576880f950e06810db03e3e68fdb7e6b5cdffd67d5de5d794ab61511c159d2aed008da5d', 60, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:54:02', '2022-03-09 19:54:02', '2023-03-09 13:54:02'),
('cb8255b6f4e625ca29a65588bbb6b674662d3d3509de39f83822473e5e41ee88667e8a0e08873084', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 11:05:04', '2021-11-22 11:05:04', '2022-11-22 05:05:04'),
('cba910825d6ae56eed7c7b63e772d6826bfdef6efea3f7c3b617ca5580226412ede18fdc40e40ad4', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 00:50:08', '2021-08-27 00:50:08', '2022-08-26 17:50:08'),
('cba9c6169dbf2294cf7a5750b4bbe983b4e9241a644ae8f6d55364aef45eb11cf1ada8c32b453c49', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:33:22', '2021-11-15 19:33:22', '2022-11-15 13:33:22'),
('cbb1252fefa7d16e653736111686dcb44122cce7a8c2581c49e498527637ab2b709865604d4f343b', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-01 16:24:38', '2021-12-01 16:24:38', '2022-12-01 10:24:38'),
('cc0f90c84c22e114f6c49504d0f116cea9934ee63147d08d902b369f6d6f73bb6b888a0579d65f06', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 14:02:29', '2021-12-01 14:02:29', '2022-12-01 08:02:29'),
('cc8445faf9b4c725e43df0004f5fb66b9ee47e55ececa01e696f9ccf872c4b6864c60420b6b6d59b', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 17:36:58', '2022-02-04 17:36:58', '2023-02-04 11:36:58'),
('cc89361cbd8d2f138f5e66a9490dd1ad7123ee8e8f94c6ecbd8ba57db3917e927421bfdd41bf5536', 66, 1, 'Personal Access Token', '[]', 0, '2022-03-10 12:02:07', '2022-03-10 12:02:07', '2023-03-10 06:02:07'),
('cd1b11253b32283891750c54b109313837845ca8f873c4af00e1f741f2da9229cb05bf2ca3c58be5', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-02 12:15:56', '2022-02-02 12:15:56', '2023-02-02 06:15:56'),
('cd1ebf834378c01a8fbd0bdc061fb0d071ede5c07fab5b4e382cd1a63c6203ec5f5ccee77e8d5d8d', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 12:26:23', '2021-12-01 12:26:23', '2022-12-01 06:26:23'),
('cd317e7cf772a947579250ed21991765cb7f3dfc319d711add9b10632a9fcef300a11e14d9bab3b6', 37, 1, 'Personal Access Token', '[]', 0, '2022-04-14 10:04:51', '2022-04-14 10:04:51', '2023-04-14 05:04:51'),
('cd8c90e7ac20484eb4c01f30e40cf53991d554c9d49e7aecff52f123fa04fc0c0323256cd7694bc1', 37, 1, 'Personal Access Token', '[]', 0, '2022-01-05 14:27:02', '2022-01-05 14:27:02', '2023-01-05 08:27:02'),
('cdec545e135acb4e26079fd48c673d34dcef964ecebf0382cdb34d345d6d91dc027a126ac8aea58e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 16:22:13', '2021-11-16 16:22:13', '2022-11-16 10:22:13'),
('ce5c6175e7e9cde421ba0d4647680c7f660865c5c09d4d1faaf621f46ef0dadf5b7e9c0d26841dd2', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:15:44', '2021-08-27 03:15:44', '2022-08-26 20:15:44'),
('cec7422614dfb35161f2b1882e08ef1b4ff5e638b05748ea7eb8646462556b1a396dd7ac8749d02a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:20:10', '2021-11-15 16:20:10', '2022-11-15 10:20:10'),
('ced849ae60bd30bb423b507428405de511cb722addadc0fd65af3ecc3df0d437c5aaaa37adc721e2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 13:49:48', '2021-11-15 13:49:48', '2022-11-15 07:49:48'),
('ceff700ce99c89aeb7b386e105d66cebd5ced661a93863ba294c95fedbd8af8980a79b351dd2d2c6', 39, 1, 'Personal Access Token', '[]', 0, '2022-02-04 16:05:16', '2022-02-04 16:05:16', '2023-02-04 10:05:16'),
('d01850a11f79dfbf0275551ec3533c80921aa69de69e9f6ae5e3817c4aa8186b7ef0dd5f50f00d30', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 11:20:32', '2021-11-29 11:20:32', '2022-11-29 05:20:32'),
('d02d6afe0ad12505f833b8cbd965a8ac303884a8f379073206f1a0ccdad2bda32afa93b036d809f3', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-15 17:06:25', '2021-12-15 17:06:25', '2022-12-15 11:06:25'),
('d099f05f0741bb473e057e4e4475cf787256a7eb605f776fb6b1bef3fa07b7b412878d64cadef406', 14, 1, 'Personal Access Token', '[]', 0, '2022-02-04 16:06:46', '2022-02-04 16:06:46', '2023-02-04 10:06:46'),
('d0b7588cb2d7bcce81fce3c488faada75f713499269f43dddc5c87fb6bf7dd1141060dc39ecb8291', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 12:08:03', '2021-11-17 12:08:03', '2022-11-17 06:08:03'),
('d0fc11c0555994f867da14895bfa69184e30ebc436ade344c12b7c4630a85e8467a4faf3066e3357', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:21:36', '2021-11-17 14:21:36', '2022-11-17 08:21:36'),
('d13d7eda071d25483e057a0c55be5136f48a6bf55fb875a8d2eaafb693ddc8a36d4c2dea67a802a4', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-01 15:58:09', '2022-03-01 15:58:09', '2023-03-01 09:58:09'),
('d1411b06f2666b43644e4d7a85abc64e12e54f6ac55fbb2dbcb0e513bdd67250569cf00f849815df', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-17 11:16:57', '2021-12-17 11:16:57', '2022-12-17 05:16:57'),
('d1a137ad4dadc5b939a496850f0efdd3cc502a96d4a2d538b5194918d34b58970dbd41110727e576', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-04 14:37:14', '2022-02-04 14:37:14', '2023-02-04 08:37:14'),
('d1aa3e8519dde50af97d454e69a0a83aa00d41bd08ddf6fdc6823b60f0702c64f7e8ef80bfb33dff', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 18:45:27', '2021-11-17 18:45:27', '2022-11-17 12:45:27'),
('d26220421e31a1562338780c96e1db6eacfc0a8c0dc5094439c70f6884642f372ad168a94ae5f532', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:54:02', '2021-11-17 14:54:02', '2022-11-17 08:54:02'),
('d2638476ded2f04f4956c8f3857edf388f8fb767c9596ec49adea64ceefd1fe5e60eff007aca069c', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-10 13:36:22', '2022-03-10 13:36:22', '2023-03-10 07:36:22'),
('d2d6d5c4c6a13cae813bfba50ef7dc99471f26fa58424f4f7dd6e29262aaa1bd7192b9331c5fdc4f', 27, 1, 'Personal Access Token', '[]', 0, '2021-12-02 13:34:17', '2021-12-02 13:34:17', '2022-12-02 07:34:17'),
('d3314857eda31cd1b8400484473798f955331817f215c0bf5e10e5fd262b4ba93eb8f3ae8b9f6c88', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-29 13:58:48', '2021-12-29 13:58:48', '2022-12-29 07:58:48'),
('d3586b9001d1237b32b96701d85940d62462474e55787e441e4d03523984185b7d00b9bef44b8623', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-28 00:37:19', '2021-10-28 00:37:19', '2022-10-27 17:37:19'),
('d47f1f3501364ee1f34df147c5aea7662f4b4b223e377da479f50062fd7902c898eefd00ff48132f', 48, 1, 'Personal Access Token', '[]', 0, '2022-02-04 17:51:26', '2022-02-04 17:51:26', '2023-02-04 11:51:26'),
('d4b98956de5c8fe0f093e25219d4dbfbbcb78b83cc1e37b376a0491a047c9cb65a0f65864fd8650f', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-23 10:47:48', '2021-12-23 10:47:48', '2022-12-23 04:47:48'),
('d4bb23a3c28d2efbaccf191619454afd6d60e2f91607022abc3b0e0b946c980142f7ca8f7478f278', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-23 17:43:46', '2021-12-23 17:43:46', '2022-12-23 11:43:46'),
('d502349694680aee21da012d034aa6891a22a8dd0aa6d78962abfcf313103b50781820b960c09b0a', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 19:15:29', '2022-02-01 19:15:29', '2023-02-01 13:15:29'),
('d553724c0e7df7f9b0bbd5a9b665b377bf833b6fdcfe13143af367dd36cae980d93bd7fc45a8edf8', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 12:01:18', '2022-02-08 12:01:18', '2023-02-08 06:01:18'),
('d566a4b07732e225aa34ba0eaa15d5330261f568836dda2cea6204d1fe8fcbb968a7240b8f9cc6fc', 63, 1, 'Personal Access Token', '[]', 0, '2022-03-10 11:52:17', '2022-03-10 11:52:17', '2023-03-10 05:52:17'),
('d5b333e881ca166e8a7435032c2ded78ff1c81f97dc9074a71ec95e4f4e906c7549a43118d9b071e', 31, 1, 'Personal Access Token', '[]', 0, '2021-12-02 13:35:49', '2021-12-02 13:35:49', '2022-12-02 07:35:49'),
('d5bb5476c22d57ec4610442105ed41d0068dc7681298649a1c9964f8d02ec26f2f6709fe02842701', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 12:17:29', '2021-11-29 12:17:29', '2022-11-29 06:17:29'),
('d62f2f319f384943a5b17ed0b36a27a3902ee47a39dce0e6f73b8e618aad2fa50a641add103a03c0', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-29 18:09:59', '2021-12-29 18:09:59', '2022-12-29 12:09:59'),
('d63855f96edac5628c3d2880ef62b91806421e7e0fd9bdcfd978b33c531172244c0288bc5b8c2bd0', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-27 05:45:51', '2021-12-27 05:45:51', '2022-12-26 23:45:51'),
('d6b48878e788a5e3bf2fe137c03b06b5d8469f0511e500b359ea733791378f71fd947efa3dbfcb3c', 37, 1, 'Personal Access Token', '[]', 0, '2022-02-06 07:34:42', '2022-02-06 07:34:42', '2023-02-06 01:34:42'),
('d70faa63da9992cdbc3272c2d36843c2fb6bc25a325951245c728c2316982fe9299c0c2027117c4b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 11:57:40', '2021-11-22 11:57:40', '2022-11-22 05:57:40'),
('d722ee507436e18c26f0fdfab707eca12559ea36e23f1f0960a2d1961f83e29ea5d3d19e4aa5d89b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:41:54', '2021-11-15 18:41:54', '2022-11-15 12:41:54'),
('d790b5ade1a9722569c4fbb1b68abedc801092895ae00558af76ba5a2a628c4cb84d330e8c067b35', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:45:02', '2021-11-15 18:45:02', '2022-11-15 12:45:02'),
('d79d0c76fca48cdd3434711ba01cf20e70b57739e9279b8f4b9a3694056ff7df06641860a3873814', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-03 12:22:05', '2021-12-03 12:22:05', '2022-12-03 06:22:05'),
('d7a2c7e44650111d609e1d6e5d4063ef055005bed50c98312f9cad934a07f80c6a4738266f0e8cdd', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:39:02', '2021-11-16 13:39:02', '2022-11-16 07:39:02'),
('d7a5879cd20cb279d193e539057500394060112da6e30f677bef67a5261c7b230099f0588e19fc6b', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-31 14:24:44', '2022-01-31 14:24:44', '2023-01-31 08:24:44'),
('d87a950f70c344c1712a8e176a9f8ffe1705e749c7dc8ea55d6bc656c676d9be1726e70ffd522826', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 15:55:32', '2021-12-13 15:55:32', '2022-12-13 09:55:32'),
('d8d9cd040215e1d329807794999cbe3f206543ab59bc6cc8c24509a68f92db04ff1bddd3d4b9e6f2', 37, 1, 'Personal Access Token', '[]', 0, '2022-02-08 04:50:10', '2022-02-08 04:50:10', '2023-02-07 22:50:10'),
('d8da902d2d1f48537f618506dc1ff3e7a96bdfbda566c0b746c52c63503a97ffcf0db0fe19e53fc6', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:08', '2021-11-17 16:47:08', '2022-11-17 10:47:08'),
('d9276d9cf5836abc3cadc0fa273ddebe58c9e5f464efcc20f1294cb289ac33efaed62fe1535de9b6', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-16 12:27:21', '2021-11-16 12:27:21', '2022-11-16 06:27:21'),
('d929477e75124ddc062ada90d64dd21af73cf2d57890bfc98137f3a15a38398c78fc2563fccdfdfa', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 19:47:28', '2021-11-25 19:47:28', '2022-11-25 13:47:28'),
('dafe1ca19be24e9bc3a835599cdef952deecc3067857044905f4f68fb71f6d0c7f1db499e6ef77a4', 60, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:47:06', '2022-03-09 19:47:06', '2023-03-09 13:47:06'),
('db1a64bccb36acbcb6fe2a758bc198868db005ca48b93a9fc05f300d874ad9cc64585de52c270194', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:52:42', '2021-12-13 19:52:42', '2022-12-13 13:52:42'),
('db51bdd21bf30075210df13130c0a5fb87dcdefd0ca0ae7cd36ad0c7e06035bb9cb40d2c5f3aa155', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 12:51:35', '2021-11-22 12:51:35', '2022-11-22 06:51:35'),
('db801781703c2fba1d85e708f07c0f512d9fa59420122de99b3bdbc783b1f6913dd2daa778ae6355', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:50:54', '2021-12-13 19:50:54', '2022-12-13 13:50:54'),
('dba0f3807ae2dcc29345bc0d0f7e66a9e6cded62450c7b8f81b21c267ebff6e396111150844239e4', 28, 1, 'Personal Access Token', '[]', 0, '2021-12-02 12:15:47', '2021-12-02 12:15:47', '2022-12-02 06:15:47'),
('dc0749b2c1a9df354922640c9c5331d68c8ee7a20546b9a77f65ac30fddbe0e364b6d38dae7b6174', 37, 1, 'Personal Access Token', '[]', 0, '2022-05-17 13:44:52', '2022-05-17 13:44:52', '2023-05-17 08:44:52'),
('dc288c7238aebc91008e5e5496b1ddfa4a1cc2423f22a984f07be9c1cd3a2e6266dc9eb0a4e4ffc7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:52:14', '2021-11-17 14:52:14', '2022-11-17 08:52:14'),
('dcfdf933d986ff1d746acf0f039832fb276a20d23b9b10b827302ed236fda88201df71a80d550867', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 14:19:49', '2021-11-22 14:19:49', '2022-11-22 08:19:49'),
('dd00169c1ed1176064428cd348b9e53877d74bc731361f7cf709d72d1dbc2ed0043e794662026dcf', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-25 12:55:03', '2022-03-25 12:55:03', '2023-03-25 07:55:03'),
('ddac8e5f4cd59506b484622bda52e79df22a4ef2b7c1ae912d0f02dbcac1b9863caae147e2760196', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 19:56:00', '2021-11-17 19:56:00', '2022-11-17 13:56:00'),
('ddc231fb9890802854c580e5740ba97ac495a2107f3dacff5b28a02764939994770b6e22c817eff4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 13:26:01', '2021-11-15 13:26:01', '2022-11-15 07:26:01'),
('ddea010717b4c8666bf09b4b5b84a9798925b6def8f327e880695620cab79262bbb9e89e4912d60e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 18:14:09', '2021-11-16 18:14:09', '2022-11-16 12:14:09'),
('df4d3e2c553bc72f8bef8ee8ee5773662868c2f3a2fbe089e35212ee6d5e600068eed212e87219ce', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-16 12:44:28', '2021-11-16 12:44:28', '2022-11-16 06:44:28'),
('df6130c1b64b2b52c894b3293f18f32577103144c1b10ee9479305bfe4d25a546e025be2f91f91f9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 18:19:30', '2021-11-16 18:19:30', '2022-11-16 12:19:30'),
('e000c1e52c91f647781c48f8ad1fd115d25cefcb0123ad8b91e603b30707c764e57ab364698e5d4c', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-25 15:29:11', '2022-03-25 15:29:11', '2023-03-25 10:29:11'),
('e024f2ae4d139dc6a928a2722dd202fadd79e4c210091cec01909f7768f6ee99eb2567d1d308cd32', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-22 06:58:33', '2021-12-22 06:58:33', '2022-12-22 00:58:33'),
('e02696dc38e3533c0be6fe706d51d62c1aab87b32096d8da70469144c959a744d9ac14e90b084a93', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:06:59', '2021-08-27 03:06:59', '2022-08-26 20:06:59'),
('e068474bbf3de414f854532ec83c475490529fe4270153e442199e168f7a9e47e596ae0b3d86d47a', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:22:38', '2021-12-13 19:22:38', '2022-12-13 13:22:38'),
('e116f8df84ef1c97635260a3c3deb1d3e702bea262c9b2512ab866d7ba5e6934ddd49b9a2aa175c2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:09', '2021-11-17 16:47:09', '2022-11-17 10:47:09'),
('e195531b14d263080fa17a0d8db7226e42454e30712ce1bd52fdc2a3cae2cc889fcbaf93a2a178cd', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:47:30', '2021-11-12 12:47:30', '2022-11-12 06:47:30'),
('e1dd4347fc6d5872566ba6d72473604a9d45b3ad667e6ee8095065d1c9213b879605a71c8d9bd238', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-28 14:03:28', '2021-12-28 14:03:28', '2022-12-28 08:03:28'),
('e205ee30307efa2e6081dcdd084025877cb9858d1ed93e9094738efcee0ad0e8cbf2014ef212cacf', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 14:25:57', '2021-12-13 14:25:57', '2022-12-13 08:25:57'),
('e2332b32dd3a5319f0267a441c497afa6e3f25bb2670d60c8c8f123666a70add703fd45c8ab2f615', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-29 02:08:36', '2021-09-29 02:08:36', '2022-09-28 19:08:36'),
('e31ea960ae2d2aa9bda4052f0085fe91f0044ed08f252baf659620d370f6e9a0fa98b9d337dcd55f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-29 12:06:45', '2021-11-29 12:06:45', '2022-11-29 06:06:45'),
('e33133eb27324c4f3488d27a514ba6ee797240d92dc571efdfeebf9b013870f0f62871d8232c132e', 14, 1, 'Personal Access Token', '[]', 0, '2022-02-04 17:03:22', '2022-02-04 17:03:22', '2023-02-04 11:03:22'),
('e361d442ec11f0412c67f08a1faf0e40a2c402aa394418b31985b13f224b5d7d944392fe8c9ea5b8', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 15:56:53', '2021-12-13 15:56:53', '2022-12-13 09:56:53'),
('e3bb45bfaf6156c7997f0187c098c4dff71b832a373a5c78fb15d388b6e7fc16c486dd1015215d4b', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 19:45:53', '2022-02-08 19:45:53', '2023-02-08 13:45:53'),
('e43e7f4f557c901d12685bb50c4da6b94f134bb8e3e0f0a1bceae5b1406db7c669efdc83c70a6c3c', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-10 16:36:25', '2022-03-10 16:36:25', '2023-03-10 10:36:25'),
('e49ac53684cb57b758af5d075099eaeef4bcce806a23d7135e1cfd54f3b25cf38adcf2ba4d8e7076', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 13:44:29', '2021-11-15 13:44:29', '2022-11-15 07:44:29'),
('e49fc2bedd4e7bf5b34f266da34493faab3d09ba733adcdabe6ca5602044702343b85b37d22f3f16', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-17 14:19:37', '2021-12-17 14:19:37', '2022-12-17 08:19:37'),
('e50372d5a100170ecc0ae2543cdb8325c50ea6661f4f075575b6993c7b49b50b58c0045638afc398', 42, 1, 'Personal Access Token', '[]', 0, '2021-12-28 14:24:44', '2021-12-28 14:24:44', '2022-12-28 08:24:44'),
('e58e2088389800a5b17151ff66e7a2a5e3f4c1e5b828b6c8dc6a8af0b374fc803cc7755bc612e53b', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-29 18:32:44', '2021-12-29 18:32:44', '2022-12-29 12:32:44'),
('e5c7df64a5ba3fa75bc79337fd9942f2989ec18453301e726425a6865da36258c89569a4b17a4fbb', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-10 17:52:47', '2021-12-10 17:52:47', '2022-12-10 11:52:47'),
('e5d04951911139edc2b4cef0aaa332bf3063a21198419cd8d2087766ea9e09e1acb0183f50d64903', 48, 1, 'Personal Access Token', '[]', 0, '2022-02-04 17:53:23', '2022-02-04 17:53:23', '2023-02-04 11:53:23'),
('e5dd3dbbbaa6a2ffb90e242cc2c5c7564f476efaa330ded3126647d1565ee40b0f1be6592dbd4d00', 25, 1, 'Personal Access Token', '[]', 0, '2021-11-29 19:58:23', '2021-11-29 19:58:23', '2022-11-29 13:58:23'),
('e6550b9cc6925fa8e9fa7e6632afbbde702f24bf4a30426fdc23ddd60471001e5af30a018fca8d74', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-01 16:47:06', '2021-12-01 16:47:06', '2022-12-01 10:47:06'),
('e6581ff1f49e381c7328ffa0b0a21c5f3a7529521443d8741175d63ea36d0d02eb04d6b419e0f51c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:43:58', '2021-11-17 14:43:58', '2022-11-17 08:43:58'),
('e674892331cd4cd21d664b7d5b435141303483c172a6ea1d681091d5b3f658e1edb6eef52b6fa86e', 59, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:16:43', '2022-03-09 19:16:43', '2023-03-09 13:16:43'),
('e67b855d4701586b21265adef1594402152e4bbe2a77b8215d1552aa216c8c6f31df36568fe7f441', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:08', '2021-11-17 16:47:08', '2022-11-17 10:47:08'),
('e69ade0c915dfb9c01bef4dc09236c0f42be9439d3c426a3960d847c845563f1c135e64dc923e175', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:13:58', '2021-11-15 18:13:58', '2022-11-15 12:13:58'),
('e72dba28dce6f1b0a3741f84556c92f4c6b083e56d5f13de2dc2dbdf34c7baa1b7ce1b5481de6a4f', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 15:42:37', '2021-12-01 15:42:37', '2022-12-01 09:42:37'),
('e75d04b2160aa3ac425aa43b7826fb3a524cc7fe12b82bb3aacb9e3be41409119692c253eee8e75f', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 13:57:20', '2021-12-01 13:57:20', '2022-12-01 07:57:20'),
('e777c309b833b558f352d6deb75c0ff9500a438b04ebfe85d123715560e8f158972274fe5e17f151', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-29 10:36:05', '2022-03-29 10:36:05', '2023-03-29 05:36:05'),
('e7c8c65aacc577d9e7993bfbc2402b5fbb842f67518465d48498c616543dcffcd1ff5cc84a6652b6', 40, 1, 'Personal Access Token', '[]', 0, '2022-04-21 07:16:58', '2022-04-21 07:16:58', '2023-04-21 02:16:58'),
('e9427affe66f938acd8cca95b5760f373cacddad4d92c4ab43f699bdb34a6a3b3f76dbe9d7165cc5', 62, 1, 'Personal Access Token', '[]', 0, '2022-03-09 20:20:31', '2022-03-09 20:20:31', '2023-03-09 14:20:31'),
('e990114866a735ece73ca781766526f0dec0f7559b5a315cea3da92b7dbf5e13dd4885aa8f2580d1', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-30 08:49:42', '2021-12-30 08:49:42', '2022-12-30 02:49:42'),
('e9c930d057ebd33af303a083383b2de8f3baf2fb6e563542b2e9ad65128f9329df4abc6510265669', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-23 17:47:03', '2021-12-23 17:47:03', '2022-12-23 11:47:03'),
('ea26f77d829efaf50c33a8a1d5c55ee1665173075964d510e9c91b5e1085eb691276092a86a4bfc7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:48:29', '2021-11-17 14:48:29', '2022-11-17 08:48:29'),
('ea39627f9777b90c2a1c181fa83087dc095394580bd7d69325b70e63938557b0133c58478d3d3f65', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-30 23:39:07', '2021-12-30 23:39:07', '2022-12-30 17:39:07'),
('ea699c82474461410b0633c967b1f9c990719e769c075f1c97b4b4d28d7e1f90dec3ebef652e9f4c', 27, 1, 'Personal Access Token', '[]', 0, '2021-12-02 12:40:45', '2021-12-02 12:40:45', '2022-12-02 06:40:45'),
('eb667bdfd0be83a78d5219e816a16b0bca8d0da98d0a87e6e2c13474b734b99cebc82b701d2fd454', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 12:27:51', '2021-11-17 12:27:51', '2022-11-17 06:27:51'),
('eb8e348e2bc33a843c55479d520b25aba1867f4626bb536afcede54cee6e838f92c8f4d2bf45d974', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:51:26', '2021-12-13 19:51:26', '2022-12-13 13:51:26'),
('eba6ebdface7c278ca914dfc48855747c1c2fa873269d16ce05d46600b44de7ddc585a78ad35ddb8', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 13:28:39', '2021-12-01 13:28:39', '2022-12-01 07:28:39'),
('ec1e1486bb8a9266e818dcf238c545da9bbb55e54d0797f5287119223c6161701bf58ab32937ac10', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:03:41', '2021-11-15 16:03:41', '2022-11-15 10:03:41'),
('ecb7fe09aca11967b6df46b1ef0450c5599b2518ae2d3b598368deea7933438f95ffd53639e4d596', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-05 01:13:16', '2021-11-05 01:13:16', '2022-11-04 18:13:16'),
('ecf312d1103965d7cfcd716f5627c77ab14ec2e00b023734aed0f0e567f287b9dee32abd26fbc213', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-29 18:33:28', '2021-12-29 18:33:28', '2022-12-29 12:33:28'),
('ecf78f7a483645e832f19b7b876a497c3618659bb0bb3d9a9812fb9a8142c0a2479a828330ed0e8e', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 16:46:11', '2021-12-01 16:46:11', '2022-12-01 10:46:11'),
('ed4765043319c572be5fed5309fd1e14bd4d6f07aceab41498b8867c6510352a2c9d70e7ba612797', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:27:08', '2021-11-15 19:27:08', '2022-11-15 13:27:08'),
('ed4af20a70836afcbc49872cad0574104ee32db096d55ce3407378a08b6c0992aa2f5fbff944c7a1', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-23 10:49:02', '2021-12-23 10:49:02', '2022-12-23 04:49:02'),
('ed5b1535ed5ecacf18aba90d074e0cd524fbe29e376a88ad9b9909f8ab462df25325a120e13f1e56', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-23 16:05:21', '2021-11-23 16:05:21', '2022-11-23 10:05:21'),
('ed89dbeee013de36acac7f0a1a8a924313887c6c7740fbde57bbd47ec77aefdc47c065a1c0219554', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 12:57:37', '2021-12-02 12:57:37', '2022-12-02 06:57:37'),
('edffcfd48da6974a8d704e01f95d40365ed95dab1cb58403ae7c1bd8839e24227327ad5b5260dc01', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 16:40:36', '2021-11-16 16:40:36', '2022-11-16 10:40:36'),
('ee007b0bb75933fb70ef32746f33dd5782ed5d0afdf2cc4b49e8f3e8fb0e6c8272544e9b8cd48ba9', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 14:11:38', '2022-02-05 14:11:38', '2023-02-05 08:11:38'),
('eea21d738ae4832d111b5288962a8cab63e7a6c878bad7127c5346b77ebcfc046fb04074dec66919', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 23:55:22', '2021-09-15 23:55:22', '2022-09-15 16:55:22'),
('eeea6b2908979f53e2ea1946a92dda320a7e6369502bc904699b21c046f0959b8b2ade5af8a0e3f7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 18:36:49', '2021-11-17 18:36:49', '2022-11-17 12:36:49'),
('eef9d0b846fb24317f811eb395ca8f9c43c77137d62fd1299d7d4b7cd3d9fd63a122c19e7167fc9c', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:22:21', '2021-12-13 19:22:21', '2022-12-13 13:22:21'),
('efc1a0a745401d3f6c21db26f6fcdd10721279780ca511bc89b8f81b66b8dece223256fb56c1f775', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:22:18', '2021-11-15 19:22:18', '2022-11-15 13:22:18'),
('efd8344350017fc552e05ab05ff3ac6f36b38fd34ec28fcd1122011398c390acbfc56bb81b5ee13a', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:11:54', '2021-08-27 01:11:54', '2022-08-26 18:11:54'),
('f0436ec6a6f7caa5463cda262248556dabc96d6bb6aca7e66b52f1b4305f6acb8f7c1cf9eacfe2b5', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 19:23:31', '2021-12-13 19:23:31', '2022-12-13 13:23:31'),
('f08a6da81ac3c9ef453cb1dfd64979f0ad2545eb76607b90b03ca83749fe7b60bf69e65a5b22eda9', 25, 1, 'Personal Access Token', '[]', 0, '2021-11-29 12:48:43', '2021-11-29 12:48:43', '2022-11-29 06:48:43'),
('f0df8f5fb0495176485120406e92f370dcd4c16c2d2e56752d3c3019150de4d1a5143726898d2ce3', 71, 1, 'Personal Access Token', '[]', 0, '2022-03-10 12:35:07', '2022-03-10 12:35:07', '2023-03-10 06:35:07'),
('f11aaf1b7f9104513a04f134ffc3c2010aad7bae9c74c69cb148fc933d276512a36dc0f8b0f775dd', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:59:34', '2021-08-27 03:59:34', '2022-08-26 20:59:34'),
('f176b704c1e7fdc0794db41c1d1b1443d3c648bb5140c0b12fd4a7fa3c0efd6b73d72254fe299eab', 42, 1, 'Personal Access Token', '[]', 0, '2021-12-28 13:55:44', '2021-12-28 13:55:44', '2022-12-28 07:55:44'),
('f1fcf1723733fadc756832cbe8b34be613e49529cf52a09cf92f9e3cc3376a248f95a5dac1a961f7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:40:35', '2021-11-15 18:40:35', '2022-11-15 12:40:35'),
('f246aa276e04eef72fac179249da9d2a6ac0032a39f82aaf94a67e0c06b2e141fbd097923a709f43', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:03:15', '2021-11-17 14:03:15', '2022-11-17 08:03:15'),
('f26e6697b4b117abf184d7df8fde4e476ee3cad903e8f87dae729fd2d1f75b9cc8c8d84e6dce5980', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:15:57', '2021-08-27 01:15:57', '2022-08-26 18:15:57'),
('f281b46915ae5607cb0ef909b45b3db405ca990c4134e549073911ae8592e2fa0e72ffa16256fc49', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 19:56:00', '2021-11-16 19:56:00', '2022-11-16 13:56:00'),
('f2cc3aa26c90404aa04acbc77f374abe568edb17f05c2785e0757dad98947efd5ea1150cefed7cdb', 39, 1, 'Personal Access Token', '[]', 0, '2021-12-15 13:52:58', '2021-12-15 13:52:58', '2022-12-15 07:52:58'),
('f38a335f02b6d56eacc97302fe3dbdf9ba2d4035c37f45c44aa8c870c98d27aeeb41a8ad371566fd', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:41:20', '2021-11-12 12:41:20', '2022-11-12 06:41:20'),
('f3ccdf3d613e653b4864210345585e52313f4debc15677a1718a8cc1624704a207bd9b2771aca1c6', 14, 1, 'Personal Access Token', '[]', 0, '2022-02-04 18:18:38', '2022-02-04 18:18:38', '2023-02-04 12:18:38'),
('f432481c30a5f9db557136e52d8f89033b936e8fc1fd19d19e6b18d104c769ff552c41310f0956bd', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-13 14:20:23', '2021-12-13 14:20:23', '2022-12-13 08:20:23'),
('f4c3512df6f796012afd7587fe14c78d937b86da807c61035f109ebb72fd7e3f4e79ccbf1367448c', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-10 13:16:37', '2022-01-10 13:16:37', '2023-01-10 07:16:37'),
('f4dc50e15e122afd04a0f5fa953913ec3f4f1874e723df4daf7f2c7dc61c9b40cddc2cce49bad5a6', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 18:58:13', '2021-11-12 18:58:13', '2022-11-12 12:58:13'),
('f58b15f060d708c878825e868826d42dd3e601dbeceb40fbe1b96603edc135bcf4f9ed2c0b27ebce', 39, 1, 'Personal Access Token', '[]', 0, '2022-02-04 16:06:03', '2022-02-04 16:06:03', '2023-02-04 10:06:03'),
('f62411cc9b3b67aef91c67f764bcd348af110818172d38d2e6fcb3cfec65fec7a57f4ca4242873e0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:05:36', '2021-11-15 19:05:36', '2022-11-15 13:05:36'),
('f625df7a8d17673cea28a618c71b7cbdc44893328e1b977d5e3c2a212f6bc06a8b47cf82b9f2622d', 47, 1, 'Personal Access Token', '[]', 0, '2022-02-04 17:25:52', '2022-02-04 17:25:52', '2023-02-04 11:25:52'),
('f7387b8c2769002ead2b161a809e422a970eaee3cb549eed3ef93ea6c7e0c1837839b4e6b1dae8e5', 74, 1, 'Personal Access Token', '[]', 0, '2022-03-10 16:18:25', '2022-03-10 16:18:25', '2023-03-10 10:18:25'),
('f7541ca17733ba7cfadf2cddbd55225b74ad1f1419e4aa621801f0b8af9d6c8301d37fc1e221cc35', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-01 19:27:14', '2021-12-01 19:27:14', '2022-12-01 13:27:14'),
('f76637bb894f82cda7738ddf2aacbec4cf71ab19f875245a4c909a23e6cd20aafe4dbaec6277a6fe', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:08', '2021-11-17 16:47:08', '2022-11-17 10:47:08'),
('f77e886df136c0fe593874bce2b7be5010bde03c4ccee372d00c77e39990c09d36cf6246d3eb0425', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 19:54:44', '2021-11-12 19:54:44', '2022-11-12 13:54:44'),
('f7e3525966fc225fb376a791e827cebc20434564ceb024e05ba74635f88a50e2e41fbbcb96b54231', 60, 1, 'Personal Access Token', '[]', 0, '2022-03-09 19:47:56', '2022-03-09 19:47:56', '2023-03-09 13:47:56'),
('f86d4cdf5b87aa7661e64d3d5b3ca42c44c38c9b2bb8d97b48af924179705bb9e87fcaeca184c204', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 01:56:41', '2021-09-15 01:56:41', '2022-09-14 18:56:41'),
('f87daeca386a03618c7e00525c356e7830dea89ecbaa05d764ae9e74a8a5b9a796ccf05248fde4f5', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-15 17:17:23', '2021-11-15 17:17:23', '2022-11-15 11:17:23'),
('fa08ab176a50d8356752b57fe570e4910c541d25d0a84757dd779049e124d4429cecbeeb3b4340f5', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-29 18:34:56', '2021-12-29 18:34:56', '2022-12-29 12:34:56'),
('fa1c021b1bf4a1580f99d946df707afc657e15ddd792d20b1146aca68bea496d4c3c0e7bfd0a4483', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-16 11:59:38', '2021-11-16 11:59:38', '2022-11-16 05:59:38'),
('fa5f8221dbd5b856d89d4832e038014932e1354c85837ec0d9f2f7541e2b9177d6d865524504b392', 25, 1, 'Personal Access Token', '[]', 0, '2021-12-01 17:00:08', '2021-12-01 17:00:08', '2022-12-01 11:00:08'),
('fafff40012a58403c2356b2093cc36cd4dee660c75f9e75ec915fd58f6ff803b60e4f33f34372e3a', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-22 16:11:22', '2021-12-22 16:11:22', '2022-12-22 10:11:22'),
('fb47c2f0cc7f12256dfc7a14cb83ef62837195340ed541bcea0506f08a2d47b26659d7219afdea03', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-10 13:36:19', '2022-03-10 13:36:19', '2023-03-10 07:36:19'),
('fb60ade529035d3a09196c3822de88d7a85b6b415cee60a138b79519dad971d90f02d40119c96c43', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 12:24:43', '2021-11-22 12:24:43', '2022-11-22 06:24:43'),
('fb61f1fe1b66e848122de3e8c38ad5d6f6a3c3d75455fc806b7fd3db5c3647e114460dd694c5878a', 37, 1, 'Personal Access Token', '[]', 0, '2022-02-14 13:45:30', '2022-02-14 13:45:30', '2023-02-14 07:45:30'),
('fc190aef636b7328382a1b7397606d9df987aaba2c900c7ba95c6b71d30c3d506083494298bf64e7', 44, 1, 'Personal Access Token', '[]', 0, '2021-12-29 16:31:00', '2021-12-29 16:31:00', '2022-12-29 10:31:00'),
('fca5e096ea3f32c968588d7a32bc9a11fdb829c2c07ace4aa85ce2ac55c42771f731feda937f231b', 75, 1, 'Personal Access Token', '[]', 0, '2022-03-19 22:37:13', '2022-03-19 22:37:13', '2023-03-19 17:37:13'),
('fcc819af880080f1c2d7bbe3eea6f4a9309bc0e47b9666b0e66db33c6995ea689061ebc9c45f6650', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-22 14:16:08', '2021-11-22 14:16:08', '2022-11-22 08:16:08'),
('fcd3b79181eeaccd83900bf73f1220bd2dabfa65a1d682b8036b6fc87e06d189e4454519a0e0152f', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 12:49:19', '2022-02-04 12:49:19', '2023-02-04 06:49:19'),
('fcdb8b99bd06f1452685c59bd8037f7904ebd178b4398199072b2e2b860bdc5a50f0e1b4dfeed3dc', 40, 1, 'Personal Access Token', '[]', 0, '2022-03-22 19:56:14', '2022-03-22 19:56:14', '2023-03-22 14:56:14'),
('fd7fddcdb69bfa1802d379b8314ebfb2e00b4572d917ed04218fce85ea6805896cafc37c04378dc8', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:40:35', '2021-11-12 12:40:35', '2022-11-12 06:40:35'),
('fda9a953ed194146213b641ba88fe44a5e76251ab6368f93bdd62f3f641b30450e590f7408940afd', 61, 1, 'Personal Access Token', '[]', 0, '2022-03-09 20:00:22', '2022-03-09 20:00:22', '2023-03-09 14:00:22'),
('fde11dc4f436c9d58af0eaa2f3ad61a45041608455f24461b7119c3f60ce0ad2e90d239cc37f09c8', 17, 1, 'Personal Access Token', '[]', 0, '2021-12-01 14:18:05', '2021-12-01 14:18:05', '2022-12-01 08:18:05'),
('fe77f1342e8682b97b7dc125d8e772c9530e57534bc1c9b978ef4c96936b0b36487f979e1d97a4fb', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-29 18:33:02', '2021-12-29 18:33:02', '2022-12-29 12:33:02'),
('fe840b4452d43789fd607d527f5a1e8eb2110c91fbc26aff46d8571c8259afa123f348045963bee8', 37, 1, 'Personal Access Token', '[]', 0, '2022-03-20 12:00:30', '2022-03-20 12:00:30', '2023-03-20 07:00:30'),
('ffe583c1359e68a39cfbd7358eeac3e70162dbc8ade733514f4d6710cbc93968d5caf1e964d454ce', 64, 1, 'Personal Access Token', '[]', 0, '2022-03-10 11:53:49', '2022-03-10 11:53:49', '2023-03-10 05:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
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
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'GWzAp5Zwso6vaItNrJc83rD4sZUKrvMBM8oFDajZ', NULL, 'http://localhost', 1, 0, 0, '2021-08-26 05:56:36', '2021-08-26 05:56:36'),
(2, NULL, 'Laravel Password Grant Client', 'ZkSFhUXODFGxbRsYtQxffGup2Zd1nqFhp6hSTqsM', 'users', 'http://localhost', 0, 1, 0, '2021-08-26 05:56:36', '2021-08-26 05:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-08-26 05:56:36', '2021-08-26 05:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'nabeel@pixelpk.com', 273343, '2021-11-15 12:24:34', '2021-11-15 12:24:34'),
(7, 'raheelk740@gmail.com', 235597, '2021-11-15 13:09:18', '2021-11-15 13:09:18'),
(8, 'raheelk740@gmail.com', 181113, '2021-11-15 13:09:33', '2021-11-15 13:09:33'),
(9, 'raheelk740@gmail.com', 698279, '2021-11-15 13:11:23', '2021-11-15 13:11:23'),
(10, 'nabeel@pixelpk.com', 101501, '2021-11-15 13:45:51', '2021-11-15 13:45:51'),
(11, 'nabeel@pixelpk.com', 145664, '2021-11-16 19:59:08', '2021-11-16 19:59:08'),
(12, 'nabeel@pixelpk.com', 538879, '2021-11-16 19:59:15', '2021-11-16 19:59:15'),
(13, 'nabeel@pixelpk.com', 947460, '2021-11-16 19:59:25', '2021-11-16 19:59:25'),
(14, 'nabeel@pixelpk.com', 863402, '2021-11-16 19:59:25', '2021-11-16 19:59:25'),
(15, 'nabeel@pixelpk.com', 867769, '2021-11-16 19:59:25', '2021-11-16 19:59:25'),
(16, 'nabeel@pixelpk.com', 590073, '2021-11-16 19:59:36', '2021-11-16 19:59:36'),
(17, 'nabeel@pixelpk.com', 297816, '2021-11-16 19:59:53', '2021-11-16 19:59:53'),
(18, 'nabeel@pixelpk.com', 869248, '2021-11-16 20:03:24', '2021-11-16 20:03:24'),
(19, 'nabeel@pixelpk.com', 504460, '2021-11-16 20:04:21', '2021-11-16 20:04:21'),
(20, 'nabeel@pixelpk.com', 637737, '2021-11-16 20:09:09', '2021-11-16 20:09:09'),
(21, 'nabeel@pixelpk.com', 297831, '2021-11-16 20:09:47', '2021-11-16 20:09:47'),
(23, 'hamzaussaid9@gmail.com', 495518, '2021-11-16 20:50:49', '2021-11-16 20:50:49'),
(24, 'hamzaussaid9@gmail.com', 142169, '2021-11-16 20:53:00', '2021-11-16 20:53:00'),
(25, 'hamzaussaid9@gmail.com', 167331, '2021-11-16 21:01:23', '2021-11-16 21:01:23'),
(26, 'hamzaussaid9@gmail.com', 578517, '2021-11-16 21:01:51', '2021-11-16 21:01:51'),
(27, 'hamzaussaid9@gmail.com', 253423, '2021-11-16 21:02:52', '2021-11-16 21:02:52'),
(28, 'hamzaussaid9@gmail.com', 539252, '2021-11-16 21:03:44', '2021-11-16 21:03:44'),
(29, 'hamzaussaid9@gmail.com', 122756, '2021-11-16 21:06:59', '2021-11-16 21:06:59'),
(30, 'hamzaussaid9@gmail.com', 666990, '2021-11-16 21:20:27', '2021-11-16 21:20:27'),
(31, 'hamzaussaid9@gmail.com', 492303, '2021-11-16 21:31:36', '2021-11-16 21:31:36'),
(32, 'hamzaussaid9@gmail.com', 975909, '2021-11-17 15:43:05', '2021-11-17 15:43:05'),
(33, 'raheelk740@gmail.com', 678528, '2021-11-17 15:50:47', '2021-11-17 15:50:47'),
(34, 'nabeel@pixelpk.com', 214154, '2021-11-17 16:00:37', '2021-11-17 16:00:37'),
(36, 'hamzaussaid9@gmail.com', 823543, '2021-11-17 16:02:43', '2021-11-17 16:02:43'),
(41, 'hamzaussaid9@gmail.com', 661757, '2021-11-17 16:50:25', '2021-11-17 16:50:25'),
(42, 'hamzaussaid9@gmail.com', 461492, '2021-11-17 16:51:33', '2021-11-17 16:51:33'),
(43, 'hamzaussaid9@gmail.com', 779272, '2021-11-17 17:03:56', '2021-11-17 17:03:56'),
(44, 'hamzaussaid9@gmail.com', 742636, '2021-11-17 17:04:37', '2021-11-17 17:04:37'),
(45, 'hamzaussaid9@gmail.com', 325123, '2021-11-17 17:06:54', '2021-11-17 17:06:54'),
(47, 'hamzaussaid9@gmail.com', 648470, '2021-11-17 17:23:14', '2021-11-17 17:23:14'),
(48, 'nabeel@pixelpk.com', 571985, '2021-12-01 13:15:47', '2021-12-01 13:15:47'),
(49, 'nabeel@pixelpk.com', 816586, '2021-12-01 13:16:40', '2021-12-01 13:16:40'),
(51, 'rizwanakh77@gmail.com', 282098, '2021-12-02 12:34:00', '2021-12-02 12:34:00'),
(52, 'rizwanakh77@gmail.com', 895020, '2021-12-02 12:35:19', '2021-12-02 12:35:19'),
(54, 'nabeel@pixelpk.com', 964543, '2021-12-03 12:23:33', '2021-12-03 12:23:33'),
(55, 'nabeel@pixelpk.com', 103054, '2021-12-03 12:24:08', '2021-12-03 12:24:08'),
(56, 'nabeel@pixelpk.com', 519983, '2021-12-03 13:01:17', '2021-12-03 13:01:17'),
(57, 'nabeel@pixelpk.com', 119466, '2021-12-03 13:20:47', '2021-12-03 13:20:47'),
(58, 'nabeel@pixelpk.com', 676180, '2021-12-03 13:23:33', '2021-12-03 13:23:33'),
(59, 'raheelk740@gmail.com', 267742, '2021-12-03 13:26:52', '2021-12-03 13:26:52'),
(62, 'nabeel@pixelpk.com', 787530, '2021-12-13 19:22:49', '2021-12-13 19:22:49'),
(63, 'nabeel@pixelpk.com', 677584, '2021-12-13 19:22:56', '2021-12-13 19:22:56'),
(64, 'nabeel@pixelpk.com', 500208, '2021-12-13 19:23:00', '2021-12-13 19:23:00'),
(65, 'nabeel@pixelpk.com', 732635, '2021-12-13 19:23:07', '2021-12-13 19:23:07'),
(66, 'nabeel@pixelpk.com', 779159, '2021-12-13 19:23:17', '2021-12-13 19:23:17'),
(67, 'nabeel@pixelpk.com', 188139, '2021-12-13 19:50:56', '2021-12-13 19:50:56'),
(68, 'nabeel@pixelpk.com', 116581, '2021-12-13 19:51:08', '2021-12-13 19:51:08'),
(69, 'nabeel@pixelpk.com', 258045, '2021-12-13 19:51:18', '2021-12-13 19:51:18'),
(70, 'nabeel@pixelpk.com', 301199, '2021-12-13 19:51:22', '2021-12-13 19:51:22'),
(71, 'nabeel@pixelpk.com', 457355, '2021-12-13 19:51:27', '2021-12-13 19:51:27'),
(72, 'nabeel@pixelpk.com', 264734, '2021-12-13 19:51:32', '2021-12-13 19:51:32'),
(73, 'nabeel@pixelpk.com', 770208, '2021-12-13 19:51:37', '2021-12-13 19:51:37'),
(74, 'nabeel@pixelpk.com', 226386, '2021-12-13 19:51:43', '2021-12-13 19:51:43'),
(75, 'nabeel@pixelpk.com', 625320, '2021-12-13 19:51:48', '2021-12-13 19:51:48'),
(76, 'nabeel@pixelpk.com', 251833, '2021-12-13 19:51:53', '2021-12-13 19:51:53'),
(77, 'nabeel@pixelpk.com', 477710, '2021-12-13 19:51:58', '2021-12-13 19:51:58'),
(78, 'nabeel@pixelpk.com', 851502, '2021-12-13 19:52:03', '2021-12-13 19:52:03'),
(79, 'nabeel@pixelpk.com', 146882, '2021-12-13 19:52:09', '2021-12-13 19:52:09'),
(80, 'nabeel@pixelpk.com', 256112, '2021-12-13 19:52:14', '2021-12-13 19:52:14'),
(81, 'nabeel@pixelpk.com', 208365, '2021-12-13 19:52:19', '2021-12-13 19:52:19'),
(82, 'nabeel@pixelpk.com', 992342, '2021-12-13 19:52:24', '2021-12-13 19:52:24'),
(83, 'nabeel@pixelpk.com', 650467, '2021-12-13 19:52:29', '2021-12-13 19:52:29'),
(84, 'nabeel@pixelpk.com', 238822, '2021-12-13 19:52:34', '2021-12-13 19:52:34'),
(85, 'nabeel@pixelpk.com', 276639, '2021-12-13 19:52:39', '2021-12-13 19:52:39'),
(86, 'nabeel@pixelpk.com', 662654, '2021-12-13 19:52:44', '2021-12-13 19:52:44'),
(87, 'nabeel@pixelpk.com', 355479, '2021-12-13 19:52:50', '2021-12-13 19:52:50'),
(88, 'nabeel@pixelpk.com', 694699, '2021-12-13 19:52:55', '2021-12-13 19:52:55'),
(89, 'nabeel@pixelpk.com', 745015, '2021-12-13 19:53:00', '2021-12-13 19:53:00'),
(90, 'nabeel@pixelpk.com', 519913, '2021-12-22 16:11:47', '2021-12-22 16:11:47'),
(91, 'nabeel@pixelpk.com', 354257, '2021-12-22 16:11:54', '2021-12-22 16:11:54'),
(92, 'nabeel@pixelpk.com', 996568, '2021-12-22 16:11:57', '2021-12-22 16:11:57'),
(93, 'nabeel@pixelpk.com', 465610, '2021-12-22 16:12:04', '2021-12-22 16:12:04'),
(94, 'nabeel@pixelpk.com', 357066, '2021-12-22 16:12:08', '2021-12-22 16:12:08'),
(95, 'nabeel@pixelpk.com', 625769, '2021-12-22 16:12:33', '2021-12-22 16:12:33'),
(96, 'nabeel@pixelpk.com', 444945, '2021-12-23 10:47:50', '2021-12-23 10:47:50'),
(99, 'raheelk740@gmail.com', 611792, '2021-12-29 13:55:16', '2021-12-29 13:55:16'),
(102, 'interiorestorations@yahoo.com', 686830, '2022-01-08 07:16:40', '2022-01-08 07:16:40'),
(103, 'nabeel@pixelpk.com', 629742, '2022-02-05 14:11:39', '2022-02-05 14:11:39'),
(104, 'nabeel@pixelpk.com', 579777, '2022-02-07 09:00:25', '2022-02-07 09:00:25'),
(105, 'nabeel@pixelpk.com', 121974, '2022-03-03 11:50:38', '2022-03-03 11:50:38'),
(106, 'nabeel@pixelpk.com', 873791, '2022-03-03 21:35:18', '2022-03-03 21:35:18'),
(107, 'nabeel@pixelpk.com', 518630, '2022-03-03 21:38:46', '2022-03-03 21:38:46'),
(108, 'nabeel@pixelpk.com', 918529, '2022-03-03 21:38:49', '2022-03-03 21:38:49'),
(109, 'nabeel@pixelpk.com', 809719, '2022-03-03 21:38:53', '2022-03-03 21:38:53'),
(110, 'nabeel@pixelpk.com', 846731, '2022-03-03 21:38:59', '2022-03-03 21:38:59'),
(111, 'nabeel@pixelpk.com', 630403, '2022-03-03 21:39:05', '2022-03-03 21:39:05'),
(112, 'nabeel@pixelpk.com', 996876, '2022-03-10 13:36:20', '2022-03-10 13:36:20'),
(114, 'interiorestorations@yahoo.com', 795025, '2022-03-24 04:56:39', '2022-03-24 04:56:39'),
(115, 'nabeel@pixelpk.com', 868715, '2022-03-25 17:32:58', '2022-03-25 17:32:58'),
(116, 'nabeel@pixelpk.com', 661129, '2022-03-25 17:33:01', '2022-03-25 17:33:01'),
(117, 'nabeel@pixelpk.com', 574997, '2022-03-25 17:33:04', '2022-03-25 17:33:04'),
(118, 'nabeel@pixelpk.com', 577202, '2022-03-25 17:33:06', '2022-03-25 17:33:06'),
(119, 'nabeel@pixelpk.com', 992435, '2022-03-25 17:33:09', '2022-03-25 17:33:09'),
(120, 'nabeel@pixelpk.com', 296317, '2022-03-25 17:33:11', '2022-03-25 17:33:11'),
(121, 'nabeel@pixelpk.com', 707198, '2022-03-25 17:33:12', '2022-03-25 17:33:12'),
(122, 'nabeel@pixelpk.com', 362664, '2022-03-25 17:33:15', '2022-03-25 17:33:15'),
(123, 'nabeel@pixelpk.com', 251177, '2022-03-25 17:33:16', '2022-03-25 17:33:16'),
(124, 'nabeel@pixelpk.com', 951610, '2022-03-25 17:33:17', '2022-03-25 17:33:17'),
(125, 'nabeel@pixelpk.com', 817735, '2022-03-25 17:33:20', '2022-03-25 17:33:20'),
(126, 'nabeel@pixelpk.com', 132384, '2022-03-25 17:33:22', '2022-03-25 17:33:22'),
(127, 'nabeel@pixelpk.com', 145687, '2022-03-25 17:33:23', '2022-03-25 17:33:23'),
(128, 'nabeel@pixelpk.com', 442797, '2022-03-25 17:33:24', '2022-03-25 17:33:24'),
(129, 'nabeel@pixelpk.com', 296607, '2022-03-25 17:33:25', '2022-03-25 17:33:25'),
(130, 'nabeel@pixelpk.com', 753179, '2022-03-25 17:33:27', '2022-03-25 17:33:27'),
(131, 'nabeel@pixelpk.com', 993824, '2022-03-25 17:33:27', '2022-03-25 17:33:27'),
(132, 'nabeel@pixelpk.com', 990062, '2022-03-25 17:33:28', '2022-03-25 17:33:28'),
(133, 'nabeel@pixelpk.com', 508176, '2022-03-25 17:33:28', '2022-03-25 17:33:28'),
(134, 'nabeel@pixelpk.com', 957829, '2022-03-25 17:33:29', '2022-03-25 17:33:29'),
(135, 'nabeel@pixelpk.com', 803655, '2022-03-25 17:33:29', '2022-03-25 17:33:29'),
(136, 'nabeel@pixelpk.com', 230194, '2022-03-25 17:33:31', '2022-03-25 17:33:31'),
(137, 'nabeel@pixelpk.com', 905511, '2022-03-25 17:33:32', '2022-03-25 17:33:32'),
(138, 'nabeel@pixelpk.com', 443475, '2022-03-25 17:33:32', '2022-03-25 17:33:32'),
(139, 'nabeel@pixelpk.com', 385973, '2022-03-25 17:33:32', '2022-03-25 17:33:32'),
(140, 'nabeel@pixelpk.com', 916158, '2022-03-25 17:33:34', '2022-03-25 17:33:34'),
(141, 'nabeel@pixelpk.com', 884552, '2022-03-25 17:33:35', '2022-03-25 17:33:35'),
(142, 'nabeel@pixelpk.com', 892836, '2022-03-25 17:33:35', '2022-03-25 17:33:35'),
(143, 'nabeel@pixelpk.com', 150301, '2022-03-25 17:33:38', '2022-03-25 17:33:38'),
(144, 'nabeel@pixelpk.com', 612381, '2022-03-25 17:33:41', '2022-03-25 17:33:41'),
(145, 'nabeel@pixelpk.com', 500335, '2022-03-25 17:33:44', '2022-03-25 17:33:44'),
(146, 'nabeel@pixelpk.com', 270368, '2022-03-25 17:33:46', '2022-03-25 17:33:46'),
(147, 'nabeel@pixelpk.com', 977569, '2022-03-25 17:33:47', '2022-03-25 17:33:47'),
(148, 'nabeel@pixelpk.com', 733294, '2022-03-25 17:33:50', '2022-03-25 17:33:50'),
(149, 'nabeel@pixelpk.com', 930718, '2022-03-25 17:33:51', '2022-03-25 17:33:51'),
(150, 'nabeel@pixelpk.com', 454110, '2022-03-25 17:33:51', '2022-03-25 17:33:51'),
(151, 'nabeel@pixelpk.com', 109999, '2022-03-25 17:33:54', '2022-03-25 17:33:54'),
(152, 'nabeel@pixelpk.com', 551273, '2022-03-25 17:33:54', '2022-03-25 17:33:54'),
(153, 'nabeel@pixelpk.com', 514098, '2022-03-25 17:33:56', '2022-03-25 17:33:56'),
(154, 'nabeel@pixelpk.com', 523745, '2022-03-25 17:33:56', '2022-03-25 17:33:56'),
(155, 'nabeel@pixelpk.com', 901124, '2022-03-25 17:33:58', '2022-03-25 17:33:58'),
(156, 'nabeel@pixelpk.com', 113122, '2022-03-25 17:33:59', '2022-03-25 17:33:59'),
(157, 'nabeel@pixelpk.com', 725812, '2022-03-25 17:34:05', '2022-03-25 17:34:05'),
(158, 'nabeel@pixelpk.com', 457156, '2022-03-25 17:34:08', '2022-03-25 17:34:08'),
(159, 'nabeel@pixelpk.com', 587954, '2022-03-25 17:34:09', '2022-03-25 17:34:09'),
(160, 'nabeel@pixelpk.com', 552055, '2022-03-25 17:34:12', '2022-03-25 17:34:12'),
(161, 'nabeel@pixelpk.com', 705953, '2022-03-25 17:34:13', '2022-03-25 17:34:13'),
(162, 'nabeel@pixelpk.com', 321547, '2022-03-25 17:34:16', '2022-03-25 17:34:16'),
(163, 'nabeel@pixelpk.com', 387322, '2022-03-25 17:34:17', '2022-03-25 17:34:17'),
(164, 'nabeel@pixelpk.com', 694675, '2022-03-25 17:34:19', '2022-03-25 17:34:19'),
(165, 'nabeel@pixelpk.com', 192926, '2022-03-25 17:34:21', '2022-03-25 17:34:21'),
(166, 'nabeel@pixelpk.com', 355705, '2022-03-25 17:34:24', '2022-03-25 17:34:24'),
(167, 'nabeel@pixelpk.com', 547018, '2022-03-25 17:34:45', '2022-03-25 17:34:45'),
(168, 'nabeel@pixelpk.com', 675407, '2022-03-25 17:34:53', '2022-03-25 17:34:53'),
(169, 'nabeel@pixelpk.com', 138140, '2022-03-25 17:34:55', '2022-03-25 17:34:55'),
(170, 'nabeel@pixelpk.com', 102677, '2022-03-25 17:34:58', '2022-03-25 17:34:58'),
(171, 'nabeel@pixelpk.com', 867097, '2022-03-25 17:35:12', '2022-03-25 17:35:12'),
(172, 'nabeel@pixelpk.com', 560516, '2022-03-25 17:35:15', '2022-03-25 17:35:15'),
(173, 'nabeel@pixelpk.com', 881304, '2022-03-25 17:35:36', '2022-03-25 17:35:36'),
(174, 'nabeel@pixelpk.com', 942347, '2022-03-25 17:35:40', '2022-03-25 17:35:40'),
(175, 'nabeel@pixelpk.com', 939075, '2022-03-25 17:35:42', '2022-03-25 17:35:42'),
(176, 'nabeel@pixelpk.com', 604145, '2022-03-25 17:35:56', '2022-03-25 17:35:56'),
(177, 'nabeel@pixelpk.com', 133811, '2022-03-25 17:36:00', '2022-03-25 17:36:00'),
(178, 'nabeel@pixelpk.com', 852997, '2022-03-25 17:36:07', '2022-03-25 17:36:07'),
(179, 'nabeel@pixelpk.com', 628764, '2022-03-25 17:36:11', '2022-03-25 17:36:11'),
(180, 'nabeel@pixelpk.com', 605124, '2022-03-25 17:36:53', '2022-03-25 17:36:53'),
(181, 'nabeel@pixelpk.com', 360218, '2022-03-25 17:36:56', '2022-03-25 17:36:56'),
(182, 'nabeel@pixelpk.com', 101153, '2022-03-25 17:36:58', '2022-03-25 17:36:58'),
(183, 'nabeel@pixelpk.com', 293516, '2022-03-25 17:37:11', '2022-03-25 17:37:11'),
(184, 'nabeel@pixelpk.com', 753911, '2022-03-25 17:37:15', '2022-03-25 17:37:15'),
(185, 'nabeel@pixelpk.com', 256067, '2022-03-25 17:37:19', '2022-03-25 17:37:19'),
(186, 'nabeel@pixelpk.com', 462135, '2022-03-25 17:37:23', '2022-03-25 17:37:23'),
(187, 'nabeel@pixelpk.com', 943140, '2022-03-25 17:37:26', '2022-03-25 17:37:26'),
(188, 'nabeel@pixelpk.com', 715023, '2022-03-25 17:37:51', '2022-03-25 17:37:51'),
(189, 'nabeel@pixelpk.com', 605075, '2022-03-26 12:42:54', '2022-03-26 12:42:54'),
(190, 'nabeel@pixelpk.com', 196489, '2022-03-26 12:42:58', '2022-03-26 12:42:58'),
(191, 'nabeel@pixelpk.com', 653279, '2022-03-26 12:43:02', '2022-03-26 12:43:02'),
(192, 'nabeel@pixelpk.com', 919496, '2022-03-26 12:43:18', '2022-03-26 12:43:18'),
(193, 'nabeel@pixelpk.com', 290807, '2022-03-26 12:43:18', '2022-03-26 12:43:18'),
(194, 'nabeel@pixelpk.com', 220742, '2022-03-26 12:43:22', '2022-03-26 12:43:22'),
(195, 'nabeel@pixelpk.com', 511333, '2022-03-26 12:43:23', '2022-03-26 12:43:23'),
(196, 'nabeel@pixelpk.com', 667685, '2022-03-26 12:43:26', '2022-03-26 12:43:26'),
(197, 'nabeel@pixelpk.com', 900258, '2022-03-26 12:43:27', '2022-03-26 12:43:27'),
(198, 'nabeel@pixelpk.com', 874173, '2022-03-26 12:43:31', '2022-03-26 12:43:31'),
(199, 'nabeel@pixelpk.com', 495321, '2022-03-26 12:43:36', '2022-03-26 12:43:36'),
(200, 'nabeel@pixelpk.com', 604146, '2022-03-26 12:43:40', '2022-03-26 12:43:40'),
(201, 'nabeel@pixelpk.com', 378935, '2022-03-26 12:43:40', '2022-03-26 12:43:40'),
(202, 'nabeel@pixelpk.com', 961254, '2022-03-26 12:43:44', '2022-03-26 12:43:44'),
(203, 'nabeel@pixelpk.com', 984698, '2022-03-26 12:45:27', '2022-03-26 12:45:27'),
(204, 'nabeel@pixelpk.com', 886583, '2022-03-26 12:45:34', '2022-03-26 12:45:34'),
(205, 'nabeel@pixelpk.com', 680442, '2022-03-26 12:45:41', '2022-03-26 12:45:41'),
(206, 'nabeel@pixelpk.com', 627183, '2022-03-26 12:45:50', '2022-03-26 12:45:50'),
(207, 'nabeel@pixelpk.com', 334275, '2022-03-26 12:46:00', '2022-03-26 12:46:00'),
(208, 'nabeel@pixelpk.com', 465309, '2022-03-26 12:46:07', '2022-03-26 12:46:07'),
(209, 'nabeel@pixelpk.com', 452250, '2022-03-26 12:46:53', '2022-03-26 12:46:53'),
(210, 'nabeel@pixelpk.com', 370889, '2022-03-26 16:40:18', '2022-03-26 16:40:18'),
(211, 'nabeel@pixelpk.com', 330102, '2022-03-26 16:40:24', '2022-03-26 16:40:24'),
(212, 'nabeel@pixelpk.com', 288101, '2022-03-26 16:40:28', '2022-03-26 16:40:28'),
(213, 'nabeel@pixelpk.com', 272920, '2022-03-26 16:40:41', '2022-03-26 16:40:41'),
(214, 'nabeel@pixelpk.com', 642430, '2022-03-26 16:40:46', '2022-03-26 16:40:46'),
(215, 'nabeel@pixelpk.com', 595382, '2022-03-26 16:40:49', '2022-03-26 16:40:49'),
(216, 'nabeel@pixelpk.com', 875327, '2022-03-26 16:42:42', '2022-03-26 16:42:42'),
(217, 'nabeel@pixelpk.com', 603083, '2022-03-26 16:42:48', '2022-03-26 16:42:48'),
(218, 'nabeel@pixelpk.com', 362605, '2022-03-26 18:09:41', '2022-03-26 18:09:41'),
(219, 'nabeel@pixelpk.com', 692588, '2022-03-26 18:09:46', '2022-03-26 18:09:46'),
(220, 'nabeel@pixelpk.com', 451701, '2022-03-26 18:10:03', '2022-03-26 18:10:03'),
(221, 'nabeel@pixelpk.com', 314468, '2022-03-26 18:10:09', '2022-03-26 18:10:09'),
(222, 'nabeel@pixelpk.com', 340711, '2022-03-26 18:10:19', '2022-03-26 18:10:19'),
(223, 'nabeel@pixelpk.com', 660299, '2022-03-26 19:56:24', '2022-03-26 19:56:24'),
(224, 'nabeel@pixelpk.com', 728129, '2022-03-26 19:56:28', '2022-03-26 19:56:28'),
(225, 'nabeel@pixelpk.com', 276673, '2022-03-26 19:56:44', '2022-03-26 19:56:44'),
(226, 'nabeel@pixelpk.com', 847134, '2022-03-26 19:56:49', '2022-03-26 19:56:49'),
(227, 'nabeel@pixelpk.com', 500807, '2022-03-26 19:56:58', '2022-03-26 19:56:58'),
(229, 'nabeel@pixelpk.com', 466778, '2022-04-17 07:28:48', '2022-04-17 07:28:48'),
(230, 'nabeel@pixelpk.com', 432672, '2022-04-17 07:28:53', '2022-04-17 07:28:53'),
(231, 'nabeel@pixelpk.com', 310246, '2022-04-17 07:28:56', '2022-04-17 07:28:56'),
(232, 'nabeel@pixelpk.com', 120038, '2022-04-17 07:29:19', '2022-04-17 07:29:19'),
(233, 'nabeel@pixelpk.com', 426748, '2022-04-17 07:29:25', '2022-04-17 07:29:25'),
(234, 'nabeel@pixelpk.com', 842889, '2022-04-17 07:29:30', '2022-04-17 07:29:30'),
(235, 'nabeel@pixelpk.com', 241295, '2022-04-17 07:29:35', '2022-04-17 07:29:35'),
(236, 'nabeel@pixelpk.com', 161509, '2022-04-17 07:29:39', '2022-04-17 07:29:39'),
(237, 'nabeel@pixelpk.com', 590403, '2022-04-17 07:29:45', '2022-04-17 07:29:45'),
(238, 'nabeel@pixelpk.com', 231500, '2022-04-17 07:30:24', '2022-04-17 07:30:24'),
(239, 'nabeel@pixelpk.com', 871686, '2022-04-25 16:55:07', '2022-04-25 16:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nabeeliqbal03@gmail.com', '$2y$10$0ZtBmMMJLtDrtMNMH/LrK.TNHqfCQSTkxR.MADCp3lgTa1W3kxs0.', '2021-08-28 05:46:13'),
('nabeel@pixelpk.com', '$2y$10$/Kn2keUtvIToKZbVYkAbLuvCkGrX15M0UCG4wwSgS4kv.euwOVtVK', '2021-08-28 05:48:07');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `sub_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sub_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `sub_type`, `sub_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Monthly', '7940464', 0, '2022-02-08 06:00:27', '2022-02-08 12:00:27'),
(2, 39, 'Monthly', '7949751', 1, '2022-02-04 13:35:04', '2022-02-04 13:35:04'),
(3, 39, 'Yearly', '7949768', 1, '2022-02-04 14:17:28', '2022-02-04 14:17:28'),
(4, 14, 'Monthly (25.99$)', '7949837', 1, '2022-02-04 17:02:57', '2022-02-04 17:02:57'),
(5, 47, 'Monthly (25.99$)', '7949845', 1, '2022-02-04 17:33:11', '2022-02-04 17:33:11'),
(6, 48, 'Monthly (25.99$)', '7949859', 1, '2022-02-04 17:53:08', '2022-02-04 17:53:08'),
(7, 37, 'Monthly (25.99$)', '7954058', 1, '2022-02-08 04:49:50', '2022-02-08 04:49:50'),
(8, 1, 'Monthly (25.99$)', '7994106', 1, '2022-03-07 20:00:00', '2022-03-07 20:00:00'),
(9, 58, 'Monthly (25.99$)', '7999243', 1, '2022-03-09 18:11:34', '2022-03-09 18:11:34'),
(10, 58, 'Monthly (25.99$)', '7999368', 1, '2022-03-09 19:15:46', '2022-03-09 19:15:46'),
(11, 58, 'Monthly (25.99$)', '7999369', 1, '2022-03-09 19:16:32', '2022-03-09 19:16:32'),
(12, 59, 'Monthly (25.99$)', '7999454', 1, '2022-03-09 19:40:14', '2022-03-09 19:40:14'),
(13, 59, 'Monthly (25.99$)', '7999495', 1, '2022-03-09 19:46:49', '2022-03-09 19:46:49'),
(14, 39, 'Monthly', '7999512', 1, '2022-03-09 19:49:11', '2022-03-09 19:49:11'),
(15, 39, 'Monthly', '7999518', 1, '2022-03-09 19:50:00', '2022-03-09 19:50:00'),
(16, 39, 'Monthly', '7999549', 1, '2022-03-09 19:54:15', '2022-03-09 19:54:15'),
(17, 60, 'Monthly', '7999571', 1, '2022-03-09 19:59:03', '2022-03-09 19:59:03'),
(18, 60, 'Monthly', '7999572', 1, '2022-03-09 19:59:27', '2022-03-09 19:59:27'),
(19, 59, 'Monthly (25.99$)', '7999576', 1, '2022-03-09 20:00:40', '2022-03-09 20:00:40'),
(20, 61, 'Monthly (25.99$)', '7999602', 1, '2022-03-09 20:14:51', '2022-03-09 20:14:51'),
(21, 61, 'Monthly (25.99$)', '7999613', 1, '2022-03-09 20:18:55', '2022-03-09 20:18:55'),
(22, 61, 'Monthly', '7999615', 1, '2022-03-09 20:19:58', '2022-03-09 20:19:58'),
(23, 61, 'Monthly', '8001198', 1, '2022-03-10 11:46:53', '2022-03-10 11:46:53'),
(24, 61, 'Monthly 45456', '8001199', 1, '2022-03-10 11:47:00', '2022-03-10 11:47:00'),
(25, 61, 'Monthly', '8001200', 1, '2022-03-10 11:47:15', '2022-03-10 11:47:15'),
(26, 61, 'Monthly', '8001202', 1, '2022-03-10 11:50:01', '2022-03-10 11:50:01'),
(27, 63, 'Monthly (25.99$)', '8001203', 1, '2022-03-10 11:50:27', '2022-03-10 11:50:27'),
(28, 63, 'Monthly (25.99$)', '8001204', 1, '2022-03-10 11:53:36', '2022-03-10 11:53:36'),
(29, 63, 'Monthly (25.99$)', '8001205', 1, '2022-03-10 11:54:13', '2022-03-10 11:54:13'),
(30, 61, 'Monthly', '8001210', 1, '2022-03-10 11:57:11', '2022-03-10 11:57:11'),
(31, 65, 'Monthly', '8001212', 1, '2022-03-10 12:01:03', '2022-03-10 12:01:03'),
(32, 66, 'Monthly', '8001214', 1, '2022-03-10 12:02:47', '2022-03-10 12:02:47'),
(33, 68, 'Monthly (25.99$)', '8001218', 1, '2022-03-10 12:19:54', '2022-03-10 12:19:54'),
(34, 70, 'Monthly (25.99$)', '8001221', 1, '2022-03-10 12:26:07', '2022-03-10 12:26:07'),
(35, 71, 'Monthly (25.99$)', '8001225', 1, '2022-03-10 12:34:40', '2022-03-10 12:34:40'),
(36, 72, 'Monthly (25.99$)', '8001229', 1, '2022-03-10 12:40:13', '2022-03-10 12:40:13'),
(37, 74, 'Monthly (25.99$)', '8001368', 1, '2022-03-10 16:14:39', '2022-03-10 16:14:39'),
(38, 40, 'Monthly', '8023523', 1, '2022-03-22 19:56:03', '2022-03-22 19:56:03'),
(39, 78, 'Monthly', '8108932', 1, '2022-04-25 07:21:31', '2022-04-25 07:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percentage` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `user_id`, `name`, `percentage`, `created_at`, `updated_at`) VALUES
(7, 25, 'new tax', 125, '2021-11-29 15:23:35', '2021-11-29 15:23:35'),
(12, 27, 'GST', 10, '2021-12-02 13:25:30', '2021-12-02 13:25:30'),
(15, 42, 'tax', 25, '2021-12-29 12:10:03', '2021-12-29 12:10:03'),
(16, 44, 'sales tax', 30, '2021-12-29 06:49:46', '2021-12-29 12:49:46'),
(18, 17, 'tax', 10, '2021-12-29 14:26:49', '2021-12-29 14:26:49'),
(19, 1, 'with holding tax', 25, '2022-03-25 12:07:26', '2022-03-25 17:07:26'),
(20, 1, 'new tax', 25, '2022-03-25 17:08:11', '2022-03-25 17:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `unconditional_waiver_and_release_on_final_paymenyt`
--

CREATE TABLE `unconditional_waiver_and_release_on_final_paymenyt` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `claimant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_payable_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_effect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unconditional_waiver_and_release_on_final_paymenyt`
--

INSERT INTO `unconditional_waiver_and_release_on_final_paymenyt` (`id`, `user_id`, `client_id`, `invoice_id`, `claimant_name`, `customer_name`, `job_location`, `owner`, `check_owner`, `check_amount`, `check_payable_to`, `document_effect`, `extra_amount`, `signature`, `claimant_title`, `signature_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Nabeel', 'Bilal', 'Lahore', 'Anas', 'Nabeel', '100', 'Anas', 'No', '100', 'Signatures/110220212154596181b3b348470.png', 'Nabeel', '2021-11-02', 1, '2021-11-03 04:54:59', '2021-11-03 04:54:59'),
(2, 1, 1, 2, 'Nabeel', 'Bilal', 'Lahore', 'Anas', 'Nabeel', '100', 'Anas', 'No', '100', 'Signatures/110220212259496181c2e56cdc7.png', 'Nabeel', '2021-01-31', 1, '2021-11-03 05:59:49', '2021-11-03 05:59:49'),
(3, 1, 1, 3, 'Nabeel', 'Bilal', 'Lahore', 'Anas', 'Nabeel', '100', 'Anas', 'No', '100', 'Signatures/110220212301336181c34d635da.png', 'Nabeel', '2021-12-30', 1, '2021-11-03 06:01:33', '2021-11-03 06:01:33'),
(4, 44, 59, 113, 'ABC', 'Rizwan', 'Lahore', 'Me', 'ABS', '3000', 'Rizwan', '990', '00', 'Signatures/1229202107232761cc0cef62bf1.png', 'Estimate', '2021-12-29', 1, '2021-12-29 13:23:27', '2021-12-29 13:23:27');

-- --------------------------------------------------------

--
-- Table structure for table `unconditional_waiver_and_release_on_final_paymenyt_fill`
--

CREATE TABLE `unconditional_waiver_and_release_on_final_paymenyt_fill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_payable_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_effect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unconditional_waiver_and_release_on_progress_paymenyt`
--

CREATE TABLE `unconditional_waiver_and_release_on_progress_paymenyt` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `claimant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `through_date` date NOT NULL,
  `received_progress_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unconditional_waiver_and_release_on_progress_paymenyt`
--

INSERT INTO `unconditional_waiver_and_release_on_progress_paymenyt` (`id`, `user_id`, `client_id`, `invoice_id`, `claimant_name`, `customer_name`, `job_location`, `owner`, `through_date`, `received_progress_amount`, `signature`, `claimant_title`, `signature_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Nabeel', 'Bilal', 'Lahore', 'Anas', '2021-12-31', '100', 'Signatures/110220212202556181b58fa7ba7.png', 'Nabeel', '2021-11-02', 1, '2021-11-03 05:02:55', '2021-11-03 05:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `unconditional_waiver_and_release_on_progress_paymenyt_fill`
--

CREATE TABLE `unconditional_waiver_and_release_on_progress_paymenyt_fill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `through_date` date NOT NULL,
  `received_progress_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `industry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `industry`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nabeel Iqbal', 'nabeel@pixelpk.com', NULL, '$2y$10$.xMbNELhQ0.WXek5IOWmEe1LILDLaNn6Qh9p62WWghChI1hsrTmg6', 'Decking', 'premium', NULL, '2021-08-27 00:36:01', '2022-03-29 10:35:49'),
(2, 'Admin', 'admin@securelien.com', NULL, '$2y$10$tz.H6AHMxs.2aTy1u9b/0.s2TcgvdRJ/9XZKjFfC7AJsqxpDKelKm', 'Decking', 'admin', NULL, '2021-08-27 09:01:53', '2021-08-27 09:01:53'),
(3, 'Nabeel Iqbal', 'nabeeliqbal03@gmail.com', NULL, '$2y$10$s/65WGmuLOOhei2FhnNI2u5CQW.EMO9xefrUrmPMVlylRkRy2909u', 'Decking', 'user', NULL, '2021-08-27 09:02:44', '2021-08-27 09:02:44'),
(4, 'Nabeel Iqbal', 'nabeelsd@pixelpk.com', NULL, '$2y$10$Bn8oyR1kpymKla.fpkDxuuMQltv0bseDdYCz8S2ugxmVPczF0vKwG', 'Decking', 'user', NULL, '2021-08-27 09:03:47', '2021-08-27 09:03:47'),
(5, 'Nabeel Iqbal', 'nabeelresd@pixelpk.com', NULL, '$2y$10$3jiqfVsPazn/bNkviGyfROBQ4fiaO51o0Cped5KeW3x3cuVnjUycK', 'Decking', 'user', NULL, '2021-08-27 09:04:44', '2021-08-27 09:04:44'),
(6, 'Nabeel Iqbal', '2rerkojfdhgf@gmail.com', NULL, '$2y$10$Z46/eEJA45pxCGpB/Q9f0e9CxSOkrC6MOVY7opIvjc8tmDkTnnOZC', 'Decking', 'user', NULL, '2021-08-27 09:06:23', '2021-08-27 09:06:23'),
(7, 'Nabeel Iqbal', '2rerkojfgdhgf@gmail.com', NULL, '$2y$10$5TbG1viHWWCJl/oxMTK.u.v6BSZ8NpFYkY3cGgtRfs94gCgKSmaWa', 'Decking', 'user', NULL, '2021-08-27 09:06:32', '2021-08-27 09:06:32'),
(8, 'Nabeel Iqbal', '2rerkgojfgdhgf@gmail.com', NULL, '$2y$10$adUh8q.uh15TBoZk7.WVreFyt2pzwqR405ws.VissJLB3tTI97ZaG', 'Decking', 'user', NULL, '2021-08-27 09:06:55', '2021-08-27 09:06:55'),
(9, 'Nabeel Iqbal', '2rerkojfsdhgf@gmail.com', NULL, '$2y$10$mjElIbPiscBSaljcg4ESuuMmJ3jBagNkPveaxK5K5i/MqrsQQpM8.', 'Decking', 'user', NULL, '2021-08-27 09:07:37', '2021-08-27 09:07:37'),
(10, 'Nabeel Iqbal', 'cenadod109@spinwinds.com', NULL, '$2y$10$54ucmWexWqlIANW38Yxxm.ZditFP/YXIGhLSqX8FLna121SWSHUwS', 'Decking', 'user', NULL, '2021-08-27 09:08:40', '2021-08-27 09:08:40'),
(11, 'Nabeel Iqbal', 'cenadod1e09@spinwinds.com', NULL, '$2y$10$F3S/Ui1aI/1z5Z7cIlB2VeoAgP4uiSIePUzW0TIasdXYSahR/U0X.', 'Decking', 'user', NULL, '2021-08-27 09:11:28', '2021-08-27 09:11:28'),
(12, 'Nabeel Iqbal', 'nabeel323@pixelpk.com', NULL, '$2y$10$K6v5wz5bX4pcbghgec1GSOFpxDRBQSXr87//V7iE9d0tfmyFAiKQm', 'Decking', 'user', NULL, '2021-08-27 09:12:44', '2021-08-27 09:12:44'),
(13, 'Bilal', 'test@pixelpk.com', NULL, '$2y$10$ACwBA3pKKXdzjsYowHfb.uAtVoUWCzSad6AkMQJYE34TYye9/Rfl2', 'Decking', 'user', NULL, '2021-09-22 01:56:56', '2021-09-22 01:56:56'),
(14, 'raheel', 'raheel@pixelpk.com', NULL, '$2y$10$MQCQAPm8.8D7Bxo.5NrIV.V.k0hkt7KOOPDZjkvkZ9DV.MTs.jYNy', 'Decking', 'premium', NULL, '2021-11-12 16:35:08', '2022-02-04 17:02:57'),
(15, 'raheel khan', 'raheellllllllllk740@gmail.com', NULL, '$2y$10$/PvVQJDCaVl4St/FmEOSvuWCXTByrWoTzijXW3ExNhCcWgSMa9Jdq', 'Home Builder', 'user', NULL, '2021-11-12 17:14:36', '2021-11-12 17:14:36'),
(16, 'raheel khan', 'raheelkjkjhxkjx740@gmail.com', NULL, '$2y$10$1Hob3GQzl7cl6Q9YIpU2jeu1RbSD2RryMGJm1hz9tHmACMyZWbH6O', 'Electrical', 'user', NULL, '2021-11-12 17:30:37', '2021-11-12 17:30:37'),
(17, 'raheel khan', 'raheelk740@gmail.com', NULL, '$2y$10$X5gEPiNPar.nOv3IvAcSAeQwdyFTeZqx5AvWaPgGvt9NZSIBPUawa', 'Electrical', 'user', NULL, '2021-11-12 17:32:43', '2021-12-29 13:58:22'),
(18, 'raheel', 'raheel@pixelpk.com32432', NULL, '$2y$10$cdJSHuF/7YP7saXhfzIbKOvMU2VnZrzfSg4EvtsCCdH1OSCBQl85i', 'Decking', 'user', NULL, '2021-11-12 17:33:18', '2021-11-12 17:33:18'),
(19, 'raheel khan', 'raheelk7fgffd40@gmail.com', NULL, '$2y$10$a7Iw.1T28RqfK3tgeBnr0OdSF.CRVJq40mEikn05tQ.OOdwLY5r4O', 'Electrical', 'user', NULL, '2021-11-12 17:35:15', '2021-11-12 17:35:15'),
(20, 'raheel khan', 'rahdfdeelk7fgffd40@gmail.com', NULL, '$2y$10$xNV1d9tVv.Ba3I15kYknBeFReh9ZXPCqpJ7uIk/uwYMi7sRG6YDxS', 'Electrical', 'user', NULL, '2021-11-12 17:36:42', '2021-11-12 17:36:42'),
(21, 'Hamza Hussain', 'hamzaussaid9@gmail.com', NULL, '$2y$10$GB8EclOHMmU.aPUKz0cAyuUm2FCZhsTe1V7uE9RHE91zA6CToP5LO', 'Electrical', 'user', NULL, '2021-11-12 17:39:10', '2021-11-17 16:43:30'),
(22, 'raheel khan', 'sddwddd@gmail.com', NULL, '$2y$10$0UnPcL6fyjYDWIzqJu.1xe0tcyN2KJFH/WzIxB4k0ov0Q5WX8J1iO', 'Electrical', 'user', NULL, '2021-11-12 17:40:37', '2021-11-12 17:40:37'),
(23, 'raheel', 'raheel@pixelpk.com32432343', NULL, '$2y$10$YPQa73IWmkfCAKpL3tyML.XOy/3kZTVGbnexHzWLT6ZFVxMS.WKQK', 'Decking', 'user', NULL, '2021-11-12 17:41:04', '2021-11-12 17:41:04'),
(24, 'raheel khan', 'sdd1wddd@gmail.com', NULL, '$2y$10$7BVvnzPKdeUHNVo7Jg5Gd.0NRvJi7aXpkUHc9VkLROW9Kmb4heMIW', 'Electrical', 'user', NULL, '2021-11-12 17:51:44', '2021-11-12 17:51:44'),
(25, 'ali', 'ali@gmail.com', NULL, '$2y$10$Lx2e2EJx9.cQAtzWVxnkUOB5f9ONfwQLXRtVfhKWPOTM/87GfJ4f6', 'Decking', 'user', NULL, '2021-11-29 12:33:22', '2021-11-29 12:33:22'),
(26, 'john', 'john@gmail.com', NULL, '$2y$10$k2uo17MC9HgHLfFg3J3t0e9BhpYB5nhVRUt2tGGPqnUAsMFj5WwLm', 'Select Industry', 'user', NULL, '2021-12-01 13:13:09', '2021-12-01 13:13:09'),
(27, 'Rizwan', 'rizwanakh77@gmail.com', NULL, '$2y$10$XQ5uj6mmGu0E.APbwge5POyTdQhqdv1Db/0HF.w91icIGOEAJTH3K', 'Select Industry', 'user', NULL, '2021-12-02 12:13:54', '2021-12-02 13:27:37'),
(28, 'salam', 'rizwanakhtar2491@gmail.com', NULL, '$2y$10$wrz28jIWxCyLArvYvMMvc.x4hmF4oYkDSlnFZ56NdW/jjYRTGcsTe', 'Select Industry', 'user', NULL, '2021-12-02 12:15:25', '2021-12-02 12:15:25'),
(29, 'rizwan', 'rizwanakhtar249@gmail.com', NULL, '$2y$10$NXsZvxvLl5YtFdsDjMZWGu9fSL2rFsIxCr3YvqMDdbvQtrBreHPMe', 'Select Industry', 'user', NULL, '2021-12-02 12:24:09', '2021-12-02 12:24:09'),
(30, 'aaaaa', 'rah@gmail.com', NULL, '$2y$10$jrRsU4w1d4MMs3BWDOBZzeE3jw/cJjtfpWWo9YvyxBjJmJQQsevB.', 'Select Industry', 'user', NULL, '2021-12-02 12:48:31', '2021-12-02 12:48:31'),
(31, 'joh', 'john1@gmail.com', NULL, '$2y$10$1kqDKDRXw1z.i7kuSAReFe1lePvTxmOZ365JYAYXRlwtCzOWaeuQa', 'Select Industry', 'user', NULL, '2021-12-02 13:35:38', '2021-12-02 13:35:38'),
(32, 'ggggg', 'dddd@ddd.vv', NULL, '$2y$10$I8843y.ngbQwEnVaqWUykurLewS8wj5RAeBHWRdX2q9BJ3vLfGFQW', 'Select Industry', 'user', NULL, '2021-12-02 14:19:10', '2021-12-02 14:19:10'),
(33, 'ggg', 'gg@ff.bb', NULL, '$2y$10$QzHL23pWHLV6iq3kMnp5M.b5TvyRz83pylaycmaVA2FAxnboSVdFe', 'Select Industry', 'user', NULL, '2021-12-02 14:23:20', '2021-12-02 14:23:20'),
(34, 'test', 'test-ing@gmail.com', NULL, '$2y$10$uPYlJ.uULpaSYXnU9HMyOOjTZneAFWNSbjJ9X4qNSkzUGSYxkVSIu', 'Select Industry', 'user', NULL, '2021-12-03 12:14:54', '2021-12-03 12:14:54'),
(35, 'testit', 'testfinal@gmail.com', NULL, '$2y$10$Fy6xucozvIPOXmx82YrOz.8RTxVXDZlwZUJJxhMXwwVjl3V7nEFDS', 'Select Industry', 'user', NULL, '2021-12-03 12:15:21', '2021-12-03 12:15:21'),
(36, 'jjj', 'jjj@gmail.com', NULL, '$2y$10$WuJEGlSNJt3XBZkPTuacLe8BNJawTx5v3yMxOhNTf1LU7yn8fXWDu', 'Select Industry', 'user', NULL, '2021-12-03 12:45:53', '2021-12-03 12:45:53'),
(37, 'Ramnik Luthra', 'ramnikluthra@gmail.com', NULL, '$2y$10$ZbBPphemMr0qrCbVUwbMhuPR23pAvLnGt7LrOVgTqslGCsUI5vfea', 'Fencing', 'premium', NULL, '2021-12-13 10:47:17', '2022-02-08 04:49:50'),
(38, 'Ahmad', 'ahmad@pixelpk.com', NULL, '$2y$10$FQ574g2xLNqknrmg5DzMkuRjcTIDH.0bf8Z702TdcG7IvfEaLcCcq', 'HVAC', 'user', NULL, '2021-12-13 11:34:50', '2021-12-13 11:34:50'),
(39, 'farhan', 'farhan@pixelpk.com', NULL, '$2y$10$6BPziU6wy4FBrqtKTkPIsOrXAv9pSBQJcJ41mp3S4/sj4wpLuURGW', 'Industry', 'premium', NULL, '2021-12-15 13:52:38', '2022-02-04 13:35:04'),
(40, 'Tim Sadowski', 'interiorestorations@yahoo.com', NULL, '$2y$10$iPCw3dqG8cFBe35/QFlmSOGCWaqugKzpqpeYWKzt82p2fpuAFDCE.', 'Drywall', 'premium', NULL, '2021-12-17 00:29:38', '2022-03-26 23:20:24'),
(41, 'ramneek luthra', 'ramnik@websquareinfotech.com', NULL, '$2y$10$9DDnU6wtUCZ9BrrpWTb0E.EHs5T/scuLkVn8RrjcMUHAWO7ORffjK', 'Select Industry', 'user', NULL, '2021-12-24 14:47:36', '2021-12-24 14:47:36'),
(42, 'john doe', 'john12@gmail.com', NULL, '$2y$10$/depcDuJRrxGmh5tCxF34eo36bRxQxzDa7PZhmepqyoe0OlCQp8.6', 'Select Industry', 'user', NULL, '2021-12-28 13:55:26', '2021-12-28 13:55:26'),
(43, 'Rita Samuel', 'americanreserveusa@gmail.com', NULL, '$2y$10$.UuaVHCqpY2w1YLHzLeKMu2YjLbKKUvvAWC88my0ezDxBCHxCm4Zq', 'General Contracting', 'user', NULL, '2021-12-28 13:59:23', '2021-12-28 13:59:23'),
(44, 'Rizwan', 'rizwanakhtar2490@gmail.com', NULL, '$2y$10$U6hgat69SHy/5mzuOJD19.OfsR6LpqvbvhuZ5NF8IvrS9/HYABuHm', 'Select Industry', 'user', NULL, '2021-12-29 12:22:29', '2021-12-29 19:09:38'),
(45, 'rita samuel', 'ritasamuelluthra@gmail.com', NULL, '$2y$10$VYLw.aXwqvHMJOkiMuvlBORd7jWrfYXzftGsE/yKu9Q.antqH/t7y', 'Select Industry', 'user', NULL, '2021-12-31 13:38:06', '2021-12-31 13:38:06'),
(46, 'farhan32453', 'farhanwer@pixelpk.com', NULL, '$2y$10$eW1fFYDUSIpjHK.BPvJEkOfNGh7OwLJEomoaaHvM0jNmJ.9PHCyr6', 'Industry', 'user', NULL, '2022-02-04 14:27:02', '2022-02-04 14:27:02'),
(47, 'touseef ahmed', 'touseef@gmail.com', NULL, '$2y$10$5daQVZ3iQqcFQs/GOTdjCOodEQPwaLlfx1tlvjTymf.K5kwf.Eot2', 'Select Industry', 'premium', NULL, '2022-02-04 17:10:21', '2022-02-04 17:33:11'),
(48, 'john', 'john56@gmail.com', NULL, '$2y$10$5fynzT9kTNXYrAj4MAau1.V8yVKpd96xNSG6P1QYag4.81LVj3PES', 'Select Industry', 'premium', NULL, '2022-02-04 17:51:02', '2022-02-04 17:53:08'),
(49, 'Owen sadowskiundefined', 'sadowskiowen@yahoo.com', NULL, '$2y$10$Snw2NwolaqOK1E43T0YRnOPSFUpSQp0xuwaQXEcptxyL1ynb2bsQK', 'Handyman', 'user', NULL, '2022-02-14 03:02:31', '2022-02-14 03:02:31'),
(50, 'Stephane', 'stephane9323@gmail.com', NULL, '$2y$10$VPjfS5c45VEQ7n0fFEkSDOU29ybzm7iy0OKrpgwKHBXFNUFMMUt3.', 'Select Industry', 'user', NULL, '2022-02-18 15:07:09', '2022-02-18 15:07:09'),
(51, 'rita samuelundefined', 'websquareinfotech@gmail.com', NULL, '$2y$10$E.CPTG3PK.69rdv4doXkMOU4sHncNM3Q4KWr5w.cuiVeKEMtcjajW', 'Windows and Decors', 'user', NULL, '2022-02-22 14:27:18', '2022-02-22 14:27:18'),
(52, 'Mike Graf', 'mike@mikegsolutions.com', NULL, '$2y$10$F0GTzOGzpWboi0.wGfdFQOmtkKSVAIdAuxKzl7a5fUGku/pkJqKHu', 'Select Industry', 'user', NULL, '2022-03-01 22:24:42', '2022-03-01 22:24:42'),
(53, 'raheel', 'raheel123@pixelpk.com', NULL, '$2y$10$iT2uk6SMeyKdT4g8rJvsnOSSCO6p8NaBQe7irq2xXMD2hwOxHWd9m', 'Select Industry', 'user', NULL, '2022-03-02 01:16:47', '2022-03-02 01:16:47'),
(54, '50/50 Sewer and Drain', '5050sewerdrainllc@gmail.com', NULL, '$2y$10$VYsbA4n8cK6TL7JrPRjN/eZoqrs1AldKeZTMhevLHUfjGl3o6fhee', 'Select Industry', 'user', NULL, '2022-03-07 00:58:05', '2022-03-07 00:58:05'),
(55, '50/50 Sewer and Drain', 'marlonjohnson78@gmail.com', NULL, '$2y$10$1LDVFmEI9pDxpj.l6hxYCOt4z0uUPcOmxnx53miho377lvhIPlAMa', 'Select Industry', 'user', NULL, '2022-03-07 00:58:48', '2022-03-07 00:58:48'),
(56, 'hamza', 'hamza@gmail.com', NULL, '$2y$10$xB2vtsqtjld/NMrCEvW9NOrprYpFu5OeYFfVH2oVdB/BzrxoYsXF2', 'Select Industry', 'user', NULL, '2022-03-07 19:54:43', '2022-03-07 19:54:43'),
(57, 'beru', 'beru@gmail.com', NULL, '$2y$10$UMwXwwG99uP25fycezaOb..BL/Ym0ydY/HARVsirQhkKyto/6y8Di', 'Select Industry', 'user', NULL, '2022-03-07 20:00:52', '2022-03-07 20:00:52'),
(58, 'humza', 'humza@gmail.com', NULL, '$2y$10$Qiu83KaceMT8jbSRTyfii.4eto5kjGwzK9gOHb8zhkBkKJjcf0K8y', 'Select Industry', 'premium', NULL, '2022-03-09 18:05:03', '2022-03-09 18:11:34'),
(59, 'beruu', 'beruu@gmail.com', NULL, '$2y$10$QQ3SdATI5g561I1TGu40Ce6IIUsBON1a1f/Ll.GXoD5IxMncIYEsS', 'Select Industry', 'premium', NULL, '2022-03-09 19:14:15', '2022-03-09 19:40:14'),
(60, 'raheel', 'raheel@gmail.com', NULL, '$2y$10$a0aDVLm6h1KdR9wIBCFaTu2.9I6FHTxKOzpAVFktJH0DQqpsNYa4.', 'Select Industry', 'premium', NULL, '2022-03-09 19:39:32', '2022-03-09 19:59:03'),
(61, 'phultro', 'phultro@gmail.com', NULL, '$2y$10$E2ykZNqfFWn7qaPPIZ5V9u05KiALxH68RENvTCMb/CD1XwRC2mp.m', 'Select Industry', 'premium', NULL, '2022-03-09 20:00:07', '2022-03-09 20:14:51'),
(62, 'dasso', 'daso@gmail.com', NULL, '$2y$10$4b6Wgp0Mcx7wl1y/jbJJD.HWDw0fxQf6XrOL.1wQV9.udUIpmHWw6', 'Select Industry', 'user', NULL, '2022-03-09 20:18:23', '2022-03-09 20:18:23'),
(63, 'moose', 'moose@gmail.com', NULL, '$2y$10$3sw7FZWoiec.GqUTkPo9yuXFYchVZsyqrUZj3ny0WILK63m1VcbFa', 'Select Industry', 'premium', NULL, '2022-03-10 11:35:28', '2022-03-10 11:50:27'),
(64, 'loose', 'loose@gmail.com', NULL, '$2y$10$E/DPAtMHlFI8KQvzAgPWi..zenSJgWkm7faKdSRVQhPGuZcyqO95.', 'Select Industry', 'user', NULL, '2022-03-10 11:53:01', '2022-03-10 11:53:01'),
(65, 'test', 'test@gmail.com', NULL, '$2y$10$4JnuQ7fv9RnLAY1pvKWgy.T1TdM0bmmMwooqlfYD6hR/UZ88MVIcW', 'Industry', 'premium', NULL, '2022-03-10 11:55:22', '2022-03-10 12:01:03'),
(66, 'adeel', 'adeel@gmail.com', NULL, '$2y$10$K7XX8.dr8bBojZRK.bJNjO1IzThavXH/.3G/YzYteGxC58gBf4BcS', 'Industry', 'premium', NULL, '2022-03-10 12:01:47', '2022-03-10 12:02:47'),
(67, 'new', 'new@gmail.com', NULL, '$2y$10$cC6TcsI6OQYbxX1FBzln/umzMJUXIXHBmGaggnfK7iJxwoV6sIBAW', 'Select Industry', 'user', NULL, '2022-03-10 12:06:52', '2022-03-10 12:06:52'),
(68, 'asad', 'asad@gmail.com', NULL, '$2y$10$vl/ajyXO.qLJoq58.py2kOIL5qqUjH6j8osQ57vI0v6AfhBTW.fN6', 'Select Industry', 'premium', NULL, '2022-03-10 12:08:30', '2022-03-10 12:19:54'),
(69, 'newtest', 'newtest@gmail.com', NULL, '$2y$10$HDH1FeQjt/z5crZnQkpgGOly9c/GxurmEZwEoaHfobhgO.xP8gmIq', 'Select Industry', 'user', NULL, '2022-03-10 12:17:55', '2022-03-10 12:17:55'),
(70, 'zameer', 'zameer@gmail.com', NULL, '$2y$10$u2zQ910g2Sk8ldau3h95Su3EZAqnXF6cn0YPpxRuyyafIWcq0uv4u', 'Select Industry', 'premium', NULL, '2022-03-10 12:24:09', '2022-03-10 12:26:07'),
(71, 'haseeb', 'haseeb@gmail.com', NULL, '$2y$10$S/6UU9v9LBoFpkzcT9OmSuCblDKxLipPuvjC6IWIX98zbtobAoetq', 'Select Industry', 'premium', NULL, '2022-03-10 12:32:55', '2022-03-10 12:34:40'),
(72, 'mosa', 'mosa@gmail.com', NULL, '$2y$10$9K9/bQc4KkfxJCXTQcNz8uuvbVr7S2dooMbHa0XlOOX9iu2hlqQwy', 'Select Industry', 'premium', NULL, '2022-03-10 12:39:39', '2022-03-10 12:48:17'),
(73, 'hamzaa', 'hanzaa@gmail.com', NULL, '$2y$10$XIhF5BxUxwLbXEnyJ4RXpO84a.vKEo1N12FjsNOBwfgt4k8BWbeW2', 'Select Industry', 'user', NULL, '2022-03-10 16:02:46', '2022-03-10 16:02:46'),
(74, 'farhan', 'farhan@gmail.com', NULL, '$2y$10$qXRykjDOd3fg8VNk2Tqvzem7yxwZNI.2tEV1LxHa/CM8jnXWSbaGy', 'Select Industry', 'premium', NULL, '2022-03-10 16:04:27', '2022-03-10 16:14:39'),
(75, 'Mr Johnundefined', 'shammanahar907@gmail.com', NULL, '$2y$10$ClmfPoWgzRS7UuqlAk23yemxFd8THsBdeB2S95.U8XqKRdMHHQO9W', 'Painting', 'user', NULL, '2022-03-19 22:37:05', '2022-03-19 22:37:05'),
(76, 'John doe', 'mobilealarms@yahoo.com', NULL, '$2y$10$YchPW1H6X.Hu/.eOKoxohOzA4ZZrwJLQ3P/nNAF0jNtMoURjk6CHu', 'Select Industry', 'user', NULL, '2022-03-20 00:39:25', '2022-03-20 00:39:25'),
(77, 'test', 'nathannorth2005@gmail.com', NULL, '$2y$10$8uqslnCbgPfTY2P9uprKMOlRwydfeah9eDtQwYzRwNiRmCZvyOlLq', 'Select Industry', 'user', NULL, '2022-03-26 19:00:02', '2022-03-26 19:00:02'),
(78, 'Martie Lopezundefined', 'marthawebb5@gmail.com', NULL, '$2y$10$5W1WEslu64kj1xSxL1vUteum6hxO/VJ53SffJuhWNTkvszladig4S', 'Home Builder', 'premium', NULL, '2022-04-25 07:16:57', '2022-04-25 07:26:01'),
(79, 'mitra kor', 'mitrapux@gmail.com', NULL, '$2y$10$0N.YJ1tHCYPnUskuyeZC4.wJ/YlISbg051/Wesa5JcKZ1.vaKVOju', 'Select Industry', 'user', NULL, '2022-05-27 00:55:41', '2022-05-27 00:55:41'),
(80, 'mitra kor', 'kordesignbuild@gmail.com', NULL, '$2y$10$NiDWOqfa52ATHo2gjHCzkORH0j7.t0STEOp4zK8kaq0oWAzRMkWIS', 'Select Industry', 'user', NULL, '2022-05-27 00:56:53', '2022-05-27 00:56:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ca_preliminary_notice`
--
ALTER TABLE `ca_preliminary_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ca_preliminary_notice_fill`
--
ALTER TABLE `ca_preliminary_notice_fill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conditional_waiver_and_release_on_final_paymenyt`
--
ALTER TABLE `conditional_waiver_and_release_on_final_paymenyt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conditional_waiver_and_release_on_final_paymenyt_fill`
--
ALTER TABLE `conditional_waiver_and_release_on_final_paymenyt_fill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conditional_waiver_and_release_on_progress_paymenyt`
--
ALTER TABLE `conditional_waiver_and_release_on_progress_paymenyt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conditional_waiver_and_release_on_progress_paymenyt_fill`
--
ALTER TABLE `conditional_waiver_and_release_on_progress_paymenyt_fill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_forms`
--
ALTER TABLE `contract_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_documents`
--
ALTER TABLE `estimate_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_documents`
--
ALTER TABLE `invoice_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_taxes`
--
ALTER TABLE `item_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_web_links`
--
ALTER TABLE `license_web_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unconditional_waiver_and_release_on_final_paymenyt`
--
ALTER TABLE `unconditional_waiver_and_release_on_final_paymenyt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unconditional_waiver_and_release_on_final_paymenyt_fill`
--
ALTER TABLE `unconditional_waiver_and_release_on_final_paymenyt_fill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unconditional_waiver_and_release_on_progress_paymenyt`
--
ALTER TABLE `unconditional_waiver_and_release_on_progress_paymenyt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unconditional_waiver_and_release_on_progress_paymenyt_fill`
--
ALTER TABLE `unconditional_waiver_and_release_on_progress_paymenyt_fill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ca_preliminary_notice`
--
ALTER TABLE `ca_preliminary_notice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ca_preliminary_notice_fill`
--
ALTER TABLE `ca_preliminary_notice_fill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `conditional_waiver_and_release_on_final_paymenyt`
--
ALTER TABLE `conditional_waiver_and_release_on_final_paymenyt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conditional_waiver_and_release_on_final_paymenyt_fill`
--
ALTER TABLE `conditional_waiver_and_release_on_final_paymenyt_fill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conditional_waiver_and_release_on_progress_paymenyt`
--
ALTER TABLE `conditional_waiver_and_release_on_progress_paymenyt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conditional_waiver_and_release_on_progress_paymenyt_fill`
--
ALTER TABLE `conditional_waiver_and_release_on_progress_paymenyt_fill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_forms`
--
ALTER TABLE `contract_forms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `estimate_documents`
--
ALTER TABLE `estimate_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `estimate_items`
--
ALTER TABLE `estimate_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `invoice_documents`
--
ALTER TABLE `invoice_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `item_taxes`
--
ALTER TABLE `item_taxes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license_web_links`
--
ALTER TABLE `license_web_links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `unconditional_waiver_and_release_on_final_paymenyt`
--
ALTER TABLE `unconditional_waiver_and_release_on_final_paymenyt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unconditional_waiver_and_release_on_final_paymenyt_fill`
--
ALTER TABLE `unconditional_waiver_and_release_on_final_paymenyt_fill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unconditional_waiver_and_release_on_progress_paymenyt`
--
ALTER TABLE `unconditional_waiver_and_release_on_progress_paymenyt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `unconditional_waiver_and_release_on_progress_paymenyt_fill`
--
ALTER TABLE `unconditional_waiver_and_release_on_progress_paymenyt_fill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
