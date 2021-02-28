-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18 Nov 2020 pada 04.39
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Stand-in structure for view `rindaa`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `rindaa` (
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang_bag`
--

CREATE TABLE `tb_barang_bag` (
  `id_brg` int(11) NOT NULL,
  `nama_barang` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang_bag`
--

INSERT INTO `tb_barang_bag` (`id_brg`, `nama_barang`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'sepatu', 'sepatu merk all star', 'Pakaian Pria', 300000, 4, 'sepatu.jpg'),
(2, 'kamera', 'kamera canon ', 'elektronik', 5000000, 6, 'kamera.jpg'),
(3, 'handpond', 'handpond oppo kualitas bagus', 'elektronik', 2000000, 15, 'hp.jpg'),
(4, 'laptop', 'laptop asus', 'elektronik', 4000000, 10, 'laptop.jpg'),
(5, 'Baju atasan', 'baju atasan murah', 'Pakaian Wanita', 35000, 50, 'baju_wanita.jpg'),
(6, 'Celana Jeans', 'Celana Ori', 'Pakaian Wanita', 70000, 3, 'celana_wanita.jpg'),
(7, 'Baju anak perempuan', 'Cantikk bangettt', 'Pakaian Anak-Anak', 50000, 7, 'baju.jpg'),
(9, 'Raket', 'Raket badminton', 'Peralatan Olahraga', 150000, 30, 'raket.jpg'),
(10, 'Topi Anak', 'Topi anak bagus', 'Pakaian Anak-Anak', 150000, 15, 'topi_anakanak.jpg'),
(11, 'Tas Anak-anak', 'Tas murahhh', 'Pakaian Anak-Anak', 80000, 15, 'tas_anakanak.jpg'),
(16, 'HAPHONE 2', '', 'ELEKTRONIK', 0, 0, ''),
(17, 'HAPHONE 3', '', 'ELEKTRONIK', 0, 0, ''),
(18, 'HAPHONE 4', '', 'ELEKTRONIK', 0, 0, ''),
(19, 'HAPHONE 5', '', 'ELEKTRONIK', 0, 0, ''),
(20, 'HAPHONE 6', '', 'ELEKTRONIK', 0, 0, ''),
(21, 'HAPHONE 7', '', 'ELEKTRONIK', 0, 0, ''),
(22, 'HAPHONE 8', '', 'ELEKTRONIK', 0, 0, ''),
(23, 'HAPHONE 9', '', 'ELEKTRONIK', 0, 0, ''),
(24, 'LAPTOP 1', '', 'ELEKTRONIK', 0, 0, ''),
(26, 'LAPTOP 3', '', 'ELEKTRONIK', 0, 0, ''),
(27, 'LAPTOP 4', '', 'ELEKTRONIK', 0, 0, ''),
(28, 'LAPTOP 5', '', 'ELEKTRONIK', 0, 0, ''),
(29, 'LAPTOP 6', '', 'ELEKTRONIK', 0, 0, ''),
(30, 'sandal', '', '', 12000, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Rinda Lestari', 'Kucur Sumberrejo', '2020-08-03 06:03:03', '2020-08-04 06:03:03'),
(2, 'Rinda Lestari', 'Kucur Sumberrejo', '2020-08-03 11:03:29', '2020-08-04 11:03:29'),
(3, 'Nabila Dwi Safitri', 'Blimbing Purwodadi', '2020-08-03 11:10:49', '2020-08-04 11:10:49'),
(4, '', '', '2020-08-04 13:06:47', '2020-08-05 13:06:48'),
(5, '', '', '2020-08-11 10:42:11', '2020-08-12 10:42:11'),
(6, '', '', '2020-08-11 10:44:05', '2020-08-12 10:44:05'),
(7, '', '', '2020-08-12 10:45:23', '2020-08-13 10:45:24'),
(8, 'Nabila Dwi Safitri', 'Blimbing Purwodadi', '2020-08-28 11:09:17', '2020-08-29 11:09:17'),
(9, '', '', '2020-10-13 13:53:06', '2020-10-14 13:53:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'sepatu', 1, 300000, ''),
(2, 1, 2, 'kamera', 1, 5000000, ''),
(3, 1, 3, 'handpond', 1, 2000000, ''),
(4, 1, 4, 'laptop', 1, 4000000, ''),
(5, 3, 2, 'kamera', 1, 5000000, ''),
(6, 4, 1, 'sepatu', 1, 300000, ''),
(7, 5, 1, 'sepatu', 4, 300000, ''),
(8, 5, 2, 'kamera', 2, 5000000, ''),
(9, 7, 2, 'kamera', 1, 5000000, ''),
(11, 1, 6, 'sepatu', 12, 60000, ''),
(12, 2, 7, 'sendal', 13, 60000, ''),
(13, 3, 8, 'tas', 14, 60000, ''),
(14, 8, 1, 'sepatu', 1, 300000, ''),
(15, 8, 2, 'kamera', 1, 5000000, ''),
(16, 9, 1, 'sepatu', 1, 300000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN 
	UPDATE tb_barang SET stok = stok-NEW.jumlah
	WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(4, 'user', 'user', '321', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_barang`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_barang` (
);

-- --------------------------------------------------------

--
-- Struktur untuk view `rindaa`
--
DROP TABLE IF EXISTS `rindaa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rindaa`  AS  select `tb_barang`.`id_brg` AS `id_brg`,`tb_barang`.`nama_barang` AS `nama_barang`,`tb_barang`.`keterangan` AS `keterangan`,`tb_barang`.`kategori` AS `kategori`,`tb_barang`.`harga` AS `harga`,`tb_barang`.`stok` AS `stok`,`tb_barang`.`gambar` AS `gambar` from `tb_barang` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_barang`
--
DROP TABLE IF EXISTS `view_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_barang`  AS  select `p`.`id_invoice` AS `id_invoice`,`p`.`id_brg` AS `id_brg`,`b`.`id_brg` AS `id_barang`,`p`.`nama_brg` AS `nama_brg`,`b`.`kategori` AS `kategori` from (`tb_pesanan` `p` left join `tb_barang` `b` on((`p`.`id_brg` = `b`.`id_brg`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang_bag`
--
ALTER TABLE `tb_barang_bag`
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
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang_bag`
--
ALTER TABLE `tb_barang_bag`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
