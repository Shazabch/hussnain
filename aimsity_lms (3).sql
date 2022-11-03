-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2022 at 04:58 PM
-- Server version: 5.7.38
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
-- Database: `aimsity_lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounting`
--

CREATE TABLE `accounting` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_time_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_package_id` int(10) UNSIGNED DEFAULT NULL,
  `system` tinyint(1) NOT NULL DEFAULT '0',
  `tax` tinyint(1) NOT NULL DEFAULT '0',
  `amount` decimal(13,2) DEFAULT NULL,
  `type` enum('addiction','deduction') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_account` enum('income','asset','subscribe','promotion','registration_package') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_type` enum('automatic','manual') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'automatic',
  `referred_user_id` int(10) UNSIGNED DEFAULT NULL,
  `is_affiliate_amount` tinyint(1) NOT NULL DEFAULT '0',
  `is_affiliate_commission` tinyint(1) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `accounting`
--

INSERT INTO `accounting` (`id`, `user_id`, `creator_id`, `webinar_id`, `meeting_time_id`, `subscribe_id`, `promotion_id`, `registration_package_id`, `system`, `tax`, `amount`, `type`, `type_account`, `store_type`, `referred_user_id`, `is_affiliate_amount`, `is_affiliate_commission`, `description`, `created_at`) VALUES
(251, 996, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '500.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1625944212),
(252, 996, NULL, NULL, 98, NULL, NULL, NULL, 0, 0, '165.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:30 hours of consultation', 1625944347),
(253, 996, NULL, NULL, 98, NULL, NULL, NULL, 0, 1, '15.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625944347),
(254, 1015, NULL, NULL, 98, NULL, NULL, NULL, 0, 0, '120.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625944347),
(255, 1015, NULL, NULL, 98, NULL, NULL, NULL, 1, 0, '30.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625944347),
(256, 930, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '600.00', 'addiction', 'asset', 'manual', NULL, 0, 0, 'Gifts from the platform', 1625950715),
(257, 995, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '1000.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1625950749),
(258, 995, NULL, NULL, 160, NULL, NULL, NULL, 0, 0, '110.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:00 hours of consultation', 1625952630),
(259, 995, NULL, NULL, 160, NULL, NULL, NULL, 0, 1, '10.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625952630),
(260, 934, NULL, NULL, 160, NULL, NULL, NULL, 0, 0, '80.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625952630),
(261, 934, NULL, NULL, 160, NULL, NULL, NULL, 1, 0, '20.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625952630),
(262, 995, NULL, 2005, NULL, NULL, NULL, NULL, 0, 0, '11.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1625953197),
(263, 995, NULL, 2005, NULL, NULL, NULL, NULL, 0, 1, '1.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625953198),
(264, 4, NULL, 2005, NULL, NULL, NULL, NULL, 0, 0, '8.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625953198),
(265, 4, NULL, 2005, NULL, NULL, NULL, NULL, 1, 0, '2.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625953198),
(266, 979, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '400.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1625992548),
(267, 995, NULL, NULL, 103, NULL, NULL, NULL, 0, 0, '137.50', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:15 hours of consultation', 1625996816),
(268, 995, NULL, NULL, 103, NULL, NULL, NULL, 0, 1, '12.50', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625996817),
(269, 1015, NULL, NULL, 103, NULL, NULL, NULL, 0, 0, '100.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625996817),
(270, 1015, NULL, NULL, 103, NULL, NULL, NULL, 1, 0, '25.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625996817),
(271, 995, NULL, 1999, NULL, NULL, NULL, NULL, 0, 0, '55.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1625996942),
(272, 995, NULL, 1999, NULL, NULL, NULL, NULL, 0, 1, '5.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625996943),
(273, 929, NULL, 1999, NULL, NULL, NULL, NULL, 0, 0, '45.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625996943),
(274, 929, NULL, 1999, NULL, NULL, NULL, NULL, 1, 0, '5.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625996943),
(275, 995, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '55.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1625996979),
(276, 995, NULL, 1998, NULL, NULL, NULL, NULL, 0, 1, '5.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625996979),
(277, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '40.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625996979),
(278, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 1, 0, '10.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625996979),
(279, 995, NULL, 2001, NULL, NULL, NULL, NULL, 0, 0, '17.60', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1625997105),
(280, 995, NULL, 2001, NULL, NULL, NULL, NULL, 0, 1, '1.60', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1625997106),
(281, 3, NULL, 2001, NULL, NULL, NULL, NULL, 0, 0, '14.40', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1625997106),
(282, 3, NULL, 2001, NULL, NULL, NULL, NULL, 1, 0, '1.60', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1625997106),
(283, 996, NULL, 2006, NULL, NULL, NULL, NULL, 0, 0, '24.75', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626060488),
(284, 996, NULL, 2006, NULL, NULL, NULL, NULL, 0, 1, '2.25', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626060488),
(285, 867, NULL, 2006, NULL, NULL, NULL, NULL, 0, 0, '18.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626060488),
(286, 867, NULL, 2006, NULL, NULL, NULL, NULL, 1, 0, '4.50', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626060488),
(287, 996, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '44.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626060553),
(288, 996, NULL, 1998, NULL, NULL, NULL, NULL, 0, 1, '4.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626060553),
(289, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '32.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626060553),
(290, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 1, 0, '8.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626060553),
(291, 930, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '55.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626060836),
(292, 930, NULL, 1998, NULL, NULL, NULL, NULL, 0, 1, '5.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626060837),
(293, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '40.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626060837),
(294, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 1, 0, '10.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626060837),
(295, 1015, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '332.00', 'deduction', 'income', 'automatic', NULL, 0, 0, 'Payout request', 1626061220),
(296, 979, NULL, 2004, NULL, NULL, NULL, NULL, 0, 0, '66.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626061333),
(297, 979, NULL, 2004, NULL, NULL, NULL, NULL, 0, 1, '6.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626061334),
(298, 929, NULL, 2004, NULL, NULL, NULL, NULL, 0, 0, '54.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626061334),
(299, 929, NULL, 2004, NULL, NULL, NULL, NULL, 1, 0, '6.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626061334),
(300, 979, NULL, 2002, NULL, NULL, NULL, NULL, 0, 0, '22.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626061374),
(301, 979, NULL, 2002, NULL, NULL, NULL, NULL, 0, 1, '2.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626061374),
(302, 863, NULL, 2002, NULL, NULL, NULL, NULL, 0, 0, '16.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626061374),
(303, 863, NULL, 2002, NULL, NULL, NULL, NULL, 1, 0, '4.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626061374),
(304, 979, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '33.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626061375),
(305, 979, NULL, 2000, NULL, NULL, NULL, NULL, 0, 1, '3.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626061376),
(306, 867, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '24.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626061376),
(307, 867, NULL, 2000, NULL, NULL, NULL, NULL, 1, 0, '6.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626061376),
(308, 995, NULL, NULL, NULL, 3, NULL, NULL, 0, 0, '22.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626061450),
(309, 995, NULL, NULL, NULL, 3, NULL, NULL, 0, 1, '2.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626061451),
(310, 995, NULL, NULL, NULL, 3, NULL, NULL, 1, 0, '20.00', 'addiction', 'subscribe', 'automatic', NULL, 0, 0, 'Income for Subscribe', 1626061451),
(311, 867, NULL, 2006, NULL, NULL, NULL, NULL, 0, 0, '0.16', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061483),
(312, 1, NULL, 2006, NULL, NULL, NULL, NULL, 1, 0, '0.16', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061483),
(313, 929, NULL, 2004, NULL, NULL, NULL, NULL, 0, 0, '0.16', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061490),
(314, 1, NULL, 2004, NULL, NULL, NULL, NULL, 1, 0, '0.16', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061490),
(315, 863, NULL, 2002, NULL, NULL, NULL, NULL, 0, 0, '0.16', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061494),
(316, 1, NULL, 2002, NULL, NULL, NULL, NULL, 1, 0, '0.16', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Subscribe', 1626061494),
(317, 1015, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '500.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1626132570),
(318, 1015, NULL, 2002, NULL, NULL, NULL, NULL, 0, 0, '17.60', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626132845),
(319, 1015, NULL, 2002, NULL, NULL, NULL, NULL, 0, 1, '1.60', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626132845),
(320, 863, NULL, 2002, NULL, NULL, NULL, NULL, 0, 0, '12.80', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626132845),
(321, 863, NULL, 2002, NULL, NULL, NULL, NULL, 1, 0, '3.20', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626132845),
(322, 929, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '300.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1626241074),
(323, 929, NULL, 2004, NULL, NULL, 3, NULL, 0, 0, '55.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626241152),
(324, 929, NULL, 2004, NULL, NULL, 3, NULL, 0, 1, '5.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626241153),
(325, 929, NULL, NULL, NULL, NULL, 3, NULL, 1, 0, '50.00', 'addiction', 'promotion', 'automatic', NULL, 0, 0, 'Paid for Promotion', 1626241153),
(326, 929, NULL, 2003, NULL, NULL, NULL, NULL, 0, 0, '33.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626241213),
(327, 929, NULL, 2003, NULL, NULL, NULL, NULL, 0, 1, '3.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626241214),
(328, 864, NULL, 2003, NULL, NULL, NULL, NULL, 0, 0, '24.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626241214),
(329, 864, NULL, 2003, NULL, NULL, NULL, NULL, 1, 0, '6.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626241214),
(330, 995, NULL, NULL, 114, NULL, NULL, NULL, 0, 0, '110.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:00 hours of consultation', 1626247196),
(331, 995, NULL, NULL, 114, NULL, NULL, NULL, 0, 1, '10.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626247196),
(332, 870, NULL, NULL, 114, NULL, NULL, NULL, 0, 0, '80.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626247196),
(333, 870, NULL, NULL, 114, NULL, NULL, NULL, 1, 0, '20.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626247196),
(334, 995, NULL, NULL, 114, NULL, NULL, NULL, 0, 0, '110.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Refunded to Buyer', 1626247245),
(335, NULL, NULL, NULL, 114, NULL, NULL, NULL, 0, 1, '10.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Refunded Tax', 1626247245),
(336, 870, NULL, NULL, 114, NULL, NULL, NULL, 0, 0, '100.00', 'deduction', 'income', 'automatic', NULL, 0, 0, 'Refunded Income', 1626247245),
(337, 870, NULL, NULL, 114, NULL, NULL, NULL, 0, 0, '20.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Refunded Commission to Seller', 1626247245),
(338, 870, NULL, NULL, 114, NULL, NULL, NULL, 1, 0, '20.00', 'deduction', 'income', 'automatic', NULL, 0, 0, 'Refunded Commission', 1626247245),
(339, 996, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '29.70', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1626508957),
(340, 996, NULL, 2000, NULL, NULL, NULL, NULL, 0, 1, '2.70', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1626508957),
(341, 867, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '21.60', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1626508957),
(342, 867, NULL, 2000, NULL, NULL, NULL, NULL, 1, 0, '5.40', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1626508957),
(343, 930, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '250.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704280),
(344, 923, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '300.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704284),
(345, 995, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '200.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704378),
(346, 995, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '100.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704382),
(347, 996, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '200.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'offline payment approved', 1628704397),
(348, 929, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '33.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1635412197),
(349, 929, NULL, 2000, NULL, NULL, NULL, NULL, 0, 1, '3.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1635412197),
(350, 867, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '24.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1635412197),
(351, 867, NULL, 2000, NULL, NULL, NULL, NULL, 1, 0, '6.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1635412197),
(352, 1015, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '80.00', 'addiction', 'income', 'automatic', 1017, 1, 0, 'public.get_amount_from_referral', 1639378855),
(353, 1015, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '80.00', 'deduction', 'income', 'automatic', 1017, 1, 0, 'public.get_amount_from_referral', 1639378855),
(354, 1017, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '50.00', 'addiction', 'income', 'automatic', NULL, 1, 0, 'public.get_amount_from_referral', 1639378855),
(355, 1017, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '50.00', 'deduction', 'income', 'automatic', NULL, 1, 0, 'public.get_amount_from_referral', 1639378855),
(356, 1017, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '500.00', 'addiction', 'asset', 'manual', NULL, 0, 0, 'charging for test', 1639379205),
(357, 1017, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '33.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1639379284),
(358, 1017, NULL, 2000, NULL, NULL, NULL, NULL, 0, 1, '3.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1639379285),
(359, 867, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '24.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1639379285),
(360, 867, NULL, 2000, NULL, NULL, NULL, NULL, 1, 0, '4.50', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1639379285),
(361, 1015, NULL, 2000, NULL, NULL, NULL, NULL, 0, 0, '1.50', 'addiction', 'income', 'automatic', 1017, 0, 1, 'public.get_commission_from_referral', 1639379285),
(362, 1017, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '110.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1639379351),
(363, 1017, NULL, 1998, NULL, NULL, NULL, NULL, 0, 1, '10.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1639379352),
(364, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '80.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1639379352),
(365, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 1, 0, '15.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1639379352),
(366, 1015, NULL, 1998, NULL, NULL, NULL, NULL, 0, 0, '5.00', 'addiction', 'income', 'automatic', 1017, 0, 1, 'public.get_commission_from_referral', 1639379352),
(367, 1017, NULL, 2003, NULL, NULL, NULL, NULL, 0, 0, '33.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1639379394),
(368, 1017, NULL, 2003, NULL, NULL, NULL, NULL, 0, 1, '3.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1639379395),
(369, 864, NULL, 2003, NULL, NULL, NULL, NULL, 0, 0, '24.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1639379395),
(370, 864, NULL, 2003, NULL, NULL, NULL, NULL, 1, 0, '4.50', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Commission from Seller', 1639379395),
(371, 1015, NULL, 2003, NULL, NULL, NULL, NULL, 0, 0, '1.50', 'addiction', 'income', 'automatic', 1017, 0, 1, 'public.get_commission_from_referral', 1639379395),
(372, 995, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '11.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646172087),
(373, 995, NULL, 2009, NULL, NULL, NULL, NULL, 0, 1, '1.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646172087),
(374, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '8.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646172087),
(375, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 1, 0, '2.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646172087),
(376, 996, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '9.90', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646172124),
(377, 996, NULL, 2009, NULL, NULL, NULL, NULL, 0, 1, '0.90', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646172124),
(378, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '7.20', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646172124),
(379, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 1, 0, '1.80', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646172124),
(380, 979, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '11.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646172160),
(381, 979, NULL, 2009, NULL, NULL, NULL, NULL, 0, 1, '1.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646172160),
(382, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '8.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646172160),
(383, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 1, 0, '2.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646172160),
(384, 929, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '11.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646172296),
(385, 929, NULL, 2009, NULL, NULL, NULL, NULL, 0, 1, '1.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646172297),
(386, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 0, 0, '8.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646172297),
(387, 1015, NULL, 2009, NULL, NULL, NULL, NULL, 1, 0, '2.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646172297),
(388, 995, NULL, NULL, 169, NULL, NULL, NULL, 0, 0, '825.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 1:00 hours of consultation', 1646379290),
(389, 995, NULL, NULL, 169, NULL, NULL, NULL, 0, 1, '75.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646379290),
(390, 1015, NULL, NULL, 169, NULL, NULL, NULL, 0, 0, '600.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Income Sale', 1646379290),
(391, 1015, NULL, NULL, 169, NULL, NULL, NULL, 1, 0, '150.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Get Commission From Seller', 1646379290),
(392, 867, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '200.00', 'addiction', 'asset', 'manual', NULL, 0, 0, 'gift', 1646381415),
(393, 930, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, '218.90', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646386792),
(394, 930, NULL, NULL, NULL, NULL, NULL, 2, 0, 1, '19.90', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646386797),
(395, 1, NULL, NULL, NULL, NULL, NULL, 2, 1, 0, '199.00', 'addiction', 'registration_package', 'automatic', NULL, 0, 0, 'Paid For Registration Package', 1646386797),
(396, 859, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '500.00', 'addiction', 'asset', 'manual', NULL, 0, 0, 'Charge for the test.', 1646387608),
(397, 859, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, '220.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid Form Credit', 1646387660),
(398, 859, NULL, NULL, NULL, NULL, NULL, 4, 0, 1, '20.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax Get Form Buyer', 1646387660),
(399, 1, NULL, NULL, NULL, NULL, NULL, 4, 1, 0, '200.00', 'addiction', 'registration_package', 'automatic', NULL, 0, 0, 'Paid For Registration Package', 1646387660),
(400, 1018, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '440.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Sale', 1647520432),
(401, 1018, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '440.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Online Payment', 1647520432),
(402, 1018, NULL, NULL, NULL, NULL, NULL, 3, 0, 1, '40.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1647520432),
(403, 1, NULL, NULL, NULL, NULL, NULL, 3, 1, 0, '400.00', 'addiction', 'registration_package', 'automatic', NULL, 0, 0, 'Paid for SaaS Package', 1647520432),
(404, 1018, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, '9000.00', 'addiction', 'asset', 'manual', NULL, 0, 0, 'testing purposes', 1647842967),
(405, 1018, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, '440.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid form Credit', 1647842984),
(406, 1018, NULL, NULL, NULL, NULL, NULL, 3, 0, 1, '40.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1647842984),
(407, 1, NULL, NULL, NULL, NULL, NULL, 3, 1, 0, '400.00', 'addiction', 'registration_package', 'automatic', NULL, 0, 0, 'Paid for SaaS Package', 1647842984),
(408, 1022, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, '218.90', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Sale', 1648566876),
(409, 1022, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, '218.90', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Online Payment', 1648566876),
(410, 1022, NULL, NULL, NULL, NULL, NULL, 2, 0, 1, '19.90', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1648566876),
(411, 1, NULL, NULL, NULL, NULL, NULL, 2, 1, 0, '199.00', 'addiction', 'registration_package', 'automatic', NULL, 0, 0, 'Paid for SaaS Package', 1648566876),
(412, 1022, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, '218.90', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Sale', 1648567488),
(413, 1022, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, '218.90', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Online Payment', 1648567488),
(414, 1022, NULL, NULL, NULL, NULL, NULL, 2, 0, 1, '19.90', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1648567488),
(415, 1, NULL, NULL, NULL, NULL, NULL, 2, 1, 0, '199.00', 'addiction', 'registration_package', 'automatic', NULL, 0, 0, 'Paid for SaaS Package', 1648567488),
(416, 1022, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '218.90', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Refunded to Buyer', 1648567622),
(417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '19.90', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Refunded Tax', 1648567622),
(418, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '199.00', 'deduction', 'income', 'automatic', NULL, 0, 0, 'Refunded Income', 1648567622),
(419, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Refunded Commission to Seller', 1648567622),
(420, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '0.00', 'deduction', 'income', 'automatic', NULL, 0, 0, 'Refunded Commission', 1648567622),
(421, 1023, NULL, 2016, NULL, NULL, NULL, NULL, 0, 0, '165.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Sale', 1648815512),
(422, 1023, NULL, 2016, NULL, NULL, NULL, NULL, 0, 0, '165.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Online Payment', 1648815512),
(423, 1023, NULL, 2016, NULL, NULL, NULL, NULL, 0, 1, '15.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1648815512),
(424, 1022, NULL, 2016, NULL, NULL, NULL, NULL, 0, 0, '120.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales Income', 1648815512),
(425, 1022, NULL, 2016, NULL, NULL, NULL, NULL, 1, 0, '30.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller Commission', 1648815512),
(426, 1023, NULL, NULL, 175, NULL, NULL, NULL, 0, 0, '238.34', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Sale', 1648819119),
(427, 1023, NULL, NULL, 175, NULL, NULL, NULL, 0, 0, '238.34', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Paid for 4:20 hours of consultation', 1648819119),
(428, 1023, NULL, NULL, 175, NULL, NULL, NULL, 0, 1, '21.67', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1648819119),
(429, 1022, NULL, NULL, 175, NULL, NULL, NULL, 0, 0, '173.34', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales Income', 1648819119),
(430, 1022, NULL, NULL, 175, NULL, NULL, NULL, 1, 0, '43.33', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller Commission', 1648819119),
(431, 1023, NULL, 2019, NULL, NULL, NULL, NULL, 0, 0, '220.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Sale', 1650006232),
(432, 1023, NULL, 2019, NULL, NULL, NULL, NULL, 0, 0, '220.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Online Payment', 1650006232),
(433, 1023, NULL, 2019, NULL, NULL, NULL, NULL, 0, 1, '20.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1650006232),
(434, 1022, NULL, 2019, NULL, NULL, NULL, NULL, 0, 0, '160.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales Income', 1650006232),
(435, 1022, NULL, 2019, NULL, NULL, NULL, NULL, 1, 0, '40.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller Commission', 1650006232),
(436, 1023, NULL, 2021, NULL, NULL, NULL, NULL, 0, 0, '244.20', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Sale', 1651061822),
(437, 1023, NULL, 2021, NULL, NULL, NULL, NULL, 0, 0, '244.20', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Online Payment', 1651061822),
(438, 1023, NULL, 2021, NULL, NULL, NULL, NULL, 0, 1, '22.20', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1651061822),
(439, 1036, NULL, 2021, NULL, NULL, NULL, NULL, 0, 0, '177.60', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales Income', 1651061822),
(440, 1036, NULL, 2021, NULL, NULL, NULL, NULL, 1, 0, '44.40', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller Commission', 1651061822),
(441, 1037, NULL, NULL, NULL, NULL, NULL, 6, 0, 0, '660.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Sale', 1651063096),
(442, 1037, NULL, NULL, NULL, NULL, NULL, 6, 0, 0, '660.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Online Payment', 1651063096),
(443, 1037, NULL, NULL, NULL, NULL, NULL, 6, 0, 1, '60.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1651063097),
(444, 1, NULL, NULL, NULL, NULL, NULL, 6, 1, 0, '600.00', 'addiction', 'registration_package', 'automatic', NULL, 0, 0, 'Paid for SaaS Package', 1651063097),
(445, 1043, NULL, 2024, NULL, NULL, NULL, NULL, 0, 0, '165.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Sale', 1651324089),
(446, 1043, NULL, 2024, NULL, NULL, NULL, NULL, 0, 0, '165.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Online Payment', 1651324089),
(447, 1043, NULL, 2024, NULL, NULL, NULL, NULL, 0, 1, '15.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1651324089),
(448, 1042, NULL, 2024, NULL, NULL, NULL, NULL, 0, 0, '120.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales Income', 1651324089),
(449, 1042, NULL, 2024, NULL, NULL, NULL, NULL, 1, 0, '30.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller Commission', 1651324089),
(450, 1046, NULL, 2026, NULL, NULL, NULL, NULL, 0, 0, '165.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Paid for Sale', 1651759684),
(451, 1046, NULL, 2026, NULL, NULL, NULL, NULL, 0, 0, '165.00', 'deduction', 'asset', 'automatic', NULL, 0, 0, 'Online Payment', 1651759684),
(452, 1046, NULL, 2026, NULL, NULL, NULL, NULL, 0, 1, '15.00', 'addiction', 'asset', 'automatic', NULL, 0, 0, 'Tax form Buyer', 1651759684),
(453, 1045, NULL, 2026, NULL, NULL, NULL, NULL, 0, 0, '120.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Sales Income', 1651759684),
(454, 1045, NULL, 2026, NULL, NULL, NULL, NULL, 1, 0, '30.00', 'addiction', 'income', 'automatic', NULL, 0, 0, 'Seller Commission', 1651759684);

-- --------------------------------------------------------

--
-- Table structure for table `advertising_banners`
--

CREATE TABLE `advertising_banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` enum('home1','home2','course','course_sidebar') COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL DEFAULT '12',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `advertising_banners`
--

INSERT INTO `advertising_banners` (`id`, `position`, `size`, `link`, `published`, `created_at`) VALUES
(2, 'home1', 12, '/login', 1, 1607885353),
(3, 'home2', 6, '/certificate_validation', 1, 1607885656),
(4, 'home2', 6, '/instructors', 1, 1607885681),
(6, 'course_sidebar', 12, '/instructors', 1, 1607886391),
(7, 'course_sidebar', 12, '/certificate_validation', 1, 1607886440);

-- --------------------------------------------------------

--
-- Table structure for table `advertising_banners_translations`
--

CREATE TABLE `advertising_banners_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `advertising_banner_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertising_banners_translations`
--

INSERT INTO `advertising_banners_translations` (`id`, `advertising_banner_id`, `locale`, `title`, `image`) VALUES
(1, 2, 'en', 'Home - Join as instructor', '/store/1/default_images/banners/become_instructor_banner.png'),
(2, 3, 'en', 'Certificate validation - Home', '/store/1/default_images/banners/validate_certificates_banner.png'),
(3, 4, 'en', 'Reserve a meeting - Home', '/store/1/default_images/banners/reserve_a_meeting.png'),
(4, 6, 'en', 'Reserve a meeting - Course page', '/store/1/default_images/banners/reserve_a_meeting.png'),
(5, 7, 'en', 'Certificate validation - Course page', '/store/1/default_images/banners/validate_certificates_banner.png'),
(7, 2, 'ar', 'الصفحة الرئيسية - انضم كمدرس', '/store/1/default_images/banners/become_instructor_banner_ar.png'),
(8, 2, 'es', 'Inicio - Únete como instructora', '/store/1/default_images/banners/become_instructor_banner_es.png'),
(9, 3, 'ar', 'التحقق من صحة الشهادة - الصفحة الرئيسية', '/store/1/default_images/banners/validate_certificates_banner_ar.png'),
(10, 3, 'es', 'Validación de certificados - Inicio', '/store/1/default_images/banners/validate_certificates_banner_es.png'),
(11, 4, 'ar', 'حجز اجتماع - الصفحة الرئيسية', '/store/1/default_images/banners/reserve_a_meeting_ar.png'),
(12, 4, 'es', 'Reservar una reunión - Inicio', '/store/1/default_images/banners/reserve_a_meeting_es.png'),
(13, 6, 'ar', 'حجز اجتماع - صفحة الدورة', '/store/1/default_images/banners/reserve_a_meeting_ar.png'),
(14, 6, 'es', 'Reservar una reunión - página del curso', '/store/1/default_images/banners/reserve_a_meeting_es.png'),
(15, 7, 'ar', 'التحقق من صحة الشهادة - صفحة الدورة', '/store/1/default_images/banners/validate_certificates_banner_ar.png'),
(16, 7, 'es', 'Validación del certificado - página del curso', '/store/1/default_images/banners/validate_certificates_banner_es.png');

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

CREATE TABLE `affiliates` (
  `id` int(10) UNSIGNED NOT NULL,
  `affiliate_user_id` int(10) UNSIGNED NOT NULL,
  `referred_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affiliates_codes`
--

CREATE TABLE `affiliates_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agora_history`
--

CREATE TABLE `agora_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `start_at` int(10) UNSIGNED NOT NULL,
  `end_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('register_date','course_count','course_rate','sale_count','support_rate') COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `image`, `type`, `condition`, `score`, `created_at`) VALUES
(21, '/store/1/default_images/badges/new_user.png', 'register_date', '{\"from\":\"1\",\"to\":\"30\"}', 5, 1625553769),
(22, '/store/1/default_images/badges/loyal_user.png', 'register_date', '{\"from\":\"31\",\"to\":\"180\"}', 10, 1625554171),
(23, '/store/1/default_images/badges/faithful_user.png', 'register_date', '{\"from\":\"181\",\"to\":\"365\"}', 15, 1625554495),
(24, '/store/1/default_images/badges/junior_vendor.png', 'course_count', '{\"from\":\"1\",\"to\":\"1\"}', 10, 1625554772),
(25, '/store/1/default_images/badges/senior_vendor.png', 'course_count', '{\"from\":\"2\",\"to\":\"2\"}', 20, 1625554960),
(26, '/store/1/default_images/badges/expert_vendor.png', 'course_count', '{\"from\":\"3\",\"to\":\"6\"}', 30, 1625555421),
(27, '/store/1/default_images/badges/bronze_classes.png', 'course_rate', '{\"from\":\"2\",\"to\":\"3\"}', NULL, 1625556048),
(28, '/store/1/default_images/badges/silver_classes.png', 'course_rate', '{\"from\":\"3\",\"to\":\"4\"}', NULL, 1625556159),
(29, '/store/1/default_images/badges/golden_classes.png', 'course_rate', '{\"from\":\"4\",\"to\":\"5\"}', 50, 1625556284),
(30, '/store/1/default_images/badges/best_seller.png', 'sale_count', '{\"from\":\"1\",\"to\":\"2\"}', NULL, 1625557021),
(31, '/store/1/default_images/badges/top_seller.png', 'sale_count', '{\"from\":\"3\",\"to\":\"9\"}', 20, 1625557247),
(32, '/store/1/default_images/badges/king_seller.png', 'sale_count', '{\"from\":\"10\",\"to\":\"20\"}', 50, 1625558061),
(33, '/store/1/default_images/badges/good_support.png', 'support_rate', '{\"from\":\"2\",\"to\":\"3\"}', NULL, 1625558473),
(34, '/store/1/default_images/badges/amazing_support.png', 'support_rate', '{\"from\":\"3\",\"to\":\"4\"}', NULL, 1625558682),
(35, '/store/1/default_images/badges/fantastic_support.png', 'support_rate', '{\"from\":\"4\",\"to\":\"5\"}', 20, 1625558892);

-- --------------------------------------------------------

--
-- Table structure for table `badge_translations`
--

CREATE TABLE `badge_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `badge_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badge_translations`
--

INSERT INTO `badge_translations` (`id`, `badge_id`, `locale`, `title`, `description`) VALUES
(1, 21, 'en', 'New User', '1 Month of Membership'),
(2, 22, 'en', 'Loyal User', '6 Month of Membership'),
(3, 23, 'en', 'Faithful User', '1 Year of Membership'),
(4, 24, 'en', 'Junior Vendor', 'Has 1 Class'),
(5, 25, 'en', 'Senior Vendor', 'Has 2 Classes'),
(6, 26, 'en', 'Expert Vendor', 'Has 3 to 6 Classes'),
(7, 27, 'en', 'Bronze Classes', 'Classes Rating from 2 to 3'),
(8, 28, 'en', 'Silver Classes', 'Classes Rating from 3 to 4'),
(9, 29, 'en', 'Golden Classes', 'Classes Rating from 4 to 5'),
(10, 30, 'en', 'Best Seller', 'Classes Sales from 1 to 2'),
(11, 31, 'en', 'Top Seller', 'Classes Sales from 3 to 9'),
(12, 32, 'en', 'King Seller', 'Classes Sales from 10 to 20'),
(13, 33, 'en', 'Good Support', 'Support Rating from 2 to 3'),
(14, 34, 'en', 'Amazing Support', 'Support Rating from 3 to 4'),
(15, 35, 'en', 'Fantastic Support', 'Support Rating from 4 to 5');

-- --------------------------------------------------------

--
-- Table structure for table `become_instructors`
--

CREATE TABLE `become_instructors` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role` enum('teacher','organization') COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` int(10) UNSIGNED DEFAULT NULL,
  `certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','accept','reject') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `become_instructors`
--

INSERT INTO `become_instructors` (`id`, `user_id`, `role`, `package_id`, `certificate`, `description`, `status`, `created_at`) VALUES
(18, 1045, 'teacher', NULL, '/store/1045/2)Installation of Scratch(6.11.20).pdf', 'Hi Jaylee here! I love coding.', 'accept', 1651735816),
(19, 1047, 'organization', NULL, '/store/1047/2)Installation of Scratch(6.11.20).pdf', NULL, 'accept', 1651819098);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_count` int(10) UNSIGNED DEFAULT '0',
  `enable_comment` tinyint(1) NOT NULL DEFAULT '1',
  `status` enum('pending','publish') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` int(10) UNSIGNED NOT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `category_id`, `author_id`, `slug`, `image`, `visit_count`, `enable_comment`, `status`, `created_at`, `updated_at`) VALUES
(21, 34, 1014, 'How-To-Teach-Your-Kid-Anything-Easily', '/store/1/default_images/blogs/blog1.jpg', 35, 1, 'publish', 1625091953, 1635438417),
(22, 37, 1, 'Better-Relationship-Between-You-and-Your-Student-s-Parent', '/store/1/default_images/blogs/blog2.jpg', 16, 1, 'publish', 1625093279, 1635438425),
(23, 36, 1, '3-Laws-to-Become-a-Straight-A-Student', '/store/1014/blog3.jpg', 25, 1, 'publish', 1625094412, 1635438384);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `slug`) VALUES
(33, 'Announcements', 'Vel-consequatur'),
(34, 'Articles', 'Facilis-ea'),
(36, 'Events', 'Fugit-dignissimos-possimus'),
(37, 'News', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `blog_id`, `locale`, `title`, `description`, `content`, `meta_description`) VALUES
(2, 21, 'en', 'How To Teach Your Kid Anything Easily', '<p>The primary reason kids struggle with school is fear. And in most cases, it’s their parent\'s fault. I started tutoring math out of financial desperation. I’d just been fired from my job as a waiter, most of the proofreading in jobs in New York had been outsourced to India, and for the third time in my life, I was facing dire poverty.</p>', '<p>I started tutoring math out of financial desperation. I’d just been fired from my job as a waiter, most of the proofreading in jobs in New York had been outsourced to India, and for the third time in my life, I was facing dire poverty.</p><p>The amount I had forgotten was startling at first, and I had excelled at math for my entire academic life. If you don’t use it, you really do lose it, so not so surprisingly, most parents cry uncle at around 4th-grade math. They don’t remember and don’t want to remember, perpetuating this attitude in their children.</p><p>Imagine doing anything, even something you’re great at, with the equivalent of a giant looming behind you and scrutinizing your every move. This is what parents do to their children. They hover and pounce on every mistake.</p><p>1) Have Empathy for Your Kids</p><p>In my first session with my first student, his mom skulked nervously behind us, then called me over about five minutes in. She asked if I noticed her kid had answered the last question incorrectly, and I immediately saw the problem\'s essence.</p><p>You have to rest and relax for your kid to be comfortable and wait until the end before you start to correct anything. This is how kids learn to check their work, and that making mistakes is not a big deal.</p><p>Mistakes are inevitable, but how we handle them isn’t. If you want your kid to be eternally terrified of math, then, by all means, continue to crowd and interrupt them perpetually. Chances are, you’ll make them wary of attempting to learn anything at all.</p><p>2) Give Yourself a Shot</p><p>Thankfully, this mom and most of the other parents understood what I was doing, and recognized their complicity in their children’s struggles. After that first session, mom left us alone, and her kid began to improve forthwith.</p><p>His parents were so encouraged they asked if I could help with other subjects. History, science, and English were all within my wheelhouse, but the kid went to a Catholic school and had to learn Latin.</p><p>I borrowed a copy of his Latin book and was completely demoralized. Latin is baffling, especially in the beginning. So many conjugations, and context matter. The way you speak to noblemen, peers, and slaves is practically like learning three different languages.</p><p>Still, I was broke, and this would mean more money. And did I actually have to know Latin? All I had to do was stay a few days ahead of the kid.</p><p>3) Be Honest</p><p>Our default state is to deny our ignorance, especially in front of children. We’re defensive and dismissive, and most kids can tell you’re just as lost as they are.</p><p>My solution was to admit this from the start. The kid asked me the point of learning Latin and I told him I didn’t know. Supposedly it helped with other languages, but maybe he could use it someday to impress pretentious people at cocktail parties. He asked me why some verbs broke the conjugation patterns, and I told him it was the ancients’ way of torturing us.</p><p>As a young child, he picked up the language quicker than I did, but had more difficulty with some of the subtleties. There were times I was mystified and talked out loud to myself in front of him.</p><p>I’m a math tutor. What on earth made me think I was equipped to teach Latin, let alone learn it?</p><p>The kid told me I seemed to be pretty good at everything else, so I’d probably get it, but there was a tinge of concern in his voice. The worse I did, the more likely he would fail, and he wanted Latin out of his life even more than I did.</p><p>Our mutual hatred of Latin brought us closer together. For the first time, we both understood we were in this together.</p><p>4) Dealing With Parents and Teachers Is a Part of Education</p><p>As he grew older, he started to ask me about his parents, who were Fox News conservatives. He told me he could see they were biased, but didn’t understand why, or know what to think.</p><p>I told him to think for himself and admit when he didn’t know something, and that he shouldn’t be afraid to change his mind in light of valid new evidence.</p><p>He complained about his teachers, one of whom wasn’t happy I’d taught him different approaches to algebra. Eventually, he learned how to do it the teacher’s way, but he’d needed another avenue to get there. We were both a bit angry, but I told him learning to deal with teachers is a part of education.</p><p>I kept my rancor to myself, but I also wanted to strangle his teacher. This kid had gone from a D average to a B+, and this teacher was still hounding him. No wonder so many people are lousy at math — their parents and teachers were against them and didn’t even realize it.</p><p>5) Embrace a Learning Attitude</p><p>If you aren’t willing to learn, it’s going to be difficult to teach, and the first step is accepting just how little we know. It’s hypocritical to pounce on your kid when you can’t do his homework either, and kids notice this and rightfully feel that you’re being unjust.</p><p>If you choose to have children, they should be your number one priority, and you’ll be surprised at how much learning (or relearning) will improve your cognition in general.</p><p>Reading and math are foundational skills, and learning math is humbling. While there is scant evidence to support that mathematics improves reasoning in general, you need it to understand science, and when puzzled by much of your child’s elementary school homework, at least a little uncertainty penetrates your views. You realize you don’t know nearly as much as you thought, and for most, this can mark a new beginning. As rigidity subsides, plasticity reemerges, and the habit of lifelong learning is the most valuable gift you can give to yourself and your child.</p>', 'The primary reason kids struggle with school is fear. And in most cases, it’s their parent\'s fault.'),
(3, 22, 'en', 'Better Relationship Between You and Your Student’s Parent', '<p>The tutor-parent relationship is an important relationship and unfortunately greatly overlooked. Why is it important? Well, a good relationship between you and the student’s parent or guardian serves to help students perform better personally and academically. Fostering a relationship with them as a tutor can be challenging due to a number of factors, however, there are a number of ways to build this relationship and optimize students’ learning support system over time.</p>', '<p>Compassion and Positivity is Everything</p><p>It can be stressful for parents or guardians to engage with you. There may be fear that their child isn’t doing as well as they should be, a lack of time to connect, or even language barriers. As a tutor, being compassionate and delivering information in a well-mannered tone does wonders in situations like this. It’s best to smile, make eye contact, be welcoming, and offer any advice if needed. One good trick to help ease parents or guardians when speaking to them is to first acknowledge something positive about their child that you’ve noticed no matter how small it is. For example, you may have noticed that they are more engaged in their lessons and asking more questions.</p><p>Be Proactive and Communicate Often</p><p>Some tutors may only speak to parents or guardians when there is a problem, creating a negative environment for both. That’s why it’s key to make the effort to speak with them often whether that be face to face, phone call or even an email. It’s best to keep them up to date about their child’s learning. Communicating often keeps them from feeling on high alert when you reach out and can even foster a beautiful friendship. Of course it is important to know that parents and guardians are busy! So make sure when you communicate with them that you’re planning ahead to find a time that works best for them.</p><p>Make the Parent or Guardian Feel Valued and Ask for Their Advice</p><p>A great way to build a relationship with parents or guardians is to involve them in their child’s education. This doesn’t mean just having them help with homework, but it could mean asking them to participate in school activities or events. Asking them if they would like to help organize an event is a great way to get to know them and give them a chance to meet other parents or guardians. It could also be something as simple as creating a lesson plan that requests input from them. Of course all of this depends on their schedule and if they have time to participate. In the end, the more you try to involve them in activities, the better.</p><p>Another great way to make them feel valued is to ask for their advice. If your student is displaying negative behaviors during a lesson, it is wise to seek out the advice of the parent or guardian. By asking for their advice, two things can occur. One, they may not know there is negative behavior to begin with as the student may not be displaying it at home. Two, you are building a better relationship with the parent or guardian by getting their input in this situation, which will build trust. Questions don’t just have to be about the student’s education when speaking to them, you can also ask questions about the student’s interest and plans that they have during the holidays. It is always important for you to conduct yourself professionally when dealing with a parent or guardian but the conversation doesn’t have to just be strictly about education.</p><p>Avoid Taking it Personally and Making Assumptions</p><p>Parents and guardians are human and they have their own stress to deal with whether it be at work or in their home life. It is best for you to always keep calm and never take anything they say to heart. You should always respond with questions that will help defuse the situation. For example a parent or guardian may say “You’re saying this because you’re out to get my child” and the best way to respond to a question like this is “I’m sorry you feel this way, please let me know why you think this?”</p><p>Also you shouldn’t make assumptions about a student’s home life. Unless it has been stated so, an assumption can cause many problems and can be insensitive to a family’s situation. You should not assume that the student lives with both parents or any parent for that matter. Now, in our globally diverse world you shouldn’t assume that the parent or guardian’s first language is English and should always confirm if they can speak English in the first place. Every student will have a different situation than the next. Assumptions lead to misunderstandings which can create more challenging circumstances for learning.</p><p>Building a relationship with a parent or guardian can sometimes be challenging. Keeping these ideas in mind can help you better connect with them. It’s good to remember, at the end of the day the better connection you have with them, the better they can help teach the student, ultimately allowing them to achieve academic success and foster a love for learning.</p>', 'The tutor-parent relationship is an important relationship and unfortunately greatly overlooked.'),
(4, 23, 'en', '3 Laws to Become a Straight-A Student', '<p>In this article, I’ll explain the two rules I followed to become a straight-A student.&nbsp;If you take my advice, you’ll get better grades and lead a more balanced life too.</p>', '<p>A strong academic record can open doors for you down the road. More importantly, through the process of becoming a straight-A student, you’ll learn values like hard work, discipline and determination.</p><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #1: Always have a plan.</h3><div><div>(a) As the semester progresses, keep track of key dates: tests and exams, project submission deadlines, term breaks, etc.</div><div><br></div><div>Enter these dates into a physical or digital calendar.</div><div><br></div><div><div>If you choose to use a digital calendar, I recommend Google Calendar.</div><div><br></div><div>(b) Schedule a fixed time every week where you review your upcoming events over the next two months. Mark down when you’ll start preparing for that Math exam, working on that History project, or writing that English paper.</div><div><br></div><div>(d) Next, note your commitments for the coming week, e.g. extracurricular activities, family gatherings, extra classes. On your calendar, highlight the blocks of time you’ll have for schoolwork.</div><div><br></div><div>This planning process might sound time-consuming, but it’ll typically take just 15 minutes every week.</div><div><br></div><div>This is a wise investment of time as a student, because the rest of your week will become far more productive.</div><div><br></div><div>This way, you’ll be studying smart, not just hard!</div><div><br></div><div><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #2: Be organized.</h3></div></div></div><div><div>Ever had trouble finding your notes or assignments when you needed them? You probably ended up wasting precious time looking for them, before you finally asked to borrow them from your friend.</div><div><br></div><div>Many students tell me that they keep all their notes and assignments in one big pile, and only sort them out before their exams!</div><div><br></div><div>Being organized – it’s easier said than done, I know.</div></div>', 'In this article, I’ll explain the two rules I followed to become a straight-A student.'),
(5, 21, 'ar', 'كيف تعلم طفلك أي شيء بسهولة', '<p style=\"text-align: right; \">الخوف هو السبب الرئيسي الذي يجعل الأطفال يكافحون مع المدرسة. وفي معظم الحالات ، يكون ذلك خطأ الوالدين. بدأت في تدريس الرياضيات بسبب اليأس المالي.</p>', '<p style=\"text-align: right; \">بدأت في تدريس الرياضيات بسبب اليأس المالي. لقد طُردت للتو من وظيفتي كنادل ، ومعظم عمليات التدقيق اللغوي في الوظائف في نيويورك تم الاستعانة بمصادر خارجية للهند ، وللمرة الثالثة في حياتي ، كنت أواجه فقرًا مدقعًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كان المبلغ الذي نسيته مذهلاً في البداية ، وقد تفوقت في الرياضيات طوال حياتي الأكاديمية. إذا كنت لا تستخدمها ، فأنت تخسرها حقًا ، لذلك ليس من المستغرب أن يبكي معظم الآباء عمي في الرياضيات في الصف الرابع تقريبًا. إنهم لا يتذكرون ولا يريدون أن يتذكروا ، مما يديم هذا الموقف لدى أطفالهم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تخيل أنك تفعل أي شيء ، حتى لو كنت بارعًا فيه ، بما يعادل عملاقًا يلوح في الأفق خلفك ويفحص كل تحركاتك. وهذا هو ما يفعله الآباء لأطفالهم. إنهم يحومون وينقضون على كل خطأ.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">1) تعاطف مع أطفالك</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">في جلستي الأولى مع تلميذي الأول ، تراجعت والدته بعصبية خلفنا ، ثم اتصلت بي لمدة خمس دقائق. سألت إذا لاحظت أن ابنها قد أجاب على السؤال الأخير بشكل غير صحيح ، ورأيت على الفور جوهر المشكلة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">عليك أن ترتاح وتسترخي حتى يكون طفلك مرتاحًا وتنتظر حتى النهاية قبل أن تبدأ في تصحيح أي شيء. هذه هي الطريقة التي يتعلم بها الأطفال التحقق من عملهم ، وأن ارتكاب الأخطاء ليس مشكلة كبيرة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">الأخطاء لا مفر منها ، ولكن كيفية التعامل معها ليست كذلك. إذا كنت تريد أن يشعر ابنك بالرعب إلى الأبد من الرياضيات ، إذن ، بكل الوسائل ، استمر في الازدحام ومقاطعته على الدوام. من المحتمل أن تجعلهم حذرين من محاولة تعلم أي شيء على الإطلاق.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">2) إعطاء نفسك وأطلق عليه الرصاص</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لحسن الحظ ، فهمت هذه الأم ومعظم الآباء الآخرين ما كنت أفعله ، وأدركوا تواطؤهم في كفاح أطفالهم. بعد تلك الجلسة الأولى ، تركتنا أمي وشأننا ، وبدأ طفلها في التحسن على الفور.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تم تشجيع والديه لدرجة أنهم سألوا عما إذا كان بإمكاني المساعدة في مواضيع أخرى. كان التاريخ والعلوم واللغة الإنجليزية داخل غرفة قيادتي ، لكن الطفل ذهب إلى مدرسة كاثوليكية وكان عليه أن يتعلم اللاتينية.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">استعرت نسخة من كتابه اللاتيني وأصيبت بالإحباط تمامًا. اللغة اللاتينية محيرة ، خاصة في البداية. هذا العدد الكبير من الإقتران، ومسألة السياق. الطريقة التي تتحدث بها إلى النبلاء والأقران والعبيد تشبه عمليًا تعلم ثلاث لغات مختلفة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">ما زلت مفلسة ، وهذا يعني المزيد من المال. وهل كان علي بالفعل معرفة اللاتينية؟ كل ما كان علي فعله هو البقاء قبل الطفل ببضعة أيام.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">3) كن صادقا</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">حالتنا الافتراضية هي إنكار جهلنا ، خاصة أمام الأطفال. نحن دفاعيون ورفضون ، ويمكن لمعظم الأطفال أن يقولوا إنك ضائع مثلهم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كان الحل هو الاعتراف بذلك منذ البداية. سألني الطفل عن وجهة نظر تعلم اللاتينية وأخبرته أنني لا أعرف. من المفترض أنه ساعد مع لغات أخرى ، لكن ربما يمكنه استخدامه يومًا ما لإثارة إعجاب الأشخاص الطنانين في حفلات الكوكتيل. سألني لماذا تكسر بعض الأفعال أنماط الاقتران ، وقلت له إنها طريقة القدماء في تعذيبنا.</p><p style=\"text-align: right; \">عندما كان طفلاً صغيرًا ، كان يتعلم اللغة أسرع مني ، لكنه كان يواجه صعوبة أكبر في بعض التفاصيل الدقيقة. كانت هناك أوقات حيرتني فيها وأتحدث بصوت عالٍ أمامه.</p><p style=\"text-align: right; \">أنا مدرس رياضيات. ما الذي جعلني أعتقد أنني مستعد لتدريس اللاتينية ، ناهيك عن تعلمها؟</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قال لي الطفل إنني أبدو جيدًا في كل شيء آخر ، لذا من المحتمل أن أفهم ذلك ، لكن كان هناك القليل من القلق في صوته. كلما فعلت الأسوأ ، زاد احتمال فشله ، وأراد إخراج اللاتينية من حياته أكثر مما فعلت.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">لقد قربنا كراهيتنا المتبادل للغة اللاتينية من بعضنا البعض. لأول مرة ، أدرك كلانا أننا في هذا معًا.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">4) التعامل مع أولياء الأمور والمعلمين هو جزء من التعليم</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">مع تقدمه في السن ، بدأ يسألني عن والديه ، اللذين كانا من المحافظين في قناة فوكس نيوز. قال لي انه يمكن ان نرى انهم منحازون، ولكن لم أفهم لماذا، أو أعرف ما يفكر.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">أخبرته أن يفكر بنفسه ويعترف عندما لا يعرف شيئًا ، وأنه لا يجب أن يخشى تغيير رأيه في ضوء أدلة جديدة صحيحة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">واشتكى أساتذته، واحد منهم لم يكن سعيدا كنت قد علمته الطرق المختلفة لعلم الجبر. في نهاية المطاف، وعلم أنه كيفية القيام بذلك بطريقة المعلم، ولكن عنيدا حاجة سبيلا آخر للوصول إلى هناك. كنا غاضبين بعض الشيء ، لكنني أخبرته أن تعلم التعامل مع المعلمين هو جزء من التعليم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">احتفظت بالضغينة لنفسي ، لكنني أردت أيضًا خنق معلمه. وكان هذا الطفل قد ذهب من متوسط ​​D إلى B +، وكان هذا المعلم لا يزال يطارد له. ولا عجب في ذلك كثير من الناس رديء في الرياضيات - الآباء والامهات والمعلمين ضدهم وحتى لم يدرك ذلك.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">5) احتضان موقف التعلم</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">إذا لم تكن على استعداد للتعلم ، فسيكون من الصعب تدريسه ، والخطوة الأولى هي قبول مدى ضآلة معرفتنا. من النفاق أن تنقض على ابنك عندما لا تتمكن من أداء واجبه المنزلي أيضًا ، ويلاحظ الأطفال ذلك ويشعرون بحق أنك غير عادل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">التعلم الإلكتروني) سيحسن إدراكك بشكل عام.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">القراءة والرياضيات مهارات أساسية ، وتعلم الرياضيات أمر متواضع. في حين أن هناك القليل من الأدلة التي تدعم أن الرياضيات تحسن التفكير بشكل عام ، فأنت بحاجة إليها لفهم العلوم ، وعندما تشعر بالحيرة تجاه الكثير من الواجبات المدرسية لطفلك في المدرسة الابتدائية ، فإن القليل على الأقل من عدم اليقين يخترق آرائك. أنت تدرك أنك لا تعرف الكثير كما كنت تعتقد ، وبالنسبة لمعظم الناس ، يمكن أن يمثل هذا بداية جديدة. مع انحسار الصلابة ، تعاود اللدونة الظهور ، وعادات التعلم مدى الحياة هي أثمن هدية يمكن أن تقدمها لنفسك ولطفلك.إذا اخترت أن يكون الأطفال، يجب أن يكون لديك الاولوية رقم واحد، وسوف يفاجأ في مقدار التعلم (أو ص</p>', 'الخوف هو السبب الرئيسي الذي يجعل الأطفال يكافحون مع المدرسة. وفي معظم الحالات ، يكون ذلك خطأ الوالدين.'),
(6, 21, 'es', 'Cómo enseñar a tu hija cualquier cosa fácilmente', '<p>La razón principal por la que los niños luchan con la escuela es el miedo. Y en la mayoría de los casos, es culpa de sus padres. Comencé a dar clases particulares de matemáticas por desesperación financiera. Me acababan de despedir de mi trabajo como camarero, la mayor parte de la corrección de pruebas en los trabajos en Nueva York se habían subcontratado a la India y, por tercera vez en mi vida, me enfrentaba a una pobreza extrema.</p>', '<p>Comencé a dar clases particulares de matemáticas por desesperación financiera. Me acababan de despedir de mi trabajo como camarero, la mayor parte de la corrección de pruebas en los trabajos en Nueva York se habían subcontratado a la India y, por tercera vez en mi vida, me enfrentaba a una pobreza extrema.</p><p><br></p><p>La cantidad que había olvidado fue sorprendente al principio, y había sobresalido en matemáticas durante toda mi vida académica. Si no lo usas, realmente lo pierdes, así que no es de extrañar que la mayoría de los padres lloren a tío en matemáticas de cuarto grado. No recuerdan y no quieren recordar, perpetuando esta actitud en sus hijos.</p><p><br></p><p>Imagínese haciendo cualquier cosa, incluso algo en lo que se le da bien, con el equivalente a un gigante acechando detrás de usted y escudriñando cada uno de sus movimientos. Esto es lo que les hacen los padres a sus hijos. Se ciernen y se abalanzan sobre cada error.</p><p><br></p><p>1) Tenga empatía por sus hijos</p><p><br></p><p>En mi primera sesión con mi primer alumno, su madre se escondió nerviosamente detrás de nosotros, luego me llamó unos cinco minutos después. Me preguntó si noté que su hijo había respondido la última pregunta incorrectamente, e inmediatamente vi la esencia del problema.</p><p><br></p><p>Tienes que descansar y relajarte para que tu hijo se sienta cómodo y esperar hasta el final antes de empezar a corregir algo. Así es como los niños aprenden a controlar su trabajo y que cometer errores no es gran cosa.</p><p><br></p><p>Los errores son inevitables, pero la forma en que los manejamos no lo es. Si quiere que su hijo esté eternamente aterrorizado por las matemáticas, entonces, por supuesto, continúe apiñándolos e interrumpiéndolos perpetuamente. Lo más probable es que los haga desconfiar de intentar aprender algo.</p><p><br></p><p>2) Date una oportunidad</p><p><br></p><p>Afortunadamente, esta madre y la mayoría de los otros padres entendieron lo que estaba haciendo y reconocieron su complicidad en las luchas de sus hijos. Después de esa primera sesión, mamá nos dejó solos y su hijo comenzó a mejorar de inmediato.</p><p><br></p><p>Sus padres estaban tan animados que me preguntaron si podía ayudar con otros temas. La historia, la ciencia y el inglés estaban a mi alcance, pero el niño fue a una escuela católica y tuvo que aprender latín.</p><p><br></p><p>Pedí prestada una copia de su libro en latín y me desmoralicé por completo. El latín es desconcertante, especialmente al principio. Tantas conjugaciones y contexto son importantes. La forma de hablar con nobles, compañeros y esclavos es prácticamente como aprender tres idiomas diferentes.</p><p><br></p><p>Aún así, estaba arruinado y esto significaría más dinero. ¿Y realmente tenía que saber latín? Todo lo que tenía que hacer era quedarme unos días por delante del chico.</p><p><br></p><p>3) Sea honesto</p><p><br></p><p>Nuestro estado predeterminado es negar nuestra ignorancia, especialmente frente a los niños. Estamos a la defensiva y desdeñosos, y la mayoría de los niños pueden decir que estás tan perdido como ellos.</p><p><br></p><p>Mi solución fue admitir esto desde el principio. El niño me preguntó qué sentido tenía aprender latín y le dije que no lo sabía. Supuestamente le ayudó con otros idiomas, pero tal vez algún día podría usarlo para impresionar a personas pretenciosas en los cócteles. Me preguntó por qué algunos verbos rompían los patrones de conjugación y le dije que era la forma de los antiguos de torturarnos.</p><p><br></p><p>Cuando era niño, aprendió el idioma más rápido que yo, pero tuvo más dificultades con algunas de las sutilezas. Hubo momentos en que estaba desconcertado y me hablaba en voz alta frente a él.</p><p><br></p><p>Soy un tutor de matemáticas. ¿Qué diablos me hizo pensar que estaba equipado para enseñar latín, y mucho menos aprenderlo?</p><p><br></p><p>El chico me dijo que parecía ser bastante bueno en todo lo demás, así que probablemente lo entendería, pero había un matiz de preocupación en su voz. Cuanto peor lo hacía, más probabilidades había de que fracasara, y quería que el latín fuera de su vida incluso más que yo.</p><p><br></p><p>Nuestro odio mutuo por el latín nos acercó más. Por primera vez, ambos comprendimos que estábamos juntos en esto.</p><p><br></p><p>4) Tratar con padres y maestros es parte de la educación</p><p><br></p><p>A medida que crecía, empezó a preguntarme sobre sus padres, que eran conservadores de Fox News. Me dijo que podía ver que eran parciales, pero que no entendía por qué ni sabía qué pensar.</p><p><br></p><p>Le dije que pensara por sí mismo y admitiera cuando no sabía algo, y que no debería tener miedo de cambiar de opinión a la luz de nuevas pruebas válidas.</p><p><br></p><p>Se quejaba de sus profesores, uno de los cuales no estaba contento de que le hubiera enseñado diferentes enfoques del álgebra. Con el tiempo, aprendió a hacerlo a la manera del maestro, pero necesitaba otra vía para llegar allí. Ambos estábamos un poco enojados, pero le dije que aprender a tratar con los maestros es parte de la educación.</p><p><br></p><p>Me guardé mi rencor, pero también quería estrangular a su maestro. Este niño había pasado de un promedio D a un B +, y esta maestra todavía lo perseguía. No es de extrañar que tanta gente sea pésima en matemáticas: sus padres y maestros estaban en contra de ellos y ni siquiera se dieron cuenta.</p><p><br></p><p>5) Adopte una actitud de aprendizaje</p><p><br></p><p>Si no está dispuesto a aprender, será difícil enseñar y el primer paso es aceptar lo poco que sabemos. Es hipócrita atacar a tu hijo cuando tú tampoco puedes hacer su tarea, y los niños se dan cuenta de esto y sienten que estás siendo injusto.</p><p><br></p><p>Si elige tener hijos, deberían ser su prioridad número uno y se sorprenderá de cuánto aprendizaje (o relearning) mejorará su cognición en general.</p><p><br></p><p>La lectura y las matemáticas son habilidades fundamentales, y aprender matemáticas es una lección de humildad. Si bien hay poca evidencia que respalde que las matemáticas mejoran el razonamiento en general, las necesita para comprender las ciencias, y cuando gran parte de las tareas de la escuela primaria de su hijo le desconcierta, al menos un poco de incertidumbre penetra en sus puntos de vista. Te das cuenta de que no sabes tanto como pensabas y, para la mayoría, esto puede marcar un nuevo comienzo. A medida que cede la rigidez, resurge la plasticidad y el hábito del aprendizaje permanente es el regalo más valioso que puede hacerse a sí mismo y a su hijo.</p>', 'La razón principal por la que los niños luchan con la escuela es el miedo. Y en la mayoría de los casos, es culpa de sus padres.'),
(7, 23, 'es', '3 leyes para convertirse en una estudiante heterosexual', '<p>En este artículo, explicaré las dos reglas que seguí para convertirme en un estudiante sobresaliente. Si sigue mi consejo, obtendrá mejores calificaciones y también llevará una vida más equilibrada.</p>', '<p>Un historial académico sólido puede abrirle puertas en el futuro. Más importante aún, a través del proceso de convertirse en un estudiante sobresaliente, aprenderá valores como el trabajo duro, la disciplina y la determinación.</p><p>Regla 1: siempre tenga un plan.</p><p>(a) A medida que avanza el semestre, realice un seguimiento de las fechas clave: pruebas y exámenes, fechas límite para la presentación de proyectos, interrupciones del período, etc.</p><p>Ingrese estas fechas en un calendario físico o digital.</p><p>Si elige utilizar un calendario digital, le recomiendo Google Calendar.</p><p><br></p><p>(b) Programe un horario fijo cada semana en el que revise sus próximos eventos durante los próximos dos meses. Marque cuándo comenzará a prepararse para ese examen de matemáticas, a trabajar en ese proyecto de historia o a escribir ese ensayo en inglés.</p><p>(d) A continuación, anote sus compromisos para la próxima semana, p. ej. actividades extracurriculares, reuniones familiares, clases extra. En su calendario, resalte los bloques de tiempo que tendrá para el trabajo escolar.</p><p>Este proceso de planificación puede parecer lento, pero por lo general solo tomará 15 minutos cada semana.</p><p>Esta es una sabia inversión de tiempo como estudiante, porque el resto de la semana será mucho más productiva.</p><p>De esta manera, estudiarás inteligentemente, ¡no solo duro!</p><p><br></p><p>Regla # 2: Sea organizado.</p><p>Alguna vez ha tenido problemas para encontrar sus notas o tareas cuando las necesitaba? Probablemente terminó perdiendo un tiempo precioso buscándolos, antes de que finalmente se los pidiera prestados a su amigo.</p><p>Muchos estudiantes me dicen que guardan todas sus notas y tareas en una gran pila, ¡y solo las clasifican antes de sus exámenes!</p><p>Ser organizado, es más fácil decirlo que hacerlo, lo sé.</p>', 'En este artículo, explicaré las dos reglas que seguí para convertirme en un estudiante sobresaliente.'),
(8, 23, 'ar', 'علاقة أفضل بينك وبين ولي أمر الطالب', '<div style=\"text-align: right;\">في هذه المقالة ، سأشرح القاعدتين اللتين اتبعتهما لأصبح طالبًا عاديًا. إذا أخذت بنصيحتي ، ستحصل على درجات أفضل وتعيش حياة أكثر توازناً أيضًا.</div>', '<div style=\"text-align: right; \">يمكن للسجل الأكاديمي القوي أن يفتح لك الأبواب في المستقبل. والأهم من ذلك ، من خلال عملية أن تصبح طالبًا عاديًا ، ستتعلم قيمًا مثل العمل الجاد والانضباط والتصميم.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">القاعدة 1: امتلك خطة دائمًا.</div><div style=\"text-align: right; \">(أ) مع تقدم الفصل الدراسي ، تتبع التواريخ الرئيسية: الاختبارات والامتحانات والمواعيد النهائية لتقديم المشروع وفواصل الفصل الدراسي وما إلى ذلك.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">أدخل هذه التواريخ في تقويم مادي أو رقمي.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">إذا اخترت استخدام تقويم رقمي ، فإنني أوصي بتقويم Google.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">(ب) حدد موعدًا محددًا كل أسبوع حيث تقوم بمراجعة الأحداث القادمة على مدار الشهرين المقبلين. ضع علامة على الوقت الذي ستبدأ فيه التحضير لامتحان الرياضيات هذا ، أو العمل في مشروع التاريخ ، أو كتابة هذه الورقة باللغة الإنجليزية.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">(د) بعد ذلك ، دوِّن التزاماتك للأسبوع القادم ، على سبيل المثال الأنشطة اللامنهجية والتجمعات العائلية والفصول الإضافية. في التقويم الخاص بك ، حدد فترات الوقت التي ستتاح لك للعمل المدرسي.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">قد تبدو عملية التخطيط هذه مضيعة للوقت ، ولكنها عادة ما تستغرق 15 دقيقة فقط كل أسبوع.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">هذا استثمار حكيم للوقت كطالب ، لأن بقية الأسبوع ستصبح أكثر إنتاجية بكثير.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">بهذه الطريقة ، ستدرس بذكاء ، وليس فقط بجد!</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">القاعدة رقم 2: كن منظمًا.</div><div style=\"text-align: right; \">هل واجهت مشكلة في العثور على ملاحظاتك أو مهامك عندما احتجت إليها؟ ربما انتهى بك الأمر إلى إضاعة الوقت الثمين في البحث عنهم ، قبل أن تطلب أخيرًا استعارتهم من صديقك.</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">يخبرني العديد من الطلاب أنهم يحتفظون بجميع ملاحظاتهم وواجباتهم في كومة كبيرة واحدة ، ولا يقوموا بفرزها إلا قبل امتحاناتهم!</div><div style=\"text-align: right; \"><br></div><div style=\"text-align: right; \">كونك منظمًا - القول أسهل من الفعل ، أعلم.</div>', 'في هذه المقالة ، سأشرح القاعدتين اللتين اتبعتهما لأصبح طالبًا عاديًا.'),
(9, 22, 'ar', 'علاقة أفضل بينك وبين ولي أمر الطالب', '<p style=\"text-align: right; \">العلاقة بين المعلم والوالدين هي علاقة مهمة ويتم التغاضي عنها للأسف إلى حد كبير. لماذا هو مهم؟ حسنًا ، تساعد العلاقة الجيدة بينك وبين ولي أمر الطالب أو الوصي عليه في مساعدة الطلاب على أداء أفضل على المستوى الشخصي والأكاديمي. </p>', '<p style=\"text-align: right; \">الرحمة والإيجابية هي كل شيء</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يكون التعامل معك أمرًا مرهقًا للوالدين أو الأوصياء. قد يكون هناك خوف من أن أداء طفلهم ليس جيدًا كما ينبغي ، أو ضيق الوقت للتواصل ، أو حتى حواجز اللغة. بصفتك مدرسًا ، فإن التعاطف وتقديم المعلومات بنبرة مهذبة يؤدي إلى العجائب في مثل هذه المواقف. من الأفضل الابتسام والتواصل البصري والترحيب وتقديم أي نصيحة إذا لزم الأمر. إحدى الحيل الجيدة للمساعدة في تهدئة الآباء أو الأوصياء عند التحدث إليهم هي الاعتراف أولاً بشيء إيجابي عن طفلهم لاحظته مهما كان صغيراً. على سبيل المثال ، ربما لاحظت أنهم أكثر انخراطًا في دروسهم وطرحوا المزيد من الأسئلة.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كن استباقيًا وتواصل كثيرًا</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يتحدث بعض المعلمين مع الوالدين أو الأوصياء فقط عندما تكون هناك مشكلة ، مما يخلق بيئة سلبية لكليهما. هذا هو السبب في أنه من الضروري بذل الجهد للتحدث معهم كثيرًا سواء كان ذلك وجهًا لوجه أو مكالمة هاتفية أو حتى رسالة بريد إلكتروني. من الأفضل إبقائهم على اطلاع دائم بما يتعلمه أطفالهم. غالبًا ما يمنعهم التواصل من الشعور باليقظة القصوى عند التواصل معهم ويمكنه أيضًا تعزيز صداقة جميلة. بالطبع من المهم معرفة أن الآباء والأوصياء مشغولون! لذا تأكد عند التواصل معهم أنك تخطط مسبقًا للعثور على وقت يناسبهم بشكل أفضل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">اجعل الوالد أو الوصي يشعر بالتقدير واطلب مشورتهما</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">من الطرق الرائعة لبناء علاقة مع الوالدين أو الأوصياء إشراكهم في تعليم أطفالهم. هذا لا يعني مجرد مساعدتهم في أداء واجباتهم المدرسية ، ولكن قد يعني مطالبتهم بالمشاركة في الأنشطة أو الأحداث المدرسية. يُعد سؤالهم عما إذا كانوا يرغبون في المساعدة في تنظيم حدث طريقة رائعة للتعرف عليهم ومنحهم فرصة لمقابلة أولياء الأمور أو الأوصياء الآخرين. يمكن أن يكون أيضًا شيئًا بسيطًا مثل إنشاء خطة درس تطلب مدخلات منهم. بالطبع كل هذا يعتمد على جدولهم الزمني وما إذا كان لديهم الوقت للمشاركة. في النهاية ، كلما حاولت إشراكهم في الأنشطة ، كان ذلك أفضل.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">طريقة أخرى رائعة لجعلهم يشعرون بالتقدير هي طلب نصيحتهم. إذا كان الطالب يعرض سلوكيات سلبية أثناء الدرس ، فمن الحكمة طلب مشورة الوالد أو الوصي. من خلال طلب نصيحتهم ، يمكن أن يحدث شيئان. أولاً ، قد لا يعرفون أن هناك سلوكًا سلبيًا للبدء به لأن الطالب قد لا يعرضه في المنزل. ثانيًا ، أنت تبني علاقة أفضل مع الوالد أو الوصي من خلال الحصول على مدخلاتهم في هذا الموقف ، مما سيبني الثقة. لا يجب أن تدور الأسئلة حول تعليم الطالب فقط عند التحدث إليهم ، بل يمكنك أيضًا طرح أسئلة حول اهتمامات الطالب والخطط التي لديهم خلال العطلات. من المهم دائمًا أن تتصرف بشكل احترافي عند التعامل مع أحد الوالدين أو الوصي ، ولكن لا يجب أن تكون المحادثة فقط حول التعليم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">تجنب أخذها بشكل شخصي والافتراضات</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">الآباء والأوصياء بشر ولديهم ضغوط خاصة بهم للتعامل معها سواء كان ذلك في العمل أو في حياتهم المنزلية. من الأفضل لك أن تحافظ على هدوئك دائمًا ولا تأخذ أي شيء يقولونه على محمل الجد. يجب عليك دائمًا الرد بأسئلة من شأنها أن تساعد في نزع فتيل الموقف. على سبيل المثال ، قد يقول أحد الوالدين أو الوصي \"أنت تقول هذا لأنك خرجت لإحضار طفلي\" وأفضل طريقة للرد على سؤال مثل هذا هي \"أنا آسف لأنك تشعر بهذه الطريقة ، يرجى إعلامي لماذا تعتقد هذا؟\"</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">كما يجب ألا تضع افتراضات حول الحياة المنزلية للطالب. ما لم يتم ذكر ذلك ، يمكن للافتراض أن يسبب العديد من المشاكل ويمكن أن يكون غير حساس لوضع الأسرة. يجب ألا تفترض أن الطالب يعيش مع كلا الوالدين أو أي من الوالدين في هذا الشأن. الآن ، في عالمنا المتنوع عالميًا ، لا يجب أن تفترض أن اللغة الأولى للوالد أو الوصي هي اللغة الإنجليزية ويجب دائمًا تأكيد ما إذا كان بإمكانهم التحدث باللغة الإنجليزية في المقام الأول. سيكون لكل طالب وضع مختلف عن الوضع الذي يليه. تؤدي الافتراضات إلى سوء الفهم الذي يمكن أن يخلق ظروفًا أكثر صعوبة للتعلم.</p><p style=\"text-align: right; \"><br></p><p style=\"text-align: right; \">قد يكون بناء علاقة مع أحد الوالدين أو الوصي أمرًا صعبًا في بعض الأحيان. يمكن أن يساعدك وضع هذه الأفكار في الاعتبار على التواصل معها بشكل أفضل. من الجيد أن تتذكر ، في نهاية اليوم ، أنه كلما كان لديك اتصال أفضل معهم ، كان من الأفضل أن يساعدوا في تعليم الطالب ، مما يسمح لهم في النهاية بتحقيق النجاح الأكاديمي وتعزيز حب التعلم.</p>', 'العلاقة بين المعلم والوالدين هي علاقة مهمة ويتم التغاضي عنها للأسف إلى حد كبير.'),
(10, 22, 'es', 'Mejor relación entre usted y los padres de su estudiante', '<p>La relación padre / tutor es una relación importante y, lamentablemente, se pasa por alto en gran medida. ¿Por qué es importante? Bueno, una buena relación entre usted y el padre o tutor del estudiante sirve para ayudar a los estudiantes a desempeñarse mejor a nivel personal y académico. Fomentar una relación con ellos como tutor puede ser un desafío debido a una serie de factores; sin embargo, hay varias formas de construir esta relación y optimizar el sistema de apoyo al aprendizaje de los estudiantes a lo largo del tiempo.</p>', '<p>La compasión y la positividad lo son todo</p><p>Puede ser estresante para los padres o tutores interactuar con usted. Puede haber temor de que a su hijo no le esté yendo tan bien como debería, falta de tiempo para conectarse o incluso barreras del idioma. Como tutor, ser compasivo y brindar información en un tono educado hace maravillas en situaciones como esta. Es mejor sonreír, hacer contacto visual, ser acogedor y ofrecer cualquier consejo si es necesario. Un buen truco para ayudar a los padres o tutores a hablar con ellos es reconocer primero algo positivo acerca de su hijo que haya notado, sin importar lo pequeño que sea. Por ejemplo, es posible que haya notado que están más involucrados en sus lecciones y hacen más preguntas.</p><p><br></p><p>Sea proactivo y comuníquese con frecuencia</p><p><br></p><p>Es posible que algunos tutores solo hablen con los padres o tutores cuando hay un problema, lo que crea un entorno negativo para ambos. Por eso es clave hacer el esfuerzo de hablar con ellos a menudo, ya sea cara a cara, por teléfono o incluso por correo electrónico. Es mejor mantenerlos actualizados sobre el aprendizaje de sus hijos. Comunicarse a menudo evita que se sientan en alerta máxima cuando se acerca e incluso puede fomentar una hermosa amistad. ¡Por supuesto que es importante saber que los padres y tutores están ocupados! Por eso, cuando te comuniques con ellos, asegúrate de planificar con anticipación para encontrar el momento que mejor funcione para ellos.</p><p><br></p><p>Haga que el padre o tutor se sienta valorado y solicite su consejo</p><p><br></p><p>Una excelente manera de entablar una relación con los padres o tutores es involucrarlos en la educación de sus hijos. Esto no significa solo que los ayuden con la tarea, sino que también podría significar pedirles que participen en actividades o eventos escolares. Preguntarles si les gustaría ayudar a organizar un evento es una excelente manera de conocerlos y darles la oportunidad de conocer a otros padres o tutores. También podría ser algo tan simple como crear un plan de lección que solicite su opinión. Por supuesto, todo esto depende de su horario y si tienen tiempo para participar. Al final, cuanto más intente involucrarlos en las actividades, mejor.</p><p><br></p><p>Otra excelente manera de hacerlos sentir valorados es pedirles su consejo. Si su estudiante muestra comportamientos negativos durante una lección, es aconsejable buscar el consejo del padre o tutor. Al pedirles su consejo, pueden ocurrir dos cosas. Uno, para empezar, es posible que no sepan que existe un comportamiento negativo, ya que es posible que el estudiante no lo esté mostrando en casa. Dos, está construyendo una mejor relación con el padre o tutor al obtener su opinión en esta situación, lo que generará confianza. Las preguntas no tienen que ser solo sobre la educación del estudiante al hablar con él, también puede hacer preguntas sobre el interés del estudiante y los planes que tiene durante las vacaciones. Siempre es importante que te comportes de manera profesional cuando trates con un padre o tutor, pero la conversación no tiene que ser estrictamente sobre educación.</p><p><br></p><p>Evite tomárselo personalmente y hacer suposiciones</p><p><br></p><p>Los padres y tutores son humanos y tienen que lidiar con su propio estrés, ya sea en el trabajo o en su vida familiar. Es mejor para usted mantener siempre la calma y nunca tomar en serio nada de lo que le digan. Siempre debe responder con preguntas que ayuden a calmar la situación. Por ejemplo, un padre o tutor puede decir \"Dices esto porque quieres atrapar a mi hijo\" y la mejor manera de responder a una pregunta como esta es \"Lamento que te sientas así, por favor avísame Por qué piensas esto?</p><p>Además, no debe hacer suposiciones sobre la vida hogareña de un estudiante. A menos que se haya indicado así, una suposición puede causar muchos problemas y puede ser insensible a la situación de una familia. No debe asumir que el estudiante vive con ambos padres o con cualquier padre. Ahora, en nuestro mundo globalmente diverso, no debe asumir que el primer idioma del padre o tutor es el inglés y siempre debe confirmar si pueden hablar inglés en primer lugar. Cada estudiante tendrá una situación diferente a la del próximo. Las suposiciones conducen a malentendidos que pueden crear circunstancias más desafiantes para el aprendizaje.</p><p><br></p><p>Establecer una relación con un padre o tutor a veces puede ser un desafío. Tener estas ideas en mente puede ayudarlo a conectarse mejor con ellas. Es bueno recordar que, al final del día, cuanto mejor sea la conexión que tenga con ellos, mejor podrán ayudar a enseñar al estudiante, lo que en última instancia les permitirá alcanzar el éxito académico y fomentar el amor por el aprendizaje.</p>', 'La relación padre / tutor es una relación importante y, lamentablemente, se pasa por alto en gran medida.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `reserve_meeting_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `special_offer_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `icon`, `order`) VALUES
(520, NULL, '/store/1/default_images/categories_icons/feather.png', NULL),
(522, NULL, '/store/1/default_images/categories_icons/briefcase.png', NULL),
(523, NULL, '/store/1/default_images/categories_icons/heart.png', NULL),
(524, NULL, '/store/1/default_images/categories_icons/umbrella.png', NULL),
(525, NULL, '/store/1/default_images/categories_icons/pie-chart.png', NULL),
(526, NULL, '/store/1/default_images/categories_icons/anchor.png', NULL),
(528, NULL, '/store/1/default_images/categories_icons/code.png', NULL),
(601, 522, NULL, 1),
(602, 522, NULL, 2),
(603, 522, NULL, 3),
(604, 524, NULL, 1),
(605, 524, NULL, 2),
(606, 528, NULL, 1),
(607, 528, NULL, 2),
(608, 528, NULL, 3),
(609, 526, NULL, 1),
(610, 526, NULL, 2),
(611, 526, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `title`) VALUES
(1, 520, 'en', 'Design'),
(2, 522, 'en', 'Academics'),
(3, 523, 'en', 'Health & Fitness'),
(4, 524, 'en', 'Lifestyle'),
(5, 525, 'en', 'Marketing'),
(6, 526, 'en', 'Business'),
(7, 528, 'en', 'Development'),
(8, 601, 'en', 'Math'),
(9, 602, 'en', 'Science'),
(10, 603, 'en', 'Language'),
(11, 604, 'en', 'Lifestyle'),
(12, 605, 'en', 'Beauty & Makeup'),
(13, 606, 'en', 'Web Development'),
(14, 607, 'en', 'Mobile Development'),
(15, 608, 'en', 'Game Development'),
(16, 609, 'en', 'Management'),
(17, 610, 'en', 'Communications'),
(18, 611, 'en', 'Business Strategy'),
(19, 528, 'ar', 'تطوير'),
(20, 606, 'ar', 'تطوير الشبكة'),
(21, 607, 'ar', 'تطوير المحمول'),
(22, 608, 'ar', 'تطوير اللعبة'),
(23, 526, 'ar', 'عمل'),
(24, 609, 'ar', 'إدارة'),
(25, 610, 'ar', 'مجال الاتصالات'),
(26, 611, 'ar', 'استراتيجية العمل'),
(27, 525, 'ar', 'تسويق'),
(28, 524, 'ar', 'أسلوب الحياة'),
(29, 604, 'ar', 'أسلوب الحياة'),
(30, 605, 'ar', 'الجمال والمكياج'),
(31, 523, 'ar', 'الصحة واللياقة البدنية'),
(32, 522, 'ar', 'أكاديميون'),
(33, 601, 'ar', 'رياضيات'),
(34, 602, 'ar', 'علم'),
(35, 603, 'ar', 'لغة'),
(36, 520, 'ar', 'تصميم'),
(37, 528, 'es', 'Desarrollo'),
(38, 606, 'es', 'Desarrollo web'),
(39, 607, 'es', 'Desarrollo móvil'),
(40, 608, 'es', 'Desarrollo de juegos'),
(41, 526, 'es', 'Negocio'),
(42, 609, 'es', 'Gestión'),
(43, 610, 'es', 'Comunicaciones'),
(44, 611, 'es', 'Estrategia de negocios'),
(45, 525, 'es', 'Márketing'),
(46, 524, 'es', 'Estilo de vida'),
(47, 604, 'es', 'Estilo de vida'),
(48, 605, 'es', 'Belleza y maquillaje'),
(49, 523, 'es', 'salud y estado fisico'),
(50, 522, 'es', 'Académica'),
(51, 601, 'es', 'Matemáticas'),
(52, 602, 'es', 'Ciencias'),
(53, 603, 'es', 'Idioma'),
(54, 520, 'es', 'Diseño');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `quiz_result_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `user_grade` int(10) UNSIGNED DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `certificates_templates`
--

CREATE TABLE `certificates_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_x` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_y` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_size` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('draft','publish') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `certificates_templates`
--

INSERT INTO `certificates_templates` (`id`, `image`, `position_x`, `position_y`, `font_size`, `text_color`, `status`, `created_at`, `updated_at`) VALUES
(1, '/store/1/default_images/certificate.jpg', '320', '400', '32', '#314963', 'publish', 1608663541, 1635446250);

-- --------------------------------------------------------

--
-- Table structure for table `certificate_template_translations`
--

CREATE TABLE `certificate_template_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `certificate_template_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `rtl` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate_template_translations`
--

INSERT INTO `certificate_template_translations` (`id`, `certificate_template_id`, `locale`, `title`, `body`, `rtl`) VALUES
(1, 1, 'en', 'Certificate', 'This certificate awarded to [student] \r\nregarding to passing the [course] with \r\nthe [grade] with success\r\nCertificate ID : [certificate_id]', 0),
(2, 1, 'es', 'Certificado', 'Este certificado se otorgó a [student]\r\nen cuanto a aprobar el [course] con\r\nel [grade] con éxito\r\nID de certificado: [certificate_id]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `reply_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `report` tinyint(1) NOT NULL DEFAULT '0',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `viewed_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `comments_reports`
--

CREATE TABLE `comments_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','replied') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `reply`, `status`, `created_at`) VALUES
(1, 'Jaylee Student', 'onghuikim17@gmail.com', '0175972988', 'Computer', 'Testing contact section', NULL, 'pending', 1651818794);

-- --------------------------------------------------------

--
-- Table structure for table `course_learning`
--

CREATE TABLE `course_learning` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text_lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` enum('percentage','fixed_amount') COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` enum('all','course','category','meeting') COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` int(10) UNSIGNED DEFAULT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `max_amount` int(10) UNSIGNED DEFAULT NULL,
  `minimum_order` int(10) UNSIGNED DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '1',
  `user_type` enum('all_users','special_users') COLLATE utf8mb4_unicode_ci NOT NULL,
  `for_first_purchase` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('active','disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `expired_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `creator_id`, `title`, `discount_type`, `source`, `code`, `percent`, `amount`, `max_amount`, `minimum_order`, `count`, `user_type`, `for_first_purchase`, `status`, `expired_at`, `created_at`) VALUES
(7, 1, 'Black Friday', 'percentage', 'all', 'BLK2021', 20, 10, NULL, NULL, 20, 'all_users', 0, 'active', 1639427340, 1626132792);

-- --------------------------------------------------------

--
-- Table structure for table `discount_categories`
--

CREATE TABLE `discount_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_courses`
--

CREATE TABLE `discount_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_groups`
--

CREATE TABLE `discount_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_users`
--

CREATE TABLE `discount_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `creator_id`, `webinar_id`, `order`, `created_at`, `updated_at`) VALUES
(57, 1045, 2026, NULL, 1651752964, NULL),
(58, 1045, 2027, NULL, 1651756456, NULL),
(59, 1047, 2028, NULL, 1651922844, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faq_translations`
--

CREATE TABLE `faq_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_translations`
--

INSERT INTO `faq_translations` (`id`, `faq_id`, `locale`, `title`, `answer`) VALUES
(45, 57, 'en', 'Can my child who does?', 'Yes! This program is suitable for beginners with no prior experience.'),
(46, 58, 'en', 'Can my child who does ?', 'Yes! This program is suitable for beginners with no prior experience.'),
(47, 59, 'en', 'Can my child does?', 'Yes! This program is suitable for beginners with no prior experience.');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `feature_webinars`
--

CREATE TABLE `feature_webinars` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `page` enum('categories','home','home_categories') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('publish','pending') COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `feature_webinar_translations`
--

CREATE TABLE `feature_webinar_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_webinar_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED DEFAULT NULL,
  `accessibility` enum('free','paid') COLLATE utf8mb4_unicode_ci NOT NULL,
  `downloadable` tinyint(1) DEFAULT '0',
  `storage` enum('upload','youtube','vimeo','external_link','google_drive','dropbox','iframe','s3','upload_archive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interactive_type` enum('adobe_captivate','i_spring','custom') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interactive_file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interactive_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `creator_id`, `webinar_id`, `chapter_id`, `accessibility`, `downloadable`, `storage`, `file`, `volume`, `file_type`, `interactive_type`, `interactive_file_name`, `interactive_file_path`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(114, 1045, 2026, 66, 'free', 0, 'upload', '/store/1045/1)Installation of Scratch(6.11.20).mp4', '13.85 MB', 'mp4', NULL, NULL, NULL, NULL, 'active', 1651751079, 1651751212, NULL),
(115, 1045, 2026, 66, 'free', 0, 'upload', '/store/1045/2)Installation of Scratch(6.11.20).pdf', '747.39 KB', 'pdf', NULL, NULL, NULL, NULL, 'active', 1651751178, NULL, NULL),
(116, 1045, 2026, 67, 'paid', 0, 'upload', '/store/1045/1)What is coding.mp4', '79.38 MB', 'mp4', NULL, NULL, NULL, NULL, 'active', 1651751373, NULL, NULL),
(117, 1045, 2026, 68, 'paid', 0, 'upload', '/store/1045/1)Installation of Scratch(6.11.20).mp4', '13.85 MB', 'mp4', NULL, NULL, NULL, NULL, 'active', 1651752025, NULL, NULL),
(118, 1045, 2027, 71, 'free', 0, 'upload', '/store/1045/1)Installation of Scratch(6.11.20).mp4', '13.85 MB', 'mp4', NULL, NULL, NULL, NULL, 'active', 1651755967, NULL, NULL),
(119, 1045, 2027, 71, 'free', 0, 'upload', '/store/1045/2)Installation of Scratch(6.11.20).pdf', '747.39 KB', 'pdf', NULL, NULL, NULL, NULL, 'active', 1651756090, NULL, NULL),
(120, 1045, 2027, 72, 'paid', 0, 'upload', '/store/1045/1)What is coding.mp4', '79.38 MB', 'mp4', NULL, NULL, NULL, NULL, 'active', 1651756298, NULL, NULL),
(121, 1045, 2027, 73, 'paid', 0, 'upload', '/store/1045/1)Installation of Scratch(6.11.20).mp4', '13.85 MB', 'mp4', NULL, NULL, NULL, NULL, 'active', 1651756383, NULL, NULL),
(122, 1047, 2028, 74, 'free', 0, 'upload', '/store/1047/1)Installation of Scratch(6.11.20).mp4', '13.85 MB', 'mp4', NULL, NULL, NULL, NULL, 'active', 1651921791, NULL, NULL),
(123, 1047, 2028, 74, 'paid', 0, 'upload', '/store/1047/2)Installation of Scratch(6.11.20).pdf', '747.39 KB', 'pdf', NULL, NULL, NULL, NULL, 'active', 1651921961, 1651921992, NULL),
(124, 1047, 2028, 74, 'paid', 1, 'upload', '/store/1047/2)Installation of Scratch(6.11.20).pdf', '747.39 KB', 'pdf', NULL, NULL, NULL, NULL, 'active', 1651922046, NULL, NULL),
(125, 1047, 2028, 75, 'paid', 0, 'upload', '/store/1047/1)What is coding.mp4', '79.38 MB', 'mp4', NULL, NULL, NULL, NULL, 'active', 1651922165, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_translations`
--

CREATE TABLE `file_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_translations`
--

INSERT INTO `file_translations` (`id`, `file_id`, `locale`, `title`, `description`) VALUES
(84, 114, 'en', '1)Installation of software (video)', 'Installation of Scratch 3 offline software'),
(85, 115, 'en', '2)Installation of software (guidelines)', NULL),
(86, 116, 'en', '1)What is Coding?', NULL),
(87, 117, 'en', '1)History, Code in Everyday objects and more! (Video problem)', NULL),
(88, 118, 'en', '1)Installation of software (video)', NULL),
(89, 119, 'en', '2)Installation of software (guidelines)', NULL),
(90, 120, 'en', '1)What is Coding?', NULL),
(91, 121, 'en', '1)History, Code in Everyday objects and more! (Video problem)', NULL),
(92, 122, 'en', '1)Installation of software (video)', NULL),
(93, 123, 'en', '2)Installation of software (guidelines-not downloadable)', NULL),
(94, 124, 'en', '3)Installation of software (guidelines-downloadable)', NULL),
(95, 125, 'en', '1)What is coding?', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`id`, `category_id`) VALUES
(1805, 520),
(1819, 520),
(1834, 520),
(1809, 523),
(1823, 523),
(1838, 523),
(1812, 525),
(1826, 525),
(1841, 525),
(1806, 601),
(1820, 601),
(1835, 601),
(1807, 602),
(1821, 602),
(1836, 602),
(1808, 603),
(1822, 603),
(1837, 603),
(1810, 604),
(1824, 604),
(1839, 604),
(1811, 605),
(1825, 605),
(1840, 605),
(1816, 606),
(1831, 606),
(1845, 606),
(1817, 607),
(1832, 607),
(1846, 607),
(1818, 608),
(1833, 608),
(1847, 608),
(1813, 609),
(1827, 609),
(1842, 609),
(1814, 610),
(1829, 610),
(1843, 610),
(1815, 611),
(1830, 611),
(1844, 611);

-- --------------------------------------------------------

--
-- Table structure for table `filter_options`
--

CREATE TABLE `filter_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `filter_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `filter_options`
--

INSERT INTO `filter_options` (`id`, `filter_id`, `order`) VALUES
(9114, 1805, 1),
(9115, 1805, 2),
(9116, 1805, 3),
(9117, 1806, 1),
(9118, 1806, 2),
(9119, 1806, 3),
(9120, 1807, 1),
(9121, 1807, 2),
(9122, 1807, 3),
(9123, 1808, 1),
(9124, 1808, 2),
(9125, 1808, 3),
(9126, 1809, 1),
(9127, 1809, 2),
(9128, 1809, 3),
(9129, 1810, 1),
(9130, 1810, 2),
(9131, 1810, 3),
(9132, 1811, 1),
(9133, 1811, 2),
(9134, 1811, 3),
(9135, 1812, 1),
(9136, 1812, 2),
(9137, 1812, 3),
(9138, 1813, 1),
(9139, 1813, 2),
(9140, 1813, 3),
(9141, 1814, 1),
(9142, 1814, 2),
(9143, 1814, 3),
(9144, 1815, 1),
(9145, 1815, 2),
(9146, 1815, 3),
(9147, 1816, 1),
(9148, 1816, 2),
(9149, 1816, 3),
(9150, 1817, 1),
(9151, 1817, 2),
(9152, 1817, 3),
(9153, 1818, 1),
(9154, 1818, 2),
(9155, 1818, 3),
(9156, 1819, 1),
(9157, 1819, 3),
(9158, 1819, 2),
(9159, 1819, 4),
(9160, 1819, 5),
(9161, 1820, 1),
(9162, 1820, 3),
(9163, 1820, 2),
(9164, 1820, 4),
(9165, 1820, 5),
(9166, 1821, 1),
(9167, 1821, 3),
(9168, 1821, 2),
(9169, 1821, 4),
(9170, 1821, 5),
(9171, 1822, 1),
(9172, 1822, 3),
(9173, 1822, 2),
(9174, 1822, 4),
(9175, 1822, 5),
(9176, 1823, 1),
(9177, 1823, 3),
(9178, 1823, 2),
(9179, 1823, 4),
(9180, 1823, 5),
(9181, 1824, 1),
(9182, 1824, 3),
(9183, 1824, 2),
(9184, 1824, 4),
(9185, 1824, 5),
(9186, 1825, 1),
(9187, 1825, 3),
(9188, 1825, 2),
(9189, 1825, 4),
(9190, 1825, 5),
(9191, 1826, 1),
(9192, 1826, 3),
(9193, 1826, 2),
(9194, 1826, 4),
(9195, 1826, 5),
(9196, 1827, 1),
(9197, 1827, 3),
(9198, 1827, 2),
(9199, 1827, 4),
(9200, 1827, 5),
(9206, 1829, 1),
(9207, 1829, 3),
(9208, 1829, 2),
(9209, 1829, 4),
(9210, 1829, 5),
(9211, 1830, 1),
(9212, 1830, 3),
(9213, 1830, 2),
(9214, 1830, 4),
(9215, 1830, 5),
(9216, 1831, 1),
(9217, 1831, 3),
(9218, 1831, 2),
(9219, 1831, 4),
(9220, 1831, 5),
(9221, 1832, 1),
(9222, 1832, 3),
(9223, 1832, 2),
(9224, 1832, 4),
(9225, 1832, 5),
(9226, 1833, 1),
(9227, 1833, 3),
(9228, 1833, 2),
(9229, 1833, 4),
(9230, 1833, 5),
(9231, 1834, 1),
(9232, 1834, 2),
(9233, 1834, 3),
(9234, 1834, 4),
(9235, 1834, 5),
(9236, 1835, 1),
(9237, 1835, 2),
(9238, 1835, 3),
(9239, 1835, 4),
(9240, 1836, 1),
(9241, 1836, 2),
(9242, 1836, 3),
(9243, 1836, 4),
(9244, 1837, 1),
(9245, 1837, 2),
(9246, 1837, 3),
(9247, 1837, 4),
(9248, 1837, 5),
(9249, 1838, 1),
(9250, 1838, 2),
(9251, 1838, 3),
(9252, 1838, 4),
(9253, 1839, 3),
(9254, 1839, 1),
(9255, 1839, 2),
(9256, 1839, 4),
(9257, 1840, 1),
(9258, 1840, 2),
(9259, 1840, 3),
(9260, 1840, 4),
(9261, 1840, 5),
(9262, 1841, 1),
(9263, 1841, 2),
(9264, 1841, 3),
(9265, 1841, 4),
(9266, 1842, 1),
(9267, 1842, 2),
(9268, 1842, 3),
(9269, 1842, 4),
(9270, 1843, 1),
(9271, 1843, 2),
(9272, 1843, 3),
(9273, 1843, 4),
(9274, 1843, 5),
(9275, 1844, 1),
(9276, 1844, 2),
(9277, 1844, 3),
(9278, 1844, 4),
(9279, 1845, 1),
(9280, 1845, 2),
(9281, 1845, 3),
(9282, 1845, 4),
(9283, 1845, 5),
(9284, 1846, 1),
(9285, 1846, 2),
(9286, 1846, 3),
(9287, 1846, 4),
(9288, 1847, 1),
(9289, 1847, 2),
(9290, 1847, 3),
(9291, 1847, 4),
(9292, 1847, 5);

-- --------------------------------------------------------

--
-- Table structure for table `filter_option_translations`
--

CREATE TABLE `filter_option_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filter_option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_option_translations`
--

INSERT INTO `filter_option_translations` (`id`, `filter_option_id`, `locale`, `title`) VALUES
(1, 9114, 'en', 'Beginner'),
(2, 9115, 'en', 'Intermediate'),
(3, 9116, 'en', 'Expert'),
(4, 9117, 'en', 'Beginner'),
(5, 9118, 'en', 'Intermediate'),
(6, 9119, 'en', 'Expert'),
(7, 9120, 'en', 'Beginner'),
(8, 9121, 'en', 'Intermediate'),
(9, 9122, 'en', 'Expert'),
(10, 9123, 'en', 'Beginner'),
(11, 9124, 'en', 'Intermediate'),
(12, 9125, 'en', 'Expert'),
(13, 9126, 'en', 'Beginner'),
(14, 9127, 'en', 'Intermediate'),
(15, 9128, 'en', 'Expert'),
(16, 9129, 'en', 'Beginner'),
(17, 9130, 'en', 'Intermediate'),
(18, 9131, 'en', 'Intermediate'),
(19, 9132, 'en', 'Beginner'),
(20, 9133, 'en', 'Intermediate'),
(21, 9134, 'en', 'Expert'),
(22, 9135, 'en', 'Beginner'),
(23, 9136, 'en', 'Intermediate'),
(24, 9137, 'en', 'Expert'),
(25, 9138, 'en', 'Beginner'),
(26, 9139, 'en', 'Intermediate'),
(27, 9140, 'en', 'Expert'),
(28, 9141, 'en', 'Beginner'),
(29, 9142, 'en', 'Intermediate'),
(30, 9143, 'en', 'Expert'),
(31, 9144, 'en', 'Beginner'),
(32, 9145, 'en', 'Intermediate'),
(33, 9146, 'en', 'Expert'),
(34, 9147, 'en', 'Beginner'),
(35, 9148, 'en', 'Intermediate'),
(36, 9149, 'en', 'Expert'),
(37, 9150, 'en', 'Beginner'),
(38, 9151, 'en', 'Intermediate'),
(39, 9152, 'en', 'Expert'),
(40, 9153, 'en', 'Beginner'),
(41, 9154, 'en', 'Intermediate'),
(42, 9155, 'en', 'Expert'),
(43, 9156, 'en', 'English'),
(44, 9157, 'en', 'Português'),
(45, 9158, 'en', 'Español'),
(46, 9159, 'en', 'हिन्'),
(47, 9160, 'en', 'العربية'),
(48, 9161, 'en', 'English'),
(49, 9162, 'en', 'Português'),
(50, 9163, 'en', 'Español'),
(51, 9164, 'en', 'हिन्'),
(52, 9165, 'en', 'العربية'),
(53, 9166, 'en', 'English'),
(54, 9167, 'en', 'Português'),
(55, 9168, 'en', 'Español'),
(56, 9169, 'en', 'हिन्'),
(57, 9170, 'en', 'العربية'),
(58, 9171, 'en', 'English'),
(59, 9172, 'en', 'Português'),
(60, 9173, 'en', 'Español'),
(61, 9174, 'en', 'हिन्'),
(62, 9175, 'en', 'العربية'),
(63, 9176, 'en', 'English'),
(64, 9177, 'en', 'Português'),
(65, 9178, 'en', 'Español'),
(66, 9179, 'en', 'हिन्'),
(67, 9180, 'en', 'العربية'),
(68, 9181, 'en', 'English'),
(69, 9182, 'en', 'Português'),
(70, 9183, 'en', 'Español'),
(71, 9184, 'en', 'हिन्'),
(72, 9185, 'en', 'العربية'),
(73, 9186, 'en', 'English'),
(74, 9187, 'en', 'Português'),
(75, 9188, 'en', 'Español'),
(76, 9189, 'en', 'हिन्'),
(77, 9190, 'en', 'العربية'),
(78, 9191, 'en', 'English'),
(79, 9192, 'en', 'Português'),
(80, 9193, 'en', 'Español'),
(81, 9194, 'en', 'हिन्'),
(82, 9195, 'en', 'العربية'),
(83, 9196, 'en', 'English'),
(84, 9197, 'en', 'Português'),
(85, 9198, 'en', 'Español'),
(86, 9199, 'en', 'हिन्'),
(87, 9200, 'en', 'العربية'),
(88, 9206, 'en', 'English'),
(89, 9207, 'en', 'Português'),
(90, 9208, 'en', 'Español'),
(91, 9209, 'en', 'हिन्'),
(92, 9210, 'en', 'العربية'),
(93, 9211, 'en', 'English'),
(94, 9212, 'en', 'Português'),
(95, 9213, 'en', 'Español'),
(96, 9214, 'en', 'हिन्'),
(97, 9215, 'en', 'العربية'),
(98, 9216, 'en', 'English'),
(99, 9217, 'en', 'Português'),
(100, 9218, 'en', 'Español'),
(101, 9219, 'en', 'हिन्'),
(102, 9220, 'en', 'العربية'),
(103, 9221, 'en', 'English'),
(104, 9222, 'en', 'Português'),
(105, 9223, 'en', 'Español'),
(106, 9224, 'en', 'हिन्'),
(107, 9225, 'en', 'العربية'),
(108, 9226, 'en', 'English'),
(109, 9227, 'en', 'Português'),
(110, 9228, 'en', 'Español'),
(111, 9229, 'en', 'हिन्'),
(112, 9230, 'en', 'العربية'),
(113, 9231, 'en', 'Photoshop'),
(114, 9232, 'en', 'Adobe Illustrator'),
(115, 9233, 'en', 'Blender'),
(116, 9234, 'en', '3D Modeling'),
(117, 9235, 'en', 'After Effects'),
(118, 9236, 'en', 'Math'),
(119, 9237, 'en', 'Algebra'),
(120, 9238, 'en', 'Calculus'),
(121, 9239, 'en', 'Statistics'),
(122, 9240, 'en', 'Physics'),
(123, 9241, 'en', 'Chemistry'),
(124, 9242, 'en', 'Biology'),
(125, 9243, 'en', 'Genetics'),
(126, 9244, 'en', 'English Language'),
(127, 9245, 'en', 'English Grammar'),
(128, 9246, 'en', 'Spanish Language'),
(129, 9247, 'en', 'Arabic Language'),
(130, 9248, 'en', 'IELTS'),
(131, 9249, 'en', 'Yoga'),
(132, 9250, 'en', 'Fitness'),
(133, 9251, 'en', 'Health'),
(134, 9252, 'en', 'Dance'),
(135, 9253, 'en', 'Chess'),
(136, 9254, 'en', 'Cooking'),
(137, 9255, 'en', 'Drawing'),
(138, 9256, 'en', 'Reiki'),
(139, 9257, 'en', 'Makeup Artistry'),
(140, 9258, 'en', 'Hair Styling'),
(141, 9259, 'en', 'Skincare'),
(142, 9260, 'en', 'Fashion'),
(143, 9261, 'en', 'Nail Art'),
(144, 9262, 'en', 'Digital Marketing'),
(145, 9263, 'en', 'SEO'),
(146, 9264, 'en', 'Marketing Strategy'),
(147, 9265, 'en', 'Social Media Marketing'),
(148, 9266, 'en', 'Leadership'),
(149, 9267, 'en', 'Management Skills'),
(150, 9268, 'en', 'ISO 9001'),
(151, 9269, 'en', 'Manager Training'),
(152, 9270, 'en', 'Communication Skills'),
(153, 9271, 'en', 'Presentation Skills'),
(154, 9272, 'en', 'Public Speaking'),
(155, 9273, 'en', 'Business Communication'),
(156, 9274, 'en', 'Writing'),
(157, 9275, 'en', 'Business Strategy'),
(158, 9276, 'en', 'Strategic Planning'),
(159, 9277, 'en', 'Marketing Strategy'),
(160, 9278, 'en', 'Innovation'),
(161, 9279, 'en', 'HTML'),
(162, 9280, 'en', 'CSS'),
(163, 9281, 'en', 'PHP'),
(164, 9282, 'en', 'JavaScript'),
(165, 9283, 'en', 'Laravel'),
(166, 9284, 'en', 'Android Development'),
(167, 9285, 'en', 'iOS Development'),
(168, 9286, 'en', 'Google Flutter'),
(169, 9287, 'en', 'React NativeKotlin'),
(170, 9288, 'en', 'Unity'),
(171, 9289, 'en', 'Unreal Engine'),
(172, 9290, 'en', 'Unreal Engine Blueprints'),
(173, 9291, 'en', '3D Game Development'),
(174, 9292, 'en', 'Game Development Fundamentals');

-- --------------------------------------------------------

--
-- Table structure for table `filter_translations`
--

CREATE TABLE `filter_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filter_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_translations`
--

INSERT INTO `filter_translations` (`id`, `filter_id`, `locale`, `title`) VALUES
(1, 1805, 'en', 'Level'),
(2, 1806, 'en', 'Level'),
(3, 1807, 'en', 'Level'),
(4, 1808, 'en', 'Level'),
(5, 1809, 'en', 'Level'),
(6, 1810, 'en', 'Level'),
(7, 1811, 'en', 'Level'),
(8, 1812, 'en', 'Level'),
(9, 1813, 'en', 'Level'),
(10, 1814, 'en', 'Level'),
(11, 1815, 'en', 'Level'),
(12, 1816, 'en', 'Level'),
(13, 1817, 'en', 'Level'),
(14, 1818, 'en', 'Level'),
(15, 1819, 'en', 'Language'),
(16, 1820, 'en', 'Language'),
(17, 1821, 'en', 'Language'),
(18, 1822, 'en', 'Language'),
(19, 1823, 'en', 'Language'),
(20, 1824, 'en', 'Language'),
(21, 1825, 'en', 'Language'),
(22, 1826, 'en', 'Language'),
(23, 1827, 'en', 'Language'),
(24, 1829, 'en', 'Language'),
(25, 1830, 'en', 'Language'),
(26, 1831, 'en', 'Language'),
(27, 1832, 'en', 'Language'),
(28, 1833, 'en', 'Language'),
(29, 1834, 'en', 'Topic'),
(30, 1835, 'en', 'Topic'),
(31, 1836, 'en', 'Topic'),
(32, 1837, 'en', 'Topic'),
(33, 1838, 'en', 'Topic'),
(34, 1839, 'en', 'Topic'),
(35, 1840, 'en', 'Topic'),
(36, 1841, 'en', 'Topic'),
(37, 1842, 'en', 'Topic'),
(38, 1843, 'en', 'Topic'),
(39, 1844, 'en', 'Topic'),
(40, 1845, 'en', 'Topic'),
(41, 1846, 'en', 'Topic'),
(42, 1847, 'en', 'Topic');

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` int(10) UNSIGNED NOT NULL,
  `follower` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('requested','accepted','rejected') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`id`, `follower`, `user_id`, `status`) VALUES
(1, 1046, 1045, 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `creator_id`, `name`, `discount`, `commission`, `status`, `created_at`) VALUES
(2, 1, 'Vip Instructors', 20, 10, 'active', 1613379096),
(3, 1, 'Special Students', 10, NULL, 'active', 1614530208);

-- --------------------------------------------------------

--
-- Table structure for table `groups_registration_packages`
--

CREATE TABLE `groups_registration_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `instructors_count` int(11) DEFAULT NULL,
  `students_count` int(11) DEFAULT NULL,
  `courses_capacity` int(11) DEFAULT NULL,
  `courses_count` int(11) DEFAULT NULL,
  `meeting_count` int(11) DEFAULT NULL,
  `status` enum('disabled','active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_users`
--

CREATE TABLE `group_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `in_person` tinyint(1) NOT NULL DEFAULT '0',
  `in_person_amount` int(11) DEFAULT NULL,
  `group_meeting` tinyint(1) NOT NULL DEFAULT '0',
  `online_group_min_student` int(11) DEFAULT NULL,
  `online_group_max_student` int(11) DEFAULT NULL,
  `online_group_amount` int(11) DEFAULT NULL,
  `in_person_group_min_student` int(11) DEFAULT NULL,
  `in_person_group_max_student` int(11) DEFAULT NULL,
  `in_person_group_amount` int(11) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT '0',
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_times`
--

CREATE TABLE `meeting_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `meeting_id` int(10) UNSIGNED NOT NULL,
  `meeting_type` enum('all','in_person','online') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `day_label` enum('saturday','sunday','monday','tuesday','wednesday','thursday','friday') COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_09_145553_create_roles_table', 1),
(4, '2020_08_09_145834_create_sections_table', 1),
(5, '2020_08_09_145926_create_permissions_table', 1),
(6, '2020_08_24_163003_create_webinars_table', 1),
(7, '2020_08_24_164823_create_webinar_partner_teacher_table', 1),
(8, '2020_08_24_165658_create_tags_table', 1),
(9, '2020_08_24_165835_create_webinar_tag_table', 1),
(10, '2020_08_24_171611_create_categories_table', 1),
(11, '2020_08_29_052437_create_filters_table', 1),
(12, '2020_08_29_052900_create_filter_options_table', 1),
(13, '2020_08_29_054455_add_category_id_in_webinar_table', 1),
(14, '2020_09_01_174741_add_seo_description_and_start_end_time_in_webinar_table', 1),
(15, '2020_09_02_180508_create_webinar_filter_option_table', 1),
(16, '2020_09_02_193923_create_tickets_table', 1),
(17, '2020_09_02_210447_create_sessions_table', 1),
(18, '2020_09_02_212642_create_files_table', 1),
(19, '2020_09_03_175543_create_faqs_table', 1),
(20, '2020_09_08_175539_delete_webinar_tag_and_update_tag_table', 1),
(21, '2020_09_09_154522_create_quizzes_table', 1),
(22, '2020_09_09_174646_create_quizzes_questions_table', 1),
(23, '2020_09_09_182726_create_quizzes_questions_answers_table', 1),
(24, '2020_09_14_160028_create_prerequisites_table', 1),
(25, '2020_09_14_183235_nullable_item_id_in_quizzes_table', 1),
(26, '2020_09_14_190110_create_webinar_quizzes_table', 1),
(27, '2020_09_16_163835_create_quizzes_results_table', 1),
(28, '2020_09_24_102115_add_total_mark_in_quize_table', 1),
(29, '2020_09_24_132242_create_comment_table', 1),
(30, '2020_09_24_132639_create_favorites_table', 1),
(31, '2020_09_26_181200_create_certificate_table', 1),
(32, '2020_09_26_181444_create_certificates_templates_table', 1),
(33, '2020_09_30_170451_add_slug_in_webinars_table', 1),
(34, '2020_09_30_191202_create_purchases_table', 1),
(35, '2020_10_02_063828_create_rating_table', 1),
(36, '2020_10_02_094723_edit_table_and_add_foreign_key', 1),
(37, '2020_10_08_055408_add_reviwes_table', 1),
(38, '2020_10_08_084100_edit_status_comments_table', 1),
(39, '2020_10_08_121041_create_meetings_table', 2),
(40, '2020_10_08_121621_create_meeting_times_table', 2),
(41, '2020_10_08_121848_create_meeting_requests_table', 2),
(42, '2020_10_15_172913_add_about_and_head_line_in_users_table', 2),
(43, '2020_10_15_173645_create_follow_table', 2),
(46, '2020_10_17_100606_create_badges_table', 3),
(47, '2020_10_08_121848_create_reserve_meetings_table', 4),
(48, '2020_10_20_193013_update_users_table', 5),
(49, '2020_10_20_211927_create_users_metas_table', 6),
(50, '2020_10_18_220323_convert_creatore_user_id_to_creator_id', 7),
(51, '2020_10_22_153502_create_cart_table', 7),
(52, '2020_10_22_154636_create_orders_table', 7),
(53, '2020_10_22_155930_create_order_items_table', 7),
(54, '2020_10_23_204203_create_sales_table', 7),
(55, '2020_10_23_211459_create_accounting_table', 7),
(56, '2020_10_23_213515_create_discounts_table', 7),
(57, '2020_10_23_213934_create_discount_users_table', 7),
(58, '2020_10_23_235444_create_ticket_users_table', 7),
(59, '2020_10_25_172331_create_groups_table', 7),
(60, '2020_10_25_172523_create_group_users_table', 7),
(62, '2020_11_02_202754_edit_email_in_users_table', 8),
(63, '2020_11_03_200314_edit_some_tables', 9),
(64, '2020_11_06_193300_create_settings_table', 10),
(67, '2020_11_09_202533_create_feature_webinars_table', 11),
(68, '2020_11_10_193459_edit_webinars_table', 12),
(69, '2020_11_11_203344_create_trend_categories_table', 13),
(72, '2020_11_11_222833_create_blog_categories_table', 14),
(75, '2020_11_11_231204_create_blog_table', 15),
(76, '2020_10_25_223247_add_sub_title_tickets_table', 16),
(77, '2020_10_28_001340_add_count_in_discount_users_table', 16),
(78, '2020_10_28_221509_create_payment_channels_table', 16),
(79, '2020_11_01_120909_change_class_name_enum_payment_channels_table', 16),
(80, '2020_11_07_233948_add_some_raw_in_order_items__table', 16),
(81, '2020_11_10_061350_add_discount_id_in_order_items_table', 16),
(82, '2020_11_10_071651_decimal_orders_order_items_sales_table', 16),
(83, '2020_11_11_193138_change_reference_id_type_in_orders_tabel', 16),
(84, '2020_11_11_222413_change_meeting_id_to_meeting_time_id_in_order_items_table', 16),
(85, '2020_11_11_225421_add_locked_at_and_reserved_at_and_change_request_time_to_day_in_reserve_meetings_table', 17),
(86, '2020_11_12_000116_add_type_in_orders_table', 17),
(87, '2020_11_12_001912_change_meeting_id_to_meeting_time_id_in_accounting_table', 17),
(88, '2020_11_12_133009_decimal_paid_amount_in_reserve_meetings_table', 17),
(91, '2020_11_12_170109_add_blog_id_to_comments_table', 18),
(98, '2020_11_14_201228_add_bio_and_ban_to_users_table', 20),
(99, '2020_11_14_224447_create_users_badges_table', 21),
(100, '2020_11_14_233319_create_payout_request_table', 22),
(101, '2020_11_15_010622_change_byer_id_and_add_seller_id_in_sales_table', 22),
(102, '2020_11_16_195009_create_supports_table', 22),
(103, '2020_11_16_201814_create_support_departments_table', 22),
(107, '2020_11_16_202254_create_supports_table', 23),
(109, '2020_11_17_192744_create_support_conversations_table', 24),
(110, '2020_11_17_072348_create_offline_payments_table', 25),
(111, '2020_11_19_191943_add_replied_status_to_comments_table', 25),
(114, '2020_11_20_215748_create_subscribes_table', 26),
(115, '2020_11_21_185519_create_notification_templates_table', 27),
(116, '2020_11_22_210832_create_promotions_table', 28),
(118, '2020_11_23_194153_add_status_column_to_discounts_table', 29),
(119, '2020_11_23_213532_create_users_occupations_table', 30),
(120, '2020_11_30_220855_change_amount_in_payouts_table', 31),
(121, '2020_11_30_231334_add_pay_date_in_offline_payments_table', 31),
(122, '2020_11_30_233018_add_charge_enum_in_type_in_orders_table', 31),
(123, '2020_12_01_193948_create_testimonials_table', 32),
(124, '2020_12_02_202043_edit_and_add_types_to_webinars_table', 33),
(128, '2020_12_04_204048_add_column_creator_id_to_some_tables', 34),
(129, '2020_12_05_205320_create_text_lessons_table', 35),
(130, '2020_12_05_210052_create_text_lessons_attachments_table', 36),
(131, '2020_12_06_215701_add_order_column_to_webinar_items_tables', 37),
(132, '2020_12_11_114844_add_column_storage_to_files_table', 38),
(133, '2020_12_07_211009_add_subscribe_id_in_order_items_table', 39),
(134, '2020_12_07_211657_nullable_payment_method_in_orders_table', 39),
(135, '2020_12_07_212306_add_subscribe_enum__type_in_orders_table', 39),
(136, '2020_12_07_223237_changes_in_sales_table', 39),
(137, '2020_12_07_224925_add_subscribe_id_in_accounting_table', 39),
(138, '2020_12_07_230200_create_subscribe_uses_table', 39),
(139, '2020_12_11_123209_add_subscribe_type_account_in_accounting_table', 39),
(140, '2020_12_11_132819_add_sale_id_in_subscribe_use_in_subscribe_uses_table', 39),
(141, '2020_12_11_135824_add_subscribe_payment_method_in_sales_table', 39),
(143, '2020_12_13_205751_create_advertising_banners_table', 41),
(145, '2020_12_14_204251_create_become_instructors_table', 42),
(146, '2020_11_12_232207_create_reports_table', 43),
(147, '2020_11_12_232207_create_comments_reports_table', 44),
(148, '2020_12_17_210822_create_webinar_reports_table', 45),
(150, '2020_12_18_181551_create_notifications_table', 46),
(151, '2020_12_18_195833_create_notifications_status_table', 47),
(152, '2020_12_19_195152_add_status_column_to_payment_channels_table', 48),
(154, '2020_12_20_231434_create_contacts_table', 49),
(155, '2020_12_21_210345_edit_quizzes_table', 50),
(156, '2020_12_24_221715_add_column_to_users_table', 50),
(157, '2020_12_24_084728_create_special_offers_table', 51),
(158, '2020_12_25_204545_add_promotion_enum_type_in_orders_table', 51),
(159, '2020_12_25_205139_add_promotion_id_in_order_items_table', 51),
(160, '2020_12_25_205811_add_promotion_id_in_accounting_table', 51),
(161, '2020_12_25_210341_add_promotion_id_in_sales_table', 51),
(162, '2020_12_25_212453_add_promotion_type_account_enum_in_accounting_table', 51),
(163, '2020_12_25_231005_add_promotion_type_enum_in_sales_table', 51),
(166, '2020_12_29_192943_add_column_reply_to_contacts_table', 53),
(167, '2020_12_30_225001_create_payu_transactions_table', 54),
(168, '2021_01_06_202649_edit_column_password_from_users_table', 55),
(169, '2021_01_08_134022_add_api_column_to_sessions_table', 56),
(170, '2021_01_10_215540_add_column_store_type_to_accounting', 57),
(173, '2021_01_13_214145_edit_carts_table', 58),
(174, '2021_01_13_230725_delete_column_type_from_orders_table', 59),
(175, '2021_01_20_214653_add_discount_column_to_reserve_meetings_table', 60),
(177, '2021_01_27_193915_add_foreign_key_to_support_conversations_table', 61),
(178, '2021_02_02_203821_add_viewed_at_column_to_comments_table', 62),
(180, '2021_02_12_134504_add_financial_approval_column_to_users_table', 64),
(181, '2021_02_12_131916_create_verifications_table', 65),
(182, '2021_02_15_221518_add_certificate_to_users_table', 66),
(183, '2021_02_16_194103_add_cloumn_private_to_webinars_table', 66),
(184, '2021_02_18_213601_edit_rates_column_webinar_reviews_table', 67),
(188, '2021_02_27_212131_create_noticeboards_table', 68),
(189, '2021_02_27_213940_create_noticeboards_status_table', 68),
(191, '2021_02_28_195025_edit_groups_table', 69),
(192, '2021_03_06_205221_create_newsletters_table', 70),
(193, '2021_03_12_105526_add_is_main_column_to_roles_table', 71),
(194, '2021_03_12_202441_add_description_column_to_feature_webinars_table', 72),
(195, '2021_03_18_130248_edit_status_column_from_supports_table', 73),
(196, '2021_03_19_113306_add_column_order_to_categories_table', 74),
(197, '2021_03_19_115939_add_column_order_to_filter_options_table', 75),
(199, '2021_03_24_100005_edit_discounts_table', 76),
(200, '2021_03_27_204551_create_sales_status_table', 77),
(202, '2021_03_28_182558_add_column_page_to_settings_table', 78),
(206, '2021_03_31_195835_add_new_status_in_reserve_meetings_table', 79),
(207, '2020_12_12_204705_create_course_learning_table', 80),
(208, '2021_04_19_195452_add_meta_description_column_to_blog_table', 81),
(209, '2021_04_21_200131_add_icon_column_to_categories_table', 82),
(210, '2021_04_21_203746_add_is_popular_column_to_subscribes_table', 83),
(211, '2021_04_25_203955_add_is_charge_account_column_to_order_items', 84),
(212, '2021_04_25_203955_add_is_charge_account_column_to_orders', 85),
(213, '2021_05_13_111720_add_moderator_secret_column_to_sessions_table', 86),
(214, '2021_05_13_123920_add_zoom_id_column_to_sessions_table', 87),
(215, '2021_05_14_182848_create_session_reminds_table', 88),
(217, '2021_05_25_193743_create_users_zoom_api_table', 89),
(218, '2021_05_25_205716_add_new_column_to_sessions_table', 90),
(219, '2021_05_27_095128_add_user_id_to_newsletters_table', 91),
(220, '2020_12_27_192459_create_pages_table', 92),
(221, '2021_07_03_222439_add_special_offer_id_to_cart_table', 93),
(222, '2021_09_02_101422_add_payment_data_to_orders_table', 94),
(223, '2021_09_02_110519_add_sender_id_to_notifications_table', 95),
(224, '2021_09_06_113524_create_webinar_chapters_table', 96),
(228, '2021_09_06_114459_add_chapter_id_to_files_table', 97),
(229, '2021_09_06_114532_add_chapter_id_to_text_lessons_table', 97),
(230, '2021_09_06_114547_add_chapter_id_to_sessions_table', 97),
(231, '2021_09_13_134659_add_chapter_id_to_quizzes_table', 98),
(234, '2021_09_14_122505_create_affiliates_table', 100),
(235, '2021_09_14_122117_create_affiliates_codes_table', 101),
(239, '2021_09_14_142927_add_affiliate_column_to_users_table', 105),
(241, '2021_09_14_142302_add_affiliate_column_to_accounting_table', 106),
(244, '2021_09_18_155914_create_blog_translations_table', 107),
(246, '2021_09_19_190400_create_page_translations_table', 108),
(248, '2021_09_19_203526_create_setting_translations_table', 109),
(250, '2021_09_20_140241_create_advertising_banners_translations_table', 110),
(252, '2021_09_20_175518_create_category_translations_table', 111),
(255, '2021_09_20_184724_create_filter_translations_table', 112),
(256, '2021_09_20_185132_create_filter_option_translations_table', 112),
(258, '2021_09_21_160650_create_subscribe_translations_table', 113),
(260, '2021_09_21_162922_create_promotion_translations_table', 114),
(262, '2021_09_21_164954_create_testimonial_translations_table', 115),
(264, '2021_09_21_182251_create_feature_webinar_translations_table', 116),
(266, '2021_09_21_184239_create_certificate_template_translations_table', 117),
(268, '2021_09_21_195731_create_support_department_translations_table', 118),
(270, '2021_09_21_201512_create_badge_translations_table', 119),
(272, '2021_09_22_120723_create_webinar_translations_table', 120),
(274, '2021_09_22_135518_create_ticket_translations_table', 121),
(276, '2021_09_22_144342_create_webinar_chapter_translations_table', 122),
(278, '2021_09_22_162502_create_session_translations_table', 123),
(280, '2021_09_22_172309_create_file_translations_table', 124),
(282, '2021_09_22_173500_create_faq_translations_table', 125),
(284, '2021_09_23_094903_create_text_lesson_translations_table', 126),
(286, '2021_09_27_194537_create_quiz_translations_table', 127),
(288, '2021_09_28_112529_create_quiz_question_translations_table', 128),
(290, '2021_09_28_122513_create_quizzes_questions_answer_translations_table', 129);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `user_id`, `email`, `created_at`) VALUES
(8, 995, 'cameronschofield@gmail.com', 1625090411),
(9, 1017, 'a.pmelaa@gmail.com', 1646389129),
(10, 996, 'robert2002@gmail.com', 1646414262);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters_history`
--

CREATE TABLE `newsletters_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_method` enum('send_to_all','send_to_bcc','send_to_excel') COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_count` int(11) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters_history`
--

INSERT INTO `newsletters_history` (`id`, `title`, `description`, `send_method`, `bcc_email`, `email_count`, `created_at`) VALUES
(1, 'Black Friday OFF', '<p>Hello,</p><p>Be sure to check our Black Friday discounts.</p><p>Regards.</p>', 'send_to_all', NULL, 2, 1646389249);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards`
--

CREATE TABLE `noticeboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `organ_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('all','organizations','students','instructors','students_and_instructors') COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboards`
--

INSERT INTO `noticeboards` (`id`, `organ_id`, `user_id`, `type`, `sender`, `title`, `message`, `created_at`) VALUES
(10, NULL, NULL, 'all', 'Staff', 'Top summer classes', '<p>You can find top summer courses on the platform homepage and get all of them with 50% discount by using \"mysummer\" discount coupon.</p>', 1625921717),
(11, NULL, NULL, 'instructors', 'Staff', 'Instructor terms of services changed', '<p>Instructors terms of services changed on July 17. You can read terms on the terms page.</p>', 1625921872),
(12, NULL, NULL, 'all', 'Staff', 'New Year Sales Festival', '<p>Due to the New Year Festival, users who buy more than $ 200 will be given a 20% discount code.</p>', 1626132374);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards_status`
--

CREATE TABLE `noticeboards_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `noticeboard_id` int(10) UNSIGNED NOT NULL,
  `seen_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboards_status`
--

INSERT INTO `noticeboards_status` (`id`, `user_id`, `noticeboard_id`, `seen_at`) VALUES
(7, 1015, 11, 1626204347);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` enum('system','admin') COLLATE utf8mb4_unicode_ci DEFAULT 'system',
  `type` enum('single','all_users','students','instructors','organizations','group') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `sender_id`, `group_id`, `title`, `message`, `sender`, `type`, `created_at`) VALUES
(1368, 1, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625863108),
(1370, 1, NULL, NULL, 'New comment for your class', '<p>Jade Harrison left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1625863203),
(1372, 1, NULL, NULL, 'New comment for your class', '<p>Morgan Sullivan left a new comment on your class How to Manage & Influence Your Virtual Team .</p>', 'system', 'single', 1625863345),
(1373, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625863462),
(1378, 1, NULL, NULL, 'New comment for your class', '<p>James Kong left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625864259),
(1380, 1, NULL, NULL, 'New comment for your class', '<p>Ricardo dave left a new comment on your class How to Travel Around the World .</p>', 'system', 'single', 1625864416),
(1382, 1, NULL, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625864526),
(1384, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Convert Videos .</p>', 'system', 'single', 1625891270),
(1385, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Pre-purchase question .</p>', 'system', 'single', 1625891677),
(1386, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Pending Offline Payment .</p>', 'system', 'single', 1625891851),
(1387, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Commission Rate .</p>', 'system', 'single', 1625892221),
(1388, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Class delay .</p>', 'system', 'single', 1625895874),
(1389, 1, NULL, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Class delay updated with a new reply.</p>', 'system', 'single', 1625897110),
(1390, 1, NULL, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Class delay updated with a new reply.</p>', 'system', 'single', 1625898890),
(1459, 1, NULL, NULL, 'New payout request', '<p>New payout request received with the amount 332 . You can manage it using the admin panel.</p>', 'system', 'single', 1626061192),
(1462, 1, NULL, NULL, 'New payout request', '<p>New payout request received with the amount 80 . You can manage it using the admin panel.</p>', 'system', 'single', 1626061254),
(1474, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Bronze Subscribe .</p>', 'system', 'single', 1626061450),
(1491, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Refund Request #64237 .</p>', 'system', 'single', 1626063457),
(1492, 1, NULL, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Refund Request #64237 updated with a new reply.</p>', 'system', 'single', 1626063547),
(1534, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Health And Fitness Masterclass .</p>', 'system', 'single', 1626235679),
(1546, 1, NULL, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626240118),
(1556, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class The Future of Energy .</p>', 'system', 'single', 1626241152),
(1564, 1, NULL, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626241320),
(1566, 1, NULL, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626241386),
(1570, 1, NULL, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1626242992),
(1583, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Problem with quiz .</p>', 'system', 'single', 1626250124),
(1590, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1626493830),
(1599, 1, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626509207),
(1600, 1, NULL, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626509327),
(1601, 1, NULL, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626509546),
(1790, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Pro Registration package .</p>', 'system', 'single', 1646386787),
(1800, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Basic Registration package .</p>', 'system', 'single', 1646387655),
(1893, 1, NULL, NULL, 'New payout request', '<p>New payout request received with the amount 799.2 . You can manage it using the admin panel.</p>', 'system', 'single', 1647261057),
(1913, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Premium SaaS Package .</p>', 'system', 'single', 1647520432),
(1918, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Premium SaaS Package .</p>', 'system', 'single', 1647842984),
(1924, 1, NULL, NULL, 'New badge', '<p>Congrolation! You received Faithful User badge.</p>', 'system', 'single', 1647847611),
(1927, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Pro SaaS Package .</p>', 'system', 'single', 1648566876),
(1930, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Pro SaaS Package .</p>', 'system', 'single', 1648567487),
(1943, 1, NULL, NULL, 'New support ticket', '<p>New support ticket received with subject Cannot Pull Student Report .</p>', 'system', 'single', 1648802450),
(1986, NULL, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Premium SaaS Package .</p>', 'system', 'single', 1651063096),
(2007, 1045, NULL, NULL, 'Your class created', '<p>Your class Basic Computing (Video lesson) successfully created. It will be published after approval.</p>', 'system', 'single', 1651753663),
(2008, 1045, NULL, NULL, 'New badge', '<p>Congrolation! You received Senior Vendor badge.</p>', 'system', 'single', 1651755077),
(2009, 1045, NULL, NULL, 'Your class created', '<p>Your class Basic Computing(Live Lesson) successfully created. It will be published after approval.</p>', 'system', 'single', 1651757089),
(2010, 1045, NULL, NULL, 'Your class approved', '<p>Your class Basic Computing(Live Lesson) successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1651758173),
(2011, 1045, NULL, NULL, 'Your class approved', '<p>Your class Basic Computing (Video lesson) successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1651758393),
(2012, 1045, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Basic Computing (Video lesson) .</p>', 'system', 'single', 1651759683),
(2013, 1046, NULL, NULL, 'New purchase completed', '<p>The class Basic Computing (Video lesson) successfully purchased. Now you can start learning.</p>', 'system', 'single', 1651759683),
(2014, 1046, NULL, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Basic Computing (Video lesson) with type deduction and amount 165.00 .</p>', 'system', 'single', 1651759684),
(2015, 1045, NULL, NULL, 'New badge', '<p>Congrolation! You received Best Seller badge.</p>', 'system', 'single', 1651759698),
(2016, 1045, NULL, NULL, 'New pending quiz', '<p>JayleeHK Ong passed 3)Everyday objects using code(Active quiz pressed, section allocated) quiz of the Basic Computing (Video lesson) class and waiting for correction to get results.</p>', 'system', 'single', 1651760709),
(2017, 1046, NULL, NULL, 'New badge', '<p>Congrolation! You received New User badge.</p>', 'system', 'single', 1651805030),
(2018, 1045, NULL, NULL, 'New badge', '<p>Congrolation! You received New User badge.</p>', 'system', 'single', 1651805036),
(2019, 1, NULL, NULL, 'New contact message', '<p>New contact message with title Computer received from Jaylee Student .</p>', 'system', 'single', 1651818794),
(2020, 1047, NULL, NULL, 'New badge', '<p>Congrolation! You received New User badge.</p>', 'system', 'single', 1651920600),
(2021, 1047, NULL, NULL, 'Your class created', '<p>Your class Basic Computing (Private-Video lesson) successfully created. It will be published after approval.</p>', 'system', 'single', 1651924445),
(2022, 1048, NULL, NULL, 'Your class approved', '<p>Your class Basic Computing (Private-Video lesson) successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1651924589),
(2023, 1047, NULL, NULL, 'New badge', '<p>Congrolation! You received Junior Vendor badge.</p>', 'system', 'single', 1651924611),
(2024, 1048, NULL, NULL, 'New badge', '<p>Congrolation! You received New User badge.</p>', 'system', 'single', 1651986810),
(2025, 1048, NULL, NULL, 'New badge', '<p>Congrolation! You received Junior Vendor badge.</p>', 'system', 'single', 1651986810);

-- --------------------------------------------------------

--
-- Table structure for table `notifications_status`
--

CREATE TABLE `notifications_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `notification_id` int(10) UNSIGNED NOT NULL,
  `seen_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications_status`
--

INSERT INTO `notifications_status` (`id`, `user_id`, `notification_id`, `seen_at`) VALUES
(30, 1, 1924, 1648536767),
(31, 1, 1893, 1648536772);

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `title`, `template`) VALUES
(2, 'New badge', '<p>Congrolation! You received [u.b.title] badge.</p>'),
(3, 'Your user group changed', '<p>Your user group changed to [u.g.title] .</p>'),
(4, 'Your class created', '<p>Your class [c.title] successfully created. It will be published after approval.</p>'),
(5, 'Your class approved', '<p>Your class [c.title] successfully approved. Now you can find it on the website.</p>'),
(6, 'Your class rejected', '<p>Sorry, Your class [c.title] rejected because it doesn\'t meet requirements or is against the community rules.</p>'),
(7, 'New comment for your class', '<p>[u.name] left a new comment on your class [c.title] .</p>'),
(8, 'New class support message', '<p>user [u.name] send new support message for course with title [c.title] .</p>'),
(9, 'New reply on support conversation', '<p>New reply on a support conversation on your class [c.title] support.</p>'),
(10, 'New support ticket', '<p>New support ticket received with subject [s.t.title] .</p>'),
(11, 'New reply on support ticket', '<p>The support ticket with the subject [s.t.title] updated with a new reply.</p>'),
(12, 'New financial document', '<p>&nbsp;New financial document submitted for your class [c.title] with type [f.d.type] and amount [amount] .</p>'),
(13, 'New payout request', '<p>New payout request received with the amount [payout.amount] . You can manage it using the admin panel.</p>'),
(14, 'Payout has been processed', 'Your payout has been processed with the amount [payout.amount]&nbsp;&nbsp;to your account [payout.account] .'),
(15, 'New sales', '<p>Congratulations! There is a new sales for your class [c.title] .</p>'),
(16, 'New purchase completed', '<p>The class [c.title] successfully purchased. Now you can start learning.</p>'),
(17, 'New feedback', '<p>Your class [c.title] received a [rate.count] stars rating from [student.name] .</p>'),
(18, 'Offline payment submitted', '<p>An offline payment request with the amount [amount] submitted successfully.</p>'),
(19, 'Offline payment approved', '<p>Offline payment request with the amount [amount] successfully approved.</p>'),
(20, 'Offline payment rejected', '<p>Sorry, offline payment request with the amount [amount]&nbsp;rejected.</p>'),
(21, 'Subscription plan activated', '<p>[s.p.name] subscription package activated by user [u.name] .</p>'),
(22, 'New meeting request', '<p>New meeting booked by [u.name] for [time.date] with the amount [amount] .</p>'),
(23, 'New meeting join URL', '<p>The reserved meeting join URL created by [instructor.name]. Join the meeting on [time.date] using this URL: [link] .</p>'),
(24, 'Meeting reminder', '<p>You have a meeting on [time.date] . Don\'t forget to join it on time.</p>'),
(25, 'Meeting finished', '<p>The meeting finished. Instructor: [instructor.name] Student:&nbsp; [student.name]&nbsp; Meeting time: [time.date] .</p>'),
(26, 'New contact message', '<p>New contact message with title [c.u.title] received from [u.name] .</p>'),
(27, 'Live class reminder', '<p>Your live class [c.title] will be conducted on [time.date] . Join it on time.</p>'),
(28, 'Promotion plan activated', '<p>Promotion plan [p.p.name]&nbsp;&nbsp;activated for the call [c.title] .</p>'),
(29, 'Promotion plan purchased', '<p>There is new request for activating [p.p.name] for class [c.title] .&nbsp;</p>'),
(30, 'New certificate', '<p>You achieved a new certificate for [c.title] . You can download it from the class page or your panel.</p>'),
(31, 'New pending quiz', '<p>[student.name] passed [q.title] quiz of the [c.title] class and waiting for correction to get results.</p>'),
(32, 'Waiting quiz result', '<p>Your pending quiz corrected and your result is [q.result] for [q.title] quiz of [c.title] class.</p>'),
(33, 'New comment', '<p>[u.name] left a new comment and waiting for approval.</p>'),
(34, 'Payout request submitted', '<p>Your payout request successfully submitted for [payout.amount] . You will receive an email when processed.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `bank` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('waiting','approved','reject') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_date` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','paying','paid','fail') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('credit','payment_channel') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_charge_account` tinyint(1) NOT NULL DEFAULT '0',
  `amount` int(10) UNSIGNED NOT NULL,
  `tax` decimal(13,2) DEFAULT NULL,
  `total_discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `reference_id` text COLLATE utf8mb4_unicode_ci,
  `payment_data` text COLLATE utf8mb4_unicode_ci,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `payment_method`, `is_charge_account`, `amount`, `tax`, `total_discount`, `total_amount`, `reference_id`, `payment_data`, `created_at`) VALUES
(354, 1046, 'paid', 'payment_channel', 0, 150, '15.00', '0.00', '165.00', NULL, NULL, 1651759643);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_package_id` int(10) UNSIGNED DEFAULT NULL,
  `reserve_meeting_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `become_instructor_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `tax` int(10) UNSIGNED DEFAULT NULL,
  `tax_price` decimal(13,2) DEFAULT NULL,
  `commission` int(10) UNSIGNED DEFAULT NULL,
  `commission_price` decimal(13,2) DEFAULT NULL,
  `discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `created_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `webinar_id`, `subscribe_id`, `promotion_id`, `registration_package_id`, `reserve_meeting_id`, `ticket_id`, `discount_id`, `become_instructor_id`, `amount`, `tax`, `tax_price`, `commission`, `commission_price`, `discount`, `total_amount`, `created_at`) VALUES
(310, 1015, 306, 1996, NULL, 3, NULL, NULL, NULL, NULL, NULL, 63, 10, '6.30', 0, '0.00', NULL, '69.30', 1625145687),
(311, 996, 307, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, 150, 10, '15.00', 20, '30.00', '0.00', '165.00', 1625944333),
(312, 995, 308, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, 100, 10, '10.00', 20, '20.00', '0.00', '110.00', 1625952623),
(313, 995, 309, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, '1.00', 20, '2.00', '0.00', '11.00', 1625953190),
(314, 995, 310, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, 125, 10, '12.50', 20, '25.00', '0.00', '137.50', 1625996807),
(315, 995, 311, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 10, '5.00', 10, '5.00', '0.00', '55.00', 1625996936),
(316, 995, 312, 1998, NULL, NULL, NULL, NULL, 28, NULL, NULL, 100, 10, '5.00', 20, '10.00', '50.00', '55.00', 1625996974),
(317, 995, 313, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, '1.60', 10, '1.60', '4.00', '17.60', 1625997096),
(318, 996, 314, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 10, '2.25', 20, '4.50', '2.50', '24.75', 1626060481),
(319, 996, 315, 1998, NULL, NULL, NULL, NULL, 28, NULL, NULL, 100, 10, '4.00', 20, '8.00', '60.00', '44.00', 1626060548),
(320, 930, 316, 1998, NULL, NULL, NULL, NULL, 28, NULL, NULL, 100, 10, '5.00', 20, '10.00', '50.00', '55.00', 1626060832),
(321, 979, 317, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 10, '6.00', 10, '6.00', '0.00', '66.00', 1626061329),
(322, 979, 318, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, '2.00', 20, '4.00', '0.00', '22.00', 1626061366),
(323, 979, 318, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, '3.00', 20, '6.00', '0.00', '33.00', 1626061366),
(324, 995, 319, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, '2.00', 0, '0.00', NULL, '22.00', 1626061431),
(325, 1015, 320, 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, '2.00', 20, '4.00', '0.00', '22.00', 1626132487),
(326, 1015, 321, 2002, NULL, NULL, NULL, NULL, NULL, 7, NULL, 20, 10, '1.60', 20, '3.20', '4.00', '17.60', 1626132840),
(327, 929, 322, 2003, NULL, NULL, NULL, NULL, 31, NULL, NULL, 40, 10, '3.00', 20, '6.00', '10.00', '33.00', 1626240993),
(328, 929, 323, 2004, NULL, 3, NULL, NULL, NULL, NULL, NULL, 50, 10, '5.00', 0, '0.00', NULL, '55.00', 1626241146),
(329, 929, 324, 2003, NULL, NULL, NULL, NULL, 31, NULL, NULL, 40, 10, '3.00', 20, '6.00', '10.00', '33.00', 1626241207),
(330, 995, 325, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, 100, 10, '10.00', 20, '20.00', '0.00', '110.00', 1626247189),
(331, 1015, 326, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, '1.60', 10, '1.60', '4.00', '17.60', 1626284818),
(332, 996, 327, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, '2.70', 20, '5.40', '3.00', '29.70', 1626508952),
(333, 929, 328, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, '3.00', 20, '6.00', '0.00', '33.00', 1635412190),
(334, 979, 329, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, 100, 10, '10.00', 0, '0.00', NULL, '110.00', 1635448382),
(335, 1017, 330, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, '3.00', 20, '6.00', '0.00', '33.00', 1639379271),
(336, 1017, 331, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 10, '10.00', 20, '20.00', '0.00', '110.00', 1639379347),
(337, 1017, 332, 2003, NULL, NULL, NULL, NULL, 31, NULL, NULL, 40, 10, '3.00', 20, '6.00', '10.00', '33.00', 1639379382),
(338, 995, 333, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, '1.00', 20, '2.00', '0.00', '11.00', 1646172083),
(339, 996, 334, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, '0.90', 20, '1.80', '1.00', '9.90', 1646172119),
(340, 979, 335, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, '1.00', 20, '2.00', '0.00', '11.00', 1646172156),
(341, 929, 336, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, '1.00', 20, '2.00', '0.00', '11.00', 1646172292),
(342, 995, 337, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 750, 10, '75.00', 20, '150.00', '0.00', '825.00', 1646379279),
(343, 1017, 338, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, 300, 10, '30.00', 20, '60.00', '0.00', '330.00', 1646380150),
(344, 930, 339, NULL, NULL, NULL, 2, NULL, NULL, NULL, 5, 199, 10, '19.90', 0, '0.00', NULL, '218.90', 1646386782),
(345, 859, 340, NULL, NULL, NULL, 4, NULL, NULL, NULL, 6, 200, 10, '20.00', 0, '0.00', NULL, '220.00', 1646387650),
(346, 1018, 341, NULL, NULL, NULL, 3, NULL, NULL, NULL, 7, 400, 10, '40.00', 0, '0.00', NULL, '440.00', 1647520119),
(347, 1018, 342, NULL, NULL, NULL, 3, NULL, NULL, NULL, 7, 400, 10, '40.00', 0, '0.00', NULL, '440.00', 1647520361),
(348, 1018, 343, NULL, NULL, NULL, 3, NULL, NULL, NULL, 7, 400, 10, '40.00', 0, '0.00', NULL, '440.00', 1647842977),
(349, 1022, 344, NULL, NULL, NULL, 2, NULL, NULL, NULL, 8, 199, 10, '19.90', 0, '0.00', NULL, '218.90', 1648566775),
(350, 1022, 345, NULL, NULL, NULL, 2, NULL, NULL, NULL, 8, 199, 10, '19.90', 0, '0.00', NULL, '218.90', 1648567198),
(351, 1022, 346, NULL, NULL, NULL, 2, NULL, NULL, NULL, 8, 199, 10, '19.90', 0, '0.00', NULL, '218.90', 1648567451),
(352, 1023, 347, 2016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 150, 10, '15.00', 20, '30.00', '0.00', '165.00', 1648815409),
(353, 1023, 348, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, 217, 10, '21.67', 20, '43.33', '0.00', '238.34', 1648818997),
(354, 1023, 349, 2019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200, 10, '20.00', 20, '40.00', '0.00', '220.00', 1650006127),
(355, 1035, 350, NULL, NULL, NULL, 3, NULL, NULL, NULL, 12, 400, 10, '40.00', 0, '0.00', NULL, '440.00', 1651057896),
(356, 1023, 351, 2021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 222, 10, '22.20', 20, '44.40', '0.00', '244.20', 1651061787),
(357, 1037, 352, NULL, NULL, NULL, 6, NULL, NULL, NULL, 14, 600, 10, '60.00', 0, '0.00', NULL, '660.00', 1651063051),
(358, 1043, 353, 2024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 150, 10, '15.00', 20, '30.00', '0.00', '165.00', 1651324036),
(359, 1046, 354, 2026, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 150, 10, '15.00', 20, '30.00', '0.00', '165.00', 1651759643);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `robot` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `link`, `name`, `robot`, `status`, `created_at`) VALUES
(3, '/about', 'About', 1, 'publish', 1647510423),
(5, '/terms', 'Terms & rules', 1, 'publish', 1647510058),
(6, '/reward_points_system', 'Reward Points System', 1, 'draft', 1646398467);

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `seo_description`, `content`) VALUES
(1, 3, 'en', 'About Aimsity', '\"Technology learning can be fun\"', '<h1 class=\"stm-title stm-font_color_lilac stm-title_sep_bottom\" style=\"font-size: 60px; margin-right: 0px; margin-bottom: 26px; margin-left: 0px; font-family: \" wendy=\"\" one\";=\"\" font-weight:=\"\" 400;=\"\" line-height:=\"\" 1.1;=\"\" text-align:=\"\" center;=\"\" font-style:=\"\" italic;=\"\" color:=\"\" rgb(86,=\"\" 80,=\"\" 159)=\"\" !important;\"=\"\">\"Technology learning can be fun\"</h1><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; line-height: 30px; color: rgb(89, 89, 89); font-family: Dosis, sans-serif; font-size: 18px;\">As the country is moving forward, schools and traditional education centres such as tuition centres are having a hard time to keep up with the technology trend and do not have the necessary technology know-how to do so. Without help, these businesses and schools will get left behind as the world progresses. Not only that, we realize that students are not well-equip or have enough resources for them to explore and innovate. With the increasing importance of technology knowledge, we want to prepare the young leaders to thrive in the tech world. Hence,&nbsp;<strong style=\"font-weight: bold;\">Aimsity</strong>&nbsp;was set up with the aim to be “<strong style=\"font-weight: bold;\">A</strong>n&nbsp;<strong style=\"font-weight: bold;\">IM</strong>pactful&nbsp;<strong style=\"font-weight: bold;\">S</strong>chool&nbsp;<strong style=\"font-weight: bold;\">I</strong>n&nbsp;<strong style=\"font-weight: bold;\">T</strong>echnology Stud<strong style=\"font-weight: bold; margin-bottom: 0px;\">Y</strong>”.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; line-height: 30px; color: rgb(89, 89, 89); font-family: Dosis, sans-serif; font-size: 18px;\">We provide educators, who have insufficient resources to teach students about the digital world, with the materials and staff to take the load off their shoulders and to open new business opportunities. At Aimsity we encourage children to used their creativity, curiosity and thinking skills to create solutions and to solve the problem that lies ahead. Not only that, through tinkering children will learn to be more resilient and focus in the task at hand. When growing up we are used to hearing “No” or “Wrong” which slowly kills our creativity without us knowing it. Here, we provide a platform for your children to feel safe when they make mistakes and to pick themselves up again to face the problem.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 30px; color: rgb(89, 89, 89); font-family: Dosis, sans-serif; font-size: 18px;\">Hence, we hope to make a change in this world by educating the young and helping these educators to survive.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 30px; color: rgb(89, 89, 89); font-family: Dosis, sans-serif; font-size: 18px;\"><br></p><h1 class=\"stm-title stm-font_color_lilac stm-title_sep_bottom\" style=\"font-size: 60px; margin-right: 0px; margin-bottom: 31px; margin-left: 0px; font-family: \" wendy=\"\" one\";=\"\" font-weight:=\"\" 400;=\"\" line-height:=\"\" 1.1;=\"\" text-align:=\"\" center;=\"\" color:=\"\" rgb(86,=\"\" 80,=\"\" 159)=\"\" !important;\"=\"\">Vision &amp; Mission</h1><p style=\"font-size: 60px; margin-right: 0px; margin-bottom: 31px; margin-left: 0px; font-family: \" wendy=\"\" one\";=\"\" font-weight:=\"\" 400;=\"\" line-height:=\"\" 1.1;=\"\" text-align:=\"\" center;=\"\" color:=\"\" rgb(86,=\"\" 80,=\"\" 159)=\"\" !important;\"=\"\"><img src=\"/store/1/Capture.PNG\" style=\"width: 1136px;\"></p><div class=\"vc_row wpb_row vc_row-fluid\" style=\"margin-left: -15px; margin-right: -15px; color: rgb(51, 51, 51); font-family: Dosis, sans-serif; font-size: 18px;\"><div class=\"wpb_column vc_column_container vc_col-sm-12\" style=\"width: 1140px; position: relative; min-height: 1px; padding-left: 0px; padding-right: 0px; float: left;\"><div class=\"vc_column-inner \" style=\"padding-left: 15px; padding-right: 15px; width: 1140px;\"><div class=\"wpb_wrapper\"><div class=\"wpb_text_column wpb_content_element \" style=\"margin-bottom: 35px;\"><div class=\"wpb_wrapper\" style=\"margin-bottom: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 30px; color: rgb(89, 89, 89); text-align: center;\"><span style=\"margin-bottom: 0px; font-size: 18pt; color: rgb(255, 0, 0);\">“Whether you want to uncover the secrets of the universe, or you just want to pursue a career in the 21st century, basic computer programming is an essential skill to learn.”<em style=\"margin-bottom: 0px;\">-Stephen Hawking</em></span></p></div></div></div></div></div></div><div data-vc-full-width=\"true\" data-vc-full-width-init=\"true\" class=\"vc_row wpb_row vc_row-fluid vc_custom_1533187126366 vc_row-has-fill\" style=\"margin-left: -15px; margin-right: -15px; padding-right: 221.5px; padding-left: 221.5px; overflow: hidden; transition: opacity 0.5s ease 0s; color: rgb(51, 51, 51); font-family: Dosis, sans-serif; font-size: 18px; position: relative; left: -221.5px; width: 1583px; padding-top: 100px !important; padding-bottom: 100px !important; background-image: url(\" https:=\"\" aimsity.com=\"\" wp-content=\"\" uploads=\"\" 2018=\"\" 07=\"\" gallery-join-us-background-1.png?id=\"4950&quot;)\" !important;=\"\" background-position:=\"\" center=\"\" background-repeat:=\"\" no-repeat=\"\" background-size:=\"\" cover=\"\" !important;\"=\"\"><div class=\"wpb_column vc_column_container vc_col-sm-12\" style=\"width: 1483px; position: relative; min-height: 1px; padding-left: 0px; padding-right: 0px; float: left;\"><div class=\"vc_column-inner vc_custom_1475209405740\" style=\"padding-top: 35px; padding-left: 15px; padding-right: 15px; width: 1483px;\"><div class=\"wpb_wrapper\"><div class=\"stm-cta \" style=\"position: relative; z-index: 92;\"><div class=\"stm-cta__content\" style=\"display: table; width: 1453px;\"><div class=\"stm-cta__action\" style=\"display: table-cell; width: 1000px; vertical-align: middle; padding-top: 10px; padding-bottom: 9px;\"><h2 class=\"stm-cta__action-title\" style=\"line-height: 1.1; color: rgb(234, 48, 35); margin-right: 0px; margin-bottom: 19px; margin-left: 0px; font-size: 42px;\">Join us</h2><div class=\"stm-cta__action-body\" style=\"display: table; width: 1453px;\"><div class=\"stm-cta__action-descr\" style=\"display: table-cell; width: 10000px; padding-right: 90px; color: rgb(255, 255, 255);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 30px; color: inherit;\"><span style=\"font-size: 18pt;\"><strong style=\"font-weight: bold;\"><span style=\"color: rgb(64, 64, 64);\">Wait no more! Join our workshops and classes to start learning about the digital world.</span></strong></span></p></div><div class=\"stm-cta__action-btn\" style=\"display: table-cell; vertical-align: top; padding-top: 14px;\"><a href=\"https://aimsity.com/contacts/\" target=\"_self\" class=\"stm-btn stm-btn_flat stm-btn_md stm-btn_icon-left stm-btn_purpure\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(86, 80, 159); display: inline-block; border-width: 2px; border-style: solid; vertical-align: top; white-space: nowrap; text-align: center; transform: translateZ(0px); transition-duration: 0.3s; position: relative; line-height: 42px; min-width: 230px; font-weight: 700; padding: 0px 30px 4px; border-radius: 30px; border-color: rgb(189, 102, 255);\"><span class=\"stm-icon stm-icon-duck\" style=\"speak: none; font-weight: normal; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; -webkit-font-smoothing: antialiased; vertical-align: middle; display: inline-block; position: relative; transition: all 0.3s ease 0s; margin-right: 19px; color: rgb(255, 102, 130); margin-top: -3px; font-family: stm-icon !important;\"></span>Reach us</a></div></div></div></div></div></div></div></div></div><p style=\"margin-right: -250px; margin-bottom: 0px; margin-left: 0px; line-height: 30px; color: rgb(89, 89, 89); font-family: Dosis, sans-serif; font-size: 18px;\"><br></p>');
INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `seo_description`, `content`) VALUES
(2, 5, 'en', 'Terms of Service', 'Our mission is to improve lives through learning. We enable anyone anywhere to create and share educational content (instructors) and to access that educational content to learn.', '<p class=\"MsoNoSpacing\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Privacy Policy</u></b></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">This Privacy Policy\r\napplies when you visit or use the Aimsity (“Aimsity”, “we”, “us”) websites,\r\nmobile applications, APIs or related services (the “Services”). It also applies\r\nto prospective customers of our business and enterprise products.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We respect your privacy\r\nand want you to understand how we collect, use, and share data about you. This\r\nPrivacy Policy covers our data collection practices and describes your rights\r\nto access, correct, or restrict our use of your personal data.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">By using the Services,\r\nyou agree to the terms of this Privacy Policy. You shouldn’t use the Services\r\nif you don’t agree with this Privacy Policy or any other agreement that governs\r\nyour use of the Services.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">The Services may\r\ncontain links to third party websites. When you click on a link to any other\r\nwebsite or location, you will go to another site, and another entity may\r\ncollect personal or anonymous data from you. We have no control over, do not\r\nreview, and cannot be responsible for these outside websites or their content.\r\nPlease be aware that this Privacy Policy does not apply to these outside\r\nwebsites or content, or to any collection of your personal data after you click\r\non links to such outside websites. We encourage you to read the privacy\r\npolicies of every website you visit. The links to third party websites or\r\nlocations are for your convenience and do not signify our endorsement of such\r\nthird parties or their products, content, or websites.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>1)Data we collect</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We collect certain data\r\nfrom you directly, like information you enter yourself, data about your\r\nconsumption of content, and data from third-party platforms you connect with Aimsity.\r\nWe also collect some data automatically, like information about your device and\r\nwhat parts of our Services you interact with or spend time using. This includes\r\ndata collected from users under 18 years old. If you are under 18 years old (or\r\nthe age of majority in the jurisdiction from which you are accessing the site\r\nor service), you may only access the site or service if you have your parent or\r\nlegal guardian’s consent.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>2)Types of data you\r\nprovide</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">When you create an\r\naccount and use the Services, including through a third-party platform, we\r\ncollect any data you provide directly, including:<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Account Data</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">In order to use certain\r\nfeatures (like accessing content), you need to create a user account. When you\r\ncreate or update your account, we collect and store the data you provide, like\r\nyour email address, password, phone number, occupation, skill interests,\r\ngender, race, ethnicity, government ID information, verification photo, age,\r\ndate of birth, and account settings<span class=\"msoIns\">, education qualification, resumes, CV</span>\r\nand assign you a unique identifying number (“Account Data”).<span class=\"msoIns\"><o:p></o:p></span></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><span class=\"msoIns\" style=\"\"><o:p><font color=\"#000000\">&nbsp;</font></o:p></span></span></p><p class=\"MsoNoSpacing\" style=\"\"><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\"><span class=\"msoIns\"><b><u>Profile Data</u></b></span></span><span lang=\"EN-MY\" style=\"\"><o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">You can also choose to\r\nprovide profile information like a photo, headline, biography, language,\r\nwebsite link, social media profiles, country, or other data. Your Profile Data\r\nwill be publicly viewable by others.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Shared Content</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">Parts of the Services\r\nlet you interact with other users or share content publicly, including by\r\nposting reviews about content, asking or answering questions, sending messages\r\nto students or instructors, or posting photos or other work you upload. Such\r\nshared content may be publicly viewable by others depending on where it is\r\nposted.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Educational Content\r\nData</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">When you access\r\ncontent, we collect certain data including which courses, assignments, labs,\r\nworkspaces, and quizzes you’ve started and completed; content purchases and\r\ncredits; subscriptions; completion certificates; your exchanges with\r\ninstructors, teaching assistants, and other students; and essays, answers to\r\nquestions, and other items submitted to satisfy course and related content\r\nrequirements. If you are an instructor, we store your educational content which\r\nmay contain data about you.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Payment Data</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">If you make purchases,\r\nwe collect certain data about your purchase (such as your name and ZIP code) as\r\nnecessary to process your order. You must provide certain payment and billing\r\ndata directly to our payment service providers, including your name, credit\r\ncard information, billing address, and ZIP code. We may also receive limited\r\ninformation, like the fact that you have a new card and the last four digits of\r\nthat card, from payment service providers to facilitate payments. For security,\r\nAimsity does not collect or store sensitive cardholder data, such as full\r\ncredit card numbers or card authentication data.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">If you are an\r\ninstructor, you can link your PayPal, Payoneer, or other payment account to the\r\nServices to receive payments. When you link a payment account, we collect and\r\nuse certain information, including your payment account email address, account\r\nID, physical address, or other data necessary for us to send payments to your\r\naccount. In some instances, we may collect ACH or wire information to send payments\r\nto your account. In order to comply with applicable laws, we also work with\r\ntrusted third parties who collect tax information as legally required. This tax\r\ninformation may include residency information, tax identification numbers,\r\nbiographical information, and other personal information necessary for taxation\r\npurposes. For security, Aimsity does not collect or store sensitive bank\r\naccount information. The collection, use, and disclosure of your payment,\r\nbilling, and taxation data is subject to the privacy policy and other terms of\r\nyour payment account provider.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Data About Your Account\r\non Other Services</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We may obtain certain\r\ninformation through your social media or other online accounts if they are\r\nconnected to your Aimsity account. If you login to Aimsity via Facebook, Gmail\r\nor another third-party platform or service, we ask for your permission to\r\naccess certain information about that other account. For example, depending on\r\nthe platform or service we may collect your name, profile picture, account ID\r\nnumber, login email address, location, the physical location of your access\r\ndevices, gender, birthday, and list of friends or contacts.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">Those platforms and\r\nservices make information available to us through their APIs. The information\r\nwe receive depends on what information you (via your privacy settings) or the\r\nplatform or service decide to give us.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">If you access or use\r\nour Services through a third-party platform or service, or click on any\r\nthird-party links, the collection, use, and sharing of your data will also be\r\nsubject to the privacy policies and other agreements of that third party.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Contest, Survey and\r\nPromotions</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We may invite you to\r\ncomplete a survey or participate in a promotion (like a contest, sweepstakes,\r\nor challenge), either through the Services or a third-party platform. If you\r\nparticipate, we will collect and store the data you provide as part of\r\nparticipating, such as your name, email address, postal address, date of birth,\r\nor phone number. That data is subject to this Privacy Policy unless otherwise\r\nstated in the official rules of the promotion or in another privacy policy. The\r\ndata collected will be used to administer the promotion or survey, including\r\nfor notifying winners and distributing rewards. To receive a reward, you may be\r\nrequired to allow us to post some of your information publicly (like on a\r\nwinner’s page). Where we use a third-party platform to administer a survey or\r\npromotion, the third party’s privacy policy will apply.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Communications and\r\nSupport</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">If you contact us for\r\nsupport or to report a problem or concern (regardless of whether you have\r\ncreated an account), we collect and store your contact information, messages,\r\nand other data about you like your name, email address, messages, location, Aimsity\r\nuser ID, refund transaction IDs, and any other data you provide or that we\r\ncollect through automated means (which we cover below). We use this data to\r\nrespond to you and research your question or concern, in accordance with this\r\nPrivacy Policy.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>3)Data collected\r\nthrough Automation</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">The data listed below\r\nis collected through the use of server log files and tracking technologies, as\r\ndetailed in the “Cookies and Data Collection Tools” section below. It is stored\r\nby us and associated with your account.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>System Data</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">Technical data about your\r\ncomputer or device, like your IP address, device type, operating system type\r\nand version, unique device identifiers, browser, browser language, domain and\r\nother systems data, and platform types (“System Data”).<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Usage Data</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">Usage statistics about\r\nyour interactions with the Services, including content accessed, time spent on\r\npages or the Service, pages visited, features used, your search queries, click\r\ndata, date and time, referrer, and other data regarding your use of the\r\nServices (“Usage Data”).<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Approximate Geographic\r\nData</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">An approximate\r\ngeographic location, including information like country, city, and geographic\r\ncoordinates, calculated based on your IP address.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>4)Cookies and Data\r\nCollection Tools<o:p></o:p></u></b></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We use tools like\r\ncookies, web beacons, and similar tracking technologies to gather the data\r\nlisted above. Some of these tools offer you the ability to opt out of data\r\ncollection. We use cookies, which are small text files stored by your browser,\r\nto collect, store, and share data about your activities across websites,\r\nincluding on Aimsity. They allow us to remember things about your visits to Aimsity,\r\nlike your preferred language, and to make the site easier to use.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">Aimsity and service\r\nproviders acting on our behalf (like Google Analytics and third-party\r\nadvertisers) use server log files and automated data collection tools like\r\ncookies, tags, scripts, customized links, device or browser fingerprints, and\r\nweb beacons (together, “Data Collection Tools“) when you access and use the\r\nServices. These Data Collection Tools automatically track and collect certain\r\nSystem Data and Usage Data (as detailed in Section 1) when you use the\r\nServices. In some cases, we tie data gathered through those Data Collection\r\nTools to other data that we collect as described in this Privacy Policy.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">You can set your web\r\nbrowser to alert you about attempts to place cookies on your computer, limit\r\nthe types of cookies you allow, or refuse cookies altogether. If you do, you\r\nmay not be able to use some or all features of the Services, and your\r\nexperience may be different or less functional<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">Aimsity uses the\r\nfollowing types of Data Collection Tools for the purposes described:<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Strictly Necessary</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">These Data Collection\r\nTools enable you to access the site, provide basic functionality (like logging\r\nin or accessing content), secure the site, protect against fraudulent logins,\r\nand detect and prevent abuse or unauthorized use of your account. These are\r\nrequired for the Services to work properly, so if you disable them, parts of\r\nthe site will break or be unavailable.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Functional</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">These Data Collection\r\nTools remember data about your browser and your preferences, provide additional\r\nsite functionality, customize content to be more relevant to you, improve the\r\nplatform and remember settings affecting the appearance and behaviour of the\r\nServices (like your preferred language or volume level for video playback).<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Performance</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">These Data Collection\r\nTools help measure and improve the Services by providing usage and performance\r\ndata, visit counts, traffic sources, or where an application was downloaded\r\nfrom. These tools can help us test different versions of Aimsity to see which\r\nfeatures or content users prefer and determine which email messages are opened.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Advertising</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">These Data Collection\r\nTools are used to deliver relevant ads (on the site and/or other sites) based\r\non things we know about you like your Usage and System Data (as detailed in\r\nSection 1), and things that the ad service providers know about you based on\r\ntheir tracking data. The ads can be based on your recent activity or activity\r\nover time and across other sites and services. To help deliver tailored\r\nadvertising, we may provide these service providers with a hashed, anonymized\r\nversion of your email address (in a non-human-readable form) and content that\r\nyou share publicly on the Services.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>Social Media</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">These Data Collection\r\nTools enable social media functionality, like sharing content with friends and\r\nnetworks. These cookies may track a user or device across other sites and build\r\na profile of user interests for targeted advertising purposes.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>5)Usage of Data</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We use your data to do\r\nthings like provide our Services, communicate with you, troubleshoot issues,\r\nsecure against fraud and abuse, improve and update our Services, analyse how\r\npeople use our Services, serve personalized advertising, and as required by law\r\nor necessary for safety and integrity.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We use the data we\r\ncollect through your use of the Services to:<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Provide and\r\nadminister the Services, including to facilitate participation in educational\r\ncontent, issue completion certificates, display customized content, and\r\nfacilitate communication with other users;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Process\r\npayments to instructors and other third parties;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Process your\r\nrequests and orders for educational content, products, specific services,\r\ninformation, or features;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Communicate\r\nwith you about your account by:<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 1in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Responding to your questions and concerns;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 1in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Sending you administrative messages and\r\ninformation, including messages from instructors, students, and teaching\r\nassistants; notifications about changes to our Service; and updates to our\r\nagreements;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 1in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Sending you information, such as by email or\r\ntext messages, about your progress in courses and related content, rewards\r\nprograms, new services, new features, promotions, newsletters, and other\r\navailable instructor-created content (which you can opt out of at any time);<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 1in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">o<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Sending push notifications to your wireless\r\ndevice to provide updates and other relevant messages (which you can manage\r\nfrom the “options” or “settings” page of the mobile app);<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Manage your\r\naccount and account preferences;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Facilitate\r\nthe Services’ technical functioning, including troubleshooting and resolving\r\nissues, securing the Services, and preventing fraud and abuse;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Solicit\r\nfeedback from users;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Market\r\nproducts, services, surveys, and promotions;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Market\r\nSubscription Plans to prospective customers;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Learn more\r\nabout you by linking your data with additional data through third-party data\r\nproviders and/or analysing the data with the help of analytics service\r\nproviders;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Identify\r\nunique users across devices;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Tailor\r\nadvertisements across devices;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Improve our\r\nServices and develop new products, services, and features;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Analyse\r\ntrends and traffic, track purchases, and track usage data;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Advertise\r\nthe Services on third-party websites and applications;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">As required\r\nor permitted by law; or<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">As we, in\r\nour sole discretion, otherwise determine to be necessary to ensure the safety\r\nor integrity of our users, employees, third parties, the public, or our\r\nServices.<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>6)Sharing of Data</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We share certain data\r\nabout you with instructors, other students, companies performing services for\r\nus, Aimsity affiliates, collaborators, our business partners, analytics and\r\ndata enrichment providers, your social media providers, companies helping us\r\nrun promotions and surveys, and advertising companies who help us promote our\r\nServices. We may also share your data as needed for security, legal compliance,\r\nor as part of a corporate restructuring. Lastly, we can share data in other\r\nways if it is aggregated or de-identified or if we get your consent.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We may share your data\r\nwith third parties under the following circumstances or as otherwise described\r\nin this Privacy Policy:<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>With Your Instructors</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We share data that we\r\nhave about you (except your email address) with instructors or teaching\r\nassistants for educational content you access or request information about, so\r\nthey can improve their content for you and other students. This data may\r\ninclude things like your city, country, browser language, operating system,\r\ndevice settings, the site that brought you to Aimsity, and your activities on Aimsity.\r\nIf we collect additional data about you (like age or gender), we may share that\r\ntoo. We will not share your email address with instructors or teaching\r\nassistants.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">With Other Students and\r\nInstructors<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">Depending on your\r\nsettings, your shared content and profile data may be publicly viewable,\r\nincluding to other students and instructors. If you ask a question to an\r\ninstructor or teaching assistant, your information (including your name) may\r\nalso be publicly viewable.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">With Service Providers,\r\nContractors, and Agents<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We share your data with\r\nthird-party companies who perform services on our behalf, like payment\r\nprocessing, fraud and abuse prevention, data analysis, marketing and\r\nadvertising services (including retargeted advertising), email and hosting\r\nservices, and customer services and support. These service providers may access\r\nyour personal data and are required to use it solely as we direct, to provide\r\nour requested service.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>With Affiliates and\r\nCollaborators</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We may share your data\r\nwithin our corporate family of companies, affiliates and collaborators that are\r\nrelated by common ownership or control to enable or support us in providing the\r\nServices.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>With Business Partners</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We have agreements with\r\nother websites and platforms to distribute our Services and drive traffic to Aimsity.\r\nDepending on your location, we may share your data with these partners.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>With Analytics and Data\r\nEnrichment Services</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">As part of our use of\r\nthird-party analytics tools like Google Analytics and data enrichment services,\r\nwe share certain contact information, Account Data, System Data, Usage Data, or\r\nde-identified data as needed. De-identified data means data where we’ve removed\r\nthings like your name and email address and replaced it with a token ID. This\r\nallows these providers to provide analytics services or match your data with\r\npublicly-available database information (including contact and social\r\ninformation from other sources). We do this to communicate with you in a more\r\neffective and customized manner.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>To Power Social Media\r\nFeatures</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">The social media\r\nfeatures in the Services (like the Facebook Like button) may allow the\r\nthird-party social media provider to collect things like your IP address and\r\nwhich page of the Services you’re visiting, and to set a cookie to enable the\r\nfeature. Your interactions with these features are governed by the third-party\r\ncompany’s privacy policy.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>To Administer\r\nPromotions and Surveys<o:p></o:p></u></b></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We may share your data\r\nas necessary to administer, market, or sponsor promotions and surveys you\r\nchoose to participate in, as required by applicable law (like to provide a winners\r\nlist or make required filings), or in accordance with the rules of the\r\npromotion or survey.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>For Advertising</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">If we decide to use an\r\nadvertising-supported revenue model in the future, we may use and share certain\r\nSystem Data and Usage Data with third-party advertisers and networks to show\r\ngeneral demographic and preference information among our users. We may also\r\nallow advertisers to collect System Data through Data Collection Tools to use\r\nthis data to offer you targeted ad delivery to personalize your user experience\r\n(through behavioural advertising), and to undertake web analytics. Advertisers\r\nmay also share with us the data they collect about you. You may opt out from\r\nparticipating ad networks’ behavioural advertising but note that if you opt\r\nout, you’ll continue to be served generic ads.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>For Security and Legal\r\nCompliance</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We may disclose your\r\ndata to third parties if we (in our sole discretion) have a good faith belief\r\nthat the disclosure is:<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Permitted or\r\nrequired by law;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Requested as\r\npart of a judicial, governmental, or legal inquiry, order, or proceeding;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Reasonably\r\nnecessary as part of a valid subpoena, warrant, or other legally-valid request;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Reasonably\r\nnecessary to enforce our Terms of Use, Privacy Policy, and other legal\r\nagreements;<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Required to detect,\r\nprevent, or address fraud, abuse, misuse, potential violations of law (or rule\r\nor regulation), or security or technical issues; or<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Reasonably\r\nnecessary in our discretion to protect against imminent harm to the rights,\r\nproperty, or safety of Aimsity, our users, employees, members of the public, or\r\nour Services.<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">We may also\r\ndisclose data about you to our auditors and legal advisors in order to assess\r\nour disclosure obligations and rights under this Privacy Policy.<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>During a Change in\r\nControl</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">If Aimsity undergoes a\r\nbusiness transaction like a merger, acquisition, corporate divestiture, or\r\ndissolution (including bankruptcy), or a sale of all or some of its assets, we\r\nmay share, disclose, or transfer all of your data to the successor organization\r\nduring such transition or in contemplation of a transition (including during\r\ndue diligence).<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>After\r\nAggregation/De-identification</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We may disclose or use\r\naggregated or de-identified data for any purpose.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>With Your Permission</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">With your consent, we\r\nmay share data to third parties outside the scope of this Privacy Policy.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><br></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><b><u>7)Security</u></b><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><span class=\"msoIns\">Aimsit</span>y\r\ntakes appropriate security measures to protect against unauthorized access,\r\nalteration, disclosure, or destruction of your personal data that we collect\r\nand store. These measures vary based on the type and sensitivity of the data.\r\nUnfortunately, however, no system can be 100% secured, so we cannot guarantee\r\nthat communications between you and <span class=\"msoIns\">Aimsit</span><span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:06\">Udem</del></span>y, the\r\nServices, or any information provided to us in connection with the data we\r\ncollect through the Services will be free from unauthorized access by third\r\nparties. Your password is an important part of our security system, and it is\r\nyour responsibility to protect it. You should not share your password with any\r\nthird party, and if you believe your password or account has been compromised,\r\nyou should change it immediately and contact our </font>support<strike> team</strike></span><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;with any concerns.<span class=\"msoIns\"><o:p></o:p></span></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><span class=\"msoIns\" style=\"\"><o:p><font color=\"#000000\">&nbsp;</font></o:p></span></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">8)Your choice on the\r\nuse of your data<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">You can choose not to\r\nprovide certain data to us, but you may not be able to use certain features of\r\nthe Services.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\"><span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:10\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp; </span></del></span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">To stop\r\nreceiving promotional communications from us, you can opt out by using the\r\nunsubscribe mechanism in the promotional communication you receive or by\r\nchanging the email preferences in your account. Note that regardless of your\r\nemail preference settings, we will send you transactional and relationship\r\nmessages regarding the Services, including administrative confirmations, order\r\nconfirmations, important updates about the Services, and notices about our\r\npolicies.<span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:10\"><o:p></o:p></del></span></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\"><span class=\"msoIns\"><o:p>&nbsp;</o:p></span></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\"><span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:10\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp; </span></del></span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\"><span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:10\">If you’re\r\nlocated in the European Economic Area, you may opt out of certain Data\r\nCollection Tools by clicking the “Cookie settings“ link at the bottom of any\r\npage.<o:p></o:p></del></span></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\"><span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:13\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp; </span></del></span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">The browser\r\nor device you use may allow you to control cookies and other types of local\r\ndata storage. <span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:11\">To learn more about managing cookies, visit\r\nhttps://cookiepedia.co.uk/how-to-manage-cookies. </del></span>Your wireless\r\ndevice may also allow you to control whether location or other data is\r\ncollected and shared.<span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:13\"><o:p></o:p></del></span></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\"><span class=\"msoIns\"><o:p>&nbsp;</o:p></span></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\"><span class=\"msoIns\">Advertising\r\nservices may place cookies or other tracking technologies on your computer,\r\nphone, or other devices to collect data about your use of our services, and may\r\naccess those tracking technologies in order to serve tailored advertisements to\r\nyou. To help deliver tailored advertising, we may provide these service\r\nproviders with a hashed, anonymized version of your email address (in a\r\nnon-human-readable form) and content that you share publicly on Aimsity.<o:p></o:p></span></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\"><span class=\"msoIns\">When using\r\nmobile applications you may also receive tailored in-app advertisements. Apple\r\niOS, Android OS, and Microsoft Windows each provide their own instructions on\r\nhow to control in-app tailored advertising. For other devices and operating\r\nsystems, you should review your privacy settings or contact your platform\r\noperator.<o:p></o:p></span></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\"><span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:24\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp; </span></del></span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\"><span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:21\">To get\r\ninformation and control cookies used for tailored advertising from\r\nparticipating companies, see the consumer opt-out pages for the Network\r\nAdvertising Initiative and Digital Advertising Alliance, or if you’re located\r\nin the European Economic Area, visit the Your Online Choices site. </del></span>To\r\nopt out of Google’s display advertising or customize Google Display Network\r\nads, visit the <span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Google Ads Settings page</span><span class=\"msoIns\"> </span><span class=\"msoIns\">(<a href=\"https://adssettings.google.com/authenticated\">https://adssettings.google.com/authenticated</a>)\r\n</span>. To opt out of Taboola’s targeted ads, see the Opt-out Link in\r\ntheir Cookie Policy.<span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:24\"><o:p></o:p></del></span></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\"><span class=\"msoIns\"><o:p>&nbsp;</o:p></span></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">To opt out\r\nof allowing Google Analytics, <span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:24\">Mixpanel, ZoomInfo, or Clearbit to use your data\r\nfor analytics or enrichment, </del></span>see the <span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Google Analytics\r\nOpt-out</span><span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:24\"> </del></span><span class=\"msoIns\">&nbsp;(https://tools.google.com/dlpage/gaoptout)</span><span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:24\">Browser\r\nAdd-on, Mixpanel Opt-Out Cookie, ZoomInfo’s policy, and Clearbit data claiming\r\nmechanism</del></span>.<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><span class=\"msoDel\" style=\"\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:25\"><font color=\"#000000\">Apple iOS, Android OS, and\r\nMicrosoft Windows each provide their own instructions on how to control in-app\r\ntailored advertising. For other devices and operating systems, you should\r\nreview your privacy settings on that platform.<o:p></o:p></font></del></span></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><span class=\"msoIns\" style=\"\"><o:p><font color=\"#000000\">&nbsp;</font></o:p></span></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">If you have any\r\nquestions about your data, our use of it, or your rights, contact us at <span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T12:25\">privacy@udemy</del></span><span class=\"msoIns\"><a href=\"mailto:yourteam@aimsity.com\"><span class=\"msoIns\"><span class=\"msoIns\">yourteam@aimsity</span></span>.com</a>.<o:p></o:p></span></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\"><span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T13:09\">m.</del></span><o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><span class=\"msoDel\" style=\"\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T13:09\"><o:p><font color=\"#000000\">&nbsp;</font></o:p></del></span></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">9)Accessing, Updating\r\nand deleting Your Personal Data<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">You can access and\r\nupdate your personal data that Aimsity collects and maintains as follows:<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">To update\r\ndata you provide directly, log into your account and update your account at any\r\ntime.<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">To terminate\r\nyour account, visit your profile settings page to delete your account. If you\r\nhave any issues terminating your account, please contact us ta <a href=\"mailto:yourteam@aimsity.com\">yourteam@aimsity.com</a>.<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">Please note:\r\neven after your account is terminated, some or all of your data may still be\r\nvisible to others, including without limitation any data that has been (a)\r\ncopied, stored, or disseminated by other users (including comments on content);\r\n(b) shared or disseminated by you or others (including in your shared content);\r\nor (c) posted to a third-party platform. Even after your account is terminated,\r\nwe retain your data for as long as we have a legitimate purpose to do so (and\r\nin accordance with applicable law), including to assist with legal obligations,\r\nresolve disputes, and enforce our agreements. We may retain and disclose such\r\ndata pursuant to this Privacy Policy after your account has been terminated.<o:p></o:p></span></font></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in;\"><!--[if !supportLists]--><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span></span><!--[endif]--><span lang=\"EN-MY\" style=\"\">To request\r\nto access, correct, or delete your personal data, you can submit these requests\r\nby emailing <span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T13:07\">privacy@udemy</del></span><span class=\"msoIns\"><a href=\"mailto:yourteam@aimsity.com\">yourteam@aimsity.com</a>.</span><span class=\"msoIns\"> Please allow\r\nup to 30 days of response. </span><span class=\"msoDel\"><del cite=\"mailto:Asus\" datetime=\"2021-11-09T13:07\">&nbsp;or writing to us at Udemy, Attn: Privacy/Legal\r\nTeam, 600 Harrison Street, 3rd floor, San Francisco CA 94107. Please allow up\r\nto 30 days for a response. </del></span>For your protection, we may require\r\nthat the request be sent through the email address associated with your\r\naccount, and we may need to verify your identity before implementing your\r\nrequest. Please note that we retain certain data where we have a lawful basis\r\nto do so, including for mandatory record-keeping and to complete transactions.<span class=\"msoIns\"><o:p></o:p></span></span></font></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><span class=\"msoIns\" style=\"\"><o:p><font color=\"#000000\">&nbsp;</font></o:p></span></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">10)Policy Concerning\r\nChildren<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">We recognize the\r\nprivacy interests of children and encourage parents and guardians to take an\r\nactive role in their children’s online activities and interests. Individuals\r\nyounger than 18 years of age, but of the required age for consent to use online\r\nservices where they live (for example, 13 in the US or 16 in Ireland), may not\r\nset up an account, but may have a parent or guardian open an account and help\r\nthem access appropriate content. Individuals younger than the required age for\r\nconsent to use online services may not use the Services. If we learn that we’ve\r\ncollected personal data from a child under those ages, we will take reasonable\r\nsteps to delete it.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">Parents who believe\r\nthat Aimsity may have collected personal data from a child under those ages can\r\nsubmit a request that it be removed to <a href=\"mailto:yourteam@aimsity.com\">yourteam@aimsity.com</a>.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">11)Modifications to\r\nThis Privacy Policy<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">From time to time, we\r\nmay update this Privacy Policy. If we make any material change to it, we will\r\nnotify you via email, through a notification posted on the Services, or as\r\nrequired by applicable law. We will also include a summary of the key changes.\r\nUnless stated otherwise, modifications will become effective on the day they\r\nare posted.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">As permitted by applicable\r\nlaw, if you continue to use the Services after the effective date of any\r\nchange, then your access and/or use will be deemed an acceptance of (and\r\nagreement to follow and be bound by) the revised Privacy Policy. The revised\r\nPrivacy Policy supersedes all previous Privacy Policies.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">12)Interpretation<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">Any capitalized terms\r\nnot defined in this policy are defined as specified in Aimsity\'s Terms of Use.\r\nAny version of this Privacy Policy in a language other than English is provided\r\nfor convenience. If there is any conflict with a non-English version, you agree\r\nthat the English language version will control.<o:p></o:p></font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">&nbsp;</font></span></p><p class=\"MsoNoSpacing\" style=\"\"><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">13)Questions<o:p></o:p></font></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNoSpacing\" style=\"\"><font color=\"#000000\"><span lang=\"EN-MY\" style=\"\">If you have any questions,\r\nconcerns, or disputes regarding our Privacy Policy, please feel free to contact\r\nour privacy team (including our designated personal information protection\r\nmanager) at </span><span lang=\"EN-MY\"><a href=\"mailto:yourteam@aimsity.com\">yourteam@aimsity.com</a></span></font><span lang=\"EN-MY\" style=\"\"><font color=\"#000000\">.&nbsp;</font><font face=\"Arial, sans-serif\"><span style=\"font-size: 12pt;\"><o:p></o:p></span></font></span></p>');
INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `seo_description`, `content`) VALUES
(3, 6, 'en', 'Reward Points System', 'Rocket LMS Reward Points System is a Complete Loyalty Reward Points System and the most comprehensive Points and Rewards Plugin.', '<p><img src=\"/store/1/default_images/Reward Points System.jpg\" style=\"width: 800px;\"><br></p><p><b>Rocket LMS&nbsp;Reward Points System is a Complete Loyalty Reward Points System and the most comprehensive Points and Rewards Plugin. Reward your Customers using Reward Points for Product Purchase, Writing Reviews, Sign up, Referrals, etc. The earned Reward Points can be redeemed for future purchases.&nbsp;</b></p>'),
(4, 5, 'es', 'Términos de servicio', 'Nuestra misión es mejorar vidas a través del aprendizaje. Permitimos que cualquier persona en cualquier lugar pueda crear y compartir contenido educativo (instructores) y acceder a ese contenido educativo para aprender.', '<p>Nota: Estos son solo datos de demostración.</p><p><br></p><p>Nuestra misión es mejorar vidas a través del aprendizaje. Permitimos que cualquier persona en cualquier lugar pueda crear y compartir contenido educativo (instructores) y acceder a ese contenido educativo para aprender (estudiantes). Consideramos nuestro modelo de mercado la mejor manera de ofrecer contenido educativo valioso a nuestros usuarios. Necesitamos reglas para mantener nuestra plataforma y servicios seguros para usted, nosotros y nuestra comunidad de estudiantes e instructores. Estos Términos se aplican a todas sus actividades en el sitio web de Udemy, las aplicaciones móviles de Udemy, nuestras aplicaciones de TV, nuestras API y otros servicios relacionados (\"Servicios\").</p><p><br></p><p>Si publica contenido en nuestra plataforma, también debe aceptar los Términos del instructor. También proporcionamos detalles sobre nuestro procesamiento de los datos personales de nuestros estudiantes e instructores en nuestra Política de privacidad. Si utiliza nuestra plataforma para empresas como parte de la suscripción a Udemy for Business de su organización, debe consultar nuestra Declaración de privacidad de Udemy for Business.</p><p><br></p><p><br></p><p><br></p><p>Necesita una cuenta para la mayoría de las actividades en nuestra plataforma, incluso para comprar y acceder a contenido o para enviar contenido para su publicación. Al configurar y mantener su cuenta, debe proporcionar y continuar proporcionando información precisa y completa, incluida una dirección de correo electrónico válida. Usted es completamente responsable de su cuenta y de todo lo que sucede en ella, incluido cualquier daño o perjuicio (a nosotros o a cualquier otra persona) causado por alguien que usa su cuenta sin su permiso. Esto significa que debe tener cuidado con su contraseña. No puede transferir su cuenta a otra persona ni usar la cuenta de otra persona. Si se comunica con nosotros para solicitar acceso a una cuenta, no le otorgaremos dicho acceso a menos que pueda proporcionarnos la información que necesitamos para demostrar que es el propietario de esa cuenta. En caso de fallecimiento de un usuario, la cuenta de ese usuario se cerrará.</p>'),
(5, 5, 'ar', 'شروط الخدمة', 'مهمتنا هي تحسين الحياة من خلال التعلم. نحن نمكن أي شخص في أي مكان من إنشاء ومشاركة المحتوى التعليمي (المدربين) والوصول إلى هذا المحتوى التعليمي للتعلم.', '<p style=\"direction: rtl; text-align: right;\">ملاحظة: هذه مجرد بيانات تجريبية.</p><p style=\"direction: rtl; text-align: right;\">مهمتنا هي تحسين الحياة من خلال التعلم. نحن نمكن أي شخص في أي مكان من إنشاء ومشاركة المحتوى التعليمي (المدربين) والوصول إلى هذا المحتوى التعليمي للتعلم (الطلاب). نحن نعتبر نموذج السوق الخاص بنا هو أفضل طريقة لتقديم محتوى تعليمي قيم لمستخدمينا. نحن بحاجة إلى قواعد للحفاظ على نظامنا الأساسي وخدماتنا آمنة لك ولنا ومجتمع الطلاب والمدرسين لدينا. تنطبق هذه الشروط على جميع أنشطتك على موقع Udemy على الويب ، وتطبيقات Udemy للهاتف المحمول ، وتطبيقات التلفزيون لدينا ، وواجهات برمجة التطبيقات الخاصة بنا ، والخدمات الأخرى ذات الصلة (\"الخدمات\").</p><p style=\"direction: rtl; text-align: right;\">إذا قمت بنشر محتوى على نظامنا الأساسي ، فيجب عليك أيضًا الموافقة على شروط المدرب. نقدم أيضًا تفاصيل تتعلق بمعالجتنا للبيانات الشخصية لطلابنا ومعلمينا في سياسة الخصوصية الخاصة بنا. إذا كنت تستخدم منصتنا للأعمال كجزء من اشتراك Udemy for Business الخاص بمؤسستك ، فيجب عليك الرجوع إلى بيان خصوصية Udemy for Business.</p><p style=\"direction: rtl; text-align: right;\">أنت بحاجة إلى حساب لمعظم الأنشطة على نظامنا الأساسي ، بما في ذلك شراء المحتوى والوصول إليه أو إرسال المحتوى للنشر. عند إعداد حسابك وصيانته ، يجب عليك تقديم معلومات دقيقة وكاملة والاستمرار في تقديمها ، بما في ذلك عنوان بريد إلكتروني صالح. أنت تتحمل المسؤولية الكاملة عن حسابك وكل ما يحدث على حسابك ، بما في ذلك أي ضرر أو ضرر (لنا أو لأي شخص آخر) ناجم عن شخص يستخدم حسابك دون إذنك. هذا يعني أنك بحاجة إلى توخي الحذر بشأن كلمة المرور الخاصة بك. لا يجوز لك نقل حسابك إلى شخص آخر أو استخدام حساب شخص آخر. إذا اتصلت بنا لطلب الوصول إلى حساب ، فلن نمنحك هذا الوصول ما لم تتمكن من تزويدنا بالمعلومات التي نحتاجها لإثبات أنك مالك هذا الحساب. في حالة وفاة المستخدم ، سيتم إغلاق حساب هذا المستخدم.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `payment_channels`
--

CREATE TABLE `payment_channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` enum('Paypal','Paystack','Paytm','Payu','Razorpay','Zarinpal','Stripe','Paysera','Cashu','YandexCheckout','MercadoPago','Bitpay','Midtrans','Iyzipay','Flutterwave','Payfort','UnionPay') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payment_channels`
--

INSERT INTO `payment_channels` (`id`, `title`, `class_name`, `status`, `image`, `settings`, `created_at`) VALUES
(1, 'Paypal', 'Paypal', 'inactive', '/store/1/default_images/gateways/paypal.png', '', '1617345734'),
(2, 'Paystack', 'Paystack', 'inactive', '/store/1/default_images/gateways/paystack.png', '', '1617345734'),
(3, 'Paytm', 'Paytm', 'inactive', '/store/1/default_images/gateways/paytm.png', '', '1617345734'),
(4, 'Payu', 'Payu', 'inactive', '/store/1/default_images/gateways/payu.png', '', '1617345734'),
(5, 'Razorpay', 'Razorpay', 'inactive', '/store/1/default_images/gateways/razorpay.png', '', '1617345734'),
(6, 'Zarinpal', 'Zarinpal', 'inactive', '/store/1/default_images/gateways/zarinpal.png', '', '1617345734'),
(7, 'Stripe', 'Stripe', 'active', '/store/1/default_images/gateways/stripe.png', '', '1617345734'),
(8, 'Paysera', 'Paysera', 'inactive', '/store/1/default_images/gateways/paysera.png', '', '1617345734'),
(9, 'Cashu', 'Cashu', 'inactive', '/store/1/default_images/gateways/cashu.png', '', '1617345734'),
(10, 'Yandex checkout', 'YandexCheckout', 'inactive', '/store/1/default_images/gateways/yandex.png', '', '1617345734'),
(11, 'MercadoPago', 'MercadoPago', 'inactive', '/store/1/default_images/gateways/mercadopago.png', '', '1617345734'),
(12, 'Bitpay', 'Bitpay', 'inactive', '/store/1/default_images/gateways/bitpay.png', '', '1617345734'),
(13, 'Midtrans', 'Midtrans', 'inactive', '/store/1/default_images/gateways/midtrans.png', '', '1617345734'),
(14, 'Iyzipay', 'Iyzipay', 'inactive', '/store/1/default_images/gateways/iyzico.png', '', '1617345734'),
(15, 'Flutterwave', 'Flutterwave', 'inactive', '/store/1/default_images/gateways/flutterwave.png', '', '1617345734'),
(16, 'Payfort', 'Payfort', 'inactive', '/store/1/default_images/gateways/payfort.png', '', '1617345734');

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `account_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_bank_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('waiting','done','reject') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `payu_transactions`
--

CREATE TABLE `payu_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paid_for_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_for_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','failed','successful','invalid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `verified_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `allow` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `section_id`, `allow`) VALUES
(9615, 2, 1, 1),
(9616, 2, 2, 1),
(9617, 2, 3, 1),
(9618, 2, 4, 1),
(9619, 2, 5, 1),
(9620, 2, 6, 1),
(9621, 2, 7, 1),
(9622, 2, 8, 1),
(9623, 2, 9, 1),
(9624, 2, 10, 1),
(9625, 2, 11, 1),
(9626, 2, 12, 1),
(9627, 2, 13, 1),
(9628, 2, 14, 1),
(9629, 2, 15, 1),
(9630, 2, 16, 1),
(9631, 2, 17, 1),
(9632, 2, 25, 1),
(9633, 2, 26, 1),
(9634, 2, 50, 1),
(9635, 2, 51, 1),
(9636, 2, 52, 1),
(9637, 2, 53, 1),
(9638, 2, 54, 1),
(9639, 2, 100, 1),
(9640, 2, 101, 1),
(9641, 2, 102, 1),
(9642, 2, 103, 1),
(9643, 2, 104, 1),
(9644, 2, 105, 1),
(9645, 2, 106, 1),
(9646, 2, 107, 1),
(9647, 2, 108, 1),
(9648, 2, 109, 1),
(9649, 2, 110, 1),
(9650, 2, 111, 1),
(9651, 2, 112, 1),
(9652, 2, 113, 1),
(9653, 2, 114, 1),
(9654, 2, 115, 1),
(9655, 2, 116, 1),
(9656, 2, 117, 1),
(9657, 2, 150, 1),
(9658, 2, 151, 1),
(9659, 2, 152, 1),
(9660, 2, 153, 1),
(9661, 2, 154, 1),
(9662, 2, 155, 1),
(9663, 2, 156, 1),
(9664, 2, 157, 1),
(9665, 2, 158, 1),
(9666, 2, 200, 1),
(9667, 2, 201, 1),
(9668, 2, 202, 1),
(9669, 2, 203, 1),
(9670, 2, 204, 1),
(9671, 2, 205, 1),
(9672, 2, 206, 1),
(9673, 2, 207, 1),
(9674, 2, 208, 1),
(9675, 2, 250, 1),
(9676, 2, 251, 1),
(9677, 2, 252, 1),
(9678, 2, 253, 1),
(9679, 2, 254, 1),
(9680, 2, 300, 1),
(9681, 2, 301, 1),
(9682, 2, 302, 1),
(9683, 2, 303, 1),
(9684, 2, 304, 1),
(9685, 2, 350, 1),
(9686, 2, 351, 1),
(9687, 2, 352, 1),
(9688, 2, 353, 1),
(9689, 2, 354, 1),
(9690, 2, 355, 1),
(9691, 2, 356, 1),
(9692, 2, 400, 1),
(9693, 2, 401, 1),
(9694, 2, 402, 1),
(9695, 2, 403, 1),
(9696, 2, 404, 1),
(9697, 2, 405, 1),
(9698, 2, 450, 1),
(9699, 2, 451, 1),
(9700, 2, 452, 1),
(9701, 2, 453, 1),
(9702, 2, 454, 1),
(9703, 2, 455, 1),
(9704, 2, 456, 1),
(9705, 2, 457, 1),
(9706, 2, 458, 1),
(9707, 2, 459, 1),
(9708, 2, 500, 1),
(9709, 2, 501, 1),
(9710, 2, 502, 1),
(9711, 2, 503, 1),
(9712, 2, 504, 1),
(9713, 2, 505, 1),
(9714, 2, 550, 1),
(9715, 2, 551, 1),
(9716, 2, 552, 1),
(9717, 2, 553, 1),
(9718, 2, 554, 1),
(9719, 2, 555, 1),
(9720, 2, 600, 1),
(9721, 2, 601, 1),
(9722, 2, 602, 1),
(9723, 2, 603, 1),
(9724, 2, 650, 1),
(9725, 2, 651, 1),
(9726, 2, 652, 1),
(9727, 2, 653, 1),
(9728, 2, 654, 1),
(9729, 2, 655, 1),
(9730, 2, 656, 1),
(9731, 2, 657, 1),
(9732, 2, 658, 1),
(9733, 2, 700, 1),
(9734, 2, 701, 1),
(9735, 2, 702, 1),
(9736, 2, 703, 1),
(9737, 2, 704, 1),
(9738, 2, 705, 1),
(9739, 2, 706, 1),
(9740, 2, 707, 1),
(9741, 2, 708, 1),
(9742, 2, 750, 1),
(9743, 2, 751, 1),
(9744, 2, 752, 1),
(9745, 2, 753, 1),
(9746, 2, 754, 1),
(9747, 2, 800, 1),
(9748, 2, 801, 1),
(9749, 2, 802, 1),
(9750, 2, 803, 1),
(9751, 2, 850, 1),
(9752, 2, 851, 1),
(9753, 2, 852, 1),
(9754, 2, 853, 1),
(9755, 2, 854, 1),
(9756, 2, 900, 1),
(9757, 2, 901, 1),
(9758, 2, 902, 1),
(9759, 2, 903, 1),
(9760, 2, 904, 1),
(9761, 2, 950, 1),
(9762, 2, 951, 1),
(9763, 2, 952, 1),
(9764, 2, 953, 1),
(9765, 2, 954, 1),
(9766, 2, 955, 1),
(9767, 2, 956, 1),
(9768, 2, 957, 1),
(9769, 2, 958, 1),
(9770, 2, 959, 1),
(9771, 2, 1000, 1),
(9772, 2, 1001, 1),
(9773, 2, 1002, 1),
(9774, 2, 1003, 1),
(9775, 2, 1004, 1),
(9776, 2, 1050, 1),
(9777, 2, 1051, 1),
(9778, 2, 1052, 1),
(9779, 2, 1053, 1),
(9780, 2, 1054, 1),
(9781, 2, 1055, 1),
(9782, 2, 1056, 1),
(9783, 2, 1057, 1),
(9784, 2, 1058, 1),
(9785, 2, 1059, 1),
(9786, 2, 1060, 1),
(9787, 2, 1075, 1),
(9788, 2, 1076, 1),
(9789, 2, 1077, 1),
(9790, 2, 1078, 1),
(9791, 2, 1079, 1),
(9792, 2, 1100, 1),
(9793, 2, 1101, 1),
(9794, 2, 1102, 1),
(9795, 2, 1103, 1),
(9796, 2, 1104, 1),
(9797, 2, 1150, 1),
(9798, 2, 1151, 1),
(9799, 2, 1152, 1),
(9800, 2, 1153, 1),
(9801, 2, 1154, 1),
(9802, 2, 1200, 1),
(9803, 2, 1201, 1),
(9804, 2, 1202, 1),
(9805, 2, 1203, 1),
(9806, 2, 1204, 1),
(9807, 2, 1230, 1),
(9808, 2, 1231, 1),
(9809, 2, 1232, 1),
(9810, 2, 1233, 1),
(9811, 2, 1234, 1),
(9812, 2, 1235, 1),
(9813, 2, 1250, 1),
(9814, 2, 1251, 1),
(9815, 2, 1252, 1),
(9816, 2, 1253, 1),
(9817, 2, 1300, 1),
(9818, 2, 1301, 1),
(9819, 2, 1302, 1),
(9820, 2, 1303, 1),
(9821, 2, 1304, 1),
(9822, 2, 1305, 1),
(9823, 2, 1350, 1),
(9824, 2, 1351, 1),
(9825, 2, 1352, 1),
(9826, 2, 1353, 1),
(9827, 2, 1354, 1),
(9828, 2, 1355, 1),
(9829, 2, 1400, 1),
(9830, 2, 1401, 1),
(9831, 2, 1402, 1),
(9832, 2, 1403, 1),
(9833, 2, 1404, 1),
(9834, 2, 1405, 1),
(9835, 2, 1406, 1),
(9836, 2, 1407, 1),
(9837, 2, 1408, 1),
(9838, 2, 1409, 1),
(9839, 2, 1410, 1),
(9840, 2, 1450, 1),
(9841, 2, 1451, 1),
(9842, 2, 1452, 1),
(9843, 2, 1453, 1),
(9844, 2, 1454, 1),
(9845, 2, 1455, 1),
(9846, 2, 1500, 1),
(9847, 2, 1501, 1),
(9848, 2, 1502, 1),
(9849, 2, 1503, 1),
(9850, 2, 1504, 1),
(9851, 2, 1550, 1),
(9852, 2, 1551, 1),
(9853, 2, 1552, 1),
(9854, 2, 1553, 1),
(9855, 2, 1554, 1),
(9856, 2, 1600, 1),
(9857, 2, 1601, 1),
(9858, 2, 1602, 1),
(9859, 2, 1603, 1),
(9860, 2, 1604, 1),
(9861, 2, 1650, 1),
(9862, 2, 1651, 1),
(9863, 2, 1652, 1),
(9864, 2, 1675, 1),
(9865, 2, 1676, 1),
(9866, 2, 1677, 1),
(9867, 2, 1678, 1),
(9868, 2, 1700, 1),
(9869, 2, 1701, 1),
(9870, 2, 1702, 1),
(9871, 2, 1725, 1),
(9872, 2, 1726, 1),
(9873, 2, 1727, 1),
(9874, 2, 1728, 1),
(9875, 2, 1729, 1),
(9876, 2, 1730, 1),
(9877, 2, 1731, 1),
(9878, 2, 1732, 1),
(9879, 2, 1750, 1),
(9880, 2, 1751, 1),
(9881, 2, 1752, 1),
(9882, 2, 1753, 1),
(9883, 2, 1754, 1),
(9884, 2, 1775, 1),
(9885, 2, 1776, 1),
(9886, 2, 1777, 1),
(9887, 2, 1778, 1),
(9888, 2, 1779, 1),
(9889, 2, 1780, 1),
(9890, 2, 1781, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prerequisites`
--

CREATE TABLE `prerequisites` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `prerequisite_id` int(10) UNSIGNED NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `days`, `price`, `icon`, `is_popular`, `created_at`) VALUES
(2, 15, 150, '/store/1/default_images/subscribe_packages/gold.svg', 1, 1635446032),
(3, 15, 50, '/store/1/default_images/subscribe_packages/bronze.png', 0, 1646415095),
(4, 15, 90, '/store/1/default_images/subscribe_packages/silver.svg', 0, 1635446095);

-- --------------------------------------------------------

--
-- Table structure for table `promotion_translations`
--

CREATE TABLE `promotion_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promotion_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion_translations`
--

INSERT INTO `promotion_translations` (`id`, `promotion_id`, `locale`, `title`, `description`) VALUES
(1, 2, 'en', 'Gold', 'One of your classes will be displayed at the top of the category list and homepage slider'),
(2, 3, 'en', 'Bronze', 'One of your classes will be displayed at the top of the category list'),
(3, 4, 'en', 'Silver', 'One of your classes will be displayed at the homepage slider'),
(4, 2, 'es', 'Oro', 'Una de sus clases se mostrará en la parte superior de la lista de categorías y el control deslizante de la página de inicio.'),
(5, 2, 'ar', 'ذهب', 'سيتم عرض أحد فصولك الدراسية في أعلى قائمة الفئات وشريط تمرير الصفحة الرئيسية'),
(6, 4, 'ar', 'فضة', 'سيتم عرض إحدى فصولك الدراسية في شريط تمرير الصفحة الرئيسية'),
(7, 4, 'es', 'Plata', 'Una de sus clases se mostrará en el control deslizante de la página de inicio.'),
(8, 3, 'ar', 'برونزية', 'سيتم عرض أحد فصولك في أعلى قائمة الفئات'),
(9, 3, 'es', 'Bronce', 'Una de sus clases se mostrará en la parte superior de la lista de categorías.');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_title` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `attempt` int(11) DEFAULT NULL,
  `pass_mark` int(11) NOT NULL,
  `certificate` tinyint(1) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_mark` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `webinar_id`, `creator_id`, `chapter_id`, `webinar_title`, `time`, `attempt`, `pass_mark`, `certificate`, `status`, `total_mark`, `created_at`, `updated_at`) VALUES
(56, 2026, 1045, NULL, 'Basic Computing (Video lesson)', NULL, NULL, 1, 0, 'active', 1, 1651753003, 1651753320),
(57, 2026, 1045, 68, 'Basic Computing (Video lesson)', NULL, NULL, 1, 0, 'inactive', 1, 1651753256, 1651756708),
(58, 2026, 1045, 68, 'Basic Computing (Video lesson)', NULL, NULL, 1, 0, 'active', 1, 1651753485, NULL),
(59, 2026, 1045, NULL, 'Basic Computing (Video lesson)', NULL, NULL, 1, 0, 'inactive', 1, 1651753595, 1651756816),
(60, 2027, 1045, NULL, 'Basic Computing(Live Lesson)', NULL, NULL, 1, 0, 'active', 1, 1651756491, NULL),
(61, 2027, 1045, 73, 'Basic Computing(Live Lesson)', NULL, NULL, 1, 0, 'inactive', 1, 1651756852, NULL),
(62, 2027, 1045, 73, 'Basic Computing(Live Lesson)', NULL, NULL, 1, 0, 'active', 1, 1651756933, NULL),
(63, 2027, 1045, NULL, 'Basic Computing(Live Lesson)', NULL, NULL, 1, 0, 'inactive', 1, 1651757003, NULL),
(64, 2028, 1047, NULL, 'Basic Computing (Private-Video lesson)', NULL, NULL, 1, 0, 'inactive', 1, 1651923184, NULL),
(65, 2028, 1047, NULL, 'Basic Computing (Private-Video lesson)', NULL, NULL, 1, 0, 'active', 1, 1651924305, 1651924387),
(66, 2028, 1047, 75, 'Basic Computing (Private-Video lesson)', NULL, NULL, 1, 0, 'inactive', NULL, 1651924372, NULL),
(67, 2028, 1047, 76, 'Basic Computing (Private-Video lesson)', NULL, NULL, 1, 0, 'active', NULL, 1651924424, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions`
--

CREATE TABLE `quizzes_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('multiple','descriptive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes_questions`
--

INSERT INTO `quizzes_questions` (`id`, `quiz_id`, `creator_id`, `grade`, `type`, `created_at`, `updated_at`) VALUES
(103, 56, 1045, '1', 'multiple', 1651753187, 1651756641),
(104, 57, 1045, '1', 'descriptive', 1651753404, NULL),
(105, 58, 1045, '1', 'descriptive', 1651753544, NULL),
(106, 59, 1045, '1', 'descriptive', 1651753639, NULL),
(107, 60, 1045, '1', 'multiple', 1651756656, NULL),
(108, 61, 1045, '1', 'descriptive', 1651756882, NULL),
(109, 62, 1045, '1', 'descriptive', 1651756962, NULL),
(110, 63, 1045, '1', 'descriptive', 1651757041, NULL),
(111, 64, 1047, '1', 'multiple', 1651924268, NULL),
(112, 65, 1047, '1', 'descriptive', 1651924327, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions_answers`
--

CREATE TABLE `quizzes_questions_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes_questions_answers`
--

INSERT INTO `quizzes_questions_answers` (`id`, `creator_id`, `question_id`, `image`, `correct`, `created_at`, `updated_at`) VALUES
(238, 1045, 103, NULL, 0, 1651756641, NULL),
(239, 1045, 103, '/store/1045/cute-alien-holding-flag-space-hole-cartoon-illustration_403370-51-removebg-preview.png', 1, 1651756641, NULL),
(240, 1045, 103, NULL, 0, 1651756641, NULL),
(241, 1045, 107, NULL, 0, 1651756656, NULL),
(242, 1045, 107, '/store/1045/cute-alien-holding-flag-space-hole-cartoon-illustration_403370-51-removebg-preview.png', 1, 1651756656, NULL),
(243, 1045, 107, NULL, 0, 1651756656, NULL),
(244, 1047, 111, NULL, 0, 1651924268, NULL),
(245, 1047, 111, NULL, 0, 1651924268, NULL),
(246, 1047, 111, '/store/1047/cute-alien-holding-flag-space-hole-cartoon-illustration_403370-51-removebg-preview.png', 1, 1651924268, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions_answer_translations`
--

CREATE TABLE `quizzes_questions_answer_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quizzes_questions_answer_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes_questions_answer_translations`
--

INSERT INTO `quizzes_questions_answer_translations` (`id`, `quizzes_questions_answer_id`, `locale`, `title`) VALUES
(168, 238, 'en', 'Hacking people\'s laptop'),
(169, 239, 'en', 'A computer language use to communicate with the computer in order for it to carry out the task you want.'),
(170, 240, 'en', 'Typing words on laptop'),
(171, 241, 'en', 'Hacking people\'s laptop'),
(172, 242, 'en', 'A computer language use to communicate with the computer in order for it to carry out the task you want.'),
(173, 243, 'en', 'Typing words on laptop'),
(174, 244, 'en', 'Option 1'),
(175, 245, 'en', 'Option 2'),
(176, 246, 'en', 'Option 3-c');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_results`
--

CREATE TABLE `quizzes_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `results` text COLLATE utf8mb4_unicode_ci,
  `user_grade` int(11) DEFAULT NULL,
  `status` enum('passed','failed','waiting') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes_results`
--

INSERT INTO `quizzes_results` (`id`, `quiz_id`, `user_id`, `results`, `user_grade`, `status`, `created_at`) VALUES
(35, 56, 1046, '{\"103\":{\"answer\":\"239\",\"status\":true,\"grade\":\"1\"},\"attempt_number\":\"1\"}', 1, 'passed', 1651760527),
(36, 58, 1046, '{\"105\":{\"answer\":\"asdsad\",\"status\":false,\"grade\":\"1\"},\"attempt_number\":\"1\"}', 0, 'waiting', 1651760709);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question_translations`
--

CREATE TABLE `quiz_question_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quizzes_question_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_question_translations`
--

INSERT INTO `quiz_question_translations` (`id`, `quizzes_question_id`, `locale`, `title`, `correct`) VALUES
(63, 103, 'en', '1)What is coding?', 'Coding is a computer language'),
(64, 104, 'en', '1)Who is Grace Hopper?', 'One of the first programmers of the Harvard Mark I computer, she was a pioneer of computer programming who invented one of the first linkers.'),
(65, 105, 'en', '1)Name 3 objects in the video that use code to function?', '-Apps\r\n-Games\r\n-Autonomous car'),
(66, 106, 'en', '1)What does debug means?', 'Debug means finding out the problem and fixing it.'),
(67, 107, 'en', '1)What is coding?', 'Coding is a computer language'),
(68, 108, 'en', '1)Who is Grace Hopper?', 'One of the first programmers of the Harvard Mark I computer, she was a pioneer of computer programming who invented one of the first linkers.'),
(69, 109, 'en', '1)Name 3 objects in the video that use code to function?', '-Apps\r\n-Games\r\n-Autonomous car'),
(70, 110, 'en', '1)What does debug means?', 'Debug means finding out the problem and fixing it.'),
(71, 111, 'en', '1)What is coding?', 'This is my explanation :D'),
(72, 112, 'en', '1)What is coding?', 'sadadadaf');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_translations`
--

CREATE TABLE `quiz_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_translations`
--

INSERT INTO `quiz_translations` (`id`, `quiz_id`, `locale`, `title`) VALUES
(28, 56, 'en', '1)What is coding?(Active quiz pressed, section not allocated)'),
(29, 57, 'en', '2)Who is Grace Hopper?(active quiz not pressed, section allocated)'),
(30, 58, 'en', '3)Everyday objects using code(Active quiz pressed, section allocated)'),
(31, 59, 'en', '4)Computing words (Active quiz not pressed, section not allocated)'),
(32, 60, 'en', '1)What is coding?(Active quiz pressed, section not allocated)'),
(33, 61, 'en', '2)Who is Grace Hopper?(active quiz not pressed, section allocated)'),
(34, 62, 'en', '3)Everyday objects using code(Active quiz pressed, section allocated)'),
(35, 63, 'en', '4)Computing words (Active quiz not pressed, section not allocated)'),
(36, 64, 'en', '1)What is coding?(no section, no active)'),
(37, 65, 'en', '2)What is coding?(no section, yes active)'),
(38, 66, 'en', '3)What is coding? (yes section, no active)'),
(39, 67, 'en', '4)What is coding? (yes section, yes active)');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `rate` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `geo_center` point DEFAULT NULL,
  `type` enum('country','province','city','district') COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `country_id`, `province_id`, `city_id`, `geo_center`, `type`, `title`, `created_at`) VALUES
(69, NULL, NULL, NULL, 0x00000000010100000022d1407e7c1b0c4001000000a0825940, 'country', 'Malaysia', 1647844033);

-- --------------------------------------------------------

--
-- Table structure for table `registration_packages`
--

CREATE TABLE `registration_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('instructors','organizations') COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructors_count` int(11) DEFAULT NULL,
  `students_count` int(11) DEFAULT NULL,
  `courses_capacity` int(11) DEFAULT NULL,
  `courses_count` int(11) DEFAULT NULL,
  `meeting_count` int(11) DEFAULT NULL,
  `status` enum('disabled','active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_packages`
--

INSERT INTO `registration_packages` (`id`, `days`, `price`, `icon`, `role`, `instructors_count`, `students_count`, `courses_capacity`, `courses_count`, `meeting_count`, `status`, `created_at`) VALUES
(1, 30, 99, '/store/1/default_images/registertion_packages/bronze_instructor.png', 'instructors', NULL, NULL, 40, 10, 30, 'active', 1646040584),
(2, 90, 199, '/store/1/default_images/registertion_packages/silver_instructor.png', 'instructors', NULL, NULL, 60, 20, 50, 'active', 1646041075),
(3, 180, 400, '/store/1/default_images/registertion_packages/gold_instructor.png', 'instructors', NULL, NULL, 100, 40, 75, 'active', 1646041329),
(4, 30, 200, '/store/1/default_images/registertion_packages/bronze_organization.png', 'organizations', 5, 50, 40, 10, 30, 'active', 1646041807),
(5, 90, 400, '/store/1/default_images/registertion_packages/silver_organization.png', 'organizations', 10, 100, 70, 20, 50, 'active', 1646041992),
(6, 180, 600, '/store/1/default_images/registertion_packages/gold_organization.png', 'organizations', 30, 300, 150, 50, 100, 'active', 1646042364);

-- --------------------------------------------------------

--
-- Table structure for table `registration_packages_translations`
--

CREATE TABLE `registration_packages_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `registration_package_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_packages_translations`
--

INSERT INTO `registration_packages_translations` (`id`, `registration_package_id`, `locale`, `title`, `description`) VALUES
(1, 1, 'en', 'Basic', 'Suggested for starter instructors.'),
(2, 2, 'en', 'Pro', 'Suggested for professional instructors.'),
(3, 3, 'en', 'Premium', 'Suggested for expert instructors.'),
(4, 4, 'en', 'Basic', 'Suggested for small organizations'),
(5, 5, 'en', 'Pro', 'Suggested for medium organizations'),
(6, 6, 'en', 'Premium', 'Suggested for big organizations');

-- --------------------------------------------------------

--
-- Table structure for table `reserve_meetings`
--

CREATE TABLE `reserve_meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `meeting_id` int(11) DEFAULT NULL,
  `sale_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_time_id` int(10) UNSIGNED NOT NULL,
  `day` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `start_at` bigint(20) UNSIGNED NOT NULL,
  `end_at` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `paid_amount` decimal(13,2) NOT NULL,
  `meeting_type` enum('in_person','online') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'online',
  `student_count` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','open','finished','canceled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `locked_at` int(11) DEFAULT NULL,
  `reserved_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('account_charge','create_classes','buy','pass_the_quiz','certificate','comment','register','review_courses','instructor_meeting_reserve','student_meeting_reserve','newsletters','badge','referral','learning_progress_100','charge_wallet') COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(10) UNSIGNED DEFAULT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','disabled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `type`, `score`, `condition`, `status`, `created_at`) VALUES
(3, 'charge_wallet', 50, '150', 'active', 1641205067),
(4, 'account_charge', 50, '100', 'active', 1641369989),
(5, 'badge', NULL, NULL, 'active', 1641300755),
(6, 'create_classes', 50, NULL, 'active', 1641369921),
(7, 'buy', 50, '10', 'active', 1641369938),
(8, 'pass_the_quiz', 50, NULL, 'active', 1641369947),
(9, 'certificate', 30, NULL, 'active', 1641369955),
(10, 'comment', 5, NULL, 'active', 1641369968),
(11, 'register', 5, NULL, 'active', 1641370008),
(12, 'review_courses', 15, NULL, 'active', 1641370016),
(13, 'instructor_meeting_reserve', 30, NULL, 'active', 1641370026),
(14, 'student_meeting_reserve', 30, NULL, 'active', 1641370036),
(15, 'newsletters', 10, NULL, 'active', 1641370050),
(16, 'referral', 5, NULL, 'active', 1641370059),
(18, 'learning_progress_100', 20, NULL, 'active', 1641372957);

-- --------------------------------------------------------

--
-- Table structure for table `rewards_accounting`
--

CREATE TABLE `rewards_accounting` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('account_charge','create_classes','buy','pass_the_quiz','certificate','comment','register','review_courses','instructor_meeting_reserve','student_meeting_reserve','newsletters','badge','referral','learning_progress_100','charge_wallet','withdraw') COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(10) UNSIGNED NOT NULL,
  `status` enum('addiction','deduction') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards_accounting`
--

INSERT INTO `rewards_accounting` (`id`, `user_id`, `item_id`, `type`, `score`, `status`, `created_at`) VALUES
(82, 1, 23, 'badge', 15, 'addiction', 1647847611),
(131, 1045, 1045, 'register', 5, 'addiction', 1651735729),
(132, 1045, 25, 'badge', 20, 'addiction', 1651755077),
(133, 1045, 2027, 'create_classes', 50, 'addiction', 1651758173),
(134, 1045, 2026, 'create_classes', 50, 'addiction', 1651758394),
(135, 1046, NULL, 'buy', 825, 'addiction', 1651759683),
(136, 1046, 56, 'pass_the_quiz', 50, 'addiction', 1651760527),
(137, 1046, 21, 'badge', 5, 'addiction', 1651805030),
(138, 1045, 21, 'badge', 5, 'addiction', 1651805036),
(139, 1047, 1047, 'register', 5, 'addiction', 1651819026),
(140, 1047, 21, 'badge', 5, 'addiction', 1651920600),
(141, 1047, 2028, 'create_classes', 50, 'addiction', 1651924589),
(142, 1047, 24, 'badge', 10, 'addiction', 1651924611),
(143, 1048, 21, 'badge', 5, 'addiction', 1651986810),
(144, 1048, 24, 'badge', 10, 'addiction', 1651986810);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `caption`, `users_count`, `is_admin`, `created_at`) VALUES
(1, 'user', 'User role', 0, 0, 1604418504),
(2, 'admin', 'Admin role', 0, 1, 1604418504),
(3, 'organization', 'Organization role', 0, 0, 1604418504),
(4, 'teacher', 'Teacher role', 0, 0, 1604418504),
(6, 'education', 'Staff role', 0, 1, 1613370817),
(9, 'Author Role', 'Author', 0, 1, 1625093577);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `seller_id` int(10) UNSIGNED DEFAULT NULL,
  `buyer_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_package_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('webinar','meeting','subscribe','promotion','registration_package') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('credit','payment_channel','subscribe') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `tax` decimal(13,2) DEFAULT NULL,
  `commission` decimal(13,2) DEFAULT NULL,
  `discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `refund_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `seller_id`, `buyer_id`, `order_id`, `webinar_id`, `meeting_id`, `subscribe_id`, `ticket_id`, `promotion_id`, `registration_package_id`, `type`, `payment_method`, `amount`, `tax`, `commission`, `discount`, `total_amount`, `created_at`, `refund_at`) VALUES
(141, 1015, 996, 307, NULL, 30, NULL, NULL, NULL, NULL, 'meeting', 'credit', 150, '15.00', '30.00', '0.00', '165.00', 1625944345, NULL),
(142, 934, 995, 308, NULL, 31, NULL, NULL, NULL, NULL, 'meeting', 'credit', 100, '10.00', '20.00', '0.00', '110.00', 1625952627, NULL),
(143, 4, 995, 309, 2005, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 10, '1.00', '2.00', '0.00', '11.00', 1625953196, NULL),
(144, 1015, 995, 310, NULL, 30, NULL, NULL, NULL, NULL, 'meeting', 'credit', 125, '12.50', '25.00', '0.00', '137.50', 1625996812, NULL),
(145, 1016, 995, NULL, 1995, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1625996905, NULL),
(146, 929, 995, 311, 1999, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 50, '5.00', '5.00', '0.00', '55.00', 1625996941, NULL),
(147, 1015, 995, 312, 1998, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 100, '5.00', '10.00', '50.00', '55.00', 1625996978, NULL),
(148, 3, 995, 313, 2001, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 20, '1.60', '1.60', '4.00', '17.60', 1625997104, NULL),
(149, 1015, 996, NULL, 1996, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626060382, NULL),
(150, 934, 996, NULL, 1997, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626060412, NULL),
(151, 867, 996, 314, 2006, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 25, '2.25', '4.50', '2.50', '24.75', 1626060487, NULL),
(152, 1015, 996, 315, 1998, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 100, '4.00', '8.00', '60.00', '44.00', 1626060552, NULL),
(153, 1015, 979, NULL, 1996, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626060740, NULL),
(154, 1015, 930, NULL, 1996, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626060773, NULL),
(155, 1015, 930, 316, 1998, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 100, '5.00', '10.00', '50.00', '55.00', 1626060835, NULL),
(156, 929, 979, 317, 2004, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 60, '6.00', '6.00', '0.00', '66.00', 1626061332, NULL),
(157, 863, 979, 318, 2002, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 20, '2.00', '4.00', '0.00', '22.00', 1626061373, NULL),
(158, 867, 979, 318, 2000, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 30, '3.00', '6.00', '0.00', '33.00', 1626061374, NULL),
(159, NULL, 995, 319, NULL, NULL, 3, NULL, NULL, NULL, 'subscribe', 'credit', 20, '2.00', '0.00', NULL, '22.00', 1626061450, NULL),
(160, 867, 995, NULL, 2006, NULL, NULL, NULL, NULL, NULL, 'webinar', 'subscribe', 0, NULL, NULL, NULL, '0.00', 1626061483, NULL),
(161, 929, 995, NULL, 2004, NULL, NULL, NULL, NULL, NULL, 'webinar', 'subscribe', 0, NULL, NULL, NULL, '0.00', 1626061490, NULL),
(162, 863, 995, NULL, 2002, NULL, NULL, NULL, NULL, NULL, 'webinar', 'subscribe', 0, NULL, NULL, NULL, '0.00', 1626061494, NULL),
(163, 1015, 995, NULL, 1996, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626062834, NULL),
(164, 1016, 996, NULL, 1995, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626129811, NULL),
(165, 1016, 1015, NULL, 1995, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626132407, NULL),
(166, 863, 1015, 321, 2002, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 20, '1.60', '3.20', '4.00', '17.60', 1626132844, NULL),
(167, NULL, 929, 323, 2004, NULL, NULL, NULL, 3, NULL, 'promotion', 'credit', 50, '5.00', '0.00', NULL, '55.00', 1626241152, NULL),
(168, 864, 929, 324, 2003, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 40, '3.00', '6.00', '10.00', '33.00', 1626241212, NULL),
(169, 1015, 929, NULL, 1996, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626243340, NULL),
(170, 870, 995, 325, NULL, 33, NULL, NULL, NULL, NULL, 'meeting', 'credit', 100, '10.00', '20.00', '0.00', '110.00', 1626247195, 1626247245),
(171, 867, 996, 327, 2000, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 30, '2.70', '5.40', '3.00', '29.70', 1626508956, NULL),
(172, 867, 995, NULL, 2007, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1635408189, NULL),
(173, 867, 929, 328, 2000, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 30, '3.00', '6.00', '0.00', '33.00', 1635412196, NULL),
(174, 867, 1017, 330, 2000, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 30, '3.00', '6.00', '0.00', '33.00', 1639379284, NULL),
(175, 1016, 1017, NULL, 1995, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1639379336, NULL),
(176, 1015, 1017, 331, 1998, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 100, '10.00', '20.00', '0.00', '110.00', 1639379350, NULL),
(177, 864, 1017, 332, 2003, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 40, '3.00', '6.00', '10.00', '33.00', 1639379388, NULL),
(178, 1015, 995, NULL, 2008, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1646127212, NULL),
(179, 1015, 995, 333, 2009, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 10, '1.00', '2.00', '0.00', '11.00', 1646172086, NULL),
(180, 1015, 996, 334, 2009, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 10, '0.90', '1.80', '1.00', '9.90', 1646172123, NULL),
(181, 1015, 979, 335, 2009, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 10, '1.00', '2.00', '0.00', '11.00', 1646172159, NULL),
(182, 1015, 929, 336, 2009, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 10, '1.00', '2.00', '0.00', '11.00', 1646172296, NULL),
(183, 1015, 996, NULL, 2008, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1646174000, NULL),
(184, 1015, 1017, NULL, 2008, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1646174029, NULL),
(185, 1015, 1016, NULL, 2008, NULL, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, '0.00', 1646326504, NULL),
(186, 1015, 995, 337, NULL, 30, NULL, NULL, NULL, NULL, 'meeting', 'credit', 750, '75.00', '150.00', '0.00', '825.00', 1646379288, NULL),
(187, NULL, 930, 339, NULL, NULL, NULL, NULL, NULL, 2, 'registration_package', 'credit', 199, '19.90', '0.00', NULL, '218.90', 1646386787, NULL),
(188, NULL, 859, 340, NULL, NULL, NULL, NULL, NULL, 4, 'registration_package', 'credit', 200, '20.00', '0.00', NULL, '220.00', 1646387655, NULL),
(189, NULL, 1018, 342, NULL, NULL, NULL, NULL, NULL, 3, 'registration_package', 'payment_channel', 400, '40.00', '0.00', NULL, '440.00', 1647520432, NULL),
(190, NULL, 1018, 343, NULL, NULL, NULL, NULL, NULL, 3, 'registration_package', 'credit', 400, '40.00', '0.00', NULL, '440.00', 1647842984, NULL),
(191, NULL, 1022, 344, NULL, NULL, NULL, NULL, NULL, 2, 'registration_package', 'payment_channel', 199, '19.90', '0.00', NULL, '218.90', 1648566876, 1648567622),
(192, NULL, 1022, 346, NULL, NULL, NULL, NULL, NULL, 2, 'registration_package', 'payment_channel', 199, '19.90', '0.00', NULL, '218.90', 1648567487, NULL),
(193, 1022, 1023, 347, 2016, NULL, NULL, NULL, NULL, NULL, 'webinar', 'payment_channel', 150, '15.00', '30.00', '0.00', '165.00', 1648815512, NULL),
(194, 1022, 1023, 348, NULL, 37, NULL, NULL, NULL, NULL, 'meeting', 'payment_channel', 217, '21.67', '43.33', '0.00', '238.34', 1648819119, NULL),
(195, 1022, 1023, 349, 2019, NULL, NULL, NULL, NULL, NULL, 'webinar', 'payment_channel', 200, '20.00', '40.00', '0.00', '220.00', 1650006231, NULL),
(196, 1036, 1023, 351, 2021, NULL, NULL, NULL, NULL, NULL, 'webinar', 'payment_channel', 222, '22.20', '44.40', '0.00', '244.20', 1651061822, NULL),
(197, NULL, 1037, 352, NULL, NULL, NULL, NULL, NULL, 6, 'registration_package', 'payment_channel', 600, '60.00', '0.00', NULL, '660.00', 1651063096, NULL),
(198, 1042, 1043, 353, 2024, NULL, NULL, NULL, NULL, NULL, 'webinar', 'payment_channel', 150, '15.00', '30.00', '0.00', '165.00', 1651324088, NULL),
(199, 1045, 1046, 354, 2026, NULL, NULL, NULL, NULL, NULL, 'webinar', 'payment_channel', 150, '15.00', '30.00', '0.00', '165.00', 1651759683, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_log`
--

CREATE TABLE `sales_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `viewed_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_log`
--

INSERT INTO `sales_log` (`id`, `sale_id`, `viewed_at`) VALUES
(1, 173, 1635412221),
(2, 172, 1635412222),
(3, 171, 1635412222),
(4, 170, 1635412222),
(5, 169, 1635412222),
(6, 168, 1635412222),
(7, 167, 1635412222),
(8, 166, 1635412222),
(9, 165, 1635412222),
(10, 164, 1635412222),
(11, 163, 1635412231),
(12, 162, 1635412231),
(13, 161, 1635412231),
(14, 160, 1635412231),
(15, 159, 1635412231),
(16, 158, 1635412231),
(17, 157, 1635412231),
(18, 156, 1635412231),
(19, 155, 1635412231),
(20, 154, 1635412231),
(21, 153, 1635412234),
(22, 152, 1635412234),
(23, 151, 1635412234),
(24, 150, 1635412234),
(25, 149, 1635412234),
(26, 148, 1635412234),
(27, 147, 1635412234),
(28, 146, 1635412234),
(29, 145, 1635412234),
(30, 144, 1635412234),
(31, 143, 1635412235),
(32, 142, 1635412235),
(33, 141, 1635412235),
(34, 184, 1646260033),
(35, 183, 1646260033),
(36, 182, 1646260033),
(37, 181, 1646260033),
(38, 180, 1646260033),
(39, 179, 1646260033),
(40, 178, 1646260033),
(41, 177, 1646260033),
(42, 176, 1646260033),
(43, 175, 1646260033);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_group_id` int(10) UNSIGNED DEFAULT NULL,
  `caption` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `section_group_id`, `caption`) VALUES
(1, 'admin_general_dashboard', NULL, 'General Dashboard'),
(2, 'admin_general_dashboard_show', 1, 'General Dashboard page'),
(3, 'admin_general_dashboard_quick_access_links', 1, 'Quick access links in General Dashboard'),
(4, 'admin_general_dashboard_daily_sales_statistics', 1, 'Daily Sales Type Statistics Section'),
(5, 'admin_general_dashboard_income_statistics', 1, 'Income Statistics Section'),
(6, 'admin_general_dashboard_total_sales_statistics', 1, 'Total Sales Statistics Section'),
(7, 'admin_general_dashboard_new_sales', 1, 'New Sales Section'),
(8, 'admin_general_dashboard_new_comments', 1, 'New Comments Section'),
(9, 'admin_general_dashboard_new_tickets', 1, 'New Tickets Section'),
(10, 'admin_general_dashboard_new_reviews', 1, 'New Reviews Section'),
(11, 'admin_general_dashboard_sales_statistics_chart', 1, 'Sales Statistics Chart'),
(12, 'admin_general_dashboard_recent_comments', 1, 'Recent comments Section'),
(13, 'admin_general_dashboard_recent_tickets', 1, 'Recent tickets Section'),
(14, 'admin_general_dashboard_recent_webinars', 1, 'Recent webinars Section'),
(15, 'admin_general_dashboard_recent_courses', 1, 'Recent courses Section'),
(16, 'admin_general_dashboard_users_statistics_chart', 1, 'Users Statistics Chart'),
(17, 'admin_clear_cache', 1, 'Clear cache'),
(25, 'admin_marketing_dashboard', NULL, 'Marketing Dashboard'),
(26, 'admin_marketing_dashboard_show', 25, 'Marketing Dashboard page'),
(50, 'admin_roles', NULL, 'Roles'),
(51, 'admin_roles_list', 50, 'Roles List'),
(52, 'admin_roles_create', 50, 'Roles Create'),
(53, 'admin_roles_edit', 50, 'Roles Edit'),
(54, 'admin_roles_delete', 50, 'Roles Delete'),
(100, 'admin_users', NULL, 'Users'),
(101, 'admin_staffs_list', 100, 'Staffs list'),
(102, 'admin_users_list', 100, 'Students list'),
(103, 'admin_instructors_list', 100, 'Instructors list'),
(104, 'admin_organizations_list', 100, 'Organizations list'),
(105, 'admin_users_create', 100, 'Users Create'),
(106, 'admin_users_edit', 100, 'Users Edit'),
(107, 'admin_users_delete', 100, 'Users Delete'),
(108, 'admin_users_export_excel', 100, 'List Export excel'),
(109, 'admin_users_badges', 100, 'Users Badges'),
(110, 'admin_users_badges_edit', 100, 'Badges edit'),
(111, 'admin_users_badges_delete', 100, 'Badges delete'),
(112, 'admin_users_impersonate', 100, 'users impersonate (login by users)'),
(113, 'admin_become_instructors_list', 100, 'Lists of requests for become instructors'),
(114, 'admin_become_instructors_reject', 100, 'Reject requests for become instructors'),
(115, 'admin_become_instructors_delete', 100, 'Delete requests for become instructors'),
(116, 'admin_update_user_registration_package', 100, 'Edit user registration package'),
(117, 'admin_update_user_meeting_settings', 100, 'Edit user meeting settings'),
(150, 'admin_webinars', NULL, 'Webinars'),
(151, 'admin_webinars_list', 150, 'Webinars List'),
(152, 'admin_webinars_create', 150, 'Webinars Create'),
(153, 'admin_webinars_edit', 150, 'Webinars Edit'),
(154, 'admin_webinars_delete', 150, 'Webinars Delete'),
(155, 'admin_webinars_export_excel', 150, 'Feature webinars list'),
(156, 'admin_feature_webinars', 150, 'Feature webinars list'),
(157, 'admin_feature_webinars_create', 150, 'create feature webinar'),
(158, 'admin_feature_webinars_export_excel', 150, 'Feature webinar export excel'),
(200, 'admin_categories', NULL, 'Categories'),
(201, 'admin_categories_list', 200, 'Categories List'),
(202, 'admin_categories_create', 200, 'Categories Create'),
(203, 'admin_categories_edit', 200, 'Categories Edit'),
(204, 'admin_categories_delete', 200, 'Categories Delete'),
(205, 'admin_trending_categories', 200, 'Trends Categories List'),
(206, 'admin_create_trending_categories', 200, 'Create Trend Categories'),
(207, 'admin_edit_trending_categories', 200, 'Edit Trend Categories'),
(208, 'admin_delete_trending_categories', 200, 'Delete Trend Categories'),
(250, 'admin_tags', NULL, 'Tags'),
(251, 'admin_tags_list', 250, 'Tags List'),
(252, 'admin_tags_create', 250, 'Tags Create'),
(253, 'admin_tags_edit', 250, 'Tags Edit'),
(254, 'admin_tags_delete', 250, 'Tags Delete'),
(300, 'admin_filters', NULL, 'Filters'),
(301, 'admin_filters_list', 300, 'Filters List'),
(302, 'admin_filters_create', 300, 'Filters Create'),
(303, 'admin_filters_edit', 300, 'Filters Edit'),
(304, 'admin_filters_delete', 300, 'Filters Delete'),
(350, 'admin_quizzes', NULL, 'Quizzes'),
(351, 'admin_quizzes_list', 350, 'Quizzes List'),
(352, 'admin_quizzes_edit', 350, 'Quiz edit'),
(353, 'admin_quizzes_delete', 350, 'Quiz delete'),
(354, 'admin_quizzes_results', 350, 'Quizzes results'),
(355, 'admin_quizzes_results_delete', 350, 'Quizzes results delete'),
(356, 'admin_quizzes_lists_excel', 350, 'Quizzes export excel'),
(400, 'admin_quiz_result', NULL, 'Quiz Result'),
(401, 'admin_quiz_result_list', 400, 'Quiz Result List'),
(402, 'admin_quiz_result_create', 400, 'Quiz Result Create'),
(403, 'admin_quiz_result_edit', 400, 'Quiz Result Edit'),
(404, 'admin_quiz_result_delete', 400, 'Quiz Result Delete'),
(405, 'admin_quiz_result_export_excel', 400, 'quiz result export excel'),
(450, 'admin_certificate', NULL, 'Certificate'),
(451, 'admin_certificate_list', 450, 'Certificate List'),
(452, 'admin_certificate_create', 450, 'Certificate Create'),
(453, 'admin_certificate_edit', 450, 'Certificate Edit'),
(454, 'admin_certificate_delete', 450, 'Certificate Delete'),
(455, 'admin_certificate_template_list', 450, 'Certificate template lists'),
(456, 'admin_certificate_template_create', 450, 'Certificate template create'),
(457, 'admin_certificate_template_edit', 450, 'Certificate template edit'),
(458, 'admin_certificate_template_delete', 450, 'Certificate template delete'),
(459, 'admin_certificate_export_excel', 450, 'Certificates export excel'),
(500, 'admin_discount_codes', NULL, 'Discount codes'),
(501, 'admin_discount_codes_list', 500, 'Discount codes list'),
(502, 'admin_discount_codes_create', 500, 'Discount codes create'),
(503, 'admin_discount_codes_edit', 500, 'Discount codes edit'),
(504, 'admin_discount_codes_delete', 500, 'Discount codes delete'),
(505, 'admin_discount_codes_export', 500, 'Discount codes export excel'),
(550, 'admin_group', NULL, 'Groups'),
(551, 'admin_group_list', 550, 'Groups List'),
(552, 'admin_group_create', 550, 'Groups Create'),
(553, 'admin_group_edit', 550, 'Groups Edit'),
(554, 'admin_group_delete', 550, 'Groups Delete'),
(555, 'admin_update_group_registration_package', 550, 'Update group registration package'),
(600, 'admin_payment_channel', NULL, 'Payment Channels'),
(601, 'admin_payment_channel_list', 600, 'Payment Channels List'),
(602, 'admin_payment_channel_toggle_status', 600, 'active or inactive channel'),
(603, 'admin_payment_channel_edit', 600, 'Payment Channels Edit'),
(650, 'admin_settings', NULL, 'settings'),
(651, 'admin_settings_general', 650, 'General settings'),
(652, 'admin_settings_financial', 650, 'Financial settings'),
(653, 'admin_settings_personalization', 650, 'Personalization settings'),
(654, 'admin_settings_notifications', 650, 'Notifications settings'),
(655, 'admin_settings_seo', 650, 'Seo settings'),
(656, 'admin_settings_customization', 650, 'Customization settings'),
(657, 'admin_settings_notifications', 650, 'Notifications settings'),
(658, 'admin_settings_home_sections', 650, 'Home sections settings'),
(700, 'admin_blog', NULL, 'Blog'),
(701, 'admin_blog_lists', 700, 'Blog lists'),
(702, 'admin_blog_create', 700, 'Blog create'),
(703, 'admin_blog_edit', 700, 'Blog edit'),
(704, 'admin_blog_delete', 700, 'Blog delete'),
(705, 'admin_blog_categories', 700, 'Blog categories list'),
(706, 'admin_blog_categories_create', 700, 'Blog categories create'),
(707, 'admin_blog_categories_edit', 700, 'Blog categories edit'),
(708, 'admin_blog_categories_delete', 700, 'Blog categories delete'),
(750, 'admin_sales', NULL, 'Sales'),
(751, 'admin_sales_list', 750, 'Sales List'),
(752, 'admin_sales_refund', 750, 'Sales Refund'),
(753, 'admin_sales_invoice', 750, 'Sales invoice'),
(754, 'admin_sales_export', 750, 'Sales Export Excel'),
(800, 'admin_documents', NULL, 'Balances'),
(801, 'admin_documents_list', 800, 'Balances List'),
(802, 'admin_documents_create', 800, 'Balances Create'),
(803, 'admin_documents_print', 800, 'Balances print'),
(850, 'admin_payouts', NULL, 'Payout'),
(851, 'admin_payouts_list', 850, 'Payout List'),
(852, 'admin_payouts_reject', 850, 'Payout Reject'),
(853, 'admin_payouts_payout', 850, 'Payout accept'),
(854, 'admin_payouts_export_excel', 850, 'Payout export excel'),
(900, 'admin_offline_payments', NULL, 'Offline Payments'),
(901, 'admin_offline_payments_list', 900, 'Offline Payments List'),
(902, 'admin_offline_payments_reject', 900, 'Offline Payments Reject'),
(903, 'admin_offline_payments_approved', 900, 'Offline Payments Approved'),
(904, 'admin_offline_payments_export_excel', 900, 'Offline Payments export excel'),
(950, 'admin_supports', NULL, 'Supports'),
(951, 'admin_supports_list', 950, 'Supports List'),
(952, 'admin_support_send', 950, 'Send Support'),
(953, 'admin_supports_reply', 950, 'Supports reply'),
(954, 'admin_supports_delete', 950, 'Supports delete'),
(955, 'admin_support_departments', 950, 'Support departments lists'),
(956, 'admin_support_department_create', 950, 'Create support department'),
(957, 'admin_support_departments_edit', 950, 'Edit support departments'),
(958, 'admin_support_departments_delete', 950, 'Delete support department'),
(959, 'admin_support_course_conversations', 950, 'Course conversations'),
(1000, 'admin_subscribe', NULL, 'Subscribes'),
(1001, 'admin_subscribe_list', 1000, 'Subscribes list'),
(1002, 'admin_subscribe_create', 1000, 'Subscribes create'),
(1003, 'admin_subscribe_edit', 1000, 'Subscribes edit'),
(1004, 'admin_subscribe_delete', 1000, 'Subscribes delete'),
(1050, 'admin_notifications', NULL, 'Notifications'),
(1051, 'admin_notifications_list', 1050, 'Notifications list'),
(1052, 'admin_notifications_send', 1050, 'Send Notifications'),
(1053, 'admin_notifications_edit', 1050, 'Edit and details Notifications'),
(1054, 'admin_notifications_delete', 1050, 'Delete Notifications'),
(1055, 'admin_notifications_markAllRead', 1050, 'Mark All Read Notifications'),
(1056, 'admin_notifications_templates', 1050, 'Notifications templates'),
(1057, 'admin_notifications_template_create', 1050, 'Create notification template'),
(1058, 'admin_notifications_template_edit', 1050, 'Edit notification template'),
(1059, 'admin_notifications_template_delete', 1050, 'Delete notification template'),
(1060, 'admin_notifications_posted_list', 1050, 'Notifications Posted list'),
(1075, 'admin_noticeboards', NULL, 'Noticeboards'),
(1076, 'admin_noticeboards_list', 1075, 'Noticeboards list'),
(1077, 'admin_noticeboards_send', 1075, 'Send Noticeboards'),
(1078, 'admin_noticeboards_edit', 1075, 'Edit Noticeboards'),
(1079, 'admin_noticeboards_delete', 1075, 'Delete Noticeboards'),
(1100, 'admin_promotion', NULL, 'Promotions'),
(1101, 'admin_promotion_list', 1100, 'Promotions list'),
(1102, 'admin_promotion_create', 1100, 'Promotion create'),
(1103, 'admin_promotion_edit', 1100, 'Promotion edit'),
(1104, 'admin_promotion_delete', 1100, 'Promotion delete'),
(1150, 'admin_testimonials', NULL, 'testimonials'),
(1151, 'admin_testimonials_list', 1150, 'testimonials list'),
(1152, 'admin_testimonials_create', 1150, 'testimonials create'),
(1153, 'admin_testimonials_edit', 1150, 'testimonials edit'),
(1154, 'admin_testimonials_delete', 1150, 'testimonials delete'),
(1200, 'admin_advertising', NULL, 'advertising'),
(1201, 'admin_advertising_banners', 1200, 'advertising banners list'),
(1202, 'admin_advertising_banners_create', 1200, 'create advertising banner'),
(1203, 'admin_advertising_banners_edit', 1200, 'edit advertising banner'),
(1204, 'admin_advertising_banners_delete', 1200, 'delete advertising banner'),
(1230, 'admin_newsletters', NULL, 'Newsletters'),
(1231, 'admin_newsletters_lists', 1230, 'Newsletters lists'),
(1232, 'admin_newsletters_send', 1230, 'Send Newsletters'),
(1233, 'admin_newsletters_history', 1230, 'Newsletters histories'),
(1234, 'admin_newsletters_delete', 1230, 'Delete newsletters item'),
(1235, 'admin_newsletters_export_excel', 1230, 'Export excel newsletters item'),
(1250, 'admin_contacts', NULL, 'Contacts'),
(1251, 'admin_contacts_lists', 1250, 'Contacts lists'),
(1252, 'admin_contacts_reply', 1250, 'Contacts reply'),
(1253, 'admin_contacts_delete', 1250, 'Contacts delete'),
(1300, 'admin_product_discount', NULL, 'product discount'),
(1301, 'admin_product_discount_list', 1300, 'product discount list'),
(1302, 'admin_product_discount_create', 1300, 'create product discount'),
(1303, 'admin_product_discount_edit', 1300, 'edit product discount'),
(1304, 'admin_product_discount_delete', 1300, 'delete product discount'),
(1305, 'admin_product_discount_export', 1300, 'delete product export excel'),
(1350, 'admin_pages', NULL, 'pages'),
(1351, 'admin_pages_list', 1350, 'pages list'),
(1352, 'admin_pages_create', 1350, 'pages create'),
(1353, 'admin_pages_edit', 1350, 'pages edit'),
(1354, 'admin_pages_toggle', 1350, 'pages toggle publish/draft'),
(1355, 'admin_pages_delete', 1350, 'pages delete'),
(1400, 'admin_comments', NULL, 'Comments'),
(1401, 'admin_webinar_comments', 1400, 'Classes comments'),
(1402, 'admin_webinar_comments_edit', 1400, 'Classes comments edit'),
(1403, 'admin_webinar_comments_reply', 1400, 'Classes comments reply'),
(1404, 'admin_webinar_comments_delete', 1400, 'Classes comments delete'),
(1405, 'admin_webinar_comments_status', 1400, 'Classes comments status (active or pending)'),
(1406, 'admin_blog_comments', 1400, 'Blog comments'),
(1407, 'admin_blog_comments_edit', 1400, 'Blog comments edit'),
(1408, 'admin_blog_comments_reply', 1400, 'Blog comments reply'),
(1409, 'admin_blog_comments_delete', 1400, 'Blog comments delete'),
(1410, 'admin_blog_comments_status', 1400, 'Blog comments status (active or pending)'),
(1450, 'admin_reports', NULL, 'Reports'),
(1451, 'admin_webinar_reports', 1450, 'Classes reports'),
(1452, 'admin_webinar_comments_reports', 1450, 'Classes Comments reports'),
(1453, 'admin_webinar_reports_delete', 1450, 'Classes reports delete'),
(1454, 'admin_blog_comments_reports', 1450, 'Blog Comments reports'),
(1455, 'admin_report_reasons', 1450, 'Reports reasons'),
(1500, 'admin_additional_pages', NULL, 'Additional Pages'),
(1501, 'admin_additional_pages_404', 1500, '404 error page settings'),
(1502, 'admin_additional_pages_contact_us', 1500, 'Contact page settings'),
(1503, 'admin_additional_pages_footer', 1500, 'Footer settings'),
(1504, 'admin_additional_pages_navbar_links', 1500, 'Top Navbar links settings'),
(1550, 'admin_appointments', NULL, 'Appointments'),
(1551, 'admin_appointments_lists', 1550, 'Appointments lists'),
(1552, 'admin_appointments_join', 1550, 'Appointments join'),
(1553, 'admin_appointments_send_reminder', 1550, 'Appointments send reminder'),
(1554, 'admin_appointments_cancel', 1550, 'Appointments cancel'),
(1600, 'admin_reviews', NULL, 'Reviews'),
(1601, 'admin_reviews_lists', 1600, 'Reviews lists'),
(1602, 'admin_reviews_status_toggle', 1600, 'Reviews status toggle (publish or hidden)'),
(1603, 'admin_reviews_detail_show', 1600, 'Review details page'),
(1604, 'admin_reviews_delete', 1600, 'Review delete'),
(1650, 'admin_consultants', NULL, 'Consultants'),
(1651, 'admin_consultants_lists', 1650, 'Consultants lists'),
(1652, 'admin_consultants_export_excel', 1650, 'Consultants export excel'),
(1675, 'admin_referrals', NULL, 'Referrals'),
(1676, 'admin_referrals_history', 1675, 'Referrals History'),
(1677, 'admin_referrals_users', 1675, 'Referrals users'),
(1678, 'admin_referrals_export', 1675, 'Export Referrals'),
(1700, 'admin_agora_history', NULL, 'Agora history'),
(1701, 'admin_agora_history_list', 1700, 'Agora history lists'),
(1702, 'admin_agora_history_export', 1700, 'Agora history export'),
(1725, 'admin_regions', NULL, 'Regions'),
(1726, 'admin_regions_countries', 1725, 'countries lists'),
(1727, 'admin_regions_provinces', 1725, 'provinces lists'),
(1728, 'admin_regions_cities', 1725, 'cities lists'),
(1729, 'admin_regions_districts', 1725, 'districts lists'),
(1730, 'admin_regions_create', 1725, 'create item'),
(1731, 'admin_regions_edit', 1725, 'edit item'),
(1732, 'admin_regions_delete', 1725, 'delete item'),
(1750, 'admin_rewards', NULL, 'Rewards'),
(1751, 'admin_rewards_history', 1750, 'Rewards history'),
(1752, 'admin_rewards_settings', 1750, 'Rewards settings'),
(1753, 'admin_rewards_items', 1750, 'Rewards items'),
(1754, 'admin_rewards_item_delete', 1750, 'Reward item delete'),
(1775, 'admin_registration_packages', NULL, 'Registration packages'),
(1776, 'admin_registration_packages_lists', 1775, 'packages lists'),
(1777, 'admin_registration_packages_new', 1775, 'New package'),
(1778, 'admin_registration_packages_edit', 1775, 'Edit package'),
(1779, 'admin_registration_packages_delete', 1775, 'Delete package'),
(1780, 'admin_registration_packages_reports', 1775, 'Reports'),
(1781, 'admin_registration_packages_settings', 1775, 'Settings');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED DEFAULT NULL,
  `date` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom_start_link` text COLLATE utf8mb4_unicode_ci,
  `session_api` enum('local','big_blue_button','zoom','agora') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `api_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moderator_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agora_settings` text COLLATE utf8mb4_unicode_ci,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `session_reminds`
--

CREATE TABLE `session_reminds` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session_translations`
--

CREATE TABLE `session_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `page` enum('general','financial','personalization','notifications','seo','customization','other') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `page`, `name`, `updated_at`) VALUES
(1, 'seo', 'seo_metas', 1645610423),
(2, 'general', 'socials', 1645553984),
(4, 'other', 'footer', 1632071275),
(5, 'general', 'general', 1647078849),
(6, 'financial', 'financial', 1648626577),
(8, 'personalization', 'home_hero', 1647078912),
(12, 'customization', 'custom_css_js', 1647079711),
(14, 'personalization', 'page_background', 1645690383),
(15, 'personalization', 'home_hero2', 1647078882),
(20, 'other', 'report_reasons', 1645600934),
(22, 'notifications', 'notifications', 1636119806),
(23, 'financial', 'site_bank_accounts', 1648813844),
(24, 'other', 'contact_us', 1647508745),
(25, 'personalization', 'home_sections', 1641234869),
(26, 'other', 'navbar_links', 1645567180),
(27, 'personalization', 'home_video_or_image_box', 1647078895),
(28, 'other', '404', 1645563969),
(29, 'personalization', 'panel_sidebar', 1645563328),
(30, 'financial', 'referral', 1651316606),
(31, 'general', 'features', 1647843607),
(32, 'personalization', 'find_instructors', 1645610065),
(33, 'personalization', 'reward_program', 1647843665),
(34, 'general', 'rewards_settings', 1650989477),
(37, 'financial', 'registration_packages_general', 1651317338),
(38, 'financial', 'registration_packages_instructors', 1651317328),
(39, 'financial', 'registration_packages_organizations', 1651325530),
(40, 'personalization', 'become_instructor_section', 1645609839);

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`) VALUES
(1, 1, 'en', '{\"home\":{\"title\":\"Home\",\"description\":\"home page Description\",\"robot\":\"index\"},\"search\":{\"title\":\"Search\",\"description\":\"search page Description\",\"robot\":\"index\"},\"categories\":{\"title\":\"Category\",\"description\":\"categories page Description\",\"robot\":\"index\"},\"login\":{\"title\":\"Login\",\"description\":\"login page description\",\"robot\":\"index\"},\"register\":{\"title\":\"Register\",\"description\":\"register page Description\",\"robot\":\"index\"},\"about\":{\"title\":\"about page title\",\"description\":\"about page Description\"},\"contact\":{\"title\":\"Contact\",\"description\":\"contact page Description\",\"robot\":\"index\"},\"certificate_validation\":{\"title\":\"Certificate validation\",\"description\":\"Certificate validation description\",\"robot\":\"index\"},\"classes\":{\"title\":\"Courses\",\"description\":\"Courses page Description\",\"robot\":\"index\"},\"blog\":{\"title\":\"Blog\",\"description\":\"Blog page description\",\"robot\":\"index\"},\"instructors\":{\"title\":\"Instructors\",\"description\":\"instructors page Description\",\"robot\":\"index\"},\"organizations\":{\"title\":\"Organizations\",\"description\":\"Organizations page description\",\"robot\":\"index\"},\"instructor_finder_wizard\":{\"title\":\"Instructor finder wizard\",\"description\":\"Instructor finder wizard description\",\"robot\":\"noindex\"},\"instructor_finder\":{\"title\":\"Instructor finder\",\"description\":\"Instructor finder description\",\"robot\":\"index\"},\"reward_courses\":{\"title\":\"Reward courses\",\"description\":\"Reward courses description\",\"robot\":\"index\"}}'),
(2, 2, 'en', '{\"Instagram\":{\"title\":\"Instagram\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/instagram.svg\",\"link\":\"https:\\/\\/www.instagram.com\\/\",\"order\":\"1\"},\"Whatsapp\":{\"title\":\"Whatsapp\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/whatsapp.svg\",\"link\":\"https:\\/\\/web.whatsapp.com\\/\",\"order\":\"2\"},\"Twitter\":{\"title\":\"Twitter\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/twitter.svg\",\"link\":\"https:\\/\\/twitter.com\\/\",\"order\":\"3\"},\"Facebook\":{\"title\":\"Facebook\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/facebook.svg\",\"link\":\"https:\\/\\/www.facebook.com\\/\",\"order\":\"4\"}}'),
(4, 5, 'en', '{\"site_name\":\"Aimsity\",\"site_email\":\"yourteam@aimsity.com\",\"site_phone\":\"+6017-597 2988\",\"site_language\":\"EN\",\"register_method\":\"email\",\"default_time_zone\":\"America\\/New_York\",\"date_format\":\"textual\",\"time_format\":\"12_hours\",\"user_languages\":[\"EN\"],\"rtl_languages\":[\"AR\"],\"fav_icon\":\"\\/store\\/1\\/Aimsity-logo-footer-1-300x300.png\",\"logo\":\"\\/store\\/1\\/website-logo-white.png\",\"footer_logo\":\"\\/store\\/1\\/Aimsity-logo-footer-1-300x300.png\",\"webinar_reminder_schedule\":\"2\",\"preloading\":\"1\",\"hero_section2\":\"1\",\"content_translate\":\"1\"}'),
(5, 6, 'en', '{\"commission\":\"20\",\"tax\":\"10\",\"minimum_payout\":\"50\",\"currency\":\"MYR\",\"currency_position\":\"left\",\"price_display\":\"only_price\"}'),
(6, 8, 'en', '{\"title\":\"Joy of learning & teaching...\",\"description\":\"Aimsity is a fully-featured educational platform that helps instructors to create and publish video courses, live classes, and text courses and earn money, and helps students to learn in the easiest way.\",\"hero_background\":\"\\/store\\/1\\/default_images\\/hero_1.jpg\"}'),
(7, 12, 'en', '{\"css\":\".img-cover {\\r\\n    width: 80%;\\r\\n}\\r\\n.btn-primary {\\r\\n    border-color: #ffab00;\\r\\n    background-color: #F89B2B;\\r\\n    box-shadow: 0 3px 6px 0 #f58a18c4;\\r\\n}\\r\\n.panel-sidebar {\\r\\n    height: 117%;\\r\\n}\",\"js\":null}'),
(8, 14, 'en', '{\"admin_login\":\"\\/store\\/1\\/default_images\\/admin_login.jpg\",\"admin_dashboard\":\"\\/store\\/1\\/default_images\\/admin_dashboard.jpg\",\"login\":\"\\/store\\/1\\/default_images\\/front_login.jpg\",\"register\":\"\\/store\\/1\\/default_images\\/front_register.jpg\",\"remember_pass\":\"\\/store\\/1\\/default_images\\/password_recovery.jpg\",\"verification\":\"\\/store\\/1\\/default_images\\/verification.jpg\",\"search\":\"\\/store\\/1\\/default_images\\/search_cover.png\",\"categories\":\"\\/store\\/1\\/default_images\\/category_cover.png\",\"become_instructor\":\"\\/store\\/1\\/default_images\\/become_instructor.jpg\",\"certificate_validation\":\"\\/store\\/1\\/default_images\\/certificate_validation.jpg\",\"blog\":\"\\/store\\/1\\/default_images\\/blogs_cover.png\",\"instructors\":\"\\/store\\/1\\/default_images\\/instructors_cover.png\",\"organizations\":\"\\/store\\/1\\/default_images\\/organizations_cover.png\",\"dashboard\":\"\\/store\\/1\\/dashboard.png\",\"user_avatar\":\"\\/store\\/1\\/default_images\\/default_profile.jpg\",\"user_cover\":\"\\/store\\/1\\/default_images\\/default_cover.jpg\",\"instructor_finder_wizard\":\"\\/store\\/1\\/default_images\\/instructor_finder_wizard.jpg\"}'),
(9, 15, 'en', '{\"title\":\"Joy of learning & teaching...\",\"description\":\"Aimsity is a fully-featured educational platform that helps instructors to create and publish video courses, live classes, and text courses and earn money, and helps students to learn in the easiest way.\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/world.png\",\"hero_vector\":\"\\/store\\/1\\/animated-header.json\",\"has_lottie\":\"1\"}'),
(10, 20, 'en', '{\"1\":\"reason 2\",\"2\":\"reason 1\"}'),
(11, 22, 'en', '{\"new_comment_admin\":\"7\",\"support_message_admin\":\"10\",\"support_message_replied_admin\":\"11\",\"promotion_plan_admin\":\"29\",\"new_contact_message\":\"26\",\"new_badge\":\"2\",\"change_user_group\":\"3\",\"course_created\":\"4\",\"course_approve\":\"5\",\"course_reject\":\"6\",\"new_comment\":\"7\",\"support_message\":\"8\",\"support_message_replied\":\"9\",\"new_rating\":\"17\",\"webinar_reminder\":\"27\",\"new_financial_document\":\"12\",\"payout_request\":\"13\",\"payout_proceed\":\"14\",\"offline_payment_request\":\"18\",\"offline_payment_approved\":\"19\",\"offline_payment_rejected\":\"20\",\"new_sales\":\"15\",\"new_purchase\":\"16\",\"new_subscribe_plan\":\"21\",\"promotion_plan\":\"28\",\"new_appointment\":\"22\",\"new_appointment_link\":\"23\",\"appointment_reminder\":\"24\",\"meeting_finished\":\"25\",\"new_certificate\":\"30\",\"waiting_quiz\":\"31\",\"waiting_quiz_result\":\"32\",\"payout_request_admin\":\"13\"}'),
(12, 23, 'en', '[]'),
(13, 24, 'en', '{\"background\":\"\\/store\\/1\\/default_images\\/category_cover.png\",\"latitude\":\"43.45905\",\"longitude\":\"11.87300\",\"map_zoom\":\"16\",\"phones\":\"+6017-597 2988\",\"emails\":\"yourteam@aimsity.com\",\"address\":\"Level 8, Livingston Tower, 170 Argyll Road, 10050 George Town, Pulau Pinang.\"}'),
(14, 25, 'en', '{\"latest_classes\":\"1\",\"best_sellers\":\"1\",\"free_classes\":\"1\",\"discount_classes\":\"1\",\"best_rates\":\"1\",\"trend_categories\":\"1\",\"testimonials\":\"1\",\"subscribes\":\"1\",\"blog\":\"1\",\"organizations\":\"1\",\"instructors\":\"1\",\"video_or_image_section\":\"1\",\"find_instructors\":\"1\",\"reward_program\":\"1\"}'),
(15, 26, 'en', '{\"02nh9a\":{\"title\":\"Home\",\"link\":\"\\/\",\"order\":\"1\"},\"1cH2kF\":{\"title\":\"Courses\",\"link\":\"\\/classes?sort=newest\",\"order\":\"2\"},\"gGf8Lv\":{\"title\":\"Instructors\",\"link\":\"\\/instructors\",\"order\":\"3\"},\"VH2ZWa\":{\"title\":\"Blog\",\"link\":\"\\/blog\",\"order\":\"4\"},\"7Q6uAZ\":{\"title\":\"Contact\",\"link\":\"\\/contact\",\"order\":\"5\"}}'),
(16, 27, 'en', '{\"link\":\"\\/classes\",\"title\":\"Start learning anywhere, anytime...\",\"description\":\"Aimsity LMS to access high-quality education materials without any limitations in the easiest way.\",\"background\":\"\\/store\\/1\\/default_images\\/home_video_section.png\"}'),
(17, 28, 'en', '{\"error_image\":\"\\/store\\/1\\/default_images\\/404.svg\",\"error_title\":\"title for error 404\",\"error_description\":\"404 Error description\"}'),
(18, 29, 'en', '{\"link\":\"\\/classes?sort=newest\",\"background\":\"\\/store\\/1\\/sidebar-user.png\"}'),
(19, 30, 'en', '{\"affiliate_user_commission\":\"5\",\"affiliate_user_amount\":\"20\",\"referred_user_amount\":\"10\",\"referral_description\":\"You can share your affiliate URL you will get the above rewards when a user uses the platform.\"}'),
(20, 4, 'en', '{\"first_column\":{\"title\":\"About US\",\"value\":\"<p><font color=\\\"#ffffff\\\">Aimsity is a fully-featured learning management system that helps you to run your education business in several hours. This platform helps instructors to create professional education materials and helps students to learn from the best instructors.<\\/font><\\/p>\"},\"second_column\":{\"title\":null,\"value\":\"<p><br><\\/p>\"},\"third_column\":{\"title\":\"Additional Links\",\"value\":\"<p><a href=\\\"\\/login\\\"><font color=\\\"#ffffff\\\">- Login<\\/font><\\/a><\\/p><p><font color=\\\"#ffffff\\\"><a href=\\\"\\/register\\\"><font color=\\\"#ffffff\\\">- Register<\\/font><\\/a><br><\\/font><\\/p><p><a href=\\\"\\/blog\\\"><font color=\\\"#ffffff\\\">- Blog<\\/font><\\/a><\\/p><p><a href=\\\"\\/contact\\\"><font color=\\\"#ffffff\\\">- Contact us<\\/font><\\/a><\\/p><p><font color=\\\"#ffffff\\\"><a href=\\\"\\/certificate_validation\\\"><font color=\\\"#ffffff\\\">- Certificate validation<\\/font><\\/a><br><\\/font><\\/p><p><font color=\\\"#ffffff\\\"><a href=\\\"\\/become_instructor\\\"><font color=\\\"#ffffff\\\">- Become instructor<\\/font><\\/a><br><\\/font><\\/p><p><a href=\\\"\\/pages\\/terms\\\"><font color=\\\"#ffffff\\\">- Terms &amp; rules<\\/font><\\/a><\\/p><p><a href=\\\"\\/pages\\/about\\\"><font color=\\\"#ffffff\\\">- About us<\\/font><\\/a><br><\\/p>\"},\"forth_column\":{\"title\":null,\"value\":\"<p><br><\\/p>\"}}'),
(31, 4, 'ar', '{\"first_column\":{\"title\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627\",\"value\":\"<p><font color=\\\"#ffffff\\\">Rocket LMS \\u0647\\u0648 \\u0646\\u0638\\u0627\\u0645 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u062a\\u0639\\u0644\\u0645 \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0632\\u0627\\u062a \\u064a\\u0633\\u0627\\u0639\\u062f\\u0643 \\u0639\\u0644\\u0649 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0623\\u0639\\u0645\\u0627\\u0644\\u0643 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0641\\u064a \\u0639\\u062f\\u0629 \\u0633\\u0627\\u0639\\u0627\\u062a. \\u062a\\u0633\\u0627\\u0639\\u062f \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0645\\u0646\\u0635\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0645\\u0648\\u0627\\u062f \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0627\\u062d\\u062a\\u0631\\u0627\\u0641\\u064a\\u0629 \\u0648\\u062a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0645\\u0646 \\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646.<\\/font><\\/p>\"},\"second_column\":{\"title\":\"\\u0631\\u0648\\u0627\\u0628\\u0637 \\u0625\\u0636\\u0627\\u0641\\u064a\\u0629\",\"value\":\"<p><a href=\\\"\\/login\\\"><span style=\\\"color: #ffffff;\\\">- \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/register\\\"><span style=\\\"color: #ffffff;\\\">- \\u062a\\u0633\\u062c\\u064a\\u0644<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/blog\\\"><span style=\\\"color: #ffffff;\\\">- \\u0645\\u0642\\u0627\\u0644\\u0627\\u062a<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/contact\\\"><span style=\\\"color: #ffffff;\\\">- \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/certificate_validation\\\"><span style=\\\"color: #ffffff;\\\">- \\u0627\\u0644\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0646 \\u0635\\u062d\\u0629 \\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/become_instructor\\\"><span style=\\\"color: #ffffff;\\\">- \\u0623\\u0635\\u0628\\u062d \\u0645\\u062f\\u0631\\u0628\\u0627<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/terms\\\"><span style=\\\"color: #ffffff;\\\">- \\u0627\\u0644\\u0634\\u0631\\u0648\\u0637 \\u0648\\u0627\\u0644\\u0642\\u0648\\u0627\\u0639\\u062f<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/about\\\"><span style=\\\"color: #ffffff;\\\">- \\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627<\\/span><\\/a><\\/p>\"},\"third_column\":{\"title\":\"\\u0623\\u0639\\u0645\\u0627\\u0644 \\u0645\\u0645\\u0627\\u062b\\u0644\\u0629\",\"value\":\"<p><a href=\\\"https:\\/\\/www.udemy.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u064a\\u0648\\u062f\\u0645\\u064a<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillshare.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0627\\u0633\\u06a9\\u06cc\\u0644 \\u0634\\u06cc\\u0631<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.coursera.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0643\\u0631\\u0633 \\u0627\\u064a\\u0631\\u0627<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.linkedin.com\\/learning\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0644\\u06cc\\u0646\\u062f\\u0627<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillsoft.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0627\\u0633\\u0643\\u064a\\u0644 \\u0633\\u0641\\u062a<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.udacity.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0627\\u0648\\u062f\\u0627\\u0633\\u064a\\u062a\\u064a<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.edx.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">\\u0627\\u062f\\u0643\\u0633<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.masterclass.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- \\u0645\\u0633\\u062a\\u0631 \\u0643\\u0644\\u0633<\\/font><\\/a><br><\\/p>\"},\"forth_column\":{\"title\":\"\\u0642\\u0645 \\u0628\\u0634\\u0631\\u0627\\u0621 Rocket LMS\",\"value\":\"<p><a title=\\\"Notnt\\\" href=\\\"https:\\/\\/codecanyon.net\\\"><img style=\\\"width: 200px;\\\" src=\\\"\\/store\\/1\\/default_images\\/envato.png\\\"><\\/a><\\/p>\"}}'),
(32, 31, 'en', '{\"agora_max_bitrate\":\"2260\",\"agora_min_bitrate\":\"1130\",\"agora_frame_rate\":\"15\",\"agora_live_streaming\":\"1\",\"agora_chat\":\"1\",\"agora_in_free_courses\":\"1\",\"new_interactive_file\":\"1\",\"timezone_in_register\":\"1\",\"timezone_in_create_webinar\":\"1\"}'),
(33, 32, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/instructor_finder_banner.jpg\",\"title\":\"Find the best instructor\",\"description\":\"Looking for an instructor? Find the best instructors according to different parameters like gender, skill level, price, meeting type, rating, etc.\\r\\nFind instructors on the map.\",\"button1\":{\"title\":\"Tutor Finder\",\"link\":\"\\/instructor-finder\\/wizard\"},\"button2\":{\"title\":\"Tutors on Map\",\"link\":\"\\/instructor-finder\"}}'),
(34, 33, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/club_points_banner.png\",\"title\":\"Win Club Points\",\"description\":\"Use Aimsity and win club points according to different activities.\\r\\nYou will be able to use your club points to get free prizes and courses. Start using the system now and collect points!\",\"button1\":{\"title\":\"Rewards\",\"link\":\"\\/reward-courses\"},\"button2\":{\"title\":\"Points Club\",\"link\":\"\\/panel\\/rewards\"}}'),
(35, 34, 'en', '{\"status\":\"0\",\"exchangeable\":\"0\",\"exchangeable_unit\":null,\"want_more_points_link\":\"\\/pages\\/reward_points_system\"}'),
(38, 37, 'en', '{\"status\":\"1\",\"enable_home_section\":\"1\"}'),
(39, 38, 'en', '{\"status\":\"1\",\"courses_capacity\":\"2000\",\"courses_count\":\"2000\",\"meeting_count\":\"20000\"}'),
(40, 39, 'en', '{\"status\":\"1\",\"instructors_count\":\"200\",\"students_count\":\"2000\",\"courses_capacity\":\"2000\",\"courses_count\":\"20000\",\"meeting_count\":\"2000\"}'),
(41, 40, 'en', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/become_instructor_banner.jpg\",\"title\":\"Become an instructor\",\"description\":\"Are you interested to be a part of our community?\\r\\nYou can be a part of our community by signing up as an instructor or organization.\",\"button1\":{\"title\":\"Become an Instructor\",\"link\":\"\\/become-instructor\"},\"button2\":{\"title\":\"Registration Packages\",\"link\":\"become-instructor\\/packages\\/\"}}'),
(42, 8, 'ar', '{\"title\":\"\\u0645\\u062a\\u0639\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 ...\",\"description\":\"Rocket LMS \\u0639\\u0628\\u0627\\u0631\\u0629 \\u0639\\u0646 \\u0646\\u0638\\u0627\\u0645 \\u0623\\u0633\\u0627\\u0633\\u064a \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0632\\u0627\\u062a \\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0648\\u0646\\u0634\\u0631 \\u062f\\u0648\\u0631\\u0627\\u062a \\u0641\\u064a\\u062f\\u064a\\u0648 \\u0648\\u0641\\u0635\\u0648\\u0644 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0648\\u062f\\u0648\\u0631\\u0627\\u062a \\u0646\\u0635\\u064a\\u0629 \\u0648\\u0643\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u060c \\u0648\\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0628\\u0623\\u0633\\u0647\\u0644 \\u0637\\u0631\\u064a\\u0642\\u0629.\",\"hero_background\":\"\\/store\\/1\\/default_images\\/hero_1.jpg\"}'),
(43, 8, 'es', '{\"title\":\"Alegr\\u00eda de aprender y ense\\u00f1ar ...\",\"description\":\"Rocket LMS es una plataforma educativa con todas las funciones que ayuda a los instructores a crear y publicar cursos de video, clases en vivo y cursos de texto y ganar dinero, y ayuda a los estudiantes a aprender de la manera m\\u00e1s f\\u00e1cil.\",\"hero_background\":\"\\/store\\/1\\/default_images\\/hero_1.jpg\"}'),
(44, 15, 'ar', '{\"title\":\"\\u0645\\u062a\\u0639\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 ...\",\"description\":\"Rocket LMS \\u0639\\u0628\\u0627\\u0631\\u0629 \\u0639\\u0646 \\u0646\\u0638\\u0627\\u0645 \\u0623\\u0633\\u0627\\u0633\\u064a \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0645\\u064a\\u0632\\u0627\\u062a \\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0648\\u0646\\u0634\\u0631 \\u062f\\u0648\\u0631\\u0627\\u062a \\u0641\\u064a\\u062f\\u064a\\u0648 \\u0648\\u0641\\u0635\\u0648\\u0644 \\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 \\u0648\\u062f\\u0648\\u0631\\u0627\\u062a \\u0646\\u0635\\u064a\\u0629 \\u0648\\u0643\\u0633\\u0628 \\u0627\\u0644\\u0645\\u0627\\u0644 \\u060c \\u0648\\u064a\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0628\\u0623\\u0633\\u0647\\u0644 \\u0637\\u0631\\u064a\\u0642\\u0629.\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/world.png\",\"hero_vector\":\"\\/store\\/1\\/animated-header.json\",\"has_lottie\":\"1\"}'),
(45, 15, 'es', '{\"title\":\"Alegr\\u00eda de aprender y ense\\u00f1ar ...\",\"description\":\"Rocket LMS es una plataforma educativa con todas las funciones que ayuda a los instructores a crear y publicar cursos de video, clases en vivo y cursos de texto y ganar dinero, y ayuda a los estudiantes a aprender de la manera m\\u00e1s f\\u00e1cil.\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/world.png\",\"hero_vector\":\"\\/store\\/1\\/animated-header.json\",\"has_lottie\":\"1\"}'),
(46, 27, 'ar', '{\"link\":\"\\/classes\",\"title\":\"\\u0627\\u0628\\u062f\\u0623 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0641\\u064a \\u0623\\u064a \\u0645\\u0643\\u0627\\u0646 \\u0648\\u0641\\u064a \\u0623\\u064a \\u0648\\u0642\\u062a ...\",\"description\":\"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0645 Rocket LMS \\u0644\\u0644\\u0648\\u0635\\u0648\\u0644 \\u0625\\u0644\\u0649 \\u0645\\u0648\\u0627\\u062f \\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0639\\u0627\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629 \\u062f\\u0648\\u0646 \\u0623\\u064a \\u0642\\u064a\\u0648\\u062f \\u0648\\u0628\\u0623\\u0633\\u0647\\u0644 \\u0637\\u0631\\u064a\\u0642\\u0629.\",\"background\":\"\\/store\\/1\\/default_images\\/home_video_section.png\"}'),
(47, 27, 'es', '{\"link\":\"\\/classes\",\"title\":\"Empiece a aprender en cualquier lugar, en cualquier momento ...\",\"description\":\"Utilice Rocket LMS para acceder a materiales educativos de alta calidad sin limitaciones de la forma m\\u00e1s sencilla.\",\"background\":\"\\/store\\/1\\/default_images\\/home_video_section.png\"}'),
(48, 29, 'ar', '{\"link\":\"\\/classes?sort=newest\",\"background\":\"\\/store\\/1\\/sidebar-user-ar.png\"}'),
(49, 29, 'es', '{\"link\":\"\\/classes?sort=newest\",\"background\":\"\\/store\\/1\\/sidebar-user-sp.png\"}'),
(50, 4, 'es', '{\"first_column\":{\"title\":\"Sobre Nosotras\",\"value\":\"<p><font color=\\\"#ffffff\\\">Rocket LMS es un sistema de gesti\\u00f3n de aprendizaje con todas las funciones que le ayuda a gestionar su negocio educativo en varias horas. Esta plataforma ayuda a los instructores a crear materiales educativos profesionales y ayuda a los estudiantes a aprender de los mejores instructores.<\\/font><\\/p>\"},\"second_column\":{\"title\":\"Enlaces Adicionales\",\"value\":\"<p><a href=\\\"\\/login\\\"><span style=\\\"color: #ffffff;\\\">- Acceso<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/register\\\"><span style=\\\"color: #ffffff;\\\">- Registrarse<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/blog\\\"><span style=\\\"color: #ffffff;\\\">- Blog<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/contact\\\"><span style=\\\"color: #ffffff;\\\">- Contacta con nosotras<\\/span><\\/a><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/certificate_validation\\\"><span style=\\\"color: #ffffff;\\\">- Validaci\\u00f3n de certificado<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><span style=\\\"color: #ffffff;\\\"><a href=\\\"\\/become_instructor\\\"><span style=\\\"color: #ffffff;\\\">- Convi\\u00e9rtete en instructor<\\/span><\\/a><br><\\/span><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/terms\\\"><span style=\\\"color: #ffffff;\\\">- T\\u00e9rminos y reglas<\\/span><\\/a><\\/p>\\r\\n<p><a href=\\\"\\/pages\\/about\\\"><span style=\\\"color: #ffffff;\\\">- Sobre nosotras<\\/span><\\/a><\\/p>\"},\"third_column\":{\"title\":\"Negocios Similares\",\"value\":\"<p><a href=\\\"https:\\/\\/www.udemy.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udemy<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillshare.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillshare<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.coursera.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Coursera<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.linkedin.com\\/learning\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Lynda<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.skillsoft.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Skillsoft<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.udacity.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Udacity<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.edx.org\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- edX<\\/font><\\/a><\\/p><p><a href=\\\"https:\\/\\/www.masterclass.com\\/\\\" target=\\\"_blank\\\"><font color=\\\"#ffffff\\\">- Masterclass<\\/font><\\/a><br><\\/p>\"},\"forth_column\":{\"title\":\"Compra Rocket LMS\",\"value\":\"<p><a title=\\\"Notnt\\\" href=\\\"https:\\/\\/codecanyon.net\\\"><img style=\\\"width: 200px;\\\" src=\\\"\\/store\\/1\\/default_images\\/envato.png\\\"><\\/a><\\/p>\"}}'),
(51, 26, 'es', '{\"02nh9a\":{\"title\":\"hogar\",\"link\":\"\\/\",\"order\":\"1\"},\"1cH2kF\":{\"title\":\"Cursos\",\"link\":\"\\/classes?sort=newest\",\"order\":\"2\"},\"gGf8Lv\":{\"title\":\"Instructoras\",\"link\":\"\\/instructors\",\"order\":\"3\"},\"VBxDrB\":{\"title\":\"Blog\",\"link\":\"\\/blog\",\"order\":\"4\"},\"7Q6uAZ\":{\"title\":\"Contacto\",\"link\":\"\\/contact\",\"order\":\"5\"}}'),
(52, 26, 'ar', '{\"02nh9a\":{\"title\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\",\"link\":\"\\/\",\"order\":\"1\"},\"1cH2kF\":{\"title\":\"\\u0627\\u0644\\u062f\\u0648\\u0631\\u0627\\u062a\",\"link\":\"\\/classes?sort=newest\",\"order\":\"2\"},\"gGf8Lv\":{\"title\":\"\\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646\",\"link\":\"\\/instructors\",\"order\":\"3\"},\"VH2ZWa\":{\"title\":\"\\u0627\\u0644\\u0645\\u062f\\u0648\\u0646\\u0627\\u062a\",\"link\":\"\\/blog\",\"order\":\"4\"},\"7Q6uAZ\":{\"title\":\"\\u0627\\u062a\\u0635\\u0644\",\"link\":\"\\/contact\",\"order\":\"5\"}}'),
(53, 32, 'ar', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/instructor_finder_banner.jpg\",\"title\":\"\\u0627\\u0639\\u062b\\u0631 \\u0639\\u0644\\u0649 \\u0623\\u0641\\u0636\\u0644 \\u0645\\u062f\\u0631\\u0628\",\"description\":\"\\u062a\\u0628\\u062d\\u062b \\u0639\\u0646 \\u0645\\u062f\\u0631\\u0628\\u061f \\u0627\\u0639\\u062b\\u0631 \\u0639\\u0644\\u0649 \\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0648\\u0641\\u0642\\u064b\\u0627 \\u0644\\u0645\\u0639\\u0627\\u064a\\u064a\\u0631 \\u0645\\u062e\\u062a\\u0644\\u0641\\u0629 \\u0645\\u062b\\u0644 \\u0627\\u0644\\u062c\\u0646\\u0633 \\u0648\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0629 \\u0648\\u0627\\u0644\\u0633\\u0639\\u0631 \\u0648\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639 \\u0648\\u0627\\u0644\\u062a\\u0642\\u064a\\u064a\\u0645 \\u0648\\u0645\\u0627 \\u0625\\u0644\\u0649 \\u0630\\u0644\\u0643.\\r\\n\\u0627\\u0628\\u062d\\u062b \\u0639\\u0646 \\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062e\\u0631\\u064a\\u0637\\u0629.\",\"button1\":{\"title\":\"\\u0627\\u0644\\u0628\\u0627\\u062d\\u062b \\u0639\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0645\",\"link\":\"\\/instructor-finder\\/wizard\"},\"button2\":{\"title\":\"\\u0645\\u062f\\u0631\\u0633\\u0648\\u0646 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u062e\\u0631\\u064a\\u0637\\u0629\",\"link\":\"\\/instructor-finder\"}}'),
(54, 32, 'es', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/instructor_finder_banner.jpg\",\"title\":\"Encuentra la mejor instructora\",\"description\":\"\\u00bfBuscas un instructor? Encuentre los mejores instructores seg\\u00fan diferentes par\\u00e1metros como g\\u00e9nero, nivel de habilidad, precio, tipo de reuni\\u00f3n, calificaci\\u00f3n, etc.\\r\\nEncuentra instructores en el mapa.\",\"button1\":{\"title\":\"Buscadora de tutores\",\"link\":\"\\/instructor-finder\\/wizard\"},\"button2\":{\"title\":\"Tutores en el mapa\",\"link\":\"\\/instructor-finder\"}}'),
(55, 33, 'ar', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/club_points_banner.png\",\"title\":\"\\u0627\\u0631\\u0628\\u062d \\u0646\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0646\\u0627\\u062f\\u064a\",\"description\":\"\\u0627\\u0633\\u062a\\u062e\\u062f\\u0645 Rocket LMS \\u0648\\u0627\\u0631\\u0628\\u062d \\u0646\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0646\\u0627\\u062f\\u064a \\u0648\\u0641\\u0642\\u064b\\u0627 \\u0644\\u0644\\u0623\\u0646\\u0634\\u0637\\u0629 \\u0627\\u0644\\u0645\\u062e\\u062a\\u0644\\u0641\\u0629.\\r\\n\\u0633\\u062a\\u062a\\u0645\\u0643\\u0646 \\u0645\\u0646 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0646\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0646\\u0627\\u062f\\u064a \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0643 \\u0644\\u0644\\u062d\\u0635\\u0648\\u0644 \\u0639\\u0644\\u0649 \\u062c\\u0648\\u0627\\u0626\\u0632 \\u0648\\u062f\\u0648\\u0631\\u0627\\u062a \\u0645\\u062c\\u0627\\u0646\\u064a\\u0629. \\u0627\\u0628\\u062f\\u0623 \\u0641\\u064a \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0644\\u0622\\u0646 \\u0648\\u0627\\u062c\\u0645\\u0639 \\u0627\\u0644\\u0646\\u0642\\u0627\\u0637!\",\"button1\":{\"title\":\"\\u0627\\u0644\\u0645\\u0643\\u0627\\u0641\\u0622\\u062a\",\"link\":\"\\/reward-courses\"},\"button2\":{\"title\":\"\\u0646\\u0627\\u062f\\u064a \\u0627\\u0644\\u0646\\u0642\\u0627\\u0637\",\"link\":\"\\/panel\\/rewards\"}}'),
(56, 33, 'es', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/club_points_banner.png\",\"title\":\"Gana puntos del club\",\"description\":\"Utilice Rocket LMS y gane puntos del club seg\\u00fan diferentes actividades.\\r\\nPodr\\u00e1s utilizar tus puntos del club para conseguir premios y cursos gratuitos. \\u00a1Comience a usar el sistema ahora y acumule puntos!\",\"button1\":{\"title\":\"Recompensas\",\"link\":\"\\/reward-courses\"},\"button2\":{\"title\":\"club de puntos\",\"link\":\"\\/panel\\/rewards\"}}'),
(57, 40, 'ar', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/become_instructor_banner.jpg\",\"title\":\"\\u0643\\u0646 \\u0645\\u062f\\u0631\\u0628\\u064b\\u0627\",\"description\":\"\\u0647\\u0644 \\u0623\\u0646\\u062a \\u0645\\u0647\\u062a\\u0645 \\u0628\\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u062c\\u0632\\u0621\\u064b\\u0627 \\u0645\\u0646 \\u0645\\u062c\\u062a\\u0645\\u0639\\u0646\\u0627\\u061f\\r\\n\\u064a\\u0645\\u0643\\u0646\\u0643 \\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u062c\\u0632\\u0621\\u064b\\u0627 \\u0645\\u0646 \\u0645\\u062c\\u062a\\u0645\\u0639\\u0646\\u0627 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0643\\u0645\\u062f\\u0631\\u0628 \\u0623\\u0648 \\u0645\\u0646\\u0638\\u0645\\u0629.\",\"button1\":{\"title\":\"\\u0643\\u0646 \\u0645\\u062f\\u0631\\u0633\\u064b\\u0627\",\"link\":\"\\/become-instructor\"},\"button2\":{\"title\":\"\\u062d\\u0632\\u0645 \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644\",\"link\":\"become-instructor\\/packages\\/\"}}'),
(58, 40, 'es', '{\"image\":\"\\/store\\/1\\/default_images\\/home_sections_banners\\/become_instructor_banner.jpg\",\"title\":\"Convi\\u00e9rtete en instructora\",\"description\":\"\\u00bfEst\\u00e1s interesado en ser parte de nuestra comunidad?\\r\\nPuedes ser parte de nuestra comunidad registr\\u00e1ndote como instructor u organizaci\\u00f3n.\",\"button1\":{\"title\":\"Convi\\u00e9rtete en instructora\",\"link\":\"\\/become-instructor\"},\"button2\":{\"title\":\"Paquetes de registro\",\"link\":\"become-instructor\\/packages\\/\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `special_offers`
--

CREATE TABLE `special_offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent` int(10) UNSIGNED NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `from_date` int(10) UNSIGNED NOT NULL,
  `to_date` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int(10) UNSIGNED NOT NULL,
  `usable_count` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `usable_count`, `days`, `price`, `icon`, `is_popular`, `created_at`) VALUES
(3, 100, 15, 20, '/store/1/default_images/subscribe_packages/bronze.png', 0, 1635441672),
(4, 1000, 30, 100, '/store/1/default_images/subscribe_packages/gold.png', 1, 1635442074),
(5, 400, 30, 50, '/store/1/default_images/subscribe_packages/silver.png', 0, 1635442132);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_translations`
--

CREATE TABLE `subscribe_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscribe_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribe_translations`
--

INSERT INTO `subscribe_translations` (`id`, `subscribe_id`, `locale`, `title`, `description`) VALUES
(1, 3, 'en', 'Bronze', 'Suggested for personal usage'),
(2, 4, 'en', 'Gold', 'Suggested for big businesses'),
(3, 5, 'en', 'Silver', 'Suggested for small businesses'),
(4, 3, 'ar', 'برونزية', 'اقترح للاستخدام الشخصي'),
(5, 3, 'es', 'Bronce', 'Sugerido para uso personal'),
(6, 4, 'es', 'Oro', 'Sugerido para grandes empresas'),
(7, 4, 'ar', 'ذهب', 'مقترح للشركات الكبيرة'),
(8, 5, 'ar', 'فضة', 'اقترح للشركات الصغيرة'),
(9, 5, 'es', 'Plata', 'Sugerido para pequeñas empresas');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_uses`
--

CREATE TABLE `subscribe_uses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subscribe_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('open','close','replied','supporter_replied') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `support_conversations`
--

CREATE TABLE `support_conversations` (
  `id` int(10) UNSIGNED NOT NULL,
  `support_id` int(10) UNSIGNED NOT NULL,
  `supporter_id` int(10) UNSIGNED DEFAULT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `support_departments`
--

CREATE TABLE `support_departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `support_departments`
--

INSERT INTO `support_departments` (`id`, `created_at`) VALUES
(2, 1635445554),
(3, 1635445486),
(4, 1635445505);

-- --------------------------------------------------------

--
-- Table structure for table `support_department_translations`
--

CREATE TABLE `support_department_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_department_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_department_translations`
--

INSERT INTO `support_department_translations` (`id`, `support_department_id`, `locale`, `title`) VALUES
(1, 2, 'en', 'Financial'),
(2, 3, 'en', 'Content'),
(3, 4, 'en', 'Marketing'),
(4, 4, 'ar', 'تسويق'),
(5, 4, 'es', 'Márketing'),
(6, 3, 'es', 'Contenido'),
(7, 3, 'ar', 'المحتوى'),
(8, 2, 'ar', 'الأمور المالية'),
(9, 2, 'es', 'Financiera');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `webinar_id`) VALUES
(6611, 'computerscience', 2027),
(6612, 'basic computing', 2027),
(6613, 'scratch mit', 2027),
(6614, 'coding', 2027),
(6615, 'programming', 2027),
(6616, 'computerscience', 2026),
(6617, 'coding', 2026),
(6618, 'programming', 2026),
(6619, 'scratchmit', 2026),
(6620, 'developer', 2026);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` enum('active','disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'disable',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `user_avatar`, `rate`, `status`, `created_at`) VALUES
(2, '/store/1/default_images/testimonials/profile_picture (28).jpg', '5', 'active', 1606841889),
(3, '/store/1/default_images/testimonials/profile_picture (50).jpg', '5', 'active', 1606841910),
(4, '/store/1/default_images/testimonials/profile_picture (38).jpg', '5', 'active', 1606841929),
(5, '/store/1/default_images/testimonials/profile_picture (20).jpg', '5', 'active', 1606841946),
(6, '/store/1/default_images/testimonials/profile_picture (52).jpg', '5', 'active', 1606842000);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_translations`
--

CREATE TABLE `testimonial_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `testimonial_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_bio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial_translations`
--

INSERT INTO `testimonial_translations` (`id`, `testimonial_id`, `locale`, `user_name`, `user_bio`, `comment`) VALUES
(1, 2, 'en', 'Ryan Newman', 'Data Analyst at Microsoft', '\"We\'ve used Rocket LMS for the last 2  years. Thanks for the great service.\"'),
(2, 3, 'en', 'Megan Hayward', 'System Administrator at Amazon', '\"We\'re loving it. Rocket LMS is both perfect    and highly adaptable.\"'),
(3, 4, 'en', 'Natasha Hope', 'IT Technician at IBM', '\"I am really satisfied with my Rocket LMS. It\'s the perfect solution for our business.\"'),
(4, 5, 'en', 'Charles Dale', 'Computer Engineer at Oracle', '\"I am so pleased with this product. I couldn\'t have asked for more than this.\"'),
(5, 6, 'en', 'David Patterson', 'Network Technician at Cisco', '\"Rocket LMS impressed me on multiple           levels.\"'),
(6, 2, 'ar', 'Abdul Jabbaar el-Kaleel', 'محلل بيانات في مايكروسوفت', '\"لقد استخدمنا Rocket LMS خلال العامين الماضيين. شكرًا على الخدمة الرائعة.\"'),
(7, 2, 'es', 'Ryan Newman', 'Analista de datos en Microsoft', '\"Hemos utilizado Rocket LMS durante los últimos 2 años. Gracias por el gran servicio\"'),
(8, 3, 'es', 'Megan Hayward', 'Administradora de sistemas en Amazon', '\"Nos encanta. Rocket LMS es perfecto y muy adaptable\".'),
(9, 3, 'ar', 'Khaleela el-Alam', 'مسؤول النظام في أمازون', '\"نحن نحبها. Rocket LMS مثالي وقابل للتكيف بشكل كبير.\"'),
(10, 4, 'es', 'Natasha Hope', 'Técnico de TI en IBM', '\"Estoy realmente satisfecho con mi Rocket LMS. Es la solución perfecta para nuestro negocio\"'),
(11, 4, 'ar', 'Sakeena el-Shad', 'فني تكنولوجيا المعلومات في شركة آی بی ام', '\"أنا راضٍ حقًا عن Rocket LMS. إنه الحل الأمثل لأعمالنا.\"'),
(12, 5, 'es', 'Charles Dale', 'Ingeniera informatica en oracle', '\"Estoy muy satisfecho con este producto. No podría haber pedido más que esto\"'),
(13, 5, 'ar', 'Rifat el-Younis', 'مهندس كمبيوتر', '\"أنا مسرور جدًا بهذا المنتج. لم أستطع طلب أكثر من هذا.\"'),
(14, 6, 'es', 'David Patterson', 'Técnico de redes en Cisco', '\"Rocket LMS me impresionó en varios niveles\"'),
(15, 6, 'ar', 'Ahmed al-Mansouri', 'فني شبكات في سيسكو', '\"لقد أبهرني صاروخ Rocket LMS على مستويات متعددة.\"');

-- --------------------------------------------------------

--
-- Table structure for table `text_lessons`
--

CREATE TABLE `text_lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `study_time` int(10) UNSIGNED DEFAULT NULL,
  `accessibility` enum('free','paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'free',
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` int(10) UNSIGNED NOT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `text_lessons_attachments`
--

CREATE TABLE `text_lessons_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `text_lesson_id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `text_lesson_translations`
--

CREATE TABLE `text_lesson_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text_lesson_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `start_date` int(10) UNSIGNED DEFAULT NULL,
  `end_date` int(10) UNSIGNED DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_translations`
--

CREATE TABLE `ticket_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_users`
--

CREATE TABLE `ticket_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `trend_categories`
--

CREATE TABLE `trend_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `trend_categories`
--

INSERT INTO `trend_categories` (`id`, `category_id`, `icon`, `color`, `created_at`) VALUES
(1, 609, '/store/1/default_images/trend_categories_icons/briefcase.png', '#7367f0', 1605117336),
(2, 611, '/store/1/default_images/trend_categories_icons/bulb.png', '#ad82e0', 1605117336),
(3, 604, '/store/1/default_images/trend_categories_icons/family.png', '#ff7c59', 1605117336),
(4, 523, '/store/1/default_images/trend_categories_icons/muscle.png', '#28c76f', 1605117336),
(5, 602, '/store/1/default_images/trend_categories_icons/connection.png', '#ea5455', 1605117336),
(6, 520, '/store/1/default_images/trend_categories_icons/palette.png', '#45c0f9', 1605117336);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `organ_id` int(11) DEFAULT NULL,
  `mobile` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `financial_approval` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `district_id` int(10) UNSIGNED DEFAULT NULL,
  `location` point DEFAULT NULL,
  `level_of_training` bit(3) DEFAULT NULL,
  `meeting_type` enum('all','in_person','online') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `status` enum('active','pending','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `public_message` tinyint(1) NOT NULL DEFAULT '0',
  `account_type` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_scan` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` int(10) UNSIGNED DEFAULT NULL,
  `affiliate` tinyint(1) NOT NULL DEFAULT '1',
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  `ban_start_at` int(10) UNSIGNED DEFAULT NULL,
  `ban_end_at` int(10) UNSIGNED DEFAULT NULL,
  `offline` tinyint(1) NOT NULL DEFAULT '0',
  `offline_message` text COLLATE utf8mb4_unicode_ci,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `role_name`, `role_id`, `organ_id`, `mobile`, `email`, `bio`, `password`, `google_id`, `facebook_id`, `remember_token`, `verified`, `financial_approval`, `avatar`, `cover_img`, `headline`, `about`, `address`, `country_id`, `province_id`, `city_id`, `district_id`, `location`, `level_of_training`, `meeting_type`, `status`, `language`, `timezone`, `newsletter`, `public_message`, `account_type`, `iban`, `account_id`, `identity_scan`, `certificate`, `commission`, `affiliate`, `ban`, `ban_start_at`, `ban_end_at`, `offline`, `offline_message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 2, NULL, '00000000', 'admin@aimsity.com', 'Senior software developer', '$2y$10$gws5H8nQp0N3reADr.EUQOG58iNKjcxZxJV0NEYrl/BeUM.LTmOdi', NULL, NULL, 'y5mVe7iwMegOLJ4yhHk5pPV607gJwrDA3bgsyXStdwmyfTrnMf936uE0Mezv', 1, 0, '/store/1/default_images/logo-new.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', 'America/New_York', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1597826952, 1597826952, NULL),
(1045, 'Jaylee Ong', 'teacher', 4, NULL, NULL, 'jaylee@aimsity.com', NULL, '$2y$10$4035iUvEjxfOGFiPpnAICe1fbbyJnAgkrAvEhNNFoXaBn1BWSDC62', NULL, NULL, 'O0cgtGHC6Y3NbxrQCnlcdIcTh6JSSHWn2i7DuWjywbwq0o2PfSvbJ5OKkDTk', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', NULL, 'Asia/Kuala_Lumpur', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, 1651735688, NULL, NULL),
(1046, 'JayleeHK Ong', 'user', 1, NULL, NULL, 'onghuikim17@gmail.com', NULL, NULL, '100584753136529915761', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, 1651758469, NULL, NULL),
(1047, 'Aimsity', 'organization', 3, NULL, NULL, 'aimsitychannel@gmail.com', NULL, '$2y$10$Iyzemc8fCuEr2NG532UxJ.dti6N200qcUCmDn1nEEPDqRtZsW9Vnu', '117030997199152739271', NULL, NULL, 0, 0, '/store/1047/avatar/6274c51e7984c.png', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', NULL, 'Asia/Kuala_Lumpur', 0, 0, '', '', '', '', '', NULL, 0, 0, NULL, NULL, 0, NULL, 1651818887, NULL, NULL),
(1048, 'Aimsity1', 'teacher', 4, 1047, '1111111111', 'yourteam@aimsity.com', NULL, '$2y$10$UUxrhpHi40b92F.ZaWl0CeQdB9EEYG/W58gMc/X/Ed6NfhdvoPXEW', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'all', 'active', 'EN', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, 1651920913, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_badges`
--

CREATE TABLE `users_badges` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `badge_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_metas`
--

CREATE TABLE `users_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_metas`
--

INSERT INTO `users_metas` (`id`, `user_id`, `name`, `value`) VALUES
(21, 1016, 'education', 'BS in Mechanical Engineering from Santa Clara University'),
(22, 1016, 'education', 'MS in Mechanical Engineering from Santa Clara University'),
(23, 1016, 'experience', 'professional instructor and trainer for Data Science and programming'),
(24, 1016, 'experience', 'Head of Data Science for Pierian Data Inc'),
(25, 1015, 'experience', 'supporting proprietary Unix operating systems including AIX, HP-UX, and Solaris.'),
(26, 1015, 'experience', '10 years of experience working with Linux systems'),
(27, 1015, 'education', 'Red Hat Certified Engineer (RHCE)'),
(28, 1015, 'education', 'AWS Certified DevOps Engineer - Professional'),
(29, 1015, 'education', 'Linux Foundation Certified System Administrator'),
(30, 929, 'experience', 'Director at Cisco Systems 2015 - 2021'),
(31, 929, 'experience', 'research assistant at Harvard University 2010 - 2019'),
(32, 929, 'experience', 'Amazon bestselling author'),
(33, 923, 'experience', 'marketing strategies at Microlab 2010-2015'),
(34, 923, 'education', 'Associate of Business Administration from Imperial College London'),
(35, 923, 'education', 'Bachelor of International Business Economics from University of Cambridge'),
(36, 923, 'education', 'Master of Business Administration from King\'s College London'),
(37, 3, 'experience', 'Five-time TED speaker'),
(38, 3, 'education', 'Associate of Applied Business from Stanford University'),
(39, 3, 'education', 'Bachelor of Science in Business from Harvard University'),
(40, 3, 'education', 'Master of Computational Finance from University of Chicago'),
(41, 870, 'education', 'Associate in Physical Therapy from University of British Columbia'),
(42, 870, 'education', 'Bachelor of Arts in Psychology from Duke University'),
(43, 870, 'education', 'Master of Public Health from Cornell University'),
(44, 929, 'education', 'Associate of Applied Business from University of Leeds'),
(45, 929, 'education', 'Bachelor of Management and Organizational Studies from University of Sheffield'),
(46, 929, 'education', 'Master of Management from Durham University'),
(47, 934, 'education', 'Bachelor of Science in Information Technology from University of Glasgow'),
(48, 934, 'education', 'Master of Science in Information Systems (MSIS) from Delft University of Technology'),
(49, 934, 'experience', 'Web Developer at Uber 2015 - 2018'),
(50, 1015, 'education', 'Master of Science in Information Systems (MSIS) from University of Sydney'),
(51, 1016, 'gender', 'man'),
(52, 1016, 'age', '29'),
(53, 1016, 'address', 'Luib, 72 Wern Ddu Lane'),
(54, 1015, 'address', 'Al Wakrah ,27904 Hilpert Knoll'),
(55, 934, 'gender', 'woman'),
(56, 934, 'age', '32'),
(57, 934, 'address', 'OX7 3NH, England, Oxfordshire, Ascott-under-Wychwood'),
(58, 1015, 'gender', 'man'),
(59, 1015, 'age', '27'),
(60, 929, 'gender', 'woman'),
(61, 929, 'age', '24'),
(62, 929, 'address', '668, Katra Hira Lal, Chandni Chowk'),
(63, 870, 'gender', 'woman'),
(64, 870, 'age', '28'),
(65, 870, 'address', '99 boulevard de Prague'),
(66, 3, 'gender', 'man'),
(67, 3, 'age', '36'),
(68, 3, 'address', '638153, Tamil Nadu, Modakkurichi, Elumathur'),
(69, 859, 'age', '30'),
(70, 859, 'address', '6N736 MEDINAH RD , MEDINAH, IL'),
(71, 863, 'age', '22'),
(72, 863, 'address', '19, Janata Market, Nerul, Navi Mumbai'),
(73, 864, 'address', 'No. 13 Poultry Farm Ave., South Odorkor ESt.'),
(74, 867, 'address', 'Massachusetts, West Roxbury, 3979 Smith Street'),
(75, 1022, 'education', 'Studying Computer Science in Disted'),
(76, 1022, 'experience', 'Python, Scratch (2018-till Present)');

-- --------------------------------------------------------

--
-- Table structure for table `users_occupations`
--

CREATE TABLE `users_occupations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_registration_packages`
--

CREATE TABLE `users_registration_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `instructors_count` int(11) DEFAULT NULL,
  `students_count` int(11) DEFAULT NULL,
  `courses_capacity` int(11) DEFAULT NULL,
  `courses_count` int(11) DEFAULT NULL,
  `meeting_count` int(11) DEFAULT NULL,
  `status` enum('disabled','active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_zoom_api`
--

CREATE TABLE `users_zoom_api` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `jwt_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `mobile` char(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` char(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_at` int(10) UNSIGNED DEFAULT NULL,
  `expired_at` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `mobile`, `email`, `code`, `verified_at`, `expired_at`, `created_at`) VALUES
(79, 1045, NULL, 'jaylee@aimsity.com', '12427', 1651735729, 1651735779, 1651735688),
(80, 1047, NULL, 'aimsitychannel@gmail.com', '45404', 1651819026, 1651819076, 1651818887);

-- --------------------------------------------------------

--
-- Table structure for table `webinars`
--

CREATE TABLE `webinars` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('webinar','course','text_lesson') COLLATE utf8mb4_unicode_ci NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` int(11) DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_demo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_demo_source` enum('upload','youtube','vimeo','external_link') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(10) UNSIGNED DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL,
  `support` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `partner_instructor` tinyint(1) DEFAULT '0',
  `subscribe` tinyint(1) DEFAULT '0',
  `points` int(11) DEFAULT NULL,
  `message_for_reviewer` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','pending','is_draft','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinars`
--

INSERT INTO `webinars` (`id`, `teacher_id`, `creator_id`, `category_id`, `type`, `private`, `slug`, `start_date`, `duration`, `timezone`, `thumbnail`, `image_cover`, `video_demo`, `video_demo_source`, `capacity`, `price`, `support`, `downloadable`, `partner_instructor`, `subscribe`, `points`, `message_for_reviewer`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2026, 1045, 1045, 608, 'course', 0, 'Basic-Computing-Video-lesson', NULL, 2160, 'America/New_York', '/store/1045/BC (Small).png', '/store/1045/Program (Long).png', '/store/1045/5)Project 1 Guide the Sprite.mp4', 'upload', NULL, 150, 1, 0, 0, 0, NULL, 'Please approved this', 'active', 1651738398, 1651758393, NULL),
(2027, 1045, 1045, 608, 'webinar', 0, 'Basic-Computing-Live-Lesson', 1651752000, 90, 'Asia/Kuala_Lumpur', '/store/1045/BC (Small).png', '/store/1045/Program (Long).png', '/store/1045/5)Project 1 Guide the Sprite.mp4', 'upload', 15, 150, 1, 0, 0, 0, NULL, 'Approved my live sessions', 'active', 1651754693, 1651758173, NULL),
(2028, 1048, 1047, 608, 'course', 1, 'Basic-Computing-Private-Video-lesson', NULL, 2160, 'America/New_York', '/store/1047/BC (Small).png', '/store/1047/Program (Long).png', '/store/1047/BC Video.mp4', 'upload', NULL, 150, 1, 0, 1, 0, NULL, 'approved me', 'active', 1651921158, 1651924589, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_chapters`
--

CREATE TABLE `webinar_chapters` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `type` enum('file','session','text_lesson') CHARACTER SET utf8mb4 NOT NULL DEFAULT 'file',
  `order` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 NOT NULL DEFAULT 'active',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_chapters`
--

INSERT INTO `webinar_chapters` (`id`, `user_id`, `webinar_id`, `type`, `order`, `status`, `created_at`) VALUES
(66, 1045, 2026, 'file', NULL, 'active', 1651750740),
(67, 1045, 2026, 'file', NULL, 'active', 1651751282),
(68, 1045, 2026, 'file', NULL, 'active', 1651751635),
(69, 1045, 2027, 'session', NULL, 'active', 1651755385),
(70, 1045, 2027, 'session', NULL, 'active', 1651755793),
(71, 1045, 2027, 'file', NULL, 'active', 1651755922),
(72, 1045, 2027, 'file', NULL, 'active', 1651756186),
(73, 1045, 2027, 'file', NULL, 'active', 1651756320),
(74, 1047, 2028, 'file', NULL, 'active', 1651921300),
(75, 1047, 2028, 'file', NULL, 'active', 1651922073),
(76, 1047, 2028, 'file', NULL, 'active', 1651922211);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_chapter_translations`
--

CREATE TABLE `webinar_chapter_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `webinar_chapter_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_chapter_translations`
--

INSERT INTO `webinar_chapter_translations` (`id`, `webinar_chapter_id`, `locale`, `title`) VALUES
(66, 66, 'en', '1)Installation of software'),
(67, 67, 'en', '2)What is coding?'),
(68, 68, 'en', '3)History of Coding and how is it use'),
(69, 69, 'en', '1)BC001 Sat 3.00pm-4.30pm'),
(70, 70, 'en', '2)BC002 Fri 8.00pm-9.30pm'),
(71, 71, 'en', '1)Installation of software'),
(72, 72, 'en', '2)What is coding?'),
(73, 73, 'en', '3)History of Coding and how is it use'),
(74, 74, 'en', '1)Installation of software'),
(75, 75, 'en', '2)What is coding?'),
(76, 76, 'en', '3)History of Coding and How it is use');

-- --------------------------------------------------------

--
-- Table structure for table `webinar_filter_option`
--

CREATE TABLE `webinar_filter_option` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `filter_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinar_filter_option`
--

INSERT INTO `webinar_filter_option` (`id`, `webinar_id`, `filter_option_id`) VALUES
(11739, 2027, 9153),
(11740, 2027, 9226),
(11741, 2027, 9292),
(11742, 2026, 9153),
(11743, 2026, 9226),
(11744, 2026, 9292),
(11748, 2028, 9153),
(11749, 2028, 9226),
(11750, 2028, 9292);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_partner_teacher`
--

CREATE TABLE `webinar_partner_teacher` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinar_partner_teacher`
--

INSERT INTO `webinar_partner_teacher` (`id`, `webinar_id`, `teacher_id`) VALUES
(2, 2028, 1045);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_reports`
--

CREATE TABLE `webinar_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_reviews`
--

CREATE TABLE `webinar_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `content_quality` int(10) UNSIGNED NOT NULL,
  `instructor_skills` int(10) UNSIGNED NOT NULL,
  `purchase_worth` int(10) UNSIGNED NOT NULL,
  `support_quality` int(10) UNSIGNED NOT NULL,
  `rates` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','active') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_translations`
--

CREATE TABLE `webinar_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webinar_translations`
--

INSERT INTO `webinar_translations` (`id`, `webinar_id`, `locale`, `title`, `seo_description`, `description`) VALUES
(60, 2026, 'en', 'Basic Computing (Video lesson)', 'cs, Computer Science, coding, tech, kids activities, online, programming', '<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Students will learn a comprehensive content where they will start to understand what is coding, coordinates and direction of an animation, video sensing, variables, loops etc.</span></p><p><b id=\"docs-internal-guid-d4eb5303-7fff-4606-afc8-61398a45e9f8\" style=\"font-style: normal; font-variant-caps: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-weight: normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">This class is great </span><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><b>for beginners without any programming knowledge</b></span><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"> where our trainers will give a view of the basic skills needed for coding using block-based programming. They will learn how to code and problem solving techniques throughout the course. This is a self-paced program so the students can schedule his/her time to learn.</span></p><p><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);\"><br></span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space: pre-wrap;\">Highlights on what they will learn.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>Start to understand what coding is.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>The coordinates and direction of an animation.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>The meaning of loops and how to use them.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>Making the animations communicate with each other.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>The usage of variables and operators to compare data.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>Initiate action using video sensing function.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>Make a list and your own block.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>Understanding how a program flows and learning to make the flowchart.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>At least 17 different activities and projects to keep your child engaged during the program.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Montserrat; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>Certificate will be issued when the student completes the program.</span></p><p><u><span id=\"docs-internal-guid-49091d5e-7fff-c9e8-a8a8-6e9a2ff82cec\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);\"></span><br class=\"Apple-interchange-newline\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);\"><span style=\"font-family: Montserrat;\">Target age</span></u></p><p><span style=\"font-family: Montserrat;\">Age 10 and above.</span></p>'),
(61, 2027, 'en', 'Basic Computing(Live Lesson)', 'computer science, coding, kids coding, programming, tech, kids activities, scratch, basic computing', '<p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\">Students will learn a comprehensive content where they will start to understand what is coding, coordinates and direction of an animation, video sensing, variables, loops etc.</span></p><p><span id=\"docs-internal-guid-d4eb5303-7fff-4606-afc8-61398a45e9f8\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);\"><br></span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\">This class is great </span><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\">for beginners without any programming knowledge</span><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\"> where our trainers will give a view of the basic skills needed for coding using block-based programming. They will learn how to code and problem solving techniques throughout the course. This is a live lesson. Students will need to make sure they are available for 6-8 months for the schedule they pick.</span></p><p><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);\"><br></span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space: pre-wrap;\">Highlights on what they will learn.</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\">&gt;Start to understand what coding is.</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\">&gt;The coordinates and direction of an animation.</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\">&gt;The meaning of loops and how to use them.</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\">&gt;Making the animations communicate with each other.</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\">&gt;The usage of variables and operators to compare data.</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\">&gt;Initiate action using video sensing function.</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\">&gt;Make a list and your own block.</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\">&gt;Understanding how a program flows and learning to make the flowchart.</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\">&gt;At least 17 different activities and projects to keep your child engaged during the program.</span></p><p dir=\"ltr\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38; text-align: justify;\"><span style=\"font-size: 12pt; color: rgb(0, 0, 0); font-variant-ligatures: normal; font-variant-east-asian: normal; font-variant-position: normal; vertical-align: baseline; white-space: pre-wrap;\">&gt;Certificate will be issued when the student completes the program.</span></p><p><u><span id=\"docs-internal-guid-49091d5e-7fff-c9e8-a8a8-6e9a2ff82cec\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);\"></span><br class=\"Apple-interchange-newline\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);\"><font color=\"#000000\">Target age</font></u></p><p><font color=\"#000000\">Age 10 and above.</font></p>'),
(62, 2028, 'en', 'Basic Computing (Private-Video lesson)', NULL, '<p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Students will learn a comprehensive content where they will start to understand what is coding, coordinates and direction of an animation, video sensing, variables, loops etc.</span></p><p><b id=\"docs-internal-guid-b0a25709-7fff-b6ce-41fd-bdf30aaf38f8\" style=\"font-style: normal; font-variant-caps: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoration: none; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-weight: normal;\"><br></b></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">This class is great for beginners without any programming knowledge where our trainers will give a view of the basic skills needed for coding using block-based programming. They will learn how to code and problem solving techniques throughout the course. This is a self-paced course so the student can schedule his/her time to learn.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><br></span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space: pre-wrap;\">Highlights on what they will learn.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>Start to understand what coding is.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>The coordinates and direction of an animation.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>The meaning of loops and how to use them.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>Making the animations communicate with each other.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>The usage of variables and operators to compare data.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>Initiate action using video sensing function.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>Make a list and your own block.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>Understanding how a program flows and learning to make the flowchart.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>At least 17 different activities and projects to keep your child engaged during the program.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">>Certificate will be issued when the student completes the program.</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 12pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><span id=\"docs-internal-guid-0fe6404b-7fff-66bb-9336-a5ced0c63baf\" style=\"text-align: start; white-space: normal;\"></span><br class=\"Apple-interchange-newline\" style=\"text-align: start; white-space: normal;\"></span></p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounting`
--
ALTER TABLE `accounting`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `webinar_id` (`webinar_id`) USING BTREE,
  ADD KEY `meeting_time_id` (`meeting_time_id`) USING BTREE,
  ADD KEY `subscribe_id` (`subscribe_id`) USING BTREE,
  ADD KEY `promotion_id` (`promotion_id`) USING BTREE;

--
-- Indexes for table `advertising_banners`
--
ALTER TABLE `advertising_banners`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `advertising_banners_translations`
--
ALTER TABLE `advertising_banners_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertising_banners_translations_advertising_banner_id_foreign` (`advertising_banner_id`),
  ADD KEY `advertising_banners_translations_locale_index` (`locale`);

--
-- Indexes for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `affiliates_affiliate_user_id_foreign` (`affiliate_user_id`),
  ADD KEY `affiliates_referred_user_id_foreign` (`referred_user_id`);

--
-- Indexes for table `affiliates_codes`
--
ALTER TABLE `affiliates_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `affiliates_codes_code_unique` (`code`),
  ADD KEY `affiliates_codes_user_id_foreign` (`user_id`);

--
-- Indexes for table `agora_history`
--
ALTER TABLE `agora_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agora_history_session_id_foreign` (`session_id`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `badges_type_index` (`type`) USING BTREE;

--
-- Indexes for table `badge_translations`
--
ALTER TABLE `badge_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `badge_translations_badge_id_foreign` (`badge_id`),
  ADD KEY `badge_translations_locale_index` (`locale`);

--
-- Indexes for table `become_instructors`
--
ALTER TABLE `become_instructors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `become_instructors_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `blog_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `slug` (`slug`) USING BTREE;

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_translations_blog_id_locale_unique` (`blog_id`,`locale`),
  ADD KEY `blog_translations_locale_index` (`locale`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `cart_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `cart_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `cart_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `cart_reserve_meeting_id_foreign` (`reserve_meeting_id`) USING BTREE,
  ADD KEY `cart_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  ADD KEY `cart_promotion_id_foreign` (`promotion_id`) USING BTREE,
  ADD KEY `cart_special_offer_id_foreign` (`special_offer_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `parent_id` (`parent_id`) USING BTREE;

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_translations_category_id_foreign` (`category_id`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `certificates_quiz_id_foreign` (`quiz_id`) USING BTREE,
  ADD KEY `certificates_quiz_result_id_foreign` (`quiz_result_id`) USING BTREE,
  ADD KEY `certificates_student_id_foreign` (`student_id`) USING BTREE;

--
-- Indexes for table `certificates_templates`
--
ALTER TABLE `certificates_templates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `certificate_template_translations`
--
ALTER TABLE `certificate_template_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_template_id` (`certificate_template_id`),
  ADD KEY `certificate_template_translations_locale_index` (`locale`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `comments_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `comments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `comments_review_id_foreign` (`review_id`) USING BTREE,
  ADD KEY `comments_reply_id_foreign` (`reply_id`) USING BTREE;

--
-- Indexes for table `comments_reports`
--
ALTER TABLE `comments_reports`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `comments_reports_comment_id_foreign` (`comment_id`) USING BTREE;

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `course_learning`
--
ALTER TABLE `course_learning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_learning_user_id_foreign` (`user_id`),
  ADD KEY `course_learning_text_lesson_id_foreign` (`text_lesson_id`),
  ADD KEY `course_learning_file_id_foreign` (`file_id`),
  ADD KEY `course_learning_session_id_foreign` (`session_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `discounts_code_unique` (`code`),
  ADD KEY `discounts_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `discount_categories`
--
ALTER TABLE `discount_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_categories_discount_id_foreign` (`discount_id`),
  ADD KEY `discount_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `discount_courses`
--
ALTER TABLE `discount_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_courses_discount_id_foreign` (`discount_id`),
  ADD KEY `discount_courses_course_id_foreign` (`course_id`);

--
-- Indexes for table `discount_groups`
--
ALTER TABLE `discount_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_groups_discount_id_foreign` (`discount_id`),
  ADD KEY `discount_groups_group_id_foreign` (`group_id`);

--
-- Indexes for table `discount_users`
--
ALTER TABLE `discount_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `discount_users_discount_id_foreign` (`discount_id`) USING BTREE,
  ADD KEY `discount_users_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `faqs_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `faqs_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `faq_translations`
--
ALTER TABLE `faq_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faq_translations_faq_id_foreign` (`faq_id`),
  ADD KEY `faq_translations_locale_index` (`locale`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `favorites_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `favorites_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `feature_webinars`
--
ALTER TABLE `feature_webinars`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `feature_webinars_webinar_id_index` (`webinar_id`) USING BTREE;

--
-- Indexes for table `feature_webinar_translations`
--
ALTER TABLE `feature_webinar_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_webinar_translations_feature_webinar_id_foreign` (`feature_webinar_id`),
  ADD KEY `feature_webinar_translations_locale_index` (`locale`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `files_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `files_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `files_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `file_translations`
--
ALTER TABLE `file_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_translations_file_id_foreign` (`file_id`),
  ADD KEY `file_translations_locale_index` (`locale`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `filters_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `filter_options`
--
ALTER TABLE `filter_options`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `filter_options_filter_id_foreign` (`filter_id`) USING BTREE;

--
-- Indexes for table `filter_option_translations`
--
ALTER TABLE `filter_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_option_translations_filter_option_id_foreign` (`filter_option_id`),
  ADD KEY `filter_option_translations_locale_index` (`locale`);

--
-- Indexes for table `filter_translations`
--
ALTER TABLE `filter_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_translations_filter_id_foreign` (`filter_id`),
  ADD KEY `filter_translations_locale_index` (`locale`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `follows_follower_foreign` (`follower`) USING BTREE,
  ADD KEY `follows_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `groups_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `groups_registration_packages`
--
ALTER TABLE `groups_registration_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_registration_packages_group_id_foreign` (`group_id`);

--
-- Indexes for table `group_users`
--
ALTER TABLE `group_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `group_users_group_id_foreign` (`group_id`) USING BTREE,
  ADD KEY `group_users_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `meetings_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `meeting_times`
--
ALTER TABLE `meeting_times`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `meeting_times_meeting_id_foreign` (`meeting_id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters_history`
--
ALTER TABLE `newsletters_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticeboards_organ_id_foreign` (`organ_id`),
  ADD KEY `noticeboards_user_id_foreign` (`user_id`);

--
-- Indexes for table `noticeboards_status`
--
ALTER TABLE `noticeboards_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticeboards_status_noticeboard_id_foreign` (`noticeboard_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `notifications_group_id_foreign` (`group_id`) USING BTREE;

--
-- Indexes for table `notifications_status`
--
ALTER TABLE `notifications_status`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_status_notification_id_foreign` (`notification_id`) USING BTREE;

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `offline_payments_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `orders_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `order_items_order_id_foreign` (`order_id`) USING BTREE,
  ADD KEY `order_items_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `order_items_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `order_items_reserve_meeting_id_foreign` (`reserve_meeting_id`) USING BTREE,
  ADD KEY `order_items_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  ADD KEY `order_items_promotion_id_foreign` (`promotion_id`) USING BTREE;

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_link_unique` (`link`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_translations_page_id_foreign` (`page_id`),
  ADD KEY `page_translations_locale_index` (`locale`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `payment_channels`
--
ALTER TABLE `payment_channels`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `payouts_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `payu_transactions`
--
ALTER TABLE `payu_transactions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `payu_transactions_transaction_id_unique` (`transaction_id`) USING BTREE,
  ADD KEY `payu_transactions_status_index` (`status`) USING BTREE,
  ADD KEY `payu_transactions_verified_at_index` (`verified_at`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `permissions_role_id_index` (`role_id`) USING BTREE,
  ADD KEY `permissions_section_id_index` (`section_id`) USING BTREE;

--
-- Indexes for table `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `prerequisites_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `promotion_translations`
--
ALTER TABLE `promotion_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotion_translations_promotion_id_foreign` (`promotion_id`),
  ADD KEY `promotion_translations_locale_index` (`locale`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `purchases_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `purchases_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `quizzes_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `quizzes_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_questions_quiz_id_foreign` (`quiz_id`) USING BTREE,
  ADD KEY `quizzes_questions_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_questions_answers_question_id_foreign` (`question_id`) USING BTREE,
  ADD KEY `quizzes_questions_answers_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `quizzes_questions_answer_translations`
--
ALTER TABLE `quizzes_questions_answer_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_questions_answer_id` (`quizzes_questions_answer_id`),
  ADD KEY `quizzes_questions_answer_translations_locale_index` (`locale`);

--
-- Indexes for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_results_quiz_id_foreign` (`quiz_id`) USING BTREE,
  ADD KEY `quizzes_results_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `quiz_question_translations`
--
ALTER TABLE `quiz_question_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_question_translations_quiz_question_id_foreign` (`quizzes_question_id`),
  ADD KEY `quiz_question_translations_locale_index` (`locale`);

--
-- Indexes for table `quiz_translations`
--
ALTER TABLE `quiz_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_translations_quiz_id_foreign` (`quiz_id`),
  ADD KEY `quiz_translations_locale_index` (`locale`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `rating_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `rating_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `rating_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_country_id_foreign` (`country_id`),
  ADD KEY `regions_province_id_foreign` (`province_id`),
  ADD KEY `regions_city_id_foreign` (`city_id`);

--
-- Indexes for table `registration_packages`
--
ALTER TABLE `registration_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_packages_role_index` (`role`);

--
-- Indexes for table `registration_packages_translations`
--
ALTER TABLE `registration_packages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_package` (`registration_package_id`),
  ADD KEY `registration_packages_translations_locale_index` (`locale`);

--
-- Indexes for table `reserve_meetings`
--
ALTER TABLE `reserve_meetings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `reserve_meetings_meeting_time_id_foreign` (`meeting_time_id`) USING BTREE,
  ADD KEY `reserve_meetings_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `reserve_meetings_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards_accounting`
--
ALTER TABLE `rewards_accounting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rewards_accounting_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sales_order_id_foreign` (`order_id`) USING BTREE,
  ADD KEY `sales_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `sales_meeting_id_foreign` (`meeting_id`) USING BTREE,
  ADD KEY `sales_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `sales_buyer_id_foreign` (`buyer_id`) USING BTREE,
  ADD KEY `sales_seller_id_foreign` (`seller_id`) USING BTREE,
  ADD KEY `sales_promotion_id_foreign` (`promotion_id`) USING BTREE;

--
-- Indexes for table `sales_log`
--
ALTER TABLE `sales_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_status_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sessions_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `sessions_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `sessions_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `session_reminds`
--
ALTER TABLE `session_reminds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_reminds_session_id_foreign` (`session_id`),
  ADD KEY `session_reminds_user_id_foreign` (`user_id`);

--
-- Indexes for table `session_translations`
--
ALTER TABLE `session_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_translations_session_id_foreign` (`session_id`),
  ADD KEY `session_translations_locale_index` (`locale`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_translations_setting_id_foreign` (`setting_id`),
  ADD KEY `setting_translations_locale_index` (`locale`);

--
-- Indexes for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `special_offers_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `special_offers_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `subscribe_translations`
--
ALTER TABLE `subscribe_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribe_translations_subscribe_id_foreign` (`subscribe_id`),
  ADD KEY `subscribe_translations_locale_index` (`locale`);

--
-- Indexes for table `subscribe_uses`
--
ALTER TABLE `subscribe_uses`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `subscribe_uses_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `subscribe_uses_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `subscribe_uses_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  ADD KEY `subscribe_uses_sale_id_foreign` (`sale_id`) USING BTREE;

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `supports_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `supports_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `supports_department_id_foreign` (`department_id`) USING BTREE;

--
-- Indexes for table `support_conversations`
--
ALTER TABLE `support_conversations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `support_conversations_support_id_foreign` (`support_id`) USING BTREE,
  ADD KEY `support_conversations_sender_id_foreign` (`sender_id`) USING BTREE,
  ADD KEY `support_conversations_supporter_id_foreign` (`supporter_id`) USING BTREE;

--
-- Indexes for table `support_departments`
--
ALTER TABLE `support_departments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `support_department_translations`
--
ALTER TABLE `support_department_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_department_id` (`support_department_id`),
  ADD KEY `support_department_translations_locale_index` (`locale`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tags_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonial_translations_testimonial_id_foreign` (`testimonial_id`),
  ADD KEY `testimonial_translations_locale_index` (`locale`);

--
-- Indexes for table `text_lessons`
--
ALTER TABLE `text_lessons`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `text_lessons_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `text_lessons_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `text_lessons_chapter_id_foreign` (`chapter_id`);

--
-- Indexes for table `text_lessons_attachments`
--
ALTER TABLE `text_lessons_attachments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `text_lessons_attachments_text_lesson_id_foreign` (`text_lesson_id`) USING BTREE,
  ADD KEY `text_lessons_attachments_file_id_foreign` (`file_id`) USING BTREE;

--
-- Indexes for table `text_lesson_translations`
--
ALTER TABLE `text_lesson_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `text_lesson_id` (`text_lesson_id`),
  ADD KEY `text_lesson_translations_locale_index` (`locale`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tickets_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `tickets_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `ticket_translations`
--
ALTER TABLE `ticket_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_translations_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_translations_locale_index` (`locale`);

--
-- Indexes for table `ticket_users`
--
ALTER TABLE `ticket_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ticket_users_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `ticket_users_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `trend_categories`
--
ALTER TABLE `trend_categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `trend_categories_category_id_index` (`category_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`) USING BTREE,
  ADD KEY `users_country_id_foreign` (`country_id`) USING BTREE,
  ADD KEY `users_province_id_foreign` (`province_id`) USING BTREE,
  ADD KEY `users_city_id_foreign` (`city_id`) USING BTREE,
  ADD KEY `users_district_id_foreign` (`district_id`) USING BTREE;

--
-- Indexes for table `users_badges`
--
ALTER TABLE `users_badges`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `users_badges_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `users_badges_badge_id_foreign` (`badge_id`) USING BTREE;

--
-- Indexes for table `users_metas`
--
ALTER TABLE `users_metas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_occupations`
--
ALTER TABLE `users_occupations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `users_occupations_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `users_occupations_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `users_registration_packages`
--
ALTER TABLE `users_registration_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_registration_packages_user_id_foreign` (`user_id`);

--
-- Indexes for table `users_zoom_api`
--
ALTER TABLE `users_zoom_api`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_zoom_api_user_id_foreign` (`user_id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `verifications_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `webinars`
--
ALTER TABLE `webinars`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `webinars_slug_unique` (`slug`) USING BTREE,
  ADD KEY `webinars_teacher_id_foreign` (`teacher_id`) USING BTREE,
  ADD KEY `webinars_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `webinars_slug_index` (`slug`) USING BTREE,
  ADD KEY `webinars_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `webinar_chapters`
--
ALTER TABLE `webinar_chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_chapters_user_id_foreign` (`user_id`),
  ADD KEY `webinar_chapters_webinar_id_foreign` (`webinar_id`);

--
-- Indexes for table `webinar_chapter_translations`
--
ALTER TABLE `webinar_chapter_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_chapter_id` (`webinar_chapter_id`),
  ADD KEY `webinar_chapter_translations_locale_index` (`locale`);

--
-- Indexes for table `webinar_filter_option`
--
ALTER TABLE `webinar_filter_option`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_filter_option_filter_option_id_foreign` (`filter_option_id`) USING BTREE,
  ADD KEY `webinar_filter_option_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `webinar_partner_teacher`
--
ALTER TABLE `webinar_partner_teacher`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_partner_teacher_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `webinar_partner_teacher_teacher_id_foreign` (`teacher_id`) USING BTREE;

--
-- Indexes for table `webinar_reports`
--
ALTER TABLE `webinar_reports`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_reports_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `webinar_reviews`
--
ALTER TABLE `webinar_reviews`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_reviews_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `webinar_reviews_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `webinar_translations`
--
ALTER TABLE `webinar_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webinar_translations_webinar_id_foreign` (`webinar_id`),
  ADD KEY `webinar_translations_locale_index` (`locale`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounting`
--
ALTER TABLE `accounting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;

--
-- AUTO_INCREMENT for table `advertising_banners`
--
ALTER TABLE `advertising_banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `advertising_banners_translations`
--
ALTER TABLE `advertising_banners_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `affiliates_codes`
--
ALTER TABLE `affiliates_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `agora_history`
--
ALTER TABLE `agora_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `badge_translations`
--
ALTER TABLE `badge_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `become_instructors`
--
ALTER TABLE `become_instructors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=612;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificates_templates`
--
ALTER TABLE `certificates_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificate_template_translations`
--
ALTER TABLE `certificate_template_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments_reports`
--
ALTER TABLE `comments_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_learning`
--
ALTER TABLE `course_learning`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `discount_categories`
--
ALTER TABLE `discount_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_courses`
--
ALTER TABLE `discount_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_groups`
--
ALTER TABLE `discount_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_users`
--
ALTER TABLE `discount_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `faq_translations`
--
ALTER TABLE `faq_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feature_webinars`
--
ALTER TABLE `feature_webinars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_webinar_translations`
--
ALTER TABLE `feature_webinar_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `file_translations`
--
ALTER TABLE `file_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1848;

--
-- AUTO_INCREMENT for table `filter_options`
--
ALTER TABLE `filter_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9293;

--
-- AUTO_INCREMENT for table `filter_option_translations`
--
ALTER TABLE `filter_option_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `filter_translations`
--
ALTER TABLE `filter_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groups_registration_packages`
--
ALTER TABLE `groups_registration_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_users`
--
ALTER TABLE `group_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `meeting_times`
--
ALTER TABLE `meeting_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `newsletters_history`
--
ALTER TABLE `newsletters_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `noticeboards`
--
ALTER TABLE `noticeboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `noticeboards_status`
--
ALTER TABLE `noticeboards_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2026;

--
-- AUTO_INCREMENT for table `notifications_status`
--
ALTER TABLE `notifications_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_channels`
--
ALTER TABLE `payment_channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payu_transactions`
--
ALTER TABLE `payu_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9891;

--
-- AUTO_INCREMENT for table `prerequisites`
--
ALTER TABLE `prerequisites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotion_translations`
--
ALTER TABLE `promotion_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `quizzes_questions_answer_translations`
--
ALTER TABLE `quizzes_questions_answer_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `quiz_question_translations`
--
ALTER TABLE `quiz_question_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `quiz_translations`
--
ALTER TABLE `quiz_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `registration_packages`
--
ALTER TABLE `registration_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration_packages_translations`
--
ALTER TABLE `registration_packages_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reserve_meetings`
--
ALTER TABLE `reserve_meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rewards_accounting`
--
ALTER TABLE `rewards_accounting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `sales_log`
--
ALTER TABLE `sales_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1782;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `session_reminds`
--
ALTER TABLE `session_reminds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session_translations`
--
ALTER TABLE `session_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `special_offers`
--
ALTER TABLE `special_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribe_translations`
--
ALTER TABLE `subscribe_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscribe_uses`
--
ALTER TABLE `subscribe_uses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `support_conversations`
--
ALTER TABLE `support_conversations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `support_departments`
--
ALTER TABLE `support_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `support_department_translations`
--
ALTER TABLE `support_department_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6621;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `text_lessons`
--
ALTER TABLE `text_lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `text_lessons_attachments`
--
ALTER TABLE `text_lessons_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `text_lesson_translations`
--
ALTER TABLE `text_lesson_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_translations`
--
ALTER TABLE `ticket_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_users`
--
ALTER TABLE `ticket_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trend_categories`
--
ALTER TABLE `trend_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1049;

--
-- AUTO_INCREMENT for table `users_badges`
--
ALTER TABLE `users_badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_metas`
--
ALTER TABLE `users_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users_occupations`
--
ALTER TABLE `users_occupations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1076;

--
-- AUTO_INCREMENT for table `users_registration_packages`
--
ALTER TABLE `users_registration_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_zoom_api`
--
ALTER TABLE `users_zoom_api`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `webinars`
--
ALTER TABLE `webinars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2029;

--
-- AUTO_INCREMENT for table `webinar_chapters`
--
ALTER TABLE `webinar_chapters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `webinar_chapter_translations`
--
ALTER TABLE `webinar_chapter_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `webinar_filter_option`
--
ALTER TABLE `webinar_filter_option`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11751;

--
-- AUTO_INCREMENT for table `webinar_partner_teacher`
--
ALTER TABLE `webinar_partner_teacher`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `webinar_reports`
--
ALTER TABLE `webinar_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_reviews`
--
ALTER TABLE `webinar_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webinar_translations`
--
ALTER TABLE `webinar_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertising_banners_translations`
--
ALTER TABLE `advertising_banners_translations`
  ADD CONSTRAINT `advertising_banners_translations_advertising_banner_id_foreign` FOREIGN KEY (`advertising_banner_id`) REFERENCES `advertising_banners` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD CONSTRAINT `affiliates_affiliate_user_id_foreign` FOREIGN KEY (`affiliate_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `affiliates_referred_user_id_foreign` FOREIGN KEY (`referred_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `affiliates_codes`
--
ALTER TABLE `affiliates_codes`
  ADD CONSTRAINT `affiliates_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `agora_history`
--
ALTER TABLE `agora_history`
  ADD CONSTRAINT `agora_history_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `badge_translations`
--
ALTER TABLE `badge_translations`
  ADD CONSTRAINT `badge_translations_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `become_instructors`
--
ALTER TABLE `become_instructors`
  ADD CONSTRAINT `become_instructors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD CONSTRAINT `blog_translations_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_reserve_meeting_id_foreign` FOREIGN KEY (`reserve_meeting_id`) REFERENCES `reserve_meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_special_offer_id_foreign` FOREIGN KEY (`special_offer_id`) REFERENCES `special_offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_quiz_result_id_foreign` FOREIGN KEY (`quiz_result_id`) REFERENCES `quizzes_results` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificate_template_translations`
--
ALTER TABLE `certificate_template_translations`
  ADD CONSTRAINT `certificate_template_id` FOREIGN KEY (`certificate_template_id`) REFERENCES `certificates_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_reply_id_foreign` FOREIGN KEY (`reply_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `webinar_reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments_reports`
--
ALTER TABLE `comments_reports`
  ADD CONSTRAINT `comments_reports_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_learning`
--
ALTER TABLE `course_learning`
  ADD CONSTRAINT `course_learning_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_text_lesson_id_foreign` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_categories`
--
ALTER TABLE `discount_categories`
  ADD CONSTRAINT `discount_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_categories_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_courses`
--
ALTER TABLE `discount_courses`
  ADD CONSTRAINT `discount_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_courses_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_groups`
--
ALTER TABLE `discount_groups`
  ADD CONSTRAINT `discount_groups_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_users`
--
ALTER TABLE `discount_users`
  ADD CONSTRAINT `discount_users_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faqs_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faq_translations`
--
ALTER TABLE `faq_translations`
  ADD CONSTRAINT `faq_translations_faq_id_foreign` FOREIGN KEY (`faq_id`) REFERENCES `faqs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feature_webinars`
--
ALTER TABLE `feature_webinars`
  ADD CONSTRAINT `feature_webinars_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feature_webinar_translations`
--
ALTER TABLE `feature_webinar_translations`
  ADD CONSTRAINT `feature_webinar_translations_feature_webinar_id_foreign` FOREIGN KEY (`feature_webinar_id`) REFERENCES `feature_webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `file_translations`
--
ALTER TABLE `file_translations`
  ADD CONSTRAINT `file_translations_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filters`
--
ALTER TABLE `filters`
  ADD CONSTRAINT `filters_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_options`
--
ALTER TABLE `filter_options`
  ADD CONSTRAINT `filter_options_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_option_translations`
--
ALTER TABLE `filter_option_translations`
  ADD CONSTRAINT `filter_option_translations_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_translations`
--
ALTER TABLE `filter_translations`
  ADD CONSTRAINT `filter_translations_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_follower_foreign` FOREIGN KEY (`follower`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups_registration_packages`
--
ALTER TABLE `groups_registration_packages`
  ADD CONSTRAINT `groups_registration_packages_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_users`
--
ALTER TABLE `group_users`
  ADD CONSTRAINT `group_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meeting_times`
--
ALTER TABLE `meeting_times`
  ADD CONSTRAINT `meeting_times_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD CONSTRAINT `noticeboards_organ_id_foreign` FOREIGN KEY (`organ_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `noticeboards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `noticeboards_status`
--
ALTER TABLE `noticeboards_status`
  ADD CONSTRAINT `noticeboards_status_noticeboard_id_foreign` FOREIGN KEY (`noticeboard_id`) REFERENCES `noticeboards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications_status`
--
ALTER TABLE `notifications_status`
  ADD CONSTRAINT `notifications_status_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD CONSTRAINT `offline_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payouts`
--
ALTER TABLE `payouts`
  ADD CONSTRAINT `payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permissions_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

--
-- Constraints for table `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD CONSTRAINT `prerequisites_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotion_translations`
--
ALTER TABLE `promotion_translations`
  ADD CONSTRAINT `promotion_translations_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchases_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  ADD CONSTRAINT `quizzes_questions_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  ADD CONSTRAINT `quizzes_questions_answers_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_questions_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `quizzes_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_questions_answer_translations`
--
ALTER TABLE `quizzes_questions_answer_translations`
  ADD CONSTRAINT `quizzes_questions_answer_id` FOREIGN KEY (`quizzes_questions_answer_id`) REFERENCES `quizzes_questions_answers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  ADD CONSTRAINT `quizzes_results_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_question_translations`
--
ALTER TABLE `quiz_question_translations`
  ADD CONSTRAINT `quiz_question_translations_quiz_question_id_foreign` FOREIGN KEY (`quizzes_question_id`) REFERENCES `quizzes_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_translations`
--
ALTER TABLE `quiz_translations`
  ADD CONSTRAINT `quiz_translations_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `regions_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `regions_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `registration_packages_translations`
--
ALTER TABLE `registration_packages_translations`
  ADD CONSTRAINT `registration_package` FOREIGN KEY (`registration_package_id`) REFERENCES `registration_packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reserve_meetings`
--
ALTER TABLE `reserve_meetings`
  ADD CONSTRAINT `reserve_meetings_meeting_time_id_foreign` FOREIGN KEY (`meeting_time_id`) REFERENCES `meeting_times` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reserve_meetings_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reserve_meetings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rewards_accounting`
--
ALTER TABLE `rewards_accounting`
  ADD CONSTRAINT `rewards_accounting_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_log`
--
ALTER TABLE `sales_log`
  ADD CONSTRAINT `sales_status_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sessions_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sessions_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `session_reminds`
--
ALTER TABLE `session_reminds`
  ADD CONSTRAINT `session_reminds_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `session_reminds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `session_translations`
--
ALTER TABLE `session_translations`
  ADD CONSTRAINT `session_translations_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD CONSTRAINT `special_offers_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `special_offers_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribe_translations`
--
ALTER TABLE `subscribe_translations`
  ADD CONSTRAINT `subscribe_translations_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribe_uses`
--
ALTER TABLE `subscribe_uses`
  ADD CONSTRAINT `subscribe_uses_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_uses_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_uses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_uses_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supports`
--
ALTER TABLE `supports`
  ADD CONSTRAINT `supports_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `support_departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supports_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_conversations`
--
ALTER TABLE `support_conversations`
  ADD CONSTRAINT `support_conversations_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `support_conversations_support_id_foreign` FOREIGN KEY (`support_id`) REFERENCES `supports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_department_translations`
--
ALTER TABLE `support_department_translations`
  ADD CONSTRAINT `support_department_id` FOREIGN KEY (`support_department_id`) REFERENCES `support_departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonial_translations`
--
ALTER TABLE `testimonial_translations`
  ADD CONSTRAINT `testimonial_translations_testimonial_id_foreign` FOREIGN KEY (`testimonial_id`) REFERENCES `testimonials` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `text_lessons`
--
ALTER TABLE `text_lessons`
  ADD CONSTRAINT `text_lessons_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `text_lessons_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `text_lessons_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `text_lessons_attachments`
--
ALTER TABLE `text_lessons_attachments`
  ADD CONSTRAINT `text_lessons_attachments_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `text_lessons_attachments_text_lesson_id_foreign` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `text_lesson_translations`
--
ALTER TABLE `text_lesson_translations`
  ADD CONSTRAINT `text_lesson_id` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_translations`
--
ALTER TABLE `ticket_translations`
  ADD CONSTRAINT `ticket_translations_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_users`
--
ALTER TABLE `ticket_users`
  ADD CONSTRAINT `ticket_users_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trend_categories`
--
ALTER TABLE `trend_categories`
  ADD CONSTRAINT `trend_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `regions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `users_badges`
--
ALTER TABLE `users_badges`
  ADD CONSTRAINT `users_badges_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_badges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_occupations`
--
ALTER TABLE `users_occupations`
  ADD CONSTRAINT `users_occupations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_occupations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_registration_packages`
--
ALTER TABLE `users_registration_packages`
  ADD CONSTRAINT `users_registration_packages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_zoom_api`
--
ALTER TABLE `users_zoom_api`
  ADD CONSTRAINT `users_zoom_api_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verifications`
--
ALTER TABLE `verifications`
  ADD CONSTRAINT `verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinars`
--
ALTER TABLE `webinars`
  ADD CONSTRAINT `webinars_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinars_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinars_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_chapters`
--
ALTER TABLE `webinar_chapters`
  ADD CONSTRAINT `webinar_chapters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_chapters_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_chapter_translations`
--
ALTER TABLE `webinar_chapter_translations`
  ADD CONSTRAINT `webinar_chapter_id` FOREIGN KEY (`webinar_chapter_id`) REFERENCES `webinar_chapters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_filter_option`
--
ALTER TABLE `webinar_filter_option`
  ADD CONSTRAINT `webinar_filter_option_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_filter_option_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_partner_teacher`
--
ALTER TABLE `webinar_partner_teacher`
  ADD CONSTRAINT `webinar_partner_teacher_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_partner_teacher_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_reports`
--
ALTER TABLE `webinar_reports`
  ADD CONSTRAINT `webinar_reports_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_reviews`
--
ALTER TABLE `webinar_reviews`
  ADD CONSTRAINT `webinar_reviews_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_reviews_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_translations`
--
ALTER TABLE `webinar_translations`
  ADD CONSTRAINT `webinar_translations_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
