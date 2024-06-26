-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 26, 2024 lúc 05:41 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vatlieuxaydung`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`Id`, `HinhAnh`) VALUES
(3, 'img/banners/banner.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(40, 181, 27, 10000),
(41, 183, 2, 500000),
(42, 183, 2, 500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Vật Liệu Xây Dựng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `PhuongThucTT` varchar(20) NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(40, 14, '2024-06-26 22:13:01', 'nh', '0987654321', 'ngu', '', 270000, '0'),
(41, 14, '2024-06-26 22:20:20', 'cccc', '6999696969', 'ok', '', 1000000, '0'),
(42, 14, '2024-06-26 22:22:04', 'okoko', '9796998989', 'ịi', '', 1000000, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) NOT NULL,
  `LoaiKM` varchar(20) NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2019-04-08 00:00:00', 1),
(2, 'Giảm giá', 'GiamGia', 500000, '2019-05-01 00:00:00', 1),
(3, 'Giá rẻ online', 'GiaReOnline', 650000, '2019-05-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Mota` varchar(200) NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(81, 'vl', 'gạch.jpg', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(14, 'admin', 'admin', 'Nam', '086669999', 'admin@gmail.com', 'nhom2', 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1),
(15, 'thang', 'Nhân viên', 'Nam', '1234567890', 'a@gmail.com', '', 'nhanvien', 'c4ca4238a0b923820dcc509a6f75849b', 3, 1),
(18, 'N', 'lmao', 'Nam', '0987654321', 'b@gmail.com', '', 'khachhangxaydung', 'c4ca4238a0b923820dcc509a6f75849b', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) NOT NULL,
  `ChiTietQuyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh1` varchar(200) NOT NULL,
  `HinhAnh2` varchar(255) DEFAULT NULL,
  `HinhAnh3` varchar(255) DEFAULT NULL,
  `MaKM` int(11) NOT NULL,
  `Tensanpham` varchar(50) DEFAULT NULL,
  `Tinhtrang` varchar(50) DEFAULT NULL,
  `Kichthuoc` varchar(50) DEFAULT NULL,
  `Trongluong` varchar(50) DEFAULT NULL,
  `Chatlieu` varchar(50) DEFAULT NULL,
  `Soluongg` varchar(50) DEFAULT NULL,
  `Mausac` varchar(50) DEFAULT NULL,
  `Donvitinh` varchar(50) DEFAULT NULL,
  `Noisanxuat` varchar(50) DEFAULT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `Tensanpham`, `Tinhtrang`, `Kichthuoc`, `Trongluong`, `Chatlieu`, `Soluongg`, `Mausac`, `Donvitinh`, `Noisanxuat`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(181, 81, 1, 'gạch ', 10000, 50000, 'img/products/gạch.jpg', '', '', 1, 'gạch', 'mới cứng', '20', '10', 'đất', '500000', 'đỏ', 'viên', 'cc', 0, 0, 1, 'Gạch 6 lỗ tròn <span style=\"background-image: linear-gradient(90deg, rgb(52, 69, 127) 50%, rgba(0, 0, 0, 0) 50%); background-position: 0% 0px; background-size: 200% 100%; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; animation: 0.75s cubic-bezier(0.05, 0.7, 0.1, 1) 0.25s 1 normal forwards running highlight;\">là loại gạch nung phổ biến được sử dụng rộng rãi trong xây dựng</span>. Với kích thước 220x150x105mm, độ rỗng >40% và trọng lượng 3.6kg/viên, loại gạch này mang đến nhiều ưu điểm vượt trội cho các công trình.', '2024-06-26 21:48:01'),
(183, 81, 1, 'xi măng', 500000, 10000, 'img/products/xi măng.jpg', '', '', 1, 'xi măng', 'hỏng', '100', '50', 'đất', '7888', 'tim', 'bao', 'cc', 0, 0, 1, '<p><b style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">Xi măng</b><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\"> (từ </span><a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Ph%C3%A1p\" title=\"Tiếng Pháp\" style=\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;\">tiếng Pháp</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">: </span><i style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">ciment</i><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">) là một loại </span><a href=\"https://vi.wikipedia.org/wiki/Ch%E1%BA%A5t_k%E1%BA%BFt_d%C3%ADnh_th%E1%BB%A7y_l%E1%BB%B1c\" title=\"Chất kết dính thủy lực\" style=\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;\">chất kết dính thủy lực</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">, được dùng làm </span><a href=\"https://vi.wikipedia.org/wiki/V%E1%BA%ADt_li%E1%BB%87u_x%C3%A2y_d%E1%BB%B1ng\" title=\"Vật liệu xây dựng\" style=\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;\">vật liệu xây dựng</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">. Xi măng được tạo thành bằng cách nghiền mịn </span><a href=\"https://vi.wikipedia.org/wiki/Clinker\" title=\"Clinker\" style=\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;\">clinker</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">, thạch cao thiên nhiên và phụ gia (vỏ sò, đất sét). Khi tiếp xúc với </span><a href=\"https://vi.wikipedia.org/wiki/N%C6%B0%E1%BB%9Bc\" title=\"Nước\" style=\"color: var(--color-progressive,#36c); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;\">nước</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\"> thì xảy ra các </span><a href=\"https://vi.wikipedia.org/w/index.php?title=Ph%E1%BA%A3n_%E1%BB%A9ng_th%E1%BB%A7y_h%C3%B3a&action=edit&redlink=1\" class=\"new\" title=\"Phản ứng thủy hóa (trang không tồn tại)\" style=\"color: var(--color-link-red,#d73333); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;\">phản ứng thủy hóa</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\"> và tạo thành một dạng hồ gọi là </span><a href=\"https://vi.wikipedia.org/w/index.php?title=H%E1%BB%93_xi_m%C4%83ng&action=edit&redlink=1\" class=\"new\" title=\"Hồ xi măng (trang không tồn tại)\" style=\"color: var(--color-link-red,#d73333); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;\">hồ xi măng</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">. Tiếp đó, do sự hình thành của các </span><a href=\"https://vi.wikipedia.org/w/index.php?title=S%E1%BA%A3n_ph%E1%BA%A9m_th%E1%BB%A7y_h%C3%B3a&action=edit&redlink=1\" class=\"new\" title=\"Sản phẩm thủy hóa (trang không tồn tại)\" style=\"color: var(--color-link-red,#d73333); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;\">sản phẩm thủy hóa</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">, hồ xi măng bắt đầu </span><a href=\"https://vi.wikipedia.org/w/index.php?title=Qu%C3%A1_tr%C3%ACnh_ninh_k%E1%BA%BFt&action=edit&redlink=1\" class=\"new\" title=\"Quá trình ninh kết (trang không tồn tại)\" style=\"color: var(--color-link-red,#d73333); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;\">quá trình ninh kết</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\"> sau đó là </span><a href=\"https://vi.wikipedia.org/w/index.php?title=Qu%C3%A1_tr%C3%ACnh_h%C3%B3a_c%E1%BB%A9ng&action=edit&redlink=1\" class=\"new\" title=\"Quá trình hóa cứng (trang không tồn tại)\" style=\"color: var(--color-link-red,#d73333); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;\">quá trình hóa cứng</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\"> để cuối cùng nhận được một dạng vật liệu có </span><a href=\"https://vi.wikipedia.org/w/index.php?title=C%C6%B0%E1%BB%9Dng_%C4%91%E1%BB%99&action=edit&redlink=1\" class=\"new\" title=\"Cường độ (trang không tồn tại)\" style=\"color: var(--color-link-red,#d73333); background: none rgb(255, 255, 255); border-radius: 2px; overflow-wrap: break-word; font-family: sans-serif;\">cường độ</a><span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\"> và độ ổn định nhất định.</span><br></p>', '2024-06-26 22:09:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
