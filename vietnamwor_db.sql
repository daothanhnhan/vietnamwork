-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th8 17, 2019 lúc 12:00 PM
-- Phiên bản máy phục vụ: 5.5.62-MariaDB
-- Phiên bản PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vietnamwor_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `admin_state` int(11) DEFAULT '1',
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$02.uMGB26ln3fgNk8MyarOf8hnuaF/hWlukTDKk99Kb9TluOarctq', NULL, NULL, NULL, 1, 1),
(2, 'hpt', 'hpt', '$2y$10$x9RWBVgCWSb9fkQGoh7ESOhYV1SnY5Fn5uwKUS9WfdUV1O4wvIe4a', '0973457689', 'ngobkanh@gmail.com', 'đây là tài khoản test', 1, 2),
(3, 'Trương Quang Tuấn', 'tuan', '$2y$10$5xn9Ri83pYZIOwglCNPE1O77nvaCUPJJFUifoHtxyWgqM1EU34Yku', '', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_cap`
--

CREATE TABLE `bang_cap` (
  `id` int(11) NOT NULL,
  `name` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_cap`
--

INSERT INTO `bang_cap` (`id`, `name`) VALUES
(1, 'Trung học'),
(2, 'Trung cấp'),
(3, 'Cao đẳng'),
(4, 'Cử nhân'),
(5, 'Thạc sĩ'),
(6, 'Tiến sĩ'),
(7, 'Khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_1`
--

CREATE TABLE `bang_gia_1` (
  `id` int(11) NOT NULL,
  `khoahoc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinhanh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocvien` int(11) NOT NULL,
  `namsinh` year(4) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_1`
--

INSERT INTO `bang_gia_1` (`id`, `khoahoc`, `chinhanh`, `hocvien`, `namsinh`, `email`, `phone`, `name`, `notes`) VALUES
(43, 'Smart Reading Skills', 'AMERICAN SKILLS LONG BIÊN-HÀ NỘI', 0, 1995, 'viethung95cute@gmail.com', '1672523165', 'Nguyễn Việt Hưng', ''),
(44, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', ''),
(45, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_2`
--

CREATE TABLE `bang_gia_2` (
  `id` int(11) NOT NULL,
  `name_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_student` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) NOT NULL,
  `hoan_thien_so_sach` varchar(300) NOT NULL,
  `quyet_toan_thue` varchar(300) NOT NULL,
  `tong_dich_vu` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_2`
--

INSERT INTO `bang_gia_2` (`id`, `name_parent`, `phone_parent`, `name_student`, `birthday`, `adress`, `email`, `hoan_thien_so_sach`, `quyet_toan_thue`, `tong_dich_vu`, `time`) VALUES
(34, 'Việt Hưng', '01672523165', 'ABC', '2018-03-30', 'ĐH Mỏ - Địa chất', 'viethung95cute@gmail.com', '', '', '', '2018-03-28 04:54:52'),
(35, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:26'),
(36, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:33'),
(37, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:13'),
(38, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:19'),
(39, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:13:51'),
(40, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:20:52'),
(41, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:19'),
(42, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:22'),
(43, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:52'),
(44, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:55'),
(45, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:23:34'),
(46, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:46'),
(47, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `link`, `image`) VALUES
(1, '', 'banner3.jpg'),
(2, '', 'banner2.jpg'),
(4, '', 'banner4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_trang_chu`
--

CREATE TABLE `banner_trang_chu` (
  `id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `date_start_b1` date NOT NULL,
  `date_end_b1` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_trang_chu`
--

INSERT INTO `banner_trang_chu` (`id`, `nha_tuyen_dung_id`, `date_start_b1`, `date_end_b1`) VALUES
(10, 2, '2019-05-23', '2019-07-07'),
(11, 3, '2019-05-27', '2019-06-11'),
(12, 4, '2019-05-27', '2019-06-11'),
(13, 5, '2019-05-27', '2019-06-11'),
(14, 6, '2019-05-27', '2019-06-11'),
(15, 7, '2019-05-27', '2019-06-11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_trang_chu_phu`
--

CREATE TABLE `banner_trang_chu_phu` (
  `id` bigint(20) NOT NULL,
  `banner_trang_chu_id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `don_hang_id` bigint(20) NOT NULL,
  `ngay_mua` date NOT NULL,
  `gia` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `vat` bigint(20) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_trang_chu_phu`
--

INSERT INTO `banner_trang_chu_phu` (`id`, `banner_trang_chu_id`, `nha_tuyen_dung_id`, `don_hang_id`, `ngay_mua`, `gia`, `soluong`, `tong_tien`, `vat`, `state`) VALUES
(3, 10, 2, 24, '2019-05-22', 29025000, 2, 58050000, 63855000, 1),
(4, 10, 2, 25, '2019-05-23', 29025000, 1, 29025000, 31927500, 1),
(5, 11, 3, 27, '2019-05-27', 29025000, 1, 29025000, 31927500, 1),
(6, 12, 4, 28, '2019-05-27', 29025000, 1, 29025000, 31927500, 1),
(7, 13, 5, 29, '2019-05-27', 29025000, 1, 29025000, 31927500, 1),
(8, 14, 6, 30, '2019-05-27', 29025000, 1, 29025000, 31927500, 1),
(9, 15, 7, 31, '2019-05-27', 29025000, 1, 29025000, 31927500, 1),
(10, 11, 3, 33, '2019-05-28', 29025000, 1, 29025000, 31927500, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cad_file`
--

CREATE TABLE `cad_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cad_file`
--

INSERT INTO `cad_file` (`id`, `name`) VALUES
(2, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calculators_file`
--

CREATE TABLE `calculators_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `calculators_file`
--

INSERT INTO `calculators_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cap_bac`
--

CREATE TABLE `cap_bac` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cap_bac`
--

INSERT INTO `cap_bac` (`id`, `name`) VALUES
(1, 'Mới tốt nghiệp'),
(2, 'Nhân viên'),
(3, 'Trưởng phòng'),
(4, 'Giám đốc và cấp cao hơn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `career`
--

CREATE TABLE `career` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `career`
--

INSERT INTO `career` (`id`, `name`, `note`) VALUES
(65, 'Hành chính - Văn phòng', NULL),
(66, 'Nhân viên kinh doanh', NULL),
(67, 'Quản trị kinh doanh', NULL),
(68, 'Kế toán - Kiểm toán', NULL),
(69, 'Nhân sự', NULL),
(70, 'Marketing - PR', NULL),
(71, 'Tư vấn - Chăm sóc khách hàng', NULL),
(72, 'Bán hàng', NULL),
(73, 'Dịch vụ', NULL),
(74, 'Ngân hàng ', NULL),
(75, 'Bảo hiểm ', NULL),
(76, 'Du lịch - Khách sạn', NULL),
(77, 'Y tế - Dược', NULL),
(78, 'Vận chuyển - Giao nhận -  Kho bãi', NULL),
(79, 'Bưu chính', NULL),
(80, 'Giáo viên', NULL),
(81, 'Hằng hải', NULL),
(82, 'Hàng không', NULL),
(83, 'Xây dựng', NULL),
(84, 'Cơ khí - Chế tạo', NULL),
(85, 'Kỹ thuật', NULL),
(86, 'Kỹ thuật ứng dụng', NULL),
(87, 'Tự động hóa - CNC', NULL),
(88, 'May mặc - Thời trang', NULL),
(89, 'Điện, điện tử - Điện lạnh', NULL),
(90, 'Điện tử viễn thông', NULL),
(91, 'Làm đẹp - Spa ', NULL),
(92, 'Thiết kế đồ họa web', NULL),
(93, 'Phần cứng -  Mạng', NULL),
(94, 'Tiếp thị - Quảng cáo', NULL),
(95, 'Thiết kế - Mỹ thuật', NULL),
(96, 'Kiến trúc - Thiết kế nội thất', NULL),
(97, 'Vật tư - Thiết bị - Mua hàng', NULL),
(98, 'Dệt - Da giày', NULL),
(99, 'Kinh doanh bất động sản', NULL),
(100, 'Thực phẩm - Nhà hàng', NULL),
(101, 'Hóa học - Sinh học', NULL),
(102, 'Ô tô - Xe máy', NULL),
(103, 'Báo chí - Truyền hình', NULL),
(104, 'Biên tập - Phiên dịch', NULL),
(105, 'In ấn - Xuất bản', NULL),
(106, 'Giáo dục - Đào tạo', NULL),
(107, 'Pháp lý - Pháp luật', NULL),
(108, 'Dầu khí - Hóa chất', NULL),
(109, 'An ninh - Bảo vệ', NULL),
(110, 'Nông lâm - Ngư nghiệp', NULL),
(111, 'Khu công nghiệp', NULL),
(112, 'Đồ uống', NULL),
(113, 'Chứng khoán - Vàng', NULL),
(114, 'Tài chính đầu tư', NULL),
(115, 'Quan hệ đối ngoại', NULL),
(116, 'Hoạch định dự án', NULL),
(117, 'Thương mại điện tử', NULL),
(118, 'Ngoại thương - Xuất nhập khẩu', NULL),
(119, 'Nghệ thuật điện ảnh', NULL),
(120, 'Thủ công mỹ nghệ', NULL),
(121, 'Tổ chức sự kiện', NULL),
(122, 'Thể dục - Thể thao', NULL),
(123, 'Việc làm bán thời gian', NULL),
(124, 'Liên kết - Hợp tác', NULL),
(125, 'Lái xe, xúc, ủi, nâng', NULL),
(126, 'Xuất khẩu lao động', NULL),
(127, 'Phát triển thị trường', NULL),
(128, 'Lao động phổ thông', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci,
  `note_buyer` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`) VALUES
(1, NULL, 'sdgdfgdbcvbcvbxcv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgdf', 'sdf@gmail.com', '5646', 'sdf@gmail.com', 'sdf@gmail.com'),
(3, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'drtert', 'sdf@gmail.com', '3454', 'sdf@gmail.com', 'sdf@gmail.com'),
(4, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdfasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sfgdfg'),
(5, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(6, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'df', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'ag'),
(7, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', '.'),
(8, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdfg'),
(9, NULL, '507hpkui803q8chnerqdtf3vl2', 1520000, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', '', 'sdfg'),
(10, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'dfgfdhgvjm'),
(11, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'd'),
(12, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zscf'),
(13, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sds', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xfc'),
(14, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ádasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cv'),
(15, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxd'),
(16, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xf'),
(17, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'f', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(18, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'g'),
(19, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(20, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sè', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cvb'),
(21, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgd', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxcv'),
(22, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfjas@gmail.com', 'tung92.ns@gmail.com', '12342', 'fg', 'xc'),
(23, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', 'dfg', 'dfg', 'gh'),
(24, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dgfdg', 'tung92.ns@gmail.com', '1234567', 'xfvd', 'sx'),
(25, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ạgdfh', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cfgvb'),
(26, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xcv'),
(27, NULL, '507hpkui803q8chnerqdtf3vl2', 3040000, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', '', 'xcv'),
(28, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 0, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', 'fghfgh', 'zdfgdfg'),
(29, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 1845000, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', '', 'zdfgdfg'),
(30, NULL, '334n6joa344tmhngo3r5aqpve3', 1845000, NULL, '0000-00-00', NULL, NULL, 'HANGWF', 'HGJFGH@GMAIL.COM', '45657', 'qUAN NHAN', 'DTAN'),
(31, NULL, 'uicgfl7gr3e7ahodo04vpssns6', 3930000, NULL, '0000-00-00', NULL, NULL, 'dfHFGH', 'XFGHFG@GMAIL.COM', '3456789', 'ARFG', 'WRWER'),
(32, NULL, '9h180s77g41hqt5d8g95mudic6', 205000, NULL, '0000-00-00', NULL, NULL, 'vcxgf', 'gfgfdg@gmail.com', 'fgfdgdfg', 'fgfdgdf', 'gfdgdf'),
(33, NULL, 'jom8ufm7f64s09i4gk10fp1ma2', 2255000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '12184', 'Fqgq', 'Vsbs'),
(34, NULL, '20ks5j7ju4vpq91d9699nvile3', 1455000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '86633889', 'Fgujbvg', ''),
(35, NULL, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, NULL, '0000-00-00', NULL, NULL, 'Ngọc thế', 'ngocthe505@gmail.com', '0943218532', 'Số 19 ngõ 4 văn la hà đông hn', ''),
(36, NULL, '0m0i103i9mk3s0t8mi1g6gnqd5', 2250000, NULL, '0000-00-00', 4, '', 'Lìu tìu phìu', 'admin@deptrai.com', '096969969', 'Hà Nội', ''),
(37, NULL, 'meesi1d3laemnvqfgu7m1lm9p4', 2050000, NULL, '0000-00-00', 4, 'gfdgfd', 'Lìu tìu phìu', 'admin@deptrai.com', '0969068969', 'Hà Nội', ''),
(38, NULL, 'r3ktn90f3cn3fv82lob0qfv7l2', 0, NULL, '0000-00-00', NULL, NULL, 'hfgh', 'gfhg@gmail.com', '5345345435', 'gbfdgfdg', 'gdfg'),
(39, NULL, '3j87stb5hl70hfftn49fg9uve2', 615000, NULL, '0000-00-00', 1, '', 'Tâm', 'ngockhanh@gmail.com', '0974698975', 'thanh xuân', ''),
(40, NULL, 'vjnoaabl9tui5463ttpol3a745', 3040000, NULL, '0000-00-00', 1, '', 'hằng pt', 'ngockhanh@gmail.com', '123123435', 'dfghdfgh', 'dfghdfgh'),
(41, NULL, '36v2v63fsce7tth1ep3mp51uh3', 760000, NULL, '0000-00-00', NULL, NULL, 'ádfasdf', 'ngockhanh@gmail.com', 'dfgadfg', 'ádfgsdf', ''),
(42, NULL, '9ed4v2g4sm1v3og223ckgdh650', 4560000, NULL, '0000-00-00', NULL, NULL, 'sxdfsdf', 'ng@gmail.com', '345345', 'étdgvdf', ''),
(43, NULL, 's7kfj9rca2ic102k5sgpe4it67', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '30012018', 'Ha Noi', '1'),
(44, NULL, 'uh6mafdedbdh4sqodcd4amspa5', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(45, NULL, '1phakdlrnq7gn5ln72umgujq63', 238620, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '13-7'),
(46, NULL, 'hvha0aus88v853l8hh8mv10181', 367930, NULL, '2018-11-14', NULL, NULL, 'tuan', 'tuan@gmail.com', '987654321', 'Hà Nội', '14-11'),
(47, NULL, 'grpkot0dk1fit76ka5t7rgub51', 20000, NULL, '2018-11-14', NULL, NULL, 'tuan', 'tuan@gmail.com', '987654321', 'Hà Nội', 'test');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(4, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 27, 'fg4g7m0pb0vnv4dnvp88f7lds7', 760000, 3, 2280000, NULL, 2, 1, 'Cam', 'S', 1),
(8, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 2, 1520000, NULL, 2, 1, 'Cam', 'S', 25),
(9, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 4, 3040000, NULL, 2, 1, 'Cam', 'S', 26),
(10, 42, 'k75ivhcmgk5u9bbi4ajsqeqon7', 205000, 9, 1845000, NULL, 0, 0, '', '', 28),
(11, 42, '334n6joa344tmhngo3r5aqpve3', 205000, 9, 1845000, NULL, 0, 0, '', '', 30),
(12, 42, 'uicgfl7gr3e7ahodo04vpssns6', 205000, 6, 1230000, NULL, 0, 0, '', '', 31),
(13, 43, 'uicgfl7gr3e7ahodo04vpssns6', 450000, 6, 2700000, NULL, 0, 0, '', '', 31),
(14, 42, '9h180s77g41hqt5d8g95mudic6', 205000, 1, 205000, NULL, 0, 0, '', '', 32),
(15, 42, 'jom8ufm7f64s09i4gk10fp1ma2', 205000, 11, 2255000, NULL, 0, 0, '', '', 33),
(16, 43, '20ks5j7ju4vpq91d9699nvile3', 225000, 1, 225000, NULL, 0, 0, '', '', 34),
(17, 42, '20ks5j7ju4vpq91d9699nvile3', 205000, 6, 1230000, NULL, 0, 0, '', '', 34),
(18, 42, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, 1, 205000, NULL, 0, 0, '', '', 35),
(19, 43, '0m0i103i9mk3s0t8mi1g6gnqd5', 225000, 10, 2250000, NULL, 0, 0, '', '', 36),
(20, 42, 'meesi1d3laemnvqfgu7m1lm9p4', 205000, 10, 2050000, NULL, 0, 0, '', '', 37),
(21, 42, 'r3ktn90f3cn3fv82lob0qfv7l2', 205000, 0, 0, NULL, 0, 0, '', '', 38),
(22, 42, '3j87stb5hl70hfftn49fg9uve2', 205000, 3, 615000, NULL, 0, 0, '', '', 39),
(23, 27, 'vjnoaabl9tui5463ttpol3a745', 760000, 3, 2280000, NULL, 0, 0, '', '', 40),
(24, 28, 'vjnoaabl9tui5463ttpol3a745', 760000, 1, 760000, NULL, 0, 0, '', '', 40),
(25, 27, '36v2v63fsce7tth1ep3mp51uh3', 760000, 1, 760000, NULL, 0, 0, '', '', 41),
(26, 27, '9ed4v2g4sm1v3og223ckgdh650', 760000, 6, 4560000, NULL, 0, 0, '', '', 42),
(27, 55, 's7kfj9rca2ic102k5sgpe4it67', 0, 2, 0, NULL, 0, 0, '', '60x90 cm', 43),
(28, 48, 'uh6mafdedbdh4sqodcd4amspa5', 0, 1, 0, NULL, 0, 0, '', '', 44),
(29, 55, '1phakdlrnq7gn5ln72umgujq63', 119310, 2, 238620, NULL, 0, 0, '', '', 45),
(30, 55, 'hvha0aus88v853l8hh8mv10181', 119310, 3, 357930, NULL, 0, 0, '', '41', 46),
(31, 54, 'hvha0aus88v853l8hh8mv10181', 5000, 2, 10000, NULL, 0, 0, '', '', 46),
(32, 54, 'grpkot0dk1fit76ka5t7rgub51', 5000, 4, 20000, NULL, 0, 0, '', '', 47);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `city`
--

INSERT INTO `city` (`id`, `name`, `note`) VALUES
(1, 'Hà Nội', ''),
(2, 'Hồ Chí Minh', ''),
(3, 'Hải Phòng', ''),
(4, 'Đà Nẵng', ''),
(5, 'Hà Giang', ''),
(6, 'Cao Bằng', ''),
(7, 'Lai Châu', ''),
(8, 'Lào Cai', ''),
(9, 'Tuyên Quang', ''),
(10, 'Lạng Sơn', ''),
(11, 'Bắc Kạn', ''),
(12, 'Thái Nguyên', ''),
(13, 'Yên Bái', ''),
(14, 'Sơn La', ''),
(15, 'Phú Thọ', ''),
(16, 'Vĩnh Phúc', ''),
(17, 'Quảng Ninh', ''),
(18, 'Bắc Giang', ''),
(19, 'Bắc Ninh', ''),
(20, 'Hải Dương', ''),
(21, 'Hưng Yên', ''),
(22, 'Hòa Bình', ''),
(23, 'Hà Nam', ''),
(24, 'Nam Định', ''),
(25, 'Thái Bình', ''),
(26, 'Ninh Bình', ''),
(27, 'Thanh Hóa', ''),
(28, 'Nghệ An', ''),
(29, 'Hà Tĩnh', ''),
(30, 'Quảng Bình', ''),
(31, 'Quảng Trị', ''),
(32, 'Thừa Thiên Huế', ''),
(33, 'Quảng Nam', ''),
(34, 'Quảng Ngãi', ''),
(35, 'Kon Tum', ''),
(36, 'Bình Định', ''),
(37, 'Gia Lai', ''),
(38, 'Phú Yên', ''),
(39, 'Đăk Lăk', ''),
(40, 'Khánh Hòa', ''),
(41, 'Lâm Đồng', ''),
(42, 'Bình Phước', ''),
(43, 'Bình Dương', ''),
(44, 'Ninh Thuận', ''),
(45, 'Tây Ninh', ''),
(46, 'Bình Thuận', ''),
(47, 'Đồng Nai', ''),
(48, 'Long An', ''),
(49, 'Đồng Tháp', ''),
(50, 'An Giang', ''),
(51, 'Bà Rịa Vũng Tàu', ''),
(52, 'Tiền Giang', ''),
(53, 'Kiên Giang', ''),
(54, 'Trà Vinh', ''),
(55, 'Bến Tre', ''),
(56, 'Vĩnh Long', ''),
(57, 'Sóc Trăng', ''),
(58, 'Bạc Liêu', ''),
(59, 'Cà Mau', ''),
(60, 'Điện Biên', ''),
(61, 'Đắk Nông', ''),
(62, 'Hậu Giang', ''),
(63, 'Cần thơ', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci,
  `web_meta` text COLLATE utf8_unicode_ci,
  `web_des` text COLLATE utf8_unicode_ci,
  `web_keyword` text COLLATE utf8_unicode_ci,
  `web_logo` text COLLATE utf8_unicode_ci,
  `web_hotline` text COLLATE utf8_unicode_ci,
  `web_phone` text COLLATE utf8_unicode_ci,
  `web_email` text COLLATE utf8_unicode_ci,
  `content_home1` text COLLATE utf8_unicode_ci,
  `content_home2` text COLLATE utf8_unicode_ci,
  `content_home3` text COLLATE utf8_unicode_ci,
  `content_home4` text COLLATE utf8_unicode_ci,
  `content_home5` text COLLATE utf8_unicode_ci,
  `content_home6` text COLLATE utf8_unicode_ci,
  `content_home7` text COLLATE utf8_unicode_ci,
  `content_home8` text COLLATE utf8_unicode_ci,
  `content_home9` text COLLATE utf8_unicode_ci,
  `content_home10` text COLLATE utf8_unicode_ci,
  `slideshow_home` text COLLATE utf8_unicode_ci,
  `link1` text COLLATE utf8_unicode_ci NOT NULL,
  `link2` text COLLATE utf8_unicode_ci NOT NULL,
  `link3` text COLLATE utf8_unicode_ci NOT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner3` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `slideshow_home`, `link1`, `link2`, `link3`, `banner2`, `banner1`, `banner3`, `icon_web`) VALUES
(1, 'Tìm viêc gần nhà', '', 'Tìm viêc gần nhà', 'Tìm viêc gần nhà', 'logotimviec.png', '', '', '', '', '', '', '', '', '', '<li><a href=\"\">Về VietnamWorks</a></li>\r\n                                            <li><a href=\"\">Liên Hệ</a></li>\r\n                                            <li><a href=\"\">Góc Báo Chí</a></li>\r\n                                            <li><a href=\"\">Hỏi Đáp</a></li>\r\n                                            <li><a href=\"\"> Thỏa Thuận Sử Dụng</a></li>\r\n                                            <li><a href=\"\">Quy Định Bảo Mật</a></li>\r\n                                            <li><a href=\"\">Quy Chế Hoạt Động Sàn Giao Dịch Thương Mại Điện Tử VietnamWorks</a></li>\r\n                                            <li><a href=\"\">Ứng Dụng Di Động</a></li>', '<li><a href=\"\">Tài Khoản</a></li>\r\n                                            <li><a href=\"\">Hồ Sơ Của Tôi</a></li>\r\n                                            <li><a href=\"\">Việc Làm Của Tôi</a></li>\r\n                                            <li><a href=\"\">Thông Báo Việc Làm</a></li>\r\n                                            <li><a href=\"\">Phản Hồi</a></li>\r\n                                            <li><a href=\"\">Tư Vấn Nghề Nghiệp</a></li>\r\n                                            <li><a href=\"\">Sơ Đồ Trang Web</a></li>', '', '', '[\"{\\\"image\\\":\\\"slide-organic1.jpg\\\"}\",\"{\\\"image\\\":\\\"slide2.jpg\\\"}\",\"{\\\"image\\\":\\\"slide3.jpg\\\"}\"]', 'avits-smart-readingbrphat-trien-ngon-ngu-tieng-viet-4-10-tuoi', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan', 'banner6.jpg', 'banner5.jpg', 'banner7.jpg', 'logotimviec.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci,
  `lang_web_meta` text COLLATE utf8_unicode_ci,
  `lang_web_des` text COLLATE utf8_unicode_ci,
  `lang_web_keyword` text COLLATE utf8_unicode_ci,
  `lang_web_hotline` text COLLATE utf8_unicode_ci,
  `lang_web_phone` text COLLATE utf8_unicode_ci,
  `lang_web_email` text COLLATE utf8_unicode_ci,
  `lang_content_home1` text COLLATE utf8_unicode_ci,
  `lang_content_home2` text COLLATE utf8_unicode_ci,
  `lang_content_home3` text COLLATE utf8_unicode_ci,
  `lang_content_home4` text COLLATE utf8_unicode_ci,
  `lang_content_home5` text COLLATE utf8_unicode_ci,
  `lang_content_home6` text COLLATE utf8_unicode_ci,
  `lang_content_home7` text COLLATE utf8_unicode_ci,
  `lang_content_home8` text COLLATE utf8_unicode_ci,
  `lang_content_home9` text COLLATE utf8_unicode_ci,
  `lang_content_home10` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) DEFAULT '0',
  `lang_link1` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link2` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link3` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `edit_state`, `lang_link1`, `lang_link2`, `lang_link3`) VALUES
(1, 1, 'vn', 'Tìm viêc gần nhà', '', 'Tìm viêc gần nhà', 'Tìm viêc gần nhà', '', '', '', '', '', '', '', '', '', '<li><a href=\"\">Về VietnamWorks</a></li>\r\n                                            <li><a href=\"\">Liên Hệ</a></li>\r\n                                            <li><a href=\"\">Góc Báo Chí</a></li>\r\n                                            <li><a href=\"\">Hỏi Đáp</a></li>\r\n                                            <li><a href=\"\"> Thỏa Thuận Sử Dụng</a></li>\r\n                                            <li><a href=\"\">Quy Định Bảo Mật</a></li>\r\n                                            <li><a href=\"\">Quy Chế Hoạt Động Sàn Giao Dịch Thương Mại Điện Tử VietnamWorks</a></li>\r\n                                            <li><a href=\"\">Ứng Dụng Di Động</a></li>', '<li><a href=\"\">Tài Khoản</a></li>\r\n                                            <li><a href=\"\">Hồ Sơ Của Tôi</a></li>\r\n                                            <li><a href=\"\">Việc Làm Của Tôi</a></li>\r\n                                            <li><a href=\"\">Thông Báo Việc Làm</a></li>\r\n                                            <li><a href=\"\">Phản Hồi</a></li>\r\n                                            <li><a href=\"\">Tư Vấn Nghề Nghiệp</a></li>\r\n                                            <li><a href=\"\">Sơ Đồ Trang Web</a></li>', '', '', 1, '0', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan'),
(2, 1, 'en', '', '', '', '', '', '', '', 'WHY CHOOSE US?', 'With the operating experiences of plywood factory from 2012, we have supply Good quality Plywood for Packing and Furniture Industry as well as Construction. We are deserved to become your partner to help you have good materials for your production and your trading in plywood industry all over the world. \r\nWe have our team to control all processes of plywood Production very professionally such as Q&C, R&D, Technical team .Moreover, our market is widespread in many foreign countries like Thailand, Korea, Japan, Malaysia, Indonesia, Myamar, Taiwan and others.\r\nComing to us, you wil have many Priorities in Price, Early Delivery as well as in Quality: Strong Density, No Gap, straight side, smooth face....\r\n', '', 'HISTORY', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Việt Nam'),
(2, 'Afghanistan'),
(3, 'Åland Islands'),
(4, 'Albania'),
(5, 'Algeria'),
(6, 'American Samoa'),
(7, 'Andorra'),
(8, 'Angola'),
(9, 'Anguilla'),
(10, 'Antarctica'),
(11, 'Antigua and Barbuda'),
(12, 'Argentina'),
(13, 'Armenia'),
(14, 'Aruba'),
(15, 'Australia'),
(16, 'Austria'),
(17, 'Azerbaijan'),
(18, 'Bahamas'),
(19, 'Bahrain'),
(20, 'Bangladesh'),
(21, 'Barbados'),
(22, 'Belarus'),
(23, 'Belgium'),
(24, 'Belize'),
(25, 'Benin'),
(26, 'Bermuda'),
(27, 'Bhutan'),
(28, 'Bolivia'),
(29, 'Bosnia and Herzegovina'),
(30, 'Botswana'),
(31, 'Bouvet Island'),
(32, 'Brazil'),
(33, 'British Indian Ocean Territory'),
(34, 'Brunei Darussalam'),
(35, 'Bulgaria'),
(36, 'Burkina Faso'),
(37, 'Burundi'),
(38, 'Cambodia'),
(39, 'Cameroon'),
(40, 'Cape Verde'),
(41, 'Cayman Islands'),
(42, 'Central African Republic'),
(43, 'Chad'),
(44, 'Chile'),
(45, 'China'),
(46, 'Christmas Island'),
(47, 'Cocos (Keeling) Islands'),
(48, 'Colombia'),
(49, 'Comoros'),
(50, 'Congo'),
(51, 'Congo, The Democratic Republic of the'),
(52, 'Cook Islands'),
(53, 'Costa Rica'),
(54, 'Croatia'),
(55, 'Cuba'),
(56, 'Cyprus'),
(57, 'Czech Republic'),
(58, 'Denmark'),
(59, 'Djibouti'),
(60, 'Dominica'),
(61, 'Dominican Republic'),
(62, 'Ecuador'),
(63, 'Egypt'),
(64, 'El Salvador'),
(65, 'Equatorial Guinea'),
(66, 'Eritrea'),
(67, 'Estonia'),
(68, 'Ethiopia'),
(69, 'Falkland Islands(Malvinas)'),
(70, 'Faroe Islands'),
(71, 'Fiji'),
(72, 'Finland'),
(73, 'France'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Greece'),
(84, 'Greenland'),
(85, 'Grenada'),
(86, 'Guadeloupe'),
(87, 'Guam'),
(88, 'Guatemala'),
(89, 'Guernsey'),
(90, 'Guinea'),
(91, 'Guinea - Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard Island and Mcdonald Islands'),
(95, 'Holy See(Vatican City State)'),
(96, 'Honduras'),
(97, 'Hong Kong'),
(98, 'Hungary'),
(99, 'Iceland'),
(100, 'India'),
(101, 'Indonesia'),
(102, 'Iran, Islamic Republic Of'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Isle of Man'),
(106, 'Israel'),
(107, 'Italy'),
(108, 'Jamaica'),
(109, 'Japan'),
(110, 'Jersey'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Republic of'),
(116, 'Kuwait'),
(117, 'Kyrgyzstan'),
(118, 'Latvia'),
(119, 'Lebanon'),
(120, 'Lesotho'),
(121, 'Liberia'),
(122, 'Libyan Arab Jamahiriya'),
(123, 'Liechtenstein'),
(124, 'Lithuania'),
(125, 'Luxembourg'),
(126, 'Macao'),
(127, 'Macedonia, The Former Yugoslav Republic of'),
(128, 'Madagascar'),
(129, 'Malawi'),
(130, 'Malaysia'),
(131, 'Maldives'),
(132, 'Mali'),
(133, 'Malta'),
(134, 'Marshall Islands'),
(135, 'Martinique'),
(136, 'Mauritania'),
(137, 'Mauritius'),
(138, 'Mayotte'),
(139, 'Mexico'),
(140, 'Micronesia, Federated States of'),
(141, 'Moldova, Republic of'),
(142, 'Monaco'),
(143, 'Mongolia'),
(144, 'Montserrat'),
(145, 'Morocco'),
(146, 'Mozambique'),
(147, 'Myanmar'),
(148, 'Namibia'),
(149, 'Nauru'),
(150, 'Nepal'),
(151, 'Netherlands'),
(152, 'Netherlands Antilles'),
(153, 'New Caledonia'),
(154, 'New Zealand'),
(155, 'Nicaragua'),
(156, 'Niger'),
(157, 'Nigeria'),
(158, 'Niue'),
(159, 'Norfolk Island'),
(160, 'Northern Mariana Islands'),
(161, 'Norway'),
(162, 'Oman'),
(163, 'Pakistan'),
(164, 'Palau'),
(165, 'Palestinian Territory, Occupied'),
(166, 'Panama'),
(167, 'Papua New Guinea'),
(168, 'Paraguay'),
(169, 'Peru'),
(170, 'Philippines'),
(171, 'Pitcairn'),
(172, 'Poland'),
(173, 'Portugal'),
(174, 'Puerto Rico'),
(175, 'Qatar'),
(176, 'Reunion'),
(177, 'Romania'),
(178, 'Russian Federation'),
(179, 'RWANDA'),
(180, 'Saint Helena'),
(181, 'Saint Kitts and Nevis'),
(182, 'Saint Lucia'),
(183, 'Saint Pierre and Miquelon'),
(184, 'Saint Vincent and the Grenadines'),
(185, 'Samoa'),
(186, 'San Marino'),
(187, 'Sao Tome and Principe'),
(188, 'Saudi Arabia'),
(189, 'Senegal'),
(190, 'Serbia and Montenegro'),
(191, 'Seychelles'),
(192, 'Sierra Leone'),
(193, 'Singapore'),
(194, 'Slovakia'),
(195, 'Slovenia'),
(196, 'Solomon Islands'),
(197, 'Somalia'),
(198, 'South Africa'),
(199, 'South Georgia and the South Sandwich Islands'),
(200, 'Spain'),
(201, 'Sri Lanka'),
(202, 'Sudan'),
(203, 'Suriname'),
(204, 'Svalbard and Jan Mayen'),
(205, 'Swaziland'),
(206, 'Sweden'),
(207, 'Switzerland'),
(208, 'Syrian Arab Republic'),
(209, 'Taiwan, Province of China'),
(210, 'Tajikistan'),
(211, 'Tanzania, United Republic of'),
(212, 'Thailand'),
(213, 'Timor - Leste'),
(214, 'Togo'),
(215, 'Tokelau'),
(216, 'Tonga'),
(217, 'Trinidad and Tobago'),
(218, 'Tunisia'),
(219, 'Turkey'),
(220, 'Turkmenistan'),
(221, 'Turks and Caicos Islands'),
(222, 'Tuvalu'),
(223, 'Uganda'),
(224, 'Ukraine'),
(225, 'United Arab Emirates'),
(226, 'United Kingdom'),
(227, 'United States Minor Outlying Islands'),
(228, 'Uruguay'),
(229, 'Uzbekistan'),
(230, 'Vanuatu'),
(231, 'Venezuela'),
(232, 'Virgin Islands, British'),
(233, 'Virgin Islands, U . S . '),
(234, 'Wallis and Futuna'),
(235, 'Western Sahara'),
(236, 'Yemen'),
(237, 'Zambia'),
(238, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_tuyen_co_ban`
--

CREATE TABLE `dang_tuyen_co_ban` (
  `id` bigint(20) NOT NULL,
  `dang_tuyen_dung_id` bigint(20) NOT NULL,
  `ngay_mua` date NOT NULL,
  `gia` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `vat` bigint(20) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `don_hang_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dang_tuyen_co_ban`
--

INSERT INTO `dang_tuyen_co_ban` (`id`, `dang_tuyen_dung_id`, `ngay_mua`, `gia`, `soluong`, `tong_tien`, `vat`, `state`, `nha_tuyen_dung_id`, `don_hang_id`) VALUES
(5, 4, '2019-05-13', 1722150, 3, 4649805, 5114786, 1, 2, 5),
(6, 4, '2019-05-22', 1722150, 1, 1722150, 1894365, 1, 2, 19),
(7, 5, '2019-05-24', 1722150, 1, 1722150, 1894365, 1, 2, 26),
(8, 7, '2019-05-27', 1722150, 1, 1722150, 1894365, 1, 3, 32),
(9, 7, '2019-05-28', 1722150, 1, 1722150, 1894365, 0, 3, 33);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_tuyen_dung`
--

CREATE TABLE `dang_tuyen_dung` (
  `id` bigint(20) NOT NULL,
  `don_tuyen_id` bigint(20) NOT NULL,
  `date_start_dtd` date NOT NULL,
  `date_end_dtd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dang_tuyen_dung`
--

INSERT INTO `dang_tuyen_dung` (`id`, `don_tuyen_id`, `date_start_dtd`, `date_end_dtd`) VALUES
(3, 3, '0000-00-00', '0000-00-00'),
(4, 4, '2019-05-14', '2019-09-11'),
(5, 5, '2019-05-24', '2019-06-23'),
(6, 6, '0000-00-00', '0000-00-00'),
(7, 7, '2019-05-27', '2019-06-26'),
(8, 8, '0000-00-00', '0000-00-00'),
(9, 9, '0000-00-00', '0000-00-00'),
(10, 10, '0000-00-00', '0000-00-00'),
(11, 11, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datasheets_file`
--

CREATE TABLE `datasheets_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `datasheets_file`
--

INSERT INTO `datasheets_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_mua`
--

CREATE TABLE `dat_mua` (
  `id` int(11) NOT NULL,
  `name_investors` varchar(200) CHARACTER SET utf8 NOT NULL,
  `professional_field` varchar(225) NOT NULL,
  `work_unit` varchar(225) NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `district` varchar(200) CHARACTER SET utf8 NOT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `aspiration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dat_mua`
--

INSERT INTO `dat_mua` (`id`, `name_investors`, `professional_field`, `work_unit`, `phone`, `email`, `address`, `district`, `city`, `chanel`, `aspiration`) VALUES
(2, 'Rèm vải 01', '760', '1', 'tuấn', 'tuan@gmail.com', '0123', 'Hà Nội', '', '', ''),
(3, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng'),
(4, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `declaration_file`
--

CREATE TABLE `declaration_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `declaration_file`
--

INSERT INTO `declaration_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `name`, `note`, `city_id`) VALUES
(1, 'Ba Đình', '', 1),
(2, 'Đống Đa', '', 1),
(3, 'Hoàn Kiếm', '', 1),
(4, 'Hai Bà Trưng', '', 1),
(5, 'Tây Hồ', '', 1),
(6, 'Long Biên', '', 1),
(7, 'Hoàng Mai', '', 1),
(8, 'Cầu Giấy', '', 1),
(9, 'Thanh Xuân', '', 1),
(10, 'Hà Đông', '', 1),
(11, 'Bắc Từ Liêm', '', 1),
(12, 'Nam Từ Liêm', '', 1),
(13, 'Quận 1', '', 2),
(14, 'Quận 2', '', 2),
(15, 'Quận 3', '', 2),
(16, 'Quận 4', '', 2),
(17, 'Quận 5', '', 2),
(18, 'Quận 6', '', 2),
(19, 'Quận 7', '', 2),
(20, 'Quận 8', '', 2),
(21, 'Quận 9', '', 2),
(22, 'Quận 10', '', 2),
(23, 'Quận 11', '', 2),
(24, 'Quận 12', '', 2),
(25, 'Gò Vấp', '', 2),
(26, 'Bình Thạnh', '', 2),
(27, 'Thủ Đức', '', 2),
(28, 'Phú Nhuận', '', 2),
(29, 'Bình Tân', '', 2),
(30, 'Tân Bình', '', 2),
(31, 'Tân Phú', '', 2),
(32, 'Hải Châu', '', 4),
(33, 'Thanh Khê', '', 4),
(34, 'Liên Chiểu', '', 4),
(35, 'Sơn Trà', '', 4),
(36, 'Ngũ Hành Sơn', '', 4),
(37, 'Cẩm Lệ', '', 4),
(38, 'Hồng Bàng', '', 3),
(39, 'Lê Chân', '', 3),
(40, 'Ngô Quyền', '', 3),
(41, 'Hải An', '', 3),
(42, 'Kiến An', '', 3),
(43, 'Dương Kinh', '', 3),
(44, 'Đồ Sơn', '', 3),
(45, 'Ninh Kiều', '', 63),
(46, 'Bình Thủy', '', 63),
(47, 'Cái Răng', '', 63),
(48, 'Ô Môn', '', 63),
(49, 'Thốt Nốt', '', 63),
(50, 'Huyện Bình Chánh', '', 2),
(51, 'Huyện Cần Giờ', '', 2),
(52, 'Huyện Củ Chi', '', 2),
(53, 'Huyện Hóc Môn', '', 2),
(54, 'Huyện Nhà Bè', '', 2),
(55, 'Thành Phố Sơn Tây', '', 1),
(56, 'Huyện Ba Vì', '', 1),
(57, 'Huyện Chương Mỹ', '', 1),
(58, 'Huyện Đan Phượng', '', 1),
(59, 'Huyện Đông Anh', '', 1),
(60, 'Huyện Gia Lâm', '', 1),
(61, 'Huyện Hoài Đức', '', 1),
(62, 'Huyện Mê Linh', '', 1),
(63, 'Huyện Mỹ Đức', '', 1),
(64, 'Huyện Phúc Thọ', '', 1),
(65, 'Huyện Phú Xuyên', '', 1),
(66, 'Huyện Quốc Oai', '', 1),
(67, 'Huyện Sóc Sơn', '', 1),
(68, 'Huyện Thạch Thất', '', 1),
(69, 'Huyện Thanh Oai', '', 1),
(70, 'Huyện Thanh Trì', '', 1),
(71, 'Huyện Thường Tín', '', 1),
(72, 'Huyện Ứng Hòa', '', 1),
(73, 'Huyện An Dương', '', 3),
(74, 'Huyện An Lão', '', 3),
(75, 'Huyện Bạch Long Vĩ', '', 3),
(76, 'Huyện Cát Hải', '', 3),
(77, 'Huyện Kiến Thụy', '', 3),
(78, 'Huyện Thủy Nguyên', '', 3),
(79, 'Huyện Tiên Lãng', '', 3),
(80, 'Huyện Vĩnh Bảo', '', 3),
(81, 'Huyện Hoàng Sa', '', 4),
(82, 'Huyện Hòa Vang', '', 4),
(83, 'Huyện An Phú', '', 50),
(84, 'Huyện Châu Phú', '', 50),
(85, 'Huyện Châu Thành', '', 50),
(86, 'Huyện Chợ Mới', '', 50),
(87, 'Huyện Phú Tân', '', 50),
(88, 'Huyện Tân Châu', '', 50),
(89, 'Huyện Thoại Sơn', '', 50),
(90, 'Huyện Tịnh Biên', '', 50),
(91, 'Huyện Tri Tôn', '', 50),
(92, 'Thành Phố Long Xuyên', '', 50),
(93, 'Thị Xã Châu Đốc', '', 50),
(94, 'Huyện Đông Hải', '', 58),
(95, 'Huyện Giá Rai', '', 58),
(96, 'Huyện Hòa Bình', '', 58),
(97, 'Huyện Hồng Dân', '', 58),
(98, 'Huyện Phước Long', '', 58),
(99, 'Huyện Vĩnh Lợi', '', 58),
(100, 'Thành Phố Bạc Liêu', '', 58),
(101, 'Huyện Châu Đức', '', 51),
(102, 'Huyện Côn Đảo', '', 51),
(103, 'Huyện Đất Đỏ', '', 51),
(104, 'Huyện Long Điền', '', 51),
(105, 'Huyện Tân Thành', '', 51),
(106, 'Huyện Xuyên Mộc', '', 51),
(107, 'Thành Phố Bà Rịa', '', 51),
(108, 'Thành Phố Vũng Tàu', '', 51),
(109, 'Huyện Hiệp Hoà', '', 18),
(110, 'Huyện Lạng Giang', '', 18),
(111, 'Huyện Lục Nam', '', 18),
(112, 'Huyện Lục Ngạn', '', 18),
(113, 'Huyện Sơn Động', '', 18),
(114, 'Huyện Tân Yên', '', 18),
(115, 'Huyện Việt Yên', '', 18),
(116, 'Huyện Yên Dũng', '', 18),
(117, 'Huyện Yên Thế', '', 18),
(118, 'Thành Phố Bắc Giang', '', 18),
(119, 'Huyện Ba Bể', '', 11),
(120, 'Huyện Bạch Thông', '', 11),
(121, 'Huyện Chợ Đồn', '', 11),
(122, 'Huyện Chợ Mới', '', 11),
(123, 'Huyện Na Rì', '', 11),
(124, 'Huyện Ngân Sơn', '', 11),
(125, 'Huyện Pác Nặm', '', 11),
(126, 'Thị Xã Bắc Kạn', '', 11),
(127, 'Huyện Gia Bình', '', 19),
(128, 'Huyện Lương Tài', '', 19),
(129, 'Huyện Quế Võ', '', 19),
(130, 'Huyện Thuận Thành', '', 19),
(131, 'Huyện Tiên Du', '', 19),
(132, 'Huyện Yên Phong', '', 19),
(133, 'Thành Phố Bắc Ninh', '', 19),
(134, 'Thị Xã Từ Sơn', '', 19),
(135, 'Huyện Ba Tri', '', 55),
(136, 'Huyện Bình Đại', '', 55),
(137, 'Huyện Châu Thành', '', 55),
(138, 'Huyện Chợ Lách', '', 55),
(139, 'Huyện Giồng Trôm', '', 55),
(140, 'Huyện Mỏ Cày', '', 55),
(141, 'Huyện Mỏ Cày Bắc', '', 55),
(142, 'Huyện Mỏ Cày Nam', '', 55),
(143, 'Huyện Thạnh Phú', '', 55),
(144, 'Thành Phố Bến Tre', '', 55),
(145, 'Huyện Bàu Bàng', '', 43),
(146, 'Huyện Bắc Tân Uyên', '', 43),
(147, 'Huyện Bến Cát', '', 43),
(148, 'Huyện Dầu Tiếng', '', 43),
(149, 'Huyện Phú Giáo', '', 43),
(150, 'Thành Phố Thủ Dầu Một', '', 43),
(151, 'Thị Xã Dĩ An', '', 43),
(152, 'Thị Xã Tân Uyên', '', 43),
(153, 'Thị Xã Thuận An', '', 43),
(154, 'Huyện An Lão', '', 36),
(155, 'Huyện Hoài Ân', '', 36),
(156, 'Huyện Hoài Nhơn', '', 36),
(157, 'Huyện Phù Cát', '', 36),
(158, 'Huyện Phù Mỹ', '', 36),
(159, 'Huyện Tây Sơn', '', 36),
(160, 'Huyện Tuy Phước', '', 36),
(161, 'Huyện Vân Canh', '', 36),
(162, 'Huyện Vĩnh Thạnh', '', 36),
(163, 'Thành Phố Quy Nhơn', '', 36),
(164, 'Thị Xã An Nhơn', '', 36),
(165, 'Huyện Bù Đăng', '', 42),
(166, 'Huyện Bù Đốp', '', 42),
(167, 'Huyện Bù Gia Mập', '', 42),
(168, 'Huyện Chơn Thành', '', 42),
(169, 'Huyện Đồng Phú', '', 42),
(170, 'Huyện Hớn Quản', '', 42),
(171, 'Huyện Lộc Ninh', '', 42),
(172, 'Huyện Phú Riềng', '', 42),
(173, 'Thị Xã Bình Long', '', 42),
(174, 'Thị Xã Đồng Xoài', '', 42),
(175, 'Thị Xã Phước Long', '', 42),
(176, 'Huyện Bắc Bình', '', 46),
(177, 'Huyện Đảo Phú Quý', '', 46),
(178, 'Huyện Đức Linh', '', 46),
(179, 'Huyện Hàm Tân', '', 46),
(180, 'Huyện Hàm Thuận Bắc', '', 46),
(181, 'Huyện Hàm Thuận Nam', '', 46),
(182, 'Huyện Phú Quý', '', 46),
(183, 'Huyện Tánh Linh', '', 46),
(184, 'Huyện Tuy Phong', '', 46),
(185, 'Thị Xã La Gi', '', 46),
(186, 'Tp Phan Thiết', '', 46),
(187, 'Huyện Bắc Mê', '', 5),
(188, 'Huyện Bắc Quang', '', 5),
(189, 'Huyện Đồng Văn', '', 5),
(190, 'Huyện Hoàng Su Phì', '', 5),
(191, 'Huyện Mèo Vạc', '', 5),
(192, 'Huyện Quản Bạ', '', 5),
(193, 'Huyện Quang Bình', '', 5),
(194, 'Huyện Vị Xuyên', '', 5),
(195, 'Huyện Xín Mần', '', 5),
(196, 'Huyện Yên Minh', '', 5),
(197, 'Thành Phố Hà Giang', '', 5),
(198, 'Huyện Bảo Lạc', '', 6),
(199, 'Huyện Bảo Lâm', '', 6),
(200, 'Huyện Hạ Lang', '', 6),
(201, 'Huyện Hà Quảng', '', 6),
(202, 'Huyện Hòa An', '', 6),
(203, 'Huyện Nguyên Bình', '', 6),
(204, 'Huyện Phục Hòa', '', 6),
(205, 'Huyện Quảng Uyên', '', 6),
(206, 'Huyện Thạch An', '', 6),
(207, 'Huyện Thông Nông', '', 6),
(208, 'Huyện Trà Lĩnh', '', 6),
(209, 'Huyện Trùng Khánh', '', 6),
(210, 'Thành Phố Cao Bằng', '', 6),
(211, 'Huyện Mường Tè', '', 7),
(212, 'Huyện Nậm Nhùn', '', 7),
(213, 'Huyện Phong Thổ', '', 7),
(214, 'Huyện Sìn Hồ', '', 7),
(215, 'Huyện Tam Đường', '', 7),
(216, 'Huyện Tân Uyên', '', 7),
(217, 'Huyện Than Uyên', '', 7),
(218, 'Thị Xã Lai Châu', '', 7),
(219, 'Huyện Bảo Thắng', '', 8),
(220, 'Huyện Bảo Yên', '', 8),
(221, 'Huyện Bát Xát', '', 8),
(222, 'Huyện Bắc Hà', '', 8),
(223, 'Huyện Mường Khương', '', 8),
(224, 'Huyện Sa Pa', '', 8),
(225, 'Huyện Si Ma Cai', '', 8),
(226, 'Huyện Văn Bàn', '', 8),
(227, 'Thành Phố Lào Cai', '', 8),
(228, 'Huyện Chiêm Hoá', '', 9),
(229, 'Huyện Hàm Yên', '', 9),
(230, 'Huyện Lâm Bình', '', 9),
(231, 'Huyện Na Hang', '', 9),
(232, 'Huyện Sơn Dương', '', 9),
(233, 'Huyện Yên Sơn', '', 9),
(234, 'Thành Phố Tuyên Quang', '', 9),
(235, 'Huyện Bắc Sơn', '', 10),
(236, 'Huyện Bình Gia', '', 10),
(237, 'Huyện Cao Lộc', '', 10),
(238, 'Huyện Chi Lăng', '', 10),
(239, 'Huyện Đình Lập', '', 10),
(240, 'Huyện Hữu Lũng', '', 10),
(241, 'Huyện Lộc Bình', '', 10),
(242, 'Huyện Tràng Định', '', 10),
(243, 'Huyện Văn Lãng', '', 10),
(244, 'Huyện Văn Quan', '', 10),
(245, 'Thành Phố Lạng Sơn', '', 10),
(246, 'Huyện Đại Từ', '', 12),
(247, 'Huyện Định Hóa', '', 12),
(248, 'Huyện Đồng Hỷ', '', 12),
(249, 'Huyện Phổ Yên', '', 12),
(250, 'Huyện Phú Bình', '', 12),
(251, 'Huyện Phú Lương', '', 12),
(252, 'Huyện Võ Nhai', '', 12),
(253, 'Thành Phố Thái Nguyên', '', 12),
(254, 'Thị Xã Sông Công', '', 12),
(255, 'Huyện Lục Yên', '', 13),
(256, 'Huyện Mù Cang Chải', '', 13),
(257, 'Huyện Trạm Tấu', '', 13),
(258, 'Huyện Trấn Yên', '', 13),
(259, 'Huyện Văn Chấn', '', 13),
(260, 'Huyện Văn Yên', '', 13),
(261, 'Huyện Yên Bình', '', 13),
(262, 'Thành Phố Yên Bái', '', 13),
(263, 'Thị Xã Nghĩa Lộ', '', 13),
(264, 'Huyện Bắc Yên', '', 14),
(265, 'Huyện Mai Sơn', '', 14),
(266, 'Huyện Mộc Châu', '', 14),
(267, 'Huyện Mường La', '', 14),
(268, 'Huyện Phù Yên', '', 14),
(269, 'Huyện Quỳnh Nhai', '', 14),
(270, 'Huyện Sông Mã', '', 14),
(271, 'Huyện Sốp Cộp', '', 14),
(272, 'Huyện Thuận Châu', '', 14),
(273, 'Huyện Vân Hồ', '', 14),
(274, 'Huyện Yên Châu', '', 14),
(275, 'Thành Phố Sơn La', '', 14),
(276, 'Huyện Cẩm Khê', '', 15),
(277, 'Huyện Đoan Hùng', '', 15),
(278, 'Huyện Hạ Hòa', '', 15),
(279, 'Huyện Lâm Thao', '', 15),
(280, 'Huyện Phù Ninh', '', 15),
(281, 'Huyện Tam Nông', '', 15),
(282, 'Huyện Tân Sơn', '', 15),
(283, 'Huyện Thanh Ba', '', 15),
(284, 'Huyện Thanh Sơn', '', 15),
(285, 'Huyện Thanh Thủy', '', 15),
(286, 'Huyện Yên Lập', '', 15),
(287, 'Thành Phố Việt Trì', '', 15),
(288, 'Thị Xã Phú Thọ', '', 15),
(289, 'Huyện Bình Xuyên', '', 16),
(290, 'Huyện Lập Thạch', '', 16),
(291, 'Huyện Mê Linh', '', 16),
(292, 'Huyện Sông Lô', '', 16),
(293, 'Huyện Tam Dương', '', 16),
(294, 'Huyện Tam Đảo', '', 16),
(295, 'Huyện Vĩnh Tường', '', 16),
(296, 'Huyện Yên Lạc', '', 16),
(297, 'Thành Phố Vĩnh Yên', '', 16),
(298, 'Thị Xã Phúc Yên', '', 16),
(299, 'Huyện Ba Chẽ', '', 17),
(300, 'Huyện Bình Liêu', '', 17),
(301, 'Huyện Cô Tô', '', 17),
(302, 'Huyện Đầm Hà', '', 17),
(303, 'Huyện Đông Triều', '', 17),
(304, 'Huyện Hải Hà', '', 17),
(305, 'Huyện Hoành Bồ', '', 17),
(306, 'Huyện Tiên Yên', '', 17),
(307, 'Huyện Vân Đồn', '', 17),
(308, 'Thành Phố Cẩm Phả', '', 17),
(309, 'Thành Phố Hạ Long', '', 17),
(310, 'Thành Phố Móng Cái', '', 17),
(311, 'Thành Phố Uông Bí', '', 17),
(312, 'Thị Xã Quảng Yên', '', 17),
(313, 'Huyện Bình Giang', '', 20),
(314, 'Huyện Cẩm Giàng', '', 20),
(315, 'Huyện Gia Lộc', '', 20),
(316, 'Huyện Kim Thành', '', 20),
(317, 'Huyện Kinh Môn', '', 20),
(318, 'Huyện Nam Sách', '', 20),
(319, 'Huyện Ninh Giang', '', 20),
(320, 'Huyện Thanh Hà', '', 20),
(321, 'Huyện Thanh Miện', '', 20),
(322, 'Huyện Tứ Kỳ', '', 20),
(323, 'Thành Phố Hải Dương', '', 20),
(324, 'Thị Xã Chí Linh', '', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL,
  `vat` bigint(20) NOT NULL,
  `ngay` date NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id`, `total`, `vat`, `ngay`, `nha_tuyen_dung_id`) VALUES
(5, 4649805, 5114786, '2019-05-13', 2),
(6, 5766300, 6342930, '2019-05-14', 2),
(7, 2883150, 3171465, '2019-05-14', 2),
(8, 1896300, 2085930, '2019-05-15', 2),
(9, 8475300, 9322830, '2019-05-15', 2),
(10, 3444300, 3788730, '2019-05-15', 2),
(11, 7391700, 8130870, '2019-05-15', 2),
(12, 8088300, 8897130, '2019-05-15', 2),
(13, 8088300, 8897130, '2019-05-15', 2),
(14, 11571300, 12728430, '2019-05-16', 2),
(15, 1896300, 2085930, '2019-05-16', 2),
(16, 15441300, 16985430, '2019-05-16', 2),
(17, 6858608, 7544468, '2019-05-18', 2),
(18, 6858608, 7544468, '2019-05-18', 2),
(19, 36397350, 40037085, '2019-05-22', 2),
(20, 2689650, 2958615, '2019-05-22', 2),
(21, 948150, 1042965, '2019-05-22', 2),
(22, 58050000, 63855000, '2019-05-22', 2),
(23, 58050000, 63855000, '2019-05-22', 2),
(24, 58050000, 63855000, '2019-05-22', 2),
(25, 29025000, 31927500, '2019-05-23', 2),
(26, 1722150, 1894365, '2019-05-24', 2),
(27, 29025000, 31927500, '2019-05-27', 3),
(28, 29025000, 31927500, '2019-05-27', 4),
(29, 29025000, 31927500, '2019-05-27', 5),
(30, 29025000, 31927500, '2019-05-27', 6),
(31, 29025000, 31927500, '2019-05-27', 7),
(32, 36397350, 40037085, '2019-05-27', 3),
(33, 65422350, 71964585, '2019-05-28', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_tuyen`
--

CREATE TABLE `don_tuyen` (
  `id` bigint(20) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `cap_bac` int(11) NOT NULL,
  `career` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `city` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `salary1` int(11) NOT NULL,
  `salary2` int(11) NOT NULL,
  `mota` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `yeucau` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `email` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `quymo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phucloi1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phucloi2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phucloi3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `alias` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `ngay` date NOT NULL,
  `it` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `street` int(11) NOT NULL,
  `ky_nang` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `company_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `views` int(11) NOT NULL,
  `deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `don_tuyen`
--

INSERT INTO `don_tuyen` (`id`, `name`, `cap_bac`, `career`, `city`, `salary1`, `salary2`, `mota`, `yeucau`, `email`, `company`, `quymo`, `address`, `phucloi1`, `phucloi2`, `phucloi3`, `image`, `alias`, `nha_tuyen_dung_id`, `ngay`, `it`, `district`, `street`, `ky_nang`, `company_note`, `views`, `deadline`) VALUES
(3, 'Thợ xây', 2, '[\"66\",\"68\",\"72\"]', '[\"1\",\"3\",\"2\"]', 1000, 2000, 'mô tả 1\'\r\nmô tả 2', 'yêu cầu 1\'\r\nyêu cầu 2', 'tuan@gmail.com', 'Công ty TNHH Goldbride', 'quy mô', 'địa chỉ', 'Lương tháng 13 + lương hiệu quả công việc', 'Chế độ BHXH, BHYT, BHTN theo Luật lao động', 'Cơ hội làm việc trong môi trường rất năng động, chuyên nghiệp', '1557507894tuan@gmail.com55711472_595004017577098_6736092150015983616_n.jpg', 'tho-xay', 2, '2019-05-10', 0, 1, 0, NULL, NULL, 0, '0000-00-00'),
(4, 'Thợ hàn', 1, '[\"65\",\"66\",\"69\"]', '[\"1\"]', 1000, 3000, '* Vai trò: \r\n•	Giúp công việc quan hệ kinh doanh của BLĐ được theo dõi, hỗ trợ xuyên suốt nhanh chóng và hiệu quả hơn \r\n•	Giúp thời gian làm việc của BLĐ có hiệu năng cao hơn \r\n•	Giúp cân bằng hiệu quả quan hệ khach hàng và quản trị nội hộ tốt hơn \r\n•	Giúp triển khai các ý tưởng ý kiến chỉ đạo của BLĐ được nhanh chóng và kịp thời \r\n•	Giúp theo dõi tiến độ các dự án. \r\n\r\n* Nhiệm vụ: \r\n•	Lập kế hoạch công việc của BLĐ cần chỉ đạo các đầu mối \r\n•	Đôn đốc các hoạt động Kinh doanh và dịch vụ quan trọng của BLĐ \r\n•	Sắp xếp lịch họp, làm việc với khách hàng, đối tác của BLĐ \r\n•	Chuẩn bị nội dung cho các meeting của BLĐ \r\n•	Tham gia các meeting với khách hàng, đối tác theo yêu cầu của BLĐ \r\n•	Theo dõi xuyên suốt (Follow-up ) các nội dung trao đổi làm việc với khách hàng đối tác \r\n•	Theo dõi các công việc quản lý và chuyên môn \r\n•	Điều phối công việc liên quan đến đối tác và các đầu mối \r\n•	Điều chỉnh lịch hoạt động của BLĐ phù hợp với tình hình ưu tiên các việc \r\n•	Đi công tác trong và ngoài nước theo yêu cầu của BLĐ ', '* Yêu cầu \r\n•	Chịu áp lực cao \r\n•	Trình độ đại học các ngành Ngoại thương, Kinh tế, Bách khoa, Đại học công nghệ, Quan hệ quốc tế….. \r\n•	Từng có kinh nghiệm làm trợ lý hoặc công việc có tính tổng hợp \r\n•	Kỹ năng giao tiếp rất tốt \r\n•	Khả năng phân tích tổng hợp tốt \r\n•	Khả năng thích ứng với thay đổi cao \r\n•	KHả năng giải quyết vấn đề tốt \r\n•	Đọc hiểu tiếng anh khá \r\n•	Phong cách làm việc cụ thể , tỉ mỉ, chu đáo \r\n•	Phong thái giao tiếp tự tin, dễ tạo thiện cảm \r\n•	Sẵn sàng đi công tác \r\n\r\n* Chế độ, Thu nhập tiền lương \r\n•	Từ 13tr đến 15tr + thưởng hiệu quả công việc \r\n•	Chế độ BHXH, BHYT, BHTN theo Luật lao động \r\n•	Cơ hội làm việc trong môi trường rất năng động, chuyên nghiệp \r\n•	Cơ hội tham quan, nghỉ mát theo chế độ công ty \r\n•	Môi trường làm việc trẻ trung năng động, phong cách hiện đại \r\n•	Cơ hội học hỏi \r\n•	Lương tháng 13 + Tiền Thưởng theo kết quả kinh doanh của công ty ', 'tuan@gmail.com', 'Công ty TNHH Goldbride', '25-99 nhân viên', 'Tầng 6, số 36 Hoàng Cầu, Hà Nội.', 'Có thưởng nóng theo hiệu quả công việc', 'Tham dự các khóa đào tạo để bổ sung thêm kiến thức, kỹ năng phục vụ công việc', 'Môi trường làm việc năng động, thân thiện, cởi mở, phát huy tối đa năng lực bản thân', '1558689146tuan@gmail.comtopica.png', 'tho-han', 2, '2019-05-30', 1, 2, 1, 'Hành Chính, Kinh Tế Thương Mại, Ngoại Thương', 'Công ty cổ phần PeopleOne: Doanh nghiệp chuyên về Tư vấn đào tạo và chuyển giao tri thức Đổi mới sang tạo kinh doanh cho doanh nghiệp thông qua các hoạt động sau : \r\n\r\n1. Dịch vụ tư vấn đổi mới và nâng cao hiệu quả quản trị kinh doanh \r\n2. Dịch vụ tư vấn và triển khai chương trình phát triển năng lực tổ chức, năng lực lãnh đạo \r\n3. Phát triển văn hoá doanh nghiệp theo mô hình và chiến lược đổi mới \r\n4. Dịch vụ học tập trực tuyến về quản trị và phục vụ đổi mới kinh doanh \r\n5. Dịch huấn luyện năng lực quản trị chung, quản trị khách hang, năng lực lãnh đạo \r\n6. Dịch vụ tư vấn triển khai các giải pháo công nghệ thông tin tiên tiến phục vụ đổi mới doanh nghiệp', 36, '2019-05-22'),
(5, 'Thợ mộc', 1, '[\"65\",\"66\",\"69\"]', '[\"1\"]', 5000, 10000, '1', '2', 'tuan@gmail.com', 'Công ty TNHH Goldbride', '10', '', '', '', '', '1558534093tuan@gmail.comlogocopy.png', 'tho-moc', 2, '2019-05-22', 0, 1, 0, 'Hành chính', '', 3, '2019-05-26'),
(6, 'Thợ điện', 1, '[\"65\",\"66\",\"69\"]', '[\"1\"]', 10000, 20000, '1', '2', 'tuan@gmail.com', 'Công ty TNHH Goldbride', '', '', '', '', '', '', 'tho-dien', 2, '2019-05-22', 1, 1, 0, 'Hành chính', '', 0, '2019-05-23'),
(7, 'Việc số một', 2, '[\"65\",\"69\"]', '[\"50\",\"43\"]', 5000, 20000, '1', '2', 'tuan1@gmail.com', 'Công ty TNHH so1', '22', '', '', '', '', '1558947379tuan1@gmail.comproduct1.jpg', 'viec-so-mot', 3, '2019-05-30', 1, 0, 0, 'Hành chính', '', 1, '2019-05-27'),
(8, 'Việc số hai', 1, '[\"66\"]', '[\"1\"]', 5000, 10000, '1', '2', 'tuan2@gmail.com', 'Công ty TNHH so2', '', '', '', '', '', '1558947661tuan2@gmail.comproduct2.jpg', 'viec-so-hai', 4, '2019-05-27', 0, 1, 0, 'Hành chính', '', 0, '2019-05-27'),
(9, 'Việc số ba', 1, '[\"65\"]', '[\"50\"]', 1000, 10000, '1', '2', 'tuan3@gmail.com', 'Công ty TNHH so3', '', '', '', '', '', '1558947791tuan3@gmail.comproduct3.jpg', 'viec-so-ba', 5, '2019-05-27', 0, 0, 0, 'Hành chính', '', 0, '2019-05-27'),
(10, 'Việc số bốn', 1, '[\"65\"]', '[\"50\"]', 1000, 2000, '1', '2', 'tuan4@gmail.com', 'Công ty TNHH so4', '', '', '', '', '', '1558947917tuan4@gmail.comproduct4.jpg', 'viec-so-bon', 6, '2019-05-27', 0, 0, 0, 'Hành chính', '', 0, '2019-05-27'),
(11, 'Việc số năm', 1, '[\"66\"]', '[\"50\"]', 1000, 20000, '1', '2', 'tuan5@gmail.com', 'Công ty TNHH so5', '', '', '', '', '', '1558948054tuan5@gmail.comproduct5.jpg', 'viec-so-nam', 7, '2019-05-27', 1, 0, 0, 'Hành chính', '', 0, '2019-05-27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gia_tang_do_dam_do`
--

CREATE TABLE `gia_tang_do_dam_do` (
  `id` bigint(20) NOT NULL,
  `dang_tuyen_dung_id` bigint(20) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `gia_tang_do_dam_do`
--

INSERT INTO `gia_tang_do_dam_do` (`id`, `dang_tuyen_dung_id`, `date_start`, `date_end`) VALUES
(1, 4, '2019-05-15', '2019-08-13'),
(2, 5, '0000-00-00', '0000-00-00'),
(3, 6, '0000-00-00', '0000-00-00'),
(4, 7, '2019-05-27', '2019-06-26'),
(5, 8, '0000-00-00', '0000-00-00'),
(6, 9, '0000-00-00', '0000-00-00'),
(7, 10, '0000-00-00', '0000-00-00'),
(8, 11, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gia_tang_do_dam_do_phu`
--

CREATE TABLE `gia_tang_do_dam_do_phu` (
  `id` bigint(20) NOT NULL,
  `gia_tang_do_dam_do_id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `don_hang_id` bigint(20) NOT NULL,
  `ngay_mua` date NOT NULL,
  `gia` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `vat` bigint(20) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `gia_tang_do_dam_do_phu`
--

INSERT INTO `gia_tang_do_dam_do_phu` (`id`, `gia_tang_do_dam_do_id`, `nha_tuyen_dung_id`, `don_hang_id`, `ngay_mua`, `gia`, `soluong`, `tong_tien`, `vat`, `state`) VALUES
(1, 1, 2, 8, '2019-05-15', 948150, 2, 1896300, 2085930, 1),
(2, 1, 2, 19, '2019-05-22', 948150, 1, 948150, 1042965, 1),
(3, 2, 2, 21, '2019-05-22', 948150, 1, 948150, 1042965, 0),
(4, 4, 3, 32, '2019-05-27', 948150, 1, 948150, 1042965, 1),
(5, 4, 3, 33, '2019-05-28', 948150, 1, 948150, 1042965, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gia_tang_uu_tien`
--

CREATE TABLE `gia_tang_uu_tien` (
  `id` bigint(20) NOT NULL,
  `dang_tuyen_dung_id` bigint(20) NOT NULL,
  `date_start_gtut` date DEFAULT NULL,
  `date_end_gtut` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `gia_tang_uu_tien`
--

INSERT INTO `gia_tang_uu_tien` (`id`, `dang_tuyen_dung_id`, `date_start_gtut`, `date_end_gtut`) VALUES
(3, 4, '2019-05-15', '2019-08-13'),
(4, 5, '0000-00-00', '0000-00-00'),
(5, 6, '0000-00-00', '0000-00-00'),
(6, 7, '2019-05-28', '2019-06-27'),
(7, 8, '0000-00-00', '0000-00-00'),
(8, 9, '0000-00-00', '0000-00-00'),
(9, 10, '0000-00-00', '0000-00-00'),
(10, 11, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gia_tang_uu_tien_phu`
--

CREATE TABLE `gia_tang_uu_tien_phu` (
  `id` bigint(20) NOT NULL,
  `gia_tang_uu_tien_id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `don_hang_id` bigint(20) NOT NULL,
  `ngay_mua` date NOT NULL,
  `gia` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `vat` bigint(20) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `gia_tang_uu_tien_phu`
--

INSERT INTO `gia_tang_uu_tien_phu` (`id`, `gia_tang_uu_tien_id`, `nha_tuyen_dung_id`, `don_hang_id`, `ngay_mua`, `gia`, `soluong`, `tong_tien`, `vat`, `state`) VALUES
(1, 3, 2, 9, '2019-05-15', 4237650, 2, 8475300, 9322830, 1),
(2, 3, 2, 19, '2019-05-22', 4237650, 1, 4237650, 4661415, 1),
(3, 6, 3, 32, '2019-05-27', 4237650, 1, 4237650, 4661415, 1),
(4, 6, 3, 33, '2019-05-28', 4237650, 1, 4237650, 4661415, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `goi_dich_vu`
--

CREATE TABLE `goi_dich_vu` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `goi_dich_vu`
--

INSERT INTO `goi_dich_vu` (`id`, `name`, `note`, `price`) VALUES
(1, 'Đăng Tuyển Cơ Bản', NULL, 1722150),
(2, 'Ưu Tiên Ngành Nghề', 'Vị trí tuyển dụng sẽ được đăng ở khu vực ưu tiên trong 1 ngành nghề tương ứng trong 15 ngày.', 2883150),
(3, 'Gia Tăng Tô Đậm & Đỏ', 'Vị trí đăng tuyển sẽ được in đậm và đỏ ở 3 ngành nghề trong vòng 30 ngày', 948150),
(4, 'Gia Tăng Ưu Tiên Ngành Nghề', 'Vị trí tuyển dụng sẽ được đăng ở khu vực ưu tiên trong 3 ngành nghề tương ứng trong 30 ngày.', 4237650),
(5, 'Tự Động Làm Mới Tin Tuyển Dụng Hằng Tuần', 'Tin tuyển dụng được tự động làm mới 3 lần giúp vị trí tuyển dụng tái hiển thị tại khu vực đầu trang kết quả tìm kiếm.', 1722150),
(6, 'Tự Động Làm Mơi Tin Tuyển Dụng Hằng Ngày', 'Tin tuyển dụng được tự động làm mới trong 7 ngày liên tiếp giúp vị trí tuyển dụng liên tục xuất hiện tại khu vực đầu trang kết quả tìm kiếm.', 3695850),
(7, 'Việc Làm Cấp Quản Lý', 'Công việc dành cho cấp quản lý của bạn sẽ đăng nổi bật và ưu tiên tại khu vực dành cho những công việc thuộc Cấp Quản Lý trong vòng 30 ngày, giúp tin đăng tuyển dễ dàng thu hút đúng đối tượng ứng viên cấp quản lý. Ngoài ra, tin đăng tuyển sẽ được gắn với thẻ ‘’Top Management’’ trong trang kết quả tìm kiếm.', 4044150),
(8, 'Việc Làm Trên Trang Chủ', 'Vị trí tuyển dụng được đặt ngay trung tâm trang chủ của VietnamWorks trong chuyên mục \"Việc làm tốt nhất\" trong vòng 15 ngày.', 5785650),
(9, 'Làm Mới Tin Tuyển Dụng', 'Tin tuyển dụng được tự động làm mới giúp vị trí tuyển dụng tái hiển thị tại khu vực đầu trang kết quả tìm kiếm.', 948150),
(10, 'Việc Làm Thu Hút', 'Vị trí tuyển dụng được đặt ngay trung tâm trang chủ của VietnamWorks trong chuyên mục \"Việc làm tốt nhất\" trong vòng 15 ngày với biểu tượng \"HOT\".', 7720650),
(11, 'Tìm Kiếm Ứng Viên', 'Không giới hạn trong việc tìm kiếm và xem hồ sơ ứng viên. Tuyển dụng tài năng ngay từ bây giờ.', 2689650),
(12, 'Banner Chính ở Trang chủ 15-ngày', 'Banner Chính ở Trang Chủ 15-ngày', 29025000),
(13, 'Banner bên phải kết quả tìm kiếm 30-ngày', 'Banner bên phải kết quả tìm kiếm 30-ngày', 19350000),
(14, 'Trắc nghiệm nghề nghiệp 3E-IP, Goí-10 VN', 'Trắc nghiệm nghề nghiệp 3E-IP, Gói-10 VN', 4295700),
(15, 'Trắc nghiệm nghề nghiệp 3E-IP, Gói-10 Global', 'Trắc nghiệm nghề nghiệp- 3E-IP, Gói-10 Global', 12771000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoc_van`
--

CREATE TABLE `hoc_van` (
  `id` bigint(20) NOT NULL,
  `ung_vien_id` bigint(20) NOT NULL,
  `nganh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `truong` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `bang_cap` int(11) NOT NULL,
  `date_tu` date NOT NULL,
  `date_den` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hoc_van`
--

INSERT INTO `hoc_van` (`id`, `ung_vien_id`, `nganh`, `truong`, `bang_cap`, `date_tu`, `date_den`) VALUES
(13, 1, 'it', 'đai hoc', 4, '2019-05-00', '0000-00-00'),
(14, 1, 'toan', 'cao đẳng', 3, '2019-05-00', '2019-06-00'),
(15, 1, 'a', 'a', 1, '2019-05-00', '2019-05-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `installation_file`
--

CREATE TABLE `installation_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `installation_file`
--

INSERT INTO `installation_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kinh_nghiem`
--

CREATE TABLE `kinh_nghiem` (
  `id` bigint(20) NOT NULL,
  `ung_vien_id` bigint(20) NOT NULL,
  `company` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `chuc_danh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_tu` date NOT NULL,
  `date_den` date NOT NULL,
  `date_now` int(11) NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `kinh_nghiem`
--

INSERT INTO `kinh_nghiem` (`id`, `ung_vien_id`, `company`, `chuc_danh`, `date_tu`, `date_den`, `date_now`, `note`) VALUES
(11, 1, 'TNHH abc', 'Giám đốc', '2019-05-00', '0000-00-00', 1, '123'),
(12, 1, 'TNHH BCA', 'Phó giám đốc', '2019-05-00', '2019-06-00', 0, '321\''),
(13, 1, 'q', 'q', '2019-05-00', '2019-05-00', 0, '111');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ky_nang`
--

CREATE TABLE `ky_nang` (
  `id` bigint(20) NOT NULL,
  `career_id` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `ung_vien_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ky_nang`
--

INSERT INTO `ky_nang` (`id`, `career_id`, `star`, `ung_vien_id`) VALUES
(29, 69, 5, 1),
(30, 66, 2, 1),
(31, 0, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lam_moi_tin`
--

CREATE TABLE `lam_moi_tin` (
  `id` bigint(20) NOT NULL,
  `dang_tuyen_dung_id` bigint(20) NOT NULL,
  `date_start_lmt` date NOT NULL,
  `date_end_lmt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lam_moi_tin`
--

INSERT INTO `lam_moi_tin` (`id`, `dang_tuyen_dung_id`, `date_start_lmt`, `date_end_lmt`) VALUES
(1, 4, '2019-05-28', '2019-05-30'),
(2, 5, '0000-00-00', '0000-00-00'),
(3, 6, '0000-00-00', '0000-00-00'),
(4, 7, '2019-05-28', '2019-05-30'),
(5, 8, '0000-00-00', '0000-00-00'),
(6, 9, '0000-00-00', '0000-00-00'),
(7, 10, '0000-00-00', '0000-00-00'),
(8, 11, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lam_moi_tin_phu`
--

CREATE TABLE `lam_moi_tin_phu` (
  `id` bigint(20) NOT NULL,
  `lam_moi_tin_id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `don_hang_id` bigint(20) NOT NULL,
  `ngay_mua` date NOT NULL,
  `gia` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `vat` bigint(20) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lam_moi_tin_phu`
--

INSERT INTO `lam_moi_tin_phu` (`id`, `lam_moi_tin_id`, `nha_tuyen_dung_id`, `don_hang_id`, `ngay_mua`, `gia`, `soluong`, `tong_tien`, `vat`, `state`) VALUES
(1, 1, 2, 15, '2019-05-16', 948150, 2, 1896300, 2085930, 1),
(2, 1, 2, 19, '2019-05-22', 948150, 1, 948150, 1042965, 1),
(3, 4, 3, 32, '2019-05-27', 948150, 1, 948150, 1042965, 1),
(4, 4, 3, 33, '2019-05-28', 948150, 1, 948150, 1042965, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(1, 'tuấn', 'tuan@gmail.com', '0245', 'Hà Nội', 'ok', '2017-11-29 12:51:52'),
(2, 'Hang Pham Thuy', 'ngockhanh260614@gmail.com', '973378669', 'Thanh Xuân, Thanh Xuân', 'xfghfghfgh', '2017-12-03 04:06:32'),
(3, 'ewrerwer', 'viethung95cute@gmail.com', '01672545654', 'hà nội', '', '2018-04-05 06:24:46'),
(4, 'tuấn', 'tuan@gmail.com', '0123', '', '13-7', '2018-07-13 11:24:19'),
(5, 'Trương Quang Tuấn', 'tuan@gmail.com', '987654321', '', '13-11', '2018-11-13 01:36:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listings_certifications_file`
--

CREATE TABLE `listings_certifications_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `listings_certifications_file`
--

INSERT INTO `listings_certifications_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luu_viec`
--

CREATE TABLE `luu_viec` (
  `id` bigint(20) NOT NULL,
  `ung_vien_id` bigint(20) NOT NULL,
  `don_tuyen_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `luu_viec`
--

INSERT INTO `luu_viec` (`id`, `ung_vien_id`, `don_tuyen_id`) VALUES
(3, 1, 5),
(4, 1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci,
  `menu_sort_order` int(11) DEFAULT '0',
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(114, 'Trang chủ', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(147, 'Sản phẩm', 3, 2, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(151, 'Tư vấn', 3, 13, '', 0, 0, 0, 36, 0, 1, 0, 0, 0, NULL),
(152, 'ADIDAS', 0, 3, '', 140, 0, 0, 0, 0, 1, 147, 0, 0, NULL),
(153, 'Liên hệ', 5, 9, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(155, 'Về chúng tôi', 2, 13, '', 0, 0, 0, 35, 0, 1, 0, 0, 0, NULL),
(164, 'Tin tức sự kiện', 4, 6, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(165, 'NIKE', 0, 3, '', 139, 0, 0, 0, 0, 1, 147, 0, 0, NULL),
(166, 'Thương hiệu khác', 0, 3, '', 124, 0, 0, 0, 0, 1, 147, 0, 0, NULL),
(167, 'SALE OFF', 0, 8, 'sale', 0, 0, 0, 0, 0, 1, 147, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', 'Trang chủ', 1, '', 114),
(206, 'en', 'Trang chủ - vn', 1, '', 114),
(271, 'vn', 'Sản phẩm', 0, '', 147),
(272, 'en', 'Sản phẩm', 0, '', 147),
(279, 'vn', 'Tư vấn', 0, '', 151),
(280, 'en', 'Lịch khám', 0, 'lich-kham', 151),
(281, 'vn', 'ADIDAS', 0, '', 152),
(282, 'en', 'ADIDAS', 0, '', 152),
(283, 'vn', 'Liên hệ', 0, '', 153),
(284, 'en', 'Liên hệ', 0, '', 153),
(287, 'vn', 'Về chúng tôi', 0, '', 155),
(288, 'en', 'Về chúng tôi', 0, '', 155),
(305, 'vn', 'Tin tức sự kiện', 0, '', 164),
(306, 'en', 'Tin tức sự kiện', 0, '', 164),
(307, 'vn', 'NIKE', 0, '', 165),
(308, 'en', 'NIKE', 0, '', 165),
(309, 'vn', 'Thương hiệu khác', 0, '', 166),
(310, 'en', 'Thương hiệu khác', 0, '', 166),
(311, 'vn', 'SALE OFF', 0, 'sale', 167),
(312, 'en', 'SALE OFF', 0, 'sale', 167);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `muc_luong`
--

CREATE TABLE `muc_luong` (
  `id` int(11) NOT NULL,
  `tu` bigint(20) NOT NULL,
  `den` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `muc_luong`
--

INSERT INTO `muc_luong` (`id`, `tu`, `den`) VALUES
(1, 0, 10000000),
(3, 10000000, 20000000),
(4, 20000000, 50000000),
(5, 50000000, 100000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_des` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `news_img` text COLLATE utf8_unicode_ci,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `news_sub_info1` text COLLATE utf8_unicode_ci,
  `news_sub_info2` text COLLATE utf8_unicode_ci,
  `news_sub_info3` text COLLATE utf8_unicode_ci,
  `news_sub_info4` text COLLATE utf8_unicode_ci,
  `news_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(106, 'Richard McClintock', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p style=\"margin-left:0cm; margin-right:0cm\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'image-1-770x550.jpg', 0, 74, '', '2018-04-02 13:04:52', '2019-05-20 23:05:51', 1, '', '', '', '', '', 'Richard McClintock', '', 'richard-mcclintock', '', 1),
(107, 'making it over', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'image-7-770x550.jpg', 0, 75, '', '2018-04-02 13:04:07', '2019-05-20 23:05:45', 1, '', '', '', '', '', 'making it over', '', 'making-it-over', '', 1),
(108, 'classical Latin literature', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'image-6-770x550.jpg', 0, 76, '', '2018-04-02 13:04:18', '2019-05-20 23:05:38', 1, '', '', '', '', '', 'classical Latin literature', '', 'classical-latin-literature', '', 1),
(109, 'Lisp Intensive Treatment', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'image-4-770x550.jpg', 0, 59, '', '2018-04-05 11:04:35', '2018-11-14 14:11:24', 1, '', '', '', '', '', 'Lisp Intensive Treatment', '', 'lisp-intensive-treatment', '', 1),
(110, 'It has roots in a piece', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'image-3-770x550.jpg', 0, 74, '', '2018-04-05 11:04:16', '2018-11-14 14:11:04', 1, '', '', '', '', '', 'It has roots in a piece', '', 'it-has-roots-in-a-piece', '', 1),
(111, ' simply random text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'image-2-770x550.jpg', 0, 75, '', '2018-04-21 15:04:58', '2019-05-20 23:05:18', 1, '', '', '', '', '', ' simply random text', '', 'simply-random-text', '', 1),
(112, 'Contrary to popular belief', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'image-1-770x550.jpg', 0, 76, '', '2018-04-21 16:04:44', '2019-05-20 23:05:14', 1, '', '', '', '', '', 'Contrary to popular belief', '', 'contrary-to-popular-belief', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci,
  `newscat_des` text COLLATE utf8_unicode_ci,
  `newscat_content` text COLLATE utf8_unicode_ci,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `newscat_img` text COLLATE utf8_unicode_ci,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(59, 'Các công ty tham gia gần nhất', '', '', 0, 0, '2019-05-20 23:05:51', NULL, 1, 's1.jpg', '', '', '', '', '', 'Các công ty tham gia gần nhất', '', 'cac-cong-ty-tham-gia-gan-nhat', '', 1),
(74, 'Các công ty có số người theo dõi nhiều nhất', '', '', 0, 0, '2019-05-20 23:05:44', NULL, 1, NULL, '', '', '', '', '', 'Các công ty có số người theo dõi nhiều nhất', '', 'cac-cong-ty-co-so-nguoi-theo-doi-nhieu-nhat', '', 1),
(75, 'Các công ty có lượt xem nhiều nhất', '', '', 0, 0, '2019-05-20 23:05:56', NULL, 1, '', '', '', '', '', '', 'Các công ty có lượt xem nhiều nhất', '', 'cac-cong-ty-co-luot-xem-nhieu-nhat', '', 1),
(76, 'Các công ty đang tuyển dụng', '', '', 0, 0, '2019-05-20 23:05:20', NULL, 1, '', '', '', '', '', '', 'Các công ty đang tuyển dụng', '', 'cac-cong-ty-dang-tuyen-dung', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci,
  `lang_newscat_des` text COLLATE utf8_unicode_ci,
  `lang_newscat_content` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(113, 59, 'vn', 'Các công ty tham gia gần nhất', '', NULL, '', '', '', '', '', 0, 'cac-cong-ty-tham-gia-gan-nhat', '', 'Các công ty tham gia gần nhất', ''),
(114, 59, 'en', 'Dịch vụ', '', '', '', '', '', '', '', 0, 'dich-vu', '', 'Dịch vụ', ''),
(143, 74, 'vn', 'Các công ty có số người theo dõi nhiều nhất', '', NULL, '', '', '', '', '', 0, 'cac-cong-ty-co-so-nguoi-theo-doi-nhieu-nhat', '', 'Các công ty có số người theo dõi nhiều nhất', ''),
(144, 74, 'en', ' Học viên', '', '', '', '', '', '', '', 0, 'hoc-vien', '', ' Học viên', ''),
(145, 75, 'vn', 'Các công ty có lượt xem nhiều nhất', '', '', '', '', '', '', '', 0, 'cac-cong-ty-co-luot-xem-nhieu-nhat', '', 'Các công ty có lượt xem nhiều nhất', ''),
(146, 75, 'en', 'english version Các công ty có lượt xem nhiều nhất', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cac-cong-ty-co-luot-xem-nhieu-nhat', '', 'Các công ty có lượt xem nhiều nhất', ''),
(147, 76, 'vn', 'Các công ty đang tuyển dụng', '', '', '', '', '', '', '', 0, 'cac-cong-ty-dang-tuyen-dung', '', 'Các công ty đang tuyển dụng', ''),
(148, 76, 'en', 'english version Các công ty đang tuyển dụng', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cac-cong-ty-dang-tuyen-dung', '', 'Các công ty đang tuyển dụng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci,
  `lang_news_des` text COLLATE utf8_unicode_ci,
  `lang_news_content` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(211, 106, 'vn', 'Richard McClintock', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p style=\"margin-left:0cm; margin-right:0cm\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '', '', '', '', '', 0, 'richard-mcclintock', 'Richard McClintock', '', ''),
(212, 106, 'en', 'Toán mầm non', '', '', '', '', '', '', '', 0, 'toan-mam-non', 'Toán mầm non', '', ''),
(213, 107, 'vn', 'making it over', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '', '', '', '', '', 0, 'making-it-over', 'making it over', '', ''),
(214, 107, 'en', 'Toán tiểu học', '', '', '', '', '', '', '', 0, 'toan-tieu-hoc', 'Toán tiểu học', '', ''),
(215, 108, 'vn', 'classical Latin literature', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '', '', '', '', '', 0, 'classical-latin-literature', 'classical Latin literature', '', ''),
(216, 108, 'en', 'Toán THCS', '', '', '', '', '', '', '', 0, 'toan-thcs', 'Toán THCS', '', ''),
(217, 109, 'vn', 'Lisp Intensive Treatment', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '', '', '', '', '', 0, 'lisp-intensive-treatment', 'Lisp Intensive Treatment', '', ''),
(218, 109, 'en', 'Lisp Intensive Treatment', 'Nói ngọng là hiện tượng rối loạn ngôn ngữ. Ngôn ngữ của trẻ được hình thành trên cơ sở các phản xạ có điều kiện, dựa trên tác động của các yếu tố từ môi trường bên ngoài kích thích vào trung tâm nghe. Nếu có sự trục trặc nào đó trong quá trình hình thành ngôn ngữ sẽ xảy ra hiện tượng rối loạn ngôn ngữ ở trẻ, điển hình là ngọng.', '', '', '', '', '', '', 0, 'lisp-intensive-treatment-1', 'Lisp Intensive Treatment', '', ''),
(219, 110, 'vn', 'It has roots in a piece', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '', '', '', '', '', 0, 'it-has-roots-in-a-piece', 'It has roots in a piece', '', ''),
(220, 110, 'en', 'Avits English', 'Sự tự tin sử dụng tiếng Anh là lợi thế cho con bạn ngay từ lúc còn ngồi trên ghế nhà trường, để trẻ có thể tự nhiên phát triển kiến thức và nền tảng thành công cho các cơ hội nghề nghiệp trong tương lai. Các khóa học tiếng Anh cho trẻ em tại Hội đồng Anh được thiết kế đặc biệt dựa trên đặc tính của mỗi cá nhân, và được giảng dạy bởi các chuyên gia tiếng Anh toàn cầu luôn tâm huyết với sự nghiệp giáo dục trẻ em. ', '', '', '', '', '', '', 0, 'avits-english', 'Avits English', '', ''),
(221, 111, 'vn', ' simply random text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '', '', '', '', '', 0, 'simply-random-text', ' simply random text', '', ''),
(222, 111, 'en', 'Lê Xuân Quang - Giải Bạc vòng chung kết kì thi Toán Olympic Titan', '', '<p style=\"text-align:center\"><img alt=\"le-xuan-quang\" height=\"425\" src=\"/image/images/le-xuan-quang.jpg\" width=\"600\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><strong><em><span style=\"color:#1d2129\">Bạn L&ecirc; Xu&acirc;n Quang &ndash; Sinh năm 2006 - Học sinh xuất sắc ti&ecirc;u biểu của Americanskills Quận 1</span></em></strong></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><br />\r\n<strong><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><span style=\"color:#1d2129\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\HUYENT~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image002.png\" width=\"16\" />- Huy chương bạc trong k&igrave; thi American Mathematics Oplympiad (AMO) - Cuộc thi to&aacute;n quốc tế Hoa Kỳ</span><br />\r\n<span style=\"color:#1d2129\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\HUYENT~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image002.png\" width=\"16\" />- Giải Bạc v&ograve;ng chung kết k&igrave; thi To&aacute;n Olympic Titan.</span></span></span></span></strong></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><span style=\"color:#1d2129\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\HUYENT~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" />Ch&uacute;c mừng Xu&acirc;n Quang! American Skills v&ocirc; c&ugrave;ng tự h&agrave;o về th&agrave;nh t&iacute;ch tuyệt vời của con. Ch&uacute;c Xu&acirc;n Quang tiếp tục gặt h&aacute;i được nhiều th&agrave;nh c&ocirc;ng tr&ecirc;n con đường học vấn!&nbsp;<br />\r\n<img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\HUYENT~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.png\" width=\"16\" />V&agrave; phần thưởng tặng B&eacute;: <strong>Học bổng kh&oacute;a To&aacute;n tư duy n&acirc;ng cao 3.000.000 đ&nbsp;</strong><br />\r\nCh&uacute;c cho Xu&acirc;n Quang gặt h&aacute;i được nhiều th&agrave;nh t&iacute;ch hơn nữa!</span></span></span></span></p>\r\n', '', '', '', '', '', 0, 'le-xuan-quang-giai-bac-vong-chung-ket-ki-thi-toan-olympic-titan', 'Lê Xuân Quang - Giải Bạc vòng chung kết kì thi Toán Olympic Titan', '', ''),
(223, 112, 'vn', 'Contrary to popular belief', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', '', '', '', '', '', 0, 'contrary-to-popular-belief', 'Contrary to popular belief', '', ''),
(224, 112, 'en', 'NGÔ HOÀNG YẾN LINH -2008 - Lớp 4', '', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><span style=\"color:#1d2129\"><strong>- C&ocirc; b&eacute; rất c&aacute; t&iacute;nh th&ocirc;ng minh n&agrave;y học giỏi to&agrave;n diện c&aacute;c m&ocirc;n :</strong> Đặc biệt m&ocirc;n To&aacute;n - con học tại American Skills nổi bật vượt cấp độ, hiện đ&atilde; học xong chương tr&igrave;nh Lớp 4 - con đang được &ocirc;n luyện n&acirc;ng cao v&agrave; dần bước sang chương tr&igrave;nh Lớp 5.<img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\HUYENT~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">- <strong>AMERICAN SKILLS</strong> v&ocirc; c&ugrave;ng tự h&agrave;o đ&atilde; được đồng h&agrave;nh c&ugrave;ng &nbsp;con 4 năm, v&agrave; th&agrave;nh t&iacute;ch h&ocirc;m nay của c&aacute;c con l&agrave; niềm động vi&ecirc;n, kh&iacute;ch lệ, tự tin với hướng giảng dạy đ&uacute;ng, đủ , đảm bảo h&agrave;nh trang cho c&aacute;c con vững v&agrave;ng.</span></span></span></span><br />\r\n<span style=\"color:#1d2129; font-family:&quot;Times New Roman&quot;,Times,serif; font-size:16px\">- Ch&uacute;c mừng Yến Linh nh&eacute; .</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"ngo-hoang-yen-linh\" height=\"400\" src=\"/image/images/ngo-hoang-yen-linh.jpg\" width=\"600\" /></p>\r\n', '', '', '', '', '', 0, 'ngo-hoang-yen-linh-2008-lop-4', 'NGÔ HOÀNG YẾN LINH -2008 - Lớp 4', '', 'học viên tiêu biểu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ngon_ngu`
--

CREATE TABLE `ngon_ngu` (
  `id` bigint(20) NOT NULL,
  `ung_vien_id` bigint(20) NOT NULL,
  `country_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ngon_ngu`
--

INSERT INTO `ngon_ngu` (`id`, `ung_vien_id`, `country_id`, `level`) VALUES
(11, 1, 1, 1),
(12, 1, 5, 4),
(13, 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_ban_tin`
--

CREATE TABLE `nhan_ban_tin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_ban_tin`
--

INSERT INTO `nhan_ban_tin` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 13:54:44'),
(2, 'donguyenthinh30031989@gmail.com', '2017-12-23 01:12:33'),
(3, 'truongquangtuan3110@gmail.com', '2018-01-03 12:04:35'),
(4, 'truongquangtuan3110@gmail.com', '2018-01-03 12:12:05'),
(5, 'donguyenthinh30031989@gmail.com', '2018-01-04 07:40:46'),
(6, 'truongquangtuan3110@gmail.com', '2018-01-04 09:02:07'),
(7, 'donguyenthinh30031989@gmail.com', '2018-01-04 09:31:40'),
(8, 'donguyenthinh30031989@gmail.com', '2018-01-04 10:17:09'),
(9, 'viethung95cute@gmail.com', '2018-03-27 07:55:42'),
(10, 'viethung95cute@gmail.com', '2018-03-28 05:08:41'),
(11, 'viethung95cute@gmail.com', '2018-03-28 05:12:29'),
(12, 'viethung95cute@gmail.com', '2018-03-28 05:13:40'),
(13, 'viethung95cute@gmail.com', '2018-03-28 05:45:42'),
(14, 'viethung95cute@gmail.com', '2018-03-28 05:48:44'),
(15, 'hung71483@gmail.com', '2018-03-28 05:51:51'),
(16, 'hung71483@gmail.com', '2018-03-28 05:54:44'),
(17, 'hung71483@gmail.com', '2018-03-28 06:01:14'),
(18, 'hung71483@gmail.com', '2018-03-28 06:03:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_tai_lieu`
--

CREATE TABLE `nhan_tai_lieu` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_tai_lieu`
--

INSERT INTO `nhan_tai_lieu` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 12:33:22'),
(2, 'manh@gmail.com', '2017-12-02 11:58:58'),
(3, 'ngockhanh260614@gmail.com', '2017-12-03 04:05:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_tuyen_dung`
--

CREATE TABLE `nha_tuyen_dung` (
  `id` bigint(20) NOT NULL,
  `company` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `email` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `career` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nha_tuyen_dung`
--

INSERT INTO `nha_tuyen_dung` (`id`, `company`, `email`, `phone`, `password`, `address`, `career`) VALUES
(2, 'Công ty TNHH Goldbride', 'tuan@gmail.com', '0987654321', '$2y$10$fHfO69KZYzjBPf7Pnc57MOxTD0S3dVejAFynlc/44VFDTBSFu5.cS', '1', '[\"65\",\"66\",\"69\"]'),
(3, 'Công ty TNHH so1', 'tuan1@gmail.com', '987654321', '$2y$10$T7TR527UwyaWXX5EIULi6OLiSHgSne.0L8ufEUqmqkJsrS9z9tNey', '50', '[\"65\"]'),
(4, 'Công ty TNHH so2', 'tuan2@gmail.com', '987654321', '$2y$10$6qet/fwkhdYmlxDKwBVoZO0s71SJl3bgDo0w1BBJYWqoVsblr9ow2', '1', '[\"66\"]'),
(5, 'Công ty TNHH so3', 'tuan3@gmail.com', '987654321', '$2y$10$9jmKxpAWzDL/2ZAmqM9yzeqoaKhCnhPzZQF6B62epdszuOk9EpGyq', '50', '[\"65\"]'),
(6, 'Công ty TNHH so4', 'tuan4@gmail.com', '987654321', '$2y$10$jpk3AYwXo7c0DjnRLFp0i.EVViG4wrdXUyIEH3szMrEQVQPkD3R1m', '50', '[\"65\"]'),
(7, 'Công ty TNHH so5', 'tuan5@gmail.com', '987654321', '$2y$10$oa0kmdtBcLw.ltT6NFNoB.JUlnhqcFVsxOfb0JLGXiT.pazDAhGLe', '50', '[\"66\"]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_tuyen_hot`
--

CREATE TABLE `nha_tuyen_hot` (
  `id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `banner` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `logo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tip` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nha_tuyen_hot`
--

INSERT INTO `nha_tuyen_hot` (`id`, `nha_tuyen_dung_id`, `banner`, `logo`, `name`, `tip`, `note`, `state`) VALUES
(2, 2, '15586229362new1.jpg', '15586229362topica.png', 'Topica Edtech Group', 'Cùng triệu người nâng trí tuệ', 'Tổ hợp Công nghệ Giáo dục TOPICA là đơn vị đào tạo trực tuyến hàng\r\n                                                đầu Đông Nam Á, và là tổ chức Việt Nam đầu tiên xuất khẩu công nghệ giáo dục ra nước\r\n                                                ngoài với hơn 2000+ nhân viên toàn thời gian, 2000+ giảng viên bán thời gian. Hãy gia\r\n                                                nhập cùng chúng tôi ngay hôm nay!', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nop_don`
--

CREATE TABLE `nop_don` (
  `id` bigint(20) NOT NULL,
  `don_tuyen_id` bigint(20) NOT NULL,
  `ung_vien_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nop_don`
--

INSERT INTO `nop_don` (`id`, `don_tuyen_id`, `ung_vien_id`) VALUES
(3, 4, 1),
(4, 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `obsolete_products_file`
--

CREATE TABLE `obsolete_products_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `obsolete_products_file`
--

INSERT INTO `obsolete_products_file` (`id`, `name`) VALUES
(3, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `operating_file`
--

CREATE TABLE `operating_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `operating_file`
--

INSERT INTO `operating_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci,
  `orders_receiver_email` text COLLATE utf8_unicode_ci,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci,
  `orders_receiver_address` text COLLATE utf8_unicode_ci,
  `orders_receiver_note` text COLLATE utf8_unicode_ci,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `product_name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci,
  `page_des` text COLLATE utf8_unicode_ci,
  `page_content` text COLLATE utf8_unicode_ci,
  `page_img` text COLLATE utf8_unicode_ci,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `page_sub_info1` text COLLATE utf8_unicode_ci,
  `page_sub_info2` text COLLATE utf8_unicode_ci,
  `page_sub_info3` text COLLATE utf8_unicode_ci,
  `page_sub_info4` text COLLATE utf8_unicode_ci,
  `page_sub_info5` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'Giới thiệu', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', '<h1>C&Aacute;CH THỨC THANH TO&Aacute;N</h1>\r\n\r\n<p><img alt=\"\" src=\"http://hanoistudio.thietkewebsitegbvn.com/images/thanhtoan/1.png\" /></p>\r\n\r\n<h2>THANH TO&Aacute;N COD: NHẬN H&Agrave;NG V&Agrave; THANH TO&Aacute;N TIỀN MẶT</h2>\r\n\r\n<p>Khi qu&yacute; kh&aacute;ch y&ecirc;u cầu h&igrave;nh thức thanh to&aacute;n COD tức nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt, Qu&yacute; kh&aacute;ch vui l&ograve;ng lưu &yacute; những quy định sau:</p>\r\n\r\n<p>- Đối với c&aacute;c sản phẩm được giao h&agrave;ng bởi nh&acirc;n vi&ecirc;n c&ocirc;ng ty, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n đầy đủ sau khi nh&acirc;n vi&ecirc;n đ&atilde; giao h&agrave;ng cho Qu&yacute; kh&aacute;ch. Nếu cần hỗ trợ hướng dẫn sử dụng, hoặc kiểm tra m&aacute;y m&oacute;c, thiết bị ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ ngay tại chỗ.&nbsp;<br />\r\n- Đối với h&agrave;ng h&oacute;a được gởi theo đường bưu điện hoặc dịch vụ chuyển ph&aacute;t nhanh. Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n trước cho nh&acirc;n vi&ecirc;n giao h&agrave;ng rồi mới b&oacute;c mở h&agrave;ng h&oacute;a (Đ&acirc;y l&agrave; quy định bắt buộc của đơn vị vận chuyển). Sau khi b&oacute;c mở h&agrave;ng h&oacute;a, nếu Qu&yacute; kh&aacute;ch cần th&ecirc;m hỗ trợ g&igrave;, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với c&ocirc;ng ty ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>2. THANH TO&Aacute;N QUA NH&Agrave; XE, ĐƠN VỊ CHUYỂN PH&Aacute;T</h2>\r\n\r\n<p>Đối với c&aacute;c tỉnh ở xa khu vực th&agrave;nh phố Hồ Ch&iacute; Minh hay H&agrave; Nội. Ch&uacute;ng t&ocirc;i thường lựa chọn phương thức vận chuyển bằng xe kh&aacute;ch hoặc ch&agrave;nh xe vận chuyển. Điều n&agrave;y l&agrave;m giảm chi ph&iacute; vận chuyển đ&aacute;ng kể cho kh&aacute;ch h&agrave;ng. V&igrave; những sản phẩm c&oacute; k&iacute;ch thước hoặc trọng lượng lớn gần như kh&ocirc;ng thể gởi bưu điện hoặc c&oacute; gởi cước ph&iacute; sẽ rất cao. Do đ&oacute; Qu&yacute; kh&aacute;ch lưu &yacute; một số vấn đề sau đ&acirc;y:</p>\r\n\r\n<p>- C&ocirc;ng ty sẽ &aacute;p dụng ch&iacute;nh s&aacute;ch nh&agrave; xe thu tiền hộ c&ocirc;ng ty. Do đ&oacute; nếu được y&ecirc;u cầu thu hộ, Qu&yacute; kh&aacute;ch vui l&ograve;ng chuẩn bị tiền thanh to&aacute;n trực tiếp cho nh&agrave; xe hoặc đơn vị vận chuyển do c&ocirc;ng ty y&ecirc;u cầu.&nbsp;<br />\r\n- Đối với c&aacute;c sản phẩm c&oacute; trọng lượng lớn v&agrave; kỹ thuật sử dụng phức tạp, Qu&yacute; kh&aacute;ch c&oacute; thể y&ecirc;u cầu nh&acirc;n vi&ecirc;n c&ocirc;ng ty đến tận nh&agrave; lắp đặt. V&agrave; sẽ thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng hoặc nh&acirc;n vi&ecirc;n lắp đặt t&ugrave;y theo th&ocirc;ng b&aacute;o của c&ocirc;ng ty.</p>\r\n\r\n<h2>3. THANH TO&Aacute;N TẠI C&Ocirc;NG TY</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch mua h&agrave;ng c&oacute; thể đến địa chỉ c&ocirc;ng ty để xem h&agrave;ng v&agrave; mua h&agrave;ng:</p>\r\n\r\n<p>167 - 169 B&igrave;nh Lợi (Nơ Trang Long nối d&agrave;i), P. 13, Quận B&igrave;nh Thạnh, Tp. Hồ Ch&iacute; Minh .</p>\r\n\r\n<h2>4. THANH TO&Aacute;N C&Ocirc;NG NỢ</h2>\r\n\r\n<p>Đối với c&aacute;c c&ocirc;ng ty đề nghị thanh to&aacute;n c&ocirc;ng nợ, hai b&ecirc;n cần x&aacute;c nhận đơn đặt h&agrave;ng v&agrave; thời gian c&ocirc;ng nợ hoặc gởi PO đặt h&agrave;ng qua Email: Hotrospro@gmail.com. C&ocirc;ng ty sẽ xem x&eacute;t c&aacute;c trường hợp cụ thể v&agrave; th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng về việc c&oacute; chấp nhận c&ocirc;ng nợ hay kh&ocirc;ng.&nbsp;<br />\r\nLi&ecirc;n hệ trực tiếp qua số điện thoại: 0283 5 534 298 hoặc 0986 954 423</p>\r\n\r\n<h2>5. THANH TO&Aacute;N CHUYỂN KHOẢN</h2>\r\n\r\n<p><img alt=\"\" src=\"http://hanoistudio.thietkewebsitegbvn.com/images/thanhtoan/2.jpg\" /></p>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch vui l&ograve;ng chuyển tiền v&agrave;o một trong c&aacute;c t&agrave;i khoản sau:</p>\r\n\r\n<ul>\r\n	<li>Chủ t&agrave;i khoản: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt&nbsp;<br />\r\n	- Số TK: 060059386363&nbsp;<br />\r\n	- Tại NH Sacombank - PGD Phan Đăng Lưu - Chi nh&aacute;nh 8/3&nbsp;</li>\r\n	<li>Chủ TK: CT TNHH C&ocirc;ng Nghiệp v&agrave; TM Nam Việt&nbsp;<br />\r\n	- Số TK: 0531002529891&nbsp;<br />\r\n	- Tại NH Vietcombank - Chi nh&aacute;nh Đ&ocirc;ng S&agrave;i G&ograve;n&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt - Số TK: 19026579068019 - Tại NH Techcombank - Chi nh&aacute;nh Nguyễn Th&aacute;i Sơn</li>\r\n</ul>\r\n', '17761076_1333587866719468_3529098457172812176_o.jpg', '2017-05-11 16:05:22', '2018-07-13 18:07:48', 1, '', '', '', '', '', 'Goldbridge Việt Nam', 'Giới thiệu', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', 'gioi-thieu', 1),
(36, 'Tư vấn', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', NULL, '2017-05-11 16:05:03', '2019-05-24 18:05:55', 1, '', '', '', '', '', '', 'Tư vấn', '', 'tu-van-page', 1),
(37, 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', NULL, '2017-05-18 02:05:05', '2017-06-08 08:06:21', 1, '', '', '', '', '', 'tuyên cộng tác viên', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', 'tuyen-cong-tac-vien', 1),
(39, 'Đảm Bảo Hài Lòng hoặc Miễn Phí <br>Đăng Lại Tin Tuyển Dụng', 'Hãy liên lạc với chuyên viên tư vấn của chúng tôi trong vòng 10 ngày làm việc kể từ khi tin đăng tuyển có trả phí của Quý khách hết hạn, nếu Quý khách không hài lòng với kết quả đăng tuyển của mình.', '', 'badge-guaranteed.png', '2017-07-10 15:07:50', '2019-05-28 23:05:33', 1, '', '', '', '', '', '', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế', 'cau-hoi-thuong-gap', 1),
(40, 'Trắc nghiệm 3e ip', '', '<div class=\"gb-dang-tuyen-vnwork-right\">\r\n<div class=\"gb-discount-percent\">-10%</div>\r\n\r\n<div class=\"gb-price-vnwork\"><span style=\"font-size:48px\"><strong>4,295,700đ</strong></span> <s>4,773,000đ</s></div>\r\n\r\n<div class=\"gb-content-tuyendung-vnwork\">\r\n<p>Đảm bảo h&agrave;i l&ograve;ng 100%<br />\r\nĐăng tuyển nhanh ch&oacute;ng v&agrave; nhận hồ sơ ngay lập tức<br />\r\nQuản l&yacute; hồ sơ trực tuyến của bạn dễ d&agrave;ng.</p>\r\n</div>\r\n\r\n<div class=\"gb-btn-tuyendung-vnwork\"><a href=\"\">Xem chi tiết</a></div>\r\n</div>\r\n', 'iptest.png', '2017-07-10 22:07:44', '2019-05-28 23:05:47', 1, '', '', '', '', '', '', 'Chính sách bảo mật', '', 'chinh-sach-bao-mat', 1),
(41, 'Quảng bá thương hiệu', '', '<div class=\"gb-dang-tuyen-vnwork-right\">\r\n<div class=\"gb-discount-percent\">-10%</div>\r\n\r\n<div class=\"gb-price-vnwork\"><span style=\"font-size:48px\"><strong>29,025,000đ</strong></span> <s>32,250,000đ</s></div>\r\n\r\n<div class=\"gb-content-tuyendung-vnwork\">\r\n<p>Đảm bảo h&agrave;i l&ograve;ng 100%<br />\r\nĐăng tuyển nhanh ch&oacute;ng v&agrave; nhận hồ sơ ngay lập tức<br />\r\nQuản l&yacute; hồ sơ trực tuyến của bạn dễ d&agrave;ng.</p>\r\n</div>\r\n\r\n<div class=\"gb-btn-tuyendung-vnwork\"><a href=\"\">Xem chi tiết</a></div>\r\n</div>\r\n', 'employerrbranding.png', '2017-07-10 22:07:03', '2019-05-28 23:05:38', 1, '', '', '', '', '', '', 'Chính sách đổi - trả', '', 'chinh-sach-doi-tra', 1),
(42, 'Tìm hồ sơ', '', '<div class=\"gb-dang-tuyen-vnwork-right\">\r\n<div class=\"gb-discount-percent\">-10%</div>\r\n\r\n<div class=\"gb-price-vnwork\"><span style=\"font-size:48px\"><strong>2,689,650đ</strong></span> <s>2,988,500đ</s></div>\r\n\r\n<div class=\"gb-content-tuyendung-vnwork\">\r\n<p>Đảm bảo h&agrave;i l&ograve;ng 100%<br />\r\nĐăng tuyển nhanh ch&oacute;ng v&agrave; nhận hồ sơ ngay lập tức<br />\r\nQuản l&yacute; hồ sơ trực tuyến của bạn dễ d&agrave;ng.</p>\r\n</div>\r\n\r\n<div class=\"gb-btn-tuyendung-vnwork\"><a href=\"\">Xem chi tiết</a></div>\r\n</div>\r\n', 'searchresumes.png', '2017-07-10 22:07:22', '2019-05-28 23:05:05', 1, '', '', '', '', '', '', 'Hệ thống nhà thuốc', '', 'he-thong-nha-thuoc', 1),
(43, 'Đăng tuyển', '', '<div class=\"gb-dang-tuyen-vnwork-right\">\r\n<div class=\"gb-discount-percent\">-10%</div>\r\n\r\n<div class=\"gb-price-vnwork\"><strong><span style=\"font-size:48px\">1,722,150đ</span></strong> <s>1,913,500đ</s></div>\r\n\r\n<div class=\"gb-content-tuyendung-vnwork\">\r\n<p>Đảm bảo h&agrave;i l&ograve;ng 100%<br />\r\nĐăng tuyển nhanh ch&oacute;ng v&agrave; nhận hồ sơ ngay lập tức<br />\r\nQuản l&yacute; hồ sơ trực tuyến của bạn dễ d&agrave;ng.</p>\r\n</div>\r\n\r\n<div class=\"gb-btn-tuyendung-vnwork\"><a href=\"\">Xem chi tiết</a></div>\r\n</div>\r\n', 'laptop.png', '2017-07-10 22:07:41', '2019-05-28 23:05:17', 1, '', '', '', '', '', '', 'Hình thức giao hàng', '', 'hinh-thuc-giao-hang', 1),
(44, '3,700,000 ỨNG VIÊN TIỀM NẮNG', 'Nhanh chóng tìm được ứng viên phù hợp', '', 'userEMNumber.png', '2017-07-10 22:07:55', '2019-05-28 23:05:33', 1, '', '', '', '', '', '', '3,700,000 ỨNG VIÊN TIỀM NẮNG', '', 'hinh-thuc-thanh-toan', 1),
(45, '1,600 LƯỢT XEM MỖI ĐĂNG TUYỂN', 'Gia tăng cơ hội thu hút lớn ứng viên tiềm năng', '', 'jobEMNumber.png', '2017-07-10 22:07:51', '2019-05-28 23:05:11', 1, '', '', '', '', '', '', '1,600 LƯỢT XEM MỖI ĐĂNG TUYỂN', '', 'dieu-khoan-su-dung', 1),
(46, 'TRANG TUYỂN DỤNG SỐ 1 VIỆT NAM', 'Giúp đẩy mạnh, quảng bá thương hiệu tuyển dụng', '', 'rankEmNumber.png', '2018-03-27 11:03:18', '2019-05-28 23:05:41', 1, '', '', '', '', '', '', 'TRANG TUYỂN DỤNG SỐ 1 VIỆT NAM', '', 'he-thong', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci,
  `lang_page_des` text COLLATE utf8_unicode_ci,
  `lang_page_content` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'Giới thiệu', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', '<h1>C&Aacute;CH THỨC THANH TO&Aacute;N</h1>\r\n\r\n<p><img alt=\"\" src=\"http://hanoistudio.thietkewebsitegbvn.com/images/thanhtoan/1.png\" /></p>\r\n\r\n<h2>THANH TO&Aacute;N COD: NHẬN H&Agrave;NG V&Agrave; THANH TO&Aacute;N TIỀN MẶT</h2>\r\n\r\n<p>Khi qu&yacute; kh&aacute;ch y&ecirc;u cầu h&igrave;nh thức thanh to&aacute;n COD tức nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt, Qu&yacute; kh&aacute;ch vui l&ograve;ng lưu &yacute; những quy định sau:</p>\r\n\r\n<p>- Đối với c&aacute;c sản phẩm được giao h&agrave;ng bởi nh&acirc;n vi&ecirc;n c&ocirc;ng ty, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n đầy đủ sau khi nh&acirc;n vi&ecirc;n đ&atilde; giao h&agrave;ng cho Qu&yacute; kh&aacute;ch. Nếu cần hỗ trợ hướng dẫn sử dụng, hoặc kiểm tra m&aacute;y m&oacute;c, thiết bị ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ ngay tại chỗ.&nbsp;<br />\r\n- Đối với h&agrave;ng h&oacute;a được gởi theo đường bưu điện hoặc dịch vụ chuyển ph&aacute;t nhanh. Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n trước cho nh&acirc;n vi&ecirc;n giao h&agrave;ng rồi mới b&oacute;c mở h&agrave;ng h&oacute;a (Đ&acirc;y l&agrave; quy định bắt buộc của đơn vị vận chuyển). Sau khi b&oacute;c mở h&agrave;ng h&oacute;a, nếu Qu&yacute; kh&aacute;ch cần th&ecirc;m hỗ trợ g&igrave;, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với c&ocirc;ng ty ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>2. THANH TO&Aacute;N QUA NH&Agrave; XE, ĐƠN VỊ CHUYỂN PH&Aacute;T</h2>\r\n\r\n<p>Đối với c&aacute;c tỉnh ở xa khu vực th&agrave;nh phố Hồ Ch&iacute; Minh hay H&agrave; Nội. Ch&uacute;ng t&ocirc;i thường lựa chọn phương thức vận chuyển bằng xe kh&aacute;ch hoặc ch&agrave;nh xe vận chuyển. Điều n&agrave;y l&agrave;m giảm chi ph&iacute; vận chuyển đ&aacute;ng kể cho kh&aacute;ch h&agrave;ng. V&igrave; những sản phẩm c&oacute; k&iacute;ch thước hoặc trọng lượng lớn gần như kh&ocirc;ng thể gởi bưu điện hoặc c&oacute; gởi cước ph&iacute; sẽ rất cao. Do đ&oacute; Qu&yacute; kh&aacute;ch lưu &yacute; một số vấn đề sau đ&acirc;y:</p>\r\n\r\n<p>- C&ocirc;ng ty sẽ &aacute;p dụng ch&iacute;nh s&aacute;ch nh&agrave; xe thu tiền hộ c&ocirc;ng ty. Do đ&oacute; nếu được y&ecirc;u cầu thu hộ, Qu&yacute; kh&aacute;ch vui l&ograve;ng chuẩn bị tiền thanh to&aacute;n trực tiếp cho nh&agrave; xe hoặc đơn vị vận chuyển do c&ocirc;ng ty y&ecirc;u cầu.&nbsp;<br />\r\n- Đối với c&aacute;c sản phẩm c&oacute; trọng lượng lớn v&agrave; kỹ thuật sử dụng phức tạp, Qu&yacute; kh&aacute;ch c&oacute; thể y&ecirc;u cầu nh&acirc;n vi&ecirc;n c&ocirc;ng ty đến tận nh&agrave; lắp đặt. V&agrave; sẽ thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng hoặc nh&acirc;n vi&ecirc;n lắp đặt t&ugrave;y theo th&ocirc;ng b&aacute;o của c&ocirc;ng ty.</p>\r\n\r\n<h2>3. THANH TO&Aacute;N TẠI C&Ocirc;NG TY</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch mua h&agrave;ng c&oacute; thể đến địa chỉ c&ocirc;ng ty để xem h&agrave;ng v&agrave; mua h&agrave;ng:</p>\r\n\r\n<p>167 - 169 B&igrave;nh Lợi (Nơ Trang Long nối d&agrave;i), P. 13, Quận B&igrave;nh Thạnh, Tp. Hồ Ch&iacute; Minh .</p>\r\n\r\n<h2>4. THANH TO&Aacute;N C&Ocirc;NG NỢ</h2>\r\n\r\n<p>Đối với c&aacute;c c&ocirc;ng ty đề nghị thanh to&aacute;n c&ocirc;ng nợ, hai b&ecirc;n cần x&aacute;c nhận đơn đặt h&agrave;ng v&agrave; thời gian c&ocirc;ng nợ hoặc gởi PO đặt h&agrave;ng qua Email: Hotrospro@gmail.com. C&ocirc;ng ty sẽ xem x&eacute;t c&aacute;c trường hợp cụ thể v&agrave; th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng về việc c&oacute; chấp nhận c&ocirc;ng nợ hay kh&ocirc;ng.&nbsp;<br />\r\nLi&ecirc;n hệ trực tiếp qua số điện thoại: 0283 5 534 298 hoặc 0986 954 423</p>\r\n\r\n<h2>5. THANH TO&Aacute;N CHUYỂN KHOẢN</h2>\r\n\r\n<p><img alt=\"\" src=\"http://hanoistudio.thietkewebsitegbvn.com/images/thanhtoan/2.jpg\" /></p>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch vui l&ograve;ng chuyển tiền v&agrave;o một trong c&aacute;c t&agrave;i khoản sau:</p>\r\n\r\n<ul>\r\n	<li>Chủ t&agrave;i khoản: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt&nbsp;<br />\r\n	- Số TK: 060059386363&nbsp;<br />\r\n	- Tại NH Sacombank - PGD Phan Đăng Lưu - Chi nh&aacute;nh 8/3&nbsp;</li>\r\n	<li>Chủ TK: CT TNHH C&ocirc;ng Nghiệp v&agrave; TM Nam Việt&nbsp;<br />\r\n	- Số TK: 0531002529891&nbsp;<br />\r\n	- Tại NH Vietcombank - Chi nh&aacute;nh Đ&ocirc;ng S&agrave;i G&ograve;n&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt - Số TK: 19026579068019 - Tại NH Techcombank - Chi nh&aacute;nh Nguyễn Th&aacute;i Sơn</li>\r\n</ul>\r\n', '', '', '', '', '', 0, 'gioi-thieu', 'Giới thiệu', 'Goldbridge Việt Nam', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..'),
(36, 35, 'en', 'Giới thiệu', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/images/670px-conceptualmapfloss(1).png\" style=\"float:right; height:564px; width:670px\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'gioi-thieu', 'Giới thiệu', '', 'Mô tả cho bài viết giới thiệu'),
(37, 36, 'vn', 'Tư vấn', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'tu-van-page', 'Tư vấn', '', ''),
(38, 36, 'en', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" style=\"height:800px; width:1600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'bao-gia', 'Báo giá', '', 'thẻ mô tả của bài viết báo giá'),
(39, 37, 'vn', 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(40, 37, 'en', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(43, 39, 'vn', 'Đảm Bảo Hài Lòng hoặc Miễn Phí <br>Đăng Lại Tin Tuyển Dụng', 'Hãy liên lạc với chuyên viên tư vấn của chúng tôi trong vòng 10 ngày làm việc kể từ khi tin đăng tuyển có trả phí của Quý khách hết hạn, nếu Quý khách không hài lòng với kết quả đăng tuyển của mình.', '', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(44, 39, 'en', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h2>THẺ H2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(45, 40, 'vn', 'Trắc nghiệm 3e ip', '', '<div class=\"gb-dang-tuyen-vnwork-right\">\r\n<div class=\"gb-discount-percent\">-10%</div>\r\n\r\n<div class=\"gb-price-vnwork\"><span style=\"font-size:48px\"><strong>4,295,700đ</strong></span> <s>4,773,000đ</s></div>\r\n\r\n<div class=\"gb-content-tuyendung-vnwork\">\r\n<p>Đảm bảo h&agrave;i l&ograve;ng 100%<br />\r\nĐăng tuyển nhanh ch&oacute;ng v&agrave; nhận hồ sơ ngay lập tức<br />\r\nQuản l&yacute; hồ sơ trực tuyến của bạn dễ d&agrave;ng.</p>\r\n</div>\r\n\r\n<div class=\"gb-btn-tuyendung-vnwork\"><a href=\"\">Xem chi tiết</a></div>\r\n</div>\r\n', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(46, 40, 'en', 'Chính sách bảo mật', '', 'DP GREEN-PHAR CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN CỦA TẤT CẢ KHÁCH HÀNG. Cảm ơn bạn đã truy cập website: www.greenphar.com\r\nChúng tôi hiểu rõ tầm quan trọng của sự riêng tư và sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản để biết những thay đổi. ĐIỀU 1. MỤC ĐÍCH VÀ PHẠM VI THU THẬP THÔNG TIN1.1. Mục đích thu thập thông tin:Chúng tôi thực hiện việc thu thập thông tin của bạn thông qua website này nhằm:\r\nDP GREEN-PHAR trung tâm tư vấn & tìm giải pháp xử lý các bệnh ngoài cộng đồng.\r\nGiải đáp thắc mắc của bạn về vấn đề các bệnh mà bạn thắc mắc và quan tâm.\r\nGiới thiệu các hàng hóa và dịch vụ có thể phù hợp với các nhu cầu và sở thích của bạn.\r\nCung cấp những thông tin mới nhất của website.\r\nXem xét và nâng cấp nội dung, giao diện của website.\r\nThực hiện hoạt động khảo sát khách hàng.\r\nThực hiện các hoạt động quảng bá sản phẩm và giới thiệu những chương trình khuyến mãi.\r\nGiải quyết các vấn đề, tranh chấp phát sinh liên quan đến việc sử dụng website.\r\nChúng tôi bảo lưu quyền từ chối trách nhiệm về bất kỳ thiệt hại nào phát sinh nếu thông tin cá nhân của bạn bị đánh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ cách nào khác. 1.2. Phạm vi thu thập thông tin cá nhân:Thông tin cá nhân mà chúng tôi thu thập của bạn khi bạn gửi thắc mắc về cho chúng tôi, bao gồm:\r\nHọ, tên, Năm sinh.\r\nĐịa chỉ liên hệ.\r\nĐiện thoại liên hệ.\r\nEmail.\r\nThông tin bệnh lý và những thắc mắc về bệnh học liên quan. ĐIỀU 2. PHẠM VI SỬ DỤNG THÔNG TINThông tin của bạn được sử dụng để chúng tôi hoặc các bên có liên quan khác có thể thực hiện các yêu cầu của bạn.\r\nChúng tôi có thể liên hệ với bạn hoặc giới thiệu bạn đến các cuộc nghiên cứu bao gồm nghiên cứu sự hài lòng của khách hàng, thị trường, nội dung cá nhân khác, hoặc có liên quan đến một số giao dịch nhất định.\r\nChúng tôi thu thập thông tin về truy cập website của bạn gồm những thông tin có thể nhận biết và không thể nhận biết để phân tích (ví dụ: dữ liệu phân tích việc truy cập website, …).\r\nThông tin của bạn được sử dụng để giúp cung cấp cho các dịch vụ của chúng tôi và chúng tôi có thể cung cấp thông tin cho các công ty đại diện chúng tôi. Những công ty này cũng chịu sự ràng buộc nghiêm ngặt bởi Chính sách Bảo mật của chúng tôi. ĐIỀU 3. THỜI GIAN LƯU TRỮ THÔNG TINChúng tôi sẽ lưu trữ các thông tin cá nhân do khách hàng cung cấp trên các hệ thống quản lý, lưu trữ dữ liệu của chúng tôi hoặc chúng tôi thuê trong quá trình cung cấp dịch vụ cho khách hàng cho đến khi hoàn thành mục đích thu thập hoặc khi bạn có yêu cầu hủy các thông tin đã cung cấp.ĐIỀU 4. ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP VÀ QUẢN LÝ THÔNG TIN CÁ NHÂNCÔNG TY CỔ PHẦN DP GREEN-PHAR\r\nĐịa chỉ: Số 19, Ngõ 4, phố Văn La, Hà Đông, Hà Nội.\r\nĐiện thoại: (024) 6262.7731\r\nEmail: dpgreenphar@gmail.com ĐIỀU 5. PHƯƠNG TIỆN VÀ CÔNG CỤ ĐỂ NGƯỜI DÙNG TIẾP CẬN VÀ CHỈNH SỬA DỮ LIỆU CÁ NHÂN CỦA MÌNH.Bạn có thể tự đăng nhập vào website qua link www.greenphar.com  và chỉnh sửa các thông tin cá nhân như: tên, số điện thoại, địa chỉ giao-nhận hàng, ...\r\nNếu bạn không quan tâm hoặc không muốn nhận tin tức, thông tin, bạn có thể thay đổi thông tin của bạn vào bất kỳ lúc nào bằng cách gửi email về cho chúng tôi qua địa chỉ email: cskh@greenphar.comĐIỀU 6. CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN KHÁCH HÀNGNgoài việc sử dụng các thông tin của bạn vào các mục đích nêu tại Khoản 1.1 Điều 1 của Chính sách bảo mật này và phạm vi nêu tại Điều 2 của Chính sách bảo mật này, Chúng tôi sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản này để biết những thay đổi.\r\nChính sách bảo mật tại DP GREEN- PHAR\r\n- DP GREEN-PHAR có thể thay đổi chính sách bảo mật và mọi thay đổi sẽ được công khai trên website www.greenphar.com\r\n- Tất cả các thay đổi về chính sách bảo mật chúng tôi đều tuân thủ theo quy định của Pháp Luật Nhà Nước hiện hành.\r\n- Mọi ý kiến thắc mắc, khiếu nại và tranh chấp vui lòng liên hệ với chúng tôi qua hotline Chăm sóc khách hàng: (024) 6262. 7731\r\n\r\nTrân trọng,\r\nDP GREEN- PHAR: Chu Đáo, Tin Cậy!', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(47, 41, 'vn', 'Quảng bá thương hiệu', '', '<div class=\"gb-dang-tuyen-vnwork-right\">\r\n<div class=\"gb-discount-percent\">-10%</div>\r\n\r\n<div class=\"gb-price-vnwork\"><span style=\"font-size:48px\"><strong>29,025,000đ</strong></span> <s>32,250,000đ</s></div>\r\n\r\n<div class=\"gb-content-tuyendung-vnwork\">\r\n<p>Đảm bảo h&agrave;i l&ograve;ng 100%<br />\r\nĐăng tuyển nhanh ch&oacute;ng v&agrave; nhận hồ sơ ngay lập tức<br />\r\nQuản l&yacute; hồ sơ trực tuyến của bạn dễ d&agrave;ng.</p>\r\n</div>\r\n\r\n<div class=\"gb-btn-tuyendung-vnwork\"><a href=\"\">Xem chi tiết</a></div>\r\n</div>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(48, 41, 'en', 'Chính sách đổi - trả', '', '<p>Nội dung Ch&iacute;nh s&aacute;ch đổi - trả</p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(49, 42, 'vn', 'Tìm hồ sơ', '', '<div class=\"gb-dang-tuyen-vnwork-right\">\r\n<div class=\"gb-discount-percent\">-10%</div>\r\n\r\n<div class=\"gb-price-vnwork\"><span style=\"font-size:48px\"><strong>2,689,650đ</strong></span> <s>2,988,500đ</s></div>\r\n\r\n<div class=\"gb-content-tuyendung-vnwork\">\r\n<p>Đảm bảo h&agrave;i l&ograve;ng 100%<br />\r\nĐăng tuyển nhanh ch&oacute;ng v&agrave; nhận hồ sơ ngay lập tức<br />\r\nQuản l&yacute; hồ sơ trực tuyến của bạn dễ d&agrave;ng.</p>\r\n</div>\r\n\r\n<div class=\"gb-btn-tuyendung-vnwork\"><a href=\"\">Xem chi tiết</a></div>\r\n</div>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(50, 42, 'en', 'Hệ thống nhà thuốc', '', '<p>Nội dung&nbsp;Hệ thống nh&agrave; thuốc</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(51, 43, 'vn', 'Đăng tuyển', '', '<div class=\"gb-dang-tuyen-vnwork-right\">\r\n<div class=\"gb-discount-percent\">-10%</div>\r\n\r\n<div class=\"gb-price-vnwork\"><strong><span style=\"font-size:48px\">1,722,150đ</span></strong> <s>1,913,500đ</s></div>\r\n\r\n<div class=\"gb-content-tuyendung-vnwork\">\r\n<p>Đảm bảo h&agrave;i l&ograve;ng 100%<br />\r\nĐăng tuyển nhanh ch&oacute;ng v&agrave; nhận hồ sơ ngay lập tức<br />\r\nQuản l&yacute; hồ sơ trực tuyến của bạn dễ d&agrave;ng.</p>\r\n</div>\r\n\r\n<div class=\"gb-btn-tuyendung-vnwork\"><a href=\"\">Xem chi tiết</a></div>\r\n</div>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', ''),
(52, 43, 'en', 'Hình thức giao hàng', '', '<p>Nội dung H&igrave;nh thức giao h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', ''),
(53, 44, 'vn', '3,700,000 ỨNG VIÊN TIỀM NẮNG', 'Nhanh chóng tìm được ứng viên phù hợp', '', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', '3,700,000 ỨNG VIÊN TIỀM NẮNG', '', ''),
(54, 44, 'en', 'Hình thức thanh toán', '', '<p>Nội dung&nbsp;H&igrave;nh thức thanh to&aacute;n</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(55, 45, 'vn', '1,600 LƯỢT XEM MỖI ĐĂNG TUYỂN', 'Gia tăng cơ hội thu hút lớn ứng viên tiềm năng', '', '', '', '', '', '', 0, 'dieu-khoan-su-dung', '1,600 LƯỢT XEM MỖI ĐĂNG TUYỂN', '', ''),
(56, 45, 'en', 'Điều khoản sử dụng', '', '<p>Nội dung&nbsp;Điều khoản sử dụng</p>\r\n', '', '', '', '', '', 0, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(57, 46, 'vn', 'TRANG TUYỂN DỤNG SỐ 1 VIỆT NAM', 'Giúp đẩy mạnh, quảng bá thương hiệu tuyển dụng', '', '', '', '', '', '', 0, 'he-thong', 'TRANG TUYỂN DỤNG SỐ 1 VIỆT NAM', '', ''),
(58, 46, 'en', ' hệ thống', '', '', '', '', '', '', '', 0, 'he-thong', ' hệ thống', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `product_des` text COLLATE utf8_unicode_ci,
  `product_des2` text COLLATE utf8_unicode_ci,
  `product_des3` text COLLATE utf8_unicode_ci,
  `product_content` text COLLATE utf8_unicode_ci,
  `product_content2` text COLLATE utf8_unicode_ci,
  `product_content3` text COLLATE utf8_unicode_ci,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci,
  `product_sub_img` text COLLATE utf8_unicode_ci,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT '0',
  `product_favorite` int(11) NOT NULL,
  `product_new` int(11) DEFAULT '0',
  `product_sale` int(11) DEFAULT '0',
  `product_code` text COLLATE utf8_unicode_ci,
  `product_original` text COLLATE utf8_unicode_ci,
  `product_size` text COLLATE utf8_unicode_ci,
  `product_package` text COLLATE utf8_unicode_ci,
  `product_delivery` text COLLATE utf8_unicode_ci,
  `product_delivery_time` text COLLATE utf8_unicode_ci,
  `product_payment` text COLLATE utf8_unicode_ci,
  `product_payment_type` text COLLATE utf8_unicode_ci,
  `product_sub_info1` text COLLATE utf8_unicode_ci,
  `product_sub_info2` text COLLATE utf8_unicode_ci,
  `product_sub_info3` text COLLATE utf8_unicode_ci,
  `product_sub_info4` text COLLATE utf8_unicode_ci,
  `product_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci,
  `productcat_ar` text COLLATE utf8_unicode_ci,
  `product_brand` int(11) NOT NULL,
  `product_sex` int(11) NOT NULL,
  `product_size_arr` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_favorite`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `product_brand`, `product_sex`, `product_size_arr`) VALUES
(36, 'Latin words, combined', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 7600000, 10, 0, 'product4.jpg', '[]', '2017-05-22 00:05:50', '2018-11-14 15:11:23', 0, 1, 0, 0, 0, '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'Latin words, combined', '', 'latin-words-combined', '', NULL, 'Vải bóng', 'Cổ điển', '3 năm', 4, NULL, '139,139', 2, 1, ''),
(37, 'It uses a dictionary', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 135000, 0, 0, 'product3.jpg', '[\"{\\\"image\\\":\\\"7_12.jpg\\\"}\",\"{\\\"image\\\":\\\"7_8.jpg\\\"}\",\"{\\\"image\\\":\\\"7_6.jpg\\\"}\",\"{\\\"image\\\":\\\"7_5.jpg\\\"}\",\"{\\\"image\\\":\\\"7_3_0.jpg\\\"}\"]', '2017-05-22 00:05:55', '2018-11-14 15:11:02', 0, 1, 0, 0, 0, '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'It uses a dictionary', '', 'it-uses-a-dictionary', '', NULL, 'Giấy dán', 'Khổ đứng', '5 năm', NULL, NULL, '139,139', 1, 0, ''),
(38, 'generator on the Internet', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 135000, 0, 0, 'product2.jpg', '[]', '2017-05-22 00:05:39', '2018-11-14 15:11:39', 0, 1, 0, 0, 0, '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'generator on the Internet', '', 'generator-on-the-internet', '', NULL, 'Giấy dán', 'Khổ đứng', '5 năm', NULL, NULL, '139,139', 1, 0, ''),
(39, 'making this the first true', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 135000, 0, 0, 'product1.jpg', '[]', '2017-05-22 00:05:13', '2018-11-14 15:11:19', 0, 1, 0, 0, 0, '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'making this the first true', '', 'making-this-the-first-true', '', NULL, 'Giấy dán', 'Khổ đứng', '5 năm', NULL, NULL, '139,139', 1, 0, ''),
(40, 'repeat predefined chunks', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 135000, 0, 0, 'product8.jpg', '[]', '2017-05-22 00:05:53', '2018-11-14 15:11:57', 0, 1, 0, 0, 0, '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'repeat predefined chunks', '', 'repeat-predefined-chunks', '', NULL, 'Giấy dán', 'Khổ đứng', '5 năm', NULL, NULL, '139,139', 1, 0, ''),
(41, 'on the Internet tend', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 13500000, 15, 0, 'product7.jpg', '[]', '2017-05-22 00:05:31', '2018-11-14 15:11:35', 0, 1, 0, 1, 0, '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'on the Internet tend', '', 'on-the-internet-tend', '', NULL, 'Giấy dán', 'Khổ đứng', '5 năm', NULL, NULL, '139,139', 1, 0, ''),
(42, 'All the Lorem Ipsum generators', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 205000, 0, 0, 'product6.jpg', '[]', '2017-07-09 18:07:02', '2018-11-14 15:11:13', 0, 1, 0, 0, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'All the Lorem Ipsum generators', '', 'all-the-lorem-ipsum-generators', '', 1, '', '', '', NULL, NULL, NULL, 1, 0, ''),
(43, 'middle of text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 225000, 0, 0, 'product5.jpg', '[]', '2017-07-09 18:07:18', '2018-11-14 15:11:52', 0, 0, 0, 1, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'middle of text', '', 'middle-of-text', '', 1, '', '', '', NULL, NULL, NULL, 1, 0, ''),
(44, 'there isn\'t anything embarrassing', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 180000, 0, 0, 'product4.jpg', '[]', '2017-07-09 18:07:07', '2018-11-14 15:11:33', 0, 1, 0, 0, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'there isn\'t anything embarrassing', '', 'there-isnt-anything-embarrassing', '', 1, '', '', '', NULL, NULL, NULL, 1, 0, ''),
(45, 'a passage of Lorem', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 225000, 0, 0, 'product3.jpg', '[]', '2017-07-09 18:07:18', '2018-11-14 15:11:09', 0, 0, 0, 0, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'a passage of Lorem', '', 'a-passage-of-lorem', '', 1, '', '', '', NULL, NULL, NULL, 1, 0, ''),
(46, 'you are going to', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 55000, 0, 0, 'product2.jpg', '[]', '2017-07-09 18:07:29', '2018-11-14 15:11:22', 0, 0, 0, 0, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 1, 'you are going to', '', 'you-are-going-to', '', 1, '', '', '', NULL, NULL, NULL, 1, 0, ''),
(47, 'slightly believable', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<h3>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"501\" src=\"/image/images/americanskills/xem_b_ng__i_m_chi_ti_t_c_a_h_c_sinh.png\" width=\"617\" /></p>\r\n', '', '', 100000, 0, 0, 'product1.jpg', '[]', '2017-07-09 18:07:40', '2018-11-14 15:11:02', 0, 0, 0, 0, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'slightly believable', '', 'slightly-believable', '', 1, '', '', '', NULL, NULL, NULL, 1, 0, ''),
(48, 'which don\'t look even', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 799000, 0, 0, 'product8.jpg', '[]', '2017-07-11 00:07:31', '2018-11-14 15:11:39', 0, 0, 0, 0, 0, 'FNP1127US20GS120 (0100-16320)', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'which don\'t look even', '', 'which-dont-look-even', '', 1, '', '', 'FireNET', NULL, NULL, '140,140', 1, 0, ''),
(49, 'randomised words', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 0, 0, 0, 'product7.jpg', '[\"{\\\"image\\\":\\\"thumb_14665040398269_13393977_585369601636975_3431445518694990846_n.jpg\\\"}\",\"{\\\"image\\\":\\\"thumb_14665040415616_13407078_585370381636897_427809477680829256_n.jpg\\\"}\",\"{\\\"image\\\":\\\"thumb_14665040419321_13417435_585370258303576_3636360098352839377_n.jpg\\\"}\",\"{\\\"image\\\":\\\"thumb_14665040423295_13418747_585369251637010_3247308734397122599_n.jpg\\\"}\"]', '2017-07-11 00:07:45', '2018-11-14 15:11:56', 0, 0, 0, 1, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'randomised words', '', 'randomised-words', '', 1, '', '', '', NULL, NULL, '140,140', 1, 0, ''),
(50, 'injected humour', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 0, 0, 0, 'product6.jpg', '[\"{\\\"image\\\":\\\"logo.png\\\"}\",\"{\\\"image\\\":\\\"fastrackids-3-460.png\\\"}\",\"{\\\"image\\\":\\\"tuyen-dung-nhan-vien-phu-trach-xuat-ban-sach-toan-hoc.jpg\\\"}\",\"{\\\"image\\\":\\\"thong-tin-tuyen-dung1.jpg\\\"}\",\"{\\\"image\\\":\\\"Le Ngoc Trang_TOEIC 820.jpg\\\"}\"]', '2017-09-21 23:09:49', '2018-11-14 15:11:39', 0, 0, 0, 0, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'injected humour', '', 'injected-humour', '', 1, '', '', '', NULL, NULL, '140,140', 1, 0, ''),
(51, 'alteration in some form', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 1400000, 0, 0, 'product5.jpg', '[]', '2018-03-28 08:03:53', '2018-11-14 15:11:12', 0, 1, 0, 0, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 1, 'alteration in some form', '', 'alteration-in-some-form', '', 1, '', '', '', NULL, NULL, '140,140', 1, 0, ''),
(52, 'the majority have suffered', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 0, 0, 0, 'product4.jpg', '[]', '2018-03-28 13:03:43', '2018-11-14 15:11:46', 0, 1, 0, 0, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'the majority have suffered', '', 'the-majority-have-suffered', '', 1, '', '', '', NULL, NULL, '140,140', 1, 0, ''),
(53, 'Lorem Ipsum available', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 0, 0, 0, 'product3.jpg', '[]', '2018-03-28 13:03:34', '2018-11-14 15:11:26', 0, 1, 0, 1, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'Lorem Ipsum available', '', 'lorem-ipsum-available', '', 1, '', '', '', NULL, NULL, '140,140', 3, 0, ''),
(54, 'variations of passages', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 5000, 0, 0, 'product2.jpg', '[]', '2018-03-28 13:03:36', '2018-11-14 15:11:08', 0, 1, 0, 0, 0, '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'variations of passages', '', 'variations-of-passages', '', 1, '', '', 'Sony', NULL, NULL, '140,140', 2, 0, ''),
(55, 'There are many', '<p>This stylish hamper is a wonderful way to welcome a new baby into the world. Little Pink Bunny is a gorgeously soft and snuggly friend, she is so huggably, hoppily soft she makes the perfect bedtime buddy. The hamper also contains our award winning, all-natural skincare, designed specifically for a newborn baby&rsquo;s delicate skin and this gift hamper is finished with our stunning baby bud posy containing six pairs of fabulous stay-on socks.tu</p>\r\n', '', '', '<p>This welcome hamper contains: The lovely Little Pink Bunny with pretty pink trim and a rattle, perfect for sensory play. She is 24 cm high and suitable from birth.&nbsp;<br />\r\nOne 150ml moisturising baby lotion. This is a soothing, fragrance free lotion designed especially for a baby&rsquo;s delicate skin. Handmade in Cornwall using no parabens, sodium lauryl sulphate, fragrances, palm oil or lanolin the all-natural ingredients include beeswax, wheatgerm, honey and evening primrose oil.&nbsp;<br />\r\nOne 60ml baby care cream. This is our most popular cream and mums love how effective it is on everything from nappy rash to eczema. Again, handmade in Cornwall and completely natural it contains calendula to soothe and reduce redness, lavender for relaxation and its antiseptic properties, wheat germ to soothe and rejuvenate and finally honey for its ability to attract and maintain moisture, helping to soften and protect delicate skin.&nbsp;<br />\r\nOne baby bud posy &ndash; the six pairs of &lsquo;stay on&rsquo; socks within the posy contain 67% cotton, 29% nylon, 4% spandex.&nbsp;<br />\r\nPerfectly packaged in a beautifully illustrated gift box with a gift card bearing your message, this is a wonderful gift for a new mum. tu</p>\r\n\r\n<p>Đặc biệt, ch&uacute;ng t&ocirc;i lu&ocirc;n cập nhật c&aacute;c sản phẩm c&ocirc;ng nghệ mới v&agrave; lu&ocirc;n c&oacute; c&aacute;c chương tr&igrave;nh khuyến m&atilde;i đặc sắc: gi&aacute; cả ưu đ&atilde;i, qu&agrave; tặng phong ph&uacute; tới Kh&aacute;ch h&agrave;ng.</p>\r\n', '', '', 123000, 3111110, 0, 'product1.jpg', '[\"{\\\"image\\\":\\\"product2.jpg\\\"}\"]', '2018-03-28 13:03:01', '2019-05-13 21:05:02', 0, 0, 0, 0, 0, 'asdf', '', '[\"32\",\"41\"]', '', '', '', '', '', '', '', '', '', '', 0, 'There are many', '', 'there-are-many', '', 1, '', '', 'FireNET', NULL, NULL, '140,140', 2, 0, '32,41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci,
  `productcat_des` text COLLATE utf8_unicode_ci,
  `productcat_content` text COLLATE utf8_unicode_ci,
  `productcat_parent` int(11) NOT NULL DEFAULT '0',
  `productcat_sort_order` int(11) NOT NULL DEFAULT '0',
  `productcat_img` text COLLATE utf8_unicode_ci,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(124, 'Thương hiệu khác', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', 0, 2, 'images_3_0.jpg', '2018-11-12 18:11:55', NULL, '', '', '', '', '', 0, 'Thương hiệu khác', ' So sánh tuổi thọ của sơn thì giấy dán tường có độ bền không bằng nhưng giấy dán tường hàn quốc lại giúp bạn dễ dàng tạo được một không gian nhiều màu sắc, hình khối như mong muốn, thi công nhanh chóng.', 'thuong-hieu-khac', 'Giấy Dán Tường', NULL),
(139, 'Nike', '', '', 0, 1, NULL, '2018-11-12 18:11:41', NULL, '', '', '', '', '', 1, 'Nike', '', 'nike', '', 1),
(140, 'Adidas', '', '', 0, 0, NULL, '2018-11-12 18:11:29', NULL, '', '', '', '', '', 1, 'Adidas', '', 'adidas', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci,
  `lang_productcat_content` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(233, 124, 'Thương hiệu khác', 'vn', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '', '', '', '', '', 0, 'thuong-hieu-khac', 'Giấy Dán Tường', 'Thương hiệu khác', ' So sánh tuổi thọ của sơn thì giấy dán tường có độ bền không bằng nhưng giấy dán tường hàn quốc lại giúp bạn dễ dàng tạo được một không gian nhiều màu sắc, hình khối như mong muốn, thi công nhanh chóng.'),
(234, 124, 'Giấy Dán Tường', 'en', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '<p>&nbsp;So s&aacute;nh tuổi thọ của sơn th&igrave;&nbsp;giấy d&aacute;n tường&nbsp;c&oacute; độ bền kh&ocirc;ng bằng nhưng&nbsp;giấy d&aacute;n tường h&agrave;n quốc&nbsp;lại gi&uacute;p bạn dễ d&agrave;ng tạo được một kh&ocirc;ng gian nhiều m&agrave;u sắc, h&igrave;nh khối như mong muốn, thi c&ocirc;ng nhanh ch&oacute;ng.</p>\r\n', '', '', '', '', '', 0, 'giay-dan-tuong', 'Giấy Dán Tường', 'Giấy Dán Tường', ' So sánh tuổi thọ của sơn thì giấy dán tường có độ bền không bằng nhưng giấy dán tường hàn quốc lại giúp bạn dễ dàng tạo được một không gian nhiều màu sắc, hình khối như mong muốn, thi công nhanh chóng.'),
(263, 139, 'Nike', 'vn', '', '', '', '', '', '', '', 0, 'nike', '', 'Nike', ''),
(264, 139, ' Tại sao chọn American Skills', 'en', '', '', '', '', '', '', '', 0, 'tai-sao-chon-american-skills', '', ' Tại sao chọn American Skills', ''),
(265, 140, 'Adidas', 'vn', '', '', '', '', '', '', '', 0, 'adidas', '', 'Adidas', ''),
(266, 140, 'Kết quả học tập của bé', 'en', '', '', '', '', '', '', '', 0, 'ket-qua-hoc-tap-cua-be', '', 'Kết quả học tập của bé', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_catalogs_file`
--

CREATE TABLE `product_catalogs_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_catalogs_file`
--

INSERT INTO `product_catalogs_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci,
  `lang_product_des` text COLLATE utf8_unicode_ci,
  `lang_product_des2` text COLLATE utf8_unicode_ci,
  `lang_product_des3` text COLLATE utf8_unicode_ci,
  `lang_product_content` text COLLATE utf8_unicode_ci,
  `lang_product_content2` text COLLATE utf8_unicode_ci,
  `lang_product_content3` text COLLATE utf8_unicode_ci,
  `lang_product_code` text COLLATE utf8_unicode_ci,
  `lang_product_original` text COLLATE utf8_unicode_ci,
  `lang_product_size` text COLLATE utf8_unicode_ci,
  `lang_product_package` text COLLATE utf8_unicode_ci,
  `lang_product_delivery` text COLLATE utf8_unicode_ci,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci,
  `lang_product_payment` text COLLATE utf8_unicode_ci,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(59, 36, 'vn', 'Latin words, combined', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'latin-words-combined', 'Latin words, combined', '', ''),
(60, 36, 'en', 'Rèm vải 10', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-10', 'Rèm vải 10', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(61, 37, 'vn', 'It uses a dictionary', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'it-uses-a-dictionary', 'It uses a dictionary', '', ''),
(62, 37, 'en', '4u-1', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-1', '4u-1', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-1'),
(63, 38, 'vn', 'generator on the Internet', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'generator-on-the-internet', 'generator on the Internet', '', ''),
(64, 38, 'en', '4u-2', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-2', '4u-2', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-2'),
(65, 39, 'vn', 'making this the first true', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'making-this-the-first-true', 'making this the first true', '', ''),
(66, 39, 'en', '4u-3', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-3', '4u-3', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-3'),
(67, 40, 'vn', 'repeat predefined chunks', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'repeat-predefined-chunks', 'repeat predefined chunks', '', ''),
(68, 40, 'en', '4u-4', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-4', '4u-4', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-4'),
(69, 41, 'vn', 'on the Internet tend', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '01', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'on-the-internet-tend', 'on the Internet tend', '', ''),
(70, 41, 'en', '4u-5', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-5', '4u-5', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-5'),
(71, 42, 'vn', 'All the Lorem Ipsum generators', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'all-the-lorem-ipsum-generators', 'All the Lorem Ipsum generators', '', ''),
(72, 42, 'en', 'ANTRI GP', 'fgdfgdg', '', '', '<p>xdgvzxvxc</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'antri-gp', 'ANTRI GP', '', ''),
(73, 43, 'vn', 'middle of text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'middle-of-text', 'middle of text', '', ''),
(74, 43, 'en', 'HOẠT HUYẾT GP', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hoat-huyet-gp', 'HOẠT HUYẾT GP', '', ''),
(75, 44, 'vn', 'there isn\'t anything embarrassing', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'there-isnt-anything-embarrassing', 'there isn\'t anything embarrassing', '', ''),
(76, 44, 'en', 'BOGAN GP', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'bogan-gp', 'BOGAN GP', '', ''),
(77, 45, 'vn', 'a passage of Lorem', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'a-passage-of-lorem', 'a passage of Lorem', '', ''),
(78, 45, 'en', 'Calcimom GP', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'calcimom-gp', 'Calcimom GP', '', ''),
(79, 46, 'vn', 'you are going to', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'you-are-going-to', 'you are going to', '', ''),
(80, 46, 'en', 'DAITRANG GP', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'daitrang-gp', 'DAITRANG GP', '', ''),
(81, 47, 'vn', 'slightly believable', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<h3>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"501\" src=\"/image/images/americanskills/xem_b_ng__i_m_chi_ti_t_c_a_h_c_sinh.png\" width=\"617\" /></p>\r\n', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'slightly-believable', 'slightly believable', '', ''),
(82, 47, 'en', 'BABY GP', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'baby-gp', 'BABY GP', '', ''),
(83, 48, 'vn', 'which don\'t look even', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', 'FNP1127US20GS120 (0100-16320)', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'which-dont-look-even', 'which don\'t look even', '', ''),
(84, 48, 'en', 'ANTRI GP (HỘP TO)', '<p>ANTRI GP gi&uacute;p khắc phục bệnh trĩ, suy tĩnh mạch trực tiếp, hiệu quả nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.</p>\r\n\r\n<ul>\r\n	<li>Khắc phục nhanh c&aacute;c chứng trĩ cấp, m&atilde;n, đi cầu ra m&aacute;u, đau r&aacute;t, sa b&uacute;i trĩ</li>\r\n	<li>Chống suy tĩnh mạch, gi&atilde;n tĩnh mạch</li>\r\n	<li>An to&agrave;n khi sử dụng, c&oacute; thể sử dụng được cho phụ nữ trong sau sinh, c&oacute; thể sử dụng l&acirc;u d&agrave;i ph&ograve;ng bệnh suy tĩnh mạch.</li>\r\n	<li>Sản phẩm được c&aacute;c b&aacute;c sĩ, dược si khuy&ecirc;n d&ugrave;ng cho bệnh nh&acirc;n trĩ, suy tĩnh mạch.</li>\r\n</ul>\r\n', '', '', '<h2>1.C&ocirc;ng thức tối ưu</h2>\r\n\r\n<p>C&ocirc;ng thức của ANTRI GP l&agrave; nghi&ecirc;n cứu của c&aacute;c Dược sĩ đại học Dược H&agrave; Nội, kết hợp giữa tinh chất Diosmin nhập khẩu từ Ph&aacute;p, rutin v&agrave; c&aacute;c thảo dược thi&ecirc;n nhi&ecirc;n đặc hiệu cho bệnh trĩ, tăng cường bền vũng th&agrave;nh mạch m&aacute;u, giảm ph&ugrave; nề b&uacute;i trĩ, hết đau r&aacute;t chảy m&aacute;u nhanh, th&uacute;c đẩy qu&aacute; tr&igrave;nh co b&uacute;i trĩ nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nGi&uacute;p c&aacute;c th&agrave;nh mạch m&aacute;u bền vững hơn, th&uacute;c đẩy qu&aacute; tr&igrave;nh giảm ph&ugrave; nề, đau r&aacute;t b&uacute;i trĩ, đi cầu ra m&aacute;u v&agrave; co b&uacute;i trĩ nhanh nhất.<br />\r\nGiảm hết t&aacute;o b&oacute;n, ổn định bệnh trĩ, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nTr&aacute;nh xơ vữa, suy tĩnh mạch, gi&atilde;n tĩnh mạch.</p>\r\n\r\n<p><img src=\"/image/menu4_1.jpg\" /></p>\r\n\r\n<h2>2.C&ocirc;ng dụng của ANTRI GP</h2>\r\n\r\n<p>ANTRI GP gi&uacute;p giảm phề, đau r&aacute;t, chảy m&aacute;u, co b&uacute;i trĩ nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.<br />\r\nGi&uacute;p khắc phục c&aacute;c chứng trĩ cấp, m&atilde;n, t&aacute;o b&oacute;n, đau r&aacute;t, đi cầu ra m&aacute;u.<br />\r\nBền vững th&agrave;nh mạch, chống suy tĩnh mạch, gi&atilde;n tĩnh mạch, xơ vữa mạch m&aacute;u, xuất huyết dưới da.</p>\r\n\r\n<h2>3.Th&agrave;nh phần</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Diosmin</td>\r\n			<td>500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rutin</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cao diếp c&aacute;</td>\r\n			<td>500mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>MgO</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin C</td>\r\n			<td>30mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1</td>\r\n			<td>1mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin PP</td>\r\n			<td>15mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kem Gluconate</td>\r\n			<td>70mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<table style=\"width:100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td>T&aacute; dược vừa đủ 01 vi&ecirc;n bao phim tan trong ruột.</td>\r\n					</tr>\r\n					<tr>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng ANTRI GP:</h2>\r\n\r\n<p>Uống 04 vi&ecirc;n/ ng&agrave;y/ 02 lần, trước hoặc trong bữa ăn.<br />\r\n- C&oacute; thể d&ugrave;ng 06 vi&ecirc;n/ng&agrave;y/02 lần, trong trường hợp trĩ cấp, chảy m&aacute;u nhiều, đau r&aacute;t nhiều.<br />\r\n- C&oacute; thể d&ugrave;ng h&agrave;ng ng&agrave;y, ph&ograve;ng bệnh trĩ t&aacute;i ph&aacute;t v&agrave; chống suy tĩnh mạch, xơ vữa mạch m&aacute;u.</p>\r\n\r\n<p><a href=\"#\"><img src=\"/image/menu4_2.jpg\" /></a></p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>C&aacute;c kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng Diosmin tr&ecirc;n thế giới từ 1950- 2011 cho thấy:<br />\r\nTr&ecirc;n tổng 2344 người bị bệnh trĩ v&agrave; suy tĩnh mạch, gi&atilde;n tĩnh mạch:<br />\r\n- 95% số người bị bệnh trĩ kiểm so&aacute;t t&igrave;nh trạng đi cầu ra m&aacute;u, đau r&aacute;t ở bệnh trĩ.<br />\r\n- Ngo&agrave;i ra, c&aacute;c bằng chứng khi nghi&ecirc;n cứu, Diosmin c&oacute; lợi rất lớn cho bệnh nh&acirc;n suy tĩnh mạch, nguy cơ suy tĩnh mạch v&agrave; xuất huyết dưới da.<br />\r\n- Theo th&ocirc;ng k&ecirc; từ 9/2015 đến 1/2017 tr&ecirc;n 3257 b&ecirc;nh nh&acirc;n trĩ tại H&agrave; Nội, TPHCM v&agrave; 1 số tỉnh miền bắc sử dụng ANTRI GP:<br />\r\n73% số người bị bệnh trĩ giảm hẳn đau r&aacute;t v&agrave; đi cầu ra m&aacute;u sau 03 ng&agrave;y sử dụng.<br />\r\n96% bệnh nh&acirc;n bị bệnh trĩ hết đau r&aacute;t, đi cầu ra m&aacute;u sau 07 ng&agrave;y sử dụng.<br />\r\n84% bệnh nh&acirc;n bị trĩ co b&uacute;i trĩ sau 07 ng&agrave;y sử dụng v&agrave; 95% bệnh nh&acirc;n bị trĩ co b&uacute;i trĩ sau 14 ng&agrave;y sử dụng.<br />\r\n87.3% kh&aacute;ch h&agrave;ng sử dụng đủ liệu tr&igrave;nh 08 hộp, kh&ocirc;ng t&aacute;i ph&aacute;t lại sau 01 năm.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm!- Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa ANTRI GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>ANTRI GP khắc phục bệnh trĩ tận gốc dựa tr&ecirc;n cơ chế r&otilde; r&agrave;ng của nền y học hiện đại.<br />\r\nCơ chế t&aacute;c dụng hiệp đồng, vừa l&agrave;m hết ph&ugrave; nề b&uacute;i trĩ, vừa khắc phục tận gốc nguy&ecirc;n nh&acirc;n g&acirc;y ra bệnh trĩ.<br />\r\n+ Hết ph&ugrave; nề b&uacute;i trĩ, l&agrave;m hết đau r&aacute;t chảy m&aacute;u, co b&uacute;i trĩ nhanh hơn, bền vững hơn.<br />\r\n+ Hết t&aacute;o b&oacute;n, ngăn ngừa bệnh trĩ quay trở lại.<br />\r\nNguy&ecirc;n liệu Diosmin trong ANTRI GP, dạng micronized, hạt si&ecirc;u nhỏ, 5um. Bằng 1/20 kich thước hạt Diosmin th&ocirc;ng thường. gi&uacute;p dễ d&agrave;ng hấp thu hơn nhiều lần. nhập khẩu từ ph&aacute;p.<br />\r\nKh&aacute;c với sản phẩm trĩ c&ugrave;ng d&ograve;ng kh&aacute;c, mất nhiều thời gian để thấy t&aacute;c dụng. ANTRI GP cho t&aacute;c dụng nhanh hơn, l&acirc;u t&aacute;i ph&aacute;t hơn.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img src=\"/image/giayCN.jpg\" /> <img src=\"/image/formImgCate.jpg\" /></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'antri-gp-hop-to', 'ANTRI GP (HỘP TO)', '', ''),
(85, 49, 'vn', 'randomised words', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'randomised-words', 'randomised words', '', '');
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(86, 49, 'en', 'Hoạt Huyết GP_en', '<p>HOẠT HUYẾT GP l&agrave; sản phẩm gi&agrave;nh ri&ecirc;ng cho bệnh nh&acirc;n tiền đ&igrave;nh &amp; căng thẳng mất ngủ. Ngo&agrave;i ra HOẠT HUYẾT GP hỗ trợ tăng cường tuần ho&agrave;n m&aacute;u n&atilde;o, chống thiểu năng tuần ho&agrave;n m&aacute;u n&atilde;o.</p>\r\n\r\n<ul>\r\n	<li>Khắc phục nhanh c&aacute;c chứng đau đầu, ch&oacute;ng mặt buồn n&ocirc;n, căng thẳng mất ngủ, ngủ kh&ocirc;ng ngon.</li>\r\n	<li>Sản phẩm an to&agrave;n với người sử dụng, d&ugrave;ng được h&agrave;ng ng&agrave;y để dưỡng n&atilde;o, ngủ s&acirc;u giấc hơn. Ph&ograve;ng bệnh tiền đ&igrave;nh quay trở lại.</li>\r\n	<li>Được c&aacute;c b&aacute;c sĩ khuy&ecirc;n d&ugrave;ng cho bệnh nh&acirc;n tiền đ&igrave;nh, căng thẳng rối loan giấc ngủ v&agrave; tăng cường tuần ho&agrave;n m&aacute;u n&atilde;o.</li>\r\n</ul>\r\n', '', '', '<h2>1.C&ocirc;ng thức b&agrave;o chế tối ưu</h2>\r\n\r\n<p>HOẠT HUY&Ecirc;T GP l&agrave; sản phẩm được b&agrave;o chế tối ưu cho bệnh nh&acirc;n bị tiền đ&igrave;nh &amp; mất ngủ, stress.<br />\r\nVới Gingko biloba, Cao từ củ đinh lăng h&agrave;m lượng cao sẽ tối đa qu&aacute; tr&igrave;nh đưa m&aacute;u l&ecirc;n n&atilde;o, tăng tuần ho&agrave;n m&aacute;u n&atilde;o, cung cấp đủ oxy cho n&atilde;o hoạt động.<br />\r\nVới Cinnarizin/ Mg-B6: gi&uacute;p giảm căng thẳng, ngủ s&acirc;u giấc hơn. đặc biệt cinnarizin t&aacute;c dụng trực tiếp l&ecirc;n tuyến tiền đ&igrave;nh, gi&uacute;p khắc phục nhanh ch&oacute;ng bệnh tiền đ&igrave;nh, đau đầu ch&oacute;ng mặt, &ugrave; tai.</p>\r\n\r\n<h2>2.Th&agrave;nh phần của HOẠT HUYẾT GP</h2>\r\n\r\n<table border=\"1px\" class=\"tableMenu4_1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Gingko biloba</td>\r\n			<td>250mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cao Đinh Lăng</td>\r\n			<td>100mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cinnarizine</td>\r\n			<td>25mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Magie gluconate</td>\r\n			<td>30mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B6</td>\r\n			<td>10mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B1</td>\r\n			<td>2mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vitamin B12</td>\r\n			<td>50mcg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>3.C&ocirc;ng dụng của HOẠT HUYẾT GP</h2>\r\n\r\n<p>Gi&uacute;p tăng cường tuần ho&agrave;n m&aacute;u n&atilde;o, chống thiểu năng tuần ho&agrave;n m&aacute;u n&atilde;o, rối loạn tuần ho&agrave;n m&aacute;u n&atilde;o.<br />\r\nKhắc phục bệnh tiền đ&igrave;nh, đau đầu ch&oacute;ng mặt &ugrave; tai, buồn n&ocirc;n.<br />\r\nGiảm căng thẳng mệt mỏi, ngủ ngon hơn, s&acirc;u hơn.</p>\r\n\r\n<h2>4.C&aacute;ch d&ugrave;ng HOẠT HUYẾT GP:</h2>\r\n\r\n<p>Trước khi sử dụng HOẠT HUYẾT GP hay bất kỳ d&ograve;ng sản phẩm c&oacute; t&aacute;c dụng tăng tuần ho&agrave;n m&aacute;u n&atilde;o th&igrave; qu&yacute; kh&aacute;ch n&ecirc;n kiểm tra lại huyết &aacute;p của m&igrave;nh. Kh&ocirc;ng được sử dụng mọi sản phẩm c&oacute; t&aacute;c dụng tăng cường tuần ho&agrave;n n&atilde;o khi huyết &aacute;p của qu&yacute; kh&aacute;ch đang tăng tr&ecirc;n 150/90 mmHg.<br />\r\nLiều d&ugrave;ng HOẠT HUYẾT GP:<br />\r\n- Đang ch&oacute;ng mặt &ugrave; tai: 03 vi&ecirc;n/ ng&agrave;y/ 2 lần.<br />\r\n- D&ugrave;ng h&agrave;ng ng&agrave;y, duy tr&igrave; 02 vi&ecirc;n/ng&agrave;y/2 lần.</p>\r\n\r\n<h2>5.Kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng:</h2>\r\n\r\n<p>93% người sử dụng ngủ ngon hơn, s&acirc;u hơn sau 03 ng&agrave;y sử dụng.<br />\r\n95% người sử dụng hết ch&oacute;ng mặt &ugrave; tai, l&acirc;ng l&acirc;ng, đau đầu.<br />\r\n83% người bị vi&ecirc;m đại tr&agrave;ng cấp, m&atilde;n ổn định tr&ecirc;n 06 th&aacute;ng sau khi d&ugrave;ng đủ 02 th&aacute;ng.<br />\r\n(Nguồn: Ph&ograve;ng Kiểm so&aacute;t &amp; đo lường chất lượng sản phẩm DP GREEN-PHAR - Dược sĩ Trần Kh&aacute;nh H&ograve;a)</p>\r\n\r\n<div class=\"boxEndMenu4\" id=\"antriGP3\">\r\n<h2>6.Sự kh&aacute;c biệt giữa ĐẠI TR&Agrave;NG GP v&agrave; c&aacute;c sản phẩm kh&aacute;c:</h2>\r\n\r\n<p>Gingko biloba/ Cinnarizin: 250/25mg, khắc phục bệnh tiền đ&igrave;nh nhanh ch&oacute;ng, sau 02- 04 vi&ecirc;n.<br />\r\nHOẠT HUYẾT GP kh&ocirc;ng chỉ l&agrave; sản phẩm hoạt huyết, tăng cường m&aacute;u n&atilde;o. HOẠT HUYẾT GP l&agrave; sản phẩm chuy&ecirc;n gi&agrave;nh cho b&ecirc;nh nh&acirc;n tiền đ&igrave;nh &amp; căng thẳng mất ngủ.</p>\r\n</div>\r\n\r\n<h2>7.Giấy chứng nhận của Bộ Y Tế:</h2>\r\n\r\n<p><img alt=\"\" src=\"/image/CN_hoathuyetGP.jpg\" /> <img alt=\"\" src=\"/image/formImgCate_5.jpg\" /></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hoat-huyet-gp-1', 'Hoạt Huyết GP', '', ''),
(87, 50, 'vn', 'injected humour', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'injected-humour', 'injected humour', '', ''),
(88, 50, 'en', 'sấ', '<p>sdf</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'sa', 'sấ', '', ''),
(89, 51, 'vn', 'alteration in some form', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'alteration-in-some-form', 'alteration in some form', '', ''),
(90, 51, 'en', 'American Skill', '<p>&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/4J4YFw5EjF8&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen&gt;&lt;/iframe&gt;</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'american-skill', 'American Skill', '', ''),
(91, 52, 'vn', 'the majority have suffered', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'the-majority-have-suffered', 'the majority have suffered', '', ''),
(92, 52, 'en', 'Đội ngũ giáo viên trình độ cao', '<p>Ch&uacute;ng t&ocirc;i cam kết bảo mật tuyệt đối th&ocirc;ng tin của Kh&aacute;ch h&agrave;ng, v&igrave; ch&uacute;ng t&ocirc;i hiểu r&otilde; v&agrave; lu&ocirc;n t&ocirc;n trọng gi&aacute; trị đạo đức trong kinh doanh.<br />\r\n- Uy t&iacute;n v&agrave; ch&acirc;n th&agrave;nh l&agrave; hai gi&aacute; trị văn h&oacute;a quan trọng nhất của Nguy&ecirc;n Anh.<br />\r\n- To&agrave;n bộ nh&acirc;n sự Nguy&ecirc;n Anh lu&ocirc;n xem lợi &iacute;ch của Kh&aacute;ch h&agrave;ng l&agrave; t&acirc;m niệm để l&agrave;m việc.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'doi-ngu-giao-vien-trinh-do-cao', 'Đội ngũ giáo viên trình độ cao', '', ''),
(93, 53, 'vn', 'Lorem Ipsum available', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'lorem-ipsum-available', 'Lorem Ipsum available', '', ''),
(94, 53, 'en', 'Chương trình Chuẩn quốc tế', '<p>-Nội dung chương tr&igrave;nh chuẩn quốc tế</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'chuong-trinh-chuan-quoc-te', 'Chương trình Chuẩn quốc tế', '', ''),
(95, 54, 'vn', 'variations of passages', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>\r\n', '', '', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '', '', '', '[]', '', '', '', '', '', '', '', '', '', '', 0, 'variations-of-passages', 'variations of passages', '', ''),
(96, 54, 'en', 'Phương pháp học tiên tiến', '<p>- Mọi y&ecirc;u cầu của Bạn đều được Nguy&ecirc;n Anh thực hiện nhanh ch&oacute;ng, đầy đủ v&agrave; b&aacute;o c&aacute;o thường xuy&ecirc;n<br />\r\n- Quy tr&igrave;nh kết nối l&agrave;m việc đơn giản, thuận tiện với thời gian v&agrave; y&ecirc;u cầu của Bạn<br />\r\n- Bộ phận tư vấn của Nguy&ecirc;n Anh lu&ocirc;n hỗ trợ Bạn 24/7 qua c&aacute;c k&ecirc;nh hotline, email, zalo, viber hoặc c&aacute;c k&ecirc;nh kh&aacute;c ph&ugrave; hợp với Bạn.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'phuong-phap-hoc-tien-tien', 'Phương pháp học tiên tiến', '', ''),
(97, 55, 'vn', 'There are many', '<p>This stylish hamper is a wonderful way to welcome a new baby into the world. Little Pink Bunny is a gorgeously soft and snuggly friend, she is so huggably, hoppily soft she makes the perfect bedtime buddy. The hamper also contains our award winning, all-natural skincare, designed specifically for a newborn baby&rsquo;s delicate skin and this gift hamper is finished with our stunning baby bud posy containing six pairs of fabulous stay-on socks.tu</p>\r\n', '', '', '<p>This welcome hamper contains: The lovely Little Pink Bunny with pretty pink trim and a rattle, perfect for sensory play. She is 24 cm high and suitable from birth.&nbsp;<br />\r\nOne 150ml moisturising baby lotion. This is a soothing, fragrance free lotion designed especially for a baby&rsquo;s delicate skin. Handmade in Cornwall using no parabens, sodium lauryl sulphate, fragrances, palm oil or lanolin the all-natural ingredients include beeswax, wheatgerm, honey and evening primrose oil.&nbsp;<br />\r\nOne 60ml baby care cream. This is our most popular cream and mums love how effective it is on everything from nappy rash to eczema. Again, handmade in Cornwall and completely natural it contains calendula to soothe and reduce redness, lavender for relaxation and its antiseptic properties, wheat germ to soothe and rejuvenate and finally honey for its ability to attract and maintain moisture, helping to soften and protect delicate skin.&nbsp;<br />\r\nOne baby bud posy &ndash; the six pairs of &lsquo;stay on&rsquo; socks within the posy contain 67% cotton, 29% nylon, 4% spandex.&nbsp;<br />\r\nPerfectly packaged in a beautifully illustrated gift box with a gift card bearing your message, this is a wonderful gift for a new mum. tu</p>\r\n\r\n<p>Đặc biệt, ch&uacute;ng t&ocirc;i lu&ocirc;n cập nhật c&aacute;c sản phẩm c&ocirc;ng nghệ mới v&agrave; lu&ocirc;n c&oacute; c&aacute;c chương tr&igrave;nh khuyến m&atilde;i đặc sắc: gi&aacute; cả ưu đ&atilde;i, qu&agrave; tặng phong ph&uacute; tới Kh&aacute;ch h&agrave;ng.</p>\r\n', '', '', 'asdf', '', '[\"32\",\"41\"]', '', '', '', '', '', '', '', '', '', '', 0, 'there-are-many', 'There are many', '', ''),
(98, 55, 'en', 'Cơ sở vật chất hiện đại', '<p>- Với một khoản chi ph&iacute; nhỏ h&agrave;ng th&aacute;ng, ch&uacute;ng t&ocirc;i sẽ cung cấp cho Bạn một dịch vụ chất lượng.<br />\r\n- Mọi chi ph&iacute; đều được thể hiện r&otilde; r&agrave;ng trong hợp đồng.<br />\r\n- Cam kết ho&agrave;n tiền: Sau 30 ng&agrave;y kể từ ng&agrave;y k&yacute; hợp đồng dịch vụ kế to&aacute;n thuế, nếu Bạn kh&ocirc;ng h&agrave;i l&ograve;ng về dịch vụ, Nguy&ecirc;n Anh cam kết ho&agrave;n tiền 100%.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'co-so-vat-chat-hien-dai', 'Cơ sở vật chất hiện đại', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT '1',
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT '1',
  `regInfor_answer2` int(11) DEFAULT '1',
  `regInfor_answer3` int(11) DEFAULT '1',
  `regInfor_answer4` int(11) DEFAULT '1',
  `regInfor_answer5` int(11) DEFAULT '1',
  `regInfor_answer6` int(11) DEFAULT '1',
  `regInfor_answer7` int(11) DEFAULT '1',
  `regInfor_answer8` int(11) DEFAULT '1',
  `regInfor_answer9` int(11) DEFAULT '1',
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci,
  `service_content` text COLLATE utf8_unicode_ci,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(71, 'many variations of passages', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'blog-1.jpg', '0', 3, '', '2019-05-24', '2019-05-24', 1, NULL, NULL, NULL, NULL, NULL, 'many variations of passages', '', 'many-variations-of-passages', '', 1),
(72, 'the majority have suffered a', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'blog-2.jpg', '0', 3, '', '2019-05-24', '2019-05-27', 1, NULL, NULL, NULL, NULL, NULL, 'the majority have suffered a', '', 'the-majority-have-suffered-a', '', 1),
(73, 'alteration in some form a', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'blog-3.jpg', '0', 5, '', '2019-05-24', '2019-05-27', 1, NULL, NULL, NULL, NULL, NULL, 'alteration in some form a', '', 'alteration-in-some-form-a', '', 1),
(74, 'need to be sure there', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'blog-4.jpg', '0', 5, '', '2019-05-24', '2019-05-24', 1, NULL, NULL, NULL, NULL, NULL, 'need to be sure there', '', 'need-to-be-sure-there', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci,
  `servicecat_content` text COLLATE utf8_unicode_ci,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, 'Dịch Vụ', '', '', 0, 0, '2017-12-21', NULL, 1, 's1.jpg', NULL, NULL, NULL, NULL, NULL, 'Dịch Vụ', '', 'dich-vu', '', 1),
(5, 'Tuyển dụng', '', '', 0, 0, '2018-03-27', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT '1',
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, 'Dịch Vụ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch Vụ', '', 'dich-vu', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3),
(9, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'vn', 5),
(10, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'en', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci,
  `lang_service_content` text COLLATE utf8_unicode_ci,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(97, 'vn', 'many variations of passages', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'many variations of passages', '', 'many-variations-of-passages', '', NULL, 71),
(98, 'en', 'english version many variations of passages', 'english version ', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'many variations of passages', '', 'en-many-variations-of-passages', '', NULL, 71),
(99, 'vn', 'the majority have suffered a', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'the majority have suffered a', '', 'the-majority-have-suffered-a', '', NULL, 72),
(100, 'en', 'english version the majority have suffered', 'english version ', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'the majority have suffered', '', 'en-the-majority-have-suffered', '', NULL, 72),
(101, 'vn', 'alteration in some form a', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'alteration in some form a', '', 'alteration-in-some-form-a', '', NULL, 73),
(102, 'en', 'english version alteration in some form', 'english version ', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'alteration in some form', '', 'en-alteration-in-some-form', '', NULL, 73),
(103, 'vn', 'need to be sure there', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'need to be sure there', '', 'need-to-be-sure-there', '', NULL, 74),
(104, 'en', 'english version need to be sure there', 'english version ', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'need to be sure there', '', 'en-need-to-be-sure-there', '', NULL, 74);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `street`
--

CREATE TABLE `street` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `street`
--

INSERT INTO `street` (`id`, `district_id`, `name`) VALUES
(1, 2, 'Nguyễn Trãi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `technical_bulletin_file`
--

CREATE TABLE `technical_bulletin_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `technical_bulletin_file`
--

INSERT INTO `technical_bulletin_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tham_khao`
--

CREATE TABLE `tham_khao` (
  `id` bigint(20) NOT NULL,
  `ung_vien_id` bigint(20) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phone` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` text,
  `chuc_danh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tham_khao`
--

INSERT INTO `tham_khao` (`id`, `ung_vien_id`, `name`, `phone`, `email`, `company`, `chuc_danh`) VALUES
(6, 1, 'Trương Quang Tuấn', '0987654321', 'tuan@gmail.com', 'ABC', 'Nhân viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tim_kiem_ung_vien`
--

CREATE TABLE `tim_kiem_ung_vien` (
  `id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `date_start_tk` date NOT NULL,
  `date_end_tk` date NOT NULL,
  `diem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tim_kiem_ung_vien`
--

INSERT INTO `tim_kiem_ung_vien` (`id`, `nha_tuyen_dung_id`, `date_start_tk`, `date_end_tk`, `diem`) VALUES
(2, 2, '2019-05-18', '2019-09-15', 396),
(4, 3, '2019-05-27', '2019-06-26', 98),
(5, 4, '0000-00-00', '0000-00-00', 0),
(6, 5, '0000-00-00', '0000-00-00', 0),
(7, 6, '0000-00-00', '0000-00-00', 0),
(8, 7, '0000-00-00', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tim_kiem_ung_vien_phu`
--

CREATE TABLE `tim_kiem_ung_vien_phu` (
  `id` bigint(20) NOT NULL,
  `tim_kiem_ung_vien_id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `don_hang_id` bigint(20) NOT NULL,
  `ngay_mua` date NOT NULL,
  `gia` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `vat` bigint(20) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tim_kiem_ung_vien_phu`
--

INSERT INTO `tim_kiem_ung_vien_phu` (`id`, `tim_kiem_ung_vien_id`, `nha_tuyen_dung_id`, `don_hang_id`, `ngay_mua`, `gia`, `soluong`, `tong_tien`, `vat`, `state`) VALUES
(2, 2, 2, 18, '2019-05-18', 2689650, 2, 6858608, 7544468, 1),
(4, 2, 2, 20, '2019-05-22', 2689650, 1, 2689650, 2958615, 1),
(5, 4, 3, 32, '2019-05-27', 2689650, 1, 2689650, 2958615, 1),
(6, 4, 3, 33, '2019-05-28', 2689650, 1, 2689650, 2958615, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tu_dong_lam_moi_hang_ngay`
--

CREATE TABLE `tu_dong_lam_moi_hang_ngay` (
  `id` bigint(20) NOT NULL,
  `dang_tuyen_dung_id` bigint(20) NOT NULL,
  `date_start_hn` date NOT NULL,
  `date_end_hn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tu_dong_lam_moi_hang_ngay`
--

INSERT INTO `tu_dong_lam_moi_hang_ngay` (`id`, `dang_tuyen_dung_id`, `date_start_hn`, `date_end_hn`) VALUES
(1, 4, '2019-05-15', '2019-06-05'),
(2, 5, '0000-00-00', '0000-00-00'),
(3, 6, '0000-00-00', '0000-00-00'),
(4, 7, '2019-05-28', '2019-06-04'),
(5, 8, '0000-00-00', '0000-00-00'),
(6, 9, '0000-00-00', '0000-00-00'),
(7, 10, '0000-00-00', '0000-00-00'),
(8, 11, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tu_dong_lam_moi_hang_ngay_phu`
--

CREATE TABLE `tu_dong_lam_moi_hang_ngay_phu` (
  `id` bigint(20) NOT NULL,
  `tu_dong_lam_moi_hang_ngay_id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `don_hang_id` bigint(20) NOT NULL,
  `ngay_mua` date NOT NULL,
  `gia` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `vat` bigint(20) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tu_dong_lam_moi_hang_ngay_phu`
--

INSERT INTO `tu_dong_lam_moi_hang_ngay_phu` (`id`, `tu_dong_lam_moi_hang_ngay_id`, `nha_tuyen_dung_id`, `don_hang_id`, `ngay_mua`, `gia`, `soluong`, `tong_tien`, `vat`, `state`) VALUES
(1, 1, 2, 11, '2019-05-15', 3695850, 2, 7391700, 8130870, 1),
(2, 1, 2, 19, '2019-05-22', 3695850, 1, 3695850, 4065435, 1),
(3, 4, 3, 32, '2019-05-27', 3695850, 1, 3695850, 4065435, 1),
(4, 4, 3, 33, '2019-05-28', 3695850, 1, 3695850, 4065435, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tu_dong_lam_moi_hang_tuan`
--

CREATE TABLE `tu_dong_lam_moi_hang_tuan` (
  `id` bigint(20) NOT NULL,
  `dang_tuyen_dung_id` bigint(20) NOT NULL,
  `date_start_ht` date NOT NULL,
  `date_end_ht` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tu_dong_lam_moi_hang_tuan`
--

INSERT INTO `tu_dong_lam_moi_hang_tuan` (`id`, `dang_tuyen_dung_id`, `date_start_ht`, `date_end_ht`) VALUES
(1, 4, '2019-05-15', '2019-08-13'),
(2, 5, '0000-00-00', '0000-00-00'),
(3, 6, '0000-00-00', '0000-00-00'),
(4, 7, '2019-05-28', '2019-06-27'),
(5, 8, '0000-00-00', '0000-00-00'),
(6, 9, '0000-00-00', '0000-00-00'),
(7, 10, '0000-00-00', '0000-00-00'),
(8, 11, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tu_dong_lam_moi_hang_tuan_phu`
--

CREATE TABLE `tu_dong_lam_moi_hang_tuan_phu` (
  `id` bigint(20) NOT NULL,
  `tu_dong_lam_moi_hang_tuan_id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `don_hang_id` bigint(20) NOT NULL,
  `ngay_mua` date NOT NULL,
  `gia` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `vat` bigint(20) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tu_dong_lam_moi_hang_tuan_phu`
--

INSERT INTO `tu_dong_lam_moi_hang_tuan_phu` (`id`, `tu_dong_lam_moi_hang_tuan_id`, `nha_tuyen_dung_id`, `don_hang_id`, `ngay_mua`, `gia`, `soluong`, `tong_tien`, `vat`, `state`) VALUES
(1, 1, 2, 10, '2019-05-15', 1722150, 2, 3444300, 3788730, 1),
(2, 1, 2, 19, '2019-05-22', 1722150, 1, 1722150, 1894365, 1),
(3, 4, 3, 32, '2019-05-27', 1722150, 1, 1722150, 1894365, 1),
(4, 4, 3, 33, '2019-05-28', 1722150, 1, 1722150, 1894365, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ung_vien`
--

CREATE TABLE `ung_vien` (
  `id` bigint(20) NOT NULL,
  `first_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `last_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `email` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `moi_tot_nghiep` int(11) NOT NULL,
  `phone` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date NOT NULL,
  `quoc_tich` int(11) NOT NULL,
  `sex` int(11) NOT NULL,
  `wedding` int(11) NOT NULL,
  `quoc_gia` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `alias` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ung_vien`
--

INSERT INTO `ung_vien` (`id`, `first_name`, `last_name`, `email`, `password`, `position`, `level`, `experience`, `moi_tot_nghiep`, `phone`, `birthday`, `quoc_tich`, `sex`, `wedding`, `quoc_gia`, `city`, `district`, `address`, `note`, `image`, `alias`) VALUES
(1, 'Trương', 'Tuấn', 'tuan@gmail.com', '$2y$10$GM2YB087rpgBghqVQ4Qa5OKPE9IMrs0IlfWvq75rtAP6FSCjIi4Aa', 'Lập Trình Viên', 2, 2, 0, '0987654321', '1983-10-31', 1, 2, 2, 1, 1, 2, 'Hà Nội', 'note', '1558105910tuan@gmail.comicon4.png', 'lap-trinh-vien'),
(2, 'quang', 'anh', 'anh@gmail.com', '$2y$10$UI1KqV3iRFxAs/I/qjr7Ce5AdEPDyxNGGTLrSCuPTmGRFF9qq.38G', 'kế toán', 1, 0, 0, '0987 654 321', '2019-05-18', 1, 1, 1, 0, 0, 0, 'Việt Nam', '', '', 'ke-toan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_password` text COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`) VALUES
(1, 'mystery078', 'tung92.ns@gmail.com', '01658824321', '', '$2y$10$zjlyFYq6vJ6TXeQVsOh/1esNuHFTf23SE62fvXVvyUAYvzxyCNzv6', '2017-03-12 02:03:39', 1),
(2, 'manh', 'manh@gmail.com', '0123434', '', '$2y$10$8JKJKBN1HlCxSIR6nv39pedRpujNWEOOQ9ePRT07j4x2F4blrAfA2', '2017-03-23 15:03:28', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uu_tien_nganh_nghe`
--

CREATE TABLE `uu_tien_nganh_nghe` (
  `id` bigint(20) NOT NULL,
  `dang_tuyen_dung_id` bigint(20) NOT NULL,
  `date_start_ut` date NOT NULL,
  `date_end_ut` date NOT NULL,
  `career_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `uu_tien_nganh_nghe`
--

INSERT INTO `uu_tien_nganh_nghe` (`id`, `dang_tuyen_dung_id`, `date_start_ut`, `date_end_ut`, `career_id`) VALUES
(3, 4, '2019-05-14', '2019-06-28', 69),
(4, 3, '0000-00-00', '0000-00-00', 72),
(5, 5, '0000-00-00', '0000-00-00', 66),
(6, 6, '0000-00-00', '0000-00-00', 65),
(7, 7, '2019-05-28', '2019-06-12', 65),
(8, 8, '0000-00-00', '0000-00-00', 66),
(9, 9, '0000-00-00', '0000-00-00', 65),
(10, 10, '0000-00-00', '0000-00-00', 65),
(11, 11, '0000-00-00', '0000-00-00', 66);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uu_tien_nganh_nghe_phu`
--

CREATE TABLE `uu_tien_nganh_nghe_phu` (
  `id` bigint(20) NOT NULL,
  `uu_tien_nganh_nghe_id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `don_hang_id` bigint(20) NOT NULL,
  `ngay_mua` date NOT NULL,
  `gia` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `vat` bigint(20) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `uu_tien_nganh_nghe_phu`
--

INSERT INTO `uu_tien_nganh_nghe_phu` (`id`, `uu_tien_nganh_nghe_id`, `nha_tuyen_dung_id`, `don_hang_id`, `ngay_mua`, `gia`, `soluong`, `tong_tien`, `vat`, `state`) VALUES
(1, 3, 2, 6, '2019-05-14', 2883150, 2, 5766300, 6342930, 1),
(2, 4, 2, 7, '2019-05-14', 2883150, 1, 2883150, 3171465, 0),
(3, 3, 2, 19, '2019-05-22', 2883150, 1, 2883150, 3171465, 1),
(4, 7, 3, 32, '2019-05-27', 2883150, 1, 2883150, 3171465, 1),
(5, 7, 3, 33, '2019-05-28', 2883150, 1, 2883150, 3171465, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `content`, `image`) VALUES
(1, '<iframe width=\"560\" height=\"450\" src=\"https://www.youtube.com/embed/c8wwHSpodYs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'product1.jpg'),
(2, '<iframe width=\"560\" height=\"450\" src=\"https://www.youtube.com/embed/dtYJYOmm2h8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'product2.jpg'),
(3, '<iframe width=\"560\" height=\"450\" src=\"https://www.youtube.com/embed/c8wwHSpodYs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'product3.jpg'),
(4, '<iframe width=\"560\" height=\"450\" src=\"https://www.youtube.com/embed/c8wwHSpodYs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'product4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `viec_lam_cap_quan_ly`
--

CREATE TABLE `viec_lam_cap_quan_ly` (
  `id` bigint(20) NOT NULL,
  `dang_tuyen_dung_id` bigint(20) NOT NULL,
  `date_start_ql` date NOT NULL,
  `date_end_ql` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `viec_lam_cap_quan_ly`
--

INSERT INTO `viec_lam_cap_quan_ly` (`id`, `dang_tuyen_dung_id`, `date_start_ql`, `date_end_ql`) VALUES
(1, 4, '2019-05-15', '2019-08-13'),
(2, 5, '0000-00-00', '0000-00-00'),
(3, 6, '0000-00-00', '0000-00-00'),
(4, 7, '2019-05-27', '2019-06-26'),
(5, 8, '0000-00-00', '0000-00-00'),
(6, 9, '0000-00-00', '0000-00-00'),
(7, 10, '0000-00-00', '0000-00-00'),
(8, 11, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `viec_lam_cap_quan_ly_phu`
--

CREATE TABLE `viec_lam_cap_quan_ly_phu` (
  `id` bigint(20) NOT NULL,
  `viec_lam_cap_quan_ly_id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `don_hang_id` bigint(20) NOT NULL,
  `ngay_mua` date NOT NULL,
  `gia` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `vat` bigint(20) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `viec_lam_cap_quan_ly_phu`
--

INSERT INTO `viec_lam_cap_quan_ly_phu` (`id`, `viec_lam_cap_quan_ly_id`, `nha_tuyen_dung_id`, `don_hang_id`, `ngay_mua`, `gia`, `soluong`, `tong_tien`, `vat`, `state`) VALUES
(1, 1, 2, 13, '2019-05-15', 4044150, 2, 8088300, 8897130, 1),
(2, 1, 2, 19, '2019-05-22', 4044150, 1, 4044150, 4448565, 1),
(3, 4, 3, 32, '2019-05-27', 4044150, 1, 4044150, 4448565, 1),
(4, 4, 3, 33, '2019-05-28', 4044150, 1, 4044150, 4448565, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `viec_lam_thu_hut`
--

CREATE TABLE `viec_lam_thu_hut` (
  `id` bigint(20) NOT NULL,
  `dang_tuyen_dung_id` bigint(20) NOT NULL,
  `date_start_th` date NOT NULL,
  `date_end_th` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `viec_lam_thu_hut`
--

INSERT INTO `viec_lam_thu_hut` (`id`, `dang_tuyen_dung_id`, `date_start_th`, `date_end_th`) VALUES
(1, 4, '2019-05-16', '2019-06-30'),
(2, 5, '0000-00-00', '0000-00-00'),
(3, 6, '0000-00-00', '0000-00-00'),
(4, 7, '2019-05-27', '2019-06-11'),
(5, 8, '0000-00-00', '0000-00-00'),
(6, 9, '0000-00-00', '0000-00-00'),
(7, 10, '0000-00-00', '0000-00-00'),
(8, 11, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `viec_lam_thu_hut_phu`
--

CREATE TABLE `viec_lam_thu_hut_phu` (
  `id` bigint(20) NOT NULL,
  `viec_lam_thu_hut_id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `don_hang_id` bigint(20) NOT NULL,
  `ngay_mua` date NOT NULL,
  `gia` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `vat` bigint(20) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `viec_lam_thu_hut_phu`
--

INSERT INTO `viec_lam_thu_hut_phu` (`id`, `viec_lam_thu_hut_id`, `nha_tuyen_dung_id`, `don_hang_id`, `ngay_mua`, `gia`, `soluong`, `tong_tien`, `vat`, `state`) VALUES
(1, 1, 2, 16, '2019-05-16', 7720650, 2, 15441300, 16985430, 1),
(2, 1, 2, 19, '2019-05-22', 7720650, 1, 7720650, 8492715, 1),
(3, 4, 3, 32, '2019-05-27', 7720650, 1, 7720650, 8492715, 1),
(4, 4, 3, 33, '2019-05-28', 7720650, 1, 7720650, 8492715, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `viec_lam_trang_chu`
--

CREATE TABLE `viec_lam_trang_chu` (
  `id` bigint(20) NOT NULL,
  `dang_tuyen_dung_id` bigint(20) NOT NULL,
  `date_start_tc` date NOT NULL,
  `date_end_tc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `viec_lam_trang_chu`
--

INSERT INTO `viec_lam_trang_chu` (`id`, `dang_tuyen_dung_id`, `date_start_tc`, `date_end_tc`) VALUES
(1, 4, '2019-05-16', '2019-06-30'),
(2, 5, '0000-00-00', '0000-00-00'),
(3, 6, '0000-00-00', '0000-00-00'),
(4, 7, '2019-05-27', '2019-06-11'),
(5, 8, '0000-00-00', '0000-00-00'),
(6, 9, '0000-00-00', '0000-00-00'),
(7, 10, '0000-00-00', '0000-00-00'),
(8, 11, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `viec_lam_trang_chu_phu`
--

CREATE TABLE `viec_lam_trang_chu_phu` (
  `id` bigint(20) NOT NULL,
  `viec_lam_trang_chu_id` bigint(20) NOT NULL,
  `nha_tuyen_dung_id` bigint(20) NOT NULL,
  `don_hang_id` bigint(20) NOT NULL,
  `ngay_mua` date NOT NULL,
  `gia` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `vat` bigint(20) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `viec_lam_trang_chu_phu`
--

INSERT INTO `viec_lam_trang_chu_phu` (`id`, `viec_lam_trang_chu_id`, `nha_tuyen_dung_id`, `don_hang_id`, `ngay_mua`, `gia`, `soluong`, `tong_tien`, `vat`, `state`) VALUES
(1, 1, 2, 14, '2019-05-16', 5785650, 2, 11571300, 12728430, 1),
(2, 1, 2, 19, '2019-05-22', 5785650, 1, 5785650, 6364215, 1),
(3, 4, 3, 32, '2019-05-27', 5785650, 1, 5785650, 6364215, 1),
(4, 4, 3, 33, '2019-05-28', 5785650, 1, 5785650, 6364215, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `bang_cap`
--
ALTER TABLE `bang_cap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_trang_chu`
--
ALTER TABLE `banner_trang_chu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_trang_chu_ibfk_1` (`nha_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `banner_trang_chu_phu`
--
ALTER TABLE `banner_trang_chu_phu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_trang_chu_id` (`banner_trang_chu_id`);

--
-- Chỉ mục cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cap_bac`
--
ALTER TABLE `cap_bac`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `dang_tuyen_co_ban`
--
ALTER TABLE `dang_tuyen_co_ban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dang_tuyen_dung_id` (`dang_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `dang_tuyen_dung`
--
ALTER TABLE `dang_tuyen_dung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `don_tuyen_id` (`don_tuyen_id`);

--
-- Chỉ mục cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `don_tuyen`
--
ALTER TABLE `don_tuyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nha_tuyen_dung_id` (`nha_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `gia_tang_do_dam_do`
--
ALTER TABLE `gia_tang_do_dam_do`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dang_tuyen_dung_id` (`dang_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `gia_tang_do_dam_do_phu`
--
ALTER TABLE `gia_tang_do_dam_do_phu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gia_tang_do_dam_do_id` (`gia_tang_do_dam_do_id`);

--
-- Chỉ mục cho bảng `gia_tang_uu_tien`
--
ALTER TABLE `gia_tang_uu_tien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dang_tuyen_dung_id` (`dang_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `gia_tang_uu_tien_phu`
--
ALTER TABLE `gia_tang_uu_tien_phu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gia_tang_uu_tien_id` (`gia_tang_uu_tien_id`);

--
-- Chỉ mục cho bảng `goi_dich_vu`
--
ALTER TABLE `goi_dich_vu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoc_van`
--
ALTER TABLE `hoc_van`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ung_vien_id` (`ung_vien_id`);

--
-- Chỉ mục cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kinh_nghiem`
--
ALTER TABLE `kinh_nghiem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ung_vien_id` (`ung_vien_id`);

--
-- Chỉ mục cho bảng `ky_nang`
--
ALTER TABLE `ky_nang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ung_vien_id` (`ung_vien_id`);

--
-- Chỉ mục cho bảng `lam_moi_tin`
--
ALTER TABLE `lam_moi_tin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dang_tuyen_dung_id` (`dang_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `lam_moi_tin_phu`
--
ALTER TABLE `lam_moi_tin_phu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lam_moi_tin_id` (`lam_moi_tin_id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `luu_viec`
--
ALTER TABLE `luu_viec`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `muc_luong`
--
ALTER TABLE `muc_luong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `ngon_ngu`
--
ALTER TABLE `ngon_ngu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ung_vien_id` (`ung_vien_id`);

--
-- Chỉ mục cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nha_tuyen_dung`
--
ALTER TABLE `nha_tuyen_dung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nha_tuyen_hot`
--
ALTER TABLE `nha_tuyen_hot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nha_tuyen_dung_id` (`nha_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `nop_don`
--
ALTER TABLE `nop_don`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tham_khao`
--
ALTER TABLE `tham_khao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ung_vien_id` (`ung_vien_id`);

--
-- Chỉ mục cho bảng `tim_kiem_ung_vien`
--
ALTER TABLE `tim_kiem_ung_vien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nha_tuyen_dung_id` (`nha_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `tim_kiem_ung_vien_phu`
--
ALTER TABLE `tim_kiem_ung_vien_phu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tim_kiem_ung_vien_id` (`tim_kiem_ung_vien_id`);

--
-- Chỉ mục cho bảng `tu_dong_lam_moi_hang_ngay`
--
ALTER TABLE `tu_dong_lam_moi_hang_ngay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dang_tuyen_dung_id` (`dang_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `tu_dong_lam_moi_hang_ngay_phu`
--
ALTER TABLE `tu_dong_lam_moi_hang_ngay_phu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tu_dong_lam_moi_hang_ngay_id` (`tu_dong_lam_moi_hang_ngay_id`);

--
-- Chỉ mục cho bảng `tu_dong_lam_moi_hang_tuan`
--
ALTER TABLE `tu_dong_lam_moi_hang_tuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dang_tuyen_dung_id` (`dang_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `tu_dong_lam_moi_hang_tuan_phu`
--
ALTER TABLE `tu_dong_lam_moi_hang_tuan_phu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tu_dong_lam_moi_hang_tuan_id` (`tu_dong_lam_moi_hang_tuan_id`);

--
-- Chỉ mục cho bảng `ung_vien`
--
ALTER TABLE `ung_vien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `uu_tien_nganh_nghe`
--
ALTER TABLE `uu_tien_nganh_nghe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dang_tuyen_dung_id` (`dang_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `uu_tien_nganh_nghe_phu`
--
ALTER TABLE `uu_tien_nganh_nghe_phu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uu_tien_nganh_nghe_id` (`uu_tien_nganh_nghe_id`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `viec_lam_cap_quan_ly`
--
ALTER TABLE `viec_lam_cap_quan_ly`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dang_tuyen_dung_id` (`dang_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `viec_lam_cap_quan_ly_phu`
--
ALTER TABLE `viec_lam_cap_quan_ly_phu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `viec_lam_cap_quan_ly_id` (`viec_lam_cap_quan_ly_id`);

--
-- Chỉ mục cho bảng `viec_lam_thu_hut`
--
ALTER TABLE `viec_lam_thu_hut`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dang_tuyen_dung_id` (`dang_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `viec_lam_thu_hut_phu`
--
ALTER TABLE `viec_lam_thu_hut_phu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `viec_lam_thu_hut_id` (`viec_lam_thu_hut_id`);

--
-- Chỉ mục cho bảng `viec_lam_trang_chu`
--
ALTER TABLE `viec_lam_trang_chu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dang_tuyen_dung_id` (`dang_tuyen_dung_id`);

--
-- Chỉ mục cho bảng `viec_lam_trang_chu_phu`
--
ALTER TABLE `viec_lam_trang_chu_phu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `viec_lam_trang_chu_id` (`viec_lam_trang_chu_id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bang_cap`
--
ALTER TABLE `bang_cap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `banner_trang_chu`
--
ALTER TABLE `banner_trang_chu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `banner_trang_chu_phu`
--
ALTER TABLE `banner_trang_chu_phu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cap_bac`
--
ALTER TABLE `cap_bac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `career`
--
ALTER TABLE `career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dang_tuyen_co_ban`
--
ALTER TABLE `dang_tuyen_co_ban`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `dang_tuyen_dung`
--
ALTER TABLE `dang_tuyen_dung`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `don_tuyen`
--
ALTER TABLE `don_tuyen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `gia_tang_do_dam_do`
--
ALTER TABLE `gia_tang_do_dam_do`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `gia_tang_do_dam_do_phu`
--
ALTER TABLE `gia_tang_do_dam_do_phu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `gia_tang_uu_tien`
--
ALTER TABLE `gia_tang_uu_tien`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `gia_tang_uu_tien_phu`
--
ALTER TABLE `gia_tang_uu_tien_phu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `goi_dich_vu`
--
ALTER TABLE `goi_dich_vu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `hoc_van`
--
ALTER TABLE `hoc_van`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `kinh_nghiem`
--
ALTER TABLE `kinh_nghiem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `ky_nang`
--
ALTER TABLE `ky_nang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `lam_moi_tin`
--
ALTER TABLE `lam_moi_tin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `lam_moi_tin_phu`
--
ALTER TABLE `lam_moi_tin_phu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `luu_viec`
--
ALTER TABLE `luu_viec`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `muc_luong`
--
ALTER TABLE `muc_luong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT cho bảng `ngon_ngu`
--
ALTER TABLE `ngon_ngu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nha_tuyen_dung`
--
ALTER TABLE `nha_tuyen_dung`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nha_tuyen_hot`
--
ALTER TABLE `nha_tuyen_hot`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nop_don`
--
ALTER TABLE `nop_don`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `street`
--
ALTER TABLE `street`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tham_khao`
--
ALTER TABLE `tham_khao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tim_kiem_ung_vien`
--
ALTER TABLE `tim_kiem_ung_vien`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tim_kiem_ung_vien_phu`
--
ALTER TABLE `tim_kiem_ung_vien_phu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tu_dong_lam_moi_hang_ngay`
--
ALTER TABLE `tu_dong_lam_moi_hang_ngay`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tu_dong_lam_moi_hang_ngay_phu`
--
ALTER TABLE `tu_dong_lam_moi_hang_ngay_phu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tu_dong_lam_moi_hang_tuan`
--
ALTER TABLE `tu_dong_lam_moi_hang_tuan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tu_dong_lam_moi_hang_tuan_phu`
--
ALTER TABLE `tu_dong_lam_moi_hang_tuan_phu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `ung_vien`
--
ALTER TABLE `ung_vien`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `uu_tien_nganh_nghe`
--
ALTER TABLE `uu_tien_nganh_nghe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `uu_tien_nganh_nghe_phu`
--
ALTER TABLE `uu_tien_nganh_nghe_phu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `viec_lam_cap_quan_ly`
--
ALTER TABLE `viec_lam_cap_quan_ly`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `viec_lam_cap_quan_ly_phu`
--
ALTER TABLE `viec_lam_cap_quan_ly_phu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `viec_lam_thu_hut`
--
ALTER TABLE `viec_lam_thu_hut`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `viec_lam_thu_hut_phu`
--
ALTER TABLE `viec_lam_thu_hut_phu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `viec_lam_trang_chu`
--
ALTER TABLE `viec_lam_trang_chu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `viec_lam_trang_chu_phu`
--
ALTER TABLE `viec_lam_trang_chu_phu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `banner_trang_chu`
--
ALTER TABLE `banner_trang_chu`
  ADD CONSTRAINT `banner_trang_chu_ibfk_1` FOREIGN KEY (`nha_tuyen_dung_id`) REFERENCES `nha_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `banner_trang_chu_phu`
--
ALTER TABLE `banner_trang_chu_phu`
  ADD CONSTRAINT `banner_trang_chu_phu_ibfk_1` FOREIGN KEY (`banner_trang_chu_id`) REFERENCES `banner_trang_chu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dang_tuyen_co_ban`
--
ALTER TABLE `dang_tuyen_co_ban`
  ADD CONSTRAINT `dang_tuyen_co_ban_ibfk_1` FOREIGN KEY (`dang_tuyen_dung_id`) REFERENCES `dang_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dang_tuyen_dung`
--
ALTER TABLE `dang_tuyen_dung`
  ADD CONSTRAINT `dang_tuyen_dung_ibfk_1` FOREIGN KEY (`don_tuyen_id`) REFERENCES `don_tuyen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `don_tuyen`
--
ALTER TABLE `don_tuyen`
  ADD CONSTRAINT `don_tuyen_ibfk_1` FOREIGN KEY (`nha_tuyen_dung_id`) REFERENCES `nha_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `gia_tang_do_dam_do`
--
ALTER TABLE `gia_tang_do_dam_do`
  ADD CONSTRAINT `gia_tang_do_dam_do_ibfk_1` FOREIGN KEY (`dang_tuyen_dung_id`) REFERENCES `dang_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `gia_tang_do_dam_do_phu`
--
ALTER TABLE `gia_tang_do_dam_do_phu`
  ADD CONSTRAINT `gia_tang_do_dam_do_phu_ibfk_1` FOREIGN KEY (`gia_tang_do_dam_do_id`) REFERENCES `gia_tang_do_dam_do` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `gia_tang_uu_tien`
--
ALTER TABLE `gia_tang_uu_tien`
  ADD CONSTRAINT `gia_tang_uu_tien_ibfk_1` FOREIGN KEY (`dang_tuyen_dung_id`) REFERENCES `dang_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `gia_tang_uu_tien_phu`
--
ALTER TABLE `gia_tang_uu_tien_phu`
  ADD CONSTRAINT `gia_tang_uu_tien_phu_ibfk_1` FOREIGN KEY (`gia_tang_uu_tien_id`) REFERENCES `gia_tang_uu_tien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoc_van`
--
ALTER TABLE `hoc_van`
  ADD CONSTRAINT `hoc_van_ibfk_1` FOREIGN KEY (`ung_vien_id`) REFERENCES `ung_vien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `kinh_nghiem`
--
ALTER TABLE `kinh_nghiem`
  ADD CONSTRAINT `kinh_nghiem_ibfk_1` FOREIGN KEY (`ung_vien_id`) REFERENCES `ung_vien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ky_nang`
--
ALTER TABLE `ky_nang`
  ADD CONSTRAINT `ky_nang_ibfk_1` FOREIGN KEY (`ung_vien_id`) REFERENCES `ung_vien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lam_moi_tin`
--
ALTER TABLE `lam_moi_tin`
  ADD CONSTRAINT `lam_moi_tin_ibfk_1` FOREIGN KEY (`dang_tuyen_dung_id`) REFERENCES `dang_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lam_moi_tin_phu`
--
ALTER TABLE `lam_moi_tin_phu`
  ADD CONSTRAINT `lam_moi_tin_phu_ibfk_1` FOREIGN KEY (`lam_moi_tin_id`) REFERENCES `lam_moi_tin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ngon_ngu`
--
ALTER TABLE `ngon_ngu`
  ADD CONSTRAINT `ngon_ngu_ibfk_1` FOREIGN KEY (`ung_vien_id`) REFERENCES `ung_vien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nha_tuyen_hot`
--
ALTER TABLE `nha_tuyen_hot`
  ADD CONSTRAINT `nha_tuyen_hot_ibfk_1` FOREIGN KEY (`nha_tuyen_dung_id`) REFERENCES `nha_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tham_khao`
--
ALTER TABLE `tham_khao`
  ADD CONSTRAINT `tham_khao_ibfk_1` FOREIGN KEY (`ung_vien_id`) REFERENCES `ung_vien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tim_kiem_ung_vien`
--
ALTER TABLE `tim_kiem_ung_vien`
  ADD CONSTRAINT `tim_kiem_ung_vien_ibfk_1` FOREIGN KEY (`nha_tuyen_dung_id`) REFERENCES `nha_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tim_kiem_ung_vien_phu`
--
ALTER TABLE `tim_kiem_ung_vien_phu`
  ADD CONSTRAINT `tim_kiem_ung_vien_phu_ibfk_1` FOREIGN KEY (`tim_kiem_ung_vien_id`) REFERENCES `tim_kiem_ung_vien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tu_dong_lam_moi_hang_ngay`
--
ALTER TABLE `tu_dong_lam_moi_hang_ngay`
  ADD CONSTRAINT `tu_dong_lam_moi_hang_ngay_ibfk_1` FOREIGN KEY (`dang_tuyen_dung_id`) REFERENCES `dang_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tu_dong_lam_moi_hang_ngay_phu`
--
ALTER TABLE `tu_dong_lam_moi_hang_ngay_phu`
  ADD CONSTRAINT `tu_dong_lam_moi_hang_ngay_phu_ibfk_1` FOREIGN KEY (`tu_dong_lam_moi_hang_ngay_id`) REFERENCES `tu_dong_lam_moi_hang_ngay` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tu_dong_lam_moi_hang_tuan`
--
ALTER TABLE `tu_dong_lam_moi_hang_tuan`
  ADD CONSTRAINT `tu_dong_lam_moi_hang_tuan_ibfk_1` FOREIGN KEY (`dang_tuyen_dung_id`) REFERENCES `dang_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tu_dong_lam_moi_hang_tuan_phu`
--
ALTER TABLE `tu_dong_lam_moi_hang_tuan_phu`
  ADD CONSTRAINT `tu_dong_lam_moi_hang_tuan_phu_ibfk_1` FOREIGN KEY (`tu_dong_lam_moi_hang_tuan_id`) REFERENCES `tu_dong_lam_moi_hang_tuan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `uu_tien_nganh_nghe`
--
ALTER TABLE `uu_tien_nganh_nghe`
  ADD CONSTRAINT `uu_tien_nganh_nghe_ibfk_1` FOREIGN KEY (`dang_tuyen_dung_id`) REFERENCES `dang_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `uu_tien_nganh_nghe_phu`
--
ALTER TABLE `uu_tien_nganh_nghe_phu`
  ADD CONSTRAINT `uu_tien_nganh_nghe_phu_ibfk_1` FOREIGN KEY (`uu_tien_nganh_nghe_id`) REFERENCES `uu_tien_nganh_nghe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `viec_lam_cap_quan_ly`
--
ALTER TABLE `viec_lam_cap_quan_ly`
  ADD CONSTRAINT `viec_lam_cap_quan_ly_ibfk_1` FOREIGN KEY (`dang_tuyen_dung_id`) REFERENCES `dang_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `viec_lam_cap_quan_ly_phu`
--
ALTER TABLE `viec_lam_cap_quan_ly_phu`
  ADD CONSTRAINT `viec_lam_cap_quan_ly_phu_ibfk_1` FOREIGN KEY (`viec_lam_cap_quan_ly_id`) REFERENCES `viec_lam_cap_quan_ly` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `viec_lam_thu_hut`
--
ALTER TABLE `viec_lam_thu_hut`
  ADD CONSTRAINT `viec_lam_thu_hut_ibfk_1` FOREIGN KEY (`dang_tuyen_dung_id`) REFERENCES `dang_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `viec_lam_thu_hut_phu`
--
ALTER TABLE `viec_lam_thu_hut_phu`
  ADD CONSTRAINT `viec_lam_thu_hut_phu_ibfk_1` FOREIGN KEY (`viec_lam_thu_hut_id`) REFERENCES `viec_lam_thu_hut` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `viec_lam_trang_chu`
--
ALTER TABLE `viec_lam_trang_chu`
  ADD CONSTRAINT `viec_lam_trang_chu_ibfk_1` FOREIGN KEY (`dang_tuyen_dung_id`) REFERENCES `dang_tuyen_dung` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `viec_lam_trang_chu_phu`
--
ALTER TABLE `viec_lam_trang_chu_phu`
  ADD CONSTRAINT `viec_lam_trang_chu_phu_ibfk_1` FOREIGN KEY (`viec_lam_trang_chu_id`) REFERENCES `viec_lam_trang_chu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
