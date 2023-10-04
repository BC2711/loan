-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2022 at 10:21 AM
-- Server version: 5.7.36
-- PHP Version: 5.6.40-57+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nbm`
--

-- --------------------------------------------------------

--
-- Table structure for table `nbm_auto_credit_request`
--

CREATE TABLE `nbm_auto_credit_request` (
  `credit_session_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(255) DEFAULT 'MWK',
  `reference_number` varchar(255) DEFAULT NULL,
  `session_key` varchar(255) DEFAULT NULL,
  `status` enum('INITIATED','SUCCESS','FAILED') NOT NULL DEFAULT 'INITIATED',
  `ip_addess` varchar(255) DEFAULT NULL,
  `credit_user_type` enum('COR','RET') NOT NULL DEFAULT 'COR',
  `bank_reference_number` varchar(255) DEFAULT NULL,
  `depositor_name` varchar(255) DEFAULT NULL,
  `deposit_log_id` int(11) NOT NULL DEFAULT '0',
  `reversal_deposit_log_id` int(11) NOT NULL DEFAULT '0',
  `reversal_status` enum('PENDING','SUCCESS') NOT NULL DEFAULT 'PENDING',
  `ret_card_log_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_aggregator_activity`
--

CREATE TABLE `spd_aggregator_activity` (
  `aggregator_activity_id` int(11) NOT NULL,
  `aggregator_id` int(11) DEFAULT NULL,
  `activity_idt_id` int(11) DEFAULT NULL,
  `activity_at` datetime DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `licence_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_aggregator_licence`
--

CREATE TABLE `spd_aggregator_licence` (
  `licence_id` int(11) NOT NULL,
  `aggregator_id` int(11) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `descriptions` text,
  `status` enum('SUSPENDED','ACTIVE') DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `licence_key` varchar(255) DEFAULT NULL,
  `licence_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_aggregator_modules`
--

CREATE TABLE `spd_aggregator_modules` (
  `aggregator_module_id` int(11) NOT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `modules_type` varchar(255) DEFAULT NULL,
  `status` enum('ACTIVE','IN_ACTIVE') DEFAULT 'IN_ACTIVE',
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spd_aggregator_modules`
--

INSERT INTO `spd_aggregator_modules` (`aggregator_module_id`, `module_name`, `modules_type`, `status`, `created_by_idt_id`, `updated_by_idt_id`, `created_at`, `updated_at`, `version_id`) VALUES
(15, 'CORPORATE', 'CORPORATE', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1),
(16, 'NGO', 'NGO', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1),
(17, 'DEALERS', 'DEALERS', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1),
(18, 'GOVERNMENT', 'GOVERNMENT', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1),
(19, 'DEVICES', 'DEVICES', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1),
(20, 'CARD HOLDERS', 'CARD_HOLDERS', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1),
(21, 'USSD', 'USSD', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1),
(22, 'NFC', 'NFC', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1),
(23, 'RFID', 'RFID', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1),
(24, 'IC CHIPS', 'IC', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1),
(25, 'OFFLINE TRANSACTIONS', 'OFFLINE', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1),
(26, 'BACK UP SERVER', 'BACK_SERVER', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1),
(27, 'MONITORING', 'MONITORING', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1),
(28, 'TECHNICAL SUPPORT', 'SUPPORT', 'ACTIVE', 83, 83, '2022-05-03 10:50:53', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spd_aggregator_modules_limit`
--

CREATE TABLE `spd_aggregator_modules_limit` (
  `module_limit_id` int(11) NOT NULL,
  `limit_d` varchar(255) DEFAULT NULL,
  `type` enum('LIMITED','UNLIMITED') DEFAULT 'UNLIMITED',
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version_id` int(11) DEFAULT '0',
  `module_type` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spd_aggregator_modules_limit`
--

INSERT INTO `spd_aggregator_modules_limit` (`module_limit_id`, `limit_d`, `type`, `created_by_idt_id`, `updated_by_idt_id`, `created_at`, `updated_at`, `version_id`, `module_type`) VALUES
(15, '0', 'UNLIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'CORPORATE'),
(16, '0', 'UNLIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'NGO'),
(17, '0', 'UNLIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'DEALERS'),
(18, '0', 'UNLIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'GOVERNMENT'),
(19, '0', 'UNLIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'DEVICES'),
(20, '0', 'UNLIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'CARD_HOLDERS'),
(21, '0', 'UNLIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'USSD'),
(22, '0', 'UNLIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'NFC'),
(23, '0', 'UNLIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'RFID'),
(24, '0', 'UNLIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'IC'),
(25, '0', 'UNLIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'OFFLINE'),
(26, '1', 'LIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'BACK_SERVER'),
(27, '2', 'LIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'MONITORING'),
(28, '0', 'UNLIMITED', 83, 83, '2022-05-03 11:04:11', NULL, 1, 'SUPPORT');

-- --------------------------------------------------------

--
-- Table structure for table `spd_gnc_loan`
--

CREATE TABLE `spd_gnc_loan` (
  `gnc_loan_id` int(11) NOT NULL,
  `idt_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `commission` double(10,2) NOT NULL,
  `interest` double(10,2) NOT NULL,
  `finance_charge` double(10,2) NOT NULL,
  `processing_fee` double(10,2) NOT NULL,
  `admin_fees` double(10,2) NOT NULL,
  `card_maintinance_fees` double(10,2) NOT NULL,
  `other_charges` double(10,2) DEFAULT '0.00',
  `tenor` int(11) NOT NULL,
  `total_fees` double(10,2) NOT NULL DEFAULT '0.00',
  `total_paid` double(10,2) NOT NULL DEFAULT '0.00',
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `gnc_request_log_id` int(11) DEFAULT NULL,
  `loan_reference_number` varchar(2555) DEFAULT NULL,
  `loan_status` enum('APPROVED','PENDING','FAILED') NOT NULL DEFAULT 'PENDING',
  `gnc_loan_wallet_log_id` int(11) DEFAULT '0',
  `transfer_status` enum('PENDING','TRANSFER_TO_CARD','REVERSAL_FROM_CARD','REVERSAL_LOAN_ACCOUNT') NOT NULL DEFAULT 'PENDING',
  `transfer_on` datetime DEFAULT NULL,
  `reversal_on` datetime DEFAULT NULL,
  `reversal_type` enum('PENDING','AUTO','NORMAL') DEFAULT 'PENDING',
  `card_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_gnc_loan_activity`
--

CREATE TABLE `spd_gnc_loan_activity` (
  `gnc_loan_activity_id` int(11) NOT NULL,
  `gnc_applicant_id` int(11) NOT NULL DEFAULT '0',
  `gnc_loan_id` int(11) DEFAULT NULL,
  `idt_id` int(11) DEFAULT NULL,
  `service_type` varchar(255) DEFAULT NULL,
  `type` enum('LOAN_REQUEST','LOAN') DEFAULT 'LOAN_REQUEST',
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_gnc_loan_application`
--

CREATE TABLE `spd_gnc_loan_application` (
  `gnc_loan_application_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT '0',
  `client_type` enum('COMPANY','INDIVIDUAL') NOT NULL DEFAULT 'COMPANY',
  `first_name` varchar(255) DEFAULT NULL,
  `middile_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `martial_status` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `address_one` text,
  `address_two` text,
  `address_three` text,
  `contact_number_one` varchar(255) DEFAULT NULL,
  `contact_number_two` varchar(255) DEFAULT NULL,
  `contact_number_three` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `whatsapp_number` varchar(255) DEFAULT NULL,
  `facebook_username` varchar(255) DEFAULT NULL,
  `name_of_children` text,
  `name_of_spouse_one` varchar(255) DEFAULT NULL,
  `name_of_spouse_two` varchar(255) DEFAULT NULL,
  `applicant_assets` text,
  `employer_name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `employer_address` text,
  `employer_email` varchar(255) DEFAULT NULL,
  `employer_phone` varchar(255) DEFAULT NULL,
  `kyc_status` enum('FULL','PARTIAL') NOT NULL DEFAULT 'PARTIAL',
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `supper_agt_id` int(11) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `id_number` varchar(255) DEFAULT NULL,
  `status` enum('PENDING','APPROVED') NOT NULL DEFAULT 'PENDING',
  `kyc_upload_status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '0 IN NOT UPLOAD, 1 UPLOADED',
  `kyc_doc` varchar(255) DEFAULT NULL,
  `kyc_updatd_by_idt_id` int(11) DEFAULT NULL,
  `kyc_updatd_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_gnc_loan_client_wallet`
--

CREATE TABLE `spd_gnc_loan_client_wallet` (
  `gnc_loan_wallet_id` int(11) NOT NULL,
  `idt_id` int(11) NOT NULL DEFAULT '0',
  `gnc_loan_id` int(11) NOT NULL DEFAULT '0',
  `client_type` enum('INDIVIDUAL','COMPANY') NOT NULL DEFAULT 'COMPANY',
  `wallet_account` double(10,2) NOT NULL DEFAULT '0.00',
  `credit_wallet_account` double(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_gnc_loan_client_wallet_log`
--

CREATE TABLE `spd_gnc_loan_client_wallet_log` (
  `gnc_loan_client_wallet_log_id` int(11) NOT NULL,
  `gnc_loan_client_wallet_id` int(11) NOT NULL,
  `idt_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `fees` double(10,2) NOT NULL,
  `total_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `opening_balance` double(10,2) NOT NULL,
  `closing_balance` double(10,2) NOT NULL,
  `txn_type` enum('TRANSACTION','DEPOSIT','WITHDRAW','SMSC','COMM','INTE','FICH','PRFE','ADFE','CAMA','LOAN_WALLET','TRANSFER_LOAN_TO_DEPOSIT','REVARSAL_LOAN_WALLET','OTH','PAY_LOAN_DEPOSIT','PENINT','REPAY','COLCHG','LOAN','TRANSFER_TO_CARD','SMSC_REVARSAL','COMM_REVARSAL','INTE_REVARSAL','FICH_REVARSAL','PRFE_REVARSAL','ADFE_REVARSAL','CAMA_REVARSAL') NOT NULL,
  `txn_desc` text NOT NULL,
  `log_type` enum('CREDIT','DEBIT') NOT NULL,
  `source_type` enum('MPOS','WEB') NOT NULL,
  `created_by_idt_id` int(11) NOT NULL,
  `log_reference` varchar(255) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `parent_log_id` int(11) NOT NULL,
  `source_table` varchar(255) NOT NULL,
  `wallet_type` enum('CREDIT_WALLET','WALLET_ACCOUNT','DEBIT_WALLET') DEFAULT NULL,
  `gnc_loan_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_gnc_loan_configuration`
--

CREATE TABLE `spd_gnc_loan_configuration` (
  `gnc_loan_id` int(11) NOT NULL,
  `service_type` varchar(255) NOT NULL,
  `slab_amount` double(10,2) NOT NULL,
  `commission` double(10,2) NOT NULL,
  `interest` double(10,2) NOT NULL,
  `finance_charge` double(10,2) NOT NULL,
  `processing_fee` double(10,2) NOT NULL,
  `admin_fees` double(10,2) NOT NULL,
  `card_maintinance_fees` double(10,2) NOT NULL,
  `other_charges` double(10,2) DEFAULT '0.00',
  `created_by_idt_id` int(11) NOT NULL,
  `updated_by_idt_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_gnc_loan_email_configuration`
--

CREATE TABLE `spd_gnc_loan_email_configuration` (
  `gnc_loan_email_c_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `permission_id` int(11) DEFAULT '0',
  `aggreagtor_id` int(11) DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT '0',
  `updatd_by_idt_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_gnc_loan_email_permission`
--

CREATE TABLE `spd_gnc_loan_email_permission` (
  `gnc_loan_email_p_id` int(11) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `aggregator_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL,
  `order_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_gnc_loan_guarantor`
--

CREATE TABLE `spd_gnc_loan_guarantor` (
  `gnc_loan_guarantor_id` int(11) NOT NULL,
  `gnc_loan_application_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `contact_number_one` varchar(255) DEFAULT NULL,
  `contact_number_two` varchar(255) DEFAULT NULL,
  `contact_number_three` varchar(255) DEFAULT NULL,
  `id_proof` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `residential_address` text,
  `proof_of_address` varchar(255) DEFAULT NULL,
  `passport_size_photo` varchar(255) DEFAULT NULL,
  `email_address_one` varchar(255) DEFAULT NULL,
  `email_address_two` varchar(255) DEFAULT NULL,
  `email_address_three` varchar(255) DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `kyc_upload_status` enum('0','1') DEFAULT '0' COMMENT '0 IN NOT UPLOAD, 1 UPLOADED 	',
  `kyc_doc` varchar(255) DEFAULT NULL,
  `kyc_updatd_by_idt_id` int(11) DEFAULT NULL,
  `kyc_updatd_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_monthly_statement`
--

CREATE TABLE `spd_monthly_statement` (
  `monthly_statement_id` int(11) NOT NULL,
  `supper_agt_id` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_offline_cards`
--

CREATE TABLE `spd_offline_cards` (
  `offline_card_id` int(11) NOT NULL,
  `card_id` int(11) DEFAULT NULL COMMENT 'client_card_id',
  `status` enum('ACT','INACT') DEFAULT 'ACT',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `amount_limit` double(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spd_offline_terminal`
--

CREATE TABLE `spd_offline_terminal` (
  `offline_ter_id` int(11) NOT NULL,
  `ter_id` int(11) DEFAULT NULL,
  `txn_limit` int(11) DEFAULT '0',
  `txn_amount_limit` double(10,2) DEFAULT NULL,
  `status` enum('ACT','INACT') DEFAULT 'ACT',
  `created_by_idt_id` int(11) DEFAULT '0',
  `updated_by_idt_id` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spd_offline_terminal`
--

INSERT INTO `spd_offline_terminal` (`offline_ter_id`, `ter_id`, `txn_limit`, `txn_amount_limit`, `status`, `created_by_idt_id`, `updated_by_idt_id`, `created_at`, `updated_at`) VALUES
(1, 22, 10, 5000.00, 'ACT', 83, 0, '2022-05-03 13:32:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spd_platform_version`
--

CREATE TABLE `spd_platform_version` (
  `platform_ver_id` int(11) NOT NULL,
  `version_name` varchar(255) DEFAULT NULL,
  `version_code` varchar(255) DEFAULT NULL,
  `descriptions` text,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') DEFAULT 'INACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spd_platform_version`
--

INSERT INTO `spd_platform_version` (`platform_ver_id`, `version_name`, `version_code`, `descriptions`, `created_by_idt_id`, `updated_by_idt_id`, `created_at`, `updated_at`, `status`) VALUES
(1, '4.1', '41', 'USSD + IC Chip', 83, NULL, '2022-05-03 10:45:55', NULL, 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `spd_trace_log`
--

CREATE TABLE `spd_trace_log` (
  `trace_log_id` int(11) NOT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `ref_number` varchar(255) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `before_reponse` longtext,
  `after_reponse` longtext,
  `user_type` enum('ADMIN','AGGREGATOR','RE_COMMON') NOT NULL DEFAULT 'ADMIN',
  `type` varchar(255) DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `location` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spd_trace_log`
--

INSERT INTO `spd_trace_log` (`trace_log_id`, `session_id`, `ip_address`, `ref_number`, `request_url`, `before_reponse`, `after_reponse`, `user_type`, `type`, `created_by_idt_id`, `created_on`, `location`) VALUES
(1, 'n4bqeu4mju4rll3fkp2gtdinr5', '49.36.219.56', '9517154143', 'http://staging.nbmfms.com/admin/user?mode=update&admid=1', '{\"Status\":\"FAILED\",\"Type\":\"SYSTEM_USER_UPDATE\",\"Msg\":\"Enter email\",\"Data\":{\"mode\":\"update\",\"admid\":\"1\",\"user_type_id\":\"\",\"firstname\":\"Super Admin\",\"lastname\":\"Admin\",\"loginname\":\"speedpayadmin\",\"password\":\"\",\"repassword\":\"\",\"phone\":\"099999999999\",\"email\":\"\",\"address\":\"Zambia\",\"city\":\"Lusaka\",\"userstatus\":\"0\",\"update\":\"Submit\"}}', '{\"Status\":\"FAILED\",\"Type\":\"SYSTEM_USER_UPDATE\",\"Msg\":\"Enter email\",\"Data\":{\"mode\":\"update\",\"admid\":\"1\",\"user_type_id\":\"\",\"firstname\":\"Super Admin\",\"lastname\":\"Admin\",\"loginname\":\"speedpayadmin\",\"password\":\"\",\"repassword\":\"\",\"phone\":\"099999999999\",\"email\":\"\",\"address\":\"Zambia\",\"city\":\"Lusaka\",\"userstatus\":\"0\",\"update\":\"Submit\"}}', 'ADMIN', 'SYSTEM_USER_UPDATE', 1, '2022-05-28 08:01:27', ''),
(2, 'n4bqeu4mju4rll3fkp2gtdinr5', '49.36.219.56', '4344251556', 'http://staging.nbmfms.com/admin/user?mode=update&admid=1', '{\"Status\":\"SUCCESS\",\"Type\":\"SYSTEM_USER_UPDATE\",\"Msg\":\"User has been updated successfully.\",\"Data\":{\"user_id\":\"1\",\"first_name\":\"Super Admin\",\"last_name\":\"Admin\",\"address\":\"Zambia\",\"city\":\"Lusaka\",\"country\":0,\"phone\":\"099999999999\",\"email\":\"admin@gmail.com\",\"first_use\":0,\"last_use\":0,\"count_use\":0,\"param\":0,\"adm_type\":\"SUPER_ADMIN\",\"idt_id\":0,\"role_id\":0,\"dbIdentity\":{\"idt_id\":\"1\",\"parent_id\":\"0\",\"pincode\":\"0000\",\"login_name\":\"speedpayadmin\",\"password\":\"\",\"type\":\"ADMIN\",\"status\":\"0\",\"created_by_idt_id\":0,\"updated_by_idt_id\":\"1\",\"created_on\":0,\"login_attempt\":\"0\",\"attempt_first_login\":0,\"password_created_date\":0,\"reset_password_code\":0,\"reset_code_sent_on\":0,\"reset_password_status\":0,\"last_login_on\":0,\"count\":0},\"dbAccount\":0}}', '{\"Status\":\"SUCCESS\",\"Type\":\"SYSTEM_USER_UPDATE\",\"Msg\":\"User has been updated successfully.\",\"Data\":{\"user_id\":\"1\",\"first_name\":\"Super Admin\",\"last_name\":\"Admin\",\"address\":\"Zambia\",\"city\":\"Lusaka\",\"country\":0,\"phone\":\"099999999999\",\"email\":\"admin@gmail.com\",\"first_use\":0,\"last_use\":0,\"count_use\":0,\"param\":0,\"adm_type\":\"SUPER_ADMIN\",\"idt_id\":0,\"role_id\":0,\"dbIdentity\":{\"idt_id\":\"1\",\"parent_id\":\"0\",\"pincode\":\"0000\",\"login_name\":\"speedpayadmin\",\"password\":\"\",\"type\":\"ADMIN\",\"status\":\"0\",\"created_by_idt_id\":0,\"updated_by_idt_id\":\"1\",\"created_on\":0,\"login_attempt\":\"0\",\"attempt_first_login\":0,\"password_created_date\":0,\"reset_password_code\":0,\"reset_code_sent_on\":0,\"reset_password_status\":0,\"last_login_on\":0,\"count\":0},\"dbAccount\":0}}', 'ADMIN', 'SYSTEM_USER_UPDATE', 1, '2022-05-28 08:01:37', ''),
(3, 'ukhh9gdv0gp9rt09u4m83po924', '49.36.219.56', '9394750406', 'http://108.61.171.30/user/settlementtime?mode=create', '{\"Status\":\"SUCCESS\",\"Type\":\"SETTLEMENT_CREATE\",\"Msg\":\"Settlemet Day has been created successfully.\",\"Data\":{\"mode\":\"create\",\"day\":\"1\",\"addproduct\":\"Create\"}}', '{\"Status\":\"SUCCESS\",\"Type\":\"SETTLEMENT_CREATE\",\"Msg\":\"Settlemet Day has been created successfully.\",\"Data\":{\"settlement_time_id\":0,\"aggregator_id\":\"1\",\"day\":\"1\",\"created_by_idt_id\":\"2\",\"updated_by_idt_id\":0,\"status\":\"ACTIVE\",\"created_on\":0,\"updated_on\":0}}', 'AGGREGATOR', 'SETTLEMENT', 2, '2022-05-30 11:17:26', ''),
(4, 'ukhh9gdv0gp9rt09u4m83po924', '49.36.219.56', '5865783241', 'http://108.61.171.30/user/settlementtime?mode=create', '{\"Status\":\"FAILED\",\"Type\":\"SETTLEMENT_CREATE\",\"Msg\":\"Can not create multiple settlement day !!\",\"Data\":{\"mode\":\"create\",\"day\":\"2\",\"addproduct\":\"Create\"}}', '{\"Status\":\"FAILED\",\"Type\":\"SETTLEMENT_CREATE\",\"Msg\":\"Can not create multiple settlement day !!\",\"Data\":{\"mode\":\"create\",\"day\":\"2\",\"addproduct\":\"Create\"}}', 'AGGREGATOR', 'SETTLEMENT', 2, '2022-05-30 11:17:35', ''),
(5, '3v2vppg71rrr28kbl404dan2d1', '41.174.23.52', '4907316177', 'http://108.61.171.30/user/smsconfiguration', '{\"Status\":\"SUCCESS\",\"Type\":\"SMS_CONFIGURATION\",\"Msg\":\" SMS has been Configured successfully.\",\"Data\":{\"type\":\"INTERNAL\",\"supper_agt_id\":\"2\",\"amount\":\"0\",\"txn_type\":[\"DEPOSIT_ACCOUNT\"],\"submit\":\"Update\"}}', '{\"Status\":\"SUCCESS\",\"Type\":\"SMS_CONFIGURATION\",\"Msg\":\" SMS has been Configured successfully.\",\"Data\":{\"type\":\"INTERNAL\",\"supper_agt_id\":\"2\",\"amount\":\"0\",\"txn_type\":[\"DEPOSIT_ACCOUNT\"],\"submit\":\"Update\"}}', 'AGGREGATOR', 'SMS_CONFIGURATION', 2, '2022-06-03 06:10:37', ''),
(6, 'cjcs0rfbt1doqo3taqoplp5134', '41.223.117.67', '1484001373', 'http://108.61.171.30/user/aggrigatorcorporate?mode=create', '{\"Status\":\"SUCCESS\",\"Type\":\"CORPORATE_CREATE\",\"Msg\":\"New Corporate has been created successfully.\",\"Data\":{\"supper_agt_id\":\"3\",\"first_name\":\"David\",\"last_name\":\"Banda\",\"address\":\"Villa 48\",\"city\":\"Lusaka\",\"country\":\"\",\"phone\":\"0975950022\",\"email\":\"darlingtonkutenha@speedpayzm.com\",\"cos_id\":\"1\",\"agt_code\":\"715101\",\"first_use\":0,\"last_use\":0,\"count_use\":0,\"idt_id\":\"4\",\"deposit_account\":\"0.00\",\"commission_account\":\"0.00\",\"district_id\":\"4\",\"province_id\":\"2\",\"business_name\":\"DHL\",\"agent_type\":\"CORPORATE\",\"bank_account_number\":\"00099887643\",\"station\":\"0\",\"nfc_deposit_account\":\"0.00\",\"parent_aggregator_id\":\"0\",\"role_id\":\"0\",\"cardholder_cos_id\":\"2\",\"register_number\":\"0975950022\",\"register_email\":\"kutenhad@gmail.com\",\"auth_required\":\"0\",\"auto_credit_reference_number\":\"DHL0001\",\"registration_name\":\"DHL\",\"registration_number\":\"DHL0001\",\"bank_id\":\"7\",\"bank_branch_code\":\"16\",\"bank_branch_city_id\":\"1\",\"dbIdentity\":{\"idt_id\":\"4\",\"parent_id\":\"0\",\"pincode\":\"4a7d1ed414474e4033ac29ccb8653d9b\",\"login_name\":\"davidb\",\"password\":\"5f4dcc3b5aa765d61d8327deb882cf99\",\"type\":\"SUPPER_AGENT\",\"status\":\"0\",\"created_by_idt_id\":\"2\",\"updated_by_idt_id\":0,\"created_on\":\"2022-06-04 10:14:42\",\"login_attempt\":\"0\",\"attempt_first_login\":\"0\",\"password_created_date\":\"2022-06-04 10:14:42\",\"reset_password_code\":0,\"reset_code_sent_on\":0,\"reset_password_status\":0,\"last_login_on\":0,\"count\":0},\"login\":0,\"agt_type\":\"SUPPER_AGENT\"}}', '{\"Status\":\"SUCCESS\",\"Type\":\"CORPORATE_CREATE\",\"Msg\":\"New Corporate has been created successfully.\",\"Data\":{\"supper_agt_id\":\"3\",\"first_name\":\"David\",\"last_name\":\"Banda\",\"address\":\"Villa 48\",\"city\":\"Lusaka\",\"country\":\"\",\"phone\":\"0975950022\",\"email\":\"darlingtonkutenha@speedpayzm.com\",\"cos_id\":\"1\",\"agt_code\":\"715101\",\"first_use\":0,\"last_use\":0,\"count_use\":0,\"idt_id\":\"4\",\"deposit_account\":\"0.00\",\"commission_account\":\"0.00\",\"district_id\":\"4\",\"province_id\":\"2\",\"business_name\":\"DHL\",\"agent_type\":\"CORPORATE\",\"bank_account_number\":\"00099887643\",\"station\":\"0\",\"nfc_deposit_account\":\"0.00\",\"parent_aggregator_id\":\"0\",\"role_id\":\"0\",\"cardholder_cos_id\":\"2\",\"register_number\":\"0975950022\",\"register_email\":\"kutenhad@gmail.com\",\"auth_required\":\"0\",\"auto_credit_reference_number\":\"DHL0001\",\"registration_name\":\"DHL\",\"registration_number\":\"DHL0001\",\"bank_id\":\"7\",\"bank_branch_code\":\"16\",\"bank_branch_city_id\":\"1\",\"dbIdentity\":{\"idt_id\":\"4\",\"parent_id\":\"0\",\"pincode\":\"4a7d1ed414474e4033ac29ccb8653d9b\",\"login_name\":\"davidb\",\"password\":\"5f4dcc3b5aa765d61d8327deb882cf99\",\"type\":\"SUPPER_AGENT\",\"status\":\"0\",\"created_by_idt_id\":\"2\",\"updated_by_idt_id\":0,\"created_on\":\"2022-06-04 10:14:42\",\"login_attempt\":\"0\",\"attempt_first_login\":\"0\",\"password_created_date\":\"2022-06-04 10:14:42\",\"reset_password_code\":0,\"reset_code_sent_on\":0,\"reset_password_status\":0,\"last_login_on\":0,\"count\":0},\"login\":0,\"agt_type\":\"SUPPER_AGENT\"}}', 'AGGREGATOR', 'SUPPER_AGENT', 2, '2022-06-04 10:14:42', '');

-- --------------------------------------------------------

--
-- Table structure for table `spd_voucher_reedem`
--

CREATE TABLE `spd_voucher_reedem` (
  `voucher_redeem_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `to_mobile_number` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `amount` double(10,2) DEFAULT '0.00',
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `redeem_by_idt_id` int(11) DEFAULT NULL,
  `redeem_at` datetime DEFAULT NULL,
  `status` enum('PENDING','APPROVED','CANCELED','REVERSAL') DEFAULT 'PENDING',
  `client_card_id` int(11) DEFAULT '0',
  `client_card_log_id` int(11) DEFAULT NULL,
  `nfc_txn_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE `tbl_account` (
  `acc_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `acc_acc_id` int(11) DEFAULT NULL,
  `acc_amount` varchar(20) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_manager`
--

CREATE TABLE `tbl_account_manager` (
  `account_id` int(11) NOT NULL,
  `idt_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `acc_first_name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acc_last_name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acc_address` text COLLATE utf8_unicode_ci,
  `acc_city` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acc_country` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acc_phone` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acc_email` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acc_first_use` datetime DEFAULT NULL,
  `acc_last_use` datetime DEFAULT NULL,
  `acc_count_use` int(11) DEFAULT NULL,
  `acc_manager_code` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_acc_manager_supper_agent`
--

CREATE TABLE `tbl_acc_manager_supper_agent` (
  `acc_super_agent_mapping_id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `supper_agt_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `created_on` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_settlement`
--

CREATE TABLE `tbl_admin_settlement` (
  `admin_settlement_id` int(11) NOT NULL,
  `aggregator_id` int(11) NOT NULL,
  `settled_date` date NOT NULL,
  `volume` double(10,2) NOT NULL,
  `rate` double(10,2) NOT NULL DEFAULT '0.00',
  `due_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `cumulative_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `opening_due_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `closing_due_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `settlement_status` enum('PAID','UNPAID') NOT NULL DEFAULT 'UNPAID',
  `sttlement_type` enum('CREDIT','DEBIT') NOT NULL DEFAULT 'CREDIT',
  `ref_number` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_settlement_account`
--

CREATE TABLE `tbl_admin_settlement_account` (
  `adm_settlement_acc_id` int(11) NOT NULL,
  `aggregator_id` int(11) NOT NULL,
  `account` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agent`
--

CREATE TABLE `tbl_agent` (
  `agt_id` int(11) NOT NULL,
  `idt_id` int(11) NOT NULL,
  `supper_agt_id` int(11) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `agt_first_name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agt_last_name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agt_address` text COLLATE utf8_unicode_ci,
  `agt_city` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agt_country` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agt_phone` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agt_email` varchar(450) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deposit_account` double(10,2) NOT NULL DEFAULT '0.00',
  `agt_cos_id` int(11) DEFAULT NULL,
  `agt_first_use` datetime DEFAULT NULL,
  `agt_last_use` datetime DEFAULT NULL,
  `agt_count_use` int(11) DEFAULT NULL,
  `agt_code` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agent_station`
--

CREATE TABLE `tbl_agent_station` (
  `station_id` int(11) NOT NULL,
  `aggregator_id` varchar(255) DEFAULT NULL,
  `station_name` varchar(255) DEFAULT NULL,
  `station_code` varchar(255) DEFAULT NULL,
  `station_city` varchar(255) DEFAULT NULL,
  `station_provience` varchar(255) DEFAULT NULL,
  `station_address` text,
  `station_number` varchar(255) DEFAULT NULL,
  `station_email` varchar(255) DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `status` enum('ACT','INACT') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agent_station`
--

INSERT INTO `tbl_agent_station` (`station_id`, `aggregator_id`, `station_name`, `station_code`, `station_city`, `station_provience`, `station_address`, `station_number`, `station_email`, `created_by_idt_id`, `updated_by_idt_id`, `created_on`, `updated_on`, `status`) VALUES
(1, '1', 'TEST', 'hghj', 'kjk', '2', 'jnjk', '16', '-', 1, NULL, '2022-06-02 18:36:34', NULL, 'ACT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agent_terminal`
--

CREATE TABLE `tbl_agent_terminal` (
  `agent_terminal_id` int(11) NOT NULL,
  `agt_id` int(11) NOT NULL,
  `ter_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_by_idt_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aggregator_activate_card_request`
--

CREATE TABLE `tbl_aggregator_activate_card_request` (
  `card_request_id` int(11) NOT NULL,
  `aggregator_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `approved_by_idt_id` int(11) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assign_province`
--

CREATE TABLE `tbl_assign_province` (
  `account_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_code` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` text,
  `aggregator_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`bank_id`, `bank_name`, `bank_code`, `city_id`, `address`, `aggregator_id`) VALUES
(1, 'CDH INVESTMENT BANK (CDHIB)', '0000', 1, 'Head Office, Blantyre', 1),
(2, 'ECOBANK MALAWI LIMITED', '00000', 4, '00000', 1),
(3, 'FDH BANK LIMITED', '0000', 4, '0', 1),
(4, 'FIRST CAPITAL BANK PLC., MALAWI', '0000', 3, '000', 1),
(5, 'FIRST DISCOUNT HOUSE LIMITED', '0000', 4, '00', 1),
(6, 'MYBUCKS BANKING CORPORATION LIMITED', '0000', 4, '0000', 1),
(7, 'NATIONAL BANK OF MALAWI', '0000', 3, '0000', 1),
(8, 'NBS BANK PLC', '0000', 3, '0000', 1),
(9, 'RESERVE BANK OF MALAWI', '0000', 3, '0000', 1),
(10, 'STANDARD BANK LIMITED-MALAWI', '0000', 2, '0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_branch_code`
--

CREATE TABLE `tbl_bank_branch_code` (
  `branch_code_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `bank_city_id` int(11) NOT NULL,
  `branch_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank_branch_code`
--

INSERT INTO `tbl_bank_branch_code` (`branch_code_id`, `bank_id`, `bank_city_id`, `branch_code`) VALUES
(1, 1, 1, 'CDHIMWMW'),
(2, 2, 1, 'ECOCMWMW'),
(3, 3, 1, 'FDHFMWMW'),
(4, 4, 1, 'FDHFMWMW'),
(5, 5, 1, 'FDHDMWMW'),
(6, 6, 2, 'NFBMMWMW'),
(7, 6, 2, 'MBBCMWMW'),
(8, 7, 1, 'NBMAMWMW'),
(9, 7, 1, 'NBMAMWMW001'),
(10, 7, 1, 'NBMAMWMW002'),
(11, 7, 3, 'NBMAMWMW003'),
(12, 7, 4, 'NBMAMWMW004'),
(13, 7, 4, 'NBMAMWMW005'),
(14, 7, 2, 'NBMAMWMW007'),
(15, 7, 2, 'NBMAMWMW008'),
(16, 7, 1, 'NBMAMWMW044'),
(17, 8, 1, 'NBSTMWMW'),
(18, 9, 1, 'RBMAMWMWMRA'),
(19, 9, 2, 'RBMAMWMWMOF'),
(20, 9, 2, 'RBMAMWMWADV'),
(21, 9, 2, 'RBMAMWMWCOM'),
(22, 9, 2, 'RBMAMWMWDEP'),
(23, 9, 2, 'RBMAMWMWDVT'),
(24, 9, 2, 'RBMAMWMWDEV'),
(25, 9, 2, 'RBMAMWMWMIS'),
(26, 9, 2, 'RBMAMWMWORT'),
(27, 9, 2, 'RBMAMWMWPEN'),
(28, 9, 2, 'RBMAMWMWSAL'),
(29, 9, 2, 'RBMAMWMW'),
(30, 10, 2, 'SBICMWMX');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_city`
--

CREATE TABLE `tbl_bank_city` (
  `bank_city_id` int(11) NOT NULL,
  `city_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank_city`
--

INSERT INTO `tbl_bank_city` (`bank_city_id`, `city_name`) VALUES
(1, 'BLANTYRE'),
(2, 'LILONGWE'),
(3, 'CHICHIRI'),
(4, 'LIMBE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_broadcast`
--

CREATE TABLE `tbl_broadcast` (
  `broadcast_id` int(11) NOT NULL,
  `aggregator_id` int(11) DEFAULT NULL,
  `broadcast_name` varchar(255) DEFAULT NULL,
  `broadcast_subject` varchar(255) DEFAULT NULL,
  `send_to` text,
  `broadcast_type` enum('SMS','EMAIL') DEFAULT NULL,
  `user_type` enum('CLIENT','CARDHOLDER','OTHERS','CORPORATE','NGO','OTHER','INTERNAL','ALL','INDIVIDUAL','DEALER') DEFAULT 'ALL',
  `sub_user_type` enum('COS','INDIVIDUAL','RETAIL_CARDHOLDER') DEFAULT NULL,
  `cos_id` int(11) DEFAULT '0',
  `content` text,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_broadcast_client`
--

CREATE TABLE `tbl_broadcast_client` (
  `broadcast_client_id` int(11) NOT NULL,
  `broadcast_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cards`
--

CREATE TABLE `tbl_cards` (
  `card_id` int(11) NOT NULL,
  `aggregator_id` int(11) DEFAULT NULL,
  `card_number` varchar(191) DEFAULT NULL COMMENT 'card Serial number',
  `year` varchar(191) DEFAULT NULL,
  `month` varchar(191) DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `card_status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0:inactive,1:active',
  `card_unique_code` text,
  `card_write_status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1:write,0:not write',
  `chip_write_card_status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '1:write,0:not write '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cards_staging`
--

CREATE TABLE `tbl_cards_staging` (
  `card_id` int(11) NOT NULL,
  `aggregator_id` int(11) DEFAULT NULL,
  `card_number` varchar(191) DEFAULT NULL COMMENT 'card Serial number',
  `year` varchar(191) DEFAULT NULL,
  `month` varchar(191) DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `card_status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0:inactive,1:active',
  `card_unique_code` text,
  `card_write_status` enum('1','0') DEFAULT '0' COMMENT '1:write,0:not write'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card_assign_to_vehicle`
--

CREATE TABLE `tbl_card_assign_to_vehicle` (
  `card_assign_id` int(11) NOT NULL,
  `card_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `client_id` int(11) NOT NULL,
  `idt_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` enum('WEB','APP','CLIENT_APP') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'WEB',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` int(11) NOT NULL,
  `desctrict_id` int(11) NOT NULL,
  `cos_id` int(11) NOT NULL,
  `deposit_account` double(10,2) NOT NULL,
  `enrolment_status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0:Not Enroled, 1:Enroled',
  `id_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_doc1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_doc2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_doc_status` enum('1','0') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1:doc upload,0doc not upload',
  `enrolled_on` datetime DEFAULT NULL,
  `supper_agt_id` int(11) DEFAULT NULL,
  `aggregator_id` int(11) NOT NULL DEFAULT '0',
  `agt_id` int(11) DEFAULT NULL,
  `ter_id` int(11) DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT '0',
  `updated_by_idt_id` int(11) DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `client_qr_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_type` enum('CLIENT','CORPORATE_ACCOUNT','CORPORATE_CLIENT') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'CORPORATE_ACCOUNT',
  `terminal_session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_app_device`
--

CREATE TABLE `tbl_client_app_device` (
  `client_app_device_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `app_os` varchar(255) DEFAULT NULL,
  `app_version` varchar(255) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_card`
--

CREATE TABLE `tbl_client_card` (
  `client_card_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `aggregator_id` int(11) NOT NULL,
  `supper_agt_id` int(11) NOT NULL DEFAULT '0',
  `master_card_id` int(11) NOT NULL,
  `card_unique_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `card_id` int(11) NOT NULL DEFAULT '0',
  `card_balance` double(10,2) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by_idt_id` int(11) NOT NULL,
  `count_us` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `last_use` datetime DEFAULT NULL,
  `card_status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '0:Blocked,1:Active',
  `card_scaned_status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '0:Not Scanned, 1: Scanned',
  `agt_id` int(11) DEFAULT '0',
  `ter_id` int(11) DEFAULT '0',
  `terminal_session_id` int(11) NOT NULL DEFAULT '0',
  `pin` varchar(255) DEFAULT NULL,
  `card_type` enum('MANAGMENT_CARD','NORMAL_CARD','CORPORATE_CARD') NOT NULL DEFAULT 'NORMAL_CARD'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_card_log`
--

CREATE TABLE `tbl_client_card_log` (
  `card_log_id` int(11) NOT NULL,
  `client_card_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `fees` double(10,2) NOT NULL,
  `opening_balance` double(10,2) NOT NULL,
  `closing_balance` double(10,2) NOT NULL,
  `txn_type` enum('REVARSAL','TRANSACTION','CASHIN','CASHOUT','TRANSFER_BALANCE','LOAN_TRANSFER_BALANCE','LOAN_REVERSAL') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `txn_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `log_type` enum('CREDIT','DEBIT') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `source_type` enum('MPOS','WEB','CLIENT_APP','CURTOMER_USSD','DEALER_USSD','AUTO_CREDIT_NBM') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_by_idt_id` int(11) NOT NULL,
  `log_reference` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `source_table` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `agt_id` int(11) DEFAULT NULL,
  `ter_id` int(11) DEFAULT NULL,
  `agent_log_id` int(11) DEFAULT NULL,
  `nfc_deposit_log_id` int(11) NOT NULL DEFAULT '0',
  `terminal_session_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_deposite_temp`
--

CREATE TABLE `tbl_client_deposite_temp` (
  `client_id` int(11) NOT NULL,
  `card_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `supper_agt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_driver`
--

CREATE TABLE `tbl_client_driver` (
  `client_driver_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `supper_agt_id` int(11) DEFAULT NULL,
  `idt_id` int(11) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `aggregator_id` int(11) NOT NULL DEFAULT '1',
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT 'o:active,1 inactive',
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_client_driver`
--

INSERT INTO `tbl_client_driver` (`client_driver_id`, `client_id`, `supper_agt_id`, `idt_id`, `pin`, `aggregator_id`, `status`, `created_by_idt_id`, `updated_by_idt_id`, `created_on`, `updated_on`) VALUES
(1, 5, 5, 26, '81dc9bdb52d04dc20036dbd8313ed055', 1, '0', 16, NULL, '2021-11-19 07:54:33', NULL),
(2, 8, 5, 34, '81dc9bdb52d04dc20036dbd8313ed055', 1, '0', 16, 16, '2021-12-01 11:38:45', '2021-12-01 11:43:41'),
(4, 13, 5, 41, '81dc9bdb52d04dc20036dbd8313ed055', 1, '0', 16, NULL, '2021-12-01 13:30:48', NULL),
(5, 14, 5, 42, '81dc9bdb52d04dc20036dbd8313ed055', 1, '0', 16, NULL, '2021-12-01 13:53:49', NULL),
(6, 15, 5, 43, '81dc9bdb52d04dc20036dbd8313ed055', 1, '0', 16, NULL, '2021-12-01 13:56:16', NULL),
(7, 16, 5, 44, '81dc9bdb52d04dc20036dbd8313ed055', 1, '0', 16, NULL, '2021-12-01 13:59:04', NULL),
(8, 17, 5, 45, '81dc9bdb52d04dc20036dbd8313ed055', 1, '0', 16, NULL, '2021-12-01 14:00:08', NULL),
(9, 36, 5, 78, '81dc9bdb52d04dc20036dbd8313ed055', 1, '0', 16, NULL, '2021-12-14 12:40:01', NULL),
(10, 21, 5, 49, '81dc9bdb52d04dc20036dbd8313ed055', 1, '0', 16, 16, '2021-12-14 12:45:22', '2021-12-14 12:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_driver_mapping`
--

CREATE TABLE `tbl_client_driver_mapping` (
  `client_driver_mapping_id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_temp`
--

CREATE TABLE `tbl_client_temp` (
  `client_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supper_agt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `status` enum('DUPLICATE','ACTIVE','NOT_DUPLICATE') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_wallet_deposit`
--

CREATE TABLE `tbl_client_wallet_deposit` (
  `client_wallet_deposit_id` int(11) NOT NULL,
  `idt_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `fees` double(10,2) NOT NULL,
  `total_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `opening_balance` double(10,2) NOT NULL,
  `closing_balance` double(10,2) NOT NULL,
  `txn_type` enum('REVARSAL','TRANSACTION','COMMISSION','DEPOSIT','WITHDRAW','COMMISSION_REVERSAL','COMMISSION_TO_AGENT','COMMISSION_WITHDRAW','TOPUP','CASHIN','CASHOUT','WALLET_TO_WALLET_TRANSFER') NOT NULL,
  `txn_desc` text NOT NULL,
  `log_type` enum('CREDIT','DEBIT') NOT NULL,
  `source_type` enum('MPOS','WEB') NOT NULL,
  `created_by_idt_id` int(11) NOT NULL,
  `log_reference` varchar(255) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `parent_log_id` int(11) NOT NULL,
  `source_table` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cos`
--

CREATE TABLE `tbl_cos` (
  `cos_id` int(11) NOT NULL,
  `cos_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cos_type` enum('SUPPER_AGENT','AGENT','CLIENT') COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by_idt_id` int(11) DEFAULT NULL,
  `supper_agt_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cos`
--

INSERT INTO `tbl_cos` (`cos_id`, `cos_name`, `cos_type`, `create_by_idt_id`, `supper_agt_id`, `created_on`) VALUES
(1, 'Default', 'SUPPER_AGENT', 1, 1, '2022-06-02 18:37:06'),
(2, 'Default', 'CLIENT', 1, 1, '2022-06-02 18:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cos_product_assign`
--

CREATE TABLE `tbl_cos_product_assign` (
  `assign_product_cos_id` int(11) NOT NULL,
  `cos_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `type` enum('SUPPER_AGENT','AGENT') COLLATE utf8_unicode_ci DEFAULT NULL,
  `assign_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cos_service`
--

CREATE TABLE `tbl_cos_service` (
  `service_cos_id` int(11) NOT NULL,
  `cos_id` int(11) NOT NULL,
  `cos_type` enum('AGENT','SUPPER_AGENT','CLIENT') COLLATE utf8_unicode_ci NOT NULL,
  `service_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_access` enum('YES','NO') COLLATE utf8_unicode_ci NOT NULL,
  `service_min_limit` double(10,2) NOT NULL,
  `service_max_limit` double(10,2) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by_idt_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by_idt_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cos_service_fees`
--

CREATE TABLE `tbl_cos_service_fees` (
  `service_cos_fees_id` int(11) NOT NULL,
  `service_cos_id` int(11) NOT NULL,
  `cos_type` enum('SUPPER_AGENT','AGENT','CLIENT') COLLATE utf8_unicode_ci NOT NULL,
  `service_type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slab_amount` double(10,2) NOT NULL,
  `fixed_fees` double(10,2) NOT NULL,
  `fixed_discount` double(10,2) DEFAULT NULL,
  `percent_fees` double(10,5) NOT NULL,
  `percent_discount` double(10,5) DEFAULT NULL,
  `card_fixed_discount` double(10,2) DEFAULT NULL,
  `card_percent_discount` double(10,5) DEFAULT NULL,
  `super_agent_commission` double(10,2) NOT NULL,
  `speedpay_commission` double(10,2) DEFAULT NULL,
  `receiving_superagent_commission` double(10,2) DEFAULT NULL,
  `receiving_customer_commission` double(10,2) DEFAULT NULL,
  `agent_commission` double(10,2) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cos_utility`
--

CREATE TABLE `tbl_cos_utility` (
  `utility_cos_id` int(11) NOT NULL,
  `cos_id` int(11) DEFAULT NULL,
  `cos_type` enum('AGENT','SUPPER_AGENT') COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `service_access` enum('YES','NO') COLLATE utf8_unicode_ci DEFAULT NULL,
  `super_agent_commission` double(10,2) DEFAULT NULL,
  `agent_commission` double(10,2) DEFAULT NULL,
  `system_commission` double(10,2) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by_idt_id` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by_idt_id` varchar(765) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deposit_log`
--

CREATE TABLE `tbl_deposit_log` (
  `deposit_log_id` int(11) NOT NULL,
  `idt_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `fees` double(10,2) NOT NULL,
  `opening_balance` double(10,2) NOT NULL,
  `closing_balance` double(10,2) NOT NULL,
  `txn_type` enum('REVARSAL','TRANSACTION','COMMISSION','CASHIN','CASHOUT','DEPOSIT','WITHDRAW','COMMISSION_REVERSAL','COMMISSION_TO_AGENT','COMMISSION_WITHDRAW','LOYALTY_REDEEM') COLLATE utf8_unicode_ci NOT NULL,
  `txn_desc` text COLLATE utf8_unicode_ci,
  `log_type` enum('CREDIT','DEBIT') COLLATE utf8_unicode_ci NOT NULL,
  `source_type` enum('MPOS','WEB','NBM_AUTO_CREDIT') COLLATE utf8_unicode_ci NOT NULL,
  `created_by_idt_id` int(11) NOT NULL,
  `log_reference` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `parent_log_id` int(11) NOT NULL DEFAULT '0',
  `source_table` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agt_id` int(11) DEFAULT '0',
  `ter_id` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deposit_withdraw_request`
--

CREATE TABLE `tbl_deposit_withdraw_request` (
  `d_w_request_id` int(11) NOT NULL,
  `idt_id` int(11) DEFAULT NULL,
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `description` text,
  `payment_method` enum('CASH','CHEQUE','BANK_TRANSFER','OTHER_BANK_CHEQUE','STANDING_ORDER','MOBILE_MONEY_AIRTEL','MOBILE_MONEY_TNM','TEMPORARY_ADVANCE','STAFF_LOAN','OTHERS') DEFAULT NULL,
  `created_by_idt_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_by_idt_id` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime DEFAULT NULL,
  `status` enum('PENDING','APPROVED','CANCELLED') NOT NULL DEFAULT 'PENDING',
  `cancelled_note` text,
  `request_type` enum('DEPOSIT','WITHDRAW') DEFAULT NULL,
  `aggregator_id` int(11) NOT NULL DEFAULT '1',
  `deposit_log_id` int(11) DEFAULT '0',
  `txn_ref_number` varchar(255) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `bank_branch_city_id` int(11) DEFAULT NULL,
  `clearing_days` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  `district_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_status` enum('0','1') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `province_id`, `district_name`, `district_code`, `district_status`, `created_on`) VALUES
(1, 1, 'Chitipa', NULL, '1', '2021-10-29 00:00:00'),
(2, 1, 'Karonga', NULL, '1', '2021-10-29 00:00:00'),
(3, 1, 'Likoma', NULL, '1', '2021-10-29 00:00:00'),
(4, 1, 'Mzimba', NULL, '1', '2021-10-29 00:00:00'),
(5, 1, 'Nkhata Bay', NULL, '1', '2021-10-29 00:00:00'),
(6, 1, 'Rumphi', NULL, '1', '2021-10-29 00:00:00'),
(7, 2, 'Dedza', NULL, '1', '2021-10-29 00:00:00'),
(8, 2, 'Dowa', NULL, '1', '2021-10-29 00:00:00'),
(9, 2, 'Kasungu', NULL, '1', '2021-10-29 00:00:00'),
(10, 2, 'Lilongwe', NULL, '1', '2021-10-29 00:00:00'),
(11, 2, 'Mchinji', NULL, '1', '2021-10-29 00:00:00'),
(12, 2, 'Nkhotakota', NULL, '1', '2021-10-29 00:00:00'),
(13, 2, 'Ntcheu', NULL, '1', '2021-10-29 00:00:00'),
(14, 2, 'Ntchisi', NULL, '1', '2021-10-29 00:00:00'),
(15, 2, 'Salima', NULL, '1', '2021-10-29 00:00:00'),
(16, 3, 'Balaka', NULL, '1', '2021-10-29 00:00:00'),
(17, 3, 'Blantyre', NULL, '1', '2021-10-29 00:00:00'),
(18, 3, 'Chikwawa', NULL, '1', '2021-10-29 00:00:00'),
(19, 3, 'Chiradzulu', NULL, '1', '2021-10-29 00:00:00'),
(20, 3, 'Machinga', NULL, '1', '2021-10-29 00:00:00'),
(21, 3, 'Mangochi', NULL, '1', '2021-10-29 00:00:00'),
(22, 3, 'Mulanje', NULL, '1', '2021-10-29 00:00:00'),
(23, 3, 'Mwanza', NULL, '1', '2021-10-29 00:00:00'),
(24, 3, 'Nsanje', NULL, '1', '2021-10-29 00:00:00'),
(25, 3, 'Thyolo', NULL, '1', '2021-10-29 00:00:00'),
(26, 3, 'Phalombe', NULL, '1', '2021-10-29 00:00:00'),
(27, 3, 'Zomba', NULL, '1', '2021-10-29 00:00:00'),
(28, 3, 'Neno', NULL, '1', '2021-10-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_log`
--

CREATE TABLE `tbl_email_log` (
  `email_log_id` int(11) NOT NULL,
  `user_email` text,
  `subject` text,
  `email_type` varchar(255) DEFAULT NULL,
  `attachment_path` varchar(255) DEFAULT NULL,
  `email_content` text,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `aggregator_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holiday`
--

CREATE TABLE `tbl_holiday` (
  `holiday_id` int(11) NOT NULL,
  `supper_agt_id` int(11) DEFAULT NULL,
  `holiday_name` varchar(255) DEFAULT NULL,
  `holiday_type` enum('DAY','DATE') DEFAULT NULL,
  `holiday_value` varchar(255) DEFAULT NULL,
  `status` enum('ACT','INACT') DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holiday_mapping`
--

CREATE TABLE `tbl_holiday_mapping` (
  `holiday_mapping_id` int(11) NOT NULL,
  `year` varchar(255) DEFAULT NULL,
  `res_date` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holiday_mapping_off`
--

CREATE TABLE `tbl_holiday_mapping_off` (
  `holiday_mapping_off_id` int(11) NOT NULL,
  `holiday_id` int(11) DEFAULT NULL,
  `holiday_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_identify_operator`
--

CREATE TABLE `tbl_identify_operator` (
  `identify_id` int(11) NOT NULL,
  `operator` enum('AIRTEL','MTN','ZAMTEL') COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `identify_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL COMMENT '1:Active, 0:Inactive'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_identity`
--

CREATE TABLE `tbl_identity` (
  `idt_id` int(11) NOT NULL,
  `idt_login` varchar(255) NOT NULL,
  `idt_password` varchar(255) NOT NULL,
  `idt_pin` varchar(255) NOT NULL,
  `idt_type` enum('ADMIN','SUPPER_AGENT','AGENT','ACCOUNT_MANAGER','CLIENT','DRIVER','CORPORATE_ACCOUNT') NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `idt_status` enum('0','1','2','3') NOT NULL DEFAULT '0' COMMENT '0:Active, 1:Close, 2:Block, 3:Painding',
  `created_on` datetime NOT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `login_attempt` int(11) DEFAULT '0',
  `attempt_first_login` int(11) DEFAULT '0',
  `password_created_date` datetime DEFAULT NULL,
  `reset_password_code` varchar(256) DEFAULT NULL,
  `reset_code_sent_on` datetime DEFAULT NULL,
  `reset_password_status` enum('0','1') DEFAULT NULL COMMENT '0:No Reset,1:Reset Done',
  `last_login_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_identity`
--

INSERT INTO `tbl_identity` (`idt_id`, `idt_login`, `idt_password`, `idt_pin`, `idt_type`, `parent_id`, `idt_status`, `created_on`, `created_by_idt_id`, `updated_on`, `updated_by_idt_id`, `login_attempt`, `attempt_first_login`, `password_created_date`, `reset_password_code`, `reset_code_sent_on`, `reset_password_status`, `last_login_on`) VALUES
(1, 'speedpayadmin', 'ce726ef2bc97bef700c54d762c44a70c', '4a7d1ed414474e4033ac29ccb8653d9b', 'ADMIN', 0, '0', '2022-05-28 00:00:00', NULL, '2022-05-28 08:01:37', 1, 0, 0, NULL, NULL, NULL, NULL, NULL),
(2, 'nbmmalawi', 'f2da1addc882b1b11a1c9be673dff431', 'd41d8cd98f00b204e9800998ecf8427e', 'SUPPER_AGENT', 0, '0', '2022-05-30 08:07:52', 1, '2022-06-02 10:36:15', 1, 0, 1, '2022-05-30 08:07:52', NULL, NULL, NULL, NULL),
(3, 'Speedpay', '827ccb0eea8a706c4c34a16891f84e7b', '81dc9bdb52d04dc20036dbd8313ed055', 'SUPPER_AGENT', 0, '0', '2022-06-02 18:35:38', 1, '2022-06-04 08:15:53', 1, 0, 0, '2022-06-02 18:35:38', NULL, NULL, NULL, NULL),
(4, 'davidb', '5f4dcc3b5aa765d61d8327deb882cf99', '4a7d1ed414474e4033ac29ccb8653d9b', 'SUPPER_AGENT', 0, '0', '2022-06-04 10:14:42', 2, NULL, NULL, 0, 0, '2022-06-04 10:14:42', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loyalty_configuration`
--

CREATE TABLE `tbl_loyalty_configuration` (
  `loyalty_id` int(11) NOT NULL,
  `upto_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `point` double(10,2) NOT NULL DEFAULT '0.00',
  `loyalty_type` varchar(255) DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `aggregator_id` int(11) DEFAULT NULL,
  `loyalty_p_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loyalty_point_log`
--

CREATE TABLE `tbl_loyalty_point_log` (
  `loyalty_point_log_id` int(11) NOT NULL,
  `idt_id` int(11) NOT NULL,
  `point` int(11) DEFAULT NULL,
  `opening_point` int(11) DEFAULT NULL,
  `closing_point` int(11) DEFAULT NULL,
  `txn_type` enum('TRANSACTION','DEPOSIT','WITHDRAW','REVERSE') COLLATE utf8_unicode_ci NOT NULL,
  `txn_desc` text COLLATE utf8_unicode_ci,
  `log_type` enum('CREDIT','DEBIT') COLLATE utf8_unicode_ci NOT NULL,
  `source_type` enum('MPOS','WEB','') COLLATE utf8_unicode_ci NOT NULL,
  `created_by_idt_id` int(11) NOT NULL,
  `log_reference` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `parent_log_id` int(11) NOT NULL DEFAULT '0',
  `source_table` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aggregator_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loyalty_point_wallet`
--

CREATE TABLE `tbl_loyalty_point_wallet` (
  `loyalty_wallet_id` int(11) NOT NULL,
  `idt_id` int(11) DEFAULT NULL,
  `loyalty_point` int(11) DEFAULT NULL,
  `client_type` enum('CARDHOLDER','CLIENT') DEFAULT 'CLIENT'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loyalty_program`
--

CREATE TABLE `tbl_loyalty_program` (
  `loyalty_p_id` int(11) NOT NULL,
  `loyalty_name` varchar(255) DEFAULT NULL,
  `client_type` varchar(255) DEFAULT NULL,
  `status` enum('ACT','INACT') DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `aggregator_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_card`
--

CREATE TABLE `tbl_master_card` (
  `master_card_id` int(11) NOT NULL,
  `card_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `card_status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1:Active,0:Inactive',
  `aggregator_id` int(11) NOT NULL DEFAULT '245'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_master_card`
--

INSERT INTO `tbl_master_card` (`master_card_id`, `card_name`, `card_status`, `aggregator_id`) VALUES
(1, 'RET', '1', 1),
(2, 'NGO', '1', 1),
(3, 'COR', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_medison`
--

CREATE TABLE `tbl_medison` (
  `medison_id` int(11) NOT NULL,
  `idt_id` int(11) NOT NULL,
  `medison_policy_ref_no` varchar(255) NOT NULL,
  `policy_number` varchar(255) DEFAULT NULL,
  `ref_number` varchar(255) DEFAULT NULL,
  `policy_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `policy_status` enum('APPROVED','REJECTED','INITIATED') NOT NULL DEFAULT 'INITIATED',
  `created_by_idt_id` int(11) NOT NULL DEFAULT '0',
  `updatd_by_idt_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `deposit_log_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_url` varchar(2552) DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `menu_type` enum('DEALER','AGGREGATOR','NGO','GOVERNMENT','CORPORATE') DEFAULT 'AGGREGATOR',
  `status` enum('ACT','INACT') DEFAULT 'ACT',
  `menu_lable` enum('MAIN_MENU','SUB_MENU') DEFAULT 'MAIN_MENU',
  `menu_col` enum('1','2','3') DEFAULT '1',
  `sort_by` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `parent_id`, `menu_name`, `menu_url`, `menu_icon`, `menu_type`, `status`, `menu_lable`, `menu_col`, `sort_by`) VALUES
(1, 0, 'Home', '#', 'home.png', 'AGGREGATOR', 'ACT', 'MAIN_MENU', '1', 0),
(2, 0, 'Account Holders', '#', 'team.png', 'AGGREGATOR', 'ACT', 'MAIN_MENU', '1', 1),
(3, 0, 'Advances', '#', 'loan.png', 'AGGREGATOR', 'ACT', 'MAIN_MENU', '1', 2),
(4, 0, 'Reports', '#', 'report.png', 'AGGREGATOR', 'ACT', 'MAIN_MENU', '1', 3),
(5, 0, 'Banking', '#', 'bank.png', 'AGGREGATOR', 'ACT', 'MAIN_MENU', '1', 4),
(6, 0, 'Management Service', '#', 'service.png', 'AGGREGATOR', 'ACT', 'MAIN_MENU', '1', 5),
(7, 0, 'Home', '#', 'home.png', 'DEALER', 'ACT', 'MAIN_MENU', '1', 0),
(8, 0, 'Forecourt Attendant', '#', 'emp.png', 'DEALER', 'ACT', 'MAIN_MENU', '1', 1),
(9, 0, 'Cardholder', '#', 'cardholder.png', 'DEALER', 'ACT', 'MAIN_MENU', '1', 2),
(10, 0, 'POS Device', '#', 'device.png', 'DEALER', 'ACT', 'MAIN_MENU', '1', 3),
(11, 0, 'Reports', '#', 'report.png', 'DEALER', 'ACT', 'MAIN_MENU', '1', 4),
(12, 0, 'Home', '#', 'home.png', 'CORPORATE', 'ACT', 'MAIN_MENU', '1', 1),
(13, 0, 'Forecourt Attendant', '#', 'emp.png', 'CORPORATE', 'ACT', 'MAIN_MENU', '1', 2),
(14, 0, 'Card Account', '#', 'cardaccount.png', 'CORPORATE', 'ACT', 'MAIN_MENU', '1', 3),
(15, 0, 'Card To Account Holder', '#', 'cardinventory.png', 'CORPORATE', 'ACT', 'MAIN_MENU', '1', 4),
(16, 0, 'Restrictions', '#', 'Restrictions.png', 'CORPORATE', 'ACT', 'MAIN_MENU', '1', 5),
(17, 0, 'Reports', '#', 'report.png', 'CORPORATE', 'ACT', 'MAIN_MENU', '1', 6),
(18, 1, 'Home', 'home', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 0),
(19, 1, 'Products', 'product', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 1),
(20, 2, 'Corporates', 'aggrigatorcorporate', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 1),
(21, 2, 'Cardholder', 'aggrigatorclientcards', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 2),
(22, 2, 'Dealer', 'aggrigatordealer', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 3),
(23, 2, 'Government', 'aggrigatordistributor', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 4),
(24, 2, 'Non Government Organizations', 'aggrigatorngo', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 5),
(25, 3, 'Advance Applicants', 'gncloan', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 1),
(26, 3, 'New Applications', 'gncloan?mode=search', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 2),
(27, 3, 'Reports', 'gncloan?mode=reports', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 3),
(28, 4, 'Admin Settlements', 'adminsettlementreports', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 0),
(29, 4, 'Cards Issued', 'nfccard', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 1),
(30, 4, 'Card Payments', 'nfcpaymenttransaction', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 2),
(31, 4, 'Card Top-Ups', 'dealercarddeposit', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 3),
(32, 4, 'Card Stock', 'nfccardstock', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 4),
(33, 4, 'Client Deposits', 'clientdeposit', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 5),
(34, 4, 'Dealer Deposits', 'dealerdeposit', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 6),
(35, 4, 'Dealer Payments', 'nfcsettlement', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 7),
(36, 4, 'Email Logs', 'emaillogs', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 8),
(37, 4, 'Account Balances And Statistics', 'accountandstatistics', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 9),
(38, 4, 'Discount Reports', 'discountreport', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 10),
(39, 4, 'Global Settlements', 'nfctransactionconsolidatedreports', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 11),
(40, 4, 'Loyalty Point Report', 'loyaltyconfiguration?mode=loyalty-point-report', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '3', 12),
(41, 4, 'Discount', 'promotionalreports', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '3', 13),
(42, 4, 'Reversal Purchase Transaction', 'nfcpaymenttransaction?mode=card-reversal-reports', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '3', 14),
(43, 4, 'Rebate Reports', 'rebatereport', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '3', 15),
(44, 4, 'SMS Logs', 'smslogs', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '3', 16),
(45, 5, 'Deposits & Withdrawals', 'account?mode=serarch-client', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 0),
(46, 5, 'Deposit Account status', 'account?mode=deposit-account-request', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 1),
(47, 5, 'Withdrawal Account status', 'account?mode=withdraw-account-request', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 2),
(48, 6, 'Admin Fees', 'adminfees', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 0),
(49, 6, 'Auto SMS', 'smsconfiguration', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 1),
(50, 6, 'Cardholder Class of Service', 'cardholdercos', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 2),
(51, 6, 'Client Class of Service', 'clientcos', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 3),
(52, 6, 'Communication', 'communication', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 4),
(53, 6, 'Loan And Fees Charges', 'gncloan?mode=gnc-configuration', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 5),
(54, 6, 'Loyalty scheme', 'loyaltyconfiguration', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 6),
(55, 6, 'Product Pricing', 'productpricing', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 7),
(56, 6, 'Promotional Discount', 'promotionaldiscount', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 8),
(57, 6, 'Configure Settlement', 'settlementtime', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 9),
(58, 6, 'System Management', 'user', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 10),
(59, 6, 'Stationary', 'stationery', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 11),
(60, 6, 'Stations', 'station', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 12),
(61, 6, 'User Permission', 'userpermission', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 13),
(62, 7, 'Home', 'home', '#', 'DEALER', 'ACT', 'SUB_MENU', '1', 0),
(63, 7, 'Products', 'product', '#', 'DEALER', 'ACT', 'SUB_MENU', '1', 1),
(64, 8, 'Forecourt Attendant', 'agent', '#', 'DEALER', 'ACT', 'SUB_MENU', '1', 1),
(65, 9, 'Cardholder', 'client', '#', 'DEALER', 'ACT', 'SUB_MENU', '1', 1),
(66, 10, 'POS Device', 'terminallist', '#', 'DEALER', 'ACT', 'SUB_MENU', '1', 1),
(67, 11, 'Card Payments', 'nfcpaymenttransaction', '#', 'DEALER', 'ACT', 'SUB_MENU', '1', 0),
(68, 11, 'Card Issued', 'nfccard', '#', 'DEALER', 'ACT', 'SUB_MENU', '1', 1),
(69, 11, 'Dealer Activity', 'nfcdepositlog', '#', 'DEALER', 'ACT', 'SUB_MENU', '1', 2),
(70, 11, 'My Deposite Log', 'depositlog?mode=mydepositlog', '#', 'DEALER', 'ACT', 'SUB_MENU', '1', 3),
(71, 11, 'Discount', 'promotionalreports', '#', 'DEALER', 'ACT', 'SUB_MENU', '1', 4),
(72, 11, 'Policy', 'madisonpolicy', '#', 'DEALER', 'ACT', 'SUB_MENU', '2', 5),
(73, 11, 'REDEEM LOYALTY POINT\r\n', 'loyaltyreports?mode=redeem-point', '#', 'DEALER', 'ACT', 'SUB_MENU', '2', 6),
(74, 11, 'LOYALTY POINT', 'loyaltyreports', '#', 'DEALER', 'ACT', 'SUB_MENU', '2', 7),
(75, 11, 'REVERSAL PURCHASE TRANSACTION', 'nfcpaymenttransaction?mode=card-reversal-reports', '#', 'DEALER', 'ACT', 'SUB_MENU', '2', 8),
(76, 6, 'Banks', 'bank', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '1', 2),
(77, 6, 'OFFLINE CARDS', 'offlinecardconfiguration', '#', 'AGGREGATOR', 'ACT', 'SUB_MENU', '2', 15),
(78, 12, 'Home', 'home', '#', 'CORPORATE', 'ACT', 'SUB_MENU', '1', 0),
(79, 12, 'Product', 'product', '#', 'CORPORATE', 'ACT', 'SUB_MENU', '1', 1),
(80, 13, 'Forecourt Attendant', 'agent', '#', 'CORPORATE', 'ACT', 'SUB_MENU', '1', 0),
(81, 14, 'Card Account', 'client', '#', 'CORPORATE', 'ACT', 'SUB_MENU', '1', 0),
(82, 15, 'Card To Account Holder', 'suppliedcard', '#', 'CORPORATE', 'ACT', 'SUB_MENU', '1', 0),
(83, 16, 'Vehicles', 'clientvehicle', '#', 'CORPORATE', 'ACT', 'SUB_MENU', '1', 1),
(84, 16, 'Drivers', 'clientdriver', '#', 'CORPORATE', 'ACT', 'SUB_MENU', '1', 0),
(85, 17, 'Card Activity', 'cardissued', '#', 'CORPORATE', 'ACT', 'SUB_MENU', '1', 1),
(86, 17, 'Account Activity', 'accountactivity', '#', 'CORPORATE', 'ACT', 'SUB_MENU', '1', 0),
(87, 17, 'Loyalty Point', 'loyaltyreports', '#', 'CORPORATE', 'ACT', 'SUB_MENU', '1', 3),
(88, 17, 'Discount', 'promotionalreports', '#', 'CORPORATE', 'ACT', 'SUB_MENU', '1', 2),
(89, 17, 'REDEEM LOYALTY POINT', 'loyaltyreports?mode=redeem-point', '#', 'CORPORATE', 'ACT', 'SUB_MENU', '1', 4),
(90, 0, 'Home', '#', 'home.png', 'NGO', 'ACT', 'MAIN_MENU', '1', 1),
(91, 0, 'Forecourt Attendant', '#', 'emp.png', 'NGO', 'ACT', 'MAIN_MENU', '1', 2),
(92, 0, 'Card Account', '#', 'cardaccount.png', 'NGO', 'ACT', 'MAIN_MENU', '1', 3),
(93, 0, 'Card To Account Holder', '#', 'cardinventory.png', 'NGO', 'ACT', 'MAIN_MENU', '1', 4),
(94, 0, 'Restrictions', '#', 'Restrictions.png', 'NGO', 'ACT', 'MAIN_MENU', '1', 5),
(95, 0, 'Reports', '#', 'report.png', 'NGO', 'ACT', 'MAIN_MENU', '1', 6),
(96, 0, 'Home', '#', 'home.png', 'GOVERNMENT', 'ACT', 'MAIN_MENU', '1', 1),
(97, 0, 'Forecourt Attendant', '#', 'emp.png', 'GOVERNMENT', 'ACT', 'MAIN_MENU', '1', 2),
(98, 0, 'Card Account', '#', 'cardaccount.png', 'GOVERNMENT', 'ACT', 'MAIN_MENU', '1', 3),
(99, 0, 'Card To Account Holder', '#', 'cardinventory.png', 'GOVERNMENT', 'ACT', 'MAIN_MENU', '1', 4),
(100, 0, 'Restrictions', '#', 'Restrictions.png', 'GOVERNMENT', 'ACT', 'MAIN_MENU', '1', 5),
(101, 0, 'Reports', '#', 'report.png', 'GOVERNMENT', 'ACT', 'MAIN_MENU', '1', 6),
(102, 90, 'Home', 'home', '#', 'NGO', 'ACT', 'SUB_MENU', '1', 0),
(103, 90, 'Product', 'product', '#', 'NGO', 'ACT', 'SUB_MENU', '1', 1),
(104, 91, 'Forecourt Attendant', 'agent', '#', 'NGO', 'ACT', 'SUB_MENU', '1', 0),
(105, 92, 'Card Account', 'client', '#', 'NGO', 'ACT', 'SUB_MENU', '1', 0),
(106, 93, 'Card To Account Holder', 'suppliedcard', '#', 'NGO', 'ACT', 'SUB_MENU', '1', 0),
(107, 94, 'Vehicles', 'clientvehicle', '#', 'NGO', 'ACT', 'SUB_MENU', '1', 1),
(108, 94, 'Drivers', 'clientdriver', '#', 'NGO', 'ACT', 'SUB_MENU', '1', 0),
(109, 95, 'Card Activity', 'cardissued', '#', 'NGO', 'ACT', 'SUB_MENU', '1', 1),
(110, 95, 'Account Activity', 'accountactivity', '#', 'NGO', 'ACT', 'SUB_MENU', '1', 0),
(111, 95, 'Loyalty Point', 'loyaltyreports', '#', 'NGO', 'ACT', 'SUB_MENU', '1', 3),
(112, 95, 'Discount', 'promotionalreports', '#', 'NGO', 'ACT', 'SUB_MENU', '1', 2),
(113, 95, 'REDEEM LOYALTY POINT', 'loyaltyreports?mode=redeem-point', '#', 'NGO', 'ACT', 'SUB_MENU', '1', 4),
(114, 96, 'Home', 'home', '#', 'GOVERNMENT', 'ACT', 'SUB_MENU', '1', 0),
(115, 96, 'Product', 'product', '#', 'GOVERNMENT', 'ACT', 'SUB_MENU', '1', 1),
(116, 97, 'Forecourt Attendant', 'agent', '#', 'GOVERNMENT', 'ACT', 'SUB_MENU', '1', 0),
(117, 98, 'Card Account', 'client', '#', 'GOVERNMENT', 'ACT', 'SUB_MENU', '1', 0),
(118, 99, 'Card To Account Holder', 'suppliedcard', '#', 'GOVERNMENT', 'ACT', 'SUB_MENU', '1', 0),
(119, 100, 'Vehicles', 'clientvehicle', '#', 'GOVERNMENT', 'ACT', 'SUB_MENU', '1', 1),
(120, 100, 'Drivers', 'clientdriver', '#', 'GOVERNMENT', 'ACT', 'SUB_MENU', '1', 0),
(121, 101, 'Card Activity', 'cardissued', '#', 'GOVERNMENT', 'ACT', 'SUB_MENU', '1', 1),
(122, 101, 'Account Activity', 'accountactivity', '#', 'GOVERNMENT', 'ACT', 'SUB_MENU', '1', 0),
(123, 101, 'Loyalty Point', 'loyaltyreports', '#', 'GOVERNMENT', 'ACT', 'SUB_MENU', '1', 3),
(124, 101, 'Discount', 'promotionalreports', '#', 'GOVERNMENT', 'ACT', 'SUB_MENU', '1', 2),
(125, 101, 'REDEEM LOYALTY POINT', 'loyaltyreports?mode=redeem-point', '#', 'GOVERNMENT', 'ACT', 'SUB_MENU', '1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merchant`
--

CREATE TABLE `tbl_merchant` (
  `merchant_id` int(11) NOT NULL,
  `merchant_product_id` int(11) DEFAULT NULL,
  `merchant_service` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_contact_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_telephone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '1' COMMENT '''0''=>''Inactive'', ''1''=>''Active''',
  `created_on` datetime DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `merchant_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mpos_update`
--

CREATE TABLE `tbl_mpos_update` (
  `mpos_id` int(11) NOT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `app_type` varchar(255) DEFAULT NULL,
  `current_version` varchar(255) DEFAULT NULL,
  `available_version` varchar(255) DEFAULT NULL,
  `status` enum('ACT','INACT') NOT NULL DEFAULT 'INACT',
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nfc_deposit_log`
--

CREATE TABLE `tbl_nfc_deposit_log` (
  `nfc_deposit_log_id` int(11) NOT NULL,
  `idt_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `fees` double(10,2) NOT NULL,
  `opening_balance` double(10,2) NOT NULL,
  `closing_balance` double(10,2) NOT NULL,
  `txn_type` enum('REVARSAL','TRANSACTION','DEPOSIT','WITHDRAW','TRANSFER') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `txn_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `log_type` enum('CREDIT','DEBIT') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `source_type` enum('MPOS','WEB','') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_by_idt_id` int(11) NOT NULL,
  `log_reference` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `source_table` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `agt_id` int(11) DEFAULT '0',
  `ter_id` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nfc_payment_type`
--

CREATE TABLE `tbl_nfc_payment_type` (
  `nfc_payment_type_id` int(11) NOT NULL,
  `aggregator_id` int(11) NOT NULL DEFAULT '245',
  `nfc_payement_type` varchar(765) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `unit_rate` double(10,6) NOT NULL,
  `discount_percent` double DEFAULT NULL,
  `nfc_master_card_id` int(11) NOT NULL DEFAULT '0',
  `status` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nfc_payment_type_card`
--

CREATE TABLE `tbl_nfc_payment_type_card` (
  `nfc_payment_type_card_id` int(11) NOT NULL,
  `nfc_payment_type_id` int(11) NOT NULL,
  `nfc_master_card_id` int(11) NOT NULL,
  `discount_percent` double(10,2) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nfc_settlement`
--

CREATE TABLE `tbl_nfc_settlement` (
  `nfc_settled_id` int(11) NOT NULL,
  `settled_on` date NOT NULL,
  `settled_date_time` datetime DEFAULT NULL,
  `aggregator_id` int(11) NOT NULL,
  `total_settled_amount` double(10,2) NOT NULL,
  `total_settled_records` varchar(10) NOT NULL,
  `total_settled_dealer` varchar(10) NOT NULL,
  `settled_file_name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nfc_settlement_record`
--

CREATE TABLE `tbl_nfc_settlement_record` (
  `settlement_record_id` int(11) NOT NULL,
  `supper_agt_id` int(11) NOT NULL,
  `nfc_settled_id` int(11) NOT NULL,
  `total_txn_amount` double(10,2) NOT NULL,
  `card_topup_amount` double(10,2) NOT NULL,
  `promotional_discount_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `total_settlement_amount` double(10,2) NOT NULL,
  `nfc_deposit_account` double(10,2) NOT NULL DEFAULT '0.00',
  `total_txn_records` varchar(10) NOT NULL,
  `deposit_log_id` int(11) NOT NULL,
  `settlement_ref_number` varchar(20) NOT NULL,
  `total_litre` varchar(20) NOT NULL DEFAULT '0',
  `station_name` varchar(256) DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL,
  `bank_account` varchar(256) NOT NULL,
  `settlement_info` enum('AUTO','MANUAL') NOT NULL DEFAULT 'AUTO',
  `settlement_mediam` enum('BANK_ACCOUNT','DEPOSIT_WALLET') NOT NULL DEFAULT 'BANK_ACCOUNT'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nfc_settlement_record_temp`
--

CREATE TABLE `tbl_nfc_settlement_record_temp` (
  `settlement_record_id` int(11) NOT NULL,
  `supper_agt_id` int(11) NOT NULL,
  `nfc_settled_id` int(11) NOT NULL,
  `total_txn_amount` double(10,2) NOT NULL,
  `card_topup_amount` double(10,2) NOT NULL,
  `promotional_discount_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `total_settlement_amount` double(10,2) NOT NULL,
  `nfc_deposit_account` double(10,2) NOT NULL DEFAULT '0.00',
  `total_txn_records` varchar(10) NOT NULL,
  `deposit_log_id` int(11) NOT NULL,
  `settlement_ref_number` varchar(20) NOT NULL,
  `total_litre` varchar(20) NOT NULL,
  `station_name` varchar(256) NOT NULL,
  `bank_account` varchar(256) NOT NULL,
  `for_settled_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nfc_transaction`
--

CREATE TABLE `tbl_nfc_transaction` (
  `nfc_txn_id` int(11) NOT NULL,
  `nfc_payment_type_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `fees` double(10,2) NOT NULL,
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `tax_discount` double(10,2) NOT NULL,
  `product_discount` double(10,2) NOT NULL,
  `promotinal_type` varchar(255) DEFAULT NULL,
  `promotinal_value` varchar(255) DEFAULT NULL,
  `promotinal_discount_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `promotional_aggregator_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `promotional_dealer_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `aggregator_value` varchar(255) DEFAULT NULL,
  `dealer_value` varchar(255) DEFAULT NULL,
  `total_amount` double(10,2) NOT NULL,
  `amount_tendered` double(10,2) NOT NULL,
  `product_unit_price` double(10,2) NOT NULL,
  `product_unit_rate` double(10,2) NOT NULL DEFAULT '0.00',
  `payment_ref_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_card_id` int(11) NOT NULL,
  `aggregator_id` int(11) NOT NULL,
  `payment_status` enum('SUCCESS','FAILED','REVERSAL') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `supper_agt_id` int(11) NOT NULL,
  `agt_id` int(11) NOT NULL,
  `ter_id` int(11) NOT NULL,
  `transaction_on` datetime NOT NULL,
  `log_id` int(11) NOT NULL,
  `card_log_id` int(11) NOT NULL,
  `terminal_session_id` int(11) NOT NULL,
  `supper_agt_commission` double(10,2) NOT NULL,
  `agt_commission` double(10,2) NOT NULL,
  `total_profit` double(10,2) NOT NULL,
  `system_profit` double(10,2) NOT NULL,
  `nfc_settled_status` enum('0','1') NOT NULL DEFAULT '0',
  `nfc_settled_id` int(11) NOT NULL DEFAULT '0',
  `settlement_info` enum('AUTO','MANUAL') NOT NULL DEFAULT 'AUTO',
  `driver_d` int(11) DEFAULT '0',
  `vehicle_id` int(11) DEFAULT '0',
  `station_id` int(11) NOT NULL DEFAULT '0',
  `source` enum('USSD','CLIENT_APP','POS_TERMINAL') NOT NULL DEFAULT 'POS_TERMINAL',
  `reversal_on` datetime DEFAULT NULL,
  `milage` varchar(255) DEFAULT NULL,
  `channel` enum('VOUCHER','QR','OFFLINE','NFC') DEFAULT 'NFC'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp`
--

CREATE TABLE `tbl_otp` (
  `otp_id` int(11) NOT NULL,
  `mobile_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `otp_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `otp_status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '0:Unused,1:Used',
  `otp_type` enum('RECEIVE_MONEY','CLIENT_APP_OTP','LOGIN_AUTH') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_otp`
--

INSERT INTO `tbl_otp` (`otp_id`, `mobile_number`, `otp_code`, `otp_status`, `otp_type`, `created_on`) VALUES
(1, '0999299803', '356509', '0', 'CLIENT_APP_OTP', '2021-12-06 07:14:03'),
(2, '0999299803', '113002', '0', 'CLIENT_APP_OTP', '2021-12-06 07:15:33'),
(3, '0999937132', '674624', '1', 'CLIENT_APP_OTP', '2021-12-06 07:16:50'),
(4, '0999299803', '658355', '1', 'CLIENT_APP_OTP', '2021-12-06 07:20:12'),
(5, '0888830063', '281140', '1', 'CLIENT_APP_OTP', '2021-12-08 08:03:42'),
(6, '0999959040', '578270', '1', 'CLIENT_APP_OTP', '2021-12-08 15:07:47'),
(7, '0999957690', '314907', '1', 'CLIENT_APP_OTP', '2021-12-09 15:23:57'),
(8, '0882287182', '061075', '1', 'CLIENT_APP_OTP', '2021-12-09 15:33:40'),
(9, '0888315334', '277365', '1', 'CLIENT_APP_OTP', '2021-12-09 16:08:16'),
(10, '0888829031', '134246', '1', 'CLIENT_APP_OTP', '2021-12-10 07:03:59'),
(11, '0999825733', '192793', '1', 'CLIENT_APP_OTP', '2021-12-10 12:08:17'),
(12, '0888203565', '475334', '1', 'CLIENT_APP_OTP', '2021-12-10 14:39:12'),
(13, '0888202727', '216041', '1', 'CLIENT_APP_OTP', '2021-12-10 16:14:49'),
(14, '0888203565', '914516', '1', 'CLIENT_APP_OTP', '2021-12-12 17:48:03'),
(15, '0888829031', '347182', '1', 'CLIENT_APP_OTP', '2021-12-14 12:55:00'),
(16, '0884426307', '259670', '1', 'CLIENT_APP_OTP', '2021-12-14 12:58:34'),
(17, '0888896486', '808023', '1', 'CLIENT_APP_OTP', '2021-12-14 14:29:22'),
(18, '0885115368', '158608', '1', 'CLIENT_APP_OTP', '2021-12-17 10:47:38'),
(19, '0999956837', '324450', '1', 'CLIENT_APP_OTP', '2021-12-17 11:08:46'),
(20, '0881669135', '284545', '1', 'CLIENT_APP_OTP', '2021-12-17 11:18:48'),
(21, '0999956837', '048653', '1', 'CLIENT_APP_OTP', '2021-12-17 14:56:45'),
(22, '0888315334', '895945', '1', 'CLIENT_APP_OTP', '2021-12-18 10:48:15'),
(23, '0888347380', '934300', '1', 'CLIENT_APP_OTP', '2021-12-19 18:40:19'),
(24, '0999299803', '486890', '1', 'CLIENT_APP_OTP', '2021-12-22 15:17:07'),
(25, '0887354603', '353240', '1', 'CLIENT_APP_OTP', '2021-12-23 05:23:10'),
(26, '0762166185', '311837', '1', 'CLIENT_APP_OTP', '2022-05-03 13:25:59'),
(27, '0762166185', '584848', '1', 'CLIENT_APP_OTP', '2022-05-03 13:27:13'),
(28, '0972533102', '836582', '1', 'LOGIN_AUTH', '2022-05-23 06:25:19'),
(29, '0972533102', '173777', '1', 'LOGIN_AUTH', '2022-05-23 07:47:57'),
(30, '0972533102', '778155', '1', 'LOGIN_AUTH', '2022-05-23 10:21:30'),
(31, '0972533102', '094695', '1', 'LOGIN_AUTH', '2022-05-24 12:54:26'),
(32, '0972533102', '457708', '1', 'LOGIN_AUTH', '2022-05-26 08:25:14'),
(33, '0972533102', '136182', '1', 'LOGIN_AUTH', '2022-05-26 12:44:04'),
(34, '0972533102', '397079', '1', 'LOGIN_AUTH', '2022-05-26 14:22:50'),
(35, '0972533102', '603114', '1', 'LOGIN_AUTH', '2022-05-27 12:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `gateway_country_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_amount` double(10,2) NOT NULL,
  `payment_status` enum('INITIATED','SUCCESS','FAILED','PENDING') COLLATE utf8_unicode_ci NOT NULL,
  `transaction_type` enum('SEND_MONEY','UTILITY') COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `payment_type` enum('CREDITCARD','DEBITCARD','MOBILEMONEY','NETBANKING','PREFUNDEDACCOUNT') COLLATE utf8_unicode_ci NOT NULL,
  `payment_reference_number` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `client_ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `source_media` enum('WEB','MOBILE') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pay_bills_customer`
--

CREATE TABLE `tbl_pay_bills_customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `utility_product_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_assign_cos`
--

CREATE TABLE `tbl_product_assign_cos` (
  `assign_product_cos_id` int(11) NOT NULL,
  `cos_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `type` enum('SUPPER_AGENT','AGENT') COLLATE utf8_unicode_ci DEFAULT NULL,
  `assign_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_code`
--

CREATE TABLE `tbl_product_code` (
  `product_code_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `buy_price` varchar(50) DEFAULT NULL,
  `sell_price` varchar(50) NOT NULL,
  `product_code_status` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0:Available,1:Sold,2:Deleted',
  `serial_number` varchar(255) NOT NULL,
  `expiration_on` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by_idt_id` int(11) NOT NULL,
  `sell_on` datetime DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by_idt_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotional_discount`
--

CREATE TABLE `tbl_promotional_discount` (
  `promotional_discount_id` int(11) NOT NULL,
  `campagin_name` varchar(255) DEFAULT NULL,
  `agg_percent` varchar(255) DEFAULT NULL,
  `dealer_percent` varchar(255) DEFAULT NULL,
  `supper_agent_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `type` enum('PERCENT','FIXED_AMOUNT') NOT NULL DEFAULT 'FIXED_AMOUNT',
  `value` varchar(255) DEFAULT NULL,
  `status` enum('OPEN','EXPIRED') NOT NULL DEFAULT 'OPEN',
  `created_by_idt_id` int(11) NOT NULL DEFAULT '0',
  `updated_by_idt_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotional_discount_assign`
--

CREATE TABLE `tbl_promotional_discount_assign` (
  `supper_agt_id` int(11) NOT NULL,
  `promotional_id` int(11) NOT NULL,
  `type` enum('DEALER','OTHER_CLIENT','CORPORATE','DISTRIBUTOR','RTL','NGO','GOVERNMENT') DEFAULT NULL,
  `user_type` enum('CORPORATE','DISTRIBUTOR','NGO','RTL','DEALER','GOVERNMENT') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_province`
--

CREATE TABLE `tbl_province` (
  `province_id` int(11) NOT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_status` enum('0','1') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_province`
--

INSERT INTO `tbl_province` (`province_id`, `province_name`, `province_code`, `province_status`, `created_on`) VALUES
(1, 'Northern', NULL, '1', '2021-10-29 00:00:00'),
(2, 'Central', NULL, '1', '2021-10-29 00:00:00'),
(3, 'Southern', NULL, '1', '2021-10-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qrcode_session`
--

CREATE TABLE `tbl_qrcode_session` (
  `qrcode_txn_id` int(11) NOT NULL,
  `supper_agt_id` int(11) NOT NULL,
  `agt_id` int(11) NOT NULL,
  `ter_id` int(11) NOT NULL,
  `purchase_amount` double(10,2) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `qrcode_session` varchar(255) NOT NULL,
  `transaction_ref_number` varchar(255) NOT NULL,
  `status` enum('INITIATED','PENDING','FAILED','SUCCESS') NOT NULL DEFAULT 'INITIATED',
  `created_on` datetime NOT NULL,
  `nfc_txn_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sender`
--

CREATE TABLE `tbl_sender` (
  `sender_id` int(11) NOT NULL,
  `sender_mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sender_status` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1:Active,0:Inactive',
  `created_on` datetime NOT NULL,
  `created_by_idt_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_send_money`
--

CREATE TABLE `tbl_send_money` (
  `send_money_id` int(11) NOT NULL,
  `agt_id` int(11) NOT NULL,
  `ter_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL COMMENT 'sender_id=client_id',
  `receiver_id` int(11) NOT NULL COMMENT 'receiver_id=client_id',
  `receiver_first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent_amount` double(10,2) NOT NULL,
  `fees` double(10,2) NOT NULL,
  `total_amount` double(10,2) NOT NULL,
  `transfer_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `transaction_ref_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_mode` enum('CASH','WALLET') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `send_money_status` enum('SUCCESS','FAILED') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `redeem_amount` double(10,2) NOT NULL,
  `redeem_status` enum('PENDING','RECEIVED','PARTIALLY_RECEIVED','REVERSAL') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reversal_fees` double(10,2) DEFAULT NULL,
  `balance_amount` double(10,2) NOT NULL,
  `transaction_on` datetime NOT NULL,
  `supper_agt_commission_sending` double(10,2) NOT NULL,
  `agt_commission_sending` double(10,2) NOT NULL,
  `supper_agt_commission_receiving` double(10,2) NOT NULL,
  `agt_commission_receiving` double(10,2) NOT NULL,
  `customer_commission` double(10,2) NOT NULL,
  `system_commission` double(10,2) NOT NULL,
  `total_commission` double(10,2) NOT NULL,
  `log_id` int(11) NOT NULL,
  `terminal_session_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_send_money_redeem_log`
--

CREATE TABLE `tbl_send_money_redeem_log` (
  `redeem_log_id` int(11) NOT NULL,
  `send_money_id` int(11) NOT NULL,
  `agt_id` int(11) NOT NULL,
  `ter_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `fees` double(10,2) NOT NULL,
  `opening_balance` double(10,2) NOT NULL,
  `closing_balance` double(10,2) NOT NULL,
  `txn_type` enum('REDEEM','REVERSAL') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `source_type` enum('MPOS','WEB','') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `supper_agt_commission` double(10,2) DEFAULT NULL,
  `agt_commission` double(10,2) DEFAULT NULL,
  `customer_commission` double(10,2) DEFAULT NULL,
  `created_by_idt_id` int(11) NOT NULL,
  `log_reference` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `terminal_session_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settlement_time`
--

CREATE TABLE `tbl_settlement_time` (
  `settlement_time_id` int(11) NOT NULL,
  `aggregator_id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `created_by_idt_id` int(11) NOT NULL,
  `updated_by_idt_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `status` enum('ACTIVE','IN_ACTIVE') NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settlement_time`
--

INSERT INTO `tbl_settlement_time` (`settlement_time_id`, `aggregator_id`, `day`, `created_by_idt_id`, `updated_by_idt_id`, `created_on`, `updated_on`, `status`) VALUES
(1, 1, 1, 2, 0, '2022-05-30 11:17:26', NULL, 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms`
--

CREATE TABLE `tbl_sms` (
  `sms_id` int(11) NOT NULL,
  `mobile_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sms_content` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sms_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_status` enum('DELIVERED_TO_GATEWAY','FAILED') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sms_provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sms_sender_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sms_gateway_ref_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `sms_response` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `gnc_loan_id` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_configuration`
--

CREATE TABLE `tbl_sms_configuration` (
  `sms_conf_id` int(11) NOT NULL,
  `cos_id` int(11) NOT NULL,
  `txn_type` varchar(255) NOT NULL,
  `supper_agt_id` int(11) NOT NULL DEFAULT '245',
  `cost_deduction` enum('APPLY','NOT_APPLY') NOT NULL DEFAULT 'NOT_APPLY',
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `user_type` enum('CARDHOLDER','CLIENTS','INTERNAL','NGO','OTHER','CORPORATE') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sms_configuration`
--

INSERT INTO `tbl_sms_configuration` (`sms_conf_id`, `cos_id`, `txn_type`, `supper_agt_id`, `cost_deduction`, `amount`, `user_type`) VALUES
(1, 2, 'DEPOSIT_ACCOUNT', 1, 'NOT_APPLY', 0.00, 'INTERNAL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suplied_card`
--

CREATE TABLE `tbl_suplied_card` (
  `suplied_card_id` int(11) NOT NULL,
  `supper_agt_id` int(11) NOT NULL DEFAULT '0',
  `card_id` int(11) NOT NULL DEFAULT '0',
  `serial_number` varchar(255) DEFAULT NULL,
  `created_by_idt_id` int(11) NOT NULL DEFAULT '0',
  `updated_by_idt_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `status` enum('ACT','INACT') NOT NULL DEFAULT 'ACT'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supper_agent`
--

CREATE TABLE `tbl_supper_agent` (
  `supper_agt_id` int(11) NOT NULL,
  `idt_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `parent_aggregator_id` int(11) NOT NULL DEFAULT '0',
  `province_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `agt_business_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agt_first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `agt_last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `agt_address` tinytext COLLATE utf8_unicode_ci,
  `agt_city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agt_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agt_phone` text COLLATE utf8_unicode_ci,
  `agt_email` text COLLATE utf8_unicode_ci,
  `deposit_account` double(10,2) NOT NULL,
  `nfc_deposit_account` double(10,2) NOT NULL DEFAULT '0.00',
  `commission_account` double(10,2) NOT NULL,
  `agt_cos_id` int(11) NOT NULL,
  `agt_cardholder_cos_id` int(11) DEFAULT '0',
  `agt_first_use` datetime DEFAULT NULL,
  `agt_last_use` datetime DEFAULT NULL,
  `agt_count_use` int(11) DEFAULT NULL,
  `agt_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `agt_type` enum('INTERNAL','EXTERNAL','CORPORATE','NGO','OTHER') COLLATE utf8_unicode_ci NOT NULL,
  `bank_id` int(11) DEFAULT '0',
  `bank_account_number` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_branch_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `bank_branch_city_id` int(11) DEFAULT NULL,
  `station` int(11) NOT NULL DEFAULT '0',
  `register_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `register_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_required` int(11) DEFAULT '0',
  `auto_credit_reference_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_supper_agent`
--

INSERT INTO `tbl_supper_agent` (`supper_agt_id`, `idt_id`, `role_id`, `parent_aggregator_id`, `province_id`, `district_id`, `agt_business_name`, `agt_first_name`, `agt_last_name`, `agt_address`, `agt_city`, `agt_country`, `agt_phone`, `agt_email`, `deposit_account`, `nfc_deposit_account`, `commission_account`, `agt_cos_id`, `agt_cardholder_cos_id`, `agt_first_use`, `agt_last_use`, `agt_count_use`, `agt_code`, `agt_type`, `bank_id`, `bank_account_number`, `bank_branch_code`, `bank_branch_city_id`, `station`, `register_number`, `register_email`, `auth_required`, `auto_credit_reference_number`, `registration_name`, `registration_number`) VALUES
(1, 2, 0, 0, 2, 16, 'NBM', 'NBM', 'NBM', 'Lusaka', 'Lusaka', '', '6554564', '', 0.00, 0.00, 0.00, 0, 0, '2022-05-30 08:07:52', '2022-06-04 10:17:09', 48, '864546', 'EXTERNAL', 10, '', '000', 0, 0, '0999999999', 'nbm@gmail.com', 0, 'NBM0001', 'NBM', 'NBM'),
(2, 3, 0, 0, 1, 17, 'Speedpay', 'Speedpay', 'Speedpay', 'Lusaka', 'Lusaka', '', '4543534543', '', 0.00, 0.00, 0.00, 1, 2, '2022-06-02 18:35:38', '2022-06-04 09:40:44', 22, '921555', 'OTHER', 9, 'eewrer', '18', 1, 1, '8797989789', 'lusaka@gmail.com', 0, 'SPED0001', 'Speedpay', 'Speedpay'),
(3, 4, 0, 0, 2, 4, 'DHL', 'David', 'Banda', 'Villa 48', 'Lusaka', '', '0975950022', 'darlingtonkutenha@speedpayzm.com', 0.00, 0.00, 0.00, 1, 2, '2022-06-04 10:14:42', '2022-06-04 10:18:17', 2, '715101', 'CORPORATE', 7, '00099887643', '16', 1, 0, '0975950022', 'kutenhad@gmail.com', 0, 'DHL0001', 'DHL', 'DHL0001');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supper_agent_aggregator`
--

CREATE TABLE `tbl_supper_agent_aggregator` (
  `sup_agt_agrt_id` int(11) NOT NULL,
  `supper_agt_id` int(11) NOT NULL,
  `aggregator_id` int(11) NOT NULL,
  `assigned_cards` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_supper_agent_aggregator`
--

INSERT INTO `tbl_supper_agent_aggregator` (`sup_agt_agrt_id`, `supper_agt_id`, `aggregator_id`, `assigned_cards`, `created_on`) VALUES
(1, 2, 1, NULL, '2022-06-02 18:37:36'),
(2, 3, 1, NULL, '2022-06-04 10:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supper_agent_card`
--

CREATE TABLE `tbl_supper_agent_card` (
  `agt_card_id` int(11) NOT NULL,
  `supper_agt_id` int(11) NOT NULL,
  `master_card_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_system_account`
--

CREATE TABLE `tbl_system_account` (
  `system_account_id` int(11) NOT NULL,
  `deposit_account` double(10,2) NOT NULL,
  `commission_account` double(10,2) NOT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_system_account`
--

INSERT INTO `tbl_system_account` (`system_account_id`, `deposit_account`, `commission_account`, `updated_on`) VALUES
(1, 0.00, 24.00, '2022-05-26 11:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_terminal`
--

CREATE TABLE `tbl_terminal` (
  `ter_id` int(11) NOT NULL,
  `ter_alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ter_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `terminal_type` enum('MSISDN','IMEI') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'IMEI',
  `parent_ter_id` int(11) NOT NULL DEFAULT '0',
  `ter_pin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1234',
  `supper_agt_id` int(11) NOT NULL,
  `ter_status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0:Active, 1:Closed',
  `ter_first_use` datetime NOT NULL,
  `ter_last_use` datetime DEFAULT NULL,
  `ter_count_use` int(11) DEFAULT NULL,
  `ter_session_key` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ter_agent_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ter_agt_id` int(11) DEFAULT NULL,
  `ter_app_version` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ter_created_by_idt_id` int(11) DEFAULT NULL,
  `ter_created_on` datetime DEFAULT NULL,
  `ter_session_status` enum('1','0') COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '1:Started,0:End',
  `ter_session_start_on` datetime DEFAULT NULL,
  `ter_session_start_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_status` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '1' COMMENT '0:Delete'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_terminal_session`
--

CREATE TABLE `tbl_terminal_session` (
  `terminal_session_id` int(11) NOT NULL,
  `ter_id` int(11) NOT NULL,
  `session_started_on` datetime NOT NULL,
  `session_finished_on` datetime DEFAULT NULL,
  `ter_session_start_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token`
--

CREATE TABLE `tbl_token` (
  `token_id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `status` enum('ACTIVE','IN_ACTIVE') NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_txn_notification`
--

CREATE TABLE `tbl_txn_notification` (
  `notification_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `request_type` enum('DEPOSIT','WITHDRAW') NOT NULL DEFAULT 'DEPOSIT',
  `content` text NOT NULL,
  `status` enum('ACT','INACT') NOT NULL DEFAULT 'ACT',
  `created_by_idt_id` int(11) NOT NULL,
  `updated_by_idt_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `source_table` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `idt_id` int(11) NOT NULL,
  `adm_first_name` varchar(100) NOT NULL,
  `adm_last_name` varchar(100) NOT NULL,
  `adm_address` varchar(255) DEFAULT NULL,
  `adm_city` varchar(100) DEFAULT NULL,
  `adm_country` varchar(100) DEFAULT NULL,
  `adm_phone` varchar(20) DEFAULT NULL,
  `adm_email` varchar(50) DEFAULT NULL,
  `adm_type` enum('SUPER_ADMIN','MAKER','CHECKER') NOT NULL,
  `adm_cos_id` int(11) DEFAULT NULL,
  `adm_first_use` datetime DEFAULT NULL,
  `adm_last_use` datetime DEFAULT NULL,
  `adm_count_use` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `role_id`, `idt_id`, `adm_first_name`, `adm_last_name`, `adm_address`, `adm_city`, `adm_country`, `adm_phone`, `adm_email`, `adm_type`, `adm_cos_id`, `adm_first_use`, `adm_last_use`, `adm_count_use`) VALUES
(1, 0, 1, 'Super Admin', 'Admin', 'Zambia', 'Lusaka', 'Zambia', '099999999999', 'admin@gmail.com', 'SUPER_ADMIN', NULL, NULL, '2022-06-04 10:05:31', 22);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_access`
--

CREATE TABLE `tbl_user_access` (
  `user_access_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_module_id` int(11) NOT NULL,
  `status` enum('ACTIVE','IN_ACTIVE') NOT NULL,
  `type` enum('AGGREGATOR_SERVICE','ALL') NOT NULL DEFAULT 'ALL'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_access`
--

INSERT INTO `tbl_user_access` (`user_access_id`, `user_type_id`, `user_module_id`, `status`, `type`) VALUES
(1, 1, 259, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(2, 1, 181, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(3, 1, 180, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(4, 1, 179, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(5, 1, 178, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(6, 1, 177, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(7, 1, 176, 'IN_ACTIVE', 'AGGREGATOR_SERVICE'),
(8, 1, 175, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(9, 1, 174, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(10, 1, 173, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(11, 1, 172, 'IN_ACTIVE', 'AGGREGATOR_SERVICE'),
(12, 1, 171, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(13, 1, 170, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(14, 1, 169, 'IN_ACTIVE', 'AGGREGATOR_SERVICE'),
(15, 1, 168, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(16, 1, 167, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(17, 1, 166, 'ACTIVE', 'AGGREGATOR_SERVICE'),
(18, 1, 165, 'IN_ACTIVE', 'AGGREGATOR_SERVICE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_modules`
--

CREATE TABLE `tbl_user_modules` (
  `user_module_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `module_name` varchar(255) NOT NULL,
  `modue_type` varchar(255) NOT NULL,
  `user_type` enum('ADMIN','AGGREGATOR','ADMIN_CUM_AGGREGATOR') NOT NULL DEFAULT 'ADMIN',
  `url` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `back_action` varchar(255) DEFAULT NULL,
  `menu_type` enum('MAIN_MENU','SUB_MENU','HEADER_MENU') DEFAULT 'SUB_MENU',
  `order_by` int(11) NOT NULL DEFAULT '0',
  `aggregator_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_modules`
--

INSERT INTO `tbl_user_modules` (`user_module_id`, `parent_id`, `module_name`, `modue_type`, `user_type`, `url`, `mode`, `back_action`, `menu_type`, `order_by`, `aggregator_id`) VALUES
(1, 0, 'User', 'USER', 'ADMIN', '', '', NULL, 'HEADER_MENU', 1, 0),
(2, 0, 'EMPLOYEE', 'EMPLOYEE', 'ADMIN', '', '', NULL, 'HEADER_MENU', 2, 0),
(3, 0, 'CLIENT', 'CLIENT', 'ADMIN', '', '', NULL, 'HEADER_MENU', 3, 0),
(4, 0, 'DEVICE', 'DEVICE', 'ADMIN', '', '', NULL, 'HEADER_MENU', 4, 0),
(5, 0, 'MERCHANT', 'MERCHANT', 'ADMIN', '', '', NULL, 'HEADER_MENU', 5, 0),
(6, 0, 'MANAGEMENT SERVICE', 'MANAGEMENT_SERVICE', 'ADMIN', '', '', NULL, 'HEADER_MENU', 6, 0),
(7, 218, 'VIEW USER', 'VIEW_USER', 'ADMIN', 'supperagent', '', 'home', 'SUB_MENU', 0, 0),
(8, 218, 'CREATE USER', 'CREATE_USER', 'ADMIN', 'supperagent', 'create', 'supperagent', 'SUB_MENU', 0, 0),
(9, 218, 'UPDATE USER', 'UPDATE_USER', 'ADMIN', 'supperagent', 'update', 'supperagent', 'SUB_MENU', 0, 0),
(10, 226, 'ASSIGN CARD TO USER', 'ASSIGN_CARD_USER', 'ADMIN', 'agentassigncard', 'admassignacard', 'supperagent', 'SUB_MENU', 0, 0),
(11, 219, 'ACCESS AGENT PANEL TO USER', 'ACCESS_AGENT_PANEL_USER', 'ADMIN', 'agentlogibyadmin', 'login', 'supperagent', 'SUB_MENU', 0, 0),
(12, 220, 'DEPOSIT ACCOUNT TO USER', 'DEPOSIT_ACCOUNT_USER', 'ADMIN', 'depositaccount', 'DEPOSIT', 'supperagent', 'SUB_MENU', 0, 0),
(13, 221, 'WITHDRAW ACCOUNT TO USER', 'WITHDRAW_ACCOUNT_USER', 'ADMIN', 'withdrawaccount', 'withdraw', 'supperagent', 'SUB_MENU', 0, 0),
(14, 222, 'TRANSFER COMMISSION TO USER', 'TRANSFER_COMMISSION_USER', 'ADMIN', 'transfercommission', '', 'supperagent', 'SUB_MENU', 0, 0),
(15, 223, 'EMPLOYEE UNDER USER', 'EMPLOYEE_UNDER_USER', 'ADMIN', 'agentemployee', '', 'supperagent', 'SUB_MENU', 0, 0),
(16, 223, 'CREATE EMPLOYEE UNDER USER', 'CREATE_EMPLOYEE_UNDER_USER', 'ADMIN', 'agentemployee', 'create', 'agentemployee', 'SUB_MENU', 0, 0),
(17, 223, 'UPDATE EMPLOYEE UNDER USER', 'UPDATE_EMPLOYEE_UNDER_USER', 'ADMIN', 'agentemployee', 'update', 'agentemployee', 'SUB_MENU', 0, 0),
(18, 224, 'VIEW DEVICE UNDER USER', 'VIEW_DEVICE_UNDER_USER', 'ADMIN', 'supperagentterminal', 'agentdevice', 'supperagent', 'SUB_MENU', 0, 0),
(19, 224, 'CREATE DEVICE UNDER USER', 'CREATE_DEVICE_UNDER_USER', 'ADMIN', 'supperagentterminal', 'create', 'supperagentterminal', 'SUB_MENU', 0, 0),
(20, 224, 'ASSIGNED EMPLOYEE TO DEVICE UNDER USER', 'ASSIGNED_EMPLOYEE_TO_DEVICE_UNDER_USER', 'ADMIN', 'supperagentterminal', 'assigned-employee', 'supperagentterminal', 'SUB_MENU', 0, 0),
(21, 2, 'VIEW EMPLOYEE', 'VIEW_EMPLOYEE', 'ADMIN', 'agent', '', NULL, 'SUB_MENU', 0, 0),
(22, 3, 'VIEW CLIENT', 'VIEW_CLIENT', 'ADMIN', 'client', '', NULL, 'SUB_MENU', 0, 0),
(23, 3, 'UPDATE CLIENT', 'UPDATE_CLIENT', 'ADMIN', 'client', 'update', 'client', 'SUB_MENU', 0, 0),
(24, 3, 'RESET CLIENT PIN', 'RESET_CLIENT_PIN', 'ADMIN', 'client', 'reset-pin', 'client', 'SUB_MENU', 0, 0),
(25, 4, 'VIEW DEVICE', 'VIEW_DEVICE', 'ADMIN', 'terminallist', '', NULL, 'SUB_MENU', 0, 0),
(26, 4, 'UPDATE DEVICE', 'UPDATE_DEVICE', 'ADMIN', 'supperagentterminal', 'update', 'terminallist', 'SUB_MENU', 0, 0),
(27, 4, 'DELETE DEVICE', 'DELETE_DEVICE', 'ADMIN', 'terminallist', 'delete', 'terminallist', 'SUB_MENU', 0, 0),
(28, 5, 'VIEW MERCHANT', 'VIEW_MERCHANT', 'ADMIN', 'merchant', '', NULL, 'SUB_MENU', 0, 0),
(29, 5, 'UPDATE MERCHANT', 'UPDATE_MERCHANT', 'ADMIN', 'merchant', 'update', 'merchant', 'SUB_MENU', 0, 0),
(30, 5, 'VIEW MERCHANT TRANSACTION', 'VIEW_MERCHANT_TRANSACTION', 'ADMIN', 'merchant', 'view-transaction', 'merchant', 'SUB_MENU', 0, 0),
(31, 0, 'REPORTS', 'REPORTS', 'ADMIN', 'depositlog', 'mode', NULL, 'HEADER_MENU', 7, 0),
(32, 227, 'AGENT DEPOSITE', 'AGENT_DEPOSITE', 'ADMIN', 'depositlog', 'supperagentlog', NULL, 'SUB_MENU', 0, 0),
(33, 228, 'AGENT COMMISSION', 'AGENT_COMMISSION', 'ADMIN', 'depositlog', 'supperagentcommissionlog', NULL, 'SUB_MENU', 0, 0),
(34, 229, 'E DEPOSIT', 'E_DEPOSIT', 'ADMIN', 'depositlog', 'agentlog', NULL, 'SUB_MENU', 0, 0),
(35, 230, 'ADMIN FEES', 'ADMIN_FEES', 'ADMIN', 'depositlog', 'speedpaycommissionlog', NULL, 'SUB_MENU', 0, 0),
(36, 231, 'VOUHER TALKTIME', 'VOUHER_TALKTIME', 'ADMIN', 'talktimetransactionlog', 'voucherlog', NULL, 'SUB_MENU', 0, 0),
(37, 232, 'DIRECT TALKTIME', 'DIRECT_TALKTIME', 'ADMIN', 'talktimetransactionlog', 'directtalktimelog', NULL, 'SUB_MENU', 0, 0),
(38, 233, 'BILLS', 'BILLS', 'ADMIN', 'paybilltransaction', '', NULL, 'SUB_MENU', 0, 0),
(39, 234, 'CASH IN', 'CASH_IN', 'ADMIN', 'cash', 'cashin', NULL, 'SUB_MENU', 0, 0),
(40, 236, 'CARD PAYMENTS', 'CARDS_PAYMENTS', 'ADMIN', 'nfcpaymenttransaction', '', NULL, 'SUB_MENU', 0, 0),
(41, 237, 'SEND MONEY', 'SEND_MONEY', 'ADMIN', 'sendmoneytransaction', '', NULL, 'SUB_MENU', 0, 0),
(42, 238, 'RECEIVE MONEY', 'RECEIVE_MONEY', 'ADMIN', 'receivemoneytransaction', '', NULL, 'SUB_MENU', 0, 0),
(43, 239, 'CARD ISSUEDS', 'CARD_ISSUEDS', 'ADMIN', 'nfccard', '', NULL, 'SUB_MENU', 0, 0),
(44, 240, 'GLOBAL SETTLEMENTS', 'GLOBAL_SETTLEMENT', 'ADMIN', 'nfctransactionconsolidatedreports', '', NULL, 'SUB_MENU', 0, 0),
(45, 241, 'DEALER PAYMENT', 'DEALER_PAYMENT', 'ADMIN', 'nfcsettlement', '', 'reports', 'SUB_MENU', 0, 0),
(46, 241, 'VIEW DEALER PAYMENT RECORDS', 'CREATE_DEALER_PAYMENT', 'ADMIN', 'nfcsettlement', 'view-settlement', 'nfcsettlement', 'SUB_MENU', 2, 0),
(47, 242, 'AGENT NFC PURCHASE DEPOSIT', 'AGENT_NFC_PURCHASE_DEPOSIT', 'ADMIN', 'nfcdepositlog', '', NULL, 'SUB_MENU', 0, 0),
(48, 204, 'SYSTEM USER', 'SYSTEM_USER', 'ADMIN', 'user', '', 'services', 'SUB_MENU', 0, 0),
(49, 204, 'CREATE SYSTEM USER', 'CREATE_SYSTEM_USER', 'ADMIN', 'user', 'create', 'user', 'SUB_MENU', 0, 0),
(50, 204, 'UPDATE SYSTEM USER', 'UPDATE_SYSTEM_USER', 'ADMIN', 'user', 'update', 'user', 'SUB_MENU', 0, 0),
(51, 205, 'ACCOUNT MANAGER', 'ACCOUNT_MANAGER', 'ADMIN', 'accountmanager', '', 'services', 'SUB_MENU', 0, 0),
(52, 205, 'CREATE ACCOUNT MANAGER', 'CREATE_ACCOUNT_MANAGER', 'ADMIN', 'accountmanager', 'create', 'accountmanager', 'SUB_MENU', 0, 0),
(53, 205, 'UPDATE ACCOUNT MANAGER', 'UPDATE_ACCOUNT_MANAGER', 'ADMIN', 'accountmanager', 'update', 'accountmanager', 'SUB_MENU', 0, 0),
(57, 205, 'ASSIGN AGENT TO ACCOUNT MANAGER', 'ASSIGN_AGENT_TO_ACCOUNT_MANAGER', 'ADMIN', 'assignsuperagenttoaccountmanager', 'assign-agent', 'accountmanager', 'SUB_MENU', 0, 0),
(58, 206, 'PRODUCT SERVICE', 'PRODUCT_SERVICE_UTILITY', 'ADMIN', 'utility', '', 'services', 'SUB_MENU', 0, 0),
(59, 206, 'CREATE UTILITY', 'CREATE_UTILITY', 'ADMIN', 'utility', 'create-utility-type', 'utility', 'SUB_MENU', 0, 0),
(60, 206, 'UPDATE UTILITY', 'UPDATE_UTILITY', 'ADMIN', 'utility', 'update-utility-type', 'utility', 'SUB_MENU', 0, 0),
(61, 206, 'UTILITY PRODUCT', 'UTILITY_PRODUCT', 'ADMIN', 'utility', 'utility-products', 'utility', 'SUB_MENU', 0, 0),
(62, 206, 'CREATE UTILITY PRODUCT', 'CREATE_UTILITY_PRODUCT', 'ADMIN', 'utility', 'create-utility-product', 'utility?mode=utility-products', 'SUB_MENU', 0, 0),
(63, 206, 'UPDATE UTILITY PRODUCT', 'UPDATE_UTILITY_PRODUCT', 'ADMIN', 'utility', 'update-utility-product', 'utility?mode=utility-products', 'SUB_MENU', 0, 0),
(64, 207, 'CARDHOLDER COS', 'AGENT_FEES_COS', 'ADMIN', 'supperagentsendmoneycos', '', 'services', 'SUB_MENU', 0, 0),
(65, 208, 'CLIENT COS', 'CLIENT_COS', 'ADMIN', 'clientcos', '', 'services', 'SUB_MENU', 0, 0),
(66, 209, 'SMS LOG', 'SMS_LOGS', 'ADMIN', 'smslogs', '', 'services', 'SUB_MENU', 0, 0),
(67, 210, 'ZAMTEL BALANCE', 'ZAMTEL', 'ADMIN', 'zamtelbalance', '', 'services', 'SUB_MENU', 0, 0),
(68, 211, 'ZESCO BALANCE', 'ZESCO', 'ADMIN', 'zescobalance', '', 'services', 'SUB_MENU', 0, 0),
(69, 212, 'CARD SERVICE', 'CARD_SERVICE', 'ADMIN', 'nfcproduct', '', 'services', 'SUB_MENU', 0, 0),
(70, 212, 'CREATE CARD SERVICE', 'CREATE_CARD_SERVICE', 'ADMIN', 'nfcproduct', 'create-nfc-product', 'nfcproduct', 'SUB_MENU', 0, 0),
(71, 212, 'UPDATE CARD SERVICE', 'UPDAE_CARD_SERVICE', 'ADMIN', 'nfcproduct', 'update-nfc-product', 'nfcproduct', 'SUB_MENU', 0, 0),
(72, 212, 'VIEW CARD PRODUCT MAPPING', 'VIEW_CARD_PRODUCT_MAPPING', 'ADMIN', 'nfcproduct', 'mapping-card-list', 'nfcproduct?mode=update-nfc-product', 'SUB_MENU', 0, 0),
(73, 212, 'CREATE / UPDATE CARD PRODUCT MAPPING', 'CREATE_UPDATE_CARD_PRODUCT_MAPPING', 'ADMIN', 'nfcproduct', 'mapping-card', 'nfcproduct?mode=update-nfc-product', 'SUB_MENU', 0, 0),
(74, 6, 'CARD SECURITY', 'CARD_SECURITY', 'ADMIN', '', '', '', 'MAIN_MENU', 0, 0),
(75, 214, 'CARD STOCK', 'CARD_STOCK', 'ADMIN', 'nfccardstock', '', 'services', 'SUB_MENU', 0, 0),
(76, 0, 'HOME', 'HOME', 'ADMIN', '', '', NULL, 'HEADER_MENU', 0, 0),
(77, 76, 'VIEW HOME', 'VIEW_HOME', 'ADMIN', 'home', '', NULL, 'SUB_MENU', 0, 0),
(78, 244, 'VIEW REPORTS', 'VIEW_REPORTS_MODULE', 'ADMIN', 'reports', '', NULL, 'SUB_MENU', 0, 0),
(79, 217, 'VIEW SERVICE MANAGEMENT', 'VIEW_SERVICE_MANAGEMENT', 'ADMIN', 'services', '', NULL, 'SUB_MENU', 0, 0),
(80, 0, 'HOME', 'HOME', 'AGGREGATOR', '', '', NULL, 'HEADER_MENU', 0, 0),
(81, 80, 'VIEW HOME', 'VIEW_HOME', 'AGGREGATOR', 'home', '', NULL, 'SUB_MENU', 0, 0),
(82, 0, 'PRODUCTS', 'PRODUCTS', 'AGGREGATOR', '', '', NULL, 'HEADER_MENU', 1, 0),
(83, 276, 'GOVERNMENT ACCOUNT', 'GOVERNMENT ACCOUNT', 'AGGREGATOR', '', '', NULL, 'MAIN_MENU', 2, 0),
(84, 276, 'CORPORATE ACCOUNT', 'CORPORATE ACCOUNT', 'AGGREGATOR', '', '', NULL, 'MAIN_MENU', 3, 0),
(85, 276, 'NGO ACCOUNT', 'NGO ACCOUNT', 'AGGREGATOR', '', '', NULL, 'MAIN_MENU', 4, 0),
(86, 276, 'DEALER ACCOUNT', 'DEALER ACCOUNT', 'AGGREGATOR', '', '', NULL, 'MAIN_MENU', 5, 0),
(87, 0, 'CARD HOLDERS', 'CARD_HOLDERS', 'AGGREGATOR', '', '', NULL, 'HEADER_MENU', 6, 0),
(88, 0, 'REPORTS', 'REPORTS', 'AGGREGATOR', '', '', NULL, 'HEADER_MENU', 7, 0),
(89, 82, 'VIEW PRODUCT', 'VIEW_PRODUCTS', 'AGGREGATOR', 'product', '', NULL, 'SUB_MENU', 0, 0),
(90, 83, 'VIEW DISTRIBUTORS', 'VIEW_DISTRIBUTORS', 'AGGREGATOR', 'aggrigatordistributor', '', NULL, 'SUB_MENU', 0, 0),
(91, 83, 'CREATE DISTRIBUTOR', 'CREATE_DISTRIBUTORS', 'AGGREGATOR', 'aggrigatordistributor', 'create', NULL, 'SUB_MENU', 0, 0),
(92, 83, 'UPDATE DISTRIBUTOR', 'UPDATE_DISTRIBUTORS', 'AGGREGATOR', 'aggrigatordistributor', 'update', NULL, 'SUB_MENU', 0, 0),
(93, 84, 'VIEW CORPORATES', 'VIEW_CORPORATES', 'AGGREGATOR', 'aggrigatorcorporate', '', NULL, 'SUB_MENU', 0, 0),
(94, 84, 'CREATE CORPORATES', 'CREATE_CORPORATES', 'AGGREGATOR', 'aggrigatorcorporate', 'create', NULL, 'SUB_MENU', 0, 0),
(95, 84, 'UPDATE CORPORATES', 'UPDATE_CORPORATES', 'AGGREGATOR', 'aggrigatorcorporate', 'update', NULL, 'SUB_MENU', 0, 0),
(96, 85, 'VIEW NGOs', 'VIEW_NGO', 'AGGREGATOR', 'aggrigatorngo', '', NULL, 'SUB_MENU', 0, 0),
(97, 85, 'CREATE NGOs', 'CREATE_NGO', 'AGGREGATOR', 'aggrigatorngo', 'create', NULL, 'SUB_MENU', 0, 0),
(98, 85, 'UPDATE NGOs', 'UPDATE_NGO', 'AGGREGATOR', 'aggrigatorngo', 'update', NULL, 'SUB_MENU', 0, 0),
(99, 86, 'VIEW DEALERS', 'VIEW_DEALERS', 'AGGREGATOR', 'aggrigatordealer', '', NULL, 'SUB_MENU', 0, 0),
(100, 86, 'CREATE DEALERS', 'CREATE_DEALERS', 'AGGREGATOR', 'aggrigatordealer', 'create', NULL, 'SUB_MENU', 0, 0),
(101, 86, 'UPDATE DEALERS', 'UPDATE_DEALERS', 'AGGREGATOR', 'aggrigatordealer', 'update', NULL, 'SUB_MENU', 0, 0),
(102, 87, 'VIEW CARD HOLDERS', 'VIEW_CARDHOLDERS', 'AGGREGATOR', 'aggrigatorclientcards', '', NULL, 'SUB_MENU', 0, 0),
(103, 87, 'RESET PIN', 'CARDHOLDER_RESET_PIN', 'AGGREGATOR', 'aggrigatorclientcards', 'reset-pin', NULL, 'SUB_MENU', 0, 0),
(104, 182, 'VIEW CARD PAYMENTS', 'CARD_PAYMENTS', 'AGGREGATOR', 'nfcpaymenttransaction', '', NULL, 'SUB_MENU', 0, 0),
(105, 183, 'CARD ISSUED', 'CARD_ISSUED', 'AGGREGATOR', 'nfccard', '', NULL, 'SUB_MENU', 0, 0),
(106, 184, 'GLOBAL SETTLEMENT', 'GLOBAL_SETTLEMENT', 'AGGREGATOR', 'nfctransactionconsolidatedreports', '', NULL, 'SUB_MENU', 0, 0),
(107, 185, 'DEALER PAYMENTS', 'DEALER_PAYMENTS', 'AGGREGATOR', 'nfcsettlement', '', NULL, 'SUB_MENU', 0, 0),
(108, 186, 'CARD TOP UPS', 'CARD_TOP_UP', 'AGGREGATOR', 'dealercarddeposit', '', NULL, 'SUB_MENU', 0, 0),
(109, 187, 'DEALER DEPOSITS', 'DEALER_DEPOSITS', 'AGGREGATOR', 'dealerdeposit', '', NULL, 'SUB_MENU', 0, 0),
(110, 188, 'CARD STOCKS', 'CARD_STOCKS', 'AGGREGATOR', 'nfccardstock', '', NULL, 'SUB_MENU', 0, 0),
(111, 189, 'VIEW ADMIN SETTLEMENT', 'ADMIN_SETTLEMENTS', 'AGGREGATOR', 'adminsettlementreports', '', NULL, 'SUB_MENU', 0, 0),
(113, 191, 'ACCOUNT BALANCE AND STATISTICS', 'ACCOUNT_BALANCE_AND_STATISTICS', 'AGGREGATOR', 'accountandstatistics', '', NULL, 'SUB_MENU', 0, 0),
(114, 225, 'ASSIGNED AGGREGATOR TO USER', 'ASSIGNED_AGGREGATOR_TO_USER', 'ADMIN', 'assignaggregator', 'assignedaggregator', 'supperagent', 'SUB_MENU', 0, 0),
(115, 225, 'ASSIGNED NEW AGGREGATOR TO USER', 'ASSIGNED_NEW_AGGREGATOR_TO_USER', 'ADMIN', 'assignaggregator', 'createaggregator', 'assignaggregator', 'SUB_MENU', 0, 0),
(116, 226, 'ASSIGNED NEW CARD TO USER', 'ASSIGNED_NEW_CARD_TO_USER', 'ADMIN', 'assignaggregator', 'assigncard', 'supperagent', 'SUB_MENU', 0, 0),
(117, 226, 'UNASSIGNED CARD TO USER', 'UNASSIGNED_NEW_CARD_TO_USER', 'ADMIN', 'assignaggregator', 'unassignaggregator', 'supperagent', 'SUB_MENU', 0, 0),
(118, 224, 'ASSIGNED NEW EMPLOYEE TO DEVICE', 'ASSIGNED_NEW_EMPLOYEE_TO_DEVICE', 'ADMIN', 'supperagentterminal', 'assign', 'supperagentterminal', 'SUB_MENU', 0, 0),
(119, 3, 'CLIENT CARDS', 'CLIENT_CARDS', 'ADMIN', 'client', 'card-list', 'client', 'SUB_MENU', 0, 0),
(120, 3, 'BLOCK CLIENT CARDS', 'BLOCK_CLIENT_CARDS', 'ADMIN', 'client', 'change-card-status', 'client', 'SUB_MENU', 0, 0),
(121, 3, 'CLIENT CARDS BALANCE TRANSAFER', 'CLIENT_CARDS_BALANCE_TRANSFER', 'ADMIN', 'client', 'fund-transfer', 'client', 'SUB_MENU', 0, 0),
(122, 5, 'CREATE MERCHANT', 'CREATE_MERCHANT', 'ADMIN', 'merchant', 'create', 'merchant', 'SUB_MENU', 0, 0),
(123, 194, 'VIEW REPORTS', 'REPORTS', 'AGGREGATOR', 'reports', '', 'home', 'SUB_MENU', 0, 0),
(124, 0, 'MANAGEMENT SERVICES ', 'MANAGEMENT_SERVICES ', 'AGGREGATOR', 'services', '', 'home', 'HEADER_MENU', 8, 0),
(125, 195, 'SYSTEM MANAGEMENT', 'SYSTEM_MANAGEMENT', 'AGGREGATOR', 'user', '', 'services', 'SUB_MENU', 0, 0),
(126, 195, 'CREATE SYSTEM MANAGEMENT', 'CREATE_SYSTEM_MANAGEMENT', 'AGGREGATOR', 'user', 'create', 'user', 'SUB_MENU', 0, 0),
(127, 195, 'UPDATE SYSTEM MANAGEMENT', 'UPDATE_SYSTEM_MANAGEMENT', 'AGGREGATOR', 'user', 'update', 'user', 'SUB_MENU', 0, 0),
(128, 196, 'VIEW USER PERMISSION', 'VIEW_USER_PERMISSION', 'AGGREGATOR', 'services', '', 'services', 'SUB_MENU', 0, 0),
(129, 196, 'CREATE USER PERMISSIONT', 'CREATE_USER_PERMISSION', 'AGGREGATOR', 'userpermission', 'Create New', 'SERVICE', 'SUB_MENU', 0, 0),
(130, 196, 'UPDATE USER PERMISSION', 'UPDATE_USER_PERMISSION', 'AGGREGATOR', 'userpermission', 'Update', 'userpermission', 'SUB_MENU', 0, 0),
(131, 197, 'CLIENT COS', 'CLIENT_COS', 'AGGREGATOR', 'clientcos', '', 'services', 'SUB_MENU', 0, 0),
(132, 198, 'CARDHOLDER COS', 'CARDHOLDER_COS', 'AGGREGATOR', 'cardholdercos', '', 'services', 'SUB_MENU', 0, 0),
(133, 202, 'VIEW MANAGEMENT SERVICES ', 'VIEW_MANAGEMENT_SERVICES ', 'AGGREGATOR', 'services', '', 'home', 'SUB_MENU', 0, 0),
(134, 183, 'CARD ISSUED EXPORT', 'CARD_ISSUED_EXPORT', 'AGGREGATOR', 'nfccard', 'export', 'reports', 'SUB_MENU', 0, 0),
(135, 184, 'VIEW VALUE UNDER GOLBAL SETTLEMENT', 'VIEW_VALUE_UNDER_GOLBAL_SETTLEMENT', 'AGGREGATOR', 'nfctransactionconsolidatedreports', 'sales', 'reports', 'SUB_MENU', 0, 0),
(136, 184, 'VIEW VOLUME UNDER GOLBAL SETTLEMENT', 'VIEW_VOLUME_UNDER_GOLBAL_SETTLEMENT', 'AGGREGATOR', 'nfctransactionconsolidatedreports', 'liters', 'reports', 'SUB_MENU', 0, 0),
(137, 185, 'VIEW UNDER DEALER PAYMENT', 'VIEW_VALUE_UNDER_DEALER_PAYMENT', 'AGGREGATOR', 'nfcsettlement', 'view-settlement', 'reports', 'SUB_MENU', 0, 0),
(138, 189, 'VIEW MORE', 'VIEW_ADMIN_SETTLEMENT', 'AGGREGATOR', 'adminsettlementreports', 'view', 'reports', 'SUB_MENU', 1, 0),
(139, 190, 'CLIENT DEPOSIT', 'CLIENT_DEPOSIT', 'AGGREGATOR', 'clientdeposit', '', 'reports', 'SUB_MENU', 0, 0),
(140, 86, 'EMPLOYEE UNDER DEALER', 'EMPLOYEE_UNDER_DEALER', 'AGGREGATOR', 'dealeremployee', '', 'aggrigatordealer', 'SUB_MENU', 0, 0),
(141, 86, 'DEVICE UNDER DEALER', 'DEVICE_UNDER_DEALER', 'AGGREGATOR', 'dealerterminal', '', 'aggrigatordealer', 'SUB_MENU', 0, 0),
(142, 86, 'ASSIGNED CARD UNDER DEALER', 'CARD_UNDER_DEALER', 'AGGREGATOR', 'assigndealercard', '', 'aggrigatordealer', 'SUB_MENU', 0, 0),
(143, 85, 'EMPLOYEE UNDER NGO', 'EMPLOYEE_UNDER_ngo', 'AGGREGATOR', 'ngoemployee', '', 'aggrigatorngo', 'SUB_MENU', 0, 0),
(144, 85, 'DEVICE UNDER NGO', 'DEVICE_UNDER_ngo', 'AGGREGATOR', 'ngoterminal', '', 'aggrigatorngo', 'SUB_MENU', 0, 0),
(145, 85, 'ASSIGNED CARD UNDER NGO', 'CARD_UNDER_ngo', 'AGGREGATOR', 'assignngocard', '', 'aggrigatorngo', 'SUB_MENU', 0, 0),
(146, 84, 'EMPLOYEE UNDER CORPORATAE', 'EMPLOYEE_UNDER_corporate', 'AGGREGATOR', 'corporateemployee', '', 'aggrigatorcorporate', 'SUB_MENU', 0, 0),
(147, 84, 'DEVICE UNDER CORPORATAE', 'DEVICE_UNDER_corporate', 'AGGREGATOR', 'corporateterminal', '', 'aggrigatorcorporate', 'SUB_MENU', 0, 0),
(148, 84, 'ASSIGNED CARD UNDER CORPORATAE', 'CARD_UNDER_corporate', 'AGGREGATOR', 'assigncorporatecard', '', 'aggrigatorcorporate', 'SUB_MENU', 0, 0),
(149, 83, 'EMPLOYEE UNDER DISTRIBUTOR', 'EMPLOYEE_UNDER_distributore', 'AGGREGATOR', 'distributoreemployee', '', 'aggrigatordistributor', 'SUB_MENU', 0, 0),
(150, 83, 'DEVICE UNDER DISTRIBUTOR', 'DEVICE_UNDER_distributore', 'AGGREGATOR', 'distributoreterminal', '', 'aggrigatordistributor', 'SUB_MENU', 0, 0),
(151, 83, 'ASSIGNED CARD UNDER DISTRIBUTOR', 'CARD_UNDER_distributore', 'AGGREGATOR', 'assigndistributorecard', '', 'aggrigatordistributor', 'SUB_MENU', 0, 0),
(152, 83, 'TRANSFER COMMISSION', 'TRANSFER_COMMISSION', 'AGGREGATOR', 'distributortransfercommission', '', 'aggrigatordistributor', 'SUB_MENU', 0, 0),
(153, 199, 'VIEW PRODUCT PRICING', 'VIEW_PRODUCT_PRICING', 'AGGREGATOR', 'productpricing', '', 'reports', 'SUB_MENU', 0, 0),
(154, 200, 'VIEW ADMIN FEES', 'VIEW_ADMIN_FEES', 'AGGREGATOR', 'adminfees', '', 'reports', 'SUB_MENU', 0, 0),
(155, 199, 'CREATE PRODUCT PRICING', 'CREATE_PRODUCT_PRICING', 'AGGREGATOR', 'productpricing', 'create-nfc-product', 'reports', 'SUB_MENU', 0, 0),
(156, 199, 'UPDATE PRODUCT PRICING', 'UPDATE_PRODUCT_PRICING', 'AGGREGATOR', 'productpricing', 'update-nfc-product', 'reports', 'SUB_MENU', 0, 0),
(157, 200, 'CREATE ADMIN FEES', 'CREATE_ADMIN_FEES', 'AGGREGATOR', 'adminfees', 'create-nfc-product', 'reports', 'SUB_MENU', 0, 0),
(158, 200, 'UPDATE ADMIN FEES', 'UPDATE_ADMIN_FEES', 'AGGREGATOR', 'adminfees', 'update-nfc-product', 'reports', 'SUB_MENU', 0, 0),
(159, 201, 'CREATE SETTLEMENT TIME', 'CREATE_SETTLEMENT_IME', 'AGGREGATOR', 'settlementtime', 'create', 'services', 'SUB_MENU', 0, 0),
(160, 201, 'UPDATE SETTLEMENT TIME', 'UPDATE_SETTLEMENT_IME', 'AGGREGATOR', 'settlementtime', 'update', 'services', 'SUB_MENU', 0, 0),
(161, 201, 'VIEW SETTLEMENT TIME', 'VIEW_SETTLEMENT_IME', 'AGGREGATOR', 'settlementtime', '', 'services', 'SUB_MENU', 0, 0),
(162, 192, 'DISCOUNT', 'DISCOUNT', 'AGGREGATOR', 'discountreport', '', 'reports', 'SUB_MENU', 0, 0),
(163, 193, 'REBATE', 'REBATE', 'AGGREGATOR', 'rebatereport', '', 'reports', 'SUB_MENU', 0, 0),
(164, 0, 'MANAGEMENT SERVICES ', 'MANAGEMENT_SERVICES ', 'ADMIN_CUM_AGGREGATOR', '', '', NULL, 'HEADER_MENU', 0, 0),
(165, 164, 'CLIENT COS', 'CLIENT_COS', 'ADMIN_CUM_AGGREGATOR', 'clientcos', '', 'services', 'MAIN_MENU', 0, 0),
(166, 165, 'CLIENT COS TYPE', 'CLIENT_COS_TYPE', 'ADMIN_CUM_AGGREGATOR', 'clientcos', 'get-cos-type', 'services', 'SUB_MENU', 0, 0),
(167, 165, 'GENERAL CLIENT COS', 'GENERAL_CLIENT_COS', 'ADMIN_CUM_AGGREGATOR', 'clientcos', 'get-general-cos', 'services', 'SUB_MENU', 0, 0),
(168, 165, 'NFC CARD ACCESS COS', 'NFC_CARD_ACCESS_COS', 'ADMIN_CUM_AGGREGATOR', 'clientcos', 'get-nfccard-cos', 'services', 'SUB_MENU', 0, 0),
(169, 164, 'CARDHOLDER COS', 'CARDHOLDER_COS', 'ADMIN_CUM_AGGREGATOR', 'cardholdercos', '', 'services', 'MAIN_MENU', 0, 0),
(170, 169, 'NFC CARD COS', 'NFC_CARD_COS', 'ADMIN_CUM_AGGREGATOR', 'cardholdercos', 'get-nfccard-cos', 'services', 'SUB_MENU', 0, 0),
(171, 169, 'DEFAULT CARDHOLDER COS', 'DEFAULT_CARDHOLDER_COS', 'ADMIN_CUM_AGGREGATOR', 'cardholdercos', 'get-default-client-cos', 'services', 'SUB_MENU', 0, 0),
(172, 164, 'PRODUCT PRICING', 'PRODUCT_PRICING', 'ADMIN_CUM_AGGREGATOR', 'productpricing', '', 'services', 'MAIN_MENU', 0, 0),
(173, 172, 'VIEW PRODUCT PRICING', 'VIEW_PRODUCT_PRICING', 'ADMIN_CUM_AGGREGATOR', 'productpricing', '', 'services', 'SUB_MENU', 0, 0),
(174, 172, 'CREATE PRODUCT PRICING', 'CREATE_PRODUCT_PRICING', 'ADMIN_CUM_AGGREGATOR', 'productpricing', 'create-nfc-product', 'services', 'SUB_MENU', 0, 0),
(175, 172, 'UPDATE PRODUCT PRICING', 'UPDATE_PRODUCT_PRICING', 'ADMIN_CUM_AGGREGATOR', 'productpricing', 'update-nfc-product', 'services', 'SUB_MENU', 0, 0),
(176, 164, 'ADMIN FEES', 'ADMIN_FEES', 'ADMIN_CUM_AGGREGATOR', 'adminfees', '', NULL, 'MAIN_MENU', 0, 0),
(177, 176, 'VIEW ADMIN FEES', 'VIEW_ADMIN_FEES', 'ADMIN_CUM_AGGREGATOR', 'adminfees', '', 'services', 'SUB_MENU', 0, 0),
(178, 176, 'CREATE ADMIN FEES', 'CREATE_ADMIN_FEES', 'ADMIN_CUM_AGGREGATOR', 'adminfees', 'create-nfc-product', 'services', 'SUB_MENU', 0, 0),
(179, 176, 'UPDATE ADMIN FEES', 'UPDATE_ADMIN_FEES', 'ADMIN_CUM_AGGREGATOR', 'adminfees', 'update-nfc-product', 'services', 'SUB_MENU', 0, 0),
(180, 169, 'VIEW CARD HOLDERS', 'VIEW_CARD_HOLDERS', 'ADMIN_CUM_AGGREGATOR', 'cardholdercos', '', 'services', 'SUB_MENU', 0, 0),
(181, 165, 'VIEW CLIENT COS', 'VIEW_CLIENT_COS', 'ADMIN_CUM_AGGREGATOR', 'clientcos', '', 'services', 'SUB_MENU', 0, 0),
(182, 88, 'CARD PAYMENT', 'CARD_PAYMENT', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 1, 0),
(183, 88, 'CARD ISSUE', 'CARD_ISSUE', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 2, 0),
(184, 88, 'GLOBAL SETTLEMENT', 'GLOBAL_SETTLEMENT', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 3, 0),
(185, 88, 'DEALER PAYMENT', 'DEALER_PAYMENT', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 4, 0),
(186, 88, 'CARD TOP-UPS', 'CARD_TOP_UPS', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 5, 0),
(187, 88, 'DEALER DEPOSIT', 'DEALER_DEPOSIT', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 6, 0),
(188, 88, 'CARD STOCK', 'CARD_STOCK', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 7, 0),
(189, 88, 'ADMIN SETTLEMENT', 'ADMIN_SETTLEMENT', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 8, 0),
(190, 88, 'CLIENT DEPOSIT', 'CLIENT_DEPOSIT', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 9, 0),
(191, 88, 'ACCOUNT BALANCES AND STATISTICS', 'ACCOUNT_BALANCES_AND_STATISTICS', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 10, 0),
(192, 88, 'DISCOUNT REPORTS', 'DISCOUNT_REPORTS', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 11, 0),
(193, 88, 'REBATE REPORTS', 'REBATE_REPORTS', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 12, 0),
(194, 88, 'MAIN REPORTS', 'MAIN_MENUE_REPORTS', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 0, 0),
(195, 124, 'SYSTEM USER', 'SYSTEM_USER', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 1, 0),
(196, 124, 'USER PERMISSION', 'USER_PERMISSION', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 2, 0),
(197, 124, 'CLIENT COS', 'CLIENT_COS', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 3, 0),
(198, 124, 'CARDHOLDER COS', 'CARDHOLDER_COS', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 4, 0),
(199, 124, 'PRODUCT PRICE', 'PRODUCT_PRICE', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 5, 0),
(200, 124, 'ADMIN FEES', 'ADMIN_FEES', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 6, 0),
(201, 124, 'SETTLEMENT CONFIGURATION', 'SETTLEMENT_CONFIGURATION', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 7, 0),
(202, 124, 'MAIN MANAGEMNET SERVICE', 'MAIN_MANAGEMNET_SERVICE', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 0, 0),
(203, 182, 'VIEW MORE', 'VIEW_MORE', 'AGGREGATOR', 'nfcpaymenttransaction', 'view-details', 'nfcpaymenttransaction', 'SUB_MENU', 1, 0),
(204, 6, 'SYSTEM USER', 'SYSTEM_USER', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 1, 0),
(205, 6, 'ACCOUNT MANAGER', 'SYSTEM_USER2', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 2, 0),
(206, 6, 'PRODUCT SERVICE', 'SYSTEM_USER3', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 3, 0),
(207, 6, 'CARDHOLDER COS', 'SYSTEM_USER', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 4, 0),
(208, 6, 'CLIENT COS', 'SYSTEM_USER3', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 5, 0),
(209, 31, 'SMS ', 'SYSTEM_USER', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 6, 0),
(210, 31, 'ZAMTEL BALANCE ', 'SYSTEM_USER4', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 7, 0),
(211, 31, 'ZESCO BALANCE ', 'SYSTEM_USER5', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 8, 0),
(212, 6, 'CARD SERVICES ', 'SYSTEM_USER6', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 9, 0),
(214, 6, 'CARD STOCK ', 'SYSTEM_USER77', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 11, 0),
(215, 6, 'USER PERMISSION ', 'SYSTEM_USER777', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 12, 0),
(216, 6, 'AGGREGATOR SERVICE MANAGEMENT ', 'SYSTEM_USER7767', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 13, 0),
(217, 6, 'MAIN SERVICE MANAGEMENT', 'MAIN SERVICE MANAGEMENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 0, 0),
(218, 1, 'USER', 'USER', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 0, 0),
(219, 1, 'ACCESS AGENT PANEL', 'ACCESS_AGENT_PANEL', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 1, 0),
(220, 1, 'DEPOSIT ACCOUNT', 'ACCESS_AGENT_PANEL', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 2, 0),
(221, 1, 'WITHDRAW ACCOUNT', 'ACCESS_AGENT_PANEL', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 3, 0),
(222, 1, 'TRANSAFER COMMISSION', 'ACCESS_AGENT_PANEL', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 4, 0),
(223, 1, 'EMPLOYEE', 'ACCESS_AGENT_PANEL', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 5, 0),
(224, 1, 'DEVICE', 'ACCESS_AGENT_PANEL', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 6, 0),
(225, 1, 'ASSIGN AGGREGATOR', 'ASSIGN AGGREGATOR', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 7, 0),
(226, 1, 'ASSIGN CARDS', 'ASSIGN AGGREGATOR', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 8, 0),
(227, 31, 'AGENT DEPOSIT', 'AGENT DEPOSIT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 1, 0),
(228, 31, 'AGENT COMMISSION', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 1, 0),
(229, 31, 'E-DEPOSIT', 'AGENT ', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 2, 0),
(230, 31, 'ADMIN FEES ', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 3, 0),
(231, 31, 'VOUCHER TALK-TIME', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 4, 0),
(232, 31, 'DIRECT TALK-TIME ', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 5, 0),
(233, 31, 'BILLS ', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 6, 0),
(234, 31, 'CASH IN ', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 7, 0),
(235, 31, 'CASH OUT ', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 8, 0),
(236, 31, 'CARD PAYMENTS ', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 9, 0),
(237, 31, 'SEND MONEY ', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 10, 0),
(238, 31, 'RECEIVE MONEY ', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 11, 0),
(239, 31, 'CARD ISSUED ', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 12, 0),
(240, 31, 'GLOBAL SETTLEMENT ', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 13, 0),
(241, 31, 'DEALER PAYMENTS ', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 14, 0),
(242, 31, 'NFC PURCHASE DEPOSIT LOG ', 'AGENT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 15, 0),
(244, 31, 'MAIN VIEW REPORTS', 'MAIN VIEW REPORTS', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 0, 0),
(245, 241, 'CREATE DEALER PAYMENT', 'CREATE_DEALER_PAYMENT5', 'ADMIN', 'nfcsettlement', 'create-settlement', 'nfcsettlement', 'SUB_MENU', 1, 0),
(246, 240, 'VIEW SALES', 'VIEW_SALES', 'ADMIN', 'nfcsettlement', 'sales', 'nfcsettlement', 'SUB_MENU', 1, 0),
(247, 240, 'VIEW VOLUME', 'VIEW_VOLUME', 'ADMIN', 'nfcsettlement', 'liters', 'nfcsettlement', 'SUB_MENU', 1, 0),
(248, 236, 'VIEW MORE', 'VIEW_MORE', 'ADMIN', 'nfcpaymenttransaction', 'view-details', 'nfcpaymenttransaction', 'SUB_MENU', 1, 0),
(249, 237, 'VIEW MORE', 'VIEW_MORE', 'ADMIN', 'sendmoneytransaction', 'view-details', 'sendmoneytransaction', 'SUB_MENU', 1, 0),
(250, 235, 'CASH OUT', 'CASH_OUT', 'ADMIN', 'cashout', NULL, 'reports', 'SUB_MENU', 0, 0),
(251, 233, 'VIEW MORE', 'CASH_OUT', 'ADMIN', 'paybilltransaction', 'view-details', 'paybilltransaction', 'SUB_MENU', 0, 0),
(252, 232, 'VIEW MORE', 'CASH_OUT', 'ADMIN', 'talktimetransactionlog', 'view-details-directtalktime', 'talktimetransactionlog?mode=directtalktimelog', 'SUB_MENU', 1, 0),
(253, 231, 'VIEW MORE', 'CASH_OUT', 'ADMIN', 'talktimetransactionlog', 'view-details', 'talktimetransactionlog?mode=voucherlog', 'SUB_MENU', 1, 0),
(254, 215, 'VIEW USER PERMISSION', 'VIEW USER PERMISSION', 'ADMIN', 'userpermission', '', 'services', 'SUB_MENU', 0, 0),
(255, 215, 'CREATE USER PERMISSION', 'CREATE USER PERMISSION', 'ADMIN', 'userpermission', 'Create New', 'userpermission', 'SUB_MENU', 1, 0),
(256, 215, 'UPDATE USER PERMISSION', 'UPDATE USER PERMISSION', 'ADMIN', 'userpermission', 'Update', 'userpermission', 'SUB_MENU', 2, 0),
(257, 216, 'VIEW AGGREGATOR SERVICE', 'VIEW AGGREGATOR SERVICE', 'ADMIN', 'aggragatorpermission', '', 'services', 'SUB_MENU', 0, 0),
(258, 216, 'CREATE / UPDATE AGGREGATOR SERVICE', 'VIEW AGGREGATOR SERVICE', 'ADMIN', 'aggragatorpermission', 'Create and Update', 'aggragatorpermission', 'SUB_MENU', 1, 0),
(259, 169, 'VIEW CARD TYPE', 'VIEW_CARD_TYPE', 'ADMIN_CUM_AGGREGATOR', 'cardholdercos', 'get-cos-type', 'cardholdercos', 'SUB_MENU', 0, 0),
(260, 6, 'PROMOTIONAL DISCOUNT', 'PROMOTIONAL_DISCOUNT', 'ADMIN', NULL, NULL, NULL, 'MAIN_MENU', 14, 0),
(261, 260, 'VIEW PROMOTIONAL DISCOUNT', 'VIEW_PROMOTIONAL_DISCOUNT', 'ADMIN', 'promotionaldiscount', '', 'services', 'SUB_MENU', 0, 0),
(262, 260, 'CREATE PROMOTIONAL DISCOUNT', 'CREATE_PROMOTIONAL_DISCOUNT', 'ADMIN', 'promotionaldiscount', 'create', 'promotionaldiscount', 'SUB_MENU', 1, 0),
(263, 260, 'UPDATE PROMOTIONAL DISCOUNT', 'UPDATE_PROMOTIONAL_DISCOUNT', 'ADMIN', 'promotionaldiscount', 'update', 'promotionaldiscount', 'SUB_MENU', 2, 0),
(264, 124, 'PROMOTIONAL DISCOUNT', 'PROMOTIONAL_DISCOUNT', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 8, 0),
(265, 264, 'VIEW PROMOTIONAL DISCOUNT', 'VIEW_PROMOTIONAL_DISCOUNT', 'AGGREGATOR', 'promotionaldiscount', '', 'services', 'SUB_MENU', 0, 0),
(266, 264, 'CREATE PROMOTIONAL DISCOUNT', 'CREATE_PROMOTIONAL_DISCOUNT', 'AGGREGATOR', 'promotionaldiscount', 'create', 'promotionaldiscount', 'SUB_MENU', 1, 0),
(267, 264, 'UPDATE PROMOTIONAL DISCOUNT', 'UPDATE_PROMOTIONAL_DISCOUNT', 'AGGREGATOR', 'promotionaldiscount', 'update', 'promotionaldiscount', 'SUB_MENU', 2, 0),
(268, 88, 'PROMOTIONAL DISCOUNT REPORTS', 'PROMOTIONAL_DISCOUNT_REPORTS', 'AGGREGATOR', '', NULL, '', 'MAIN_MENU', 13, 0),
(269, 268, 'PROMOTIONAL DISCOUNT', 'PROMOTIONAL_DISCOUNT_REPORTS', 'AGGREGATOR', '', NULL, '', 'SUB_MENU', 0, 0),
(270, 260, 'DEALER ASSIGN PROMOTIONAL DISCOUNT', 'ASSIGN_PROMOTIONAL_DISCOUNT', 'ADMIN', 'promotionaldiscount', 'assign', 'promotionaldiscount', 'SUB_MENU', 3, 0),
(271, 260, 'CLIENT ASSIGN PROMOTIONAL DISCOUNT', 'CLIENT_ASSIGN_PROMOTIONAL_DISCOUNT', 'ADMIN', 'promotionaldiscount', 'assign-client', 'promotionaldiscount', 'SUB_MENU', 4, 0),
(272, 264, 'DEALER ASSIGN PROMOTIONAL DISCOUNT', 'ASSIGN_PROMOTIONAL_DISCOUNT', 'AGGREGATOR', 'promotionaldiscount', 'assign', 'promotionaldiscount', 'SUB_MENU', 3, 0),
(273, 264, 'CLIENT ASSIGN PROMOTIONAL DISCOUNT', 'CLIENT_ASSIGN_PROMOTIONAL_DISCOUNT', 'AGGREGATOR', 'promotionaldiscount', 'assign-client', 'promotionaldiscount', 'SUB_MENU', 4, 0),
(275, 31, 'PROMOTIONAL DISCOUNT', 'PROMOTIONAL_DISCOUNT', 'ADMIN', 'promotionalreports', NULL, 'reports', 'SUB_MENU', 0, 0),
(276, 0, 'OUR CLIENTS', 'OUR_CLIENTS', 'AGGREGATOR', NULL, NULL, NULL, 'HEADER_MENU', 3, 0),
(277, 86, 'VIEW REPORTS', 'VIEW_REPORTS', 'AGGREGATOR', 'reportsdealer', NULL, 'aggrigatordealer', 'SUB_MENU', 7, 0),
(283, 86, 'CARDS PAYMENTS REPORTS', 'CARDS_PAYMENTS', 'AGGREGATOR', 'reportsdealer', 'card-payments', 'aggrigatordealer', 'SUB_MENU', 8, 0),
(284, 86, 'CARDS ISSUED REPORTS', 'CARDS_ISSUED', 'AGGREGATOR', 'reportsdealer', 'cards-issued', 'aggrigatordealer', 'SUB_MENU', 9, 0),
(285, 86, 'DEALER ACTIVITY REPORTS', 'DEALER_ACTIVITY', 'AGGREGATOR', 'reportsdealer', 'dealer-activity', 'aggrigatordealer', 'SUB_MENU', 10, 0),
(286, 86, 'MY DEPOSIT REPORTS', 'MY_DEPOSIT_LOG', 'AGGREGATOR', 'reportsdealer', 'deposit-log', 'aggrigatordealer', 'SUB_MENU', 11, 0),
(287, 86, 'PROMOTIONAL DISCOUNT REPORTS', 'PROMOTIONAL_DISCOUNT', 'AGGREGATOR', 'reportsdealer', 'promotional-discount', 'aggrigatordealer', 'SUB_MENU', 12, 0),
(288, 85, 'VIEW REPORTS', 'VIEW_REPORTS', 'AGGREGATOR', 'reportsngo', NULL, 'aggrigatorngo', 'SUB_MENU', 7, 0),
(289, 85, 'CARD ACTIVITY REPORTS', 'CARD_ACTIVITY', 'AGGREGATOR', 'reportsngo', 'card-activity', 'aggrigatorngo', 'SUB_MENU', 8, 0),
(290, 85, 'ACCOUNT ACTIVITY REPORTS', 'ACCOUNT_ACTIVITY', 'AGGREGATOR', 'reportsngo', 'account-activity', 'aggrigatorngo', 'SUB_MENU', 9, 0),
(291, 85, 'PROMOTIONAL DISCOUNT REPORTS', 'PROMOTIONAL_DISCOUNT', 'AGGREGATOR', 'reportsngo', 'promotional-discount', 'aggrigatorngo', 'SUB_MENU', 10, 0),
(292, 85, 'VIEW CARD HISTORY', 'VIEW_CARD_HISTORY', 'AGGREGATOR', 'reportsngo', 'card-history', 'aggrigatorngo', 'SUB_MENU', 11, 0),
(293, 84, 'VIEW REPORTS', 'VIEW_REPORTS', 'AGGREGATOR', 'reportscorporate', NULL, 'aggrigatorcorporate', 'SUB_MENU', 7, 0),
(294, 84, 'CARD ACTIVITY REPORTS', 'CARD_ACTIVITY', 'AGGREGATOR', 'reportscorporate', 'card-activity', 'aggrigatorcorporate', 'SUB_MENU', 8, 0),
(295, 84, 'ACCOUNT ACTIVITY REPORTS', 'ACCOUNT_ACTIVITY', 'AGGREGATOR', 'reportscorporate', 'account-activity', 'aggrigatorcorporate', 'SUB_MENU', 9, 0),
(296, 84, 'PROMOTIONAL DISCOUNT REPORTS', 'PROMOTIONAL_DISCOUNT', 'AGGREGATOR', 'reportscorporate', 'promotional-discount', 'aggrigatorcorporate', 'SUB_MENU', 10, 0),
(297, 84, 'VIEW CARD HISTORY', 'VIEW_CARD_HISTORY', 'AGGREGATOR', 'reportscorporate', 'card-history', 'aggrigatorcorporate', 'SUB_MENU', 11, 0),
(298, 83, 'VIEW REPORTS', 'VIEW_REPORTS', 'AGGREGATOR', 'reportsdistributor', NULL, 'aggrigatordistributor', 'SUB_MENU', 7, 0),
(299, 83, 'CARD ACTIVITY REPORTS', 'CARD_ACTIVITY', 'AGGREGATOR', 'reportsdistributor', 'card-activity', 'aggrigatordistributor', 'SUB_MENU', 8, 0),
(300, 83, 'ACCOUNT ACTIVITY REPORTS', 'ACCOUNT_ACTIVITY', 'AGGREGATOR', 'reportsdistributor', 'account-activity', 'aggrigatordistributor', 'SUB_MENU', 9, 0),
(301, 83, 'PROMOTIONAL DISCOUNT REPORTS', 'PROMOTIONAL_DISCOUNT', 'AGGREGATOR', 'reportsdistributor', 'promotional-discount', 'aggrigatordistributor', 'SUB_MENU', 10, 0),
(302, 83, 'VIEW CARD HISTORY', 'VIEW_CARD_HISTORY', 'AGGREGATOR', 'reportsdistributor', 'card-history', 'aggrigatordistributor', 'SUB_MENU', 11, 0),
(303, 83, 'DEPOSIT ACCOUNT', 'DEPOSIT_ACCOUNT', 'AGGREGATOR', 'fundtransaferdistributor', NULL, 'aggrigatordistributor', 'SUB_MENU', 12, 0),
(304, 85, 'DEPOSIT ACCOUNT', 'DEPOSIT_ACCOUNT', 'AGGREGATOR', 'fundtransaferngo', NULL, 'aggrigatorngo', 'SUB_MENU', 12, 0),
(305, 84, 'DEPOSIT ACCOUNT', 'DEPOSIT_ACCOUNT', 'AGGREGATOR', 'fundtransafercorporate', NULL, 'aggrigatorcorporate', 'SUB_MENU', 12, 0),
(306, 86, 'DEPOSIT ACCOUNT', 'DEPOSIT_ACCOUNT', 'AGGREGATOR', 'fundtransaferdealer', NULL, 'aggrigatordealer', 'SUB_MENU', 12, 0),
(307, 83, 'WITHDRAW ACCOUNT', 'WITHDRAW_ACCOUNT', 'AGGREGATOR', 'funddebitdistributor', NULL, 'aggrigatordistributor', 'SUB_MENU', 12, 0),
(308, 85, 'WITHDRAW ACCOUNT', 'WITHDRAW_ACCOUNT', 'AGGREGATOR', 'funddebitngo', NULL, 'aggrigatorngo', 'SUB_MENU', 12, 0),
(309, 84, 'WITHDRAW ACCOUNT', 'WITHDRAW_ACCOUNT', 'AGGREGATOR', 'funddebitcorporate', NULL, 'aggrigatorcorporate', 'SUB_MENU', 12, 0),
(310, 86, 'WITHDRAW ACCOUNT', 'WITHDRAW_ACCOUNT', 'AGGREGATOR', 'funddebitdealer', NULL, 'aggrigatordealer', 'SUB_MENU', 12, 0),
(311, 0, 'LOAN', 'LOAN', 'AGGREGATOR', 'gncloan', NULL, NULL, 'HEADER_MENU', 18, 369),
(312, 319, 'VIEW LOAN APPLICATION', 'LOAN', 'AGGREGATOR', 'gncloan', NULL, NULL, 'SUB_MENU', 0, 369),
(313, 318, 'VIEW INDIVIDUAL LOAN CLIENT', 'INDIVIDUAL_CLIENT_LOAN', 'AGGREGATOR', 'gncloanindividualclient', NULL, 'gncloan', 'SUB_MENU', 1, 369),
(314, 318, 'CREATE INDIVIDUAL LOAN CLIENT', 'INDIVIDUAL_CRAETE_CLIENT_LOAN', 'AGGREGATOR', 'gncloanindividualclient', 'create-client', 'gncloan', 'SUB_MENU', 2, 369),
(315, 318, 'UPDATE INDIVIDUAL LOAN CLIENT', 'INDIVIDUAL_UPDATE_CLIENT_LOAN', 'AGGREGATOR', 'gncloanindividualclient', 'update', 'gncloanindividualclient', 'SUB_MENU', 2, 369),
(316, 319, 'SEARCH GNC LOAN CLIENT', 'SEARCH_GNC_LOAN_CLIENT', 'AGGREGATOR', 'gncloan', 'search', 'gncloan', 'SUB_MENU', 3, 369),
(317, 311, 'REPORTS', 'REPORTS', 'AGGREGATOR', '', '', '', 'MAIN_MENU', 2, 369),
(318, 311, 'INDIVIDUAL CLIENT', 'INDIVIDUAL_CLIENT', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 1, 369),
(319, 311, 'LOAN APPLICATION', 'LOAN', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 0, 369),
(320, 317, 'AGE ANALYSIS\r\n', 'AGE ANALYSIS\r\n', 'AGGREGATOR', 'gncloan', 'age-analysis', 'gncloan', 'SUB_MENU', 0, 369),
(321, 317, 'REVENUE REPORTS', 'REVENUE REPORTS', 'AGGREGATOR', 'gncloan', 'trail-balance', 'gncloan', 'SUB_MENU', 1, 369),
(322, 317, 'CONSOLIDATED LOANS AND CHARGES', 'CONSOLIDATED LOANS AND CHARGES', 'AGGREGATOR', 'gncloan', 'consolidated-revenue-reports', 'gncloan', 'SUB_MENU', 2, 369),
(323, 319, 'NEW APPLICATION CLEARANCE FOR INDIVIDUAL CLIENT', 'NEW APPLICATION CLEARANCE', 'AGGREGATOR', 'gncloan', 'new-create-request', 'gncloan', 'SUB_MENU', 3, 369),
(324, 319, 'NEW APPLICATION CLEARANCE FOR COMPANY', 'NEW APPLICATION CLEARANCE', 'AGGREGATOR', 'gncloan', 'create-request', 'gncloan', 'SUB_MENU', 3, 369),
(325, 319, 'UPDATE LOAN REQUEST INFO', 'NEW APPLICATION CLEARANCE', 'AGGREGATOR', 'gncloan', 'update-loan-request-info', 'gncloan', 'SUB_MENU', 5, 369),
(326, 319, 'VIEW LOAN PROCESS', 'NEW APPLICATION CLEARANCE', 'AGGREGATOR', 'gncloan', 'update-gnc', 'gncloan', 'SUB_MENU', 6, 369),
(327, 319, 'INDIVIDUAL CLIENT KYC', 'NEW APPLICATION CLEARANCE', 'AGGREGATOR', 'gncloan', 'KYC', 'gncloan', 'SUB_MENU', 7, 369),
(328, 319, 'INDIVIDUAL CLIENT PRINT KYC', 'NEW APPLICATION CLEARANCE', 'AGGREGATOR', 'gncloan', 'print-kyc', 'gncloan', 'SUB_MENU', 8, 369),
(329, 319, 'INDIVIDUAL CLIENT KYC DOCS UPLOAD', 'NEW APPLICATION CLEARANCE', 'AGGREGATOR', 'gncloan', 'kyc-doc-uploade', 'gncloan', 'SUB_MENU', 9, 369),
(330, 319, 'GUARANTOR LIST', 'GUARANTOR LIST', 'AGGREGATOR', 'gncloan', 'update-guarantor-details', 'gncloan', 'SUB_MENU', 10, 369),
(331, 319, 'CREATE GUARANTOR', 'GUARANTOR LIST', 'AGGREGATOR', 'gncloan', 'guarantor-details', 'gncloan', 'SUB_MENU', 10, 369),
(332, 319, 'LOAN APPROVAL', 'GUARANTOR LIST', 'AGGREGATOR', 'gncloan', 'process-loan-approval', 'gncloan', 'SUB_MENU', 11, 369),
(333, 319, 'LOAN ACCOUNT', 'GUARANTOR LIST', 'AGGREGATOR', 'gncloan', 'loan-account', 'gncloan', 'SUB_MENU', 11, 369),
(334, 319, 'LOAN STATEMENT', 'GUARANTOR LIST', 'AGGREGATOR', 'gncloan', 'loan-statement', 'gncloan', 'SUB_MENU', 12, 369),
(335, 319, 'PAY LOAN', 'GUARANTOR LIST', 'AGGREGATOR', 'gncloan', 'pay-loan', 'gncloan', 'SUB_MENU', 13, 369),
(336, 319, 'UPDATE GUARANTOR', 'GUARANTOR LIST', 'AGGREGATOR', 'gncloan', 'update-guarantor', 'gncloan', 'SUB_MENU', 11, 369),
(337, 319, 'ADDITIONAL PAY LOAN', 'GUARANTOR LIST', 'AGGREGATOR', 'gncloan', 'additional-pay-loan', 'gncloan', 'SUB_MENU', 15, 369),
(338, 124, 'LOAN FEES AND CHARGES', 'LOAN FEES AND CHARGES', 'AGGREGATOR', NULL, NULL, NULL, 'MAIN_MENU', 15, 369),
(339, 338, 'VIEW LOAN FEES AND CHARGES', 'VIEW LOAN FEES AND CHARGES', 'AGGREGATOR', 'gncloan', 'gnc-configuration', 'services', 'SUB_MENU', 0, 369),
(340, 338, 'SMS CHARGES', 'VIEW LOAN FEES AND CHARGES', 'AGGREGATOR', 'gncloan', 'sms-charges', 'gncloan?mode=gnc-configuration', 'SUB_MENU', 1, 369),
(341, 338, 'FEES CHARGES', 'VIEW LOAN FEES AND CHARGES', 'AGGREGATOR', 'gncloan', 'fees-charges', 'gncloan?mode=gnc-configuration', 'SUB_MENU', 1, 369),
(342, 338, 'REPAYMENT CHARGES', 'VIEW LOAN FEES AND CHARGES', 'AGGREGATOR', 'gncloan', 'repayment-charges', 'gncloan?mode=gnc-configuration', 'SUB_MENU', 2, 369),
(343, 338, 'GNC LOAN PENALTY INTEREST CHARGES', 'VIEW LOAN FEES AND CHARGES', 'AGGREGATOR', 'gncloan', 'penalty-interest-charges', 'gncloan?mode=gnc-configuration', 'SUB_MENU', 2, 369),
(344, 338, 'GNC LOAN COLLECTION COMMISSION CHARGES', 'VIEW LOAN FEES AND CHARGES', 'AGGREGATOR', 'gncloan', 'collection-commission-charges', 'gncloan?mode=gnc-configuration', 'SUB_MENU', 3, 369),
(345, 338, 'LOAN LIMIT', 'VIEW LOAN FEES AND CHARGES', 'AGGREGATOR', 'gncloan', 'loan-limit', 'gncloan?mode=gnc-configuration', 'SUB_MENU', 4, 369),
(346, 317, 'VIEW REPORTS', 'VIEW REPORTS', 'AGGREGATOR', 'gncloan', 'reports', 'gncloan', 'SUB_MENU', 0, 369),
(347, 319, ' LOAN STATEMENT PRINT', ' LOAN STATEMENT PRINT', 'AGGREGATOR', 'gncloan', 'loanSettlementReportsPrint', 'gncloan', 'SUB_MENU', 20, 369),
(348, 317, 'CONSOLIDATED LOANS AND CHARGES PRINT', 'CONSOLIDATED LOANS AND CHARGES PRINT', 'AGGREGATOR', 'gncloan', 'consolidatedRevenueReportPrint', 'gncloan', 'SUB_MENU', 8, 369),
(349, 317, 'REVENUE REPORTS PRINT', 'REVENUE REPORTS PRINT', 'AGGREGATOR', 'gncloan', 'RevenueReportPrint', 'gncloan', 'SUB_MENU', 7, 369),
(350, 317, 'AGE ANALYSIS PRINT', 'AGE ANALYSIS PRINT', 'AGGREGATOR', 'gncloan', 'AgeAnalYsisReportPrint', 'gncloan', 'SUB_MENU', 6, 369),
(351, 0, 'PROFILE', 'PROFILE', 'AGGREGATOR', '#', '#', 'home', 'HEADER_MENU', 0, 0),
(352, 351, 'CHANGE PASSWORD', 'CHANGEPASSWORD', 'AGGREGATOR', 'changepassword', '', 'home', 'SUB_MENU', 0, 0),
(353, 319, 'AUTO REVERSAL PERIOD', 'AUTO_REVERSAL_PERIOD', 'AGGREGATOR', 'gncloan', 'auto-reversal-period', 'gncloan', 'SUB_MENU', 15, 369),
(354, 319, 'LOAN ACTIVITY', 'LOAN_ACTIVITY', 'AGGREGATOR', 'gncloan', 'loan-activity', 'gncloan', 'SUB_MENU', 17, 369),
(355, 319, 'LOAN SMS ACTIVITY', 'LOAN_SMS_ACTIVITY', 'AGGREGATOR', 'gncloan', 'loan-sms-activity', 'gncloan', 'SUB_MENU', 17, 369),
(356, 317, 'REVERSAL REPORTS', 'REVERSAL', 'AGGREGATOR', 'gncloan', 'reversal-reports', 'gncloan', 'SUB_MENU', 34, 369),
(357, 319, 'ADDITIONAL LOAN', 'ADDITIONAL_LOAN', 'AGGREGATOR', 'gncloan', 'additional-pay-loan', 'gncloan', 'SUB_MENU', 23, 369),
(358, 319, 'REVERSAL LOAN', 'REVERSAL_LOAN', 'AGGREGATOR', 'gncloan', 'revarsal-loan', 'gncloan', 'SUB_MENU', 24, 369),
(359, 319, 'WITHDRAW FROM CARD', 'REVERSAL_WITHDRAW_FROM_CAR_LOAN', 'AGGREGATOR', 'gncloan', 'withdraw-from-card', 'gncloan', 'SUB_MENU', 26, 369),
(360, 319, 'WTRANSFER TOCARD', 'TRANSFER_CARD_LOAN', 'AGGREGATOR', 'gncloan', 'transfer-to-card', 'gncloan', 'SUB_MENU', 27, 369),
(361, 319, 'LOAN PROCCESS AJAX', 'LOAN_PROCCESS_AAJAX', 'AGGREGATOR', 'gncloan', 'getLoanInfo', 'gncloan', 'SUB_MENU', 28, 369),
(362, 0, 'Profile', 'Profile', 'ADMIN', '#', '#', '#', 'HEADER_MENU', 1, 0),
(364, 362, 'USER CHANGE PASSWORD', 'CHANGE_PASSWORD', 'ADMIN', 'changepassword', '', 'home', 'SUB_MENU', 1, 0),
(365, 319, 'GNC EMAIL PERMISSION', 'GNC EMAIL PERMISSION', 'AGGREGATOR', 'gncloan', 'email-configure', 'gncloan', 'SUB_MENU', 55, 369),
(366, 319, 'VIEW DOCUMENT', 'VIEW_DOCUMENTS', 'AGGREGATOR', 'gncloan', 'doc-view', 'gncloan', 'SUB_MENU', 28, 369),
(367, 317, 'TRAIL BALANCE', 'TRAIL_BALANCE', 'AGGREGATOR', 'gncloan', 'trail-amount-reports', 'gncloan', 'SUB_MENU', 33, 369),
(368, 317, 'TRAIL BALANCE PRINT', 'TRAIL_BALANCE_PRIINT', 'AGGREGATOR', 'gncloan', 'TrailReportPrint', 'gncloan', 'SUB_MENU', 34, 369),
(369, 0, 'BANKING', 'BANKING', 'AGGREGATOR', NULL, NULL, NULL, 'HEADER_MENU', 8, 1),
(370, 369, 'View Banking', 'VIEW_ACCOUNTS', 'AGGREGATOR', 'account', '', 'account', 'SUB_MENU', 0, 1),
(371, 369, 'View Deposit Approvals', 'VIEW_ACCOUNTS', 'AGGREGATOR', 'account', 'deposit-account-request', 'account', 'SUB_MENU', 5, 1),
(372, 369, 'View Withdrawal Approvals', 'VIEW_ACCOUNTS', 'AGGREGATOR', 'account', 'withdraw-account-request', 'account', 'SUB_MENU', 6, 1),
(375, 369, 'Client Search', 'SEARCH_CARDHOLDER', 'AGGREGATOR', 'account', 'serarch-client', 'account', 'SUB_MENU', 1, 1),
(376, 369, 'Generate Deposit', 'DEPOSIT_ACCOUNT_REQUEST_CREATE', 'AGGREGATOR', 'account', 'deposit-account-request-create', 'account', 'SUB_MENU', 2, 1),
(377, 369, 'Generate Withdrawal', 'WITHDRAW_ACCOUNT_REQUEST_CREATE', 'AGGREGATOR', 'account', 'withdraw-account-request-create', 'account', 'SUB_MENU', 3, 1),
(378, 369, 'Deposit Approval', 'DEPOSIT_ACCOUNT_APPROVAL', 'AGGREGATOR', 'account', 'deposit-account-approval', 'account', 'SUB_MENU', 8, 1),
(379, 369, 'Withdrawal Approval', 'WITHDRAW_ACCOUNT_APPROVAL', 'AGGREGATOR', 'account', 'withdraw-account-approval', 'account', 'SUB_MENU', 8, 1),
(380, 208, 'CLIENT TYPE', 'CLIENT-TYPE', 'ADMIN', 'supperagentsendmoneycos', 'get-cos-type', 'supperagentsendmoneycos', 'SUB_MENU', 1, 0),
(381, 208, 'CLIENT GENERAL COS', 'CLIENT-GENERAL-COS', 'ADMIN', 'supperagentsendmoneycos', 'get-general-cos', 'supperagentsendmoneycos', 'SUB_MENU', 1, 0),
(382, 208, 'MONEY TRANSACTION COS', 'MONEY-TRANSACTION-COS', 'ADMIN', 'supperagentsendmoneycos', 'get-money-transaction-cos', 'supperagentsendmoneycos', 'SUB_MENU', 1, 0),
(383, 208, 'UTILITY COS', 'CLIENT-UTILITY-COS', 'ADMIN', 'employeeutilitycos', 'get-cos-fees', 'supperagentsendmoneycos', 'SUB_MENU', 1, 0),
(384, 208, 'ASSIGN PRODUCT TO AGENT COS', 'ASSIGN PRODUCT TO AGENT COS', 'ADMIN', 'assignproducttocos', 'assign', 'supperagentsendmoneycos', 'SUB_MENU', 1, 0),
(385, 208, 'NFC CARD ACCESS COS', 'NFC_CARD_ACCESS_COS', 'ADMIN', 'supperagentsendmoneycos', 'get-nfccard-cos', 'supperagentsendmoneycos', 'SUB_MENU', 1, 0),
(386, 208, 'CLIENT DEPOSIT COS', 'CLIENT_DEPOSIT_COS', 'ADMIN', 'supperagentsendmoneycos', 'get-client-deposit-cos', 'supperagentsendmoneycos', 'SUB_MENU', 1, 0),
(387, 208, 'UPDATE MONEY TRANSACTION COS', 'UPDATE-MONEY-TRANSACTION-COS', 'ADMIN', 'supperagentsendmoneycos', 'update-money-transaction-cos', 'supperagentsendmoneycos', 'SUB_MENU', 1, 0),
(388, 208, 'UPDATE GENERAL COS', 'UPDATE-GENERAL-COS', 'ADMIN', 'supperagentsendmoneycos', 'update-cos-fees', 'supperagentsendmoneycos', 'SUB_MENU', 1, 0),
(389, 208, 'UPDATE UTILITY COS', 'UPDATE-UTILITY-COS', 'ADMIN', 'employeeutilitycos', 'update-cos-fees', 'supperagentsendmoneycos', 'SUB_MENU', 1, 0),
(390, 208, 'UPDATE NFC CARD COS', 'UPDATE-NFC-CARD-COS', 'ADMIN', 'supperagentsendmoneycos', 'update-nfccard-cos', 'supperagentsendmoneycos', 'SUB_MENU', 1, 0),
(391, 208, 'UPDATE ACCOUNT DEPOSIT COS', 'UPDATE-ACCOUNT-DEPOSIT-COS', 'ADMIN', 'supperagentsendmoneycos', 'update-client-cos-fees', 'supperagentsendmoneycos', 'SUB_MENU', 1, 0),
(392, 208, 'CREATE COS', 'CREATE-COS', 'ADMIN', 'supperagentsendmoneycos', 'create-cos', 'supperagentsendmoneycos', 'SUB_MENU', 0, 0),
(393, 207, 'CARDHOLDER COS TYPE', 'CARD_TYPE', 'ADMIN', 'clientcos', 'get-cos-type', 'clientcos', 'SUB_MENU', 0, 0),
(394, 207, 'CREATE CARDHOLDER COS', 'CARD_TYPE', 'ADMIN', 'clientcos', 'create-cos', 'clientcos', 'SUB_MENU', 0, 0),
(395, 207, 'CARDHOLDER NFC CARD COS', 'CARD_TYPE', 'ADMIN', 'clientcos', 'get-nfccard-cos', 'clientcos', 'SUB_MENU', 0, 0),
(396, 207, 'UPDATE CARDHOLDER NFC CARD COS', 'CARD_TYPE', 'ADMIN', 'clientcos', 'update-cos', 'clientcos', 'SUB_MENU', 0, 0),
(397, 207, 'DEFAULT CARDHOLDER COS', 'CARD_TYPE', 'ADMIN', 'clientcos', 'get-default-client-cos', 'clientcos', 'SUB_MENU', 0, 0),
(398, 207, 'CLIENT APP COS', 'CARD_TYPE', 'ADMIN', 'clientcos', 'client-app-cos', 'clientcos', 'SUB_MENU', 0, 0),
(400, 6, 'SMS CONFIGURATIONS', 'SMS CONFIGURATIONS', 'ADMIN', 'smsconfiguration', '', 'services', 'MAIN_MENU', 11, 0),
(401, 6, 'STATION', 'STATION', 'ADMIN', 'station', '', 'services', 'MAIN_MENU', 11, 0),
(402, 401, 'VIEW STATION', 'VIEW STATION', 'ADMIN', 'station', '', 'services', 'SUB_MENU', 0, 0),
(403, 401, 'CREATE STATION', 'CREATE STATION', 'ADMIN', 'station', 'create', 'station', 'SUB_MENU', 1, 0),
(404, 401, 'UPDATE STATION', 'UPDATE STATION', 'ADMIN', 'station', 'update', 'station', 'SUB_MENU', 2, 0),
(405, 400, 'CREATE UPDATE SMS CONFIGURATIONS', 'SMS CONFIGURATIONS', 'ADMIN', 'smsconfiguration', '', 'services', 'SUB_MENU', 0, 0),
(406, 74, 'CARD SECURITY', 'CARD SECURITY', 'ADMIN', 'card', '', 'services', 'SUB_MENU', 0, 0),
(407, 74, 'NFC CARD UPLOAD STOCK/SECURITY TRACKING SYSTEM\r\n', 'CARD SECURITY', 'ADMIN', 'card', 'import-cards', 'card', 'SUB_MENU', 1, 0),
(408, 74, 'NFC CARD ALL SCAN', 'CARD SECURITY', 'ADMIN', 'card', 'scan-cards', 'card', 'SUB_MENU', 1, 0),
(409, 74, 'NFC CARD ALL ACTIVATED', 'CARD SECURITY', 'ADMIN', 'card', 'all-cards-activate', 'card', 'SUB_MENU', 1, 0),
(410, 74, 'ONE BY ONE NFC CARD ACTIVATE', 'ONE BY ONE NFC CARD ACTIVATE', 'ADMIN', 'card', 'card-activate', 'services', 'SUB_MENU', 4, 0),
(411, 88, 'EMAIL', 'Email', 'AGGREGATOR', 'emaillogs', NULL, 'reports', 'MAIN_MENU', 14, 1),
(412, 411, 'EMAIL', 'Email', 'AGGREGATOR', 'emaillogs', NULL, 'reports', 'SUB_MENU', 0, 1),
(413, 411, 'View Email', 'Email', 'AGGREGATOR', 'emaillogs', 'view-details', 'reports', 'SUB_MENU', 1, 1),
(414, 88, 'SMS', 'SMS', 'AGGREGATOR', 'smslogs', NULL, 'reports', 'MAIN_MENU', 15, 1),
(415, 414, 'SMS', 'SMS', 'AGGREGATOR', 'smslogs', NULL, 'reports', 'SUB_MENU', 0, 1),
(416, 414, 'View SMS', 'SMS_view', 'AGGREGATOR', 'smslogs', 'view-details', 'reports', 'SUB_MENU', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_type`
--

CREATE TABLE `tbl_user_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type_name` varchar(255) NOT NULL,
  `user_type` enum('ADMIN','AGGREGATOR') NOT NULL,
  `user_by_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_type`
--

INSERT INTO `tbl_user_type` (`user_type_id`, `user_type_name`, `user_type`, `user_by_id`) VALUES
(1, 'Super Admin', 'ADMIN', 0),
(10, 'Admin', 'ADMIN', 0),
(23, 'MAKER', 'ADMIN', 0),
(24, 'MAKER', 'AGGREGATOR', 1),
(25, 'CHECKER', 'AGGREGATOR', 1),
(26, 'OPERATIONS', 'AGGREGATOR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ussd_session_dealer`
--

CREATE TABLE `tbl_ussd_session_dealer` (
  `ussd_request_id` int(11) NOT NULL,
  `msisdn` varchar(100) NOT NULL,
  `subscriber_input` varchar(255) NOT NULL,
  `current_menu` varchar(255) NOT NULL,
  `previous_menu` varchar(255) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `supper_agt_id` int(11) NOT NULL,
  `ter_id` int(11) NOT NULL,
  `aggregator_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `card_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `purchase_amount` double(10,2) DEFAULT NULL,
  `vehicle_number` varchar(100) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `cardholder_mobile` varchar(255) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `agt_id` int(11) DEFAULT NULL,
  `customer_otp` varchar(10) DEFAULT NULL,
  `transaction_ref_number` varchar(100) DEFAULT NULL,
  `nfc_transaction_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utility_airtel`
--

CREATE TABLE `tbl_utility_airtel` (
  `airtel_id` int(11) NOT NULL,
  `utility_txn_id` int(11) DEFAULT NULL,
  `msisdn` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utility_mtn`
--

CREATE TABLE `tbl_utility_mtn` (
  `mtn_id` int(11) NOT NULL,
  `utility_txn_id` int(11) DEFAULT NULL,
  `msisdn` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `result_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `result_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utility_pay_bills_dstvgotv`
--

CREATE TABLE `tbl_utility_pay_bills_dstvgotv` (
  `dstv_gotv_id` int(11) NOT NULL,
  `utility_txn_id` int(11) NOT NULL,
  `msisdn` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status_description` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `beep_transaction_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `receipt_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_narration` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `response_data_payment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `response_data_status` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status_change_on` datetime DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `due_amount` double(10,2) DEFAULT NULL,
  `due_date` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utility_pay_bills_zesco`
--

CREATE TABLE `tbl_utility_pay_bills_zesco` (
  `zesco_id` int(11) NOT NULL,
  `utility_txn_id` int(11) NOT NULL,
  `zesco_transaction_reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_address` text COLLATE utf8_unicode_ci NOT NULL,
  `customer_account_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `teriff_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receipt_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_vat` double(10,2) NOT NULL,
  `total_excise_duty` double(10,2) NOT NULL,
  `total_debt_refund` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed_charge` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tv_license` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sgc_teriff_index` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meter_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `debt_bal` double(10,2) NOT NULL,
  `bal_after_pmt` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `units` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit_price` double(10,2) NOT NULL,
  `serial_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokens` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `response_message` text COLLATE utf8_unicode_ci NOT NULL,
  `request_reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `response_error_message` tinytext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utility_pay_bills_zuku`
--

CREATE TABLE `tbl_utility_pay_bills_zuku` (
  `zuku_id` int(11) NOT NULL,
  `utility_txn_id` int(11) NOT NULL,
  `subscriber_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `result_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `result_message` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utility_pay_top_star`
--

CREATE TABLE `tbl_utility_pay_top_star` (
  `topstar_id` int(11) NOT NULL,
  `utility_txn_id` int(11) DEFAULT NULL,
  `smart_card_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `oweFee` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `productFee` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `errormessage` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `resultcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utility_products`
--

CREATE TABLE `tbl_utility_products` (
  `utility_product_id` int(11) NOT NULL,
  `utility_type_id` int(11) NOT NULL,
  `end_point_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_image` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_type` enum('DIRECT_TALK_TIME','VOUCHER_TALK_TIME','PAY_BILLS') COLLATE utf8_unicode_ci NOT NULL,
  `product_commission` double(10,2) NOT NULL,
  `minimum_amount` double(10,2) NOT NULL,
  `maximum_amount` double(10,2) NOT NULL,
  `product_status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL COMMENT '1:Active,0:InActive',
  `created_by_idt_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utility_szi_gov`
--

CREATE TABLE `tbl_utility_szi_gov` (
  `szi_gov_id` int(11) NOT NULL,
  `utility_txn_id` int(11) NOT NULL,
  `case_number` varchar(2555) NOT NULL,
  `auth_status_code` varchar(255) NOT NULL,
  `auth_status_description` tinytext NOT NULL,
  `result_code` varchar(255) NOT NULL,
  `result_description` tinytext NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utility_transaction`
--

CREATE TABLE `tbl_utility_transaction` (
  `utility_txn_id` int(11) NOT NULL,
  `agt_id` int(11) NOT NULL,
  `ter_id` int(11) NOT NULL,
  `product_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_code_id` int(11) NOT NULL,
  `product_code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_ref_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `customer_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` enum('SUCCESS','FAILED','PENDING') COLLATE utf8_unicode_ci NOT NULL,
  `payment_error_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(10,2) NOT NULL,
  `fees` double(10,2) NOT NULL,
  `total_amount` double(10,2) NOT NULL,
  `transaction_on` datetime NOT NULL,
  `request_type` enum('VOUCHER_TALK_TIME','DIRECT_TALK_TIME','PAY_BILLS') COLLATE utf8_unicode_ci NOT NULL,
  `payment_mode` enum('CASH','WALLET') COLLATE utf8_unicode_ci NOT NULL,
  `supper_agt_commission` float(5,2) NOT NULL,
  `agt_commission` float(5,2) NOT NULL,
  `total_profit` float(8,2) NOT NULL,
  `system_profit` float(8,2) NOT NULL,
  `log_id` int(11) NOT NULL,
  `terminal_session_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utility_type`
--

CREATE TABLE `tbl_utility_type` (
  `utility_type_id` int(11) NOT NULL,
  `utility_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `end_point_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utility_status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL COMMENT '0:Inactive,1:Active',
  `created_by_idt_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utility_vodafone`
--

CREATE TABLE `tbl_utility_vodafone` (
  `vodafone_id` int(11) NOT NULL,
  `utility_txn_id` int(11) NOT NULL,
  `msisdn` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `response_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `response_message` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `response_data` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_utility_zamtel`
--

CREATE TABLE `tbl_utility_zamtel` (
  `zamtel_id` int(11) NOT NULL,
  `utility_txn_id` int(11) DEFAULT NULL,
  `msisdn` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_on` datetime DEFAULT NULL,
  `reversal_transaction_id` varchar(255) DEFAULT NULL,
  `reversal_type` varchar(255) DEFAULT NULL,
  `reversal_date` varchar(255) DEFAULT NULL,
  `reversal_message` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_value_type`
--

CREATE TABLE `tbl_value_type` (
  `value_type_id` int(11) NOT NULL,
  `value_type` enum('MONEY_SENDING_REASON') COLLATE utf8_unicode_ci NOT NULL,
  `value_type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL COMMENT '1:active, 0:Inactive',
  `created_on` datetime NOT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle`
--

CREATE TABLE `tbl_vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_name` varchar(255) DEFAULT NULL,
  `vehicle_number` varchar(255) DEFAULT NULL,
  `vehicle_color` varchar(255) DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  `vehicle_status` enum('ACT','INACT') DEFAULT NULL,
  `supper_agt_id` int(11) DEFAULT NULL COMMENT 'this is client id from tbl_client',
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_mapping`
--

CREATE TABLE `tbl_vehicle_mapping` (
  `vehicle_mapping_id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_tag`
--

CREATE TABLE `tbl_vehicle_tag` (
  `vehicle_tag_id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `tag_code` varchar(255) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') DEFAULT 'ACTIVE',
  `created_by_idt_id` int(11) DEFAULT NULL,
  `updated_by_idt_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_admin_consolidated_nfc_card_transaction_reports`
-- (See below for the actual view)
--
CREATE TABLE `v_admin_consolidated_nfc_card_transaction_reports` (
`created_date` varchar(10)
,`txn_amount` double(19,2)
,`liters` double
,`fees` double(19,2)
,`tax_rebate` double(19,2)
,`discount` double(19,2)
,`aggregator_name` varchar(201)
,`aggregator_business_name` varchar(255)
,`aggregator_code` varchar(50)
,`aggregator_id` int(11)
,`num_records` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_admin_nfc_card_issue_reports`
-- (See below for the actual view)
--
CREATE TABLE `v_admin_nfc_card_issue_reports` (
`aggregator_name` varchar(201)
,`aggregator_business_name` varchar(255)
,`aggregator_code` varchar(50)
,`card_name` varchar(255)
,`number_cards` bigint(21)
,`aggregator_id` int(11)
,`master_card_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_agent_consolidated_report`
-- (See below for the actual view)
--
CREATE TABLE `v_agent_consolidated_report` (
`agt_id` int(11)
,`amount` double(10,2)
,`txn_id` int(11)
,`created_on` datetime
,`ter_id` int(11)
,`terminal_session_id` int(11)
,`txn_type` varchar(17)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_agent_nfc_card_issue_reports`
-- (See below for the actual view)
--
CREATE TABLE `v_agent_nfc_card_issue_reports` (
`client_id` int(11)
,`created_by_idt_id` int(11)
,`created_on` datetime
,`card_number` varchar(255)
,`clientname` varchar(511)
,`mobile_number` varchar(100)
,`id_number` varchar(255)
,`aggregator_name` varchar(201)
,`aggregator_business_name` varchar(255)
,`aggregator_code` varchar(50)
,`aggregator_id` int(11)
,`master_card_id` int(11)
,`card_name` varchar(255)
,`ter_alias` varchar(100)
,`ter_number` varchar(100)
,`employeename` text
,`agt_code` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_aggregator_admin_settlement_reports`
-- (See below for the actual view)
--
CREATE TABLE `v_aggregator_admin_settlement_reports` (
`created_date` varchar(10)
,`txn_amount` double(19,2)
,`liters` double
,`fees` double(19,2)
,`rate` double(10,2)
,`tax_rebate` double(19,2)
,`discount` double(19,2)
,`aggregator_id` bigint(11)
,`cumulative_amount` double(19,2)
,`nfc_settled_id` bigint(11)
,`settled_date_time` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_aggregator_card_history`
-- (See below for the actual view)
--
CREATE TABLE `v_aggregator_card_history` (
`card_log_id` int(11)
,`created_on` datetime
,`opening_balance` double(10,2)
,`closing_balance` double(10,2)
,`amount` double(10,2)
,`txn_type` enum('REVARSAL','TRANSACTION','CASHIN','CASHOUT','TRANSFER_BALANCE','LOAN_TRANSFER_BALANCE','LOAN_REVERSAL')
,`txn_desc` text
,`log_type` enum('CREDIT','DEBIT')
,`nfcamount` double(10,2)
,`product` varchar(765)
,`card_number` varchar(255)
,`card_serial_number` varchar(191)
,`station` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_aggregator_card_history_oldd`
-- (See below for the actual view)
--
CREATE TABLE `v_aggregator_card_history_oldd` (
`card_log_id` int(11)
,`created_on` datetime
,`opening_balance` double(10,2)
,`closing_balance` double(10,2)
,`amount` double(10,2)
,`txn_type` enum('REVARSAL','TRANSACTION','CASHIN','CASHOUT','TRANSFER_BALANCE','LOAN_TRANSFER_BALANCE','LOAN_REVERSAL')
,`txn_desc` text
,`log_type` enum('CREDIT','DEBIT')
,`nfcamount` double(10,2)
,`product` varchar(765)
,`card_number` varchar(255)
,`card_serial_number` varchar(191)
,`station` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_aggregator_consolidated_nfc_card_transaction_reports`
-- (See below for the actual view)
--
CREATE TABLE `v_aggregator_consolidated_nfc_card_transaction_reports` (
`created_date` varchar(10)
,`txn_amount` double(19,2)
,`liters` double
,`fees` double(19,2)
,`tax_rebate` double(19,2)
,`discount` double(19,2)
,`agent_name` varchar(201)
,`agent_business_name` varchar(255)
,`agent_code` varchar(50)
,`station_name` varchar(255)
,`supper_agent_id` int(11)
,`aggregator_id` bigint(11)
,`num_records` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_aggregator_consolidated_nfc_card_transaction_reportsold`
-- (See below for the actual view)
--
CREATE TABLE `v_aggregator_consolidated_nfc_card_transaction_reportsold` (
`created_date` varchar(10)
,`txn_amount` double(19,2)
,`liters` double
,`fees` double(19,2)
,`tax_rebate` double(19,2)
,`discount` double(19,2)
,`agent_name` varchar(201)
,`agent_business_name` varchar(255)
,`agent_code` varchar(50)
,`station_name` int(11)
,`supper_agent_id` int(11)
,`aggregator_id` bigint(11)
,`num_records` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_aggregator_discount_reports`
-- (See below for the actual view)
--
CREATE TABLE `v_aggregator_discount_reports` (
`nfc_txn_id` int(11)
,`created_date` datetime
,`txn_amount` double(10,2)
,`total_amount` double(10,2)
,`liters` varchar(10)
,`fees` double(10,2)
,`tax_rebate` double(10,2)
,`discount` double(10,2)
,`txn_ref_number` varchar(255)
,`payment_status` enum('SUCCESS','FAILED','REVERSAL')
,`aggregator_id` int(11)
,`supper_agt_id` int(11)
,`mac_address` varchar(100)
,`product` varchar(765)
,`created_by_idt_id` int(11)
,`master_card_id` int(11)
,`card_number` varchar(255)
,`card_serial_number` varchar(191)
,`client_name` varchar(511)
,`client_mobile_number` varchar(100)
,`main_agent_id` int(11)
,`main_agent_name` varchar(255)
,`card_type` varchar(255)
,`aggrgator_business_name` varchar(255)
,`aggregator_code` varchar(50)
,`agent_business_name` varchar(255)
,`agent_name` varchar(201)
,`agent_code` varchar(50)
,`station` int(11)
,`employee_name` text
,`employee_code` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_aggregator_nfc_card_issue_reports`
-- (See below for the actual view)
--
CREATE TABLE `v_aggregator_nfc_card_issue_reports` (
`agent_name` varchar(201)
,`agent_business_name` varchar(255)
,`agent_code` varchar(50)
,`station` int(11)
,`card_name` varchar(255)
,`number_cards` bigint(21)
,`supper_agt_id` int(11)
,`created_by_idt_id` int(11)
,`master_card_id` int(11)
,`aggregator_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_aggregator_nfc_card_issue_reports_export`
-- (See below for the actual view)
--
CREATE TABLE `v_aggregator_nfc_card_issue_reports_export` (
`client_id` int(11)
,`created_by_idt_id` int(11)
,`created_on` datetime
,`clientname` varchar(511)
,`mobile_number` varchar(100)
,`id_number` varchar(255)
,`agent_name` varchar(201)
,`agent_business_name` varchar(255)
,`agent_code` varchar(50)
,`station` int(11)
,`aggregator_id` int(11)
,`master_card_id` int(11)
,`card_name` varchar(255)
,`ter_alias` varchar(100)
,`ter_number` varchar(100)
,`employeename` text
,`agt_code` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_aggregator_promostional_discount_reports`
-- (See below for the actual view)
--
CREATE TABLE `v_aggregator_promostional_discount_reports` (
`nfc_txn_id` int(11)
,`created_date` datetime
,`txn_amount` double(10,2)
,`total_amount` double(10,2)
,`liters` varchar(10)
,`fees` double(10,2)
,`tax_rebate` double(10,2)
,`promotinal_discount_amount` double(10,2)
,`promotinal_value` varchar(255)
,`promotinal_type` varchar(255)
,`promotinal_aggregator_value` varchar(255)
,`promotinal_dealer_value` varchar(255)
,`promotional_aggregator_amount` double(10,2)
,`promotional_dealer_amount` double(10,2)
,`nfc_settled_status` enum('0','1')
,`amount_tendered` double(10,2)
,`discount` double(10,2)
,`txn_ref_number` varchar(255)
,`payment_status` enum('SUCCESS','FAILED','REVERSAL')
,`aggregator_id` int(11)
,`supper_agt_id` int(11)
,`mac_address` varchar(100)
,`product` varchar(765)
,`created_by_idt_id` int(11)
,`master_card_id` int(11)
,`card_number` varchar(255)
,`card_serial_number` varchar(191)
,`client_name` varchar(511)
,`client_mobile_number` varchar(100)
,`main_agent_id` int(11)
,`main_agent_name` varchar(255)
,`card_type` varchar(255)
,`aggrgator_business_name` varchar(255)
,`aggregator_code` varchar(50)
,`agent_business_name` varchar(255)
,`agent_name` varchar(201)
,`agent_code` varchar(50)
,`station` int(11)
,`employee_name` text
,`employee_code` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_aggregator_promostional_discount_reports_old`
-- (See below for the actual view)
--
CREATE TABLE `v_aggregator_promostional_discount_reports_old` (
`nfc_txn_id` int(11)
,`created_date` datetime
,`txn_amount` double(10,2)
,`total_amount` double(10,2)
,`liters` varchar(10)
,`fees` double(10,2)
,`tax_rebate` double(10,2)
,`promotinal_discount_amount` double(10,2)
,`promotinal_value` varchar(255)
,`promotinal_type` varchar(255)
,`promotinal_aggregator_value` varchar(255)
,`promotinal_dealer_value` varchar(255)
,`nfc_settled_status` enum('0','1')
,`amount_tendered` double(10,2)
,`discount` double(10,2)
,`txn_ref_number` varchar(255)
,`payment_status` enum('SUCCESS','FAILED','REVERSAL')
,`aggregator_id` int(11)
,`supper_agt_id` int(11)
,`mac_address` varchar(100)
,`product` varchar(765)
,`created_by_idt_id` int(11)
,`master_card_id` int(11)
,`card_number` varchar(255)
,`card_serial_number` varchar(191)
,`client_name` varchar(511)
,`client_mobile_number` varchar(100)
,`main_agent_id` int(11)
,`main_agent_name` varchar(255)
,`card_type` varchar(255)
,`aggrgator_business_name` varchar(255)
,`aggregator_code` varchar(50)
,`agent_business_name` varchar(255)
,`agent_name` varchar(201)
,`agent_code` varchar(50)
,`station` int(11)
,`employee_name` text
,`employee_code` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_aggregator_rebate_reports`
-- (See below for the actual view)
--
CREATE TABLE `v_aggregator_rebate_reports` (
`nfc_txn_id` int(11)
,`created_date` datetime
,`txn_amount` double(10,2)
,`total_amount` double(10,2)
,`liters` varchar(10)
,`fees` double(10,2)
,`tax_rebate` double(10,2)
,`discount` double(10,2)
,`txn_ref_number` varchar(255)
,`payment_status` enum('SUCCESS','FAILED','REVERSAL')
,`aggregator_id` int(11)
,`supper_agt_id` int(11)
,`mac_address` varchar(100)
,`product` varchar(765)
,`created_by_idt_id` int(11)
,`master_card_id` int(11)
,`card_number` varchar(255)
,`card_serial_number` varchar(191)
,`client_name` varchar(511)
,`client_mobile_number` varchar(100)
,`main_agent_id` int(11)
,`main_agent_name` varchar(255)
,`card_type` varchar(255)
,`aggrgator_business_name` varchar(255)
,`aggregator_code` varchar(50)
,`agent_business_name` varchar(255)
,`agent_name` varchar(201)
,`agent_code` varchar(50)
,`station` varchar(255)
,`employee_name` text
,`employee_code` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_aggregator_rebate_reports_oldd`
-- (See below for the actual view)
--
CREATE TABLE `v_aggregator_rebate_reports_oldd` (
`nfc_txn_id` int(11)
,`created_date` datetime
,`txn_amount` double(10,2)
,`total_amount` double(10,2)
,`liters` varchar(10)
,`fees` double(10,2)
,`tax_rebate` double(10,2)
,`discount` double(10,2)
,`txn_ref_number` varchar(255)
,`payment_status` enum('SUCCESS','FAILED','REVERSAL')
,`aggregator_id` int(11)
,`supper_agt_id` int(11)
,`mac_address` varchar(100)
,`product` varchar(765)
,`created_by_idt_id` int(11)
,`master_card_id` int(11)
,`card_number` varchar(255)
,`card_serial_number` varchar(191)
,`client_name` varchar(511)
,`client_mobile_number` varchar(100)
,`main_agent_id` int(11)
,`main_agent_name` varchar(255)
,`card_type` varchar(255)
,`aggrgator_business_name` varchar(255)
,`aggregator_code` varchar(50)
,`agent_business_name` varchar(255)
,`agent_name` varchar(201)
,`agent_code` varchar(50)
,`station` int(11)
,`employee_name` text
,`employee_code` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_nfc_card_transaction_reports`
-- (See below for the actual view)
--
CREATE TABLE `v_nfc_card_transaction_reports` (
`nfc_txn_id` int(11)
,`created_date` datetime
,`txn_amount` double(10,2)
,`total_amount` double(10,2)
,`liters` varchar(10)
,`fees` double(10,2)
,`tax_rebate` double(10,2)
,`discount` double(10,2)
,`txn_ref_number` varchar(255)
,`payment_status` enum('SUCCESS','FAILED','REVERSAL')
,`aggregator_id` int(11)
,`supper_agt_id` int(11)
,`mac_address` varchar(100)
,`product` varchar(765)
,`created_by_idt_id` int(11)
,`master_card_id` int(11)
,`card_number` varchar(255)
,`card_serial_number` varchar(191)
,`client_name` varchar(511)
,`client_mobile_number` varchar(100)
,`main_agent_id` int(11)
,`main_agent_name` varchar(255)
,`card_type` varchar(255)
,`aggrgator_business_name` varchar(255)
,`aggregator_code` varchar(50)
,`agent_business_name` varchar(255)
,`agent_name` varchar(201)
,`agent_code` varchar(50)
,`station` varchar(255)
,`employee_name` text
,`employee_code` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_nfc_card_transaction_reportsooo`
-- (See below for the actual view)
--
CREATE TABLE `v_nfc_card_transaction_reportsooo` (
`nfc_txn_id` int(11)
,`created_date` datetime
,`txn_amount` double(10,2)
,`total_amount` double(10,2)
,`liters` varchar(10)
,`fees` double(10,2)
,`tax_rebate` double(10,2)
,`discount` double(10,2)
,`txn_ref_number` varchar(255)
,`payment_status` enum('SUCCESS','FAILED','REVERSAL')
,`aggregator_id` int(11)
,`supper_agt_id` int(11)
,`mac_address` varchar(100)
,`product` varchar(765)
,`created_by_idt_id` int(11)
,`master_card_id` int(11)
,`card_number` varchar(255)
,`card_serial_number` varchar(191)
,`client_name` varchar(511)
,`client_mobile_number` varchar(100)
,`main_agent_id` int(11)
,`main_agent_name` varchar(255)
,`card_type` varchar(255)
,`aggrgator_business_name` varchar(255)
,`aggregator_code` varchar(50)
,`agent_business_name` varchar(255)
,`agent_name` varchar(201)
,`agent_code` varchar(50)
,`station` varchar(255)
,`employee_name` text
,`employee_code` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_nfc_card_transaction_reports_old`
-- (See below for the actual view)
--
CREATE TABLE `v_nfc_card_transaction_reports_old` (
`nfc_txn_id` int(11)
,`created_date` datetime
,`txn_amount` double(10,2)
,`total_amount` double(10,2)
,`liters` varchar(10)
,`fees` double(10,2)
,`tax_rebate` double(10,2)
,`discount` double(10,2)
,`txn_ref_number` varchar(255)
,`payment_status` enum('SUCCESS','FAILED','REVERSAL')
,`aggregator_id` int(11)
,`supper_agt_id` int(11)
,`mac_address` varchar(100)
,`product` varchar(765)
,`created_by_idt_id` int(11)
,`master_card_id` int(11)
,`card_number` varchar(255)
,`card_serial_number` varchar(191)
,`client_name` varchar(511)
,`client_mobile_number` varchar(100)
,`main_agent_id` int(11)
,`main_agent_name` varchar(255)
,`card_type` varchar(255)
,`aggrgator_business_name` varchar(255)
,`aggregator_code` varchar(50)
,`agent_business_name` varchar(255)
,`agent_name` varchar(201)
,`agent_code` varchar(50)
,`station` int(11)
,`employee_name` text
,`employee_code` varchar(150)
);

-- --------------------------------------------------------

--
-- Structure for view `v_admin_consolidated_nfc_card_transaction_reports`
--
DROP TABLE IF EXISTS `v_admin_consolidated_nfc_card_transaction_reports`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_admin_consolidated_nfc_card_transaction_reports`  AS  select substr(`tbl_nfc_transaction`.`transaction_on`,1,10) AS `created_date`,sum(`tbl_nfc_transaction`.`amount`) AS `txn_amount`,sum(`tbl_nfc_transaction`.`quantity`) AS `liters`,sum(`tbl_nfc_transaction`.`fees`) AS `fees`,sum(`tbl_nfc_transaction`.`tax_discount`) AS `tax_rebate`,sum(`tbl_nfc_transaction`.`product_discount`) AS `discount`,concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `aggregator_name`,`tbl_supper_agent`.`agt_business_name` AS `aggregator_business_name`,`tbl_supper_agent`.`agt_code` AS `aggregator_code`,`tbl_nfc_transaction`.`aggregator_id` AS `aggregator_id`,count(`tbl_nfc_transaction`.`transaction_on`) AS `num_records` from (`tbl_nfc_transaction` join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`))) group by substr(`tbl_nfc_transaction`.`transaction_on`,1,10),`tbl_supper_agent`.`supper_agt_id` order by substr(`tbl_nfc_transaction`.`transaction_on`,1,10) desc ;

-- --------------------------------------------------------

--
-- Structure for view `v_admin_nfc_card_issue_reports`
--
DROP TABLE IF EXISTS `v_admin_nfc_card_issue_reports`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_admin_nfc_card_issue_reports`  AS  select concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `aggregator_name`,`tbl_supper_agent`.`agt_business_name` AS `aggregator_business_name`,`tbl_supper_agent`.`agt_code` AS `aggregator_code`,`tbl_master_card`.`card_name` AS `card_name`,count(`tbl_client_card`.`client_card_id`) AS `number_cards`,`tbl_client_card`.`aggregator_id` AS `aggregator_id`,`tbl_client_card`.`master_card_id` AS `master_card_id` from ((`tbl_client_card` join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_client_card`.`aggregator_id`))) join `tbl_master_card` on((`tbl_master_card`.`master_card_id` = `tbl_client_card`.`master_card_id`))) group by `tbl_supper_agent`.`supper_agt_id`,`tbl_master_card`.`master_card_id` ;

-- --------------------------------------------------------

--
-- Structure for view `v_agent_consolidated_report`
--
DROP TABLE IF EXISTS `v_agent_consolidated_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_agent_consolidated_report`  AS  select `tbl_utility_transaction`.`agt_id` AS `agt_id`,`tbl_utility_transaction`.`amount` AS `amount`,`tbl_utility_transaction`.`utility_txn_id` AS `txn_id`,`tbl_utility_transaction`.`transaction_on` AS `created_on`,`tbl_utility_transaction`.`ter_id` AS `ter_id`,`tbl_utility_transaction`.`terminal_session_id` AS `terminal_session_id`,`tbl_utility_transaction`.`request_type` AS `txn_type` from `tbl_utility_transaction` union all select `tbl_send_money`.`agt_id` AS `agt_id`,`tbl_send_money`.`sent_amount` AS `sent_amount`,`tbl_send_money`.`send_money_id` AS `send_money_id`,`tbl_send_money`.`transaction_on` AS `transaction_on`,`tbl_send_money`.`ter_id` AS `ter_id`,`tbl_send_money`.`terminal_session_id` AS `terminal_session_id`,'send-money' AS `txn_type` from `tbl_send_money` union all select `tbl_send_money_redeem_log`.`agt_id` AS `agt_id`,`tbl_send_money_redeem_log`.`amount` AS `amount`,`tbl_send_money_redeem_log`.`redeem_log_id` AS `redeem_log_id`,`tbl_send_money_redeem_log`.`created_on` AS `created_on`,`tbl_send_money_redeem_log`.`ter_id` AS `ter_id`,`tbl_send_money_redeem_log`.`terminal_session_id` AS `terminal_session_id`,'receive-money' AS `txn_type` from `tbl_send_money_redeem_log` ;

-- --------------------------------------------------------

--
-- Structure for view `v_agent_nfc_card_issue_reports`
--
DROP TABLE IF EXISTS `v_agent_nfc_card_issue_reports`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_agent_nfc_card_issue_reports`  AS  select `tbl_client_card`.`client_id` AS `client_id`,`tbl_client_card`.`created_by_idt_id` AS `created_by_idt_id`,`tbl_client_card`.`created_on` AS `created_on`,`tbl_client_card`.`card_unique_code` AS `card_number`,concat(`tbl_client`.`first_name`,' ',`tbl_client`.`last_name`) AS `clientname`,`tbl_client`.`mobile_number` AS `mobile_number`,`tbl_client`.`id_number` AS `id_number`,concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `aggregator_name`,`tbl_supper_agent`.`agt_business_name` AS `aggregator_business_name`,`tbl_supper_agent`.`agt_code` AS `aggregator_code`,`tbl_client_card`.`aggregator_id` AS `aggregator_id`,`tbl_master_card`.`master_card_id` AS `master_card_id`,`tbl_master_card`.`card_name` AS `card_name`,`tbl_terminal`.`ter_alias` AS `ter_alias`,`tbl_terminal`.`ter_number` AS `ter_number`,concat(`tbl_agent`.`agt_first_name`,' ',`tbl_agent`.`agt_last_name`) AS `employeename`,`tbl_agent`.`agt_code` AS `agt_code` from (((((`tbl_client_card` join `tbl_client` on((`tbl_client_card`.`client_id` = `tbl_client`.`client_id`))) join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_client_card`.`aggregator_id`))) join `tbl_master_card` on((`tbl_master_card`.`master_card_id` = `tbl_client_card`.`master_card_id`))) join `tbl_terminal` on((`tbl_terminal`.`ter_id` = `tbl_client_card`.`ter_id`))) join `tbl_agent` on((`tbl_agent`.`agt_id` = `tbl_client_card`.`agt_id`))) order by `tbl_client_card`.`created_on` ;

-- --------------------------------------------------------

--
-- Structure for view `v_aggregator_admin_settlement_reports`
--
DROP TABLE IF EXISTS `v_aggregator_admin_settlement_reports`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_aggregator_admin_settlement_reports`  AS  select substr(`tbl_nfc_transaction`.`transaction_on`,1,10) AS `created_date`,sum(`tbl_nfc_transaction`.`amount`) AS `txn_amount`,sum(`tbl_nfc_transaction`.`quantity`) AS `liters`,sum(`tbl_nfc_transaction`.`fees`) AS `fees`,any_value(`tbl_nfc_transaction`.`product_unit_rate`) AS `rate`,sum(`tbl_nfc_transaction`.`tax_discount`) AS `tax_rebate`,sum(`tbl_nfc_transaction`.`product_discount`) AS `discount`,any_value(`tbl_nfc_transaction`.`aggregator_id`) AS `aggregator_id`,(select sum(`tbl_nfc_transaction`.`amount`) from `tbl_nfc_transaction` where (cast(`tbl_nfc_transaction`.`transaction_on` as date) <= `created_date`)) AS `cumulative_amount`,any_value(`tbl_nfc_settlement`.`nfc_settled_id`) AS `nfc_settled_id`,`tbl_nfc_settlement`.`settled_date_time` AS `settled_date_time` from (`tbl_nfc_transaction` join `tbl_nfc_settlement` on((`tbl_nfc_settlement`.`settled_on` = substr(`tbl_nfc_transaction`.`transaction_on`,1,10)))) group by substr(`tbl_nfc_transaction`.`transaction_on`,1,10),`tbl_nfc_settlement`.`settled_date_time` order by substr(`tbl_nfc_transaction`.`transaction_on`,1,10) ;

-- --------------------------------------------------------

--
-- Structure for view `v_aggregator_card_history`
--
DROP TABLE IF EXISTS `v_aggregator_card_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_aggregator_card_history`  AS  select `tbl_client_card_log`.`card_log_id` AS `card_log_id`,`tbl_client_card_log`.`created_on` AS `created_on`,`tbl_client_card_log`.`opening_balance` AS `opening_balance`,`tbl_client_card_log`.`closing_balance` AS `closing_balance`,`tbl_client_card_log`.`amount` AS `amount`,`tbl_client_card_log`.`txn_type` AS `txn_type`,`tbl_client_card_log`.`txn_desc` AS `txn_desc`,`tbl_client_card_log`.`log_type` AS `log_type`,`tbl_nfc_transaction`.`amount` AS `nfcamount`,`tbl_nfc_payment_type`.`nfc_payement_type` AS `product`,`tbl_client_card`.`card_unique_code` AS `card_number`,`tbl_cards`.`card_number` AS `card_serial_number`,`tbl_agent_station`.`station_name` AS `station` from ((((((`tbl_client_card_log` join `tbl_nfc_transaction` on((`tbl_nfc_transaction`.`card_log_id` = `tbl_client_card_log`.`card_log_id`))) join `tbl_client_card` on((`tbl_client_card`.`client_card_id` = `tbl_client_card_log`.`client_card_id`))) join `tbl_cards` on((`tbl_cards`.`card_id` = `tbl_client_card`.`card_id`))) join `tbl_nfc_payment_type` on((`tbl_nfc_payment_type`.`nfc_payment_type_id` = `tbl_nfc_transaction`.`nfc_payment_type_id`))) join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`supper_agt_id`))) join `tbl_agent_station` on((`tbl_agent_station`.`station_id` = `tbl_supper_agent`.`station`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_aggregator_card_history_oldd`
--
DROP TABLE IF EXISTS `v_aggregator_card_history_oldd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_aggregator_card_history_oldd`  AS  select `tbl_client_card_log`.`card_log_id` AS `card_log_id`,`tbl_client_card_log`.`created_on` AS `created_on`,`tbl_client_card_log`.`opening_balance` AS `opening_balance`,`tbl_client_card_log`.`closing_balance` AS `closing_balance`,`tbl_client_card_log`.`amount` AS `amount`,`tbl_client_card_log`.`txn_type` AS `txn_type`,`tbl_client_card_log`.`txn_desc` AS `txn_desc`,`tbl_client_card_log`.`log_type` AS `log_type`,`tbl_nfc_transaction`.`amount` AS `nfcamount`,`tbl_nfc_payment_type`.`nfc_payement_type` AS `product`,`tbl_client_card`.`card_unique_code` AS `card_number`,`tbl_cards`.`card_number` AS `card_serial_number`,`tbl_supper_agent`.`station` AS `station` from (((((`tbl_client_card_log` join `tbl_nfc_transaction` on((`tbl_nfc_transaction`.`card_log_id` = `tbl_client_card_log`.`card_log_id`))) join `tbl_client_card` on((`tbl_client_card`.`client_card_id` = `tbl_client_card_log`.`client_card_id`))) join `tbl_cards` on((`tbl_cards`.`card_id` = `tbl_client_card`.`card_id`))) join `tbl_nfc_payment_type` on((`tbl_nfc_payment_type`.`nfc_payment_type_id` = `tbl_nfc_transaction`.`nfc_payment_type_id`))) join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`supper_agt_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_aggregator_consolidated_nfc_card_transaction_reports`
--
DROP TABLE IF EXISTS `v_aggregator_consolidated_nfc_card_transaction_reports`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_aggregator_consolidated_nfc_card_transaction_reports`  AS  select substr(`tbl_nfc_transaction`.`transaction_on`,1,10) AS `created_date`,sum(`tbl_nfc_transaction`.`amount`) AS `txn_amount`,sum(`tbl_nfc_transaction`.`quantity`) AS `liters`,sum(`tbl_nfc_transaction`.`fees`) AS `fees`,sum(`tbl_nfc_transaction`.`tax_discount`) AS `tax_rebate`,sum(`tbl_nfc_transaction`.`product_discount`) AS `discount`,concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `agent_name`,`tbl_supper_agent`.`agt_business_name` AS `agent_business_name`,`tbl_supper_agent`.`agt_code` AS `agent_code`,`tbl_agent_station`.`station_name` AS `station_name`,`tbl_supper_agent`.`supper_agt_id` AS `supper_agent_id`,any_value(`tbl_nfc_transaction`.`aggregator_id`) AS `aggregator_id`,count(`tbl_nfc_transaction`.`transaction_on`) AS `num_records` from ((`tbl_nfc_transaction` join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`supper_agt_id`))) join `tbl_agent_station` on((`tbl_agent_station`.`station_id` = `tbl_supper_agent`.`station`))) group by substr(`tbl_nfc_transaction`.`transaction_on`,1,10),`tbl_supper_agent`.`supper_agt_id` order by substr(`tbl_nfc_transaction`.`transaction_on`,1,10) ;

-- --------------------------------------------------------

--
-- Structure for view `v_aggregator_consolidated_nfc_card_transaction_reportsold`
--
DROP TABLE IF EXISTS `v_aggregator_consolidated_nfc_card_transaction_reportsold`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_aggregator_consolidated_nfc_card_transaction_reportsold`  AS  select substr(`tbl_nfc_transaction`.`transaction_on`,1,10) AS `created_date`,sum(`tbl_nfc_transaction`.`amount`) AS `txn_amount`,sum(`tbl_nfc_transaction`.`quantity`) AS `liters`,sum(`tbl_nfc_transaction`.`fees`) AS `fees`,sum(`tbl_nfc_transaction`.`tax_discount`) AS `tax_rebate`,sum(`tbl_nfc_transaction`.`product_discount`) AS `discount`,concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `agent_name`,`tbl_supper_agent`.`agt_business_name` AS `agent_business_name`,`tbl_supper_agent`.`agt_code` AS `agent_code`,`tbl_supper_agent`.`station` AS `station_name`,`tbl_supper_agent`.`supper_agt_id` AS `supper_agent_id`,any_value(`tbl_nfc_transaction`.`aggregator_id`) AS `aggregator_id`,count(`tbl_nfc_transaction`.`transaction_on`) AS `num_records` from (`tbl_nfc_transaction` join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`supper_agt_id`))) group by substr(`tbl_nfc_transaction`.`transaction_on`,1,10),`tbl_supper_agent`.`supper_agt_id` order by substr(`tbl_nfc_transaction`.`transaction_on`,1,10) ;

-- --------------------------------------------------------

--
-- Structure for view `v_aggregator_discount_reports`
--
DROP TABLE IF EXISTS `v_aggregator_discount_reports`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_aggregator_discount_reports`  AS  select `tbl_nfc_transaction`.`nfc_txn_id` AS `nfc_txn_id`,`tbl_nfc_transaction`.`transaction_on` AS `created_date`,`tbl_nfc_transaction`.`amount` AS `txn_amount`,`tbl_nfc_transaction`.`total_amount` AS `total_amount`,`tbl_nfc_transaction`.`quantity` AS `liters`,`tbl_nfc_transaction`.`fees` AS `fees`,`tbl_nfc_transaction`.`tax_discount` AS `tax_rebate`,`tbl_nfc_transaction`.`product_discount` AS `discount`,`tbl_nfc_transaction`.`payment_ref_number` AS `txn_ref_number`,`tbl_nfc_transaction`.`payment_status` AS `payment_status`,`tbl_nfc_transaction`.`aggregator_id` AS `aggregator_id`,`tbl_nfc_transaction`.`supper_agt_id` AS `supper_agt_id`,`tbl_terminal`.`ter_number` AS `mac_address`,`tbl_nfc_payment_type`.`nfc_payement_type` AS `product`,`tbl_client_card`.`created_by_idt_id` AS `created_by_idt_id`,`tbl_client_card`.`master_card_id` AS `master_card_id`,`tbl_client_card`.`card_unique_code` AS `card_number`,`tbl_cards`.`card_number` AS `card_serial_number`,concat(`tbl_client`.`first_name`,' ',`tbl_client`.`last_name`) AS `client_name`,`tbl_client`.`mobile_number` AS `client_mobile_number`,`tbl_client`.`supper_agt_id` AS `main_agent_id`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `main_agent_id`)) AS `main_agent_name`,(select `tbl_master_card`.`card_name` from `tbl_master_card` where (`tbl_master_card`.`master_card_id` = `tbl_client_card`.`master_card_id`)) AS `card_type`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggrgator_business_name`,(select `tbl_supper_agent`.`agt_code` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggregator_code`,`tbl_supper_agent`.`agt_business_name` AS `agent_business_name`,concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `agent_name`,`tbl_supper_agent`.`agt_code` AS `agent_code`,`tbl_supper_agent`.`station` AS `station`,concat(`tbl_agent`.`agt_first_name`,' ',`tbl_agent`.`agt_last_name`) AS `employee_name`,`tbl_agent`.`agt_code` AS `employee_code` from (((((((`tbl_nfc_transaction` join `tbl_nfc_payment_type` on((`tbl_nfc_payment_type`.`nfc_payment_type_id` = `tbl_nfc_transaction`.`nfc_payment_type_id`))) join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`supper_agt_id`))) join `tbl_agent` on((`tbl_agent`.`agt_id` = `tbl_nfc_transaction`.`agt_id`))) join `tbl_client` on((`tbl_client`.`client_id` = `tbl_nfc_transaction`.`client_id`))) join `tbl_client_card` on((`tbl_client_card`.`client_card_id` = `tbl_nfc_transaction`.`client_card_id`))) join `tbl_cards` on((`tbl_cards`.`card_id` = `tbl_client_card`.`card_id`))) join `tbl_terminal` on((`tbl_terminal`.`ter_id` = `tbl_nfc_transaction`.`ter_id`))) where (`tbl_nfc_transaction`.`product_discount` > 0) order by `tbl_nfc_transaction`.`nfc_txn_id` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v_aggregator_nfc_card_issue_reports`
--
DROP TABLE IF EXISTS `v_aggregator_nfc_card_issue_reports`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_aggregator_nfc_card_issue_reports`  AS  select concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `agent_name`,`tbl_supper_agent`.`agt_business_name` AS `agent_business_name`,`tbl_supper_agent`.`agt_code` AS `agent_code`,`tbl_supper_agent`.`station` AS `station`,`tbl_master_card`.`card_name` AS `card_name`,count(`tbl_client_card`.`client_card_id`) AS `number_cards`,`tbl_supper_agent`.`supper_agt_id` AS `supper_agt_id`,`tbl_client_card`.`created_by_idt_id` AS `created_by_idt_id`,`tbl_client_card`.`master_card_id` AS `master_card_id`,`tbl_client_card`.`aggregator_id` AS `aggregator_id` from ((`tbl_client_card` join `tbl_supper_agent` on((`tbl_supper_agent`.`idt_id` = `tbl_client_card`.`created_by_idt_id`))) join `tbl_master_card` on((`tbl_master_card`.`master_card_id` = `tbl_client_card`.`master_card_id`))) group by `tbl_supper_agent`.`supper_agt_id`,`tbl_master_card`.`master_card_id`,`tbl_client_card`.`aggregator_id` ;

-- --------------------------------------------------------

--
-- Structure for view `v_aggregator_nfc_card_issue_reports_export`
--
DROP TABLE IF EXISTS `v_aggregator_nfc_card_issue_reports_export`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_aggregator_nfc_card_issue_reports_export`  AS  select `tbl_client_card`.`client_id` AS `client_id`,`tbl_client_card`.`created_by_idt_id` AS `created_by_idt_id`,`tbl_client_card`.`created_on` AS `created_on`,concat(`tbl_client`.`first_name`,' ',`tbl_client`.`last_name`) AS `clientname`,`tbl_client`.`mobile_number` AS `mobile_number`,`tbl_client`.`id_number` AS `id_number`,concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `agent_name`,`tbl_supper_agent`.`agt_business_name` AS `agent_business_name`,`tbl_supper_agent`.`agt_code` AS `agent_code`,`tbl_supper_agent`.`station` AS `station`,`tbl_client_card`.`aggregator_id` AS `aggregator_id`,`tbl_master_card`.`master_card_id` AS `master_card_id`,`tbl_master_card`.`card_name` AS `card_name`,`tbl_terminal`.`ter_alias` AS `ter_alias`,`tbl_terminal`.`ter_number` AS `ter_number`,concat(`tbl_agent`.`agt_first_name`,' ',`tbl_agent`.`agt_last_name`) AS `employeename`,`tbl_agent`.`agt_code` AS `agt_code` from (((((`tbl_client_card` join `tbl_client` on((`tbl_client_card`.`client_id` = `tbl_client`.`client_id`))) join `tbl_supper_agent` on((`tbl_supper_agent`.`idt_id` = `tbl_client_card`.`created_by_idt_id`))) join `tbl_master_card` on((`tbl_master_card`.`master_card_id` = `tbl_client_card`.`master_card_id`))) join `tbl_terminal` on((`tbl_terminal`.`ter_id` = `tbl_client_card`.`ter_id`))) join `tbl_agent` on((`tbl_agent`.`agt_id` = `tbl_client_card`.`agt_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_aggregator_promostional_discount_reports`
--
DROP TABLE IF EXISTS `v_aggregator_promostional_discount_reports`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_aggregator_promostional_discount_reports`  AS  select `tbl_nfc_transaction`.`nfc_txn_id` AS `nfc_txn_id`,`tbl_nfc_transaction`.`transaction_on` AS `created_date`,`tbl_nfc_transaction`.`amount` AS `txn_amount`,`tbl_nfc_transaction`.`total_amount` AS `total_amount`,`tbl_nfc_transaction`.`quantity` AS `liters`,`tbl_nfc_transaction`.`fees` AS `fees`,`tbl_nfc_transaction`.`tax_discount` AS `tax_rebate`,`tbl_nfc_transaction`.`promotinal_discount_amount` AS `promotinal_discount_amount`,`tbl_nfc_transaction`.`promotinal_value` AS `promotinal_value`,`tbl_nfc_transaction`.`promotinal_type` AS `promotinal_type`,`tbl_nfc_transaction`.`aggregator_value` AS `promotinal_aggregator_value`,`tbl_nfc_transaction`.`dealer_value` AS `promotinal_dealer_value`,`tbl_nfc_transaction`.`promotional_aggregator_amount` AS `promotional_aggregator_amount`,`tbl_nfc_transaction`.`promotional_dealer_amount` AS `promotional_dealer_amount`,`tbl_nfc_transaction`.`nfc_settled_status` AS `nfc_settled_status`,`tbl_nfc_transaction`.`amount_tendered` AS `amount_tendered`,`tbl_nfc_transaction`.`product_discount` AS `discount`,`tbl_nfc_transaction`.`payment_ref_number` AS `txn_ref_number`,`tbl_nfc_transaction`.`payment_status` AS `payment_status`,`tbl_nfc_transaction`.`aggregator_id` AS `aggregator_id`,`tbl_nfc_transaction`.`supper_agt_id` AS `supper_agt_id`,`tbl_terminal`.`ter_number` AS `mac_address`,`tbl_nfc_payment_type`.`nfc_payement_type` AS `product`,`tbl_client_card`.`created_by_idt_id` AS `created_by_idt_id`,`tbl_client_card`.`master_card_id` AS `master_card_id`,`tbl_client_card`.`card_unique_code` AS `card_number`,`tbl_cards`.`card_number` AS `card_serial_number`,concat(`tbl_client`.`first_name`,' ',`tbl_client`.`last_name`) AS `client_name`,`tbl_client`.`mobile_number` AS `client_mobile_number`,`tbl_client`.`supper_agt_id` AS `main_agent_id`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `main_agent_id`)) AS `main_agent_name`,(select `tbl_master_card`.`card_name` from `tbl_master_card` where (`tbl_master_card`.`master_card_id` = `tbl_client_card`.`master_card_id`)) AS `card_type`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggrgator_business_name`,(select `tbl_supper_agent`.`agt_code` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggregator_code`,`tbl_supper_agent`.`agt_business_name` AS `agent_business_name`,concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `agent_name`,`tbl_supper_agent`.`agt_code` AS `agent_code`,`tbl_supper_agent`.`station` AS `station`,concat(`tbl_agent`.`agt_first_name`,' ',`tbl_agent`.`agt_last_name`) AS `employee_name`,`tbl_agent`.`agt_code` AS `employee_code` from (((((((`tbl_nfc_transaction` join `tbl_nfc_payment_type` on((`tbl_nfc_payment_type`.`nfc_payment_type_id` = `tbl_nfc_transaction`.`nfc_payment_type_id`))) join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`supper_agt_id`))) join `tbl_agent` on((`tbl_agent`.`agt_id` = `tbl_nfc_transaction`.`agt_id`))) join `tbl_client` on((`tbl_client`.`client_id` = `tbl_nfc_transaction`.`client_id`))) join `tbl_client_card` on((`tbl_client_card`.`client_card_id` = `tbl_nfc_transaction`.`client_card_id`))) join `tbl_cards` on((`tbl_cards`.`card_id` = `tbl_client_card`.`card_id`))) join `tbl_terminal` on((`tbl_terminal`.`ter_id` = `tbl_nfc_transaction`.`ter_id`))) where (`tbl_nfc_transaction`.`promotinal_discount_amount` > 0) order by `tbl_nfc_transaction`.`nfc_txn_id` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v_aggregator_promostional_discount_reports_old`
--
DROP TABLE IF EXISTS `v_aggregator_promostional_discount_reports_old`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_aggregator_promostional_discount_reports_old`  AS  select `tbl_nfc_transaction`.`nfc_txn_id` AS `nfc_txn_id`,`tbl_nfc_transaction`.`transaction_on` AS `created_date`,`tbl_nfc_transaction`.`amount` AS `txn_amount`,`tbl_nfc_transaction`.`total_amount` AS `total_amount`,`tbl_nfc_transaction`.`quantity` AS `liters`,`tbl_nfc_transaction`.`fees` AS `fees`,`tbl_nfc_transaction`.`tax_discount` AS `tax_rebate`,`tbl_nfc_transaction`.`promotinal_discount_amount` AS `promotinal_discount_amount`,`tbl_nfc_transaction`.`promotinal_value` AS `promotinal_value`,`tbl_nfc_transaction`.`promotinal_type` AS `promotinal_type`,`tbl_nfc_transaction`.`aggregator_value` AS `promotinal_aggregator_value`,`tbl_nfc_transaction`.`dealer_value` AS `promotinal_dealer_value`,`tbl_nfc_transaction`.`nfc_settled_status` AS `nfc_settled_status`,`tbl_nfc_transaction`.`amount_tendered` AS `amount_tendered`,`tbl_nfc_transaction`.`product_discount` AS `discount`,`tbl_nfc_transaction`.`payment_ref_number` AS `txn_ref_number`,`tbl_nfc_transaction`.`payment_status` AS `payment_status`,`tbl_nfc_transaction`.`aggregator_id` AS `aggregator_id`,`tbl_nfc_transaction`.`supper_agt_id` AS `supper_agt_id`,`tbl_terminal`.`ter_number` AS `mac_address`,`tbl_nfc_payment_type`.`nfc_payement_type` AS `product`,`tbl_client_card`.`created_by_idt_id` AS `created_by_idt_id`,`tbl_client_card`.`master_card_id` AS `master_card_id`,`tbl_client_card`.`card_unique_code` AS `card_number`,`tbl_cards`.`card_number` AS `card_serial_number`,concat(`tbl_client`.`first_name`,' ',`tbl_client`.`last_name`) AS `client_name`,`tbl_client`.`mobile_number` AS `client_mobile_number`,`tbl_client`.`supper_agt_id` AS `main_agent_id`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `main_agent_id`)) AS `main_agent_name`,(select `tbl_master_card`.`card_name` from `tbl_master_card` where (`tbl_master_card`.`master_card_id` = `tbl_client_card`.`master_card_id`)) AS `card_type`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggrgator_business_name`,(select `tbl_supper_agent`.`agt_code` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggregator_code`,`tbl_supper_agent`.`agt_business_name` AS `agent_business_name`,concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `agent_name`,`tbl_supper_agent`.`agt_code` AS `agent_code`,`tbl_supper_agent`.`station` AS `station`,concat(`tbl_agent`.`agt_first_name`,' ',`tbl_agent`.`agt_last_name`) AS `employee_name`,`tbl_agent`.`agt_code` AS `employee_code` from (((((((`tbl_nfc_transaction` join `tbl_nfc_payment_type` on((`tbl_nfc_payment_type`.`nfc_payment_type_id` = `tbl_nfc_transaction`.`nfc_payment_type_id`))) join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`supper_agt_id`))) join `tbl_agent` on((`tbl_agent`.`agt_id` = `tbl_nfc_transaction`.`agt_id`))) join `tbl_client` on((`tbl_client`.`client_id` = `tbl_nfc_transaction`.`client_id`))) join `tbl_client_card` on((`tbl_client_card`.`client_card_id` = `tbl_nfc_transaction`.`client_card_id`))) join `tbl_cards` on((`tbl_cards`.`card_id` = `tbl_client_card`.`card_id`))) join `tbl_terminal` on((`tbl_terminal`.`ter_id` = `tbl_nfc_transaction`.`ter_id`))) where (`tbl_nfc_transaction`.`promotinal_discount_amount` > 0) order by `tbl_nfc_transaction`.`nfc_txn_id` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v_aggregator_rebate_reports`
--
DROP TABLE IF EXISTS `v_aggregator_rebate_reports`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_aggregator_rebate_reports`  AS  select `tbl_nfc_transaction`.`nfc_txn_id` AS `nfc_txn_id`,`tbl_nfc_transaction`.`transaction_on` AS `created_date`,`tbl_nfc_transaction`.`amount` AS `txn_amount`,`tbl_nfc_transaction`.`total_amount` AS `total_amount`,`tbl_nfc_transaction`.`quantity` AS `liters`,`tbl_nfc_transaction`.`fees` AS `fees`,`tbl_nfc_transaction`.`tax_discount` AS `tax_rebate`,`tbl_nfc_transaction`.`product_discount` AS `discount`,`tbl_nfc_transaction`.`payment_ref_number` AS `txn_ref_number`,`tbl_nfc_transaction`.`payment_status` AS `payment_status`,`tbl_nfc_transaction`.`aggregator_id` AS `aggregator_id`,`tbl_nfc_transaction`.`supper_agt_id` AS `supper_agt_id`,`tbl_terminal`.`ter_number` AS `mac_address`,`tbl_nfc_payment_type`.`nfc_payement_type` AS `product`,`tbl_client_card`.`created_by_idt_id` AS `created_by_idt_id`,`tbl_client_card`.`master_card_id` AS `master_card_id`,`tbl_client_card`.`card_unique_code` AS `card_number`,`tbl_cards`.`card_number` AS `card_serial_number`,concat(`tbl_client`.`first_name`,' ',`tbl_client`.`last_name`) AS `client_name`,`tbl_client`.`mobile_number` AS `client_mobile_number`,`tbl_client`.`supper_agt_id` AS `main_agent_id`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `main_agent_id`)) AS `main_agent_name`,(select `tbl_master_card`.`card_name` from `tbl_master_card` where (`tbl_master_card`.`master_card_id` = `tbl_client_card`.`master_card_id`)) AS `card_type`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggrgator_business_name`,(select `tbl_supper_agent`.`agt_code` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggregator_code`,`tbl_supper_agent`.`agt_business_name` AS `agent_business_name`,concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `agent_name`,`tbl_supper_agent`.`agt_code` AS `agent_code`,`tbl_agent_station`.`station_name` AS `station`,concat(`tbl_agent`.`agt_first_name`,' ',`tbl_agent`.`agt_last_name`) AS `employee_name`,`tbl_agent`.`agt_code` AS `employee_code` from ((((((((`tbl_nfc_transaction` join `tbl_nfc_payment_type` on((`tbl_nfc_payment_type`.`nfc_payment_type_id` = `tbl_nfc_transaction`.`nfc_payment_type_id`))) join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`supper_agt_id`))) join `tbl_agent` on((`tbl_agent`.`agt_id` = `tbl_nfc_transaction`.`agt_id`))) join `tbl_client` on((`tbl_client`.`client_id` = `tbl_nfc_transaction`.`client_id`))) join `tbl_client_card` on((`tbl_client_card`.`client_card_id` = `tbl_nfc_transaction`.`client_card_id`))) join `tbl_cards` on((`tbl_cards`.`card_id` = `tbl_client_card`.`card_id`))) join `tbl_terminal` on((`tbl_terminal`.`ter_id` = `tbl_nfc_transaction`.`ter_id`))) join `tbl_agent_station` on((`tbl_agent_station`.`station_id` = `tbl_supper_agent`.`station`))) where (`tbl_nfc_transaction`.`tax_discount` > 0) order by `tbl_nfc_transaction`.`nfc_txn_id` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v_aggregator_rebate_reports_oldd`
--
DROP TABLE IF EXISTS `v_aggregator_rebate_reports_oldd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_aggregator_rebate_reports_oldd`  AS  select `tbl_nfc_transaction`.`nfc_txn_id` AS `nfc_txn_id`,`tbl_nfc_transaction`.`transaction_on` AS `created_date`,`tbl_nfc_transaction`.`amount` AS `txn_amount`,`tbl_nfc_transaction`.`total_amount` AS `total_amount`,`tbl_nfc_transaction`.`quantity` AS `liters`,`tbl_nfc_transaction`.`fees` AS `fees`,`tbl_nfc_transaction`.`tax_discount` AS `tax_rebate`,`tbl_nfc_transaction`.`product_discount` AS `discount`,`tbl_nfc_transaction`.`payment_ref_number` AS `txn_ref_number`,`tbl_nfc_transaction`.`payment_status` AS `payment_status`,`tbl_nfc_transaction`.`aggregator_id` AS `aggregator_id`,`tbl_nfc_transaction`.`supper_agt_id` AS `supper_agt_id`,`tbl_terminal`.`ter_number` AS `mac_address`,`tbl_nfc_payment_type`.`nfc_payement_type` AS `product`,`tbl_client_card`.`created_by_idt_id` AS `created_by_idt_id`,`tbl_client_card`.`master_card_id` AS `master_card_id`,`tbl_client_card`.`card_unique_code` AS `card_number`,`tbl_cards`.`card_number` AS `card_serial_number`,concat(`tbl_client`.`first_name`,' ',`tbl_client`.`last_name`) AS `client_name`,`tbl_client`.`mobile_number` AS `client_mobile_number`,`tbl_client`.`supper_agt_id` AS `main_agent_id`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `main_agent_id`)) AS `main_agent_name`,(select `tbl_master_card`.`card_name` from `tbl_master_card` where (`tbl_master_card`.`master_card_id` = `tbl_client_card`.`master_card_id`)) AS `card_type`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggrgator_business_name`,(select `tbl_supper_agent`.`agt_code` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggregator_code`,`tbl_supper_agent`.`agt_business_name` AS `agent_business_name`,concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `agent_name`,`tbl_supper_agent`.`agt_code` AS `agent_code`,`tbl_supper_agent`.`station` AS `station`,concat(`tbl_agent`.`agt_first_name`,' ',`tbl_agent`.`agt_last_name`) AS `employee_name`,`tbl_agent`.`agt_code` AS `employee_code` from (((((((`tbl_nfc_transaction` join `tbl_nfc_payment_type` on((`tbl_nfc_payment_type`.`nfc_payment_type_id` = `tbl_nfc_transaction`.`nfc_payment_type_id`))) join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`supper_agt_id`))) join `tbl_agent` on((`tbl_agent`.`agt_id` = `tbl_nfc_transaction`.`agt_id`))) join `tbl_client` on((`tbl_client`.`client_id` = `tbl_nfc_transaction`.`client_id`))) join `tbl_client_card` on((`tbl_client_card`.`client_card_id` = `tbl_nfc_transaction`.`client_card_id`))) join `tbl_cards` on((`tbl_cards`.`card_id` = `tbl_client_card`.`card_id`))) join `tbl_terminal` on((`tbl_terminal`.`ter_id` = `tbl_nfc_transaction`.`ter_id`))) where (`tbl_nfc_transaction`.`tax_discount` > 0) order by `tbl_nfc_transaction`.`nfc_txn_id` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v_nfc_card_transaction_reports`
--
DROP TABLE IF EXISTS `v_nfc_card_transaction_reports`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_nfc_card_transaction_reports`  AS  select `tbl_nfc_transaction`.`nfc_txn_id` AS `nfc_txn_id`,`tbl_nfc_transaction`.`transaction_on` AS `created_date`,`tbl_nfc_transaction`.`amount` AS `txn_amount`,`tbl_nfc_transaction`.`total_amount` AS `total_amount`,`tbl_nfc_transaction`.`quantity` AS `liters`,`tbl_nfc_transaction`.`fees` AS `fees`,`tbl_nfc_transaction`.`tax_discount` AS `tax_rebate`,`tbl_nfc_transaction`.`product_discount` AS `discount`,`tbl_nfc_transaction`.`payment_ref_number` AS `txn_ref_number`,`tbl_nfc_transaction`.`payment_status` AS `payment_status`,`tbl_nfc_transaction`.`aggregator_id` AS `aggregator_id`,`tbl_nfc_transaction`.`supper_agt_id` AS `supper_agt_id`,`tbl_terminal`.`ter_number` AS `mac_address`,`tbl_nfc_payment_type`.`nfc_payement_type` AS `product`,`tbl_client_card`.`created_by_idt_id` AS `created_by_idt_id`,`tbl_client_card`.`master_card_id` AS `master_card_id`,`tbl_client_card`.`card_unique_code` AS `card_number`,`tbl_cards`.`card_number` AS `card_serial_number`,concat(`tbl_client`.`first_name`,' ',`tbl_client`.`last_name`) AS `client_name`,`tbl_client`.`mobile_number` AS `client_mobile_number`,`tbl_client_card`.`supper_agt_id` AS `main_agent_id`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `main_agent_id`)) AS `main_agent_name`,(select `tbl_master_card`.`card_name` from `tbl_master_card` where (`tbl_master_card`.`master_card_id` = `tbl_client_card`.`master_card_id`)) AS `card_type`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggrgator_business_name`,(select `tbl_supper_agent`.`agt_code` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggregator_code`,`tbl_supper_agent`.`agt_business_name` AS `agent_business_name`,concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `agent_name`,`tbl_supper_agent`.`agt_code` AS `agent_code`,`tbl_agent_station`.`station_name` AS `station`,concat(`tbl_agent`.`agt_first_name`,' ',`tbl_agent`.`agt_last_name`) AS `employee_name`,`tbl_agent`.`agt_code` AS `employee_code` from ((((((((`tbl_nfc_transaction` join `tbl_nfc_payment_type` on((`tbl_nfc_payment_type`.`nfc_payment_type_id` = `tbl_nfc_transaction`.`nfc_payment_type_id`))) join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`supper_agt_id`))) join `tbl_agent` on((`tbl_agent`.`agt_id` = `tbl_nfc_transaction`.`agt_id`))) join `tbl_client` on((`tbl_client`.`client_id` = `tbl_nfc_transaction`.`client_id`))) join `tbl_client_card` on((`tbl_client_card`.`client_card_id` = `tbl_nfc_transaction`.`client_card_id`))) join `tbl_cards` on((`tbl_cards`.`card_id` = `tbl_client_card`.`card_id`))) join `tbl_terminal` on((`tbl_terminal`.`ter_id` = `tbl_nfc_transaction`.`ter_id`))) join `tbl_agent_station` on((`tbl_agent_station`.`station_id` = `tbl_supper_agent`.`station`))) order by `tbl_nfc_transaction`.`nfc_txn_id` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v_nfc_card_transaction_reportsooo`
--
DROP TABLE IF EXISTS `v_nfc_card_transaction_reportsooo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_nfc_card_transaction_reportsooo`  AS  select `tbl_nfc_transaction`.`nfc_txn_id` AS `nfc_txn_id`,`tbl_nfc_transaction`.`transaction_on` AS `created_date`,`tbl_nfc_transaction`.`amount` AS `txn_amount`,`tbl_nfc_transaction`.`total_amount` AS `total_amount`,`tbl_nfc_transaction`.`quantity` AS `liters`,`tbl_nfc_transaction`.`fees` AS `fees`,`tbl_nfc_transaction`.`tax_discount` AS `tax_rebate`,`tbl_nfc_transaction`.`product_discount` AS `discount`,`tbl_nfc_transaction`.`payment_ref_number` AS `txn_ref_number`,`tbl_nfc_transaction`.`payment_status` AS `payment_status`,`tbl_nfc_transaction`.`aggregator_id` AS `aggregator_id`,`tbl_nfc_transaction`.`supper_agt_id` AS `supper_agt_id`,`tbl_terminal`.`ter_number` AS `mac_address`,`tbl_nfc_payment_type`.`nfc_payement_type` AS `product`,`tbl_client_card`.`created_by_idt_id` AS `created_by_idt_id`,`tbl_client_card`.`master_card_id` AS `master_card_id`,`tbl_client_card`.`card_unique_code` AS `card_number`,`tbl_cards`.`card_number` AS `card_serial_number`,concat(`tbl_client`.`first_name`,' ',`tbl_client`.`last_name`) AS `client_name`,`tbl_client`.`mobile_number` AS `client_mobile_number`,`tbl_client`.`supper_agt_id` AS `main_agent_id`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `main_agent_id`)) AS `main_agent_name`,(select `tbl_master_card`.`card_name` from `tbl_master_card` where (`tbl_master_card`.`master_card_id` = `tbl_client_card`.`master_card_id`)) AS `card_type`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggrgator_business_name`,(select `tbl_supper_agent`.`agt_code` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggregator_code`,`tbl_supper_agent`.`agt_business_name` AS `agent_business_name`,concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `agent_name`,`tbl_supper_agent`.`agt_code` AS `agent_code`,`tbl_agent_station`.`station_name` AS `station`,concat(`tbl_agent`.`agt_first_name`,' ',`tbl_agent`.`agt_last_name`) AS `employee_name`,`tbl_agent`.`agt_code` AS `employee_code` from ((((((((`tbl_nfc_transaction` join `tbl_nfc_payment_type` on((`tbl_nfc_payment_type`.`nfc_payment_type_id` = `tbl_nfc_transaction`.`nfc_payment_type_id`))) join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`supper_agt_id`))) join `tbl_agent` on((`tbl_agent`.`agt_id` = `tbl_nfc_transaction`.`agt_id`))) join `tbl_client` on((`tbl_client`.`client_id` = `tbl_nfc_transaction`.`client_id`))) join `tbl_client_card` on((`tbl_client_card`.`client_card_id` = `tbl_nfc_transaction`.`client_card_id`))) join `tbl_cards` on((`tbl_cards`.`card_id` = `tbl_client_card`.`card_id`))) join `tbl_terminal` on((`tbl_terminal`.`ter_id` = `tbl_nfc_transaction`.`ter_id`))) join `tbl_agent_station` on((`tbl_agent_station`.`station_id` = `tbl_supper_agent`.`station`))) order by `tbl_nfc_transaction`.`nfc_txn_id` desc ;

-- --------------------------------------------------------

--
-- Structure for view `v_nfc_card_transaction_reports_old`
--
DROP TABLE IF EXISTS `v_nfc_card_transaction_reports_old`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_nfc_card_transaction_reports_old`  AS  select `tbl_nfc_transaction`.`nfc_txn_id` AS `nfc_txn_id`,`tbl_nfc_transaction`.`transaction_on` AS `created_date`,`tbl_nfc_transaction`.`amount` AS `txn_amount`,`tbl_nfc_transaction`.`total_amount` AS `total_amount`,`tbl_nfc_transaction`.`quantity` AS `liters`,`tbl_nfc_transaction`.`fees` AS `fees`,`tbl_nfc_transaction`.`tax_discount` AS `tax_rebate`,`tbl_nfc_transaction`.`product_discount` AS `discount`,`tbl_nfc_transaction`.`payment_ref_number` AS `txn_ref_number`,`tbl_nfc_transaction`.`payment_status` AS `payment_status`,`tbl_nfc_transaction`.`aggregator_id` AS `aggregator_id`,`tbl_nfc_transaction`.`supper_agt_id` AS `supper_agt_id`,`tbl_terminal`.`ter_number` AS `mac_address`,`tbl_nfc_payment_type`.`nfc_payement_type` AS `product`,`tbl_client_card`.`created_by_idt_id` AS `created_by_idt_id`,`tbl_client_card`.`master_card_id` AS `master_card_id`,`tbl_client_card`.`card_unique_code` AS `card_number`,`tbl_cards`.`card_number` AS `card_serial_number`,concat(`tbl_client`.`first_name`,' ',`tbl_client`.`last_name`) AS `client_name`,`tbl_client`.`mobile_number` AS `client_mobile_number`,`tbl_client`.`supper_agt_id` AS `main_agent_id`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `main_agent_id`)) AS `main_agent_name`,(select `tbl_master_card`.`card_name` from `tbl_master_card` where (`tbl_master_card`.`master_card_id` = `tbl_client_card`.`master_card_id`)) AS `card_type`,(select `tbl_supper_agent`.`agt_business_name` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggrgator_business_name`,(select `tbl_supper_agent`.`agt_code` from `tbl_supper_agent` where (`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`aggregator_id`)) AS `aggregator_code`,`tbl_supper_agent`.`agt_business_name` AS `agent_business_name`,concat(`tbl_supper_agent`.`agt_first_name`,' ',`tbl_supper_agent`.`agt_last_name`) AS `agent_name`,`tbl_supper_agent`.`agt_code` AS `agent_code`,`tbl_supper_agent`.`station` AS `station`,concat(`tbl_agent`.`agt_first_name`,' ',`tbl_agent`.`agt_last_name`) AS `employee_name`,`tbl_agent`.`agt_code` AS `employee_code` from (((((((`tbl_nfc_transaction` join `tbl_nfc_payment_type` on((`tbl_nfc_payment_type`.`nfc_payment_type_id` = `tbl_nfc_transaction`.`nfc_payment_type_id`))) join `tbl_supper_agent` on((`tbl_supper_agent`.`supper_agt_id` = `tbl_nfc_transaction`.`supper_agt_id`))) join `tbl_agent` on((`tbl_agent`.`agt_id` = `tbl_nfc_transaction`.`agt_id`))) join `tbl_client` on((`tbl_client`.`client_id` = `tbl_nfc_transaction`.`client_id`))) join `tbl_client_card` on((`tbl_client_card`.`client_card_id` = `tbl_nfc_transaction`.`client_card_id`))) join `tbl_cards` on((`tbl_cards`.`card_id` = `tbl_client_card`.`card_id`))) join `tbl_terminal` on((`tbl_terminal`.`ter_id` = `tbl_nfc_transaction`.`ter_id`))) order by `tbl_nfc_transaction`.`nfc_txn_id` desc ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nbm_auto_credit_request`
--
ALTER TABLE `nbm_auto_credit_request`
  ADD PRIMARY KEY (`credit_session_id`);

--
-- Indexes for table `spd_aggregator_activity`
--
ALTER TABLE `spd_aggregator_activity`
  ADD PRIMARY KEY (`aggregator_activity_id`);

--
-- Indexes for table `spd_aggregator_licence`
--
ALTER TABLE `spd_aggregator_licence`
  ADD PRIMARY KEY (`licence_id`);

--
-- Indexes for table `spd_aggregator_modules`
--
ALTER TABLE `spd_aggregator_modules`
  ADD PRIMARY KEY (`aggregator_module_id`);

--
-- Indexes for table `spd_aggregator_modules_limit`
--
ALTER TABLE `spd_aggregator_modules_limit`
  ADD PRIMARY KEY (`module_limit_id`);

--
-- Indexes for table `spd_gnc_loan`
--
ALTER TABLE `spd_gnc_loan`
  ADD PRIMARY KEY (`gnc_loan_id`);

--
-- Indexes for table `spd_gnc_loan_activity`
--
ALTER TABLE `spd_gnc_loan_activity`
  ADD PRIMARY KEY (`gnc_loan_activity_id`);

--
-- Indexes for table `spd_gnc_loan_application`
--
ALTER TABLE `spd_gnc_loan_application`
  ADD PRIMARY KEY (`gnc_loan_application_id`);

--
-- Indexes for table `spd_gnc_loan_client_wallet`
--
ALTER TABLE `spd_gnc_loan_client_wallet`
  ADD PRIMARY KEY (`gnc_loan_wallet_id`);

--
-- Indexes for table `spd_gnc_loan_client_wallet_log`
--
ALTER TABLE `spd_gnc_loan_client_wallet_log`
  ADD PRIMARY KEY (`gnc_loan_client_wallet_log_id`);

--
-- Indexes for table `spd_gnc_loan_configuration`
--
ALTER TABLE `spd_gnc_loan_configuration`
  ADD PRIMARY KEY (`gnc_loan_id`);

--
-- Indexes for table `spd_gnc_loan_email_configuration`
--
ALTER TABLE `spd_gnc_loan_email_configuration`
  ADD PRIMARY KEY (`gnc_loan_email_c_id`);

--
-- Indexes for table `spd_gnc_loan_email_permission`
--
ALTER TABLE `spd_gnc_loan_email_permission`
  ADD PRIMARY KEY (`gnc_loan_email_p_id`);

--
-- Indexes for table `spd_gnc_loan_guarantor`
--
ALTER TABLE `spd_gnc_loan_guarantor`
  ADD PRIMARY KEY (`gnc_loan_guarantor_id`);

--
-- Indexes for table `spd_monthly_statement`
--
ALTER TABLE `spd_monthly_statement`
  ADD PRIMARY KEY (`monthly_statement_id`);

--
-- Indexes for table `spd_offline_cards`
--
ALTER TABLE `spd_offline_cards`
  ADD PRIMARY KEY (`offline_card_id`);

--
-- Indexes for table `spd_offline_terminal`
--
ALTER TABLE `spd_offline_terminal`
  ADD PRIMARY KEY (`offline_ter_id`);

--
-- Indexes for table `spd_platform_version`
--
ALTER TABLE `spd_platform_version`
  ADD PRIMARY KEY (`platform_ver_id`);

--
-- Indexes for table `spd_trace_log`
--
ALTER TABLE `spd_trace_log`
  ADD PRIMARY KEY (`trace_log_id`);

--
-- Indexes for table `spd_voucher_reedem`
--
ALTER TABLE `spd_voucher_reedem`
  ADD PRIMARY KEY (`voucher_redeem_id`);

--
-- Indexes for table `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `tbl_account_manager`
--
ALTER TABLE `tbl_account_manager`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `tbl_acc_manager_supper_agent`
--
ALTER TABLE `tbl_acc_manager_supper_agent`
  ADD PRIMARY KEY (`acc_super_agent_mapping_id`);

--
-- Indexes for table `tbl_admin_settlement`
--
ALTER TABLE `tbl_admin_settlement`
  ADD PRIMARY KEY (`admin_settlement_id`);

--
-- Indexes for table `tbl_admin_settlement_account`
--
ALTER TABLE `tbl_admin_settlement_account`
  ADD PRIMARY KEY (`adm_settlement_acc_id`);

--
-- Indexes for table `tbl_agent`
--
ALTER TABLE `tbl_agent`
  ADD PRIMARY KEY (`agt_id`);

--
-- Indexes for table `tbl_agent_station`
--
ALTER TABLE `tbl_agent_station`
  ADD PRIMARY KEY (`station_id`);

--
-- Indexes for table `tbl_agent_terminal`
--
ALTER TABLE `tbl_agent_terminal`
  ADD PRIMARY KEY (`agent_terminal_id`);

--
-- Indexes for table `tbl_aggregator_activate_card_request`
--
ALTER TABLE `tbl_aggregator_activate_card_request`
  ADD PRIMARY KEY (`card_request_id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `tbl_bank_branch_code`
--
ALTER TABLE `tbl_bank_branch_code`
  ADD PRIMARY KEY (`branch_code_id`);

--
-- Indexes for table `tbl_bank_city`
--
ALTER TABLE `tbl_bank_city`
  ADD PRIMARY KEY (`bank_city_id`);

--
-- Indexes for table `tbl_broadcast`
--
ALTER TABLE `tbl_broadcast`
  ADD PRIMARY KEY (`broadcast_id`);

--
-- Indexes for table `tbl_broadcast_client`
--
ALTER TABLE `tbl_broadcast_client`
  ADD PRIMARY KEY (`broadcast_client_id`);

--
-- Indexes for table `tbl_cards`
--
ALTER TABLE `tbl_cards`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `tbl_cards_staging`
--
ALTER TABLE `tbl_cards_staging`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `tbl_card_assign_to_vehicle`
--
ALTER TABLE `tbl_card_assign_to_vehicle`
  ADD PRIMARY KEY (`card_assign_id`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `tbl_client_app_device`
--
ALTER TABLE `tbl_client_app_device`
  ADD PRIMARY KEY (`client_app_device_id`);

--
-- Indexes for table `tbl_client_card`
--
ALTER TABLE `tbl_client_card`
  ADD PRIMARY KEY (`client_card_id`);

--
-- Indexes for table `tbl_client_card_log`
--
ALTER TABLE `tbl_client_card_log`
  ADD PRIMARY KEY (`card_log_id`);

--
-- Indexes for table `tbl_client_deposite_temp`
--
ALTER TABLE `tbl_client_deposite_temp`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `tbl_client_driver`
--
ALTER TABLE `tbl_client_driver`
  ADD PRIMARY KEY (`client_driver_id`);

--
-- Indexes for table `tbl_client_driver_mapping`
--
ALTER TABLE `tbl_client_driver_mapping`
  ADD PRIMARY KEY (`client_driver_mapping_id`);

--
-- Indexes for table `tbl_client_temp`
--
ALTER TABLE `tbl_client_temp`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `tbl_client_wallet_deposit`
--
ALTER TABLE `tbl_client_wallet_deposit`
  ADD PRIMARY KEY (`client_wallet_deposit_id`);

--
-- Indexes for table `tbl_cos`
--
ALTER TABLE `tbl_cos`
  ADD PRIMARY KEY (`cos_id`);

--
-- Indexes for table `tbl_cos_product_assign`
--
ALTER TABLE `tbl_cos_product_assign`
  ADD PRIMARY KEY (`assign_product_cos_id`);

--
-- Indexes for table `tbl_cos_service`
--
ALTER TABLE `tbl_cos_service`
  ADD PRIMARY KEY (`service_cos_id`);

--
-- Indexes for table `tbl_cos_service_fees`
--
ALTER TABLE `tbl_cos_service_fees`
  ADD PRIMARY KEY (`service_cos_fees_id`);

--
-- Indexes for table `tbl_cos_utility`
--
ALTER TABLE `tbl_cos_utility`
  ADD PRIMARY KEY (`utility_cos_id`);

--
-- Indexes for table `tbl_deposit_log`
--
ALTER TABLE `tbl_deposit_log`
  ADD PRIMARY KEY (`deposit_log_id`);

--
-- Indexes for table `tbl_deposit_withdraw_request`
--
ALTER TABLE `tbl_deposit_withdraw_request`
  ADD PRIMARY KEY (`d_w_request_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `tbl_email_log`
--
ALTER TABLE `tbl_email_log`
  ADD PRIMARY KEY (`email_log_id`);

--
-- Indexes for table `tbl_holiday`
--
ALTER TABLE `tbl_holiday`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `tbl_holiday_mapping`
--
ALTER TABLE `tbl_holiday_mapping`
  ADD PRIMARY KEY (`holiday_mapping_id`);

--
-- Indexes for table `tbl_holiday_mapping_off`
--
ALTER TABLE `tbl_holiday_mapping_off`
  ADD PRIMARY KEY (`holiday_mapping_off_id`);

--
-- Indexes for table `tbl_identify_operator`
--
ALTER TABLE `tbl_identify_operator`
  ADD PRIMARY KEY (`identify_id`);

--
-- Indexes for table `tbl_identity`
--
ALTER TABLE `tbl_identity`
  ADD PRIMARY KEY (`idt_id`);

--
-- Indexes for table `tbl_loyalty_configuration`
--
ALTER TABLE `tbl_loyalty_configuration`
  ADD PRIMARY KEY (`loyalty_id`);

--
-- Indexes for table `tbl_loyalty_point_log`
--
ALTER TABLE `tbl_loyalty_point_log`
  ADD PRIMARY KEY (`loyalty_point_log_id`);

--
-- Indexes for table `tbl_loyalty_point_wallet`
--
ALTER TABLE `tbl_loyalty_point_wallet`
  ADD PRIMARY KEY (`loyalty_wallet_id`);

--
-- Indexes for table `tbl_loyalty_program`
--
ALTER TABLE `tbl_loyalty_program`
  ADD PRIMARY KEY (`loyalty_p_id`);

--
-- Indexes for table `tbl_master_card`
--
ALTER TABLE `tbl_master_card`
  ADD PRIMARY KEY (`master_card_id`);

--
-- Indexes for table `tbl_medison`
--
ALTER TABLE `tbl_medison`
  ADD PRIMARY KEY (`medison_id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_merchant`
--
ALTER TABLE `tbl_merchant`
  ADD PRIMARY KEY (`merchant_id`);

--
-- Indexes for table `tbl_mpos_update`
--
ALTER TABLE `tbl_mpos_update`
  ADD PRIMARY KEY (`mpos_id`);

--
-- Indexes for table `tbl_nfc_deposit_log`
--
ALTER TABLE `tbl_nfc_deposit_log`
  ADD PRIMARY KEY (`nfc_deposit_log_id`);

--
-- Indexes for table `tbl_nfc_payment_type`
--
ALTER TABLE `tbl_nfc_payment_type`
  ADD PRIMARY KEY (`nfc_payment_type_id`);

--
-- Indexes for table `tbl_nfc_payment_type_card`
--
ALTER TABLE `tbl_nfc_payment_type_card`
  ADD PRIMARY KEY (`nfc_payment_type_card_id`);

--
-- Indexes for table `tbl_nfc_settlement`
--
ALTER TABLE `tbl_nfc_settlement`
  ADD PRIMARY KEY (`nfc_settled_id`);

--
-- Indexes for table `tbl_nfc_settlement_record`
--
ALTER TABLE `tbl_nfc_settlement_record`
  ADD PRIMARY KEY (`settlement_record_id`);

--
-- Indexes for table `tbl_nfc_settlement_record_temp`
--
ALTER TABLE `tbl_nfc_settlement_record_temp`
  ADD PRIMARY KEY (`settlement_record_id`);

--
-- Indexes for table `tbl_nfc_transaction`
--
ALTER TABLE `tbl_nfc_transaction`
  ADD PRIMARY KEY (`nfc_txn_id`);

--
-- Indexes for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD PRIMARY KEY (`otp_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_pay_bills_customer`
--
ALTER TABLE `tbl_pay_bills_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_product_assign_cos`
--
ALTER TABLE `tbl_product_assign_cos`
  ADD PRIMARY KEY (`assign_product_cos_id`);

--
-- Indexes for table `tbl_product_code`
--
ALTER TABLE `tbl_product_code`
  ADD PRIMARY KEY (`product_code_id`);

--
-- Indexes for table `tbl_promotional_discount`
--
ALTER TABLE `tbl_promotional_discount`
  ADD PRIMARY KEY (`promotional_discount_id`);

--
-- Indexes for table `tbl_province`
--
ALTER TABLE `tbl_province`
  ADD PRIMARY KEY (`province_id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `tbl_qrcode_session`
--
ALTER TABLE `tbl_qrcode_session`
  ADD PRIMARY KEY (`qrcode_txn_id`);

--
-- Indexes for table `tbl_sender`
--
ALTER TABLE `tbl_sender`
  ADD PRIMARY KEY (`sender_id`);

--
-- Indexes for table `tbl_send_money`
--
ALTER TABLE `tbl_send_money`
  ADD PRIMARY KEY (`send_money_id`);

--
-- Indexes for table `tbl_send_money_redeem_log`
--
ALTER TABLE `tbl_send_money_redeem_log`
  ADD PRIMARY KEY (`redeem_log_id`);

--
-- Indexes for table `tbl_settlement_time`
--
ALTER TABLE `tbl_settlement_time`
  ADD PRIMARY KEY (`settlement_time_id`);

--
-- Indexes for table `tbl_sms`
--
ALTER TABLE `tbl_sms`
  ADD PRIMARY KEY (`sms_id`);

--
-- Indexes for table `tbl_sms_configuration`
--
ALTER TABLE `tbl_sms_configuration`
  ADD PRIMARY KEY (`sms_conf_id`);

--
-- Indexes for table `tbl_suplied_card`
--
ALTER TABLE `tbl_suplied_card`
  ADD PRIMARY KEY (`suplied_card_id`);

--
-- Indexes for table `tbl_supper_agent`
--
ALTER TABLE `tbl_supper_agent`
  ADD PRIMARY KEY (`supper_agt_id`);

--
-- Indexes for table `tbl_supper_agent_aggregator`
--
ALTER TABLE `tbl_supper_agent_aggregator`
  ADD PRIMARY KEY (`sup_agt_agrt_id`);

--
-- Indexes for table `tbl_supper_agent_card`
--
ALTER TABLE `tbl_supper_agent_card`
  ADD PRIMARY KEY (`agt_card_id`);

--
-- Indexes for table `tbl_system_account`
--
ALTER TABLE `tbl_system_account`
  ADD PRIMARY KEY (`system_account_id`);

--
-- Indexes for table `tbl_terminal`
--
ALTER TABLE `tbl_terminal`
  ADD PRIMARY KEY (`ter_id`);

--
-- Indexes for table `tbl_terminal_session`
--
ALTER TABLE `tbl_terminal_session`
  ADD PRIMARY KEY (`terminal_session_id`);

--
-- Indexes for table `tbl_token`
--
ALTER TABLE `tbl_token`
  ADD PRIMARY KEY (`token_id`);

--
-- Indexes for table `tbl_txn_notification`
--
ALTER TABLE `tbl_txn_notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_user_access`
--
ALTER TABLE `tbl_user_access`
  ADD PRIMARY KEY (`user_access_id`);

--
-- Indexes for table `tbl_user_modules`
--
ALTER TABLE `tbl_user_modules`
  ADD PRIMARY KEY (`user_module_id`);

--
-- Indexes for table `tbl_user_type`
--
ALTER TABLE `tbl_user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `tbl_ussd_session_dealer`
--
ALTER TABLE `tbl_ussd_session_dealer`
  ADD PRIMARY KEY (`ussd_request_id`);

--
-- Indexes for table `tbl_utility_airtel`
--
ALTER TABLE `tbl_utility_airtel`
  ADD PRIMARY KEY (`airtel_id`);

--
-- Indexes for table `tbl_utility_mtn`
--
ALTER TABLE `tbl_utility_mtn`
  ADD PRIMARY KEY (`mtn_id`);

--
-- Indexes for table `tbl_utility_pay_bills_dstvgotv`
--
ALTER TABLE `tbl_utility_pay_bills_dstvgotv`
  ADD PRIMARY KEY (`dstv_gotv_id`);

--
-- Indexes for table `tbl_utility_pay_bills_zesco`
--
ALTER TABLE `tbl_utility_pay_bills_zesco`
  ADD PRIMARY KEY (`zesco_id`);

--
-- Indexes for table `tbl_utility_pay_bills_zuku`
--
ALTER TABLE `tbl_utility_pay_bills_zuku`
  ADD PRIMARY KEY (`zuku_id`);

--
-- Indexes for table `tbl_utility_pay_top_star`
--
ALTER TABLE `tbl_utility_pay_top_star`
  ADD PRIMARY KEY (`topstar_id`);

--
-- Indexes for table `tbl_utility_products`
--
ALTER TABLE `tbl_utility_products`
  ADD PRIMARY KEY (`utility_product_id`);

--
-- Indexes for table `tbl_utility_szi_gov`
--
ALTER TABLE `tbl_utility_szi_gov`
  ADD PRIMARY KEY (`szi_gov_id`);

--
-- Indexes for table `tbl_utility_transaction`
--
ALTER TABLE `tbl_utility_transaction`
  ADD PRIMARY KEY (`utility_txn_id`);

--
-- Indexes for table `tbl_utility_type`
--
ALTER TABLE `tbl_utility_type`
  ADD PRIMARY KEY (`utility_type_id`);

--
-- Indexes for table `tbl_utility_vodafone`
--
ALTER TABLE `tbl_utility_vodafone`
  ADD PRIMARY KEY (`vodafone_id`);

--
-- Indexes for table `tbl_utility_zamtel`
--
ALTER TABLE `tbl_utility_zamtel`
  ADD PRIMARY KEY (`zamtel_id`);

--
-- Indexes for table `tbl_value_type`
--
ALTER TABLE `tbl_value_type`
  ADD PRIMARY KEY (`value_type_id`);

--
-- Indexes for table `tbl_vehicle`
--
ALTER TABLE `tbl_vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `tbl_vehicle_mapping`
--
ALTER TABLE `tbl_vehicle_mapping`
  ADD PRIMARY KEY (`vehicle_mapping_id`);

--
-- Indexes for table `tbl_vehicle_tag`
--
ALTER TABLE `tbl_vehicle_tag`
  ADD PRIMARY KEY (`vehicle_tag_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nbm_auto_credit_request`
--
ALTER TABLE `nbm_auto_credit_request`
  MODIFY `credit_session_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd_aggregator_activity`
--
ALTER TABLE `spd_aggregator_activity`
  MODIFY `aggregator_activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd_aggregator_licence`
--
ALTER TABLE `spd_aggregator_licence`
  MODIFY `licence_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd_aggregator_modules`
--
ALTER TABLE `spd_aggregator_modules`
  MODIFY `aggregator_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `spd_aggregator_modules_limit`
--
ALTER TABLE `spd_aggregator_modules_limit`
  MODIFY `module_limit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `spd_gnc_loan`
--
ALTER TABLE `spd_gnc_loan`
  MODIFY `gnc_loan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd_gnc_loan_activity`
--
ALTER TABLE `spd_gnc_loan_activity`
  MODIFY `gnc_loan_activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd_gnc_loan_application`
--
ALTER TABLE `spd_gnc_loan_application`
  MODIFY `gnc_loan_application_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd_gnc_loan_client_wallet`
--
ALTER TABLE `spd_gnc_loan_client_wallet`
  MODIFY `gnc_loan_wallet_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd_gnc_loan_client_wallet_log`
--
ALTER TABLE `spd_gnc_loan_client_wallet_log`
  MODIFY `gnc_loan_client_wallet_log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd_gnc_loan_configuration`
--
ALTER TABLE `spd_gnc_loan_configuration`
  MODIFY `gnc_loan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd_gnc_loan_email_configuration`
--
ALTER TABLE `spd_gnc_loan_email_configuration`
  MODIFY `gnc_loan_email_c_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd_gnc_loan_email_permission`
--
ALTER TABLE `spd_gnc_loan_email_permission`
  MODIFY `gnc_loan_email_p_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd_gnc_loan_guarantor`
--
ALTER TABLE `spd_gnc_loan_guarantor`
  MODIFY `gnc_loan_guarantor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd_monthly_statement`
--
ALTER TABLE `spd_monthly_statement`
  MODIFY `monthly_statement_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spd_offline_cards`
--
ALTER TABLE `spd_offline_cards`
  MODIFY `offline_card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `spd_offline_terminal`
--
ALTER TABLE `spd_offline_terminal`
  MODIFY `offline_ter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `spd_platform_version`
--
ALTER TABLE `spd_platform_version`
  MODIFY `platform_ver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `spd_trace_log`
--
ALTER TABLE `spd_trace_log`
  MODIFY `trace_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `spd_voucher_reedem`
--
ALTER TABLE `spd_voucher_reedem`
  MODIFY `voucher_redeem_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `acc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_account_manager`
--
ALTER TABLE `tbl_account_manager`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_acc_manager_supper_agent`
--
ALTER TABLE `tbl_acc_manager_supper_agent`
  MODIFY `acc_super_agent_mapping_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_admin_settlement`
--
ALTER TABLE `tbl_admin_settlement`
  MODIFY `admin_settlement_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_admin_settlement_account`
--
ALTER TABLE `tbl_admin_settlement_account`
  MODIFY `adm_settlement_acc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_agent`
--
ALTER TABLE `tbl_agent`
  MODIFY `agt_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_agent_station`
--
ALTER TABLE `tbl_agent_station`
  MODIFY `station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_agent_terminal`
--
ALTER TABLE `tbl_agent_terminal`
  MODIFY `agent_terminal_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_aggregator_activate_card_request`
--
ALTER TABLE `tbl_aggregator_activate_card_request`
  MODIFY `card_request_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_bank_branch_code`
--
ALTER TABLE `tbl_bank_branch_code`
  MODIFY `branch_code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tbl_bank_city`
--
ALTER TABLE `tbl_bank_city`
  MODIFY `bank_city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_broadcast`
--
ALTER TABLE `tbl_broadcast`
  MODIFY `broadcast_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_broadcast_client`
--
ALTER TABLE `tbl_broadcast_client`
  MODIFY `broadcast_client_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_cards`
--
ALTER TABLE `tbl_cards`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_cards_staging`
--
ALTER TABLE `tbl_cards_staging`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_card_assign_to_vehicle`
--
ALTER TABLE `tbl_card_assign_to_vehicle`
  MODIFY `card_assign_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_client_app_device`
--
ALTER TABLE `tbl_client_app_device`
  MODIFY `client_app_device_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_client_card`
--
ALTER TABLE `tbl_client_card`
  MODIFY `client_card_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_client_card_log`
--
ALTER TABLE `tbl_client_card_log`
  MODIFY `card_log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_client_deposite_temp`
--
ALTER TABLE `tbl_client_deposite_temp`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_client_driver`
--
ALTER TABLE `tbl_client_driver`
  MODIFY `client_driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_client_driver_mapping`
--
ALTER TABLE `tbl_client_driver_mapping`
  MODIFY `client_driver_mapping_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_client_temp`
--
ALTER TABLE `tbl_client_temp`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_client_wallet_deposit`
--
ALTER TABLE `tbl_client_wallet_deposit`
  MODIFY `client_wallet_deposit_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_cos`
--
ALTER TABLE `tbl_cos`
  MODIFY `cos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_cos_product_assign`
--
ALTER TABLE `tbl_cos_product_assign`
  MODIFY `assign_product_cos_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_cos_service`
--
ALTER TABLE `tbl_cos_service`
  MODIFY `service_cos_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_cos_service_fees`
--
ALTER TABLE `tbl_cos_service_fees`
  MODIFY `service_cos_fees_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_cos_utility`
--
ALTER TABLE `tbl_cos_utility`
  MODIFY `utility_cos_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_deposit_log`
--
ALTER TABLE `tbl_deposit_log`
  MODIFY `deposit_log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_deposit_withdraw_request`
--
ALTER TABLE `tbl_deposit_withdraw_request`
  MODIFY `d_w_request_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_email_log`
--
ALTER TABLE `tbl_email_log`
  MODIFY `email_log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_holiday`
--
ALTER TABLE `tbl_holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_holiday_mapping`
--
ALTER TABLE `tbl_holiday_mapping`
  MODIFY `holiday_mapping_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_holiday_mapping_off`
--
ALTER TABLE `tbl_holiday_mapping_off`
  MODIFY `holiday_mapping_off_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_identify_operator`
--
ALTER TABLE `tbl_identify_operator`
  MODIFY `identify_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_identity`
--
ALTER TABLE `tbl_identity`
  MODIFY `idt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_loyalty_configuration`
--
ALTER TABLE `tbl_loyalty_configuration`
  MODIFY `loyalty_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_loyalty_point_log`
--
ALTER TABLE `tbl_loyalty_point_log`
  MODIFY `loyalty_point_log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_loyalty_point_wallet`
--
ALTER TABLE `tbl_loyalty_point_wallet`
  MODIFY `loyalty_wallet_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_loyalty_program`
--
ALTER TABLE `tbl_loyalty_program`
  MODIFY `loyalty_p_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_master_card`
--
ALTER TABLE `tbl_master_card`
  MODIFY `master_card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_medison`
--
ALTER TABLE `tbl_medison`
  MODIFY `medison_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `tbl_merchant`
--
ALTER TABLE `tbl_merchant`
  MODIFY `merchant_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_mpos_update`
--
ALTER TABLE `tbl_mpos_update`
  MODIFY `mpos_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_nfc_deposit_log`
--
ALTER TABLE `tbl_nfc_deposit_log`
  MODIFY `nfc_deposit_log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_nfc_payment_type`
--
ALTER TABLE `tbl_nfc_payment_type`
  MODIFY `nfc_payment_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_nfc_payment_type_card`
--
ALTER TABLE `tbl_nfc_payment_type_card`
  MODIFY `nfc_payment_type_card_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_nfc_settlement`
--
ALTER TABLE `tbl_nfc_settlement`
  MODIFY `nfc_settled_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_nfc_settlement_record`
--
ALTER TABLE `tbl_nfc_settlement_record`
  MODIFY `settlement_record_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_nfc_settlement_record_temp`
--
ALTER TABLE `tbl_nfc_settlement_record_temp`
  MODIFY `settlement_record_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_nfc_transaction`
--
ALTER TABLE `tbl_nfc_transaction`
  MODIFY `nfc_txn_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  MODIFY `otp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pay_bills_customer`
--
ALTER TABLE `tbl_pay_bills_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product_assign_cos`
--
ALTER TABLE `tbl_product_assign_cos`
  MODIFY `assign_product_cos_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product_code`
--
ALTER TABLE `tbl_product_code`
  MODIFY `product_code_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_promotional_discount`
--
ALTER TABLE `tbl_promotional_discount`
  MODIFY `promotional_discount_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_province`
--
ALTER TABLE `tbl_province`
  MODIFY `province_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_qrcode_session`
--
ALTER TABLE `tbl_qrcode_session`
  MODIFY `qrcode_txn_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sender`
--
ALTER TABLE `tbl_sender`
  MODIFY `sender_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_send_money`
--
ALTER TABLE `tbl_send_money`
  MODIFY `send_money_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_send_money_redeem_log`
--
ALTER TABLE `tbl_send_money_redeem_log`
  MODIFY `redeem_log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_settlement_time`
--
ALTER TABLE `tbl_settlement_time`
  MODIFY `settlement_time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_sms`
--
ALTER TABLE `tbl_sms`
  MODIFY `sms_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sms_configuration`
--
ALTER TABLE `tbl_sms_configuration`
  MODIFY `sms_conf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_suplied_card`
--
ALTER TABLE `tbl_suplied_card`
  MODIFY `suplied_card_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_supper_agent`
--
ALTER TABLE `tbl_supper_agent`
  MODIFY `supper_agt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_supper_agent_aggregator`
--
ALTER TABLE `tbl_supper_agent_aggregator`
  MODIFY `sup_agt_agrt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_supper_agent_card`
--
ALTER TABLE `tbl_supper_agent_card`
  MODIFY `agt_card_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_system_account`
--
ALTER TABLE `tbl_system_account`
  MODIFY `system_account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_terminal`
--
ALTER TABLE `tbl_terminal`
  MODIFY `ter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_terminal_session`
--
ALTER TABLE `tbl_terminal_session`
  MODIFY `terminal_session_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_token`
--
ALTER TABLE `tbl_token`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_txn_notification`
--
ALTER TABLE `tbl_txn_notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user_access`
--
ALTER TABLE `tbl_user_access`
  MODIFY `user_access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_user_modules`
--
ALTER TABLE `tbl_user_modules`
  MODIFY `user_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;
--
-- AUTO_INCREMENT for table `tbl_user_type`
--
ALTER TABLE `tbl_user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tbl_ussd_session_dealer`
--
ALTER TABLE `tbl_ussd_session_dealer`
  MODIFY `ussd_request_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_utility_airtel`
--
ALTER TABLE `tbl_utility_airtel`
  MODIFY `airtel_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_utility_mtn`
--
ALTER TABLE `tbl_utility_mtn`
  MODIFY `mtn_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_utility_pay_bills_dstvgotv`
--
ALTER TABLE `tbl_utility_pay_bills_dstvgotv`
  MODIFY `dstv_gotv_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_utility_pay_bills_zesco`
--
ALTER TABLE `tbl_utility_pay_bills_zesco`
  MODIFY `zesco_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_utility_pay_bills_zuku`
--
ALTER TABLE `tbl_utility_pay_bills_zuku`
  MODIFY `zuku_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_utility_pay_top_star`
--
ALTER TABLE `tbl_utility_pay_top_star`
  MODIFY `topstar_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_utility_products`
--
ALTER TABLE `tbl_utility_products`
  MODIFY `utility_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_utility_szi_gov`
--
ALTER TABLE `tbl_utility_szi_gov`
  MODIFY `szi_gov_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_utility_transaction`
--
ALTER TABLE `tbl_utility_transaction`
  MODIFY `utility_txn_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_utility_type`
--
ALTER TABLE `tbl_utility_type`
  MODIFY `utility_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_utility_vodafone`
--
ALTER TABLE `tbl_utility_vodafone`
  MODIFY `vodafone_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_utility_zamtel`
--
ALTER TABLE `tbl_utility_zamtel`
  MODIFY `zamtel_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_value_type`
--
ALTER TABLE `tbl_value_type`
  MODIFY `value_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_vehicle`
--
ALTER TABLE `tbl_vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_vehicle_mapping`
--
ALTER TABLE `tbl_vehicle_mapping`
  MODIFY `vehicle_mapping_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_vehicle_tag`
--
ALTER TABLE `tbl_vehicle_tag`
  MODIFY `vehicle_tag_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
