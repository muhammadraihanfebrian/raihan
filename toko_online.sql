-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2024 at 09:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(2, 'Laptop Asus', 'Laptop Asus Ram 8 gb', 'Elektronik', 5500000, 5, 'laptop.jpg'),
(3, 'Kamera Cannon', 'Kamera Cannon770', 'Elektronik', 5000000, 5, 'kamera.jpg'),
(4, 'Samsung Galaxy A70', 'Samsung Galaxy A70', 'Elektronik', 3500000, 10, 'hp.jpg'),
(7, 'Jam Tangan', 'Jam Tangan Asli', 'Pakaian Pria', 75000, 10, 'jam_tangan1.jpg'),
(8, 'Baju Anak', 'Baju Anak khusus Laki-laki', 'Pakaian Anak-anak', 45000, 20, 'download.jpeg'),
(9, 'Tv Lg', 'Tv Lg 30 inch', 'Elektronik', 6000000, 29, 'download_(1).jpeg'),
(10, 'Topi Converse', 'Topi Converse ', 'Pakaian Pria', 150000, 100, 'download_(2).jpeg'),
(11, 'Baju Lengan Pendek CROOZ', 'Baju Distro', 'Pakaian Pria', 250000, 30, 'download_(3).jpeg'),
(12, 'Baju Wanita berbagai jenis', 'Baju Wanita/Perempuan', 'Pakaian Wanita', 75000, 20, 'images.jpeg'),
(13, 'Raket Yonex', 'Rket Yonex gr303', 'Peralatan Olahraga', 300000, 50, 'download_(4).jpeg'),
(14, 'Sepatu Futsal - Adidas Predator League In Original Ig5456', 'Sepatu Futsal - Adidas Predator League In Original Ig5456', 'Peralatan Olahraga', 1500000, 15, '8f784df9-5d82-40d8-838a-f2993421b57b.jpg'),
(15, 'Baju Dress Atasan Anak Perempuan', 'Baju Dress Atasan Anak Perempuan', 'Pakaian Anak-anak', 70000, 10, 'baju-dress-atasan-anak-perempuan-168440.jpg'),
(16, 'aket Baseball Varsity / Jaket Bomber Varsity Baseball Kamikaze Limited Anime Jepang Edition ', 'aket Baseball Varsity / Jaket Bomber Varsity Baseball Kamikaze Limited Anime Jepang Edition ', 'Pakaian Pria', 750000, 18, 'd40c233c98641629a099abe1c79e6ccc.jpg'),
(17, ' Roughneck H149 Navy Sig White Hoodie ', ' Roughneck H149 Navy Sig White Hoodie ', 'Pakaian Pria', 250000, 15, 'images_(1).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Muhammad Raihan Febrian', 'Tambun Selatan', '2024-07-12 00:02:22', '2024-07-13 00:02:22'),
(2, '', '', '2024-07-12 01:43:30', '2024-07-13 01:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 2, 'Laptop Asus', 1, 5500000, ''),
(2, 1, 3, 'Kamera Cannon', 1, 5000000, ''),
(3, 1, 4, 'Samsung Galaxy A70', 1, 3500000, ''),
(4, 1, 7, 'Jam Tangan', 1, 75000, ''),
(5, 2, 12, 'Baju Wanita berbagai jenis', 1, 75000, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
