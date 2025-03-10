-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 10, 2025 lúc 02:33 PM
-- Phiên bản máy phục vụ: 10.11.11-MariaDB-cll-lve
-- Phiên bản PHP: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `capturer_server_01`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `admin_up` int(11) NOT NULL,
  `money` int(11) DEFAULT 0,
  `prefix` varchar(255) DEFAULT NULL,
  `endtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `level`, `admin_up`, `money`, `prefix`, `endtime`) VALUES
(1, 'h1ax', '7c53b7c1a6db488cb973bb5ebae8820f', 0, 0, 999999, 'A', '2035-01-31 12:16:27'),
(5, 'admin', '1816ac0b4bf213b0cfaacd48b6127f12', 1, 1, 9, 'demo', '2035-01-31 12:16:27'),
(6, 'LinhMatLon', '64fa4e9c21ff5f9efc797fa381523dd6', 1, 1, 1111, 'NQL', '2035-01-31 12:16:27'),
(14, 'core', '202cb962ac59075b964b07152d234b70', 2, 1, 11111, 'core', '2025-01-23 00:00:00'),
(15, 'tunkube', 'e99a18c428cb38d5f260853678922e03', 1, 1, 111111, 'kaitou', '2025-01-31 00:00:00'),
(16, 'Duy99', 'b93a906d8c92ec2be9484c718d8a008d', 2, 6, 999999, 'NQL', '2025-05-16 00:00:00'),
(17, 'testNQL', '202cb962ac59075b964b07152d234b70', 2, 6, 1111, 'huy', '2025-01-18 00:00:00'),
(18, 'LinhMatLon1', '202cb962ac59075b964b07152d234b70', 1, 6, 999999, 'EUTLNQL', '2025-12-17 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keys`
--

CREATE TABLE `keys` (
  `key` varchar(255) NOT NULL,
  `time_start` datetime DEFAULT NULL,
  `time_end` datetime DEFAULT NULL,
  `reg_day` datetime NOT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `lenght` int(11) NOT NULL,
  `id_admin` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `keys`
--

INSERT INTO `keys` (`key`, `time_start`, `time_end`, `reg_day`, `id_user`, `lenght`, `id_admin`) VALUES
('1234', '2025-01-28 14:25:26', '2028-06-15 14:25:26', '2025-01-28 14:24:52', NULL, 1234, 1),
('?', '2025-01-12 07:55:28', '2052-05-29 07:55:28', '2025-01-12 07:53:13', '4476ed81e53e-pg7e-siev-ncs4-qbcdfile', 9999, 6),
('abc', '2025-01-26 15:18:22', '2028-02-11 15:18:22', '2025-01-26 15:18:18', 'sAu1f8514nbEfNVG90ziKY8atH7bZadl', 1111, 1),
('A_1D_6bmaHhQ823cl0EM5n4jD', NULL, NULL, '2025-01-18 01:40:28', NULL, 1, 1),
('A_1D_7SqUBVmfrCXvZaO4d0Dy', NULL, NULL, '2025-01-11 23:44:45', NULL, 1, 1),
('A_1D_7zsDKwpZSq3Mea58T6Nj', NULL, NULL, '2025-01-18 01:39:49', NULL, 1, 1),
('A_1D_aZPGLOfiwygmtpuD3HbU', NULL, NULL, '2025-01-11 23:44:45', NULL, 1, 1),
('A_1D_b10VJzAwBWjkhNZPSRdl', NULL, NULL, '2025-01-18 01:33:52', NULL, 1, 1),
('A_1D_BjRrHkUxt2vl6TYa5fNP', NULL, NULL, '2025-01-18 01:40:11', NULL, 1, 1),
('A_1D_EZgofJQApmeB7ndIuRYt', NULL, NULL, '2025-01-18 01:42:19', NULL, 1, 1),
('A_1D_Ivfk2EJp0QjULNOKtZl8', NULL, NULL, '2025-01-18 01:35:10', NULL, 1, 1),
('A_1D_j0IoMnsz3FxV2ETk9rwO', NULL, NULL, '2025-01-18 01:34:48', NULL, 1, 1),
('A_1D_NcZ8Dt6eJxFzn3T7UMK1', NULL, NULL, '2025-01-11 23:44:45', NULL, 1, 1),
('A_1D_Ne6cUuG3IKtr9FCdzLs7', NULL, NULL, '2025-01-18 01:36:35', NULL, 1, 1),
('A_1D_pIFiQVLnqSy8CxkDuMg4', NULL, NULL, '2025-01-18 01:39:04', NULL, 1, 1),
('A_1D_QFt2Oe9msWo8jB6PSquD', NULL, NULL, '2025-01-18 01:37:00', NULL, 1, 1),
('A_1D_QibTJqS68HUdVlnrz20y', '2025-01-24 09:27:55', '2025-01-25 09:27:55', '2025-01-11 23:44:45', 'sAu1f8514nbEfNVG90ziKY8atH7bZadl', 1, 1),
('A_1D_x7GK9pY2jnqahRFALtcN', NULL, NULL, '2025-01-11 23:44:45', NULL, 1, 1),
('A_1D_y6tboi28dRLh5CGw3a1P', '2025-01-23 19:35:22', '2025-01-24 19:35:22', '2025-01-18 01:39:38', 'shqsZtRs3lv+bNZe+H3HC7oCtyGRL+0v', 1, 1),
('capcu', '2025-01-12 13:25:13', '2027-10-08 13:25:13', '2025-01-12 13:24:59', 'sQm/N4csmQ++LJoduC2LDL04oCiaNPY0', 999, 6),
('EUTLNQL_1D_Cwp1KcLDTgQ5aXslyN0d', NULL, NULL, '2025-01-24 12:24:47', NULL, 1, 18),
('EUTLNQL_1D_EQa9W0g1hUxZI8TNvP52', NULL, NULL, '2025-01-24 20:02:31', NULL, 1, 18),
('EUTLNQL_1D_FAv4jBrdaxbLTYU9CEKk', NULL, NULL, '2025-01-24 12:24:47', NULL, 1, 18),
('EUTLNQL_1D_IKBCs7DP3mbyrTfHYn6z', NULL, NULL, '2025-01-24 12:24:47', NULL, 1, 18),
('EUTLNQL_1D_JLlrkbu6cwHZd7Up39Da', NULL, NULL, '2025-01-24 19:55:36', NULL, 1, 18),
('EUTLNQL_1D_k5aZocmizjtMwC2NK8TY', NULL, NULL, '2025-01-24 19:55:36', NULL, 1, 18),
('EUTLNQL_1D_kxvMoydaZVHFX6z1fl3Q', NULL, NULL, '2025-01-24 12:24:47', NULL, 1, 18),
('EUTLNQL_1D_mckRdhbWris4SylnaHMT', NULL, NULL, '2025-01-24 12:24:47', NULL, 1, 18),
('EUTLNQL_1D_mKfuYliFO3vJL8Sc9AUp', NULL, NULL, '2025-01-24 19:59:11', NULL, 1, 18),
('EUTLNQL_1D_owRv5J1DYGLSzQAmpBPr', '2025-01-25 21:50:23', '2025-01-26 21:50:23', '2025-01-24 12:24:47', '34fdb030c3c6-pg7e-qmwq-ncs4-nfhoy/8z', 1, 18),
('EUTLNQL_1D_s0gvcAxT1wZSCRVpmahF', NULL, NULL, '2025-01-18 01:30:46', NULL, 1, 18),
('EUTLNQL_1D_sCm64haWTV8KdE3lHLfb', NULL, NULL, '2025-01-24 12:24:47', NULL, 1, 18),
('EUTLNQL_1D_SDPRHzFpZALOxqvc32Y6', NULL, NULL, '2025-01-24 20:02:34', NULL, 1, 18),
('EUTLNQL_1D_SNL1OrMuqIknClYtdKBH', NULL, NULL, '2025-01-18 01:30:46', NULL, 1, 18),
('EUTLNQL_1D_SX327nOm8xWc1vYqRsou', NULL, NULL, '2025-01-24 20:02:34', NULL, 1, 18),
('EUTLNQL_1D_V0TIUnKi312PMYzRjy9t', NULL, NULL, '2025-01-18 01:30:46', NULL, 1, 18),
('EUTLNQL_1D_vfAIBMkia9OhQlJxrewY', NULL, NULL, '2025-01-18 01:30:46', NULL, 1, 18),
('EUTLNQL_1D_vMhHE8PZx6tSpyIzXmN3', NULL, NULL, '2025-01-18 01:30:46', NULL, 1, 18),
('EUTLNQL_1D_VX46YsKBrJPLblOS7EwD', NULL, NULL, '2025-01-18 01:30:46', NULL, 1, 18),
('EUTLNQL_1D_wQ1WfXJxYMaEUoZhnRKP', NULL, NULL, '2025-01-18 01:30:46', NULL, 1, 18),
('EUTLNQL_1D_WvBVuKQ4PM8w7rUloidG', NULL, NULL, '2025-01-24 12:24:47', NULL, 1, 18),
('EUTLNQL_1D_XAOpqTnfVPkzL51uoIaH', NULL, NULL, '2025-01-18 01:30:46', NULL, 1, 18),
('EUTLNQL_1D_YB9IVrsphLQPFvm6ntu2', NULL, NULL, '2025-01-18 01:30:46', NULL, 1, 18),
('Hieu', '2025-02-19 12:29:28', '2027-11-16 12:29:28', '2025-02-19 11:55:57', 'eb481af9f10e-pg7e-siev-ncs4-qbcdfile', 1000, 6),
('kaitou', NULL, NULL, '2025-01-17 13:35:49', NULL, 9999, 6),
('NQL?', '2025-01-18 01:23:17', '4762-12-15 01:23:17', '2025-01-18 01:21:39', '4476ed81e53e-pg7e-siev-ncs4-qbcdfile', 999999, 18),
('NQL_1D_2MUGR1gQTXhEuejBrbzA', '2025-02-09 14:57:46', '2025-02-10 14:57:46', '2025-01-25 21:01:23', '1e67e2c8f044-pg7e-qwc2-ncs4-qbcdfile', 1, 6),
('NQL_1D_3I2p6j1tRuTQ7klezWx8', '2025-01-26 00:21:51', '2025-01-27 00:21:51', '2025-01-25 21:01:23', '9ef87fb646a4-pg7e-qmwq-ncs4-nfhoy/8z', 1, 6),
('NQL_1D_6PQfA8JU5DTW7O0rl9gV', '2025-01-16 12:34:14', '2025-01-17 12:34:14', '2025-01-16 12:26:56', 'f33b35d31675-pg7e-rmdd-ncs4-q2xydt1v', 1, 16),
('NQL_1D_msxA1pt8E6wg3QfObX2I', NULL, NULL, '2025-01-25 21:01:23', NULL, 1, 6),
('NQL_1D_ngkzw6u5PSb8Ma3TDolh', NULL, NULL, '2025-01-25 21:01:23', NULL, 1, 6),
('NQL_1D_QTAkCrcBP5l3tNYSG8wq', '2025-01-26 00:36:02', '2025-01-27 00:36:02', '2025-01-25 21:01:23', '34fdb030c3c6-pg7e-qmwq-ncs4-nfhoy/8z', 1, 6),
('NQL_1D_Ra4PbUIyZTdloQLHe1zn', '2025-01-26 10:20:52', '2025-01-27 10:20:52', '2025-01-25 21:01:23', '37320207002e-pg7e-qtyk-ncs4-mwmav8pc', 1, 6),
('NQL_1D_U2EiH8gJymzKdO1ZCb0w', NULL, NULL, '2025-01-25 21:01:23', NULL, 1, 6),
('NQL_1D_UhWQlw7E19Mr3PI8mZFk', NULL, NULL, '2025-01-25 21:01:23', NULL, 1, 6),
('NQL_1D_vsdOh6DxEMGKa5lbwy8R', '2025-01-26 00:54:24', '2025-01-27 00:54:24', '2025-01-25 21:01:23', '8ed26d1dec26-pg7e-qtyk-ncs4-mwmav8pc', 1, 6),
('NQL_1D_YGz94pD5Ont8aFghVyZr', NULL, NULL, '2025-01-25 21:01:23', NULL, 1, 6),
('vipadmin', '2025-01-11 14:43:08', '2298-10-26 14:43:08', '2025-01-10 22:07:13', 'sQm/N4csmQ++LJoduC2LDL04oCiaNPY0', 99999, 1),
('vjppro123', NULL, NULL, '2025-01-14 22:53:47', NULL, 2147483647, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `links`
--

CREATE TABLE `links` (
  `id` int(5) NOT NULL,
  `appName` varchar(20) NOT NULL,
  `link` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `pkg` varchar(100) NOT NULL,
  `time_update` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `links`
--

INSERT INTO `links` (`id`, `appName`, `link`, `author`, `pkg`, `time_update`) VALUES
(15, 'Háº¯c mÃ¡p Liqi', 'https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjBnvLn-PSKA', 'TÃºn vjp', 'com.garena.game.kgvn', '2025-01-14 16:54:55'),
(6, 'LiÃªn QuÃ¢n TÃ¡ch', 'https://t.me/encluagg/7509', 'Vui LÃ²ng Nháº¥n Open Game', 'com.garena.game.yusei', '2025-01-14 17:20:42'),
(6, 'Telegram Groups Chat', 'https://t.me/encluagg', 'Vui LÃ²ng Nháº¥n Open Game', 'org.telegram.messenger', '2025-01-14 17:22:17'),
(6, 'LiÃªn QuÃ¢n Gá»‘c', 'https://t.me/encluagg/7607', 'Vui LÃ²ng Nháº¥n Open Game', 'com.garena.game.kgvn', '2025-01-14 17:23:50'),
(1, 'Magisk', 'https://github.com/topjohnwu/Magisk/releases/download/v28.1/Magisk-v28.1.apk', 'Cap cu', 'com.topjohnwu.magisk', '2025-01-23 17:17:06'),
(18, 'Hack Aov EU', 'https://t.me/encluagg/9151', 'Click Open Game', 'com.ngame.allstar.eu', '2025-01-25 20:55:10'),
(1, 'liÃªn quÃ¢n', 'https://facebook.com', 'cap', 'com.garena.game.kgvn', '2025-01-28 21:19:59');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`key`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `keys`
--
ALTER TABLE `keys`
  ADD CONSTRAINT `keys_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
