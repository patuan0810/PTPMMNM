-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 07, 2022 lúc 11:01 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoes`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'hieutan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'hieutan', '0932023991', NULL, NULL),
(2, 'hieutan123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'hieutan123', '0932023992', NULL, NULL),
(3, 'hieutan456@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'hieutan456', '0932023993', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_slug`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Sony', 'sony', 'Sony là hãng công nghệ hàng đầu thế giới về thiết bị điện tử,gia dụng', 0, NULL, NULL),
(2, 'Samsung', 'samsung', 'Samsung là hãng công nghệ hàng đầu thế giới về thiết bị điện tử,gia dụng', 0, NULL, NULL),
(3, 'chanel', 'chanel', 'Chanel là hãng thời trang hàng đầu thế giới cung cấp mặc hàng thời trang và nước hoa,túi sách...', 0, NULL, NULL),
(4, 'dior', 'dior', 'Dior là hãng thời trang hàng đầu thế giới cung cấp mặc hàng thời trang và nước hoa,túi sách...', 0, NULL, NULL),
(5, 'Fahasa', 'fahasa', 'Fahasa là nhà sách lớn ,cung cấp các loại sách và thể loại sách mà các bạn cần học', 0, NULL, NULL),
(6, 'Nhân văn', 'nhan-van', 'Nhân văn là nhà sách lớn ,cung cấp các loại sách và thể loại sách mà các bạn cần học', 0, NULL, NULL),
(7, 'Pet shop', 'pet-shop', 'Pet shop là  thế giới phụ kiện và thức ăn nhập khẩu dành cho thú cưng', 0, NULL, NULL),
(8, 'Mật pet family', 'mat-pet-family', 'Mật pet family là nơi cung cấp phụ kiện và dịch vụ cho thú cưng', 0, NULL, NULL),
(9, 'Apple', 'apple', 'Apple the best', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_category_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `meta_keywords`, `category_name`, `slug_category_product`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Tay cầm chơi game', 'Tay cầm chơi game', 'tay-cam-choi-game', 'Tay cầm chơi game', 0, NULL, NULL),
(2, 'may chơi game,may choi game,máy game,game chinh hãng,máy chơi game chính hãng', 'Máy chơi game', 'may-choi-game', 'Máy chơi game chính hãng nhập từ Mỹ,Úc,Nhật bản', 0, NULL, NULL),
(3, 'Quần áo cho nam,quan ao nam,mua quan nam,bán quần nam', 'Quần áo cho nam', 'quan-ao-cho-nam', 'Quần áo cho nam nhập từ China ,Hàn quốc,việt nam', 0, NULL, NULL),
(4, 'Quần áo cho nữ', 'Quần áo cho nữ', 'quan-ao-cho-nu', 'Quần áo cho nữ được nhập từ hàn quốc và nhật bản', 0, NULL, NULL),
(5, 'sach kinh te,ban sach kinh te,bán sách kinh tế ,sách dạy làm giàu', 'Sách kinh tế', 'sach-kinh-te', 'Bán sách kinh tế dạy đầu tư chính khoáng,đầu tư bất động sản', 0, NULL, NULL),
(6, 'Sách ngôn tình,sach ngon tinh,sach ngon tinh,sách dạy ngôn tình,sach ngon tinh chính thống', 'Sách ngôn tình', 'sach-ngon-tinh', 'Sách ngôn tình yêu đậm tính nhân văn và giáo dục', 0, NULL, NULL),
(7, 'ba lo cho chó,ba lo cho chó,ba lo chó,ba lo cho chó mèo', 'Ba lô thú cưng', 'ba-lo-thu-cưng', 'Bán ba lô cho thú cưng nhập khẩu uy tín chất lượng', 0, NULL, NULL),
(8, 'Thức ăn thú cưng,thuc an cho thu cung,thuc an thu cung,thu cung', 'Thức ăn cho thú cưng', 'thuc-an-cho-thu-cung', 'Bán thức ăn ngon chính hãng cho thú cưng của bạn', 0, NULL, NULL),
(9, 'Điện thoại samsung,dien thoai samsung,samsung', 'Điện thoại samsung', 'dien-thoai-samsung', 'Điện thoại samsung', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(4, 'Hiếu Tấn', 'tanhieu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0932023992', NULL, NULL),
(5, 'Hoàng thị yến vi', 'yenvi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0932023992', NULL, NULL),
(6, 'Trương Ngọc Tấn Hiếu', 'hieu123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0932023992', NULL, NULL),
(7, 'Anh hieu dep giai 123', 'depgiai123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0932023992', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_status` int(20) NOT NULL,
  `order_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `order_status`, `order_code`, `created_at`, `updated_at`) VALUES
(18, 4, 19, 1, '1778b', '2020-08-08 08:54:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `product_coupon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_feeship` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_code`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `product_coupon`, `product_feeship`, `created_at`, `updated_at`) VALUES
(47, '3fc48', 6, 'Royal Canin Urinary Canine Dog 2kg - Dành cho chó bị sỏi thận-10kg', '431000', 5, 'COVID99', '50000', NULL, NULL),
(48, '3fc48', 7, 'Thức ăn cho chó nhỏ trưởng thành Farmina N&D PUMPKIN vị heo, bí ngô và táo 3kg', '230000', 1, 'COVID99', '50000', NULL, NULL),
(49, '3fc48', 8, 'Thức ăn cho chó nhỏ trưởng thành Farmina N&D PUMPKIN vị heo, bí ngô và táo 7kg', '135000', 1, 'COVID99', '50000', NULL, NULL),
(50, '1778b', 24, 'Sách ngôn tình hồ ly tinh', '500000', 1, 'HDH375Y', '60000', NULL, NULL),
(51, '1778b', 22, 'Máy PS4 slim Mega pack 2', '7550000', 1, 'HDH375Y', '60000', NULL, NULL),
(52, '1778b', 20, 'Áo Thun Nam Y2010 Basic AI08', '286000', 1, 'HDH375Y', '60000', NULL, NULL),
(53, '1778b', 7, 'Thức ăn cho chó nhỏ trưởng thành Farmina N&D PUMPKIN vị heo, bí ngô và táo 3kg', '230000', 1, 'HDH375Y', '60000', NULL, NULL),
(54, '1778b', 6, 'Royal Canin Urinary Canine Dog 2kg - Dành cho chó bị sỏi thận-10kg', '431000', 1, 'HDH375Y', '60000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sold` int(11) DEFAULT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `brand_id` int(11) UNSIGNED NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_quantity`, `product_sold`, `product_slug`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(6, 'Royal Canin Urinary Canine Dog 2kg - Dành cho chó bị sỏi thận-10kg', '40', 10, 'royal-canin-urinary-canine-dog-2kg-danh-cho-cho-bi-soi-than-10kg', 8, 8, '<p>&nbsp;</p>\r\n\r\n<p>Royal Canin Urinary Canine Dog 2kg - D&agrave;nh cho ch&oacute; bị sỏi thận</p>', '<p><strong>Nguy&ecirc;n liệu</strong></p>\r\n\r\n<p>Bột bắp, gạo, chất b&eacute;o động vật, protein gia cầm, gluten bắp, kho&aacute;ng chất, protein động vật, xơ thực vật, dầu đậu n&agrave;nh, dầu c&aacute;, fructo-oligo-sacarit, monoglycerit v&agrave; diglycerit của axit palmitic v&agrave; stearic từ phản ứng este h&oacute;a với axit citric, chiết xuất c&uacute;c vạn thọ (nguồn lutein).<br />\r\nNguồn protein: protein gia cầm, gluten bắp, protein động vật.</p>\r\n\r\n<p>Phụ gia dinh dưỡng: Vitamin A, Vitamin D3, E1(Sắt), E2 (I ốt), E4 (Đồng), E5 (Mangan), E6 (Kẽm), E8 (Selen), Chất axit h&oacute;a nước tiểu: Canxi Sunfat (0.88%). Chất chống oxi h&oacute;a.</p>\r\n\r\n<p><strong>Th&agrave;nh phần dinh dưỡng</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.petcity.vn/media/lib/4372_Thnhphndinhdng.jpg\" /></p>\r\n\r\n<p><strong>Đặc t&iacute;nh nổi bật</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.petcity.vn/media/lib/4372_ctnhnibt.jpg\" /></p>\r\n\r\n<p><strong>Khẩu phần ăn chuẩn</strong>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.petcity.vn/media/lib/4372_Bngnthamkho.jpg\" /></p>', '431000', '250_4341_ava66.jpg', 0, NULL, NULL),
(7, 'Thức ăn cho chó nhỏ trưởng thành Farmina N&D PUMPKIN vị heo, bí ngô và táo 3kg', '98', 2, 'thuc-an-cho-cho-nho-truong-thanh-farmina-nd-pumpkin-vi-heo-bi-ngo-va-tao-3kg', 8, 8, '<p>Thức ăn cho ch&oacute; nhỏ trưởng th&agrave;nh Farmina N&amp;D PUMPKIN vị heo, b&iacute; ng&ocirc; v&agrave; t&aacute;o 3kg</p>', '<h3>Farmina - N&amp;D PUMPKIN DOG boar, apple mini adult</h3>\r\n\r\n<p>(d&agrave;nh cho ch&oacute; nhỏ tr&ecirc;n 10 th&aacute;ng tuổi)</p>\r\n\r\n<p>Vị heo, b&iacute; ng&ocirc; v&agrave; t&aacute;o</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/78cb3d06-bf55-435e-bdf7-33be79a67da8\" width=\"250\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p><strong>Th&agrave;nh phần&nbsp;</strong></p>\r\n\r\n<p>Thịt lợn rừng kh&ocirc;ng xương (24%), protein thịt lợn mất nước (22%), tinh bột đậu (20%), mỡ g&agrave;, b&iacute; ng&ocirc; khử nước (5%), trứng khử nước, dầu c&aacute;, chất xơ thực vật, c&agrave; rốt kh&ocirc;, cỏ linh lăng kh&ocirc;, inulin, fructooligosacarit, mannanoligosacarit, t&aacute;o khử nước (0,5%), bột rau bina, psyllium (0,3%), bột lựu, bột blackcurrant, cam ngọt, nước ngọt , chondroitin sulphate, chiết xuất c&uacute;c vạn thọ (nguồn lutein)</p>', '230000', '250_4343_ava69.jpg', 0, NULL, NULL),
(8, 'Thức ăn cho chó nhỏ trưởng thành Farmina N&D PUMPKIN vị heo, bí ngô và táo 7kg', '98', 2, 'thuc-an-cho-cho-nho-truong-thanh-farmina-nd-pumpkin-vi-heo-bi-ngo-va-tao-7kg', 8, 8, '<p>Thức ăn cho ch&oacute; nhỏ trưởng th&agrave;nh Farmina N&amp;D PUMPKIN vị heo, b&iacute; ng&ocirc; v&agrave; t&aacute;o 7kg</p>', '<h3>Farmina - N&amp;D PUMPKIN DOG boar, apple mini adult</h3>\r\n\r\n<p>(d&agrave;nh cho ch&oacute; nhỏ tr&ecirc;n 10 th&aacute;ng tuổi)</p>\r\n\r\n<p>Vị heo, b&iacute; ng&ocirc; v&agrave; t&aacute;o</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/78cb3d06-bf55-435e-bdf7-33be79a67da8\" width=\"250\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p><strong>Th&agrave;nh phần&nbsp;</strong></p>\r\n\r\n<p>Thịt lợn rừng kh&ocirc;ng xương (24%), protein thịt lợn mất nước (22%), tinh bột đậu (20%), mỡ g&agrave;, b&iacute; ng&ocirc; khử nước (5%), trứng khử nước, dầu c&aacute;, chất xơ thực vật, c&agrave; rốt kh&ocirc;, cỏ linh lăng kh&ocirc;, inulin, fructooligosacarit, mannanoligosacarit, t&aacute;o khử nước (0,5%), bột rau bina, psyllium (0,3%), bột lựu, bột blackcurrant, cam ngọt, nước ngọt , chondroitin sulphate, chiết xuất c&uacute;c vạn thọ (nguồn lutein)</p>', '135000', '250_4343_ava69.jpg', 0, NULL, NULL),
(9, 'Royal Canin Urinary Canine Dog 2kg - Dành cho chó bị sỏi thận', '60', NULL, 'royal-canin-urinary-canine-dog-2kg-danh-cho-cho-bi-soi-than', 8, 8, '<p>Royal Canin Urinary Canine Dog 2kg - D&agrave;nh cho ch&oacute; bị sỏi thận</p>', '<h3>Farmina - N&amp;D PUMPKIN DOG boar, apple mini adult</h3>\r\n\r\n<p>(d&agrave;nh cho ch&oacute; nhỏ tr&ecirc;n 10 th&aacute;ng tuổi)</p>\r\n\r\n<p>Vị heo, b&iacute; ng&ocirc; v&agrave; t&aacute;o</p>\r\n\r\n<p><strong>Th&agrave;nh phần&nbsp;</strong></p>\r\n\r\n<p>Thịt lợn rừng kh&ocirc;ng xương (24%), protein thịt lợn mất nước (22%), tinh bột đậu (20%), mỡ g&agrave;, b&iacute; ng&ocirc; khử nước (5%), trứng khử nước, dầu c&aacute;, chất xơ thực vật, c&agrave; rốt kh&ocirc;, cỏ linh lăng kh&ocirc;, inulin, fructooligosacarit, mannanoligosacarit, t&aacute;o khử nước (0,5%), bột rau bina, psyllium (0,3%), bột lựu, bột blackcurrant, cam ngọt, nước ngọt , chondroitin sulphate, chiết xuất c&uacute;c vạn thọ (nguồn lutein)</p>\r\n\r\n<p><strong>Bảng ăn tham khảo</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.petcity.vn/media/lib/4284_bngn.png\" /></p>', '450000', '1444_SmartheartPuppy54.jpg', 0, NULL, NULL),
(10, 'Thức ăn cho chó nhỏ trưởng thành Farmina - N&D PUMPKIN vị gà, bí ngô, công thức lựu', '100', NULL, 'thuc-an-cho-cho-nho-truong-thanh-farmina-nd-pumpkin-vi-ga-bi-ngo-cong-thuc-luu', 8, 8, '<p>Thức ăn cho ch&oacute; nhỏ trưởng th&agrave;nh Farmina - N&amp;D PUMPKIN vị g&agrave;, b&iacute; ng&ocirc;, c&ocirc;ng thức lựu&nbsp;</p>', '<h3>Farmina - N&amp;D PUMPKIN DOG chicken mini adult</h3>\r\n\r\n<p>(d&agrave;nh cho ch&oacute; nhỏ tr&ecirc;n 10 th&aacute;ng tuổi)</p>\r\n\r\n<p>Vị g&agrave;, b&iacute; ng&ocirc;, c&ocirc;ng thức lựu</p>\r\n\r\n<p><strong>Th&agrave;nh phần</strong></p>\r\n\r\n<p>G&agrave; kh&ocirc;ng xương (24%), protein g&agrave; mất nước (22%), tinh bột đậu (20%), mỡ g&agrave;, b&iacute; ng&ocirc; khử nước (5%), trứng khử nước, c&aacute; tr&iacute;ch, protein c&aacute; tr&iacute;ch mất nước, dầu c&aacute;, xơ thực vật, sấy kh&ocirc; c&agrave; rốt, cỏ linh lăng kh&ocirc;, inulin, fructooligosacarit, mannanoligosacarit, bột lựu (0,5%), t&aacute;o khử nước, bột rau bina, psyllium (0,3%), bột blackcurrant, cam kh&ocirc;, bột ngọt 0,2%), glucosamine, chondroitin sulphate, chiết xuất c&uacute;c vạn thọ (nguồn lutein)</p>\r\n\r\n<p><strong>Bảng ăn tham khảo</strong></p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://www.petcity.vn/media/lib/4283_ntk.png\" /></p>', '125000', '12315.jpg', 0, NULL, NULL),
(11, 'Thức ăn ướt Me-o Delite vị cá ngừ và thịt gà xé 70gr', '100', NULL, 'thuc-an-uot-me-o-delite-vi-ca-ngu-va-thit-ga-xe-70gr', 8, 8, '<p>Thức ăn ướt Me-o Delite vị c&aacute; ngừ v&agrave; thịt g&agrave; x&eacute; 70gr</p>', '<p><strong>Thức ăn ướt Me-o Delite vị c&aacute; ngừ v&agrave; thịt g&agrave; x&eacute;</strong></p>\r\n\r\n<p><strong>Nguy&ecirc;n Liệu Ch&iacute;nh:</strong>&nbsp;C&aacute; ngừ tươi, thịt g&agrave; x&eacute;, chất tạo đ&ocirc;ng, chất điều vị, taurin, c&aacute;c vitamin v&agrave; kho&aacute;ng chất.</p>\r\n\r\n<p><strong>Th&agrave;nh phần dinh dưỡng&nbsp;</strong></p>\r\n\r\n<p>Chất đạm : 8%</p>\r\n\r\n<p>Chất b&eacute;o : 0.3%&nbsp;</p>\r\n\r\n<p>Chất xơ : 1%</p>\r\n\r\n<p>Độ ẩm : 90%</p>\r\n\r\n<p><strong>Điểm nổi bật&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Được l&agrave;m từ c&aacute; thật</li>\r\n	<li>Taurine: Tăng cường hệ miễn dịch v&agrave; thị gi&aacute;c.</li>\r\n	<li>Biotin/ Zinc: Gi&uacute;p l&agrave;n da v&agrave; bộ long khỏe mạnh.</li>\r\n	<li>Vitamin C: Gi&uacute;p tăng cường hệ miễn dịch.</li>\r\n</ul>\r\n\r\n<p><strong>Bảo quản:</strong>&nbsp;Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t</p>', '25000', '12342.jpg', 0, NULL, NULL),
(12, 'Whiskas - Pate Tuna junior 85g', '90', NULL, 'whiskas-pate-tuna-junior-85g', 8, 8, '<p>Whiskas - Pate Tuna junior 85g</p>', '<p>Whiskas - Pate Tuna junior 85g</p>', '10000', '1251_790_royal_canin_indoor_2726.jpg', 0, NULL, NULL),
(13, 'Súp thưởng Ciao vị cá ngừ và sò điệp cho mèo (14g*20)', '100', NULL, 'sup-thuong-ciao-vi-ca-ngu-va-so-diep-cho-meo-14g20', 8, 8, '<p>S&uacute;p thưởng Ciao vị c&aacute; ngừ v&agrave; s&ograve; điệp cho m&egrave;o (14g*20)</p>', '<p><strong>S&uacute;p thưởng Ciao vị c&aacute; ngừ v&agrave; s&ograve; điệp</strong></p>\r\n\r\n<p><strong>Th&agrave;nh phần</strong></p>\r\n\r\n<p>C&aacute; ngừ, s&ograve; điệp, tinh bột biến t&iacute;nh, chất tạo m&ugrave;i, Guar Gum, chiết xuất s&ograve; điệp, Vitamin E, Carrageenan, bột tr&agrave; xanh, Fructooligosaccharides.</p>\r\n\r\n<p><strong>Th&agrave;nh phần dinh dưỡng&nbsp;</strong></p>\r\n\r\n<p>Độ ẩm &le; 93,0 %; Protein th&ocirc; &ge; 7,0 %; B&eacute;o th&ocirc; &ge; 0,2 %; Xơ th&ocirc; &le; 1,0 %; Kho&aacute;ng tổng số &le; 2,0 %</p>\r\n\r\n<p><strong>Sử dụng</strong></p>\r\n\r\n<p>Cho ăn trực tiếp &ndash; D&ugrave;ng như b&aacute;nh thưởng.</p>\r\n\r\n<p>Khẩu phần: 56g/ ng&agrave;y.</p>\r\n\r\n<p>Sản phẩm n&agrave;y kh&ocirc;ng d&ugrave;ng thay thế bữa ăn ch&iacute;nh. Lu&ocirc;n giữ cung cấp nước sạch thường xuy&ecirc;n.</p>', '138000', '250_4370_ciao_g_____c___ng___7.png', 0, NULL, NULL),
(14, 'Áo Thun Nam Y2010 Basic AI05', '60', NULL, 'ao-thun-nam-y2010-basic-ai05', 3, 4, '<p>&Aacute;o Thun Nam Y2010 Basic AI05</p>', '<h5>Tiết kiệm&nbsp;-37,000 đ</h5>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>0019492001</td>\r\n			<td>Đen, M</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492002</td>\r\n			<td>Đen, L</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492003</td>\r\n			<td>Đen, XL</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại C</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/dded5595-6630-4325-a8f7-dbc35a0b7bf6\" width=\"500\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '135000', 'd84OO5_simg_de2fe0_500x500_maxb59.jpg', 0, NULL, NULL),
(15, 'Áo Thun Nam Y2010 Basic AI01', '60', NULL, 'ao-thun-nam-y2010-basic-ai01', 3, 8, '<p>&Aacute;o Thun Nam Y2010 Basic AI05</p>', '<h5>Tiết kiệm&nbsp;-37,000 đ</h5>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>0019492001</td>\r\n			<td>Đen, M</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492002</td>\r\n			<td>Đen, L</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492003</td>\r\n			<td>Đen, XL</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại C</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/dded5595-6630-4325-a8f7-dbc35a0b7bf6\" width=\"500\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '145000', 'ao787.jpg', 0, NULL, NULL),
(16, 'Áo Thun Nam Y2010 Basic AI02', '70', NULL, 'ao-thun-nam-y2010-basic-ai02', 3, 4, '<p>&Aacute;o Thun Nam Y2010 Basic AI05</p>', '<h5>Tiết kiệm&nbsp;-37,000 đ</h5>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>0019492001</td>\r\n			<td>Đen, M</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492002</td>\r\n			<td>Đen, L</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492003</td>\r\n			<td>Đen, XL</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại C</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/dded5595-6630-4325-a8f7-dbc35a0b7bf6\" width=\"500\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '195000', 'd84OO5_simg_de2fe0_500x500_maxb59.jpg', 0, NULL, NULL),
(17, 'Áo Thun Nam Y2010 Basic AI03', '80', NULL, 'ao-thun-nam-y2010-basic-ai03', 3, 8, '<p>&Aacute;o Thun Nam Y2010 Basic AI05</p>', '<h5>Tiết kiệm&nbsp;-37,000 đ</h5>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>0019492001</td>\r\n			<td>Đen, M</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492002</td>\r\n			<td>Đen, L</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492003</td>\r\n			<td>Đen, XL</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại C</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/dded5595-6630-4325-a8f7-dbc35a0b7bf6\" width=\"500\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '295000', 'ao423.jpg', 0, NULL, NULL),
(18, 'Áo Thun Nam Y2010 Basic AI04', '80', NULL, 'ao-thun-nam-y2010-basic-ai04', 3, 8, '<p>&Aacute;o Thun Nam Y2010 Basic AI05</p>', '<h5>Tiết kiệm&nbsp;-37,000 đ</h5>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>0019492001</td>\r\n			<td>Đen, M</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492002</td>\r\n			<td>Đen, L</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492003</td>\r\n			<td>Đen, XL</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại C</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/dded5595-6630-4325-a8f7-dbc35a0b7bf6\" width=\"500\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '395000', 'ao345.jpg', 0, NULL, NULL),
(19, 'Áo Thun Nam Y2010 Basic AI06', '25', NULL, 'ao-thun-nam-y2010-basic-ai06', 3, 8, '<p>&Aacute;o Thun Nam Y2010 Basic AI05</p>', '<h5>Tiết kiệm&nbsp;-37,000 đ</h5>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>0019492001</td>\r\n			<td>Đen, M</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492002</td>\r\n			<td>Đen, L</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492003</td>\r\n			<td>Đen, XL</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại C</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/dded5595-6630-4325-a8f7-dbc35a0b7bf6\" width=\"500\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '285000', 'ao214.jpg', 0, NULL, NULL),
(20, 'Áo Thun Nam Y2010 Basic AI08', '36', NULL, 'ao-thun-nam-y2010-basic-ai08', 3, 8, '<p>&Aacute;o Thun Nam Y2010 Basic AI05</p>', '<h5>Tiết kiệm&nbsp;-37,000 đ</h5>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>0019492001</td>\r\n			<td>Đen, M</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492002</td>\r\n			<td>Đen, L</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại CH</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>0019492003</td>\r\n			<td>Đen, XL</td>\r\n			<td><a href=\"javascript:void(0);\" title=\"\"><strong>37</strong>&nbsp;CH c&ograve;n</a></td>\r\n			<td>Sale đ&nbsp;<strong>148,000</strong>&nbsp;&nbsp;&nbsp;&nbsp;<strong>B&aacute;n tại C</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/dded5595-6630-4325-a8f7-dbc35a0b7bf6\" width=\"500\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '286000', 'ao163.jpg', 0, NULL, NULL),
(21, 'Playstation 4 Pro 1TB USED', '60', NULL, 'playstation-4-pro-1tb-used', 2, 8, '<p>Playstation 4 Pro 1TB đ&atilde; qua sử dụng</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:185px; top:28px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/icon/16.png\" /></div>', '<table>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>CẤU H&Igrave;NH CHI TIẾT</strong></td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M&atilde; sản phẩm</td>\r\n			<td>CUH-7218B series</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chi tiết CPU</td>\r\n			<td>x86-64 AMD &quot;Jaguar&quot;, 8 nh&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPU</td>\r\n			<td>4.20 TFLOPS, đồ họa nền tảng AMD Radeon</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>GDDR5 8GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong</td>\r\n			<td>1TB</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>KẾT NỐI DỮ LIỆU</strong></td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Ổ đĩa BD/DVD (chỉ đọc)</td>\r\n			<td>BD x 6 CAV, DVD x 8 CAV</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường v&agrave;o / ra</td>\r\n			<td>3x Cổng USB tốc độ cao (USB 3.1 thế hệ 1), 1x Cổng AUX</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cổng ra AV</td>\r\n			<td>HDMI out port (hỗ trợ 4K/HDR), Cổng quang (OPTICAL port)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kết nối mạng</td>\r\n			<td>C&aacute;p mạng Ethernet (10BASE-T, 100BASE-TX, 1000BASE-T)x1 Wi-Fi IEEE 802.11 a/b/g/n/ac. Bluetooth 4.0 (năng lượng thấp)</td>\r\n		</tr>\r\n	</tbody>\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>TH&Ocirc;NG SỐ VẬT L&Yacute;</strong></td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>M&agrave;u sắc sản phẩm</td>\r\n			<td>Jet Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>295 x 55 x 327 mm (rộng x d&agrave;i x cao)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>3.3 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nguồn điện</td>\r\n			<td>Xoay chiều, 100-240V, 50/60Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&ocirc;ng suất ti&ecirc;u thụ</td>\r\n			<td>Tối đa 310W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nhiệt độ l&agrave;m việc</td>\r\n			<td>5&ordm;C - 35&ordm;C</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '6800000', 'mayps179.jpg', 0, NULL, NULL),
(22, 'Máy PS4 slim Mega pack 2', '90', NULL, 'may-ps4-slim-mega-pack-2', 2, 1, '<p>M&aacute;y PS4 slim Mega pack 2</p>', '<p>M&aacute;y PS4 slim mega pack h&agrave;ng ch&iacute;nh h&atilde;ng Sony Việt Nam. Bảo h&agrave;nh h&atilde;ng 01 năm. Miễn ph&iacute; lắp đặt n&ocirc;i th&agrave;nh H&agrave; nội. Ship COD to&agrave;n quốc. Hỗ trợ trả g&oacute;p l&atilde;i xuất 0%</p>\r\n\r\n<p>Bộ sản phẩm gồm :</p>\r\n\r\n<p>- 01 bộ m&aacute;y PS4 slim ổ cứng 1T đời mới nhất cuh 2218 ( đ&atilde; c&oacute; 01 tay theo m&aacute;y )</p>\r\n\r\n<p>- 03 đĩa game mới nguy&ecirc;n seal: God of war 4, Horizon complete edition v&agrave; GTA 5</p>\r\n\r\n<p>KH&Ocirc;NG LẤY QU&Agrave; TẶNG VUI L&Ograve;NG INBOX SHOP HOẶC GỌI HOTLINE 0936011022</p>\r\n\r\n<p><img alt=\"Máy PS4 slim mega pack hàng chính hãng Sony Việt Nam\" src=\"https://bucket.nhanh.vn/store/24046/psCT/20191126/18323327/ps4_slim_mega_pack_.jpg\" /></p>', '7550000', 'mayps381.jpg', 0, NULL, NULL),
(23, 'Combo Máy PS4 slim 1T kèm 2 tay và đĩa PES 20', '90', NULL, 'combo-may-ps4-slim-1t-kem-2-tay-va-dia-pes-20', 2, 8, '<p>Combo M&aacute;y PS4 slim 1T k&egrave;m 2 tay v&agrave; đĩa PES 20</p>', '<p>M&aacute;y Ps4 pro b&aacute;n bởi Hotgamestore - Đại l&yacute; ch&iacute;nh h&atilde;ng Playstation của Sony tại Việt Nam - l&agrave; m&aacute;y nhập khẩu ch&iacute;nh h&atilde;ng, bảo h&agrave;nh tại Trung t&acirc;m hỗ trợ bảo h&agrave;nh Sony to&agrave;n Việt Nam. M&aacute;y Ps4 pro được k&iacute;ch hoạt bảo h&agrave;nh ngay khi kh&aacute;ch h&agrave;ng&nbsp;mua m&aacute;y, qu&yacute; kh&aacute;ch kh&ocirc;ng cần bất cứ giấy tờ g&igrave; khi mang m&aacute;y Ps4 pro đi bảo h&agrave;nh .</p>', '8090000', '12344468.jpg', 0, NULL, NULL),
(24, 'Sách ngôn tình hồ ly tinh', '10', NULL, 'sach-ngon-tinh-ho-ly-tinh', 6, 6, '<p>S&aacute;ch ng&ocirc;n t&igrave;nh hồ ly tinh</p>', '<p>S&aacute;ch ng&ocirc;n t&igrave;nh hồ ly tinh&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '500000', 'sachngontinh68.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `shipping_method`, `created_at`, `updated_at`) VALUES
(17, 'Hieu Tấn', '245 Nguyễn Văn Khạ, Tân An Hội .Thị trấn Củ Chi,TPHCM', '0932023992', 'Hieu dep giai', 'Nhanh nha mày', 1, NULL, NULL),
(18, 'Hieu tấn', '123/123', '0932023992', 'dsadas@gmail.com', 'dasdasdasdas', 1, NULL, NULL),
(19, 'Hieu tấn', '123/123', '0932023992', 'dsadas@gmail.com', 'dasdasdasdas', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `slider_status` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_name`, `slider_status`, `slider_image`, `slider_desc`) VALUES
(3, 'Slider 2', 1, 'slider275.jpg', 'dsadasdas'),
(6, 'Slider quan áo', 1, '091216-casualfalloutifts-slider-2png18.png', 'Slider quan áo'),
(7, 'Slider Thú cưng', 1, 'banner-template-concept-pet-shop_23-214843688821.jpg', 'Slider Thú cưng'),
(8, 'Book slider', 1, 'bookslider43.jpg', 'Book slider');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_social`
--

CREATE TABLE `tbl_social` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(100) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_social`
--

INSERT INTO `tbl_social` (`user_id`, `provider_user_id`, `provider`, `user`) VALUES
(6, '221605442317143', 'facebook', 6),
(13, '111257400060277532733', 'GOOGLE', 12),
(14, '111264198467826812391', 'GOOGLE', 2),
(15, '108162077516942840028', 'GOOGLE', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
