-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 02, 2022 at 07:32 AM
-- Server version: 10.2.41-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anasw_securelien`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_work_authorization_fill`
--

CREATE TABLE `additional_work_authorization_fill` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `form_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_date` date NOT NULL,
  `owner_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `existing_contract_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_existing_contract` date NOT NULL,
  `other_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` double NOT NULL,
  `payment_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractor_signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractor_signed_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `change_order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `additional_work_authorization_fill`
--

INSERT INTO `additional_work_authorization_fill` (`id`, `user_id`, `form_no`, `email`, `mobile`, `owner_name`, `owner_phone`, `owner_date`, `owner_address`, `job_name`, `job_no`, `owner_city`, `owner_state`, `other_address`, `existing_contract_no`, `date_of_existing_contract`, `other_city`, `other_state`, `note`, `payment`, `payment_note`, `contractor_signature`, `contractor_signed_date`, `change_order_no`, `created_at`, `updated_at`) VALUES
(2, 1, '902276', 'fepa@mailinator.com', '+923078801559', 'Harding Schmidt', '+1 (124) 404-6621', '2015-12-01', 'Voluptatem modi Nam', 'Axel Dominguez', 'Voluptatum adipisici', 'Pariatur Et est dis', 'Non nihil numquam be', 'Assumenda sed est s', 'Velit ea perspiciati', '1992-03-06', 'Qui laboriosam volu', 'Qui fuga Sint excep', 'Sed illum quia aut', 334234, 'Qui aut velit autem', 'Signatures/060120220630526297079cf2641.png', '2007-05-15', 'Aute deleniti ex arc', '2022-06-01 15:06:27', '2022-06-01 15:06:27');

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ca_preliminary_notice`
--

INSERT INTO `ca_preliminary_notice` (`id`, `user_id`, `client_id`, `invoice_id`, `owner_name`, `owner_address`, `owner_city`, `owner_state`, `owner_zip`, `direct_contractor_name`, `direct_contractor_address`, `direct_contractor_city`, `direct_contractor_state`, `direct_contractor_zip`, `contractor_leader_name`, `contractor_leader_address`, `contractor_leader_city`, `contractor_leader_state`, `contractor_leader_zip`, `other_name`, `other_address`, `other_city`, `other_state`, `other_zip`, `company_name`, `company_address`, `company_license`, `company_phone`, `company_city`, `company_state`, `company_zip`, `company_services`, `property_address`, `property_city`, `property_state`, `property_zip`, `property_apn`, `amount_of`, `contract_name`, `contract_address`, `contract_license`, `contract_phone`, `contract_city`, `contract_state`, `contract_zip`, `prof_provider_name`, `personal_delivery_status`, `prof_name`, `prof_address`, `prof_date`, `prof_time`, `personal_delivery_status_2`, `prof_name_2`, `prof_address_2`, `prof_date_2`, `prof_time_2`, `pursuant_status`, `pursuant`, `signed_date`, `signature`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Islamabad', 'Islamabad', 'Alabama', '1311', 'Web Development', 'Karachi', 'Web Development', '13131212', 'Karachi', 'Alabama', '1311', 'Web Development', 'Karachi', 'Karachi', 'Alabama', '1311', 'Paint', '100', 'Web Development', 'Karachi', '2343232', '21323242', 'Karachi', 'Alabama', '1311', 'Nabeel', 'on', 'Nabeel', 'Lahore', '2021-11-01', '18:55', 'on', 'Ahmad', 'Karachi', '2021-11-20', '18:55', 'on', '32', '2021-11-01', 'Signatures/11022021174845618179fdcb6d3.png', 1, '2021-11-02 08:56:29', '2021-11-02 08:56:29'),
(2, 1, 1, 2, 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Islamabad', 'Islamabad', 'Alabama', '1311', 'Web Development', 'Karachi', 'Web Development', '13131212', 'Karachi', 'Alabama', '1311', 'Web Development', 'Karachi', 'Karachi', 'Alabama', '1311', 'Paint', '100', 'Web Development', 'Karachi', '2343232', '21323242', 'Karachi', 'Alabama', '1311', 'Nabeel', 'on', 'Nabeel', 'Lahore', '2021-11-02', '10:37', 'on', 'Ahmad', 'Karachi', '2021-11-03', '10:36', 'on', '32', '2021-11-08', 'Signatures/1102202117544861817b683e7a2.png', 1, '2021-11-03 00:54:48', '2021-11-03 00:54:48'),
(3, 1, 1, 3, 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Islamabad', 'Islamabad', 'Alabama', '1311', 'Web Development', 'Karachi', 'Web Development', '13131212', 'Karachi', 'Alabama', '1311', 'Web Development', 'Karachi', 'Karachi', 'Alabama', '1311', 'Paint', '100', 'Web Development', 'Karachi', '2343232', '21323242', 'Karachi', 'Alabama', '1311', 'Nabeel', 'on', 'Nabeel', 'Lahore', '2021-11-02', '01:09', 'on', 'Ahmad', 'Karachi', '2021-11-10', '01:10', 'on', '32', '2021-11-16', 'Signatures/1102202118101861817f0a2697b.png', 1, '2021-11-03 01:10:18', '2021-11-03 01:10:18'),
(4, 1, 973621, 454, 'Kathleen Wiley', 'Laborum id temporib', 'Nam autem mollitia a', 'Montana', '65870', 'Callum Ferguson', 'Sit laudantium et', 'Quaerat sit Nam nos', 'Indiana', '24335', 'Alisa Floyd', 'Deserunt dolor minus', 'Sed atque fugit off', 'Missouri', '42184', 'Hamish Clements', 'Doloremque autem dig', 'Qui quisquam volupta', 'Oregon', '23651', 'Stokes Crane Trading', 'Knox Holder Co', 'Monroe and Owen Plc', 'Shields Houston Trading', 'Kim Willis Plc', 'Indiana', 'Lowery and Brooks Trading', 'Wooten and Fletcher Associates', 'Voluptatem eius ill', 'Dolorum in voluptate', 'North Dakota', '21550', 'Vero est minima labo', 'Maxime asperiores co', 'Donovan Lowery', 'Soluta asperiores ve', 'Mollit magni quam al', '+1 (361) 828-8988', 'Vero officiis tempor', 'Arkansas', '53904', 'Nichole White', 'on', 'Amity Hall', 'In facere cum vitae', '1997-02-21', '01:16', 'on', 'Ariana Garza', 'Esse in eiusmod aut', '1977-02-27', '18:02', 'on', 'Modi sed libero cons', '2009-06-26', 'Signatures/05092022133443627918735cadd.png', 1, '2022-05-09 08:34:43', '2022-05-09 08:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `ca_preliminary_notice_fill`
--

CREATE TABLE `ca_preliminary_notice_fill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `form_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ca_preliminary_notice_fill`
--

INSERT INTO `ca_preliminary_notice_fill` (`id`, `user_id`, `form_no`, `email`, `mobile`, `owner_name`, `owner_address`, `owner_city`, `owner_state`, `owner_zip`, `direct_contractor_name`, `direct_contractor_address`, `direct_contractor_city`, `direct_contractor_state`, `direct_contractor_zip`, `contractor_leader_name`, `contractor_leader_address`, `contractor_leader_city`, `contractor_leader_state`, `contractor_leader_zip`, `other_name`, `other_address`, `other_city`, `other_state`, `other_zip`, `company_name`, `company_address`, `company_license`, `company_phone`, `company_city`, `company_state`, `company_zip`, `company_services`, `property_address`, `property_city`, `property_state`, `property_zip`, `property_apn`, `amount_of`, `contract_name`, `contract_address`, `contract_license`, `contract_phone`, `contract_city`, `contract_state`, `contract_zip`, `prof_provider_name`, `personal_delivery_status`, `prof_name`, `prof_address`, `prof_date`, `prof_time`, `personal_delivery_status_2`, `prof_name_2`, `prof_address_2`, `prof_date_2`, `prof_time_2`, `pursuant_status`, `pursuant`, `signed_date`, `signature`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, '965812', 'nabeel@pixelpk.com', '+923078801559', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Islamabad', 'Islamabad', 'Alabama', '1311', 'Web Development', 'Karachi', 'Web Development', '13131212', 'Karachi', 'Alabama', '1311', 'Web Development', 'Karachi', 'Karachi', 'Alabama', '1311', 'Paint', '100', 'Web Development', 'Karachi', '2343232', '21323242', 'Karachi', 'Alabama', '1311', 'Nabeel', 'on', 'Nabeel', 'Lahore', '2021-11-02', '10:37', 'on', 'Ahmad', 'Karachi', '2021-11-03', '10:36', 'on', '32', '2021-11-08', 'Signatures/1102202117544861817b683e7a2.png', 1, '2021-11-03 00:54:48', '2021-11-03 00:54:48'),
(3, 1, '569812', 'nabeel@pixelpk.com', '+923078801559', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Islamabad', 'Islamabad', 'Alabama', '1311', 'Web Development', 'Karachi', 'Web Development', '13131212', 'Karachi', 'Alabama', '1311', 'Web Development', 'Karachi', 'Karachi', 'Alabama', '1311', 'Paint', '100', 'Web Development', 'Karachi', '2343232', '21323242', 'Karachi', 'Alabama', '1311', 'Nabeel', 'on', 'Nabeel', 'Lahore', '2021-11-02', '01:09', 'on', 'Ahmad', 'Karachi', '2021-11-10', '01:10', 'on', '32', '2021-11-16', 'Signatures/1102202118101861817f0a2697b.png', 1, '2021-11-03 01:10:18', '2021-11-03 01:10:18'),
(4, 1, '455444', 'nabeel@pixelpk.com', '+923078801559', 'Arsenio Webb', 'Molestias cupiditate', 'Dicta aute tenetur c', 'Wisconsia', '33435', 'William Browning', 'Consectetur est qui', 'Cum facere repudiand', 'Idaho', '13780', 'Germane Ingram', 'Voluptas dolore perf', 'Quas cumque ut recus', 'New York', '76479', 'Levi Rios', 'Sapiente voluptatibu', 'Delectus dolorem se', 'Idaho', '56938', 'Holt Chang LLC', 'Christensen and Vega Trading', 'Valenzuela Le Co', 'Short Soto Traders', 'Moran and Moreno Trading', 'Alaska', 'Vazquez Macias Co', 'Vargas Fuller Trading', 'Id et at est quod', 'Veritatis iure in ul', 'South Dakota', '95168', 'Ex reprehenderit con', 'Amet illo a ut opti', 'Conan Cohen', 'Architecto atque mol', 'Dolore facere quia q', '+1 (508) 701-8644', 'Eiusmod hic elit in', 'Washington', '80935', 'Kaye Green', 'on', 'Phelan Ball', 'Repudiandae dolor co', '2013-07-25', '23:01', 'on', 'Chelsea Griffith', 'Enim nobis duis face', '2018-05-04', '00:30', 'on', 'Officia tempora amet', '2002-10-25', 'Signatures/0201202220293661f998308d970.png', 1, '2022-02-02 04:29:36', '2022-02-02 04:29:36'),
(5, 1, '932706', 'sisidewico@mailinator.com', '+923078801559', 'Andrew Villarreal', 'Rerum est est offici', 'Blanditiis dolorem e', 'North Carolina', '48673', 'Eve Franco', 'Nulla excepturi et v', 'Reprehenderit iure c', 'Colorado', '65708', 'Daquan Cherry', 'Sint dolorem ea qui', 'Saepe deleniti repre', 'Kansas', '27124', 'Bryar Haney', 'Illum aliquid cum c', 'Quisquam sed repelle', 'Mississippi', '66426', 'Hanson and Ross Traders', 'Ford and Hatfield Traders', 'Duncan Morton LLC', 'Buck and Stanton Associates', 'Melton and Wynn Trading', 'New Jersey', 'Barlow and Davidson Traders', 'Leon and Larson LLC', 'Fugiat velit provid', 'Proident ratione ne', 'Nebraska', '93725', 'Nostrum tenetur corr', 'Sapiente et nihil qu', 'Cally Walls', 'Rerum sed accusamus', 'Excepturi ipsa labo', '+1 (873) 932-4762', 'Totam nisi illum ei', 'Mississippi', '54580', 'Alexandra Sweet', 'on', 'Cameran Mcclure', 'Mollitia eiusmod fug', '1977-12-25', '13:38', 'on', 'Georgia Villarreal', 'Dolor modi aut eos q', '1988-08-31', '20:33', 'on', 'Et in provident odi', '1994-12-27', 'Signatures/0517202212302862839564a1924.png', 1, '2022-05-17 07:30:28', '2022-05-17 07:30:28'),
(6, 1, '123265', 'nabeel@pixelpk.com', '+923078801559', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Karachi', 'Karachi', 'Alabama', '1311', 'Ahmad', 'Islamabad', 'Islamabad', 'Alabama', '1311', 'Web Development', 'Karachi', 'Web Development', '13131212', 'Karachi', 'Alabama', '1311', 'Web Development', 'Karachi', 'Karachi', 'Alabama', '1311', 'Paint', '100', 'Web Development', 'Karachi', '2343232', '21323242', 'Karachi', 'Alabama', '1311', 'Nabeel', 'on', 'Nabeel', 'Lahore', '2021-11-01', '18:55', 'on', 'Ahmad', 'Karachi', '2021-11-20', '18:55', 'on', '32', '2021-11-01', 'Signatures/11022021174845618179fdcb6d3.png', 1, '2022-06-01 15:20:59', '2022-06-01 15:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postel_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `user_id`, `name`, `email`, `mobile`, `other_mobile`, `address`, `address2`, `city`, `state`, `postel_code`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nabeel', 'nabeel@pixelpk.com', '+923078801559', '+923078801559', 'addr', 'addr2', 'lhr', 'punjab', '345345', NULL, '2022-06-01 06:14:29', '2021-11-16 19:12:37'),
(3, 1, 'Umer', 'nabeel@gmail.com', '03067876567', '03067876567', 'Lahore', 'ssss', 'Lahore', 'Lahore', '1122', NULL, '2022-06-01 06:14:29', '2021-11-17 12:15:39'),
(5, 1, 'Ali 333', 'nabeel@pixelpk.com', '03067876567', '03067876567', 'Lahore', 'dddd', 'Lahore', 'Lahore', '1122', 'fcf', '2022-06-01 06:14:29', '2021-11-17 17:01:53'),
(6, 1, 'Nabeelwww bhai. 32333', 'nabeel@gmail.com', '00003078801', '03078801559', 'Lahore', 'ddddd', 'Lahore', 'punjab', '22222', NULL, '2022-06-01 06:14:29', '2021-11-17 17:34:05'),
(11, 1, 'test user', 'test@pixelpk.com', '00000123456', '00000000123', 'test address', 'address 2', 'lhr', 'punjab', '54000', 'test note', '2022-06-01 06:14:29', '2021-11-16 16:52:52'),
(12, 1, 'test user111', 'test111@pixelpk.com', '01234563345', '00012324234', 'test address', NULL, 'Karachi', 'Alabama', '1311', NULL, '2022-06-01 06:14:29', '2021-12-16 00:55:15'),
(13, 1, 'ali', 'ali@gmail.com', '00005826266', '00004825266', 'egg rgrh', 'egfb', 'dbfb', 'fff', '55666', NULL, '2022-06-01 06:14:29', '2021-11-16 18:20:25'),
(14, 1, 'ali', 'ali@gmail.com', '00005826266', '00004825266', 'egg rgrh', 'egfb', 'dbfb', 'fff', '55666', NULL, '2022-06-01 06:14:29', '2021-11-16 18:23:12'),
(15, 1, 'ali', 'ali@gmail.com', '00005826266', '00004825266', 'egg rgrh', 'egfb', 'dbfb', 'fff', '55666', NULL, '2022-06-01 06:14:29', '2021-11-16 18:24:23'),
(16, 1, 'ali', 'ali@gmail.com', '00005826266', '00004825266', 'egg rgrh', 'egfb', 'dbfb', 'fff', '55666', NULL, '2022-06-01 06:14:29', '2021-11-16 18:24:42'),
(17, 1, 'test user111', 'test111@pixelpk.com', '01234563345', '00012324234', 'test address', 'address 2', 'lhr', 'punjab', '54000', NULL, '2022-06-01 06:14:29', '2021-11-16 18:37:45'),
(18, 1, 'ali', 'ali@gmail.com', '00005826266', '00004825266', 'egg rgrh', 'egfb', 'dbfb', 'fff', '55666', NULL, '2022-06-01 06:14:29', '2021-11-16 18:39:14'),
(19, 1, 'dddd', 'ffff@fgg.nnn', '00002255555', '00000055555', 'fffff', 'fffff', 'fffgg', 'ccffff', '34555', NULL, '2022-06-01 06:14:29', '2021-11-16 18:41:28'),
(20, 1, 'test', 'abc@gmail.com', '00003453453', '00034645645', 'addr lhr', 'addr2 isb', 'lhr', 'punjab', '54000', NULL, '2022-06-01 06:14:29', '2021-11-16 18:44:41'),
(21, 1, 'test333', 'abc333@gmail.com', '00034553225', '00003464564', 'addr lhr', 'addr2 isb', 'lhr', 'punjab', '54000', NULL, '2022-06-01 06:14:29', '2021-11-16 18:51:32'),
(22, 1, 'test new', 'abcnew@gmail.com', '00000123456', '00000123456', 'addr lhr', 'addr2 isb', 'lhr', 'punjab', '54000', 'hi', '2022-06-01 06:14:29', '2021-11-16 19:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `county` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`id`, `user_id`, `name`, `phone`, `address`, `city`, `state`, `county`, `postal_code`, `file_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pixelpk', '+923078801559', 'Joher town g1', 'Lahore', 'Lahore', 'Pakistan', '553900', '20211215-105056.1.jpg', '2021-11-25 08:29:16', '2021-12-16 05:50:56');

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conditional_waiver_and_release_on_final_paymenyt`
--

INSERT INTO `conditional_waiver_and_release_on_final_paymenyt` (`id`, `user_id`, `client_id`, `invoice_id`, `claimant_name`, `customer_name`, `job_location`, `owner`, `check_owner`, `check_amount`, `check_payable_to`, `document_effect`, `extra_amount`, `signature`, `claimant_title`, `signature_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Nabeel', 'Bilal', 'Lahore', 'Anas', 'Nabeel', '100', 'Anas', 'No', '100', 'Signatures/110220212042486181a2c8d8305.png', 'Nabeel', '2021-12-31', 1, '2021-11-03 03:42:48', '2021-11-03 03:42:48'),
(2, 1, 727999, 15161, 'Cody Mckee', 'Venus Norman', 'Libero nostrud minim', 'Ut et sint consequat', 'Voluptate qui quis e', 'Minus enim quod proi', 'Nam numquam dignissi', 'Ut enim excepturi co', '454', 'Signatures/0517202211441162838a8b5d1a2.png', 'Officiis tempore po', '1995-08-27', 1, '2022-05-17 06:44:11', '2022-05-17 06:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `conditional_waiver_and_release_on_final_paymenyt_fill`
--

CREATE TABLE `conditional_waiver_and_release_on_final_paymenyt_fill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `form_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conditional_waiver_and_release_on_final_paymenyt_fill`
--

INSERT INTO `conditional_waiver_and_release_on_final_paymenyt_fill` (`id`, `user_id`, `form_no`, `email`, `mobile`, `claimant_name`, `customer_name`, `job_location`, `owner`, `check_owner`, `check_amount`, `check_payable_to`, `document_effect`, `extra_amount`, `signature`, `claimant_title`, `signature_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '165732', 'nabeel@pixelpk.com', '+923078801559', 'Nabeel', 'Bilal', 'Lahore', 'Anas', 'Nabeel', '100', 'Anas', 'No', '100', 'Signatures/110220212042486181a2c8d8305.png', 'Nabeel', '2021-12-31', 1, '2021-11-03 03:42:48', '2021-11-03 03:42:48'),
(2, 1, '967425', 'nabeel@pixelpk.com', '+923078801559', 'Alexander Rivers', 'Indira Beach', 'Autem quidem dolorem', 'Cupidatat est sunt', 'Dolor voluptas minus', 'Nostrum inventore ut', 'Ipsum quod quos reru', 'Aspernatur fuga Min', 'Eaque quo rerum amet', 'Signatures/0201202220152261f994dad6136.png', 'Ipsam ipsum quo sun', '2018-09-08', 1, '2022-02-02 04:15:22', '2022-02-02 04:15:22');

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conditional_waiver_and_release_on_progress_paymenyt`
--

INSERT INTO `conditional_waiver_and_release_on_progress_paymenyt` (`id`, `user_id`, `client_id`, `invoice_id`, `claimant_name`, `customer_name`, `job_location`, `owner`, `through_date`, `check_owner`, `check_amount`, `check_payable_to`, `date_of_waiver`, `amount_of_unpaid_progress_payments`, `signature`, `claimant_title`, `signature_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Nabeel', 'Bilal', 'Lahore', 'Anas', '2021-11-02', 'Nabeel', '100', 'Anas', '2021-11-02', '1000', 'Signatures/110220212051486181a4e4ec2df.png', 'Nabeel', '2021-11-02', 1, '2021-11-03 03:51:48', '2021-11-03 03:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `conditional_waiver_and_release_on_progress_paymenyt_fill`
--

CREATE TABLE `conditional_waiver_and_release_on_progress_paymenyt_fill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `form_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conditional_waiver_and_release_on_progress_paymenyt_fill`
--

INSERT INTO `conditional_waiver_and_release_on_progress_paymenyt_fill` (`id`, `user_id`, `form_no`, `email`, `mobile`, `claimant_name`, `customer_name`, `job_location`, `owner`, `through_date`, `check_owner`, `check_amount`, `check_payable_to`, `date_of_waiver`, `amount_of_unpaid_progress_payments`, `signature`, `claimant_title`, `signature_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '167534', 'nabeel@pixelpk.com', '+923078801559', 'Nabeel', 'Bilal', 'Lahore', 'Anas', '2021-11-02', 'Nabeel', '100', 'Anas', '2021-11-02', '1000', 'Signatures/110220212051486181a4e4ec2df.png', 'Nabeel', '2021-11-02', 1, '2021-11-03 03:51:48', '2021-11-03 03:51:48'),
(2, 1, '915864', 'nabeel@pixelpk.com', '+923078801559', 'Tatiana Diaz', 'Wade Miles', 'At sint quos digniss', 'Eu unde dolore quas', '1988-10-14', 'Enim consequatur co', 'Adipisci numquam vel', 'Harum voluptatem Di', '1996-12-12', 'Est ipsa sint repel', 'Signatures/0201202223034861f9bc5436a65.png', 'Mollitia veniam rec', '2008-04-10', 1, '2022-02-02 07:03:48', '2022-02-02 07:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `contract_forms`
--

CREATE TABLE `contract_forms` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contract_forms`
--

INSERT INTO `contract_forms` (`id`, `user_id`, `name`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 'Generic Contract', 'contract/forms/1632506895.pdf', '2022-06-01 06:14:30', '2021-09-25 01:08:15'),
(2, 1, 'Test', 'contract/forms/1634926833.pdf', '2022-06-01 06:14:30', '2021-10-23 01:20:33');

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
  `total` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `email_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `estimates`
--

INSERT INTO `estimates` (`id`, `user_id`, `client_id`, `po_number`, `days_to_pay`, `markup`, `subtotal`, `tax`, `discount`, `total`, `date`, `notes`, `status`, `email_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-09-15', 'All things good', 1, 1, '2022-06-01 06:14:30', '2021-12-09 04:52:55'),
(2, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-09-16', 'All things good', 1, 0, '2022-06-01 06:14:30', '2021-11-12 12:49:19'),
(3, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-09-18', 'All things good', 2, 0, '2022-06-01 06:14:30', '2021-11-12 12:49:21'),
(4, 1, 1, 1, 1, 0, 225, 0, 0, 225, '2022-06-01', 'hello', 0, 1, '2022-06-01 08:24:24', '2022-06-01 06:24:24'),
(5, 1, 3, 1, 1, 0, 225, 10, 0, 235, '2022-06-02', 'hiii', 0, 0, '2022-06-01 04:48:13', '2022-06-01 04:48:13'),
(6, 1, 3, 1, 1, 0, 225, 10, 0, 235, '2022-06-02', 'hiii', 0, 0, '2022-06-01 04:48:27', '2022-06-01 04:48:27'),
(7, 1, 3, 1, 1, 0, 225, 10, 0, 235, '2022-06-02', 'hiii', 0, 0, '2022-06-01 04:49:00', '2022-06-01 04:49:00'),
(8, 1, 3, 1, 1, 0, 225, 10, 0, 235, '2022-06-02', 'dhjddj', 0, 0, '2022-06-01 04:49:35', '2022-06-01 04:49:35'),
(9, 1, 3, 3, 3, 0, 30, 30, 0, 60, '2022-06-01', 'hello', 0, 0, '2022-06-01 04:55:26', '2022-06-01 04:55:26'),
(10, 1, 3, 3, 3, 0, 30, 30, 0, 60, '2022-06-01', 'hello', 0, 0, '2022-06-01 04:58:56', '2022-06-01 04:58:56'),
(11, 1, 3, 1, 1, 0, 450, 40, 0, 490, '2022-06-02', 'hiiii', 0, 0, '2022-06-01 05:03:46', '2022-06-01 05:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `estimate_documents`
--

CREATE TABLE `estimate_documents` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `document_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `estimate_documents`
--

INSERT INTO `estimate_documents` (`id`, `invoice_id`, `document_type`, `file_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'attachments', '20211112-064902.1636075044.pdf', '2022-06-01 06:14:30', '2021-11-12 12:49:02'),
(2, 1, 'attachments', '20211112-064902.1635175663513.jfif', '2022-06-01 06:14:30', '2021-11-12 12:49:02'),
(3, 1, 'photos', '20211112-064902.1.jpg', '2022-06-01 06:14:30', '2021-11-12 12:49:02'),
(4, 1, 'photos', '20211112-064902.1 - Copy.jpg', '2022-06-01 06:14:30', '2021-11-12 12:49:02'),
(5, 2, 'attachments', '20211112-064919.1636075044.pdf', '2022-06-01 06:14:30', '2021-11-12 12:49:19'),
(7, 2, 'photos', '20211112-064919.1.jpg', '2022-06-01 06:14:30', '2021-11-12 12:49:19'),
(8, 2, 'photos', '20211112-064919.1 - Copy.jpg', '2022-06-01 06:14:30', '2021-11-12 12:49:19'),
(9, 3, 'attachments', '20211112-064921.1636075044.pdf', '2022-06-01 06:14:30', '2021-11-12 12:49:21'),
(10, 3, 'attachments', '20211112-064921.1635175663513.jfif', '2022-06-01 06:14:30', '2021-11-12 12:49:21'),
(11, 3, 'photos', '20211112-064921.1.jpg', '2022-06-01 06:14:30', '2021-11-12 12:49:21'),
(12, 3, 'photos', '20211112-064921.1 - Copy.jpg', '2022-06-01 06:14:30', '2021-11-12 12:49:21'),
(13, 4, 'photos', '20220601-0640544546.jpg', '2022-06-01 04:40:54', '2022-06-01 04:40:54'),
(14, 4, 'photos', '20220601-0640541035.jpg', '2022-06-01 04:40:54', '2022-06-01 04:40:54'),
(15, 5, 'attachments', '20220601-0648133979.pdf', '2022-06-01 04:48:13', '2022-06-01 04:48:13'),
(16, 5, 'photos', '20220601-0648134503.jpg', '2022-06-01 04:48:13', '2022-06-01 04:48:13'),
(17, 6, 'attachments', '20220601-0648274221.pdf', '2022-06-01 04:48:27', '2022-06-01 04:48:27'),
(18, 6, 'photos', '20220601-064827862.jpg', '2022-06-01 04:48:27', '2022-06-01 04:48:27'),
(19, 7, 'attachments', '20220601-0649001531.pdf', '2022-06-01 04:49:00', '2022-06-01 04:49:00'),
(20, 7, 'photos', '20220601-0649003009.jpg', '2022-06-01 04:49:00', '2022-06-01 04:49:00'),
(21, 11, 'attachments', '20220601-0703465779.pdf', '2022-06-01 05:03:46', '2022-06-01 05:03:46'),
(22, 11, 'photos', '20220601-0703462173.jpg', '2022-06-01 05:03:46', '2022-06-01 05:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `estimate_items`
--

CREATE TABLE `estimate_items` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` bigint(20) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `tax` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `estimate_items`
--

INSERT INTO `estimate_items` (`id`, `invoice_id`, `item_id`, `name`, `rate`, `qty`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-12 12:49:02'),
(2, 2, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-12 12:49:19'),
(3, 3, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-12 12:49:21'),
(4, 4, 11, 'ice cream', 225, 1, 0, 225, '2022-06-01 04:40:54', '2022-06-01 04:40:54'),
(5, 5, 11, 'ice cream', 225, 1, 10, 225, '2022-06-01 04:48:13', '2022-06-01 04:48:13'),
(6, 6, 11, 'ice cream', 225, 1, 10, 225, '2022-06-01 04:48:27', '2022-06-01 04:48:27'),
(7, 7, 11, 'ice cream', 225, 1, 10, 225, '2022-06-01 04:49:00', '2022-06-01 04:49:00'),
(8, 8, 11, 'ice cream', 225, 1, 10, 225, '2022-06-01 04:49:35', '2022-06-01 04:49:35'),
(9, 9, 10, 'Coke dddddd', 30, 1, 30, 30, '2022-06-01 04:55:26', '2022-06-01 04:55:26'),
(10, 10, 10, 'Coke dddddd', 30, 1, 30, 30, '2022-06-01 04:58:56', '2022-06-01 04:58:56'),
(11, 11, 11, 'ice cream', 225, 1, 20, 225, '2022-06-01 05:03:46', '2022-06-01 05:03:46'),
(12, 11, 11, 'ice cream', 225, 1, 20, 225, '2022-06-01 05:03:46', '2022-06-01 05:03:46');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `form_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `email_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `client_id`, `po_number`, `days_to_pay`, `markup`, `subtotal`, `tax`, `discount`, `total`, `date`, `notes`, `status`, `email_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 10, 1, 1, 1, 1, 1, '2021-09-09', 'All things good', 0, 1, '2022-06-01 06:14:30', '2021-11-25 07:35:13'),
(2, 1, 1, 2, 20, 1, 1, 1, 1, 1, '2021-09-15', 'All things good', 1, 0, '2022-06-01 06:14:30', '2021-11-12 12:12:58'),
(3, 1, 1, 2, 30, 1, 1, 1, 1, 1, '2021-09-09', 'All things good', 1, 0, '2022-06-01 06:14:30', '2021-11-12 12:13:33'),
(4, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-09-09', 'All things good', 0, 0, '2022-06-01 06:14:30', '2021-11-20 06:12:15'),
(5, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-09-09', 'All things good', 0, 0, '2022-06-01 06:14:30', '2021-11-20 06:14:23'),
(6, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-08-09', 'All things good', 0, 0, '2022-06-01 06:14:30', '2021-11-20 06:17:52'),
(7, 1, 3, 1, 1, 0, 225, 20, 0, 245, '2022-06-02', 'dbbddb', 0, 0, '2022-06-01 04:50:20', '2022-06-01 04:50:20'),
(8, 1, 1, 2, 3, 0, 225, 20, 0, 245, '2022-06-01', 'hello', 0, 0, '2022-06-01 04:59:53', '2022-06-01 04:59:53'),
(9, 1, 3, 1, 1, 0, 255, 40, 0, 295, '2022-06-02', 'hiii', 0, 0, '2022-06-01 05:05:24', '2022-06-01 05:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_documents`
--

CREATE TABLE `invoice_documents` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `document_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_documents`
--

INSERT INTO `invoice_documents` (`id`, `invoice_id`, `document_type`, `file_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'attachments', '20211112-061231.1636075044.pdf', '2022-06-01 06:14:30', '2021-11-12 12:12:31'),
(2, 1, 'attachments', '20211112-061231.1635175663513.jfif', '2022-06-01 06:14:30', '2021-11-12 12:12:31'),
(3, 1, 'photos', '20211112-061231.1.jpg', '2022-06-01 06:14:30', '2021-11-12 12:12:31'),
(4, 1, 'photos', '20211112-061231.1 - Copy.jpg', '2022-06-01 06:14:30', '2021-11-12 12:12:31'),
(5, 2, 'attachments', '20211112-061258.1636075044.pdf', '2022-06-01 06:14:30', '2021-11-12 12:12:58'),
(6, 2, 'attachments', '20211112-061258.1635175663513.jfif', '2022-06-01 06:14:30', '2021-11-12 12:12:58'),
(7, 2, 'photos', '20211112-061258.1.jpg', '2022-06-01 06:14:30', '2021-11-12 12:12:58'),
(8, 2, 'photos', '20211112-061258.1 - Copy.jpg', '2022-06-01 06:14:30', '2021-11-12 12:12:58'),
(9, 3, 'attachments', '20211112-061333.1636075044.pdf', '2022-06-01 06:14:30', '2021-11-12 12:13:33'),
(10, 3, 'attachments', '20211112-061333.1635175663513.jfif', '2022-06-01 06:14:30', '2021-11-12 12:13:33'),
(11, 3, 'photos', '20211112-061333.1.jpg', '2022-06-01 06:14:30', '2021-11-12 12:13:33'),
(12, 3, 'photos', '20211112-061333.1 - Copy.jpg', '2022-06-01 06:14:30', '2021-11-12 12:13:33'),
(13, 9, 'attachments', '20220601-070524865.pdf', '2022-06-01 05:05:24', '2022-06-01 05:05:24'),
(14, 9, 'photos', '20220601-0705249537.jpg', '2022-06-01 05:05:24', '2022-06-01 05:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `qty` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `item_id`, `name`, `rate`, `qty`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-12 12:12:31'),
(2, 2, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-12 12:12:58'),
(3, 3, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-12 12:13:33'),
(4, 4, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 03:32:19'),
(5, 5, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 04:46:44'),
(6, 6, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 04:47:50'),
(7, 7, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 04:48:13'),
(8, 8, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 04:48:39'),
(9, 9, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 04:48:59'),
(10, 10, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 04:49:43'),
(11, 11, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 04:49:55'),
(12, 12, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 04:50:32'),
(13, 13, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 05:07:48'),
(14, 14, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 05:08:19'),
(15, 15, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 05:08:56'),
(16, 16, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 05:09:09'),
(17, 17, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 05:10:07'),
(18, 18, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 05:12:19'),
(19, 19, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 05:14:08'),
(20, 20, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 05:18:10'),
(21, 21, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 06:01:55'),
(22, 22, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 06:02:07'),
(23, 23, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 06:02:15'),
(24, 4, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 06:12:15'),
(25, 5, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 06:14:23'),
(26, 6, 1, 'Snacks', 1, 1, 1, 1, '2022-06-01 06:14:30', '2021-11-20 06:17:52'),
(27, 7, 11, 'ice cream', 225, 1, 20, 225, '2022-06-01 04:50:20', '2022-06-01 04:50:20'),
(28, 8, 11, 'ice cream', 225, 1, 20, 225, '2022-06-01 04:59:53', '2022-06-01 04:59:53'),
(29, 9, 10, 'Coke dddddd', 30, 1, 10, 30, '2022-06-01 05:05:24', '2022-06-01 05:05:24'),
(30, 9, 11, 'ice cream', 225, 1, 30, 225, '2022-06-01 05:05:24', '2022-06-01 05:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `user_id`, `name`, `price`, `note`, `created_at`, `updated_at`) VALUES
(5, 2, 'test item 1', 20, 'yes', '2022-06-01 06:14:30', '2021-09-02 07:29:20'),
(6, 2, 'test item', 20, 'yes', '2022-06-01 06:14:30', '2021-09-02 07:43:49'),
(7, 1, 'ttost', 32, 'test tggg', '2022-06-01 06:14:30', '2021-11-17 19:59:27'),
(10, 1, 'Coke dddddd', 30, 'Good', '2022-06-01 06:14:30', '2021-11-17 20:01:22'),
(11, 1, 'ice cream', 225, 'lddd', '2022-06-01 06:14:30', '2021-11-17 16:47:20');

-- --------------------------------------------------------

--
-- Table structure for table `item_taxes`
--

CREATE TABLE `item_taxes` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_taxes`
--

INSERT INTO `item_taxes` (`id`, `user_id`, `item_id`, `tax_id`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 1, '2022-06-01 06:14:30', '2021-09-11 09:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `license_web_links`
--

CREATE TABLE `license_web_links` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_web_links`
--

INSERT INTO `license_web_links` (`id`, `user_id`, `file_url`, `facebook_url`, `twitter_url`, `instagram_url`, `web_url`, `created_at`, `updated_at`) VALUES
(1, 1, '20211125-072655.1.jpg', 'www.facebook.com', 'www.twitter.com', 'www.instagram.com', 'www.securelienrelease.com', '2021-11-26 01:55:19', '2021-12-16 07:04:35');

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
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00e2578cdf3a6592a32d06060a8e0e0b99c8867a734a602f5480a68ff06dcdc073c85680cf2cfa7b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:43:00', '2021-11-15 18:43:00', '2022-11-15 12:43:00'),
('014a188399958acc7d316e66a8d1b31bf4582664d4d5f26b1cfad9bda98f78947fc7ec370ecd52ec', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:08:10', '2021-08-27 01:08:10', '2022-08-26 18:08:10'),
('015229064eec6473c19d2ac4149f8cca4e8a9cd3e47a204553a83fb05125047acad1d97aef7e1c81', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:16:22', '2021-12-14 02:16:22', '2022-12-13 19:16:22'),
('01e043b4f4b0d625d7bf8db92584f4e5c28a140cec688539e32b70bd0223cf72b033451d347b1cc1', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 03:14:54', '2021-12-14 03:14:54', '2022-12-13 20:14:54'),
('020b1731934c45884c91e9d190f4392f7e9a1c16b5e797244130e4b5835c45270d5f29b54a0fb842', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-28 09:01:20', '2022-01-28 09:01:20', '2023-01-28 01:01:20'),
('029603e029c64d936a84ae5635de430fa61d109b52a395769f5fa666af2594b10c44c61d84d8063d', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 03:58:04', '2022-02-05 03:58:04', '2023-02-04 19:58:04'),
('02a06a5220103e9ec100ac0ef3365614b6cc8e2fb45dd2ca2e3f35666799b5c7ee8c780ca0ff5443', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 13:51:50', '2021-11-17 13:51:50', '2022-11-17 07:51:50'),
('0344d8c53a61c196850f4e2857e4a96d3a80762aa30b3252b0531877e2c2e7f0afece783ac36824b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:33:32', '2021-11-17 17:33:32', '2022-11-17 11:33:32'),
('0368d047ad7d55a1ed7a8bb22f93c6f42ff7f06ab600d1ad05a3e64f9d9045d77d52854bf1d2b5b4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:08:08', '2021-11-15 18:08:08', '2022-11-15 12:08:08'),
('03716d2879b6cc5be8c51287fe6db08f8f7b7800a2987d24dc8be2366e84611e10bda752b44bc1be', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 18:25:54', '2021-11-12 18:25:54', '2022-11-12 12:25:54'),
('0469c836f928ba38af06bf8bb8eaa886306458a66487cffdc0f077633c2623bbba305ed4f54839e8', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 08:19:45', '2021-12-16 08:19:45', '2022-12-16 01:19:45'),
('05011fddb0e7d1ac4c4029e974f65d2f89a7503e0eb7a8fc7b5409fecf5dba11a2d9e8a4dfed9282', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 11:54:21', '2021-11-16 11:54:21', '2022-11-16 05:54:21'),
('05b0771dad4fe6cd643c9ff3444198a1805d2bee53a17ff1d99f9df6de4f9ca3512fc829d8575e95', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 08:10:26', '2021-12-16 08:10:26', '2022-12-16 01:10:26'),
('06146101dce1be69cd0207d61b2999ba2b898f05712f6665b1292052493fc106f1c8bc596c91798b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:09:52', '2021-11-17 14:09:52', '2022-11-17 08:09:52'),
('06f739fc6e4eddd0a851a1d0207e7b0a65dbc7c5527fe15eb25f53b974e40075103de3f4b3f2c710', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-13 23:58:15', '2021-09-13 23:58:15', '2022-09-13 16:58:15'),
('06ffda2650d1d989762d4ddf8626990d3de636d8e973eccd9ad62678d9dc2ebcae0c17fdc55d26d2', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:29:51', '2021-12-14 02:29:51', '2022-12-13 19:29:51'),
('0780be5436fb1ea2b3d4e2f3286d4d35716ff7c843cdc42fbf04c7b63563b39de6186bec29d56c1a', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 05:10:45', '2022-02-08 05:10:45', '2023-02-07 21:10:45'),
('07a6a765b4ef70ccf03cdc2541be88e5e65ded420ea3ee6591da1a7abe74f01c2c262c9ccf54c2f8', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:19:41', '2021-11-17 14:19:41', '2022-11-17 08:19:41'),
('07e1b4a96a8d466a257ae6b19e50901eb4cd8546404885d62686b6786bf85ff82ac1b42bb40bd64f', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-05 02:18:20', '2022-02-05 02:18:20', '2023-02-04 18:18:20'),
('07ebfe36df87522e07c9fc06158c98de6ad9b95f8d125a0ea89de904d4e70f14a807fdfffcd0f1aa', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 04:54:37', '2022-02-08 04:54:37', '2023-02-07 20:54:37'),
('08a743f7add4a7c324fa575fe360382cbd0ba3993aeb039d6abdacbe673d1b7e4c9e2750d0ac08ef', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 03:47:30', '2022-02-01 03:47:30', '2023-01-31 19:47:30'),
('09349cc1bde6dd7488a615860e8c9e142fb1711ed7deea14c25ceaed59bf5e3ce3fab1184eb01f44', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:29:47', '2021-12-14 02:29:47', '2022-12-13 19:29:47'),
('09624f14e49fac0a432efc60b7294fbb2061fccd39c63dc4b6c50115b38aa929ad954bcaf63446a7', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-01 01:38:57', '2021-10-01 01:38:57', '2022-09-30 18:38:57'),
('0a225b74e23622dc2cc23d7a2c553aa140b1fb40e5c6a49a3b518bdfd79c2a5a442997b81a1d1fbd', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-02 09:03:02', '2022-02-02 09:03:02', '2023-02-02 01:03:02'),
('0a676f9eb461ae941d19a493ed5528ff82044b9c8062b29912b3aa05d1764cee0a01ab16d39847fb', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:32:18', '2021-08-27 01:32:18', '2022-08-26 18:32:18'),
('0b350a739c4efe1e5034ff5fb80ada5d5546b8c69413e8eeb96ec571a6dc81bf7eace1c38eb011c1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:54:44', '2021-11-17 16:54:44', '2022-11-17 10:54:44'),
('0b600d1b3cac79f3620b090b6954368df0bc60e4af33c0ccbaeaa373c83db857b08ed2ce460e658c', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-04 07:23:43', '2022-02-04 07:23:43', '2023-02-03 23:23:43'),
('0b65fa8cec95e766a9fc27e4dd118b78375ac745d95a0e959f912e287e1d32792acbf04bc661ecd2', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 07:48:36', '2021-12-16 07:48:36', '2022-12-16 00:48:36'),
('0bcf3e9085c3baf551aa68636ea92ecdc616eadb27842ac05908ae51a11df9b64ed0121b1f5db8d9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 11:55:33', '2021-11-12 11:55:33', '2022-11-12 05:55:33'),
('0c01a029e274434908817b4340488f178ef06b11cec1e91ef3704cc6ba4ec6ee6e1b65d089d5e1e0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 19:53:10', '2021-11-12 19:53:10', '2022-11-12 13:53:10'),
('0d2a69851c0acb170d930c3646d613c53037a901abf8b17a5b4303b87d22a23c2c916bcb85fb8568', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 00:30:11', '2021-09-01 00:30:11', '2022-08-31 17:30:11'),
('0d30b2a46c86204d39403c48db5815d002b89846902b6ca861ffee02d660fa4b5a210de6fc261e63', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:20:54', '2021-12-14 02:20:54', '2022-12-13 19:20:54'),
('0d3eaaa45a9060e84a11bf28fa9fc31b4719f54a7b23c26a72c2302318f07a4bae57aac5930883c5', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-11 08:34:50', '2022-01-11 08:34:50', '2023-01-11 00:34:50'),
('0e4532be7b2e0e5d2ecfa2ee256016c451c67f86e6f1ecf74b886215683f6adf1fe62ea834105752', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:02:13', '2021-12-14 02:02:13', '2022-12-13 19:02:13'),
('0e4901a21691fc8cb973c21d35676be17b79f3f96be790d0f82a32a2c0093d35300e82bc7a04de00', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:06:23', '2021-11-17 16:06:23', '2022-11-17 10:06:23'),
('0f8fbb9efab4f694e3704e940fbb83cce6cea3d52e2bc6537d926f9e6c0ae13938fa0fd172b3fc54', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-07 01:53:19', '2021-09-07 01:53:19', '2022-09-06 18:53:19'),
('1042f3285be6e879d3a3bbade8868084d9ca461eebc8919d038e67cd574d69465ce6440a4029263e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:47:32', '2021-11-15 19:47:32', '2022-11-15 13:47:32'),
('1086af8b27fccf8289c6724657e29841290b990a662bd6d155ae237cd29622d0180b9cf710e08a54', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-15 17:52:25', '2021-11-15 17:52:25', '2022-11-15 11:52:25'),
('116743c5e10c566f0b9998a8f3b7f516ac6d8e6d17983b08f5b2601e9268455189842223102a950c', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:06:28', '2021-08-27 03:06:28', '2022-08-26 20:06:28'),
('118b52bce89a4570ec54dcb7ea56fdbc1e4d683136d851674fcb938d37b8524dc5431aba3ce189d4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:42:32', '2021-11-15 19:42:32', '2022-11-15 13:42:32'),
('1225245036f68b164d4deebf34fc3ff7173d02aa64bb65fd75b06a41d5618b3abad7431753a426b7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:45:40', '2021-11-17 14:45:40', '2022-11-17 08:45:40'),
('12b93901e1c89bf10e79e48218f98c41925b23d464b467b68bc43fa33ce2ccb30fe1a28bccb6dea4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 19:43:46', '2021-11-17 19:43:46', '2022-11-17 13:43:46'),
('12f9f34f6f8a203f895339959921ed0265a69586685e30f205acf5f3f29604a495496e3ebc67cee4', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 04:49:25', '2021-08-28 04:49:25', '2022-08-27 21:49:25'),
('13333395e8b5c9ee64c20a5cb42fd2e31e8014a98c82c1701c01b9f1af2ba5b92aa4c96a40fe9571', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 11:56:55', '2021-11-16 11:56:55', '2022-11-16 05:56:55'),
('1360a73b0cb6bc2a5734850c2d96f5164b72150f37789a3691b56291984f9894ea016a4bff462e35', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:29:48', '2021-12-14 02:29:48', '2022-12-13 19:29:48'),
('13b12cb46c62465a5fa5f83d237777d66d9981c51aa624af589df79666791453da6e2bed371cc88a', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-10 00:20:04', '2021-09-10 00:20:04', '2022-09-09 17:20:04'),
('13fda3989f6a2780bce11e687b03145797895a311091bcbb6879997726ad35d7f27cfeff967543c4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:04:04', '2021-11-17 17:04:04', '2022-11-17 11:04:04'),
('14555f67a5d42e8d976f7598ed8e32a6620eebbb1936ebacfded3b3518cbcc9bc090c7729dfb0b08', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 05:01:20', '2022-01-14 05:01:20', '2023-01-13 21:01:20'),
('1494dfaa8dcc940846efe4f92ca4806f9b8a32c3fdadd2a4263eeb74c4556652b8a0e6bc73acb6af', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 17:44:24', '2021-11-16 17:44:24', '2022-11-16 11:44:24'),
('161a6dd03fa65b662e597fd4063bc5c9651572a6a46e1421e82506f0e27a01fd652a6b7d7f93f81a', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-09 03:18:28', '2022-02-09 03:18:28', '2023-02-08 19:18:28'),
('175a3ad8368d281b566da5062be3374024e3efb3a8bdf7dcaf0478e22bd5ce9c3ac3d8499d626971', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 13:59:06', '2021-11-17 13:59:06', '2022-11-17 07:59:06'),
('17a1260a21a569bee0df6c29bd74edd5c4f5eba9609c991fd4502d84947be02b1d7c108cc056d56d', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 10:02:53', '2022-01-14 10:02:53', '2023-01-14 02:02:53'),
('17d7e7c33b615e181454388fb97b9be1155fefc97dcabb80b43e1d501f5fe09ecc943d1b44c8a41e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:54:13', '2021-11-15 19:54:13', '2022-11-15 13:54:13'),
('17db68db4ad59fed390ce28f8b964476cd60dd8d4561472743afaccc00b5704f376508d1f0b13f52', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:29:50', '2021-12-14 02:29:50', '2022-12-13 19:29:50'),
('18193c23416cf03c53f4b21be3e6161eaf1df5a345dd40432e052c995cc397df3fcc71f3abf15deb', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-05 00:18:38', '2021-10-05 00:18:38', '2022-10-04 17:18:38'),
('19055637a8f01dc07ef75f6dd9acff0ebb5e14a0ae32d0103540239cfc536b4f64b166f13a8c18b2', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-14 00:08:06', '2021-09-14 00:08:06', '2022-09-13 17:08:06'),
('19e1f8ae8233c5d3d13d473765208ff62bd4f20a9445b97ccfa83e1b61baafe6f83d3731f9c2e39d', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-28 09:36:09', '2022-01-28 09:36:09', '2023-01-28 01:36:09'),
('19e39e6fbac77378aa5825d0a54d65261d214c9bc11c07dab78f6e0702b1718ee99a7ccf6bfd024f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 18:12:16', '2021-11-16 18:12:16', '2022-11-16 12:12:16'),
('1be2f9139ad45dd02fde8d1ec71c4f0362067fe7dcd50e7f212624242a56af3b284d37083eebaffa', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 07:25:56', '2021-12-16 07:25:56', '2022-12-16 00:25:56'),
('1c65ea894696415b74981139722b946bd10d92838fdc01c973da04379a89bb97383c6b23ba241184', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:40:47', '2021-11-15 16:40:47', '2022-11-15 10:40:47'),
('1cb76d6e4a2586645d621c0b9e16011f77f245559aa268dca50d4be08b35ebd0876aef48999cf84c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:10:06', '2021-11-15 18:10:06', '2022-11-15 12:10:06'),
('1d364ba2b4b9e932348bc92960e8969f6d7a1056f6a43df26ede834d66b2dcbab56d78485bcefa7f', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-11 04:55:22', '2022-01-11 04:55:22', '2023-01-10 20:55:22'),
('1d39326e04c0a9aa3b96d2ce128820fcdc16af9808d6f9165ebed54e2fae970b603f50ba2a5d90ef', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-16 12:44:02', '2021-11-16 12:44:02', '2022-11-16 06:44:02'),
('1f33bc38d6d991375a07766fd7b28070f7d68c44dabf6a00298d3e9b162691a204fbd5ed74b179bd', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 06:38:02', '2022-02-04 06:38:02', '2023-02-03 22:38:02'),
('214492143497e989c8d47d01037de6cb7cd9e5a5d92ce9c932b76b9efce3c55ff5691206773431d7', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 07:43:01', '2022-02-01 07:43:01', '2023-01-31 23:43:01'),
('21b98aea23f88bdb1e098f604a64995152d488b23acb4c081cc85afb68b14d319a9cd783568e546e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-04 08:16:44', '2021-11-04 08:16:44', '2022-11-04 01:16:44'),
('22083f9d45066674ab9ca4e00418a6b12eda41c3d90c4ea2ce83cd990b709001c873e626781fac05', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:25:25', '2021-11-17 17:25:25', '2022-11-17 11:25:25'),
('242f8dce913ac65c364ac23f2af0249e0388701913155a5b57a13a078f551bfcb3f1011911fc02ba', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 07:57:34', '2022-02-08 07:57:34', '2023-02-07 23:57:34'),
('24a1531269f43f6baf666ff8c9962bbd56f06cbb7d26edc9aefeb31549e475bd2207ca23d029f1cd', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 08:37:25', '2021-12-16 08:37:25', '2022-12-16 01:37:25'),
('24ff85ba98fcb9b66b2ecdea8342e34865d081e19dd12fa5439c50b70afb3ebc57a7daeb3c8b2cdc', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:44:23', '2021-11-17 16:44:23', '2022-11-17 10:44:23'),
('2513c83b05b38d060cb99f11aff1361b6b9325801a8b60b5348b9eaa7c55bf2dfc10a5c54d2fd1c2', 1, 1, 'Personal Access Token', '[]', 0, '2022-06-01 04:54:47', '2022-06-01 04:54:47', '2023-06-01 06:54:47'),
('25b8ccd435f0d6a5d2bee64c3e6d3a3c135048a290599b5ece0513760a3af9d7fba2ea551a4dee17', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:40:07', '2021-12-14 02:40:07', '2022-12-13 19:40:07'),
('25dfe98e4810543ff4b6fa3938d7865810eb2950bdb513c3aba34f29118c8380db421558a4b7cd5e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 05:35:09', '2021-08-28 05:35:09', '2022-08-27 22:35:09'),
('2666e6a3578e1b406d68f0414683ebe85161faad6cdd54afb8a2279c0b0be021430b385ffa70fe10', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-04 00:57:09', '2021-09-04 00:57:09', '2022-09-03 17:57:09'),
('26b4c25f283c1b1b7a1154b6ad4c7fce314c63a2153baad59a2acf2772c2d3fcb60c3f516cabe07a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:49:40', '2021-11-12 12:49:40', '2022-11-12 06:49:40'),
('2840a5f1142e1a54f9213c787bea5913ac8cb48902b6028c385d2ca1e9ad5d2887df7a338e54b05a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:22:03', '2021-11-15 16:22:03', '2022-11-15 10:22:03'),
('287b87503131de4bb644d8a4921b2d8bff173f3aa67ba5625901365ccec600a7f72acf7d020777b3', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 07:08:38', '2022-02-08 07:08:38', '2023-02-07 23:08:38'),
('2a0a9efebf38e967b4e4a283658a3f6d6e5ced9c1681cc75696e828c16727f29e0276b42291330dc', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-09 06:30:39', '2022-02-09 06:30:39', '2023-02-08 22:30:39'),
('2a429b0b6eaab253812e3ff5b5fcd4d259669ecd1b5daeea20797cce9d24f2f57ef19560fbeabca5', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 05:00:57', '2022-01-14 05:00:57', '2023-01-13 21:00:57'),
('2a5a0b8bec5a6285f4e5d4a498e38a5069e88db846db9bdd576570a20fe293eb2980355f975aa930', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 04:32:36', '2022-02-08 04:32:36', '2023-02-07 20:32:36'),
('2bb14ae7728a8652cad3eb3fb46fb40d6f0c90f09fb3765e7fe904d2deec5063f1b1e4848d2e5f9c', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 05:29:08', '2022-01-14 05:29:08', '2023-01-13 21:29:08'),
('2c48e393647b7d7d327282afcb27df2cb701dd3a6e9951b726e59d2c4c3dfab5e051096d990df167', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-09 09:59:26', '2022-02-09 09:59:26', '2023-02-09 01:59:26'),
('2de105d3f05b608dd3956666ced04a54135b0bdc28f337aa345f1f82df14298ed243724b0e691cc7', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 04:10:43', '2022-02-05 04:10:43', '2023-02-04 20:10:43'),
('2e46f87595f93372e7afbd244ce293994da85cdd71e9e873125027e88d56c37251b94d79668cb573', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:59:48', '2021-11-15 18:59:48', '2022-11-15 12:59:48'),
('2ea18729850edb9a9cb93e1fe1fd54384c4f177d8f7c823251598fb51814043808fed59b82f5d358', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 12:46:29', '2021-11-16 12:46:29', '2022-11-16 06:46:29'),
('2efcd09bfa846534c6771ca9ec97f4fa0d4fba768ef311333a139960aadf61a437cee31d7abf92bb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:40:49', '2021-11-15 19:40:49', '2022-11-15 13:40:49'),
('2f68139024da415fda7aed6e1e62b365a199191d1991a088f0896b6620e8d21e501342896b00f32b', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-04 07:31:48', '2022-02-04 07:31:48', '2023-02-03 23:31:48'),
('2f8360d30b86c5c82506b7b9b0af0954193c3370befeaa1dc8f04c565ac409576990293089651dcb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:23:43', '2021-11-17 17:23:43', '2022-11-17 11:23:43'),
('300d08c079effcabd6311578fc62c00efeabf22c2590eff210c1444eb2699c49e26a65f95f69bad4', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 04:38:30', '2022-02-05 04:38:30', '2023-02-04 20:38:30'),
('304bdb5f7d7a3f58e6a4b951a757426c01be0e9624837af5d22cb339cfcb22dd92deded1e522807b', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 09:59:44', '2022-01-14 09:59:44', '2023-01-14 01:59:44'),
('30d2eccd038c1e7d6810da9efae3fcacd08e62301d9d80479457f29a780451e809f8ca66c345ac2e', 1, 1, 'Personal Access Token', '[]', 0, '2022-06-01 11:21:44', '2022-06-01 11:21:44', '2023-06-01 04:21:44'),
('30f346230e73ec5d861918f238754587f63561675efd1ef0c523f8be73dcbc4b696c59e06bc6adfa', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 04:23:56', '2022-02-08 04:23:56', '2023-02-07 20:23:56'),
('31097192ab5a5ce0efe4e92af4ef0f5b32bb850a62b6a91f8fd1f58bf73e8543f1e24422c935a4b1', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-05 00:18:39', '2021-10-05 00:18:39', '2022-10-04 17:18:39'),
('31183bfb4ec185e2b78bd5ffcf0470299088a1cae83865d0627ee46b8c27ddd385bf15d0ca0d71ce', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:08', '2021-11-17 16:47:08', '2022-11-17 10:47:08'),
('316a3d341fb93f5fbb8508419c5d88317859b213f52464713dd9a73ae6c95ce655667110a1f8176c', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 06:47:36', '2022-02-08 06:47:36', '2023-02-07 22:47:36'),
('31741a9b148f6f1656964b821a65d94879f6ef1d55b758c2680bedea431e11c933e3ce866923b0a6', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-28 00:37:20', '2021-10-28 00:37:20', '2022-10-27 17:37:20'),
('3197a850dc6bee43a7bc70f0cc9247d0c368aac17148777ef687c09a5b88cbc65b9350eade073233', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-04 00:59:03', '2021-09-04 00:59:03', '2022-09-03 17:59:03'),
('325f68621934291693bd51b2b9fd79af76589f21909b9a6a8344a89004d1ddba9e71532266bc326e', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 06:44:38', '2022-02-01 06:44:38', '2023-01-31 22:44:38'),
('32755d8e2b138a3e9c18ccddbd092f965a326296de32621c204e7ba48112d9de9c438c24015a287a', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 04:11:19', '2022-02-05 04:11:19', '2023-02-04 20:11:19'),
('332b72003dc7d26f79bcf3951960edac34f1bf11dffb832cdc8ebfcc0bceaf49e3ded2477393178b', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-04 10:53:23', '2022-02-04 10:53:23', '2023-02-04 02:53:23'),
('3351b8fd2910e6fc70ccc04f0edd009f6eca3aa79514b0ef8f196a73eb8213880dd84749b17f374a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:39:37', '2021-11-17 17:39:37', '2022-11-17 11:39:37'),
('34e92485b0a6ae775075ff26e1d2aeebd10cf6e5e1fe463e5280a678c532657f94a4ba6ce2b37d5a', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 08:57:31', '2021-12-16 08:57:31', '2022-12-16 01:57:31'),
('34ee485c2b2e207369fca1680c3cb96081a994906f8cc626696af05398b6ed81b11cee0c671bc0da', 1, 1, 'Personal Access Token', '[]', 0, '2022-06-02 05:04:12', '2022-06-02 05:04:12', '2023-06-02 07:04:12'),
('35377a7c0b4814be75f073d6fa0a3f0658668880fd4196641363098a5a8b1118e5cad8321fb963c1', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 06:42:15', '2022-02-04 06:42:15', '2023-02-03 22:42:15'),
('35888731e224fc0c7b2095c04ec7080ccf529ee0bda71450630076ffdd3e256c3f1062f35505cdd3', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 14:05:36', '2021-11-15 14:05:36', '2022-11-15 08:05:36'),
('364f8e52ea07db0e74551bff4b5dbfe50115d3c091705ecd737f6f942f47fdcc4bd13671ef1207af', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:07:51', '2021-08-27 03:07:51', '2022-08-26 20:07:51'),
('3657155fdd346087de52260d2168376644f7505e2518d787d98a37d56cf79b350c4e48b077daebb2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-10 06:58:23', '2021-11-10 06:58:23', '2022-11-09 23:58:23'),
('367d65e6617bd0029d88f4dbb7b6cd8c5846ed9041bb1e8313d4e42139db64c7f7d0ec080a9b3d2e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-13 02:25:39', '2021-11-13 02:25:39', '2022-11-12 20:25:39'),
('36b3995f8abc5eaf5832af218589cd44ed6642bff9052edfcb3ab8e622b5cf081fcf452dc6ad8426', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 01:41:33', '2021-12-14 01:41:33', '2022-12-13 18:41:33'),
('37487d7d1e921a63dc4cf61e2c261f5bdcef74c671697b86c05c9c8be45ff21501d7da75019e81ee', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:56:09', '2021-11-15 19:56:09', '2022-11-15 13:56:09'),
('3785ca7041b8fc207c937462d7a799a8acd7c57affb380869ac97f4db38937a789f57f3abdee6f88', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-03 03:42:24', '2022-02-03 03:42:24', '2023-02-02 19:42:24'),
('37a9dc1968ce31a327fd5e0cd8b747b99133d36132bf3abd36c1efca7f768da2e802322dedb5b9d2', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-23 00:46:46', '2021-09-23 00:46:46', '2022-09-22 17:46:46'),
('37b5829f135335fa54867b09815c8bd0918be31f7b9bcada17c3c8c5fdf44caa02d52d7163fbfb23', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:03:34', '2021-08-27 03:03:34', '2022-08-26 20:03:34'),
('37deda8b8b9c6ed66d8f0b011d69c011541c31ced3e1d5b3893338c1f4864e063fc0c1833ba012c8', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 08:11:47', '2022-02-08 08:11:47', '2023-02-08 00:11:47'),
('37fb3ac06ecd9e6a58aff636b6198551aeb73ee989e9d91aa16f8085018f1ce3cc7ca2c01848162d', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 03:47:29', '2022-02-01 03:47:29', '2023-01-31 19:47:29'),
('3823ac9af86e9974adb96a69bb6488d9167c7033641da975e8d582a60c87da1ee5db5485d70eafcd', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:12:28', '2021-08-27 03:12:28', '2022-08-26 20:12:28'),
('38b8a700eb2d502aa13e4ef19059b951e07caaeab2efa2dfab0cfe20f4f939085678d6bd52652fce', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-14 00:57:26', '2021-09-14 00:57:26', '2022-09-13 17:57:26'),
('38d11fc361ba02b40e6f72fa73b7611169c7d21f507ee078bc5e0f14128d5dde9b17cf1a82ac9392', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-22 01:27:04', '2021-09-22 01:27:04', '2022-09-21 18:27:04'),
('38ec25a39d06f86dd0e4217eda3ea9366773d82fcb1f3332f95b30ad5c34eb592a73ebcd154d14ea', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-12 05:26:56', '2022-01-12 05:26:56', '2023-01-11 21:26:56'),
('38fe854050b595f6882f94e16762ff7e8047484673c08b3302e34ff41e34cdd8d3900cdaf4dd48c3', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 07:56:00', '2022-02-08 07:56:00', '2023-02-07 23:56:00'),
('3bb0f220f1d5d86fe4125d7f85c88fbad9382cf7a8df77e2c645391707153b578c58de8cc7487b65', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 09:45:57', '2022-01-14 09:45:57', '2023-01-14 01:45:57'),
('3c904b1642a09169da93f1f252f923efb5ad5a6468dd731d391f795b23f54605945fc28bdee6d852', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 13:50:17', '2021-11-17 13:50:17', '2022-11-17 07:50:17'),
('3d0d112d22ab84014bf72ecf2e7704d2693bc9215c50150d27505086f369587c6bc76dbc51b72072', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 04:58:05', '2021-12-14 04:58:05', '2022-12-13 21:58:05'),
('3e5cb1289da05616b19ed0b85366f1535e735eaae2eab2109aa6692a524a94bf1991c6e55748fec3', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 18:42:26', '2021-11-12 18:42:26', '2022-11-12 12:42:26'),
('3e9e2ae5ac7f9e8141e5d6ccf833ec4d1cb7a2ba191ed262e85df740459b3558740a8f35bf1b3e9b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 19:17:19', '2021-11-17 19:17:19', '2022-11-17 13:17:19'),
('3f0eb9b60b7ea6651ea00c02c76f63a0e8c5ad4bc09bc6c595d37f60a53174042d1d0c4130a61c4b', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:16:23', '2021-12-14 02:16:23', '2022-12-13 19:16:23'),
('3f466e7344d3285a5aeee66ac3aafdc08911ce8d49e906c2f859f88e798a6b733c7247b0745a5ef1', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-22 01:17:52', '2021-10-22 01:17:52', '2022-10-21 18:17:52'),
('3f66d16b04168d71f420292eb62aadb0c52f0e6ed8bebca5eb5b711635bd18cff262fb8ab89e9c14', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 07:07:58', '2022-02-01 07:07:58', '2023-01-31 23:07:58'),
('3f88a4d836817cc3517bfab50b5b14d8165c0fec1ac000c6ac7464439ce6ef5aa16b4fa4016036f9', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 03:26:56', '2022-01-14 03:26:56', '2023-01-13 19:26:56'),
('3fa29ab4f8be57019ab5d5eb7a48326ebccff4065f5e7c1e8c562e4880f06f705f7a66a520ff7601', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-10 06:17:17', '2021-11-10 06:17:17', '2022-11-09 23:17:17'),
('3ff7dc3b45eed22d3a53f1363f5b1a60b797234558421740b025f47176c91c16bee9c4fc6cb04f08', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 07:19:10', '2021-12-14 07:19:10', '2022-12-14 00:19:10'),
('4021691518606e5e55ea1efbde83b6f7f37ee0267dd0362ec4078ee032fa845be983986b4f379bce', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 15:49:48', '2021-11-15 15:49:48', '2022-11-15 09:49:48'),
('4037c0532eddb2aaa7e551a3bdebd4d1a51e5d917f338773e356a388f4e5265c1f25efb83f21f043', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-05 02:33:33', '2022-02-05 02:33:33', '2023-02-04 18:33:33'),
('40c272fe46fb93d55b52c8253cb6a3dede9fce47ef4d2f10dfae69bc6130c930392bd0320237d4c7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 18:33:51', '2021-11-17 18:33:51', '2022-11-17 12:33:51'),
('41de7556915081a07a31bf34d40126f9be5536a50a0a88094c1a193f73986b5cfdbc147615373d89', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 06:35:30', '2021-12-16 06:35:30', '2022-12-15 23:35:30'),
('41fb28bb9e1a97a41965b198bfa8b26c04f6a6c86b24ffb32896ea7437fb00a2a81b778b9cad2841', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 07:55:34', '2022-02-08 07:55:34', '2023-02-07 23:55:34'),
('431671dfe55e5db0ce6174ca829edd730167ea5a192a45b8a5948853919cc4f03f29d255b354907e', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-25 03:16:34', '2022-01-25 03:16:34', '2023-01-24 19:16:34'),
('44dcdef52685f1af2cda44c60bd2615a222e2235bdbbaa29e1a873d9d24d16384bebecda327c427a', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 02:55:09', '2022-02-05 02:55:09', '2023-02-04 18:55:09'),
('4553b0bfa9d96585ee3c670dba242d5e011c9bfd0163eb15c8ff79eea8c6bac88fbe9876bc614f67', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 04:57:00', '2022-01-14 04:57:00', '2023-01-13 20:57:00'),
('46e4605b7cd56c647d256ad8699acce8c31a359412a40cad943e7c42c9749e64f89f2fbf6b24c174', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 08:15:58', '2022-02-08 08:15:58', '2023-02-08 00:15:58'),
('46fc4bf2a5644b041cc25f4308c8ce8fd79892997a59e89ad7668537f4c89618cab0d8f715a82937', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 01:26:57', '2021-12-14 01:26:57', '2022-12-13 18:26:57'),
('4743d02de2ac2d5e2d0bb3e7855d1a57fd38a4c299775e8597aa48672ba26fad1506fd8f885cb3b4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 11:35:49', '2021-11-15 11:35:49', '2022-11-15 05:35:49'),
('4766f11e473ded09252734d86779b405b9ac710e6399afdf98ff88eb672c03f7272eee27fd6fab71', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 04:21:30', '2022-02-08 04:21:30', '2023-02-07 20:21:30'),
('47c4330d17bff0a313653ebfc4b582d5758dfe6f15c5611fbc8d4d35d81387efdee9a6938c2f31c1', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-05 02:29:03', '2022-02-05 02:29:03', '2023-02-04 18:29:03'),
('47f20a01413a41ca9207bf086d61365e2d4dbeefac40a5e9d5c8b09e3672c2fdc3c4dac48dfe8a2e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:44:49', '2021-11-15 19:44:49', '2022-11-15 13:44:49'),
('4819ee4d51c8f47aa10c23ee46dde4ad2e8c90fddb7c06aef6286ba6fae98e6a2686bc368ca2eb97', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:04:18', '2021-08-27 03:04:18', '2022-08-26 20:04:18'),
('48a923ff6cb99d2d16376e72468b1244e74a76b75d40807fc9563da31e852983bcf7623482af10c2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 19:53:10', '2021-11-16 19:53:10', '2022-11-16 13:53:10'),
('4914fe0091e71b41e771e818bf041cabed578fe472bfc3062f5fc383e622f94927cc729e9c403f79', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 04:47:39', '2022-02-04 04:47:39', '2023-02-03 20:47:39'),
('495ff85c73cea81f20d95f445d23e679a04096430eac0589e8949601d8bb3f2875910fb1a6ca131a', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-24 00:24:13', '2021-09-24 00:24:13', '2022-09-23 17:24:13'),
('49fb67c3ff29da9424ab7d2966f73b3a9c6ad6bf5690c2b13af861f2786ed09c32932f81acea2a4b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:12:04', '2021-11-16 13:12:04', '2022-11-16 07:12:04'),
('4a7ff609683920286e43a28667eef104ecf416a0bb45225e5e8d008db6702822eb30394313d5b7e3', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:24:57', '2021-11-15 16:24:57', '2022-11-15 10:24:57'),
('4ab9d8e3603b2117bc000402832e4abc2eef123f2d2237123401c562bc94a3c37a7356e35a4e0291', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:08:32', '2021-08-27 01:08:32', '2022-08-26 18:08:32'),
('4bc21a6516b5128c205e33b2b432f55c1db0a81969079ab29ad35a0ae79d5702e95e840c7bf151c5', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-17 15:50:28', '2021-11-17 15:50:28', '2022-11-17 09:50:28'),
('4bcbc133751299f7af06ac9cf61c3dd85341a79e3310dafabf8b187eb8fc955161ccd3dd5eaf3448', 1, 1, 'Personal Access Token', '[]', 0, '2022-05-09 00:44:04', '2022-05-09 00:44:04', '2023-05-09 05:44:04'),
('4c3392975fed851b7e99721fa1e4d5821869d618942834313c36f1b337e25442d2de00726bc38b3d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:10:07', '2021-11-17 16:10:07', '2022-11-17 10:10:07'),
('4cc6e3cee896bb734784298df9cdb09006891126ca0c9d2892582b2824adbec2a7004d68ce79ae39', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 09:57:31', '2022-02-08 09:57:31', '2023-02-08 01:57:31'),
('4d333484e9fce21a1322a80a695a278559b02b3bbf7913226e081d1cc4c0a1630c3b349b5b88cdf7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:53:23', '2021-11-15 18:53:23', '2022-11-15 12:53:23'),
('4df61e1f353d3be84976a682667f9e2667afa29b523c75f22547f8f11d30f85037a1e1c9c8bdc000', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:01:34', '2021-11-15 19:01:34', '2022-11-15 13:01:34'),
('4dfcbe09b39685c45c9fb2fb7924139f631d88e1cd229af2fb352960c96d179cf09055852537b781', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:38:07', '2021-11-15 19:38:07', '2022-11-15 13:38:07'),
('4e00f92a13607ed69b6a298dca29dbbb291f6c41cff2dd08d33e8731d02a650f5c03e4a39581b1dc', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 07:19:23', '2021-08-28 07:19:23', '2022-08-28 00:19:23'),
('4fdbec801db0c457607f492fee286eb3df9f7b5f7f7307504b5171371aa2fcc0d1bb1288ede24c2a', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 06:41:28', '2022-02-04 06:41:28', '2023-02-03 22:41:28'),
('4ff29446b46536cfd09c97c2f7515b030440afab3887de80032413da797d47fdf92e5ff6f8130b44', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:36:41', '2021-11-15 19:36:41', '2022-11-15 13:36:41'),
('4ff7e47b4fbe87dc806edfeffcdabc0274b67238862ea2f852969bb7fa1ed447626028fc7ef74f96', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 04:55:46', '2022-02-05 04:55:46', '2023-02-04 20:55:46'),
('505e3c5f05926693f6e56da30151692a17eb01818ddeb7404a2fd3d3fd22ba5fb6b04e71e2ee17aa', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 10:08:32', '2022-01-14 10:08:32', '2023-01-14 02:08:32'),
('50dae47b1b2fdfe206c068396fb9348d7361f1789babe67a74bedb0a83ddeb0f94c86ac3e73ea6f7', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:58:55', '2021-12-14 02:58:55', '2022-12-13 19:58:55'),
('50fcb95301692db67098d255f931383cb24a38d3e9fbb3e716954d7fae1a0d6fdebb2f36174178b1', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 10:20:12', '2022-01-14 10:20:12', '2023-01-14 02:20:12'),
('51028553a1bc297655d1fca98608074fde5ba257b9860046a15b9e3fea88d0955129cc1a2a8437fa', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 02:57:42', '2022-02-05 02:57:42', '2023-02-04 18:57:42'),
('51baf5477044fe89dd9bb2237a38365282d051dd2e5c27d22cf11ecdb7fdd3826f0ed17aeef68a16', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 06:48:10', '2022-02-08 06:48:10', '2023-02-07 22:48:10'),
('51e655d3a1e50663e072f6ea985c3a0f843352f43f5f8cfbb1057ab84f1c7fbcabda41fcf88cac26', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 03:58:38', '2022-02-05 03:58:38', '2023-02-04 19:58:38'),
('52e4a5c64518498661bd897e6d7d8b46581670eef22a3f776c3bc38c35af6857a68a9792bdf0a0a4', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 02:48:44', '2022-01-14 02:48:44', '2023-01-13 18:48:44'),
('5310fbd2db847e1bf3b64f4d3bb0f54625655415349aa94aa96eead14bad84576c0388e2f1680fbb', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:35:28', '2021-11-12 12:35:28', '2022-11-12 06:35:28'),
('53852cc2ad3d5aa5cec41d960fdd1f3005b5a0f2ef3dd74d6b2fa5b843f4f4d003d43b1ae3c00fda', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 00:34:33', '2021-09-15 00:34:33', '2022-09-14 17:34:33'),
('53afbdb56c57e54f6e60728d0306742c8e18fe69727bc59dd3422027172050f4c60c9f2f25a49c95', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 04:09:53', '2022-02-05 04:09:53', '2023-02-04 20:09:53'),
('554babad76ddf9c85290fc5c1f1151d0f1ee157220e511a07be9c9c46a55d4e788abbd8739e50ed1', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 09:25:50', '2021-08-27 09:25:50', '2022-08-27 02:25:50'),
('567751db3d9f8c12f48ad74c17c9662ddf551874c707a204fce2fa5dd1b437252b9fc0b1e88d87b3', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:09:03', '2021-08-27 03:09:03', '2022-08-26 20:09:03'),
('56c5778c113d2f90c75eebf0278c2cfe877c8472e7bb9d29e208874a30de65657d8a0dadf6187aa2', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 05:30:49', '2022-02-04 05:30:49', '2023-02-03 21:30:49'),
('57065a336f491f3f696a37ccabf96922eecd5e37eeea61725236244b121fe89cbdd603a85ee3738d', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:16:21', '2021-12-14 02:16:21', '2022-12-13 19:16:21'),
('5709579d86d5a1ba3e1b56179730f1283464e7dfa446efe46dccd58833a7fe0e3e616a5cacf2e24c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 14:15:37', '2021-11-15 14:15:37', '2022-11-15 08:15:37'),
('5920e2c76d31e09a2762ec60975f803e6cdb640bab3e2e953e4a7919814cf82c58e481075500a355', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:51:04', '2021-11-17 14:51:04', '2022-11-17 08:51:04'),
('5c67ddafec844c07111380bf696087a52ceec502464da4bfa23555afc1da0213ae698816a7cc882b', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-15 03:57:23', '2022-01-15 03:57:23', '2023-01-14 19:57:23'),
('5cebcedc7320906b533457f09ebcbb6ce1ef434035123104a8dd3aafa1fa4b372ab9dd6f76a09fa2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:57:43', '2021-11-15 18:57:43', '2022-11-15 12:57:43'),
('5dd4e54981ab68c2db1c173e81adceab8fe56877cda9c2d6aae378cc2b1640a2a607e81d40c1af08', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-25 03:24:22', '2022-01-25 03:24:22', '2023-01-24 19:24:22'),
('5e1475f1d2d02f59746e86b54b3600f4fccbe1a97fd5895085bd7591f5718e523ebc6597f5a72dd4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:02:31', '2021-11-17 17:02:31', '2022-11-17 11:02:31'),
('5ea957e8fdd13021fa87c9835a389dfbee6acd41cac9e40223f921ec1156af1111674b5824944f85', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 04:55:48', '2022-02-05 04:55:48', '2023-02-04 20:55:48'),
('5ff158010c040d6b46cfe2c4f82ce834d8b7baeb5acd7242d03e7f1eba43e2bbefffb591aaeff6d2', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-09 03:15:30', '2022-02-09 03:15:30', '2023-02-08 19:15:30'),
('608657cce2ccf616a3c85cb5fb0a29260a5a2cf5daa0059ffd0913771aac0e6b57a2250ace6d0768', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 08:39:19', '2022-02-08 08:39:19', '2023-02-08 00:39:19'),
('6242fdd38c3fa5712494d9ff46f7aa4eae305a4cd61f1a8047d0332bb3d292e12ce7641324dcccd9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 16:39:59', '2021-11-16 16:39:59', '2022-11-16 10:39:59'),
('639c9269e38d841404ad8783a16aee75a411f66efad8bcbaaa0ca1c09cde8e976d4a2480332ce6a1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:23:09', '2021-11-15 16:23:09', '2022-11-15 10:23:09'),
('677ff271a709e9fcaec088604c775dac1ae23a88b8f40ce4e9a1d2f92337937d218e699ec5da2cd1', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 06:55:35', '2022-02-04 06:55:35', '2023-02-03 22:55:35'),
('67e8214b907bb3aa78dd7b676552044489b67eb5f6c8355460413fb11ea6eb0118cf44457590dec5', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-28 08:52:46', '2022-01-28 08:52:46', '2023-01-28 00:52:46'),
('68acc38a400d5cf898ef8cb43ff70cd4861b3ce782c31878cefdca56d89fe4867bbbc345855e389b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:09:10', '2021-11-15 19:09:10', '2022-11-15 13:09:10'),
('68b610ccb1cac5b4049397eb98bac0ffc6f462a9e6a844473ac73fb0d74bfeb7977d713bf3d63ed8', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 07:11:35', '2021-08-27 07:11:35', '2022-08-27 00:11:35'),
('696014030e6648e931dae5409e24328bb6d6dfb2a66d8e3c15e49c2f64f077affffe0e927263ea16', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:59:08', '2021-11-16 13:59:08', '2022-11-16 07:59:08'),
('69be86dd1d2b0734d65601c6db72b55257bbd84505b6fce313925e5c01fd52e00c1dbe0a7eecb24d', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 07:50:03', '2021-12-16 07:50:03', '2022-12-16 00:50:03'),
('6a15e6bab1c74c3572f7c4e3a27c769fc04f1ad76665d15a682d7dd43019c487fcd49f5c0e9f57eb', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 05:16:25', '2022-01-14 05:16:25', '2023-01-13 21:16:25'),
('6a6a09dd8321df93766604fff4317d733fb91d7e4de973cc002b5dc28130dc0f96368100fe6e978e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-13 00:42:16', '2021-11-13 00:42:16', '2022-11-12 18:42:16'),
('6a828531343fa3ef74a0a671fd443803a6a4b624809e165610c9d9687fc0f82084a560f5e0729332', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 06:48:08', '2022-02-08 06:48:08', '2023-02-07 22:48:08'),
('6adebe26fd5c07ec71befc0ca509c76beb3329647b4b04cde0001e2022c871cd6e969f8479213cdc', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-28 08:43:07', '2022-01-28 08:43:07', '2023-01-28 00:43:07'),
('6af40d4fd301493a95fe8cfa2d44a6a5db337f94eca49888c9218e96d9272d2ede3cfb08bb92902b', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 08:11:09', '2022-02-08 08:11:09', '2023-02-08 00:11:09'),
('6b083d4870afd1a7bd41f8793e182a8e2640697a6e6c9e801aee6ec5253e7c8be88870b6b367e2c0', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-25 00:24:10', '2021-09-25 00:24:10', '2022-09-24 17:24:10'),
('6c65aeb6efe517f44460529c7bb2523d95e3cb23784c46d7a367ba86c21bcace8b25085d293a46a7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 17:23:07', '2021-11-12 17:23:07', '2022-11-12 11:23:07'),
('6dca6d0164376f4ac0cc5515e414ebd8a361307bac5b6b0420f1f6a7f9fa12daf71eeac322afdf3a', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-05 02:27:31', '2022-02-05 02:27:31', '2023-02-04 18:27:31'),
('6e0641976b032944d0234dd9c495bcdf695a17beacea2d35c698e36ca7b889eec78dd6cb081982f5', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-10 06:14:36', '2021-11-10 06:14:36', '2022-11-09 23:14:36'),
('6ea8b82072105e9311b8015f006e2a2457eb7d9fb29df6d038c27c86e8f659714847e63268938de3', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-04 10:53:47', '2022-02-04 10:53:47', '2023-02-04 02:53:47'),
('6f2b98b14083f5297358c6d6af116c76a40c5d76145a5324c5920fd75b8dbdc31468d1fcbe1828d1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:21:49', '2021-11-17 17:21:49', '2022-11-17 11:21:49'),
('6fc46635737df65a1e2d0a2e5ae728c7fcb0fd1ccd00ac5c5c94e1049c807d2e34c8381d93e6b849', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-05 04:43:50', '2022-02-05 04:43:50', '2023-02-04 20:43:50'),
('7182b7a3b46aef135efe7afa65a7ef4eaaae002e9cba5c8d4b00c943916bd1abe24eb519ada15635', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 00:45:53', '2021-08-27 00:45:53', '2022-08-26 17:45:53'),
('726b8dbf7e42ebbd964945545985bc01a57493421681c5f5eb55f507981b9cc22a00a8d9da657e00', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-08 09:48:59', '2022-02-08 09:48:59', '2023-02-08 01:48:59'),
('729350bfeb6cf378a4995db5b8d6802f6713885dc40a8a6b15cb6bf64ad61eea05efd5339e05d480', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-22 01:08:33', '2021-09-22 01:08:33', '2022-09-21 18:08:33'),
('72dfd2f7444a9638a0511b0375883094d36085e99cb50d9d756c13c50aea48d1d7aa7529c06575dd', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-09 04:13:39', '2022-02-09 04:13:39', '2023-02-08 20:13:39'),
('73faf7e4196aad00da15938fd626c0eb21c5485f310d77e5171dead26f0fc14fb6213e29200e22fb', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-15 13:05:36', '2021-11-15 13:05:36', '2022-11-15 07:05:36'),
('74161c39d7983303189ec471405a94838f0949909be0c4c9930e7d1a3acaf312bf76be161c5001cc', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-04 07:56:11', '2021-11-04 07:56:11', '2022-11-04 00:56:11'),
('742051bd514672403dbeff14d45a2aaf3719c5e6631d2450715bc36ed470874ad780218039a070a0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:23:15', '2021-11-17 17:23:15', '2022-11-17 11:23:15'),
('74379a0e5083b6b11a6c0bf352623bcc6cfed8314e3f4082b88e73b008f1326843bcac92f6e382b5', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 13:58:36', '2021-11-15 13:58:36', '2022-11-15 07:58:36'),
('762ad67bee0da77ee11f0143566ee072b2930ef7bf43aa5f6e6deec0534aa93da2af3c8a80c04e93', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 18:50:22', '2021-11-16 18:50:22', '2022-11-16 12:50:22'),
('763beabeb0c8f102dc362b3d54b05e3d1ec4afd6b9dbc442a2f7cadbef03c016ce87b5b7a99a1842', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:24:22', '2021-11-15 19:24:22', '2022-11-15 13:24:22'),
('7804498883e58041d1c307d78027421561bd1d12714212cfaa17ba6684e1a917d584410e317582f3', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:38:27', '2021-11-15 18:38:27', '2022-11-15 12:38:27'),
('784a5d543b1cbcfb619076d16d7748811a54c6f1675295db6322560fe2e766ce01fafe3278ec4e1a', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 08:54:20', '2021-12-16 08:54:20', '2022-12-16 01:54:20'),
('786a2f36beb3a96928237b93895dc10d5faa1cb86c4d7472bc8f686c1595a79c0be4aaac08e48abd', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:27:06', '2021-11-17 17:27:06', '2022-11-17 11:27:06'),
('793a6a887825a7ce3cf8777ce2642efcadf432d7dc6cef0b8dd874f28a3a6ec8979a8d81ac7218f2', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 08:10:24', '2021-12-16 08:10:24', '2022-12-16 01:10:24'),
('7967cd3c39ae823c6a5c3affdbd61a4cd655abecb4dc60e2a3fc852e94766cc18141580ff9700730', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-09 05:27:29', '2022-02-09 05:27:29', '2023-02-08 21:27:29'),
('799e132f5095b94a26988e8aced6f705db518a77b8aa6caad611e00932768892ed819ba416147873', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-27 05:58:56', '2021-10-27 05:58:56', '2022-10-26 22:58:56'),
('7b097f22c61a3b2f33ba4fd48d86241a6a623e2e447ef84a84c5e294e7a5b6cff946566758045950', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-08 09:49:20', '2022-02-08 09:49:20', '2023-02-08 01:49:20'),
('7b917735717f65c81c22585b1e40d6b6b5603776d53026bbd819e2fab5756c840715d220109e31c6', 1, 1, 'Personal Access Token', '[]', 0, '2022-06-01 04:19:26', '2022-06-01 04:19:26', '2023-06-01 06:19:26'),
('7c4407953c2728c3c71e32cb7285ef1b2055729adde3012e57e84e43bd718bd9ce67eb0a2ff7313b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:02:41', '2021-11-16 13:02:41', '2022-11-16 07:02:41'),
('7c7fd1cbdc1ea5abe98e757326f734dea8a6d3761ee7ae52e0fb0faa8f3ba9fc95dc2bdcba9ce82f', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 19:14:49', '2021-11-17 19:14:49', '2022-11-17 13:14:49'),
('7c99d2f8aa1a2c14b0fccc2bceac2536b304c83ff8016b64a44c00fa2ebe3b3e3396416ecf164f5a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 15:55:20', '2021-11-17 15:55:20', '2022-11-17 09:55:20'),
('7ca333ffc2ccf461e703338495a07852be81fa3f693155d37dac15b039a353f6271a2ec053e1ff05', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-03 00:58:10', '2021-09-03 00:58:10', '2022-09-02 17:58:10'),
('7ca580322bda8ba56c14513a7948a39ac9e36459a76ce8ebf7551fabdb473123b6f086e0b2a8fe32', 1, 1, 'Personal Access Token', '[]', 0, '2022-05-09 00:44:02', '2022-05-09 00:44:02', '2023-05-09 05:44:02'),
('7cb928310ce1e9e266d3673a28e4e1da076cd8a98046b87e035b10ee6ab166686cc444fed3536b70', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-04 00:12:24', '2021-11-04 00:12:24', '2022-11-03 17:12:24'),
('80b328a2b8ec39d8857bb399d43f3f1304341cc1fedeab861d8423ef90a3271f55e9078ee56d7d24', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:46:04', '2021-11-15 16:46:04', '2022-11-15 10:46:04'),
('813617094e59f9719d8c2316c540d60fb4af59aae00067fb6167a2467ae7a5c6aa7074d89ff2af70', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-14 07:11:40', '2021-09-14 07:11:40', '2022-09-14 00:11:40'),
('820b1d6562f157d6ff157b8cecfe46d5e858e6763f76293907592ad382f4a649a70f1a1908398312', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:29:35', '2021-11-15 16:29:35', '2022-11-15 10:29:35'),
('842e46922cc16af29d3896b05955c8d5731f7d54d10220235226216109c984a0b65222a463130394', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:22:39', '2021-08-27 03:22:39', '2022-08-26 20:22:39'),
('84d876dff1b46c8219edeb885853c65c6bdd4b8089f61a48c16f3b8ad1a7dac652e397adbacc2d7d', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-12 17:56:13', '2021-11-12 17:56:13', '2022-11-12 11:56:13'),
('84ec156b3a9431dfb4e63e5818808c56420c81adbf88321e9e12a66540c0c72297e8f0a184543fc9', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-09 04:43:44', '2022-02-09 04:43:44', '2023-02-08 20:43:44'),
('857f78d9672ff95056272420f9e9317d60a97932eda0f04aba0c1b32cca5317ad2a97fc7aa8fd980', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-28 00:18:00', '2021-09-28 00:18:00', '2022-09-27 17:18:00'),
('86f8c458b7d6e5854bb372c47939a48c864855124b8783eb564e09fe7b0f17274bfbf6ac2334346b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:46:59', '2021-11-17 16:46:59', '2022-11-17 10:46:59'),
('87d2650632cb5c4a5fb77a4ffe4ba06946d550a983a7f7be3c730545c915f4804b44ecf7368f6904', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 16:26:46', '2021-11-16 16:26:46', '2022-11-16 10:26:46'),
('88dbc8bfe89c2a9be86886072248e0e2c67bf0827d226df36f252c78ede5b9ec03e347c199ccd50b', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 06:40:10', '2022-02-08 06:40:10', '2023-02-07 22:40:10'),
('8933d12748c6129fd8b1e99b1e784a88468d542cc30e60c0cdb323ec9184556cea4d18e7418613d4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 16:41:47', '2021-11-16 16:41:47', '2022-11-16 10:41:47'),
('896cc209bc73c0ddde67f85021987f7616495d0efd41a52d1c6d27992db26f32ec0f890de860005e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:23:35', '2021-11-15 19:23:35', '2022-11-15 13:23:35'),
('8a15a36d8cb4c6971e795ffb38bc6006203c02ea34dd568c818ebd55361c9d1b1e12e259d7c6eae5', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:30:14', '2021-11-15 16:30:14', '2022-11-15 10:30:14'),
('8ad383338189ccd7c15d97aa7496f6ae162fd22ef95de894f9d0eae7874265b233d1438b33b3dae3', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:29:23', '2021-11-16 13:29:23', '2022-11-16 07:29:23'),
('8b116914c6cd9367554ab5ee64b0c0fa082c6d35427299b513a583a8d98e468049257fc7372747e8', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 03:39:36', '2021-09-01 03:39:36', '2022-08-31 20:39:36'),
('8b3bd4e244bde8c6de6d8532ca7b3a002643657e8a253b616d9d5bbd6ed808f85ac14eecfb750b6b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-04 07:56:09', '2021-11-04 07:56:09', '2022-11-04 00:56:09'),
('8b3f01c00c504655aefa9f4cdaa052b6975f0e798bf56b54187633cba69ecb8bb0ff14fbc92ad212', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:54:57', '2021-11-15 18:54:57', '2022-11-15 12:54:57'),
('8b6a9f65c92c743d30dc26103162806b7509fab5e42d546ac894c25e7186b0f14357a349a8501d80', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-28 10:13:46', '2022-01-28 10:13:46', '2023-01-28 02:13:46'),
('8b8b47cee92f8ca548e82bf4a09c558f7a4b704d3b570449fb9af54df6d32662e173b2eca44706b8', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-23 00:46:47', '2021-09-23 00:46:47', '2022-09-22 17:46:47'),
('8bef687a380e4774cfd2ea37f8f4b2e909d7a7a25f8577e31895eba11b496dd220679f0cd2c6936a', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 01:40:15', '2021-12-14 01:40:15', '2022-12-13 18:40:15'),
('8cf6ff47e8bc25fd70ceadf435756c5f66b5793b6479f27d2cdf8e835884ba365f71f39814f2d533', 1, 1, 'Personal Access Token', '[]', 0, '2022-04-26 01:58:30', '2022-04-26 01:58:30', '2023-04-26 06:58:30'),
('8e419420aca51660fe8aa5f09cf0ede447fd40fbba4221dba7f594b65e02e28033ce901a7cddf678', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 04:21:14', '2022-02-08 04:21:14', '2023-02-07 20:21:14'),
('8e544443e73cf2d484e7c68a09c4a92a9653bd655166071938b88217a0db8899ccbf4364a833f7f5', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 15:00:48', '2021-11-17 15:00:48', '2022-11-17 09:00:48'),
('8e9690a70ca0ac23cc9885795010d8a84b0cc5f7d52855f8cade3e9b2a314ba98059df2f8290aea9', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-11 09:37:12', '2022-01-11 09:37:12', '2023-01-11 01:37:12'),
('8ec5c19dad975bbb810d4b54c2f6be4180aabad9b7b64ddaa061f8fee7a69762bd8ad84f0254633d', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 06:23:28', '2022-01-14 06:23:28', '2023-01-13 22:23:28'),
('8f933a026a61e9f01500c6f51d7bc9f8ad7ad2414df0a8fcffd2305196a08b3ed2ff458a3d70d32e', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 05:55:38', '2021-08-28 05:55:38', '2022-08-27 22:55:38'),
('8fcbca9fb194efbe890421c14dfe29f78177951bc98f4a849f1a4d7ca874ee88d908a6e302a7cf11', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 08:25:48', '2021-12-16 08:25:48', '2022-12-16 01:25:48'),
('8fe7bd37a4aa147fa32275fd9d9069c64a47a800e7a63d654f613868e6f62973db2bd1968e329062', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-22 01:57:34', '2021-09-22 01:57:34', '2022-09-21 18:57:34');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('900d701cef488bb7095958aa1194edd71b8bb0b6c70e3f064251fc563c829fb04dbc2417868e7a70', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 09:31:19', '2022-01-14 09:31:19', '2023-01-14 01:31:19'),
('90679dfd067030a43df7c69569d186c9a46f91b2d7b63cfa7b2ebf9b1c1e912ca28119bf05efdc96', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-08 09:46:31', '2022-02-08 09:46:31', '2023-02-08 01:46:31'),
('90e7a8e78887fa66e9e6cb84a9ba83cb90591b30f75b58fe452a8ce67f52b20ebfaf48a7a8efaa3a', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 04:10:55', '2022-02-05 04:10:55', '2023-02-04 20:10:55'),
('90fcacefa1ed44b19bec8648f8615cb4835189afa455ac8722abcd7536b7be72eec3e6b6d6315e12', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:55:11', '2021-08-27 03:55:11', '2022-08-26 20:55:11'),
('912f68382a1fa37a8062159825f1d62a0f3dffa17087d9b17b36f22744e43a7b79496592060852a6', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:58:43', '2021-11-15 19:58:43', '2022-11-15 13:58:43'),
('91a5c72f665885670e987822f36c27b39597b3b62fb170bfd0dc6a9426668eff87c382524422cf9a', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-02 09:05:03', '2022-02-02 09:05:03', '2023-02-02 01:05:03'),
('9201f19f9c817cb4503c7c1e11f9ebce2101dbe3f98db25ac53f47ced0cd91c01c97867ed107f218', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 02:27:17', '2022-02-05 02:27:17', '2023-02-04 18:27:17'),
('924c4223cbb9e53dbaf7f2b2a52281acb02a81cf59fea6ccd47de449bd78c9aa0f1298f35ca82aaf', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 06:47:40', '2022-02-08 06:47:40', '2023-02-07 22:47:40'),
('92a90a9bc8f06bd05dc8cde711b54059211c6aa5f700f10a855d1e942b1bc9c8f020174837f1d756', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-04 07:20:04', '2021-11-04 07:20:04', '2022-11-04 00:20:04'),
('9308ea1c6a6ab0d3450d8c4f1a77483ef1ebe124b7719e674c4aba73aa6e5524a633cd1e04398972', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 09:58:19', '2022-02-08 09:58:19', '2023-02-08 01:58:19'),
('933b287f119d2efd7da28c7fd2c62f0f94cf96c211e0a1e5a23cff426234b4dbe80da071ff2ae356', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-30 01:49:33', '2021-09-30 01:49:33', '2022-09-29 18:49:33'),
('9399ffe49a2e1675ccae5968668aa3d822db1ce7363f6fa3993952a9541972c5e5d69d9eb2084e56', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-05 02:12:50', '2022-02-05 02:12:50', '2023-02-04 18:12:50'),
('939e84ba1b62502256bbfd1b8df0ccd02464ef42e3b6434115d5d2e1acef24bf250921e0cb1d6555', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:25:52', '2021-08-27 03:25:52', '2022-08-26 20:25:52'),
('93f9e527de33a2b5d527b9815af640fa5df9cb73c35f39357843106cae30e754b8da805fc57edff2', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 04:54:57', '2022-02-08 04:54:57', '2023-02-07 20:54:57'),
('9442dbac932a7caf43903f6ad072f152b03647099d061db17d3e8ab77d6eb046a8c1306c69373e91', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:46:07', '2021-11-15 19:46:07', '2022-11-15 13:46:07'),
('947f644837466c0a90b0319c40359b5142eb7b42343d8be435147d9ff6fb1c75947669c184e9da0f', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 00:47:41', '2021-08-27 00:47:41', '2022-08-26 17:47:41'),
('9485ccd2133263673dd820ce5ec4289b5c94ded9a099396c1becba3cc0b2f5bbd815a22b331e0d69', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 05:32:53', '2021-08-28 05:32:53', '2022-08-27 22:32:53'),
('9487799175ed7d60ca3c73ba81fdac6ce6fd4b2534725db7aa8510117d508c59eee4c9716d0d0f70', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:19:23', '2021-08-27 03:19:23', '2022-08-26 20:19:23'),
('94fc3a8f838640682b3b98e8b0fd0a3b30a17341052b840c261414f136295cd87c94289af2b59097', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 05:16:17', '2022-01-14 05:16:17', '2023-01-13 21:16:17'),
('950253300dad783f8a522cf73301e703c250e42604d4f288b51be2a178dbb59826d0645e6069d134', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 12:35:33', '2021-11-17 12:35:33', '2022-11-17 06:35:33'),
('952f9821ea7022ddd212ad065ba033072e7c0720f2d58f1552f200ee9a5f502a88707f485cbea312', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:16:58', '2021-11-17 17:16:58', '2022-11-17 11:16:58'),
('9570fb5bd2e96dae999525586e72c2bd2d102a1885a02083e84a1f338b943718a2bd0704379bc45b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:09', '2021-11-17 16:47:09', '2022-11-17 10:47:09'),
('9613a2a29de3d6c09e31cc06704e82da36ed740af9e8953f4bb4c7330576d6c67ea1ec51b1ef46d4', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 10:18:25', '2022-01-14 10:18:25', '2023-01-14 02:18:25'),
('964464a51ef1df844cab89b791592502fe11e69d7c9d83ff6c2c84c015c58e5a3130d2fed9576306', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 02:25:48', '2021-08-27 02:25:48', '2022-08-26 19:25:48'),
('96f87695f9b4386d17faf5b219ada32aeaabe70b2d73f41ae0d4dd35570be2499839140618bef6eb', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 04:54:08', '2022-02-08 04:54:08', '2023-02-07 20:54:08'),
('98a7182ef4daca5d41606fa905001875d6728968fdd13d0ac5ec5e16aefb7ce0f5e1e3c8f9b24fb5', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 12:23:31', '2021-11-16 12:23:31', '2022-11-16 06:23:31'),
('9a0916efae669d3c1211e086ad819f00b3a63d41f4bb88d4faaf385c4ed3269c8aa5e0f67dca4bde', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-03 00:27:30', '2021-09-03 00:27:30', '2022-09-02 17:27:30'),
('9ae85a8dabe8e90ef384ad48579fff98413334c1800d6dbd387e7c978cb9212b2e6832b9eeef576d', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 09:25:49', '2021-08-27 09:25:49', '2022-08-27 02:25:49'),
('9b65cc4a45124612e32b59f3e3f49151acd9e315614eef188eb74fd2595f66a5f91906dd91b88fb1', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-21 02:07:19', '2021-09-21 02:07:19', '2022-09-20 19:07:19'),
('9b87ede6b5f2eecf662c1489cf3c8853121f7b0490f32c3958867a42477384a43fcb4a04ae815619', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:26:43', '2021-08-27 03:26:43', '2022-08-26 20:26:43'),
('9db2059f31bdecada310da2d1e476b1d2386e2cf4dac11385a6640ad65db524d739e1077c11d97d7', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-14 07:02:46', '2021-09-14 07:02:46', '2022-09-14 00:02:46'),
('9e364d65f21727b37966fdabc11fe45cb9097546e2712c4e783f96c62b21189af874378297ebe88b', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 08:12:57', '2022-02-08 08:12:57', '2023-02-08 00:12:57'),
('9f036fe6c2010980d36413bc7432ee5e4ac22abf75557c38a3d4fd8a582b2a033f61977a730566ac', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:52:30', '2021-11-15 19:52:30', '2022-11-15 13:52:30'),
('9f12c917e19d660c27acefaa8aa603df78f57cb68cad8f029a53877804561304df7d8ba275556e92', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:05:51', '2021-08-27 03:05:51', '2022-08-26 20:05:51'),
('a03d57da8f86f21445dec2dc5d0b4f72718b2c2f38548021a0f40033fa8bd3a74d7774efd69de997', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 04:46:19', '2022-02-04 04:46:19', '2023-02-03 20:46:19'),
('a044df6c5902a1c3ac5ae9db6eff438e662a21bb89bd2b4103e91ab3453bf533f17d35307f481b8e', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 10:26:17', '2022-01-14 10:26:17', '2023-01-14 02:26:17'),
('a0ac7eeb7ff99308158bbb07d0a387a9e74ce2548c140f396674915b1337679f0c0ff15a19c33b00', 1, 1, 'Personal Access Token', '[]', 0, '2022-05-09 01:41:00', '2022-05-09 01:41:00', '2023-05-09 06:41:00'),
('a0e66ed0bf6f2481cb3d4951798707c89248eabe0eb6c7e58c166acfc16ad894034e1bdebfea12c5', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:06:55', '2021-08-27 01:06:55', '2022-08-26 18:06:55'),
('a13b9194618d2b7a984c7180dbda8f9c0ca1bfa06aaa556a4691ef4fe534c7d5821876c38152df7c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 18:56:46', '2021-11-12 18:56:46', '2022-11-12 12:56:46'),
('a215c255c7331229e328410e3f7b4b42b2243a7b4cb1fbf4b6853a37c50c1323acb75313baa190c1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 13:46:38', '2021-11-15 13:46:38', '2022-11-15 07:46:38'),
('a223206818439d283884f6f3ccdc28fcc29a6222de6ba0352d62a67f64ec27a385d4c602b2621a43', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-08 09:46:40', '2022-02-08 09:46:40', '2023-02-08 01:46:40'),
('a3f1ab3f993c2ae74a97a73658689fbf298c3631e20eedd9ae7cbd6a5dfde466fe53333ddfd2716e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 17:09:24', '2021-11-17 17:09:24', '2022-11-17 11:09:24'),
('a5887d5a9d5496d0c5c625d7144aad8f27987d677206346ab0923b9ed80d1439fb186a0c91363c16', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 05:00:43', '2022-01-14 05:00:43', '2023-01-13 21:00:43'),
('a5ae1fbb4cb9465422d46aa4bde3c963fb9bf4593691ce88fbe3acca5fc084b2734e5ba2095d8e86', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 18:29:53', '2021-11-17 18:29:53', '2022-11-17 12:29:53'),
('a5f2d583501aac4b8cf9ea0a83f55f5a3707df5081e753f8517f1986a9e85b1da9e8570b7971d4d7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 12:15:17', '2021-11-17 12:15:17', '2022-11-17 06:15:17'),
('a5fe5b3f04f7f55d36db77618a17d110138b7ab88c181ea0cd69651996f035b02fa700426df442a5', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-08 09:46:27', '2022-02-08 09:46:27', '2023-02-08 01:46:27'),
('a68881ab5871f4a7f43501385ab74fdca92d5031c60813fdab15b180fea0434331ae330c054bb6bf', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-03 00:35:16', '2021-12-03 00:35:16', '2022-12-02 17:35:16'),
('a730c32eeadddc6ee0a81e42336bdb9f9246c4d65d30e3ab88e5e2b663125562f818669286dcf72c', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:24:38', '2021-12-14 02:24:38', '2022-12-13 19:24:38'),
('a94889ea1c527752b009e272ed088b6f4964bfd6964eb53713b452bd84e084ebf5d42e373cc6704b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 11:50:46', '2021-11-16 11:50:46', '2022-11-16 05:50:46'),
('a97146b93b6e999ab9e408e26757ea506c89684fde702bd8885f24bdb5f4424e81ec672ca30031ac', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 14:22:43', '2021-11-16 14:22:43', '2022-11-16 08:22:43'),
('ab2a2dad45e9cdbcac91cf749882b6d260130af4c3efaf30d37050b5acc3f15a186fd40d16e2da87', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 05:00:17', '2022-01-14 05:00:17', '2023-01-13 21:00:17'),
('abfc59f46c1fdb0007878be4d03167c4368f4d5d54339816295acc1853573b601cb96fe16167369a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:58:38', '2021-11-15 18:58:38', '2022-11-15 12:58:38'),
('af84cfbc455205852ba27e7e5093b59f23ec82f91645b181652070783e0ec8319aab38cc0d2ab758', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-06 00:23:52', '2021-10-06 00:23:52', '2022-10-05 17:23:52'),
('b029ccdd691ecaca406726d3461b433d2cc61e469498c88a035e9d929e37f10e80142ea7c70dd36d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 19:08:06', '2021-11-12 19:08:06', '2022-11-12 13:08:06'),
('b08b1f46bdac76736a529414b1837c3a10c224c18afa5185481f42142c68ee5ea73a4ffcc4e390c3', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 07:53:37', '2022-02-08 07:53:37', '2023-02-07 23:53:37'),
('b1e3949029702b595b4d18ff345495d98fadef98b429dd9fe9501d6ec1472162ebe28e3975c0d77c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 17:42:03', '2021-11-12 17:42:03', '2022-11-12 11:42:03'),
('b3628b81decc112c0b0ad47066be9cfe612f6b396b0538cb270e944a73fcd571958b86f0c4658b59', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:39:17', '2021-11-15 19:39:17', '2022-11-15 13:39:17'),
('b42deb46663730f2dd664d020de98458a4f1d2d1502cb525ce32fca78c563f27aec1e7eeceb3b05a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:31:25', '2021-11-15 16:31:25', '2022-11-15 10:31:25'),
('b50361ddfe9b4bf4b43aa8ac9e4c4cbacbe688c87c94e8dbf73850eb10fe94b44d79ff96345dcf8c', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 04:21:08', '2022-02-08 04:21:08', '2023-02-07 20:21:08'),
('b52b90abe1a0bd9fb51915ce078a3146a0d11215386f09e69e4cb2be6644b808085e4ea442442f5b', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 08:31:38', '2021-12-16 08:31:38', '2022-12-16 01:31:38'),
('b5478716e74afc1a6820546e0289f9bd9d49153838eefd76ea64c14b8b19bc2cc50d3a37f82c807f', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 07:54:08', '2022-02-08 07:54:08', '2023-02-07 23:54:08'),
('b548b5f68a967c5c0ed8b01f18c583156fe9f678a28c960320423aff57a5ee8a019dd46153fcba12', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 06:52:13', '2022-02-08 06:52:13', '2023-02-07 22:52:13'),
('b54b4b7999a00ec437d99a0b5167f8e9a9f094e4881208c7fdf3e465597fe017bf6f6edbc9f834e2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:32:20', '2021-11-15 19:32:20', '2022-11-15 13:32:20'),
('b5e6d08fdb2fb99ba5f78137341c16999efeffe103a64459d13023196ad1be5d5d179732b82dacb0', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 02:19:04', '2022-02-05 02:19:04', '2023-02-04 18:19:04'),
('b5fdcbd46e80afbf654d2dfc5da51db305a9b617ce4bbc0e3c063fba944646da78cca79e41601303', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:41:36', '2021-11-15 19:41:36', '2022-11-15 13:41:36'),
('b70c75d549eac8c05421fc330528634e0a93088f42b5fcd3f6e3d9e52511668851c753d56b6abc23', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:08:58', '2021-12-14 02:08:58', '2022-12-13 19:08:58'),
('b868a1ae8afdc5ed8f0aabf8cdf3aa536fb28d5dba08ee5218b100c1df7b4184d7fda81ad3a9a69e', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 08:44:25', '2021-12-16 08:44:25', '2022-12-16 01:44:25'),
('b950720309f95eb9d273fa462c29d63966da4de6a15789f2d13ded5561954574fbf8135e56ea5bc0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:30:08', '2021-11-15 19:30:08', '2022-11-15 13:30:08'),
('b991ea3336fad31467d13ed012310b0e75f6ecedf025f4f16651fab793c459d84d1a4bf203b40f78', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 07:00:25', '2022-02-04 07:00:25', '2023-02-03 23:00:25'),
('b9a392827cf37c8a9c031a90a32d09d86f08ba234505265e513561410d87baefe83ad63fd0680b20', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:09', '2021-11-17 16:47:09', '2022-11-17 10:47:09'),
('b9addd8b955eb948bbf59ad64aa41d6797de7037921e69b1d6af2925d2a44402a7897ce184488252', 21, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:43:48', '2021-11-17 16:43:48', '2022-11-17 10:43:48'),
('ba1006b99d7e020f693dde54867d90d494d11a373a108cdaee6369163e6bbe2462cc81368c35149d', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 13:57:38', '2021-11-17 13:57:38', '2022-11-17 07:57:38'),
('ba5ab888f0869f80730a55a3b988500bf5f5557226126ecd43afe0eeb2b82fd9536b62b6bdfc0a08', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 00:49:46', '2021-08-27 00:49:46', '2022-08-26 17:49:46'),
('ba663eca6d1e7f8a58b75cb150806428761f96a9cab5ca4047ba78c187c95b8c6bd251cb0720f01e', 1, 1, 'Personal Access Token', '[]', 0, '2022-05-09 01:35:04', '2022-05-09 01:35:04', '2023-05-09 06:35:04'),
('bb733749602c83d3359809942dd809a054dba7ddd0cf66f1fbeffc83e2dd2208d7d647a2d7c363e9', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 01:31:57', '2021-12-02 01:31:57', '2022-12-01 18:31:57'),
('bcbd826669ba2dab96fed027c0bded18024bdf0dc425cebed4b99b8cea178c105f6487648967dde1', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-28 05:36:51', '2021-08-28 05:36:51', '2022-08-27 22:36:51'),
('bce89b15e95aaf172fd0e232b1469a583b865bb4652878f9867e8d64bd1680cdea433d20fc895841', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:27:56', '2021-11-12 12:27:56', '2022-11-12 06:27:56'),
('bd3aa7efcf7a84bd645654f67ca0879805c7f4d7906c0d8c48ecdaa7e22f6efaf32fc785cf4fcad8', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 04:33:16', '2022-01-14 04:33:16', '2023-01-13 20:33:16'),
('bd9e792f2453bc003cb1352b0dde835eb039fcece975d4a797d0ad62562b76c2b6ea2cb76120b621', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:35:33', '2021-11-16 13:35:33', '2022-11-16 07:35:33'),
('bf8dcd1ddfdaa2c65e142bb5447ca5a3fba31d4f4a656bc8f04ad45c32cfda81a7b459135fd37f5c', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:08:28', '2021-08-27 01:08:28', '2022-08-26 18:08:28'),
('c17f193363ca970cc9f7b267962b7f8bbcb2305494f664f08ac29ec7ca80c79748c2524687a4cb6a', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 06:31:37', '2022-02-01 06:31:37', '2023-01-31 22:31:37'),
('c3223e62b4c49dc76efb317554b12b8fea0d8dec4f019e0c63dac0ceeb5ed2dea5e325aa3ec601ee', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 06:49:04', '2022-02-08 06:49:04', '2023-02-07 22:49:04'),
('c33ecdf5ffb5df1cc1d11b3cdf44a56994a971963c9878439d7a382ce482e6ca1b3173a33eef9fe1', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 04:10:46', '2022-02-05 04:10:46', '2023-02-04 20:10:46'),
('c34a86fa361fe94e872e383f99988009ae733e9153bfb2412f3aca8e1b1d70d845a1af5de43bd826', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 12:02:30', '2021-11-17 12:02:30', '2022-11-17 06:02:30'),
('c3659848819dfb268977324cb2ebc69b630b2965c35df8bd52f81247fae952c8a81ffb144ea104c4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 18:44:25', '2021-11-16 18:44:25', '2022-11-16 12:44:25'),
('c425fc46b1d316fc9b3c8de47d73a5bde898428ffc119d4a2c4884cce860057baf50cb2ca65d970e', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-30 00:29:25', '2021-09-30 00:29:25', '2022-09-29 17:29:25'),
('c4c8b68bb021ac17892cecc1e4aa3cfe16a858a7c442522532d733edf173124709877efcc5b62639', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 18:42:46', '2021-11-16 18:42:46', '2022-11-16 12:42:46'),
('c51d66da7f616745d511f9d2d848410c84c09c4a8ac8fa1daf16e9ee7ecee15bb7c405897f3f41e8', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 02:28:05', '2022-02-05 02:28:05', '2023-02-04 18:28:05'),
('c559ffad35855ffc0a30809a44eb7312cec48c6bd8a59aca72269fec59f31374893c2a46963643b3', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-01 00:30:12', '2021-09-01 00:30:12', '2022-08-31 17:30:12'),
('c55ebfacffb299d3d114fee51554c9f9bafa602fdfe8be80883ce62b7148c20df2bbffb72eb0be4c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:53:06', '2021-11-15 16:53:06', '2022-11-15 10:53:06'),
('c6905f3e9e7aed4482b9e8fac3ae6e88d96237589154eb1956560794362361158c19f46daf050a0a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:42:09', '2021-11-12 12:42:09', '2022-11-12 06:42:09'),
('c6f1d67e997c5a229e40cb17fd57d6e7b00d93a4375fb99effdf2f468b59c466928727c886852b73', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:31:05', '2021-11-16 13:31:05', '2022-11-16 07:31:05'),
('c71b5b22a77f22b2b9e12107604a573a20aad67ad351307cd9b1837e35a4b85eeef3d371b6e33cba', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:14:31', '2021-11-16 13:14:31', '2022-11-16 07:14:31'),
('c7aea887cb81f10593898399d75e97b7fefd414834f399223571322f585f1c0e0d50bf999c15f1a1', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 03:02:35', '2021-12-14 03:02:35', '2022-12-13 20:02:35'),
('c819ac41574402fb702201d907a74e1dcc889ae4354eaa8dc54fe2209bfeb3fbfe3f77d58b256536', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-08 02:48:27', '2022-02-08 02:48:27', '2023-02-07 18:48:27'),
('c8b74b770664732ff89b9d7471650e03b1b23c6f6aafbd7af65ca7bd3b0c6e40c55b8f369b2cdcb1', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:49:42', '2021-11-17 16:49:42', '2022-11-17 10:49:42'),
('c8f8d2b66bf763d5e47bfc7d4e2214b8e516f04aacd7dca4a7f2822fa18a7dee02cfbe94a8b2c3de', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-09 00:53:33', '2021-09-09 00:53:33', '2022-09-08 17:53:33'),
('cba910825d6ae56eed7c7b63e772d6826bfdef6efea3f7c3b617ca5580226412ede18fdc40e40ad4', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 00:50:08', '2021-08-27 00:50:08', '2022-08-26 17:50:08'),
('cba9c6169dbf2294cf7a5750b4bbe983b4e9241a644ae8f6d55364aef45eb11cf1ada8c32b453c49', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:33:22', '2021-11-15 19:33:22', '2022-11-15 13:33:22'),
('cda06b4735faf6d44f7bc638254d5f9d3a54ea145ea013fcf1458d9d9fb3bf48608440d17398b705', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 08:57:09', '2021-12-16 08:57:09', '2022-12-16 01:57:09'),
('cdec545e135acb4e26079fd48c673d34dcef964ecebf0382cdb34d345d6d91dc027a126ac8aea58e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 16:22:13', '2021-11-16 16:22:13', '2022-11-16 10:22:13'),
('ce5c6175e7e9cde421ba0d4647680c7f660865c5c09d4d1faaf621f46ef0dadf5b7e9c0d26841dd2', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:15:44', '2021-08-27 03:15:44', '2022-08-26 20:15:44'),
('ce61fac65906cb2fd4fb20ec9980dcb12ee3245d0e178866c63a407700331aa92a84279d56dd7642', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 02:16:23', '2021-12-14 02:16:23', '2022-12-13 19:16:23'),
('cec7422614dfb35161f2b1882e08ef1b4ff5e638b05748ea7eb8646462556b1a396dd7ac8749d02a', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:20:10', '2021-11-15 16:20:10', '2022-11-15 10:20:10'),
('ced849ae60bd30bb423b507428405de511cb722addadc0fd65af3ecc3df0d437c5aaaa37adc721e2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 13:49:48', '2021-11-15 13:49:48', '2022-11-15 07:49:48'),
('cef7fb8a46ed6b2d5aeb9069e2e03b72d9a0a03254c1aa99736156734510137a8367bba8364c2ba9', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 02:30:40', '2022-02-05 02:30:40', '2023-02-04 18:30:40'),
('cfaadf5a05f23de716b29201a6514b98bf3b14f207f7f4279fd8621d753e0839eb5404941cb9168f', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 07:57:04', '2022-02-08 07:57:04', '2023-02-07 23:57:04'),
('d02cbfc78a6d15b259ecf6321908fa39de93b228c324d30217d45a8d15fdc97486f211470fa11d7b', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 03:47:31', '2022-02-01 03:47:31', '2023-01-31 19:47:31'),
('d03afa08fb338ec71000e1d0d0d501a429030135aa5a14e28a316ab4d3b81b5e4948ce8a1edd98d3', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-08 09:49:27', '2022-02-08 09:49:27', '2023-02-08 01:49:27'),
('d09e6b27731600fa40be444870d3e7f1903b22fdae95c0a269b28927bc1c8860db3ad8fce18d2d2e', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-05 05:28:03', '2022-02-05 05:28:03', '2023-02-04 21:28:03'),
('d0b7588cb2d7bcce81fce3c488faada75f713499269f43dddc5c87fb6bf7dd1141060dc39ecb8291', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 12:08:03', '2021-11-17 12:08:03', '2022-11-17 06:08:03'),
('d0fc11c0555994f867da14895bfa69184e30ebc436ade344c12b7c4630a85e8467a4faf3066e3357', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:21:36', '2021-11-17 14:21:36', '2022-11-17 08:21:36'),
('d18a48698b618103da304013bdedb61c56c50ff61e035ef6a6cb88dc6bf3075104fad4eb03b40393', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-25 04:47:40', '2021-11-25 04:47:40', '2022-11-24 21:47:40'),
('d1aa3e8519dde50af97d454e69a0a83aa00d41bd08ddf6fdc6823b60f0702c64f7e8ef80bfb33dff', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 18:45:27', '2021-11-17 18:45:27', '2022-11-17 12:45:27'),
('d26220421e31a1562338780c96e1db6eacfc0a8c0dc5094439c70f6884642f372ad168a94ae5f532', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:54:02', '2021-11-17 14:54:02', '2022-11-17 08:54:02'),
('d3586b9001d1237b32b96701d85940d62462474e55787e441e4d03523984185b7d00b9bef44b8623', 1, 1, 'Personal Access Token', '[]', 0, '2021-10-28 00:37:19', '2021-10-28 00:37:19', '2022-10-27 17:37:19'),
('d3a42cc86f95b9aa5a5604f6c6e5ba06eb5d6b67184cdbde7e86612f1c6f334cdf0a2b64bb3359bb', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 06:42:48', '2022-02-04 06:42:48', '2023-02-03 22:42:48'),
('d4460121eb5da8d7257117aa39bcb2f6465c7b285e87b59a6f1dc03e58164b8de0a61256a8056d9c', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-02 01:31:19', '2021-12-02 01:31:19', '2022-12-01 18:31:19'),
('d69180e9eb5966d00156dd542f2213cc2bad7ea49995494d7ca4aeaaa293158b6c8f72433e231b10', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 05:21:39', '2022-01-14 05:21:39', '2023-01-13 21:21:39'),
('d722ee507436e18c26f0fdfab707eca12559ea36e23f1f0960a2d1961f83e29ea5d3d19e4aa5d89b', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:41:54', '2021-11-15 18:41:54', '2022-11-15 12:41:54'),
('d790b5ade1a9722569c4fbb1b68abedc801092895ae00558af76ba5a2a628c4cb84d330e8c067b35', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:45:02', '2021-11-15 18:45:02', '2022-11-15 12:45:02'),
('d7a2c7e44650111d609e1d6e5d4063ef055005bed50c98312f9cad934a07f80c6a4738266f0e8cdd', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 13:39:02', '2021-11-16 13:39:02', '2022-11-16 07:39:02'),
('d85e3c88bea839e87251cf7bf3819c19776fd740ccf7a9b1d2c161871d842bf3e9290eddf912ab31', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-11 09:37:14', '2022-01-11 09:37:14', '2023-01-11 01:37:14'),
('d8da902d2d1f48537f618506dc1ff3e7a96bdfbda566c0b746c52c63503a97ffcf0db0fe19e53fc6', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:08', '2021-11-17 16:47:08', '2022-11-17 10:47:08'),
('d9276d9cf5836abc3cadc0fa273ddebe58c9e5f464efcc20f1294cb289ac33efaed62fe1535de9b6', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-16 12:27:21', '2021-11-16 12:27:21', '2022-11-16 06:27:21'),
('da01c1218c633b6f9346935749f4602163866e862c5cb7509d177d0ed91855a981d772ea77769009', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 05:28:32', '2022-02-01 05:28:32', '2023-01-31 21:28:32'),
('daff1732e4d569245e2816de734de244a3ee00f46eb371cc5475c1998f656fa054c46a99c981f8e0', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 10:32:45', '2022-01-14 10:32:45', '2023-01-14 02:32:45'),
('dc288c7238aebc91008e5e5496b1ddfa4a1cc2423f22a984f07be9c1cd3a2e6266dc9eb0a4e4ffc7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:52:14', '2021-11-17 14:52:14', '2022-11-17 08:52:14'),
('dd08077f0a1dc2bd4694581151185a9e1f8fda8791ea742fb28f244373dd8db71050f07cbb7ef25d', 2, 1, 'Personal Access Token', '[]', 0, '2022-02-04 07:00:50', '2022-02-04 07:00:50', '2023-02-03 23:00:50'),
('dd9af877ff60c0a81472225d1e02dcb7deb72b395ecbf6f64afcfba4ad3d981cd50bea6fe9f6168d', 1, 1, 'Personal Access Token', '[]', 0, '2022-06-01 13:03:52', '2022-06-01 13:03:52', '2023-06-01 06:03:52'),
('ddac8e5f4cd59506b484622bda52e79df22a4ef2b7c1ae912d0f02dbcac1b9863caae147e2760196', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 19:56:00', '2021-11-17 19:56:00', '2022-11-17 13:56:00'),
('ddbab8f6fbd2eabb59f8ad6e8531113b5c4b39028acec81a0ffb215bbcd9c0a436f7fe90cd350a10', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 04:58:37', '2021-12-14 04:58:37', '2022-12-13 21:58:37'),
('ddc231fb9890802854c580e5740ba97ac495a2107f3dacff5b28a02764939994770b6e22c817eff4', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 13:26:01', '2021-11-15 13:26:01', '2022-11-15 07:26:01'),
('ddea010717b4c8666bf09b4b5b84a9798925b6def8f327e880695620cab79262bbb9e89e4912d60e', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 18:14:09', '2021-11-16 18:14:09', '2022-11-16 12:14:09'),
('de06d7106d98d1f93ce2e057ad0987bb116f52dac86d1cfef35a4040a9791e0c1abd43cd773b3c18', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-09 05:04:51', '2022-02-09 05:04:51', '2023-02-08 21:04:51'),
('de5e78a166abb6e39db16f852b4b6737d25d382c4bf85a6900ad26ab21f6c36875ea0908a4aa0c18', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-14 10:36:31', '2022-01-14 10:36:31', '2023-01-14 02:36:31'),
('df4d3e2c553bc72f8bef8ee8ee5773662868c2f3a2fbe089e35212ee6d5e600068eed212e87219ce', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-16 12:44:28', '2021-11-16 12:44:28', '2022-11-16 06:44:28'),
('df6130c1b64b2b52c894b3293f18f32577103144c1b10ee9479305bfe4d25a546e025be2f91f91f9', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 18:19:30', '2021-11-16 18:19:30', '2022-11-16 12:19:30'),
('e02696dc38e3533c0be6fe706d51d62c1aab87b32096d8da70469144c959a744d9ac14e90b084a93', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:06:59', '2021-08-27 03:06:59', '2022-08-26 20:06:59'),
('e09f7659e7c2fc58cd8cc5fb634d0b4595dbf925ce932e7a04aab4758a54bff1614a372b5b22e199', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 01:05:44', '2021-12-14 01:05:44', '2022-12-13 18:05:44'),
('e116f8df84ef1c97635260a3c3deb1d3e702bea262c9b2512ab866d7ba5e6934ddd49b9a2aa175c2', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:09', '2021-11-17 16:47:09', '2022-11-17 10:47:09'),
('e195531b14d263080fa17a0d8db7226e42454e30712ce1bd52fdc2a3cae2cc889fcbaf93a2a178cd', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:47:30', '2021-11-12 12:47:30', '2022-11-12 06:47:30'),
('e2332b32dd3a5319f0267a441c497afa6e3f25bb2670d60c8c8f123666a70add703fd45c8ab2f615', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-29 02:08:36', '2021-09-29 02:08:36', '2022-09-28 19:08:36'),
('e343b620c9c4f9b2b32579ab33781a25c5d3711c8cb824364f5312927eb6c75128eada0f3e447235', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 04:32:40', '2022-02-08 04:32:40', '2023-02-07 20:32:40'),
('e49ac53684cb57b758af5d075099eaeef4bcce806a23d7135e1cfd54f3b25cf38adcf2ba4d8e7076', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 13:44:29', '2021-11-15 13:44:29', '2022-11-15 07:44:29'),
('e5592097eb8831c298e86863013100e8d5416c3615ba784facf6a2e9bd7c1404659c01f8a563a36a', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-28 09:00:42', '2022-01-28 09:00:42', '2023-01-28 01:00:42'),
('e5ee1d76fc47754bd7abd47c524f8018d4b37387871842192946a12453bd278c388472f693f74f32', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-15 06:29:06', '2022-01-15 06:29:06', '2023-01-14 22:29:06'),
('e5f95684805d4693cf04e7678398184fcb66fb910dbe65ba47bf429ca775db21fd041740307c3f4c', 1, 1, 'Personal Access Token', '[]', 0, '2022-01-15 04:30:47', '2022-01-15 04:30:47', '2023-01-14 20:30:47'),
('e636a00c75561f18efda9e1788136cd7464399eb940eb64fbdf285ee9302f21e07caedced88010f4', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 07:59:11', '2022-02-08 07:59:11', '2023-02-07 23:59:11'),
('e6581ff1f49e381c7328ffa0b0a21c5f3a7529521443d8741175d63ea36d0d02eb04d6b419e0f51c', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:43:58', '2021-11-17 14:43:58', '2022-11-17 08:43:58'),
('e67b855d4701586b21265adef1594402152e4bbe2a77b8215d1552aa216c8c6f31df36568fe7f441', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:08', '2021-11-17 16:47:08', '2022-11-17 10:47:08'),
('e69ade0c915dfb9c01bef4dc09236c0f42be9439d3c426a3960d847c845563f1c135e64dc923e175', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:13:58', '2021-11-15 18:13:58', '2022-11-15 12:13:58'),
('e707ca3af5ddf3a5257192725f70f4c3adfb257eb000e633b8b5ad885f3d56ed923d365069232c18', 1, 1, 'Personal Access Token', '[]', 0, '2022-05-23 00:15:59', '2022-05-23 00:15:59', '2023-05-23 05:15:59'),
('e7755edded2ae766b92036383ac21a3cb91f218839615c4097807bf50e301fd162b5b4f6a82630ae', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-01 06:25:57', '2022-02-01 06:25:57', '2023-01-31 22:25:57'),
('e934a660ae779d49ced640c4a714428cb53bb83d9046282a15d1194dce9c548484232fd6e5ee55af', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 05:14:43', '2022-02-04 05:14:43', '2023-02-03 21:14:43'),
('ea26f77d829efaf50c33a8a1d5c55ee1665173075964d510e9c91b5e1085eb691276092a86a4bfc7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:48:29', '2021-11-17 14:48:29', '2022-11-17 08:48:29'),
('eb667bdfd0be83a78d5219e816a16b0bca8d0da98d0a87e6e2c13474b734b99cebc82b701d2fd454', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 12:27:51', '2021-11-17 12:27:51', '2022-11-17 06:27:51'),
('ec1e1486bb8a9266e818dcf238c545da9bbb55e54d0797f5287119223c6161701bf58ab32937ac10', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 16:03:41', '2021-11-15 16:03:41', '2022-11-15 10:03:41'),
('ecb7fe09aca11967b6df46b1ef0450c5599b2518ae2d3b598368deea7933438f95ffd53639e4d596', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-05 01:13:16', '2021-11-05 01:13:16', '2022-11-04 18:13:16'),
('ed40af35999db76712941489d2cb82c5d8235ba8907a3bb1eff19fffbcdc8b6b5d98eb088f978dae', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-14 01:57:20', '2021-12-14 01:57:20', '2022-12-13 18:57:20'),
('ed4765043319c572be5fed5309fd1e14bd4d6f07aceab41498b8867c6510352a2c9d70e7ba612797', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:27:08', '2021-11-15 19:27:08', '2022-11-15 13:27:08'),
('edffcfd48da6974a8d704e01f95d40365ed95dab1cb58403ae7c1bd8839e24227327ad5b5260dc01', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 16:40:36', '2021-11-16 16:40:36', '2022-11-16 10:40:36'),
('ee622be05225f3e3623d562b20dcb96e62b85b654781c85206c36f9f6e0fc69af263b42bda346970', 1, 1, 'Personal Access Token', '[]', 0, '2022-06-01 04:46:09', '2022-06-01 04:46:09', '2023-06-01 06:46:09'),
('eea21d738ae4832d111b5288962a8cab63e7a6c878bad7127c5346b77ebcfc046fb04074dec66919', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 23:55:22', '2021-09-15 23:55:22', '2022-09-15 16:55:22'),
('eedb6a020cdbc57007f7374dfb4fac3a4ecabe5b568ed92109f71419d1989b2db45fab16b3df969f', 1, 1, 'Personal Access Token', '[]', 0, '2022-03-10 01:57:57', '2022-03-10 01:57:57', '2023-03-10 06:57:57'),
('eeea6b2908979f53e2ea1946a92dda320a7e6369502bc904699b21c046f0959b8b2ade5af8a0e3f7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 18:36:49', '2021-11-17 18:36:49', '2022-11-17 12:36:49'),
('ef43c85f0fc02e5e848c23e0f497afa47dd98c67817fa502bbfd75b16bff9ae87de85844d9f0054e', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 08:01:56', '2022-02-08 08:01:56', '2023-02-08 00:01:56'),
('efc1a0a745401d3f6c21db26f6fcdd10721279780ca511bc89b8f81b66b8dece223256fb56c1f775', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:22:18', '2021-11-15 19:22:18', '2022-11-15 13:22:18'),
('efd8344350017fc552e05ab05ff3ac6f36b38fd34ec28fcd1122011398c390acbfc56bb81b5ee13a', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:11:54', '2021-08-27 01:11:54', '2022-08-26 18:11:54'),
('f077e246164f12e9c5c07f9f02363b445205ce3f51e95b20a6be40f3ca4a947dfc322c375122c676', 1, 1, 'Personal Access Token', '[]', 0, '2022-06-01 05:11:06', '2022-06-01 05:11:06', '2023-06-01 07:11:06'),
('f11aaf1b7f9104513a04f134ffc3c2010aad7bae9c74c69cb148fc933d276512a36dc0f8b0f775dd', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 03:59:34', '2021-08-27 03:59:34', '2022-08-26 20:59:34'),
('f1fcf1723733fadc756832cbe8b34be613e49529cf52a09cf92f9e3cc3376a248f95a5dac1a961f7', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 18:40:35', '2021-11-15 18:40:35', '2022-11-15 12:40:35'),
('f246aa276e04eef72fac179249da9d2a6ac0032a39f82aaf94a67e0c06b2e141fbd097923a709f43', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 14:03:15', '2021-11-17 14:03:15', '2022-11-17 08:03:15'),
('f26e6697b4b117abf184d7df8fde4e476ee3cad903e8f87dae729fd2d1f75b9cc8c8d84e6dce5980', 1, 1, 'Personal Access Token', '[]', 0, '2021-08-27 01:15:57', '2021-08-27 01:15:57', '2022-08-26 18:15:57'),
('f281b46915ae5607cb0ef909b45b3db405ca990c4134e549073911ae8592e2fa0e72ffa16256fc49', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-16 19:56:00', '2021-11-16 19:56:00', '2022-11-16 13:56:00'),
('f32b8a35e4d8989da128882a6092970f36b489e7b3b2e738b3acb9266674cd77ef428b0ab8f38331', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 06:58:01', '2022-02-08 06:58:01', '2023-02-07 22:58:01'),
('f38a335f02b6d56eacc97302fe3dbdf9ba2d4035c37f45c44aa8c870c98d27aeeb41a8ad371566fd', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:41:20', '2021-11-12 12:41:20', '2022-11-12 06:41:20'),
('f4dc50e15e122afd04a0f5fa953913ec3f4f1874e723df4daf7f2c7dc61c9b40cddc2cce49bad5a6', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 18:58:13', '2021-11-12 18:58:13', '2022-11-12 12:58:13'),
('f50c040dec2a33cd2a277595db63ce1db69de4c2dd85230094993fc3256a227863fdc9aad6e0b121', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 02:33:55', '2022-02-05 02:33:55', '2023-02-04 18:33:55'),
('f5b588b434ed70f38e616fdf7c5847cc75ee3f1822c2911bcb64b4713518df23f5d2ed8e7f22b13e', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 09:53:18', '2022-02-08 09:53:18', '2023-02-08 01:53:18'),
('f62411cc9b3b67aef91c67f764bcd348af110818172d38d2e6fcb3cfec65fec7a57f4ca4242873e0', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-15 19:05:36', '2021-11-15 19:05:36', '2022-11-15 13:05:36'),
('f76637bb894f82cda7738ddf2aacbec4cf71ab19f875245a4c909a23e6cd20aafe4dbaec6277a6fe', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-17 16:47:08', '2021-11-17 16:47:08', '2022-11-17 10:47:08'),
('f77e886df136c0fe593874bce2b7be5010bde03c4ccee372d00c77e39990c09d36cf6246d3eb0425', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 19:54:44', '2021-11-12 19:54:44', '2022-11-12 13:54:44'),
('f85ce52d2765db065fe2c7fd76b2bd5f069aca61859bd05eda51b79cea5ab4012a704eeaad144d82', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-04 06:57:02', '2022-02-04 06:57:02', '2023-02-03 22:57:02'),
('f86d4cdf5b87aa7661e64d3d5b3ca42c44c38c9b2bb8d97b48af924179705bb9e87fcaeca184c204', 1, 1, 'Personal Access Token', '[]', 0, '2021-09-15 01:56:41', '2021-09-15 01:56:41', '2022-09-14 18:56:41'),
('f87daeca386a03618c7e00525c356e7830dea89ecbaa05d764ae9e74a8a5b9a796ccf05248fde4f5', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-15 17:17:23', '2021-11-15 17:17:23', '2022-11-15 11:17:23'),
('f99f64775b44e30e2f465e4407431f416ef018bb125a11ec94d8c92189b3b5c5c50ab57fc8df3c59', 1, 1, 'Personal Access Token', '[]', 0, '2021-12-16 00:21:51', '2021-12-16 00:21:51', '2022-12-15 17:21:51'),
('fa1c021b1bf4a1580f99d946df707afc657e15ddd792d20b1146aca68bea496d4c3c0e7bfd0a4483', 17, 1, 'Personal Access Token', '[]', 0, '2021-11-16 11:59:38', '2021-11-16 11:59:38', '2022-11-16 05:59:38'),
('fa504a57e62876eea02a4602209278aeee1c315eb7491edc1a7bf7e7444c59c353d46608c8afe652', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-08 04:23:47', '2022-02-08 04:23:47', '2023-02-07 20:23:47'),
('faa6da48d170c1d1b1a4e86af81f713ee80e6a9c02051f4e55b0b104368f5833ee0a4a33704a36fc', 1, 1, 'Personal Access Token', '[]', 0, '2022-02-05 04:37:44', '2022-02-05 04:37:44', '2023-02-04 20:37:44'),
('fc1362799e63a8282db7b3c8766edf13ce6cabdc35de029c7d29a43a5124fb470f4b6a9e28d9cab1', 1, 1, 'Personal Access Token', '[]', 0, '2022-04-26 01:58:27', '2022-04-26 01:58:27', '2023-04-26 06:58:27'),
('fd7fddcdb69bfa1802d379b8314ebfb2e00b4572d917ed04218fce85ea6805896cafc37c04378dc8', 1, 1, 'Personal Access Token', '[]', 0, '2021-11-12 12:40:35', '2021-11-12 12:40:35', '2022-11-12 06:40:35'),
('ff0ac9fb509c779185bddb27eadb1293b2d893fe0212d3677096d93d0db8721da2e529d20e4f7000', 1, 1, 'Personal Access Token', '[]', 0, '2022-05-31 04:59:38', '2022-05-31 04:59:38', '2023-05-31 09:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'nabeel@pixelpk.com', 273343, '2022-06-01 06:14:30', '2021-11-15 12:24:34'),
(7, 'raheelk740@gmail.com', 235597, '2022-06-01 06:14:30', '2021-11-15 13:09:18'),
(8, 'raheelk740@gmail.com', 181113, '2022-06-01 06:14:30', '2021-11-15 13:09:33'),
(9, 'raheelk740@gmail.com', 698279, '2022-06-01 06:14:30', '2021-11-15 13:11:23'),
(10, 'nabeel@pixelpk.com', 101501, '2022-06-01 06:14:30', '2021-11-15 13:45:51'),
(11, 'nabeel@pixelpk.com', 145664, '2022-06-01 06:14:30', '2021-11-16 19:59:08'),
(12, 'nabeel@pixelpk.com', 538879, '2022-06-01 06:14:30', '2021-11-16 19:59:15'),
(13, 'nabeel@pixelpk.com', 947460, '2022-06-01 06:14:30', '2021-11-16 19:59:25'),
(14, 'nabeel@pixelpk.com', 863402, '2022-06-01 06:14:30', '2021-11-16 19:59:25'),
(15, 'nabeel@pixelpk.com', 867769, '2022-06-01 06:14:30', '2021-11-16 19:59:25'),
(16, 'nabeel@pixelpk.com', 590073, '2022-06-01 06:14:30', '2021-11-16 19:59:36'),
(17, 'nabeel@pixelpk.com', 297816, '2022-06-01 06:14:30', '2021-11-16 19:59:53'),
(18, 'nabeel@pixelpk.com', 869248, '2022-06-01 06:14:30', '2021-11-16 20:03:24'),
(19, 'nabeel@pixelpk.com', 504460, '2022-06-01 06:14:30', '2021-11-16 20:04:21'),
(20, 'nabeel@pixelpk.com', 637737, '2022-06-01 06:14:30', '2021-11-16 20:09:09'),
(21, 'nabeel@pixelpk.com', 297831, '2022-06-01 06:14:30', '2021-11-16 20:09:47'),
(23, 'hamzaussaid9@gmail.com', 495518, '2022-06-01 06:14:30', '2021-11-16 20:50:49'),
(24, 'hamzaussaid9@gmail.com', 142169, '2022-06-01 06:14:30', '2021-11-16 20:53:00'),
(25, 'hamzaussaid9@gmail.com', 167331, '2022-06-01 06:14:30', '2021-11-16 21:01:23'),
(26, 'hamzaussaid9@gmail.com', 578517, '2022-06-01 06:14:30', '2021-11-16 21:01:51'),
(27, 'hamzaussaid9@gmail.com', 253423, '2022-06-01 06:14:30', '2021-11-16 21:02:52'),
(28, 'hamzaussaid9@gmail.com', 539252, '2022-06-01 06:14:30', '2021-11-16 21:03:44'),
(29, 'hamzaussaid9@gmail.com', 122756, '2022-06-01 06:14:30', '2021-11-16 21:06:59'),
(30, 'hamzaussaid9@gmail.com', 666990, '2022-06-01 06:14:30', '2021-11-16 21:20:27'),
(31, 'hamzaussaid9@gmail.com', 492303, '2022-06-01 06:14:30', '2021-11-16 21:31:36'),
(32, 'hamzaussaid9@gmail.com', 975909, '2022-06-01 06:14:30', '2021-11-17 15:43:05'),
(33, 'raheelk740@gmail.com', 678528, '2022-06-01 06:14:30', '2021-11-17 15:50:47'),
(34, 'nabeel@pixelpk.com', 214154, '2022-06-01 06:14:30', '2021-11-17 16:00:37'),
(36, 'hamzaussaid9@gmail.com', 823543, '2022-06-01 06:14:30', '2021-11-17 16:02:43'),
(41, 'hamzaussaid9@gmail.com', 661757, '2022-06-01 06:14:30', '2021-11-17 16:50:25'),
(42, 'hamzaussaid9@gmail.com', 461492, '2022-06-01 06:14:30', '2021-11-17 16:51:33'),
(43, 'hamzaussaid9@gmail.com', 779272, '2022-06-01 06:14:30', '2021-11-17 17:03:56'),
(44, 'hamzaussaid9@gmail.com', 742636, '2022-06-01 06:14:30', '2021-11-17 17:04:37'),
(45, 'hamzaussaid9@gmail.com', 325123, '2022-06-01 06:14:30', '2021-11-17 17:06:54'),
(47, 'hamzaussaid9@gmail.com', 648470, '2022-06-01 06:14:30', '2021-11-17 17:23:14');

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
  `sub_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `sub_type`, `sub_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Monthly', '7936497', 0, '2022-01-28 10:13:42', '2022-01-28 10:13:42'),
(2, 1, 'Yearly', '7936497', 1, '2022-01-29 10:13:42', '2022-02-08 09:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `user_id`, `name`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 1, '10 Percent', 10, '2022-06-01 06:14:30', '2021-08-31 20:15:20'),
(2, 1, '20 Percent', 20, '2022-06-01 06:14:30', '2021-08-31 20:15:20'),
(4, 1, 'Width-holding Tax', 30, '2022-06-01 06:14:30', '2021-11-17 19:02:17'),
(5, 1, 'test taxt 1', 23, '2022-06-01 06:14:30', '2021-11-17 19:44:15');

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unconditional_waiver_and_release_on_final_paymenyt`
--

INSERT INTO `unconditional_waiver_and_release_on_final_paymenyt` (`id`, `user_id`, `client_id`, `invoice_id`, `claimant_name`, `customer_name`, `job_location`, `owner`, `check_owner`, `check_amount`, `check_payable_to`, `document_effect`, `extra_amount`, `signature`, `claimant_title`, `signature_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Nabeel', 'Bilal', 'Lahore', 'Anas', 'Nabeel', '100', 'Anas', 'No', '100', 'Signatures/110220212154596181b3b348470.png', 'Nabeel', '2021-11-02', 1, '2021-11-03 04:54:59', '2021-11-03 04:54:59'),
(2, 1, 1, 2, 'Nabeel', 'Bilal', 'Lahore', 'Anas', 'Nabeel', '100', 'Anas', 'No', '100', 'Signatures/110220212259496181c2e56cdc7.png', 'Nabeel', '2021-01-31', 1, '2021-11-03 05:59:49', '2021-11-03 05:59:49'),
(3, 1, 1, 3, 'Nabeel', 'Bilal', 'Lahore', 'Anas', 'Nabeel', '100', 'Anas', 'No', '100', 'Signatures/110220212301336181c34d635da.png', 'Nabeel', '2021-12-30', 1, '2021-11-03 06:01:33', '2021-11-03 06:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `unconditional_waiver_and_release_on_final_paymenyt_fill`
--

CREATE TABLE `unconditional_waiver_and_release_on_final_paymenyt_fill` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `form_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unconditional_waiver_and_release_on_final_paymenyt_fill`
--

INSERT INTO `unconditional_waiver_and_release_on_final_paymenyt_fill` (`id`, `user_id`, `form_no`, `email`, `mobile`, `claimant_name`, `customer_name`, `job_location`, `owner`, `check_owner`, `check_amount`, `check_payable_to`, `document_effect`, `extra_amount`, `signature`, `claimant_title`, `signature_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '785416', 'nabeel@pixelpk.com', '+923078801559', 'Nabeel', 'Bilal', 'Lahore', 'Anas', 'Nabeel', '100', 'Anas', 'No', '100', 'Signatures/110220212154596181b3b348470.png', 'Nabeel', '2021-11-02', 1, '2021-11-03 04:54:59', '2021-11-03 04:54:59'),
(2, 1, '967235', 'nabeel@pixelpk.com', '+923078801559', 'Nabeel', 'Bilal', 'Lahore', 'Anas', 'Nabeel', '100', 'Anas', 'No', '100', 'Signatures/110220212259496181c2e56cdc7.png', 'Nabeel', '2021-01-31', 1, '2021-11-03 05:59:49', '2021-11-03 05:59:49'),
(3, 1, '852349', 'nabeel@pixelpk.com', '+923078801559', 'Nabeel', 'Bilal', 'Lahore', 'Anas', 'Nabeel', '100', 'Anas', 'No', '100', 'Signatures/110220212301336181c34d635da.png', 'Nabeel', '2021-12-30', 1, '2021-11-03 06:01:33', '2021-11-03 06:01:33'),
(4, 1, '348619', 'nabeel@pixelpk.com', '+923078801559', 'Victor Willis', 'Charity Sherman', 'Dolorum omnis qui du', 'Ut mollit earum et q', 'Incidunt maiores te', 'Voluptate expedita i', 'Dignissimos commodi', 'Sit id accusantium d', 'Natus est ad velit', 'Signatures/0201202223111561f9be13ac77c.png', 'Dolor deleniti est r', '2004-01-09', 1, '2022-02-02 07:11:15', '2022-02-02 07:11:15');

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
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
  `form_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `through_date` date NOT NULL,
  `received_progress_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claimant_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unconditional_waiver_and_release_on_progress_paymenyt_fill`
--

INSERT INTO `unconditional_waiver_and_release_on_progress_paymenyt_fill` (`id`, `user_id`, `form_no`, `email`, `mobile`, `claimant_name`, `customer_name`, `job_location`, `owner`, `through_date`, `received_progress_amount`, `signature`, `claimant_title`, `signature_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '852349', 'nabeel@pixelpk.com', '', 'Nabeel', 'Bilal', 'Lahore', 'Anas', '2021-12-31', '100', 'Signatures/110220212202556181b58fa7ba7.png', 'Nabeel', '2021-11-02', 1, '2021-11-03 05:02:55', '2021-11-03 05:02:55'),
(2, 1, '856974', 'nabeel@pixelpk.com', '', 'Ori Nielsen', 'Mason Rivas', 'Et inventore molliti', 'Eiusmod velit harum', '1978-04-24', 'Sint anim ducimus o', 'Signatures/0201202223130261f9be7e2c187.png', 'Est blanditiis nulla', '2017-09-22', 1, '2022-02-02 07:13:02', '2022-02-02 07:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
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
(1, 'Nabeel Iqbal', 'nabeel@pixelpk.com', NULL, '$2y$10$L4NyMhImYb6056R.HVAjVOj6.yhxyKnsKkA2x2e.jMTIxqjmynSzm', 'Decking', 'premium', NULL, '2021-08-27 00:36:01', '2022-02-08 09:57:42'),
(2, 'Secure Lien Admin', 'admin@pixelpk.com', NULL, '$2y$10$IETF2pSiJDsC69sb6eWVXO0q2Erf5bZE94oFQRUseXU4IFIOwgnMe', 'Decking', 'admin', NULL, '2021-08-27 09:01:53', '2021-08-27 09:01:53'),
(3, 'Nabeel Iqbal 03', 'nabeeliqbal03@gmail.com', NULL, '$2y$10$s/65WGmuLOOhei2FhnNI2u5CQW.EMO9xefrUrmPMVlylRkRy2909u', 'Decking', 'user', NULL, '2021-08-27 09:02:44', '2021-08-27 09:02:44'),
(4, 'Nabeel sd', 'nabeelsd@pixelpk.com', NULL, '$2y$10$Bn8oyR1kpymKla.fpkDxuuMQltv0bseDdYCz8S2ugxmVPczF0vKwG', 'Decking', 'user', NULL, '2021-08-27 09:03:47', '2021-08-27 09:03:47'),
(5, 'Nabeel Iqbal', 'nabeelresd@pixelpk.com', NULL, '$2y$10$3jiqfVsPazn/bNkviGyfROBQ4fiaO51o0Cped5KeW3x3cuVnjUycK', 'Decking', 'user', NULL, '2021-08-27 09:04:44', '2021-08-27 09:04:44'),
(6, 'Nabeel Iqbal', '2rerkojfdhgf@gmail.com', NULL, '$2y$10$Z46/eEJA45pxCGpB/Q9f0e9CxSOkrC6MOVY7opIvjc8tmDkTnnOZC', 'Decking', 'user', NULL, '2021-08-27 09:06:23', '2021-08-27 09:06:23'),
(7, 'Nabeel Iqbal', '2rerkojfgdhgf@gmail.com', NULL, '$2y$10$5TbG1viHWWCJl/oxMTK.u.v6BSZ8NpFYkY3cGgtRfs94gCgKSmaWa', 'Decking', 'user', NULL, '2021-08-27 09:06:32', '2021-08-27 09:06:32'),
(8, 'Nabeel Iqbal', '2rerkgojfgdhgf@gmail.com', NULL, '$2y$10$adUh8q.uh15TBoZk7.WVreFyt2pzwqR405ws.VissJLB3tTI97ZaG', 'Decking', 'user', NULL, '2021-08-27 09:06:55', '2021-08-27 09:06:55'),
(9, 'Nabeel Iqbal', '2rerkojfsdhgf@gmail.com', NULL, '$2y$10$mjElIbPiscBSaljcg4ESuuMmJ3jBagNkPveaxK5K5i/MqrsQQpM8.', 'Decking', 'user', NULL, '2021-08-27 09:07:37', '2021-08-27 09:07:37'),
(10, 'Nabeel Iqbal', 'cenadod109@spinwinds.com', NULL, '$2y$10$54ucmWexWqlIANW38Yxxm.ZditFP/YXIGhLSqX8FLna121SWSHUwS', 'Decking', 'user', NULL, '2021-08-27 09:08:40', '2021-08-27 09:08:40'),
(11, 'cenadod profile', 'cenadod1e09@spinwinds.com', NULL, '$2y$10$pcMq/ZapY58VXo6WSkMaxek5QjL361DCVvPsPgyqNjur/dO.L8E4a', 'Decking', 'user', NULL, '2021-08-27 09:11:28', '2021-11-25 04:49:42'),
(12, 'Nabeel Iqbal', 'nabeel323@pixelpk.com', NULL, '$2y$10$K6v5wz5bX4pcbghgec1GSOFpxDRBQSXr87//V7iE9d0tfmyFAiKQm', 'Decking', 'user', NULL, '2021-08-27 09:12:44', '2021-08-27 09:12:44'),
(13, 'Bilal', 'test@pixelpk.com', NULL, '$2y$10$ACwBA3pKKXdzjsYowHfb.uAtVoUWCzSad6AkMQJYE34TYye9/Rfl2', 'Decking', 'user', NULL, '2021-09-22 01:56:56', '2021-09-22 01:56:56'),
(14, 'raheel', 'raheel@pixelpk.com', NULL, '$2y$10$MQCQAPm8.8D7Bxo.5NrIV.V.k0hkt7KOOPDZjkvkZ9DV.MTs.jYNy', 'Decking', 'user', NULL, '2021-11-12 16:35:08', '2021-11-12 16:35:08'),
(15, 'raheel khan', 'raheellllllllllk740@gmail.com', NULL, '$2y$10$/PvVQJDCaVl4St/FmEOSvuWCXTByrWoTzijXW3ExNhCcWgSMa9Jdq', 'Home Builder', 'user', NULL, '2021-11-12 17:14:36', '2021-11-12 17:14:36'),
(16, 'raheel khan', 'raheelkjkjhxkjx740@gmail.com', NULL, '$2y$10$1Hob3GQzl7cl6Q9YIpU2jeu1RbSD2RryMGJm1hz9tHmACMyZWbH6O', 'Electrical', 'user', NULL, '2021-11-12 17:30:37', '2021-11-12 17:30:37'),
(17, 'raheel khan', 'raheelk740@gmail.com', NULL, '$2y$10$/sWWktpgEXCRFUT0Ymwnu.dDuEQvQR7yuzCv3b5FLgsbsIKKkL13a', 'Electrical', 'user', NULL, '2021-11-12 17:32:43', '2021-11-15 13:05:13'),
(18, 'raheel', 'raheel@pixelpk.com32432', NULL, '$2y$10$cdJSHuF/7YP7saXhfzIbKOvMU2VnZrzfSg4EvtsCCdH1OSCBQl85i', 'Decking', 'user', NULL, '2021-11-12 17:33:18', '2021-11-12 17:33:18'),
(19, 'raheel khan', 'raheelk7fgffd40@gmail.com', NULL, '$2y$10$a7Iw.1T28RqfK3tgeBnr0OdSF.CRVJq40mEikn05tQ.OOdwLY5r4O', 'Electrical', 'user', NULL, '2021-11-12 17:35:15', '2021-11-12 17:35:15'),
(20, 'raheel khan', 'rahdfdeelk7fgffd40@gmail.com', NULL, '$2y$10$xNV1d9tVv.Ba3I15kYknBeFReh9ZXPCqpJ7uIk/uwYMi7sRG6YDxS', 'Electrical', 'user', NULL, '2021-11-12 17:36:42', '2021-11-12 17:36:42'),
(21, 'Hamza Hussain', 'hamzaussaid9@gmail.com', NULL, '$2y$10$GB8EclOHMmU.aPUKz0cAyuUm2FCZhsTe1V7uE9RHE91zA6CToP5LO', 'Electrical', 'user', NULL, '2021-11-12 17:39:10', '2021-11-17 16:43:30'),
(22, 'raheel khan', 'sddwddd@gmail.com', NULL, '$2y$10$0UnPcL6fyjYDWIzqJu.1xe0tcyN2KJFH/WzIxB4k0ov0Q5WX8J1iO', 'Electrical', 'user', NULL, '2021-11-12 17:40:37', '2021-11-12 17:40:37'),
(23, 'raheel', 'raheel@pixelpk.com32432343', NULL, '$2y$10$YPQa73IWmkfCAKpL3tyML.XOy/3kZTVGbnexHzWLT6ZFVxMS.WKQK', 'Decking', 'user', NULL, '2021-11-12 17:41:04', '2021-11-12 17:41:04'),
(24, 'raheel khan', 'sdd1wddd@gmail.com', NULL, '$2y$10$7BVvnzPKdeUHNVo7Jg5Gd.0NRvJi7aXpkUHc9VkLROW9Kmb4heMIW', 'Electrical', 'user', NULL, '2021-11-12 17:51:44', '2021-11-12 17:51:44'),
(25, 'Jolene HansenTheodore Lester', 'habaw@mailinator.com', NULL, '$2y$10$kq5GDvUMjUoC2szoAB/Xnu3yIfWiWMd7fpDpQnpZ1n9nW/xx6koSS', 'Home Builder', 'user', NULL, '2022-01-13 08:32:56', '2022-01-13 08:32:56'),
(26, 'Mia Osbornundefined', 'setoqobur@mailinator.com', NULL, '$2y$10$YwhWFJ.6eF4pvKGfQwP1peHZ0MCCKjgMe8GeSs4YzansaVX7I4UJK', 'HVAC', 'user', NULL, '2022-02-05 06:14:13', '2022-02-05 06:14:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_work_authorization_fill`
--
ALTER TABLE `additional_work_authorization_fill`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
-- AUTO_INCREMENT for table `additional_work_authorization_fill`
--
ALTER TABLE `additional_work_authorization_fill`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ca_preliminary_notice`
--
ALTER TABLE `ca_preliminary_notice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ca_preliminary_notice_fill`
--
ALTER TABLE `ca_preliminary_notice_fill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conditional_waiver_and_release_on_final_paymenyt`
--
ALTER TABLE `conditional_waiver_and_release_on_final_paymenyt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conditional_waiver_and_release_on_final_paymenyt_fill`
--
ALTER TABLE `conditional_waiver_and_release_on_final_paymenyt_fill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conditional_waiver_and_release_on_progress_paymenyt`
--
ALTER TABLE `conditional_waiver_and_release_on_progress_paymenyt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conditional_waiver_and_release_on_progress_paymenyt_fill`
--
ALTER TABLE `conditional_waiver_and_release_on_progress_paymenyt_fill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contract_forms`
--
ALTER TABLE `contract_forms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `estimate_documents`
--
ALTER TABLE `estimate_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `estimate_items`
--
ALTER TABLE `estimate_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoice_documents`
--
ALTER TABLE `invoice_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `item_taxes`
--
ALTER TABLE `item_taxes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license_web_links`
--
ALTER TABLE `license_web_links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `unconditional_waiver_and_release_on_final_paymenyt`
--
ALTER TABLE `unconditional_waiver_and_release_on_final_paymenyt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `unconditional_waiver_and_release_on_final_paymenyt_fill`
--
ALTER TABLE `unconditional_waiver_and_release_on_final_paymenyt_fill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unconditional_waiver_and_release_on_progress_paymenyt`
--
ALTER TABLE `unconditional_waiver_and_release_on_progress_paymenyt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `unconditional_waiver_and_release_on_progress_paymenyt_fill`
--
ALTER TABLE `unconditional_waiver_and_release_on_progress_paymenyt_fill`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
