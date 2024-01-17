-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 08, 2024 lúc 03:16 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pkcongnghe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `ID_BinhLuan` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `NoiDung` varchar(255) NOT NULL,
  `ThoiGianBinhLuan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`ID_BinhLuan`, `ID_ThanhVien`, `ID_SanPham`, `NoiDung`, `ThoiGianBinhLuan`) VALUES
(1, 1, 1002, 'Sản phẩm tuyệt vời', '2023-07-06 07:56:56'),
(2, 1, 2003, 'Chất lượng tuyệt vời', '2023-08-08 08:38:42'),
(3, 1, 1002, 'Sản phẩm sạch', '2023-08-20 21:15:49'),
(5, 1, 3015, 'Chất lượng', '2023-08-29 15:08:04'),
(7, 1, 3004, 'ngon', '2023-09-08 21:47:03'),
(8, 1, 1001, 'sản phẩm tốt', '2024-01-07 09:20:19'),
(9, 1, 2003, 'vip pro mã\r\n', '2024-01-08 20:53:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `ID_DonHang` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `CodeOrder` int(11) DEFAULT NULL,
  `GiaMua` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`ID_DonHang`, `ID_SanPham`, `SoLuong`, `CodeOrder`, `GiaMua`) VALUES
(107, 1001, 1, 586, 47500),
(107, 3011, 1, 586, 76000),
(111, 2005, 1, 1965, 314100),
(111, 3004, 1, 1965, 468000),
(112, 3015, 1, 4316, 42750),
(113, 3004, 1, 7919, 468000),
(114, 1001, 1, 3924, 47500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `ID_GioHang` int(11) NOT NULL,
  `ID_SanPham` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ID_DanhMuc` int(11) NOT NULL,
  `TenDanhMuc` varchar(30) NOT NULL,
  `Mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`ID_DanhMuc`, `TenDanhMuc`, `Mota`) VALUES
(1, 'Ốp điện thoại', 'Sản phẩm bảo vệ chiếc điện thoại của bạn'),
(2, 'Tai nghe', 'Tai nghe không dây, tai nghe có dây dành cho điện thoại hoặc laptop'),
(3, 'Chuột máy tính', 'Phụ kiện không thể thiếu dành cho laptop\r\n'),
(7, 'Sạc và pin dự phòng', 'Tiện lợi, dễ dàng mang theo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ID_DonHang` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL,
  `ThoiGianLap` datetime NOT NULL,
  `DiaChi` varchar(30) NOT NULL,
  `GhiChu` varchar(255) NOT NULL,
  `GiaTien` float NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `XuLy` tinyint(1) NOT NULL,
  `NguoiNhan` varchar(50) DEFAULT NULL,
  `HinhThucThanhToan` varchar(20) DEFAULT NULL,
  `CodeOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`ID_DonHang`, `ID_ThanhVien`, `ThoiGianLap`, `DiaChi`, `GhiChu`, `GiaTien`, `SoDienThoai`, `XuLy`, `NguoiNhan`, `HinhThucThanhToan`, `CodeOrder`) VALUES
(107, 1, '2024-01-06 21:18:00', 'Hà Nội', '', 123500, '0123456789', 1, 'Nguyễn Văn A', 'cod', 586),
(111, 1, '2024-01-07 10:56:47', 'Hà Nội', '', 782100, '0123456789', 1, 'Nguyễn Văn A', 'cod', 1965),
(112, 1, '2024-01-07 11:01:08', 'Hà Nội', '', 42750, '0123456789', 1, 'Nguyễn Văn A', 'cod', 4316),
(113, 1, '2024-01-07 11:09:17', 'Hà Nội', '', 468000, '0123456789', 1, 'Nguyễn Văn A', 'cod', 7919),
(114, 1, '2024-01-08 20:50:41', 'Hà Nội', '', 47500, '0123456789', 1, 'Nguyễn Văn A', 'cod', 3924);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `ID_GioHang` int(11) NOT NULL,
  `ID_ThanhVien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`ID_GioHang`, `ID_ThanhVien`) VALUES
(1, 1),
(4, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `ID_MoMo` int(11) NOT NULL,
  `PartnerCode` varchar(50) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `Amount` varchar(50) NOT NULL,
  `OrderInfo` varchar(100) NOT NULL,
  `OrderType` varchar(50) NOT NULL,
  `TransId` int(11) NOT NULL,
  `payType` varchar(50) NOT NULL,
  `CodeOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `momo`
--

INSERT INTO `momo` (`ID_MoMo`, `PartnerCode`, `OrderId`, `Amount`, `OrderInfo`, `OrderType`, `TransId`, `payType`, `CodeOrder`) VALUES
(5, 'MOMOBKUN20180529', 1692868853, '31500', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 2045),
(6, 'MOMOBKUN20180529', 1692882873, '342000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 7592),
(7, 'MOMOBKUN20180529', 1693055000, '47500', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 3287),
(8, 'MOMOBKUN20180529', 1693232468, '171000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 5646),
(9, 'MOMOBKUN20180529', 1693275093, '152000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 7176),
(10, 'MOMOBKUN20180529', 1693306862, '422750', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 6235),
(11, 'MOMOBKUN20180529', 1693312567, '1140000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 7859),
(12, 'MOMOBKUN20180529', 1693360388, '14250', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 2624),
(13, 'MOMOBKUN20180529', 1694306029, '380000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 2823),
(14, 'MOMOBKUN20180529', 1694311095, '1078250', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', 8404);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `ID_NCC` int(11) NOT NULL,
  `TenNCC` varchar(50) NOT NULL,
  `MoTa` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `Img` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`ID_NCC`, `TenNCC`, `MoTa`, `Email`, `SoDienThoai`, `DiaChi`, `Img`) VALUES
(1, 'TrumSiAZ', 'Trumsiaz không chỉ là một cửa hàng, mà là điểm đến của những người đam mê công nghệ, nơi họ có thể tìm thấy những sản phẩm phụ kiện độc đáo, chất lượng và phản ánh phong cách sống hiện đại.', 'TrumSiAZ@gmail.com', '0889283868', 'Bình Thạnh, tp.HCM', 'trumsiaz.jpg'),
(2, 'Phụ Kiện ANGR', 'ANGR là điểm đến lý tưởng cho những người đam mê công nghệ. Đội ngũ nhân viên chuyên nghiệp và thân thiện tại ANGR sẵn sàng hỗ trợ bạn chọn lựa những sản phẩm phụ kiện thông minh và tiện ích.', 'phukienANGR@gmail.com', '0438834806', 'Vân Nội, Đông Anh, Hà Nội', 'angr.jpg'),
(3, 'Công nghệ GAP', 'GAP tạo ra môi trường mua sắm thoải mái và trải nghiệm sản phẩm hiệu quả. Đội ngũ nhân viên chuyên nghiệp tại GAP sẽ hướng dẫn bạn khám phá thế giới của những phụ kiện công nghệ tiên tiến và đẳng cấp.', 'dalatgap@gmail.com', '0432000100', 'Láng Hạ, Đống Đa, Hà Nội', 'gap.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanly`
--

CREATE TABLE `quanly` (
  `ID_QuanLy` int(11) NOT NULL,
  `TenDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quanly`
--

INSERT INTO `quanly` (`ID_QuanLy`, `TenDangNhap`, `MatKhau`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70'),
(2, 'linh', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID_SanPham` int(11) NOT NULL,
  `ID_DanhMuc` int(11) NOT NULL,
  `ID_NhaCungCap` int(11) NOT NULL,
  `TenSanPham` varchar(30) NOT NULL,
  `MoTa` text NOT NULL,
  `GiaBan` float NOT NULL,
  `SoLuong` float NOT NULL,
  `Img` varchar(20) NOT NULL,
  `GiamGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID_SanPham`, `ID_DanhMuc`, `ID_NhaCungCap`, `TenSanPham`, `MoTa`, `GiaBan`, `SoLuong`, `Img`, `GiamGia`) VALUES
(1001, 1, 2, 'Ốp điện thoại MX-301113', 'Ốp điện thoại chất lượng tốt', 50000, 97, 'op4.jpg', 5),
(1002, 1, 2, 'CXM-Op DT chính hãng', 'ốp điện thoại dành cho loại máy sam sung, oppo', 55000, 100, 'op5.jpg', 5),
(1003, 7, 3, 'Pin sạc dự phòng 10000mAh Type', 'Pin sạc dự phòng 10000mAh Type C PD QC 3.0 30W Anker A1256 sở hữu gam màu sang trọng, thiết kế đẹp mắt, hiệu suất sạc lớn, tương thích với nhiều thiết bị, mang đến cho người dùng những trải nghiệm hoàn hảo.', 560000, 100, 'anker.jpg', 10),
(2001, 7, 3, 'Pin sạc dự phòng Polymer 10000', 'Dung lượng pin 10.000 mAh, hiệu suất sạc 64%.\r\nLõi pin Polymer độ bền cao, có đèn LED báo hiệu kiểm tra pin linh hoạt. \r\nTích hợp 2 nguồn ra USB 5V - 2A, Type-C 5V - 3A.\r\nSạc lại dễ dàng với 2 nguồn vào Micro USB 5V - 2A, Type-C 5V - 3A.\r\nThiết kế đơn giản, 2 màu đen - trắng đẹp mắt, dễ dàng mang theo.', 300000, 99, 'polymer.jpg', 10),
(2002, 7, 3, 'Cáp Type C 1m Belkin CAB001 ', '- Chất liệu dây nhựa dẻo bền, 2 màu trắng hoặc đen dễ lựa chọn.\r\n- Chiều dài dây 1 m dễ dùng, dễ quấn gọn, kết nối thuận tiện.\r\n- Tích hợp đầu ra Type C sạc tiêu chuẩn cho các thiết bị Type-C lên đến 12W (5V - 2.4A).\r\n- Truyền dữ liệu, nhạc hoặc hình ảnh giữa ổ cứng di động, PC, laptop, điện thoại... tiện lợi với 1 đầu cáp USB và 1 đầu cáp Type-C.\r\n- Tương thích tốt với nhiều thiết bị hiện đại.', 200000, 100, 'typeC.jpg', 10),
(2003, 7, 2, 'Cáp Đa Năng 4 in 1 Lightning T', 'Cáp Đa Năng 4 in 1 Lightning Type C 1m Xmobile DR003 có thiết kế thông minh với 4 đầu cáp đa năng, cho công suất tối đa lên đến 60 W, hứa hẹn mang đến cho người dùng trải nghiệm sử dụng tuyệt vời.', 225000, 100, 'capsac.jpg', 10),
(2004, 3, 3, 'Chuột Có dây Gaming Corsair M5', 'Đặc điểm nổi bật\r\n\r\nThiết kế thuận tiện tay cầm, kiểu dáng mạnh mẽ, cá tính.\r\n2 cạnh bên cao su tạo độ bám chắc, khối lượng chỉ 86 g, dễ di chuyển.\r\nCảm biến quang học 12.400 DPI dễ tùy chỉnh, giúp điều khiển chuột chính xác.\r\nTuổi thọ lên đến 50 triệu lần bấm với công nghệ Omron.\r\nChỉnh màu sắc đèn LED RGB trên công cụ iCUE, với 16.8 triệu màu.', 574000, 100, 'corsair.jpg', 10),
(2005, 3, 2, 'Chuột Bluetooth Silent Logitec', 'Chuột Bluetooth Silent Logitech M240 với kiểu dáng gọn gàng, gam màu đẹp mắt, kích thước vừa vặn tay cầm, kết nối ổn định cùng độ nhạy khá cao, hứa hẹn mang đến cho bạn những trải nghiệm tuyệt vời.', 349000, 99, 'logitech.jpg', 10),
(3001, 3, 3, 'Chuột Gaming Có Dây và Lót Chu', 'Chuột Gaming Có Dây và Lót Chuột Razer Abyssus Lite-Razer Goliathus Mobile Construct Edition sở hữu thiết kế cân xứng, trang bị đèn LED nổi bật, kích thước vừa lòng bàn tay khi cầm nắm, tạo cảm giác thoải mái khi chơi game.', 280000, 99, 'razer.jpg', 5),
(3002, 2, 2, 'Tai nghe Apple Earpods with Li', 'Tai nghe Apple Earpods Lightning Chính hãng chính thống giá RẺ HƠN CÁC LOẠI RẺ chỉ có tại Di Động Việt - Đại lý uỷ quyền chính thức của Apple tại Việt Nam. Sản phẩm sở hữu thiết kế nhỏ gọn, quen thuộc với tone màu trắng sang trọng. Sản phẩm được làm bằng nhựa cao cấp, cho âm thanh sâu và chất. Tai nghe phù hợp với các dòng từ Xs - Xs Max - Xr,... Đặt ngay để có trải nghiệm mua sắm Hơn cả Chính Hãng.', 450000, 100, 'earpord.jpg', 5),
(3003, 2, 1, 'Tai nghe không dây Defunc True', 'Tai nghe không dây Defunc True Basic sở hữu thiết kế nhỏ gọn, trọng lượng nhẹ mang lại cho người dùng cảm giác thoải mái khi đeo. Tai nghe có chất lượng âm thanh sống động, trầm ấm đi kèm với công nghệ Bluetooth 5.0 và chuẩn kháng nước IPX4 phù hợp để người dùng có thê đeo khi luyện tập thể dục, thể thao.', 400000, 93, 'defunc.jpg', 5),
(3004, 2, 2, 'Tai nghe Bluetooth Havit I62', 'Tai nghe Bluetooth Havit I62 sở hữu kiểu dáng chụp tai in-ear mềm mại, 2 cốc tai có thể gập lại và xoay 360 độ, sở hữu chất âm tuyệt vời đưa bạn đắm chìm vào các giai điệu âm nhạc. Thời lượng pin lên đến 8 giờ nghe nhạc liên tục.', 520000, 97, 'havit.jpg', 10),
(3005, 2, 2, 'Tai nghe Apple AirPods 2 Chính', 'Tai nghe Bluetooth Apple AirPods 2 (No Wireless Charge) Chính Hãng VN/A chính thống giá RẺ HƠN CÁC LOẠI RẺ chỉ có tại Di Động Việt - Đại lý uỷ quyền chính thức của Apple tại Việt Nam. Đây là mẫu tai nghe tiện lợi cho người dùng. Tai nghe được trang bị nhiều tính năng mới, con chip H1 tăng khả năng kết nối, pin cho tới 5h nghe nhạc liên tục, 3h đàm thoại nhằm nâng cao sự đẳng cấp cho thiết bị. Đặt ngay để có trải nghiệm mua sắm Hơn cả Chính Hãng.', 2660000, 100, 'airpods2.jpg', 5),
(3008, 2, 3, 'Tai nghe Sony MDR XB55AP', 'Tai nghe Sony MDR XB55AP sở hữu thiết kế nhỏ gọn, dây dài 1.2m, là phụ kiện chính hãng Sony (Di Động Việt cam kết bán hàng chính hãng). Tai nghe cho chất lượng âm thanh tốt và tương thích với nhiều thiết bị.', 220000, 100, 'mdr.jpg', 5),
(3010, 1, 2, 'Ốp điện thoại IPxxxxx', 'sản phẩm dùng cho các điện thoại xxxx', 50000, 97, 'op3.jpg', 5),
(3011, 1, 2, 'Ốp điện thoại cho IP hình con ', 'Ốp điện thoại cho IP hình con gấu', 54000, 97, 'op2.png', 5),
(3015, 1, 1, 'Ốp điện thoại samsung', 'Ốp điện thoại samsung', 45000, 86, 'op1.jpg', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `ID_ThanhVien` int(11) NOT NULL,
  `TenDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `HoVaTen` varchar(50) NOT NULL,
  `DiaChi` varchar(50) NOT NULL,
  `SoDienThoai` varchar(12) NOT NULL,
  `NgayDangKi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`ID_ThanhVien`, `TenDangNhap`, `MatKhau`, `Email`, `HoVaTen`, `DiaChi`, `SoDienThoai`, `NgayDangKi`) VALUES
(1, 'a', '202cb962ac59075b964b07152d234b70', 'nva@gmail.com', 'Nguyễn Văn A', 'Hà Nội', '0123456789', '2023-07-18'),
(4, 'b', '202cb962ac59075b964b07152d234b70', 'nvb@gmail.com', 'Nguyễn Văn B', 'Hà Nội', '0123456789', '2023-08-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vnpay`
--

CREATE TABLE `vnpay` (
  `Amount` varchar(50) NOT NULL,
  `BankCode` varchar(50) NOT NULL,
  `BankTranNo` varchar(50) NOT NULL,
  `CardType` varchar(50) NOT NULL,
  `OrderInfo` varchar(100) NOT NULL,
  `PayDate` varchar(50) NOT NULL,
  `TmnCode` varchar(50) NOT NULL,
  `TransactionNo` varchar(50) NOT NULL,
  `ID_VNPay` int(11) NOT NULL,
  `CodeOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vnpay`
--

INSERT INTO `vnpay` (`Amount`, `BankCode`, `BankTranNo`, `CardType`, `OrderInfo`, `PayDate`, `TmnCode`, `TransactionNo`, `ID_VNPay`, `CodeOrder`) VALUES
('20910000', 'NCB', 'VNP14100978', 'ATM', 'Thanh toan GD:5970', '20230824202533', '6448J9KM', '14100978', 10, 5970),
('4750000', 'NCB', 'VNP14102267', 'ATM', 'Thanh toan GD:4409', '20230827113508', '6448J9KM', '14102267', 11, 4409),
('1425000', 'NCB', 'VNP14104554', 'ATM', 'Thanh toan GD:2606', '20230830085601', '6448J9KM', '14104554', 12, 2606);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`ID_BinhLuan`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`ID_DonHang`,`ID_SanPham`),
  ADD KEY `ID_DonHang` (`ID_DonHang`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);

--
-- Chỉ mục cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`ID_GioHang`,`ID_SanPham`),
  ADD KEY `ID_GioHang` (`ID_GioHang`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`ID_DanhMuc`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ID_DonHang`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`ID_GioHang`),
  ADD KEY `ID_ThanhVien` (`ID_ThanhVien`);

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`ID_MoMo`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`ID_NCC`);

--
-- Chỉ mục cho bảng `quanly`
--
ALTER TABLE `quanly`
  ADD PRIMARY KEY (`ID_QuanLy`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID_SanPham`),
  ADD KEY `ID_NhaCungCap` (`ID_NhaCungCap`),
  ADD KEY `ID_DanhMuc` (`ID_DanhMuc`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`ID_ThanhVien`);

--
-- Chỉ mục cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  ADD PRIMARY KEY (`ID_VNPay`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `ID_BinhLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ID_DanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ID_DonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `ID_GioHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `ID_MoMo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `ID_NCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `quanly`
--
ALTER TABLE `quanly`
  MODIFY `ID_QuanLy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID_SanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3016;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `ID_ThanhVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  MODIFY `ID_VNPay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`ID_DonHang`) REFERENCES `donhang` (`ID_DonHang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`);

--
-- Các ràng buộc cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `chitietgiohang_ibfk_1` FOREIGN KEY (`ID_GioHang`) REFERENCES `giohang` (`ID_GioHang`),
  ADD CONSTRAINT `chitietgiohang_ibfk_2` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`ID_ThanhVien`) REFERENCES `thanhvien` (`ID_ThanhVien`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`ID_NhaCungCap`) REFERENCES `nhacungcap` (`ID_NCC`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`ID_DanhMuc`) REFERENCES `danhmuc` (`ID_DanhMuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
