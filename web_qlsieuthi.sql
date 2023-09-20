-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 20, 2023 lúc 09:33 AM
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
-- Cơ sở dữ liệu: `web_qlsieuthi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachdonhang`
--

CREATE TABLE `danhsachdonhang` (
  `madonhang` varchar(100) NOT NULL,
  `tenkhachhang` varchar(150) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ngaylap` date NOT NULL,
  `tongtien` double NOT NULL,
  `tinhtrangdonhang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonkhachhang`
--

CREATE TABLE `hoadonkhachhang` (
  `mahoadonkh` varchar(100) NOT NULL,
  `ngaytao` date NOT NULL,
  `tenkhachhang` varchar(100) NOT NULL,
  `tensanpham` varchar(150) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` double NOT NULL,
  `trangthaithanhtoan` varchar(150) NOT NULL,
  `ngaythanhtoan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonnhacungcap`
--

CREATE TABLE `hoadonnhacungcap` (
  `mahoadonncc` varchar(100) NOT NULL,
  `ngaytaohoadon` date NOT NULL,
  `tennhacungcap` varchar(100) NOT NULL,
  `nguoimua` varchar(100) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` double NOT NULL,
  `trangthai` varchar(150) NOT NULL,
  `ngaythanhtoan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makhachhang` varchar(100) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `tenkhachhang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `masanpham` varchar(100) NOT NULL,
  `tensanpham` varchar(150) NOT NULL,
  `giaban` double NOT NULL,
  `giakhuyenmai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `manhacungcap` varchar(100) NOT NULL,
  `tennhacungcap` varchar(150) NOT NULL,
  `tenhanghoa` varchar(150) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `diachi` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `email` varchar(100) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `diachi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaphang`
--

CREATE TABLE `nhaphang` (
  `ngaynhap` date NOT NULL,
  `masanpham` varchar(50) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `loaisanpham` varchar(50) NOT NULL,
  `gianhap` double NOT NULL,
  `manhacungcap` varchar(50) NOT NULL,
  `tennhacungcap` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masanpham` varchar(50) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `gianhap` double NOT NULL,
  `soluong` int(11) NOT NULL,
  `manhacungcap` varchar(30) NOT NULL,
  `hansudung` date NOT NULL,
  `ngaynhap` date NOT NULL,
  `giaban` double NOT NULL,
  `loaisanpham` varchar(50) NOT NULL,
  `ngaysanxaut` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoanad`
--

CREATE TABLE `taikhoanad` (
  `maAdmin` varchar(50) NOT NULL,
  `gmail` varchar(20) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `giotinh` varchar(3) NOT NULL,
  `ngaysinh` date NOT NULL,
  `quequan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoanad`
--

INSERT INTO `taikhoanad` (`maAdmin`, `gmail`, `sdt`, `matkhau`, `hoten`, `giotinh`, `ngaysinh`, `quequan`) VALUES
('ad1', 'duongx9@gmail.com', '0973681935', 'abc1234', 'Nguyễn Văn A', 'Nam', '2003-01-01', 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongkespquahanvacanhan`
--

CREATE TABLE `thongkespquahanvacanhan` (
  `masanpham` varchar(100) NOT NULL,
  `tensanpham` varchar(150) NOT NULL,
  `ngaysanxuat` date NOT NULL,
  `hansudung` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhsachdonhang`
--
ALTER TABLE `danhsachdonhang`
  ADD PRIMARY KEY (`madonhang`);

--
-- Chỉ mục cho bảng `hoadonkhachhang`
--
ALTER TABLE `hoadonkhachhang`
  ADD PRIMARY KEY (`mahoadonkh`);

--
-- Chỉ mục cho bảng `hoadonnhacungcap`
--
ALTER TABLE `hoadonnhacungcap`
  ADD PRIMARY KEY (`mahoadonncc`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`masanpham`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`manhacungcap`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `nhaphang`
--
ALTER TABLE `nhaphang`
  ADD PRIMARY KEY (`masanpham`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masanpham`);

--
-- Chỉ mục cho bảng `taikhoanad`
--
ALTER TABLE `taikhoanad`
  ADD PRIMARY KEY (`maAdmin`);

--
-- Chỉ mục cho bảng `thongkespquahanvacanhan`
--
ALTER TABLE `thongkespquahanvacanhan`
  ADD PRIMARY KEY (`masanpham`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
