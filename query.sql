
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `5d` (
  `id` int(11) NOT NULL,
  `period` bigint(20) DEFAULT 0,
  `result` varchar(5) NOT NULL DEFAULT '0',
  `game` int(11) NOT NULL DEFAULT 1,
  `status` int(11) DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



INSERT INTO `5d` (`id`, `period`, `result`, `game`, `status`, `time`) VALUES
(377057, 2022070114923, '98323', 10, 1, '1730906400789'),
(377058, 2022070119866, '19942', 5, 1, '1730906400813'),
(377059, 2022070159572, '61441', 1, 1, '1730906400817'),
(377060, 2022070126455, '57668', 3, 1, '1730906460192'),
(377061, 2022070159573, '83645', 1, 1, '1730906460191'),
(377062, 2022070159574, '80231', 1, 1, '1730906520595'),
(377063, 2022070159575, '81855', 1, 1, '1730906580991'),
(377064, 2022070126456, '56399', 3, 1, '1730906640399'),
(377065, 2022070159576, '93371', 1, 1, '1730906640401'),
(377066, 2022070159577, '31343', 1, 1, '1730906700925'),
(377067, 2022070119867, '71405', 5, 1, '1730906700929'),
(377068, 2022070159578, '16577', 1, 1, '1730906760417'),
(377069, 2022070159579, '69215', 1, 1, '1730906820855'),
(377070, 2022070126457, '68686', 3, 1, '1730906820883'),
(377071, 2022070159580, '28324', 1, 1, '1730906880322'),
(377072, 2022070159581, '50739', 1, 1, '1730906940802'),
(377073, 2022070159582, '55814', 1, 1, '1730907000279'),
(377074, 2022070126458, '48331', 3, 1, '1730907000286'),
(377075, 2022070119868, '37442', 5, 1, '1730907000288'),
(377076, 2022070114924, '13333', 10, 1, '1730907000290'),
(377077, 2022070159583, '08857', 1, 1, '1730907060708'),
(377078, 2022070159584, '85007', 1, 1, '1730907120158'),
(377079, 2022070159585, '69032', 1, 1, '1730907180578'),
(377080, 2022070126459, '33161', 3, 1, '1730907180580'),
(377081, 2022070159586, '23123', 1, 1, '1730907240035'),
(377082, 2022070119869, '98303', 5, 1, '1730907300530'),
(377083, 2022070159587, '54047', 1, 1, '1730907300536'),
(377084, 2022070159588, '38207', 1, 1, '1730907360093'),
(377085, 2022070126460, '99190', 3, 1, '1730907360094'),
(377086, 2022070159589, '25736', 1, 1, '1730907420659'),
(377087, 2022070159590, '30353', 1, 1, '1730907480318'),
(377088, 2022070159591, '72486', 1, 1, '1730907540920'),
(377089, 2022070126461, '0', 3, 0, '1730907540928'),
(377090, 2022070159592, '84800', 1, 1, '1730907600438'),
(377091, 2022070119870, '0', 5, 0, '1730907600442'),
(377092, 2022070114925, '0', 10, 0, '1730907600445'),
(377093, 2022070159593, '0', 1, 0, '1730907660938');


CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `wingo1` text NOT NULL DEFAULT '-1',
  `wingo3` text NOT NULL DEFAULT '-1',
  `wingo5` text NOT NULL DEFAULT '-1',
  `wingo10` text NOT NULL DEFAULT '-1',
  `k5d` text NOT NULL DEFAULT '\'-1\'',
  `k5d3` text NOT NULL DEFAULT '\'-1\'',
  `k5d5` text DEFAULT '\'-1\'',
  `k5d10` text NOT NULL DEFAULT '\'-1\'',
  `k3d` text NOT NULL DEFAULT '\'-1\'',
  `k3d3` text NOT NULL DEFAULT '\'-1\'',
  `k3d5` text NOT NULL DEFAULT '\'-1\'',
  `k3d10` text NOT NULL DEFAULT '\'-1\'',
  `win_rate` int(11) NOT NULL DEFAULT 0,
  `telegram` varchar(100) NOT NULL DEFAULT '0',
  `cskh` varchar(100) NOT NULL DEFAULT '0',
  `app` text DEFAULT '0',
  `recharge_bonus` int(11) DEFAULT NULL,
  `recharge_bonus_2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `admin` (`id`, `wingo1`, `wingo3`, `wingo5`, `wingo10`, `k5d`, `k5d3`, `k5d5`, `k5d10`, `k3d`, `k3d3`, `k3d5`, `k3d10`, `win_rate`, `telegram`, `cskh`, `app`, `recharge_bonus`, `recharge_bonus_2`) VALUES
(1, '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '6', '6294803606', 'https://t.me', NULL, NULL);



CREATE TABLE `balance_transfer` (
  `id` int(11) NOT NULL,
  `sender_phone` bigint(255) NOT NULL,
  `receiver_phone` bigint(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `balance_transfer` (`id`, `sender_phone`, `receiver_phone`, `amount`, `datetime`) VALUES
(7, 1234567890, 9284938443, 100, '2023-08-14 15:43:45'),
(8, 1234567890, 9284938443, 1000, '2023-08-14 15:44:04'),
(9, 9393939393, 1234567890, 1000, '2023-08-14 16:25:47');


CREATE TABLE `bank_recharge` (
  `id` int(11) NOT NULL,
  `name_bank` varchar(50) NOT NULL DEFAULT '0',
  `name_user` varchar(100) NOT NULL DEFAULT '0',
  `stk` varchar(100) NOT NULL DEFAULT '0',
  `qr_code_image` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'bank',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



INSERT INTO `bank_recharge` (`id`, `name_bank`, `name_user`, `stk`, `qr_code_image`, `type`, `time`) VALUES
(234, 'Indusind Bank', 'Koushik majumdar ', 'gamingsubroto08-1@oksbi', 'gamingsubroto08-1@oksbi', 'momo', '0');



CREATE TABLE `crashbetrecord` (
  `id` int(11) NOT NULL,
  `username` varchar(211) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(211) NOT NULL DEFAULT 'pending',
  `winpoint` float NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



INSERT INTO `crashbetrecord` (`id`, `username`, `amount`, `status`, `winpoint`, `time`) VALUES
(1, '3333333333', 10, 'fail', 1.29, '2024-02-19 09:02:46'),
(2, '3333333333', 10, 'success', 1.08, '2024-02-19 09:35:37'),
(3, '3333333333', 10, 'success', 1, '2024-02-19 09:36:58');


CREATE TABLE `financial_details` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `phone_used` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



INSERT INTO `financial_details` (`id`, `phone`, `phone_used`, `money`, `type`, `time`) VALUES
(1, 'AO02014YD', '387636509', 1000, '1', '1657373080436'),
(2, 'AO02014YD', '387636509', 1000, '2', '1657373264811'),
(3, 'AO02014YD', '387636509', 1000, '2', '1657373269339'),
(4, 'AO02014YD', '387636509', 3000, '1', '1657448535900'),
(5, 'AO02014YD', '387636509', 2000, '1', '1657448801632');



CREATE TABLE `k3` (
  `id` int(11) NOT NULL,
  `period` bigint(20) NOT NULL DEFAULT 0,
  `result` int(11) NOT NULL,
  `game` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `k3` (`id`, `period`, `result`, `game`, `status`, `time`) VALUES
(375062, 2022070114939, 351, 10, 1, '1730907000322'),
(375063, 2022070114972, 633, 1, 1, '1730907060738'),
(375064, 2022070114973, 231, 1, 1, '1730907120173'),
(375065, 2022070114974, 163, 1, 1, '1730907180587'),
(375066, 2022070126473, 335, 3, 1, '1730907180595'),
(375067, 2022070114975, 312, 1, 1, '1730907240050'),
(375068, 2022070119881, 351, 5, 1, '1730907300545'),
(375069, 2022070114976, 361, 1, 1, '1730907300563'),
(375070, 2022070114977, 611, 1, 1, '1730907360106'),
(375071, 2022070126474, 343, 3, 1, '1730907360109'),
(375072, 2022070114978, 515, 1, 1, '1730907420670'),
(375073, 2022070114979, 552, 1, 1, '1730907480333'),
(375074, 2022070114980, 352, 1, 1, '1730907540950'),
(375075, 2022070126475, 0, 3, 0, '1730907540961'),
(375076, 2022070114981, 133, 1, 1, '1730907600453'),
(375077, 2022070119882, 0, 5, 0, '1730907600462'),
(375078, 2022070114940, 0, 10, 0, '1730907600487'),
(375079, 2022070114982, 0, 1, 0, '1730907660948');


CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `f1` varchar(50) NOT NULL,
  `f2` varchar(50) NOT NULL,
  `f3` varchar(50) NOT NULL,
  `f4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `level` (`id`, `level`, `f1`, `f2`, `f3`, `f4`) VALUES
(0, 0, '2', '1', '1', '1'),
(1, 1, '0.25', '0.25', '0.25', '0.25'),
(2, 2, '0.25', '0.25', '0.25', '0.25'),
(3, 3, '0.25', '0.25', '0.25', '0.25'),
(4, 4, '0.25', '0.25', '0.25', '0.25'),
(5, 5, '0.25', '0.25', '0.25', '0.25'),
(6, 6, '0.25', '0.25', '0.25', '0.25'),
(7, 7, '0.25', '0.25', '0.25', '0.25'),
(8, 8, '0.25', '0.25', '0.25', '0.25'),
(9, 9, '0.25', '0.25', '0.25', '0.25'),
(10, 10, '0.5', '0.5', '0.5', '0.5'),
(11, 11, '0.5', '0.5', '0.5', '0.5'),
(12, 12, '0.5', '0.5', '0.5', '0.5'),
(13, 13, '0.5', '0.5', '0.5', '0.5'),
(14, 14, '0.5', '0.5', '0.5', '0.5');



CREATE TABLE `minutes_1` (
  `id` int(11) NOT NULL,
  `id_product` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '0',
  `invite` varchar(30) NOT NULL DEFAULT '0',
  `stage` varchar(255) NOT NULL DEFAULT '0',
  `result` int(11) NOT NULL DEFAULT 0,
  `more` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `money` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `fee` int(11) NOT NULL DEFAULT 0,
  `get` int(11) NOT NULL DEFAULT 0,
  `game` varchar(50) NOT NULL DEFAULT '0',
  `bet` varchar(10) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `today` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



INSERT INTO `minutes_1` (`id`, `id_product`, `phone`, `code`, `invite`, `stage`, `result`, `more`, `level`, `money`, `amount`, `fee`, `get`, `game`, `bet`, `status`, `today`, `time`) VALUES
(2001, '20240412466791014484986', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070157492', 8, 0, 0, 49, 50, 1, 98, 'wingo', 'd', 1, '2024-04-12 4:08:42 PM', '1712934522108'),
(2002, '20240412983240049883572', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070157493', 8, 0, 0, 9800, 10, 200, 88200, 'wingo', '8', 1, '2024-04-12 4:09:24 PM', '1712934564393'),
(2003, '20240412228170631431452', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070157493', 8, 0, 0, 9800, 10, 200, 19600, 'wingo', 'd', 1, '2024-04-12 4:09:37 PM', '1712934577007'),
(2004, '20240412550810947114295', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070157496', 2, 0, 0, 98, 1, 2, 0, 'wingo', 'l', 2, '2024-04-12 4:12:43 PM', '1712934763550'),
(2005, '20240412776140429805130', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070157500', 7, 0, 0, 98, 1, 2, 0, 'wingo', 'd', 2, '2024-04-12 4:16:46 PM', '1712935006372'),
(2006, '20240412138837095390242', '7759010366', 'UQObH22252', 'SXwhC38220', '2022070157515', 8, 0, 0, 10, 1, 0, 20, 'wingo', 'l', 1, '2024-04-12 4:31:23 PM', '1712935883454'),
(2007, '20240412105471304246742', '7759010366', 'UQObH22252', 'SXwhC38220', '2022070157516', 8, 0, 0, 980, 1, 20, 1960, 'wingo', 'l', 1, '2024-04-12 4:32:23 PM', '1712935943538'),
(2008, '20240412523920363705046', '7759010366', 'UQObH22252', 'SXwhC38220', '2022070157545', 1, 0, 0, 5, 5, 0, 0, 'wingo', 'd', 2, '2024-04-12 5:01:14 PM', '1712937674688'),
(2009, '20240412630942727018970', '9353254097', 'tglgX69292', 'uVxnY75353', '2022070157570', 8, 0, 0, 10, 1, 0, 90, 'wingo', '8', 1, '2024-04-12 5:26:41 PM', '1712939201327'),
(2010, '20240413587413615700907', '9672945180', 'bcUZt48791', 'SXwhC38220', '2022070158304', 2, 0, 0, 9800, 10, 200, 0, 'wingo', 'l', 2, '2024-04-13 5:42:48 AM', '1712983368694'),
(2011, '20240413459728068159122', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158309', 0, 0, 0, 10, 10, 0, 15, 'wingo', 'd', 1, '2024-04-13 5:47:27 AM', '1712983647024'),
(2012, '20240413159333981894441', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158309', 0, 0, 0, 980, 1, 20, 0, 'wingo', 'x', 2, '2024-04-13 5:47:34 AM', '1712983654286'),
(2013, '20240413757778681918393', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158310', 5, 0, 0, 10, 1, 0, 15, 'wingo', 'x', 1, '2024-04-13 5:48:27 AM', '1712983707223'),
(2014, '20240413755202894361127', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158310', 5, 0, 0, 98, 1, 2, 0, 'wingo', 'd', 2, '2024-04-13 5:48:41 AM', '1712983721273'),
(2015, '20240413714280094227872', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158310', 5, 0, 0, 98, 1, 2, 0, 'wingo', 'n', 2, '2024-04-13 5:48:44 AM', '1712983724571'),
(2016, '20240413947489336887673', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158311', 2, 0, 0, 49, 50, 1, 0, 'wingo', 'l', 2, '2024-04-13 5:49:42 AM', '1712983782722'),
(2017, '20240413103520120141057', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158312', 6, 0, 0, 20, 20, 0, 0, 'wingo', 'n', 2, '2024-04-13 5:50:35 AM', '1712983835165'),
(2018, '20240413393454492562001', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158313', 0, 0, 0, 49, 50, 1, 98, 'wingo', 'n', 1, '2024-04-13 5:51:35 AM', '1712983895344'),
(2019, '20240413959101175721486', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158313', 0, 0, 0, 980, 1, 20, 0, 'wingo', 'l', 2, '2024-04-13 5:51:47 AM', '1712983907268'),
(2020, '20240413886808517646389', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158314', 5, 0, 0, 1, 1, 0, 2, 'wingo', 'l', 1, '2024-04-13 5:52:35 AM', '1712983955267'),
(2021, '2024041361629727196541', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158314', 5, 0, 0, 10, 10, 0, 0, 'wingo', 'n', 2, '2024-04-13 5:52:38 AM', '1712983958418'),
(2022, '20240413378111149710320', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158359', 2, 0, 0, 980, 1, 20, 0, 'wingo', 'x', 2, '2024-04-13 6:37:42 AM', '1712986662156'),
(2023, '20240413769066536326930', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158360', 1, 0, 0, 20, 20, 0, 0, 'wingo', 'd', 2, '2024-04-13 6:38:32 AM', '1712986712173'),
(2024, '2024041327164442996668', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158360', 1, 0, 0, 10, 10, 0, 20, 'wingo', 'x', 1, '2024-04-13 6:38:35 AM', '1712986715438'),
(2025, '20240413215481618628214', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 5, 5, 0, 0, 'wingo', '0', 2, '2024-04-13 6:39:16 AM', '1712986756833'),
(2026, '20240413987273048325314', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 5, 5, 0, 0, 'wingo', '1', 2, '2024-04-13 6:39:19 AM', '1712986759620'),
(2027, '20240413504722272339221', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 5, 5, 0, 0, 'wingo', '2', 2, '2024-04-13 6:39:22 AM', '1712986762194'),
(2028, '20240413966067021175165', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 5, 5, 0, 0, 'wingo', '3', 2, '2024-04-13 6:39:26 AM', '1712986766029'),
(2029, '20240413642851927762614', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 5, 5, 0, 0, 'wingo', '3', 2, '2024-04-13 6:39:28 AM', '1712986768468'),
(2030, '20240413460095065662650', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 1, 1, 0, 0, 'wingo', '3', 2, '2024-04-13 6:39:29 AM', '1712986769020'),
(2031, '20240413821857334690188', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 5, 5, 0, 0, 'wingo', '4', 2, '2024-04-13 6:39:31 AM', '1712986771128'),
(2032, '20240413633724096038531', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 5, 5, 0, 22, 'wingo', '5', 1, '2024-04-13 6:39:33 AM', '1712986773408'),
(2033, '20240413733478164117525', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 5, 5, 0, 0, 'wingo', '6', 2, '2024-04-13 6:39:35 AM', '1712986775562'),
(2034, '20240413550775954967636', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 5, 5, 0, 0, 'wingo', '7', 2, '2024-04-13 6:39:37 AM', '1712986777838'),
(2035, '20240413313333320919083', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 5, 5, 0, 0, 'wingo', '8', 2, '2024-04-13 6:39:40 AM', '1712986780008'),
(2036, '20240413596318634403382', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 5, 5, 0, 0, 'wingo', '9', 2, '2024-04-13 6:39:42 AM', '1712986782308'),
(2037, '20240413170661316804142', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 1960, 20, 40, 0, 'wingo', 'n', 2, '2024-04-13 6:39:46 AM', '1712986786883'),
(2038, '20240413969743644515605', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 98, 1, 2, 196, 'wingo', 'l', 1, '2024-04-13 6:39:50 AM', '1712986790528'),
(2039, '20240413398074830928137', '9068353563', 'EsNVl90192', 'SXwhC38220', '2022070158361', 5, 0, 0, 980, 1, 20, 0, 'wingo', 'd', 2, '2024-04-13 6:39:54 AM', '1712986794850'),
(2040, '2024041323966376826335', '9304924340', 'uVxnY75353', 'SUTFD37284', '2022070158440', 2, 0, 1, 980, 1, 20, 0, 'wingo', 'x', 2, '2024-04-13 7:58:46 AM', '1712991526544'),
(2041, '20240413875026432836126', '9304924340', 'uVxnY75353', 'SUTFD37284', '2022070158460', 6, 0, 1, 98000, 100, 2000, 0, 'wingo', 'n', 2, '2024-04-13 8:18:20 AM', '1712992700224'),
(2042, '203506365992134431313', '0000000000', 'KxFiI79659', 'uVxnY75353', '2022070159355', 2, 0, 0, 10, 1, 0, 0, 'wingo', '7', 2, '2024-11-06 8:47:25 PM', '1730906245419'),
(2043, '203506606178147561640', '0000000000', 'KxFiI79659', 'uVxnY75353', '2022070159355', 2, 0, 0, 10, 1, 0, 0, 'wingo', 't', 2, '2024-11-06 8:47:29 PM', '1730906249664');



CREATE TABLE `point_list` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `telegram` varchar(100) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `money_us` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `total1` int(11) NOT NULL DEFAULT 20,
  `total2` int(11) NOT NULL DEFAULT 50,
  `total3` int(11) NOT NULL DEFAULT 150,
  `total4` int(11) NOT NULL DEFAULT 350,
  `total5` int(11) NOT NULL DEFAULT 850,
  `total6` int(11) NOT NULL DEFAULT 5000,
  `total7` int(11) NOT NULL DEFAULT 18050,
  `total8` int(11) NOT NULL DEFAULT 20000
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `point_list` (`id`, `phone`, `telegram`, `money`, `money_us`, `level`, `total1`, `total2`, `total3`, `total4`, `total5`, `total6`, `total7`, `total8`) VALUES
(1, '0101010101', '0', 0, 0, 0, 5, 10, 15, 25, 20, 30, 35, 6000),
(2, '7303014951', '0', 0, 0, 0, 0, 10, 15, 25, 20, 30, 35, 6000),
(3, '7426995794', '0', 0, 0, 0, 0, 10, 15, 25, 20, 30, 35, 6000),
(4, '7426995794', '0', 0, 0, 0, 0, 10, 15, 25, 20, 30, 35, 6000);



CREATE TABLE `recharge` (
  `id` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL DEFAULT '0',
  `transaction_id` varchar(100) DEFAULT '0',
  `utr` bigint(255) DEFAULT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) NOT NULL DEFAULT 'bank',
  `status` int(11) NOT NULL DEFAULT 0,
  `today` varchar(50) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `recharge`
--

INSERT INTO `recharge` (`id`, `id_order`, `transaction_id`, `utr`, `phone`, `money`, `type`, `status`, `today`, `url`, `time`) VALUES
(1, '2023101759275586341978', '0', NULL, '7230895952', 300, 'upi', 1, '2023-11-07 2:08:38 PM', '0', '1699346318553'),
(2, '20231011022519462746047', '0', NULL, '1111111111', 300, 'upi', 2, '2023-11-10 7:06:59 PM', '0', '1699623419191'),
(3, '20231011399141705363199', '0', NULL, '1111111111', 500, 'upi', 2, '2023-11-13 8:42:44 AM', '0', '1699845164523'),
(4, '20231011348154970239695', '0', NULL, '1111111111', 300, 'upi', 2, '2023-11-13 9:03:00 AM', '0', '1699846380099');


CREATE TABLE `redenvelopes` (
  `id` int(11) NOT NULL,
  `id_redenvelope` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `used` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `redenvelopes` (`id`, `id_redenvelope`, `phone`, `money`, `used`, `amount`, `status`, `time`) VALUES
(1, '2023-11-23 7:50:51 AMFW1JJ0N3ST0CCKYF', '1111111111', 100, 0, 1, 1, '1700706051561'),
(2, '2023-11-24 4:39:49 PMK1FMKBS0V49WJI7R', '1111111111', 100, 0, 1, 1, '1700824189574'),
(3, '2023-11-24 4:41:01 PMRUAEDFRE5BBZDMFH', '1111111111', 20, 0, 1, 1, '1700824261724'),
(4, '2023-11-24 4:41:03 PM92IOAKJN7D5WF2OC', '1111111111', 20, 1, 1, 0, '1700824263478');

-- --------------------------------------------------------

--
-- Table structure for table `redenvelopes_used`
--

CREATE TABLE `redenvelopes_used` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `phone_used` varchar(50) NOT NULL DEFAULT '0',
  `id_redenvelops` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `redenvelopes_used`
--

INSERT INTO `redenvelopes_used` (`id`, `phone`, `phone_used`, `id_redenvelops`, `money`, `time`) VALUES
(1, '1111111111', '7426995794', '2023-11-24 4:39:49 PMK1FMKBS0V49WJI7R', 100, '1700824240033'),
(2, '1111111111', '9324888809', '2023-11-26 2:24:17 PM28EW48PKBVGWKRMD', 3655, '1700989002719'),
(3, '1111111111', '7426995794', '2023-11-23 7:50:51 AMFW1JJ0N3ST0CCKYF', 100, '1701749354464'),
(4, '7426995794', '7426995794', '2023-12-05 10:29:46 AMS9OH59WVXULR2GZ7', 100000, '1701752424657');



CREATE TABLE `result_5d` (
  `id` int(11) NOT NULL,
  `id_product` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(20) DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '0',
  `invite` varchar(30) NOT NULL DEFAULT '0',
  `stage` bigint(20) DEFAULT 0,
  `result` varchar(5) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT 0,
  `money` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `fee` int(11) NOT NULL DEFAULT 0,
  `get` int(11) NOT NULL DEFAULT 0,
  `game` int(11) NOT NULL,
  `join_bet` varchar(10) NOT NULL DEFAULT '0',
  `bet` varchar(20) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



INSERT INTO `result_5d` (`id`, `id_product`, `phone`, `code`, `invite`, `stage`, `result`, `level`, `money`, `price`, `amount`, `fee`, `get`, `game`, `join_bet`, `bet`, `status`, `time`) VALUES
(338, '203507551619990844272', '8810561390', 'tvCRR96285', 'vRter45609', 2022070190197, '00799', 0, 100, 98, 1, 2, 0, 1, 'a', 'l', 2, '1701966392394'),
(339, '203507965416279366424', '8810561390', 'tvCRR96285', 'vRter45609', 2022070190197, '00799', 0, 100, 98, 1, 2, 196, 1, 'a', 's', 2, '1701966402089'),
(340, '203507198833338089916', '8810561390', 'tvCRR96285', 'vRter45609', 2022070190198, '28292', 0, 100, 98, 1, 2, 0, 1, 'a', 'l', 2, '1701966434843'),
(341, '203507229809849631965', '8810561390', 'tvCRR96285', 'vRter45609', 2022070190223, '07139', 0, 1, 1, 1, 0, 0, 1, 'a', 'l', 2, '1701967969056');


CREATE TABLE `result_k3` (
  `id` int(11) NOT NULL,
  `id_product` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '0',
  `invite` varchar(50) NOT NULL DEFAULT '0',
  `stage` varchar(50) NOT NULL DEFAULT '0',
  `result` varchar(5) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT 0,
  `money` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `fee` int(11) NOT NULL DEFAULT 0,
  `get` int(11) NOT NULL DEFAULT 0,
  `game` varchar(5) NOT NULL DEFAULT '0',
  `join_bet` varchar(100) NOT NULL DEFAULT '0',
  `typeGame` varchar(100) NOT NULL DEFAULT '0',
  `bet` varchar(100) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `result_k3` (`id`, `id_product`, `phone`, `code`, `invite`, `stage`, `result`, `level`, `money`, `price`, `amount`, `fee`, `get`, `game`, `join_bet`, `typeGame`, `bet`, `status`, `time`) VALUES
(520, '20240215238786218730403', '9982800909', 'hOyyV67486', 'SUTFD37284', '2022070110862', '535', 0, 100000, 98000, 100, 2000, 1882, '1', '1', 'total', 'l', 1, '1707977741419'),
(521, '2024021576033956921653', '9982800909', 'hOyyV67486', 'SUTFD37284', '2022070110862', '535', 0, 100000, 98000, 100, 2000, 1882, '1', '1', 'total', 'l', 1, '1707977743839'),
(522, '20240215840001341591497', '9982800909', 'hOyyV67486', 'SUTFD37284', '2022070110862', '535', 0, 100000, 98000, 100, 2000, 1882, '1', '1', 'total', 'l', 1, '1707977746228'),
(523, '2024021579821503022832', '9982800909', 'hOyyV67486', 'SUTFD37284', '2022070110087', '523', 0, 100000, 98000, 100, 2000, 0, '1', '1', 'total', 'b', 2, '1707987627024');


CREATE TABLE `roses` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '0',
  `invite` varchar(50) NOT NULL DEFAULT '0',
  `f1` int(11) NOT NULL DEFAULT 0,
  `f2` int(11) NOT NULL DEFAULT 0,
  `f3` int(11) NOT NULL DEFAULT 0,
  `f4` int(11) NOT NULL DEFAULT 0,
  `time` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `roses` (`id`, `phone`, `code`, `invite`, `f1`, `f2`, `f3`, `f4`, `time`) VALUES
(1, '1111111111', '6fGGw42409', '2cOCs36373', 0, 0, 0, 0, '1699522576055'),
(2, '1111111111', '6fGGw42409', '2cOCs36373', 125, 125, 125, 125, '1699522584051'),
(3, '1111111111', '6fGGw42409', '2cOCs36373', 2, 2, 2, 2, '1699522606172'),
(4, '0101010101', 'dlTgg65615', 'JjGOc43623', 10, 10, 10, 10, '1699540662649');


CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `time` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `salary` (`id`, `phone`, `amount`, `type`, `time`) VALUES
(2, '9876543210', 12345, 'daily', '12/22/2023, 02:12:16 PM'),
(3, '8795462130', 12345, 'monthly', '12/22/2023, 02:24:55 PM'),
(4, '1234567890', 121, 'weekly', '12/22/2023, 02:58:08 PM'),
(5, '1234567890', 1234, 'daily', '12/22/2023, 03:04:11 PM');


CREATE TABLE `turn_over` (
  `id` int(11) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `code` varchar(250) NOT NULL,
  `invite` varchar(250) NOT NULL,
  `daily_turn_over` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_turn_over` decimal(20,2) NOT NULL DEFAULT 0.00,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `turn_over` (`id`, `phone`, `code`, `invite`, `daily_turn_over`, `total_turn_over`, `date_time`) VALUES
(1, '1111111111', '11', '11', '0.00', '11.00', '2023-11-20 14:20:03'),
(21, '3124003124', 'oCtPJ28060', '6fGGw42400', '0.00', '1037538.00', '2024-02-02 11:35:10'),
(59, '3333333333', 'oCtPJ28060', '6fGGw42400', '0.00', '12580.00', '2024-02-15 20:40:38'),
(126, '9304924340', 'uVxnY75353', 'SUTFD37284', '0.00', '100100.00', '2024-04-03 07:23:40');


CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL DEFAULT '0',
  `token` varchar(100) NOT NULL DEFAULT '0',
  `name_user` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `plain_password` varchar(250) DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `total_money` int(11) NOT NULL DEFAULT 0,
  `roses_f1` int(11) NOT NULL DEFAULT 0,
  `roses_f` int(11) NOT NULL DEFAULT 0,
  `roses_today` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  `code` varchar(30) NOT NULL DEFAULT '0',
  `invite` varchar(30) NOT NULL DEFAULT '0',
  `ctv` varchar(50) NOT NULL DEFAULT '0',
  `veri` int(11) NOT NULL DEFAULT 0,
  `otp` varchar(10) NOT NULL DEFAULT '0',
  `ip_address` varchar(50) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `today` datetime NOT NULL DEFAULT current_timestamp(),
  `time` varchar(50) NOT NULL DEFAULT '0',
  `time_otp` varchar(50) NOT NULL DEFAULT '0',
  `user_level` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `users` (`id`, `id_user`, `phone`, `token`, `name_user`, `password`, `plain_password`, `money`, `total_money`, `roses_f1`, `roses_f`, `roses_today`, `level`, `rank`, `code`, `invite`, `ctv`, `veri`, `otp`, `ip_address`, `status`, `today`, `time`, `time_otp`, `user_level`) VALUES
(282, '26289', '9304924340', '32b1319d41e9547eb954330b2d6bc786', 'RAMBO', 'e10adc3949ba59abbe56e057f20f883e', 'golu8953', 4791302, 210210000, 0, 2002, 0, 1, 1, 'uVxnY75353', 'SUTFD37284', '000000', 1, '240108', '::1', 1, '2024-02-25 18:41:52', '1708886512413', '0', 12),
(283, '78588', '0000000000', '87c54ce88ce23742a0d3a358abcd209f', 'Member17215', '827ccb0eea8a706c4c34a16891f84e7b', '12345', 1543920, 0, 0, 0, 0, 0, 0, 'KxFiI79659', 'uVxnY75353', '000000', 1, '448487', '::1', 1, '2024-02-26 09:45:54', '1708940754735', '0', 0),
(284, '89708', '9999999999', '9b591945322b3d79b9623fa7ed5eb27b', 'Member88772', 'e0ec043b3f9e198ec09041687e4d4e8d', '9999999999', 999952349, 0, 0, 0, 0, 0, 0, 'zDJEd83874', 'KxFiI79659', '000000', 1, '681537', '::1', 2, '2024-02-26 09:54:42', '1708941281792', '0', 0),
(285, '13306', '9113743778', '6e598438bd88450bda08805885c24ddb', 'Member19498', '4115ac106a74355960c304a36a49a8d1', '91137437', 30000, 0, 0, 0, 0, 0, 0, 'ENIKI61280', 'uVxnY75353', '000000', 1, '302619', '157.42.19.247', 1, '2024-03-21 10:57:53', '1711018673052', '0', 0);



CREATE TABLE `user_bank` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `name_bank` varchar(100) NOT NULL DEFAULT '0',
  `name_user` varchar(100) DEFAULT '0',
  `stk` varchar(100) NOT NULL DEFAULT '0',
  `tp` varchar(100) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '0',
  `sdt` varchar(20) DEFAULT '0',
  `tinh` varchar(100) NOT NULL DEFAULT '0',
  `chi_nhanh` varchar(100) NOT NULL DEFAULT '0',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `user_bank` (`id`, `phone`, `name_bank`, `name_user`, `stk`, `tp`, `email`, `sdt`, `tinh`, `chi_nhanh`, `time`) VALUES
(1, '1111111111', '41234324', 'DFDSFDSF', '431242423', 'xvcx', 'dfvcv', 'zvcxv@ssdsd', '1111111111', 'sdada', '1700064130272'),
(2, '7426995794', 'Sajjan Singh', 'SAJJAN', '45080100015413', 'Jaipur', 'BARB0BRGBXX', 'Uabh@ybl', '7426995794', 'Jj', '1700646370915'),
(3, '9343905371', 'Fino Payment Bank', 'CHANDRSHEKHAR MOURYA', '20143741441', '494222', 'FINO0001553', '9343905371@ibl', '9343905371', 'Bukhari Petrol Pump, Link Road, Bilaspur', '1700806698089'),
(4, '9926658073', 'State Bank of India', 'BHUPENDRA PATEL', '31216373490', 'Sidhi churhat', 'SBIN0007644', '91249', '9926658073', 'ADB CHURHAT', '1700834091374');


CREATE TABLE `wingo` (
  `id` int(11) NOT NULL,
  `period` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `game` varchar(10) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `wingo` (`id`, `period`, `amount`, `game`, `status`, `time`) VALUES
(378938, '2022070114918', 4, 'wingo10', 1, '1730906400766'),
(378939, '2022070119822', 6, 'wingo5', 1, '1730906400753'),
(378940, '2022070159358', 7, 'wingo', 1, '1730906400788'),
(378941, '2022070159359', 1, 'wingo', 1, '1730906460170'),
(378942, '2022070126253', 7, 'wingo3', 1, '1730906460170'),
(378943, '2022070159360', 5, 'wingo', 1, '1730906520585'),
(378944, '2022070159361', 8, 'wingo', 1, '1730906580980'),
(378945, '2022070126254', 8, 'wingo3', 1, '1730906640382'),
(378946, '2022070159362', 1, 'wingo', 1, '1730906640381'),
(378947, '2022070159363', 3, 'wingo', 1, '1730906700912'),
(378948, '2022070119823', 5, 'wingo5', 1, '1730906700916'),
(378949, '2022070159364', 7, 'wingo', 1, '1730906760396'),
(378950, '2022070159365', 6, 'wingo', 1, '1730906820832'),
(378951, '2022070126255', 9, 'wingo3', 1, '1730906820833'),
(378952, '2022070159366', 2, 'wingo', 1, '1730906880294'),
(378953, '2022070159367', 4, 'wingo', 1, '1730906940796'),
(378954, '2022070159368', 6, 'wingo', 1, '1730907000269'),
(378955, '2022070126256', 0, 'wingo3', 1, '1730907000270'),
(378956, '2022070119824', 7, 'wingo5', 1, '1730907000269'),
(378957, '2022070114919', 0, 'wingo10', 1, '1730907000270'),
(378958, '2022070159369', 5, 'wingo', 1, '1730907060690'),
(378959, '2022070159370', 3, 'wingo', 1, '1730907120148'),
(378960, '2022070159371', 1, 'wingo', 1, '1730907180567'),
(378961, '2022070126257', 8, 'wingo3', 1, '1730907180567'),
(378962, '2022070159372', 4, 'wingo', 1, '1730907240024'),
(378963, '2022070159373', 0, 'wingo', 1, '1730907300507'),
(378964, '2022070119825', 2, 'wingo5', 1, '1730907300508'),
(378965, '2022070159374', 1, 'wingo', 1, '1730907360078'),
(378966, '2022070126258', 8, 'wingo3', 1, '1730907360078'),
(378967, '2022070159375', 8, 'wingo', 1, '1730907420652'),
(378968, '2022070159376', 9, 'wingo', 1, '1730907480307'),
(378969, '2022070159377', 3, 'wingo', 1, '1730907540904'),
(378970, '2022070126259', 0, 'wingo3', 0, '1730907540904'),
(378971, '2022070159378', 8, 'wingo', 1, '1730907600426'),
(378972, '2022070119826', 0, 'wingo5', 0, '1730907600427'),
(378973, '2022070114920', 0, 'wingo10', 0, '1730907600428'),
(378974, '2022070159379', 0, 'wingo', 0, '1730907660928');



CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT 0,
  `stk` varchar(100) NOT NULL DEFAULT '0',
  `name_bank` varchar(100) NOT NULL DEFAULT '0',
  `name_user` varchar(100) NOT NULL DEFAULT '0',
  `ifsc` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL DEFAULT '0',
  `tp` varchar(211) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 0,
  `today` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `withdraw` (`id`, `id_order`, `phone`, `money`, `stk`, `name_bank`, `name_user`, `ifsc`, `sdt`, `tp`, `status`, `today`, `time`) VALUES
(1, '20231011588280347953774', '1111111111', 500, '431242423', '41234324', 'DFDSFDSF', 'dfvcv', 'zvcxv@ssdsd', 'xvcx', 1, '2023-11-15 9:32:24 PM', '1700064144293'),
(2, '20231011595802365299277', '1111111111', 500, '431242423', '41234324', 'DFDSFDSF', 'dfvcv', 'zvcxv@ssdsd', 'xvcx', 1, '2023-11-15 9:32:28 PM', '1700064148081'),
(3, '20231011955506088681269', '1111111111', 300, '431242423', '41234324', 'DFDSFDSF', 'dfvcv', 'zvcxv@ssdsd', 'xvcx', 2, '2023-11-19 7:38:40 AM', '1700359720033'),
(4, '20231011972317662552778', '1111111111', 300, '431242423', '41234324', 'DFDSFDSF', 'dfvcv', 'zvcxv@ssdsd', 'xvcx', 2, '2023-11-19 7:38:55 AM', '1700359735849');

ALTER TABLE `5d`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `balance_transfer`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bank_recharge`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `crashbetrecord`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `financial_details`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `k3`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `minutes_1`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `point_list`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `recharge`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `redenvelopes`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `redenvelopes_used`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `result_5d`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `result_k3`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `roses`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `turn_over`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `user_bank`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `wingo`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `5d`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377094;


ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `balance_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;


ALTER TABLE `bank_recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;


ALTER TABLE `crashbetrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;


ALTER TABLE `financial_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `k3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375080;


ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;


ALTER TABLE `minutes_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2044;


ALTER TABLE `point_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;


ALTER TABLE `recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;


ALTER TABLE `redenvelopes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;


ALTER TABLE `redenvelopes_used`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;


ALTER TABLE `result_5d`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;


ALTER TABLE `result_k3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=562;


ALTER TABLE `roses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=847;


ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;


ALTER TABLE `turn_over`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;


ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;


ALTER TABLE `user_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;


ALTER TABLE `wingo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=378975;


ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;