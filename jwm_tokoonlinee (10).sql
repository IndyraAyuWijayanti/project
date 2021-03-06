-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 03:11 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jwm_tokoonlinee`
--

-- --------------------------------------------------------

--
-- Table structure for table `angsuran`
--

CREATE TABLE `angsuran` (
  `kode_angsuran` int(11) NOT NULL,
  `kode_transaksi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `angsuran_ke` int(11) NOT NULL,
  `bayar` varchar(255) NOT NULL,
  `id_bank` int(11) NOT NULL,
  `bukti_bayar` varchar(255) NOT NULL,
  `tanggal_bayar_angsuran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `angsuran`
--

INSERT INTO `angsuran` (`kode_angsuran`, `kode_transaksi`, `angsuran_ke`, `bayar`, `id_bank`, `bukti_bayar`, `tanggal_bayar_angsuran`) VALUES
(1, 'DO0122-003', 1, '500', 1, 'DO0122-003.jpg', '2022-01-03'),
(2, 'DO0122-003', 2, '250', 2, 'DO0122-003.png', '2022-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`) VALUES
(1, 'Tunai'),
(2, 'BRI'),
(3, 'Mandiri');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `keywords` text,
  `status_berita` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `jenis_berita`, `judul_berita`, `slug_berita`, `keywords`, `status_berita`, `keterangan`, `gambar`, `tanggal_post`, `tanggal_update`) VALUES
(2, 8, 'Style', 'Cowokmu Dijamin Suka, Ini Referensi Warna Kemeja Flanel Selain Hitam!', 'style-cowokmu-dijamin-suka-ini-referensi-warna-kemeja-flanel-selain-hitam', 'Cowokmu Dijamin Suka, Ini Referensi Warna Kemeja Flanel Selain Hitam!', 'Publish', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'Shopee_abf293768f0696f96bad30118e7dc494-01.jpeg', '2020-12-29 11:42:00', '2020-12-29 11:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `kode_transaksi` varchar(255) NOT NULL,
  `id_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`kode_transaksi`, `id_produk`, `harga`, `jumlah`, `diskon`, `ongkir`, `sub_total`) VALUES
('DO0122-001', '21', 500, 1, 0, 500, 500),
('DO0122-002', '24', 10000, 1, 0, 0, 10000),
('DO0122-002', '25', 10000, 1, 0, 0, 10000),
('DO0122-003', '23', 750, 1, 0, 0, 750),
('DO0122-004', '21', 500, 2, 0, 5000, 1000),
('DO0122-005', '23', 750, 1, 0, 5000, 750),
('DO0122-004', '21', 500, 1, 0, 7000, 500),
('DO0122-005', '21', 500, 1, 0, 7000, 500);

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `judul_gambar` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `id_produk`, `judul_gambar`, `gambar`, `tanggal_update`) VALUES
(2, 13, 'Jumper Hoodie Kuning', '20200825153020_IMG_0129-02.jpeg', '2020-12-30 03:21:50'),
(3, 13, 'Jumper Hoodie Kuning', 'CollageMaker_20190904_110541066.jpg', '2020-12-30 03:22:07'),
(4, 13, 'Jumper Hoodie Kuning', 'CollageMaker_20190904_104620495.jpg', '2020-12-30 03:22:32'),
(5, 14, 'Jumper Hoodie blue', '20200825153807_IMG_0137-01.jpeg', '2020-12-30 03:23:24'),
(6, 14, 'Jumper Hoodie blue', 'CollageMaker_20190904_142346980.jpg', '2020-12-30 03:23:46'),
(7, 14, 'Jumper Hoodie blue', 'IMG_20200714_141717.jpg', '2020-12-30 03:24:01'),
(8, 15, 'Jumper Hoodie ', '20200825161339_IMG_0179-02.jpeg', '2020-12-30 03:24:20'),
(9, 15, 'Jumper Hoodie ', '20200825161405_IMG_0182-01.jpeg', '2020-12-30 03:24:29'),
(10, 15, 'Jumper Hoodie ', '20200825161410_IMG_0183-01.jpeg', '2020-12-30 03:24:41'),
(13, 18, 'Zipper Hoodie', '20200110_060828.jpg', '2021-01-14 15:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `header_transaksi`
--

CREATE TABLE `header_transaksi` (
  `id_header_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan1` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL,
  `jumlah_transaksi` int(11) NOT NULL,
  `status_bayar` varchar(20) NOT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `rekening_pembayaran` varchar(255) DEFAULT NULL,
  `rekening_pelanggan` varchar(255) DEFAULT NULL,
  `bukti_bayar` varchar(255) DEFAULT NULL,
  `id_rekening` int(11) DEFAULT NULL,
  `tanggal_bayar` datetime DEFAULT NULL,
  `nama_bank` varchar(150) DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kota` varchar(60) NOT NULL,
  `provinsi` varchar(60) NOT NULL,
  `klas` varchar(40) NOT NULL,
  `standar_harga` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `total_tagihan` int(11) NOT NULL,
  `total_jumlahproduk` int(11) NOT NULL,
  `total_pembayaran` int(11) NOT NULL,
  `jumlah_bayar1` int(11) NOT NULL,
  `tgl_bayar1` date NOT NULL,
  `bukti_bayar1` varchar(255) NOT NULL,
  `bank1` varchar(20) NOT NULL,
  `tgl_bayar2` date NOT NULL,
  `bukti_bayar2` varchar(255) NOT NULL,
  `bank2` varchar(20) NOT NULL,
  `jumlah_bayar2` int(11) NOT NULL,
  `tgl_bayar3` date NOT NULL,
  `bukti_bayar3` varchar(255) NOT NULL,
  `bank3` varchar(20) NOT NULL,
  `jumlah_bayar3` int(11) NOT NULL,
  `nomor_spk` varchar(30) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `tgl_cetak_do` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `header_transaksi`
--

INSERT INTO `header_transaksi` (`id_header_transaksi`, `id_user`, `id_pelanggan`, `nama_pelanggan1`, `email`, `telepon`, `alamat`, `kode_transaksi`, `tanggal_transaksi`, `batas_bayar`, `jumlah_transaksi`, `status_bayar`, `jumlah_bayar`, `rekening_pembayaran`, `rekening_pelanggan`, `bukti_bayar`, `id_rekening`, `tanggal_bayar`, `nama_bank`, `tanggal_post`, `tanggal_update`, `kota`, `provinsi`, `klas`, `standar_harga`, `harga`, `ongkir`, `diskon`, `total_tagihan`, `total_jumlahproduk`, `total_pembayaran`, `jumlah_bayar1`, `tgl_bayar1`, `bukti_bayar1`, `bank1`, `tgl_bayar2`, `bukti_bayar2`, `bank2`, `jumlah_bayar2`, `tgl_bayar3`, `bukti_bayar3`, `bank3`, `jumlah_bayar3`, `nomor_spk`, `keterangan`, `tgl_cetak_do`) VALUES
(20, 12, 31, 'Agung Wahyu Gunawan', 'agung@gmail.com', '085816908859', 'Umbulsari', '210120216F3KBPDV', '2021-01-21 13:57:24', '2021-01-21 14:57:24', 210000, 'Success', 210000, '0123909111', 'AGung', '5677080_cf2ef623-8e05-4c90-80ec-0a6edb107d3e_648_648.jpg', 1, NULL, 'BRI', '2021-01-21 13:57:24', '2021-12-06 01:00:20', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00', '', '', '0000-00-00', '', '', 0, '0000-00-00', '', '', 0, '', '', '0000-00-00');

--
-- Triggers `header_transaksi`
--
DELIMITER $$
CREATE TRIGGER `transaksi_after_chgStatus` AFTER UPDATE ON `header_transaksi` FOR EACH ROW UPDATE transaksi
SET
id_user = new.id_user
WHERE
kode_transaksi = new.kode_transaksi
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pembayaran`
--

CREATE TABLE `jenis_pembayaran` (
  `id_jenis_pembayaran` int(11) NOT NULL,
  `nama_pembayaran` varchar(110) NOT NULL,
  `lama_angsuran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_pembayaran`
--

INSERT INTO `jenis_pembayaran` (`id_jenis_pembayaran`, `nama_pembayaran`, `lama_angsuran`) VALUES
(1, 'cash', 0),
(2, 'angsuran', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(155) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `slug_kategori`, `nama_kategori`, `urutan`, `tanggal_update`) VALUES
(5, 'Benih Robusta/Liberika', 'Benih Robusta/Liberika', 1, '2021-11-10 14:17:53'),
(6, 'Benih Kopi Arabika', 'Benih Kopi Arabika', 2, '2021-11-10 14:18:30'),
(7, 'Bibit Kopi Robusta Super', 'Bibit Kopi Robusta Super', 3, '2021-11-10 14:19:02'),
(8, 'bibit-kopi-robusta-seedling', 'Bibit Kopi Robusta Seedling', 4, '2021-11-10 14:21:26'),
(9, 'bibit-kopi-robusta-setek', 'Bibit Kopi Robusta Setek', 5, '2021-11-10 14:21:54'),
(10, 'planlet-kopi-robusta-arabika-liberika-se', 'Planlet Kopi Robusta / Arabika/ Liberika/ SE', 6, '2021-11-10 14:22:48'),
(11, 'bibit-kopi-arabika-super', 'Bibit Kopi Arabika Super', 7, '2021-11-10 14:23:18'),
(12, 'bibit-kopi-arabika-seedling', 'Bibit Kopi Arabika Seedling', 8, '2021-11-10 14:23:46'),
(13, 'bibit-kopi-liberika', 'Bibit Kopi Liberika', 9, '2021-11-10 14:24:08'),
(14, 'bibit-pejenis-kopi', 'Bibit Pejenis Kopi', 10, '2021-11-10 14:24:28'),
(15, 'benih-kakao', 'Benih Kakao', 11, '2021-11-10 14:25:03'),
(16, 'bibit-kakao-pcc', 'Bibit Kakao PCC', 12, '2021-11-10 14:25:31'),
(17, 'bibit-kakao-osc', 'Bibit Kakao OSC', 13, '2021-11-10 14:25:56'),
(18, 'bibit-kakao-sambung-pucuk', 'Bibit Kakao Sambung Pucuk', 14, '2021-11-10 14:26:20'),
(19, 'bibit-kakao-mulia-klonal', 'Bibit Kakao Mulia Klonal', 15, '2021-11-10 14:27:00'),
(20, 'bibit-kakao-hibrida', 'Bibit Kakao Hibrida', 16, '2021-11-10 14:27:16'),
(21, 'planlet-kakao-se', 'Planlet Kakao SE', 17, '2021-11-10 14:27:42'),
(22, 'bibit-pejenis-kakao', 'Bibit Pejenis Kakao', 18, '2021-11-10 14:28:06'),
(23, 'bibit-pisang', 'Bibit Pisang', 19, '2021-11-10 14:28:27'),
(24, 'lamtoro-klonal-setekcangkok', 'Lamtoro Klonal (Setek/Cangkok)', 19, '2021-11-10 14:29:04'),
(25, 'benih-lamtoro', 'Benih Lamtoro', 20, '2021-11-10 14:29:21'),
(26, 'entres-kopi-dan-kakao', 'Entres Kopi Dan Kakao', 21, '2021-11-10 14:29:41'),
(27, 'saprodi', 'Saprodi', 22, '2021-11-10 14:30:15');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pelanggan`
--

CREATE TABLE `kategori_pelanggan` (
  `id_kategoripelanggan` int(11) NOT NULL,
  `slug_kategoripelanggan` varchar(200) NOT NULL,
  `nama_kategoripelanggan` varchar(50) NOT NULL,
  `urutan` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_pelanggan`
--

INSERT INTO `kategori_pelanggan` (`id_kategoripelanggan`, `slug_kategoripelanggan`, `nama_kategoripelanggan`, `urutan`, `tanggal_update`) VALUES
(2, 'pekebunn', 'Pekebunn', 1, '2021-12-03 01:50:39'),
(4, 'swastango', 'Swasta/NGO', 2, '2021-11-22 02:07:44'),
(5, 'dinas', 'Dinas', 3, '2021-11-22 02:08:39'),
(6, 'bumn', 'BUMN', 4, '2021-11-22 02:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `namaweb` varchar(255) NOT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `keywords` text,
  `metatext` text,
  `telepon` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `rekening_pembayaran` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `tagline`, `email`, `website`, `keywords`, `metatext`, `telepon`, `alamat`, `facebook`, `instagram`, `deskripsi`, `logo`, `icon`, `rekening_pembayaran`, `tanggal_update`) VALUES
(1, 'SWIPO Jember', NULL, 'swipojember@gmail.com', 'www.swipojember.com', 'ok', 'ok', '098766554444', 'Jember', 'swipo_jember', '@swipo', 'Website Untuk Reseller', 'logo_swipo.PNG', 'logo_swipo1.PNG', 'ok', '2020-12-22 18:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(12) NOT NULL,
  `nm_kota` varchar(200) DEFAULT NULL,
  `lat_kota` double DEFAULT NULL,
  `long_kota` double DEFAULT NULL,
  `aktif` enum('Y','T') DEFAULT 'Y',
  `hapus` enum('Y','T') DEFAULT 'T'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `nm_kota`, `lat_kota`, `long_kota`, `aktif`, `hapus`) VALUES
(1, 'Bali', NULL, NULL, 'Y', 'T'),
(2, 'Bangka Belitung', NULL, NULL, 'Y', 'T'),
(3, 'Banten', NULL, NULL, 'Y', 'T'),
(4, 'Bengkulu', NULL, NULL, 'Y', 'T'),
(5, 'DI Yogyakarta', NULL, NULL, 'Y', 'T'),
(6, 'DKI Jakarta', NULL, NULL, 'Y', 'T'),
(7, 'Gorontalo', NULL, NULL, 'Y', 'T'),
(8, 'Jambi', NULL, NULL, 'Y', 'T'),
(9, 'Jawa Barat', NULL, NULL, 'Y', 'T'),
(10, 'Jawa Tengah', NULL, NULL, 'Y', 'T'),
(11, 'Jawa Timur', NULL, NULL, 'Y', 'T'),
(12, 'Kalimantan Barat', NULL, NULL, 'Y', 'T'),
(13, 'Kalimantan Selatan', NULL, NULL, 'Y', 'T'),
(14, 'Kalimantan Tengah', NULL, NULL, 'Y', 'T'),
(15, 'Kalimantan Timur', NULL, NULL, 'Y', 'T'),
(16, 'Kalimantan Utara', NULL, NULL, 'Y', 'T'),
(17, 'Kepulauan Riau', NULL, NULL, 'Y', 'T'),
(18, 'Lampung', NULL, NULL, 'Y', 'T'),
(19, 'Maluku', NULL, NULL, 'Y', 'T'),
(20, 'Maluku Utara', NULL, NULL, 'Y', 'T'),
(21, 'Aceh', NULL, NULL, 'Y', 'T'),
(22, 'Nusa Tenggara Barat', NULL, NULL, 'Y', 'T'),
(23, 'Nusa Tenggara Timur', NULL, NULL, 'Y', 'T'),
(24, 'Papua', NULL, NULL, 'Y', 'T'),
(25, 'Papua Barat', NULL, NULL, 'Y', 'T'),
(26, 'Riau', NULL, NULL, 'Y', 'T'),
(27, 'Sulawesi Barat', NULL, NULL, 'Y', 'T'),
(28, 'Sulawesi Selatan', NULL, NULL, 'Y', 'T'),
(29, 'Sulawesi Tengah', NULL, NULL, 'Y', 'T'),
(30, 'Sulawesi Tenggara', NULL, NULL, 'Y', 'T'),
(31, 'Sulawesi Utara', NULL, NULL, 'Y', 'T'),
(32, 'Sumatera Barat', NULL, NULL, 'Y', 'T'),
(33, 'Sumatera Selatan', NULL, NULL, 'Y', 'T'),
(34, 'Sumatera Utara', NULL, NULL, 'Y', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategoripelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `tanggal_daftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `no_identitas` varchar(40) NOT NULL,
  `nama_perusahaan` varchar(50) NOT NULL,
  `telepon_kantor` varchar(13) NOT NULL,
  `no_rekening` varchar(30) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `alamat_pengiriman` varchar(150) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `iupb` varchar(255) NOT NULL,
  `nib` varchar(255) NOT NULL,
  `siup` varchar(255) NOT NULL,
  `slug_pelanggan` varchar(255) NOT NULL,
  `status_pelanggan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `id_user`, `id_kategoripelanggan`, `nama_pelanggan`, `password`, `telepon`, `alamat`, `tanggal_daftar`, `tanggal_update`, `no_identitas`, `nama_perusahaan`, `telepon_kantor`, `no_rekening`, `hp`, `kota`, `provinsi`, `gambar`, `alamat_pengiriman`, `keterangan`, `iupb`, `nib`, `siup`, `slug_pelanggan`, `status_pelanggan`) VALUES
(21, 12, 4, 'Ketrinaa3y', '', NULL, 'blitar', '2022-01-04 13:59:05', '2022-01-04 13:59:05', '357207778889900002', 'pt indy', '112232', '11222', '0856177722', 'blitar', 'jatim', '', '', 'hutang', 'kopi22.jpg', 'kisspng-computer-icons-download-home-page-clip-art-home-page-icon-5b50ad4a3fdcd9_5648109415320138982616.jpg', 'DO0122-0011.jpg', 'ketrinaa3y-357207778889900002', ''),
(22, 12, 4, 'indyraa', '', NULL, 'blitar', '2021-12-09 02:37:09', '2021-12-09 02:37:09', '357207778889900002', 'pt indy', '112232', '11222', '0856177722', 'blitar', 'jatim', '', '', 'hutang', 'iconadmin4.png', 'iconadmin4.png', 'iconadmin4.png', '', ''),
(23, 12, 4, 'indyraa', '', NULL, 'blitar', '2021-12-09 02:48:24', '2021-12-09 02:48:24', '357207778889900002', 'pt indy', '112232', '11222', '0856177722', 'blitar', 'jatim', '', '', 'hutang', 'beranda4.png', 'beranda4.png', 'beranda4.png', '', ''),
(24, 12, 2, 'indyraa ayu', '', NULL, 'blitar', '2021-12-09 03:00:21', '2021-12-09 03:00:21', '357207778889900002', 'pt indy', '112232', '11222', '0856177722', 'blitar', 'jatim', '', '', 'lunas', 'beranda4.png', 'beranda4.png', 'beranda4.png', '', ''),
(26, 12, 5, 'Ketrinaa', '', NULL, 'Banyuwangiww', '2021-12-09 03:49:46', '2021-12-09 03:49:46', '357207778889900002', 'pt indy', '112232', '11222', '0856177722', 'blitar', 'jatim', '', '', 'hutang', 'berannda5.png', 'berannda5.png', 'berannda5.png', '', ''),
(27, 12, 4, 'indy', '', NULL, 'blitar', '2021-12-09 03:50:53', '2021-12-09 03:50:53', '357207778889900007', 'pt indy', '112232', '11222', '0856177722', 'blitar', 'jatim', '', '', 'lunas', 'beranda6.png', 'beranda6.png', 'beranda6.png', '', ''),
(28, 12, 4, 'indyra ayu', '', NULL, 'blitar', '2021-12-09 03:58:37', '2021-12-09 03:58:37', '357207778889900002', 'pt indy', '112232', '11222', '0856177722', 'blitar', 'jatim', '', '', 'lunas', 'beranda7.png', 'beranda7.png', 'beranda7.png', '', ''),
(29, 12, 4, 'Siti', '', NULL, 'blitar', '2021-12-19 14:43:51', '2021-12-19 14:43:51', '357207778889900002', 'PT Indah Jaya', '112232', '11222', '08977655448', 'blitar', 'jatim', '', '', 'hutang', 'beranda19.png', 'beranda19.png', 'beranda19.png', '', ''),
(30, 12, 4, 'lala', '', NULL, 'blitar', '2021-12-19 14:48:58', '2021-12-19 14:48:58', '357207778889900009', 'pt indy', '112232', '11222', '08977655448', 'blitar', 'jatim', '', '', 'lunas', 'beranda20.png', 'beranda20.png', 'beranda20.png', '', ''),
(31, 12, 4, 'lila', '', NULL, 'blitar', '2021-12-19 15:52:05', '2021-12-19 15:52:05', '357207778889900001', 'PT Indah Jaya', '112232', '11222', '08977655448', 'blitar', 'jatim', '', '', 'lunas', 'images3.png', '', '', '', ''),
(32, 12, 4, 'luluk', '', NULL, 'blitar', '2021-12-19 15:59:18', '2021-12-19 15:59:18', '357207778889900001', 'pt indy', '112232', '11222', '08977655448', 'blitar', 'jatim', '', '', 'lunas', 'puslit1.png', 'puslit1.png', 'puslit1.png', '', ''),
(33, 12, 5, 'lili', '', NULL, 'blitar', '2021-12-19 16:02:24', '2021-12-19 16:02:24', '357207778889900009', 'pt indy', '112232', '11222', '0856177722', 'blitar', 'jatim', '', '', 'lunas', 'puslit2.png', '', '', '', ''),
(34, 12, 5, 'lilo', '', NULL, 'Banyuwangiww', '2021-12-21 02:43:22', '2021-12-21 02:43:22', '357207778889900002', 'pt indy', '112232', '11222', '0856177722', 'blitar', 'jatim', '', '', 'lunas', 'images4.png', 'images4.png', 'images4.png', '', ''),
(35, 0, 5, 'eva agustin ra', '', NULL, 'blitarrr', '2022-01-04 04:25:34', '2022-01-04 04:25:34', '357207778889900002', 'pt indy', '112232', '11222', '0856177722', 'blitarrr', 'jatimm', '', '', 'lunass', 'Cetak_Transaksi.pdf', 'iconadmin10.png', 'kopi17.jpg', 'eva-agustin-ra-357207778889900002', ''),
(36, 12, 5, 'eva agustin ra', '', NULL, 'ok', '2022-01-04 00:52:51', '2022-01-04 00:52:51', '357207778889900007', 'pt indy', '112232', 'ok', '0856177722', 'blitar', 'jatimm', '', '', 'hutang', 'kopi36.jpg', 'png-clipart-circled-home-icon-icons-logos-emojis-home-icons.png', 'kopi37.jpg', 'eva-agustin-ra-357207778889900007', ''),
(37, 12, 5, 'indyraa qq', '', NULL, 'blitar', '2022-01-04 08:02:54', '2022-01-04 08:02:54', '357207778889900005', '', '', '', '', 'blitar', 'jatim', '', '', '', '', '', '', '', ''),
(38, 12, 5, 'indyraa qq', '', NULL, 'blitar', '2022-01-04 08:03:58', '2022-01-04 08:03:58', '357207778889900005', '', '', '', '', 'blitar', 'jatim', '', '', '', '', '', '', '', ''),
(39, 12, 5, 'indyraa qq', '', NULL, 'blitar', '2022-01-04 08:04:23', '2022-01-04 08:04:23', '357207778889900005', '', '', '', '', 'blitar', 'jatim', '', '', 'lunas', 'beranda26.png', 'kopi20.jpg', 'images13.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `slug_produk` varchar(255) NOT NULL,
  `keterangan` text,
  `keywords` text,
  `harga` int(11) NOT NULL,
  `stok` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `berat` float DEFAULT NULL,
  `ukuran` varchar(255) DEFAULT NULL,
  `status_produk` varchar(20) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_user`, `id_kategori`, `kode_produk`, `nama_produk`, `slug_produk`, `keterangan`, `keywords`, `harga`, `stok`, `gambar`, `berat`, `ukuran`, `status_produk`, `tanggal_post`, `tanggal_update`) VALUES
(20, 12, 7, 'BNRHS', 'Benih Robusta Hibiro 1', 'benih-robusta-hibiro-1-bnrhs', NULL, NULL, 750, NULL, 'kopi9.jpg', NULL, NULL, 'Publish', '2021-11-11 01:51:00', '2022-01-04 13:59:27'),
(21, 12, 5, 'RBSH2', 'Benih Robusta Hibiro 2', 'benih-robusta-hibiro-2-rbsh2', NULL, NULL, 500, 10, 'kopi10.jpg', NULL, NULL, 'Publish', '2021-11-15 02:19:00', '2021-12-29 22:38:06'),
(23, 12, 5, 'BRHS5', 'Benih Robusto Hibiro 5', 'benih-robusto-hibiro-5-brhs5', NULL, NULL, 750, 10, 'kopi14.jpg', NULL, NULL, 'Publish', '2021-12-22 08:10:00', '2021-12-29 22:38:09'),
(24, 12, 7, 'BRSB42', 'Bibit Robsta Sambung BP42', 'bibit-robsta-sambung-bp42-brsb42', NULL, NULL, 10000, 10, 'kopi15.jpg', NULL, NULL, 'Publish', '2021-12-22 08:12:00', '2021-12-29 22:38:12'),
(25, 12, 7, 'KRS234', 'Bibit Robsta Sambung BP234', 'bibit-robsta-sambung-bp234-krs234', NULL, NULL, 10000, 10, 'kopi16.jpg', NULL, NULL, 'Publish', '2021-12-22 08:12:00', '2021-12-29 22:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL,
  `nama_pemilik` varchar(150) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `nama_bank`, `nomor_rekening`, `nama_pemilik`, `gambar`, `tanggal_post`) VALUES
(1, 'BANK BCA CABANG TANGGUL', '230699', 'AGUNG WAHYU', NULL, '2020-12-01 13:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_pelanggan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nomor_spk` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `id_jenis_pembayaran` int(11) NOT NULL COMMENT '1 = cash, 2= kredit',
  `id_bank` int(11) NOT NULL,
  `alamat_pengiriman` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bukti_pembayaran` varchar(110) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `slug_transaksi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_diterima` date NOT NULL,
  `nama_penerima` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bukti_penerimaan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_resi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `id_user`, `id_pelanggan`, `nomor_spk`, `id_jenis_pembayaran`, `id_bank`, `alamat_pengiriman`, `bukti_pembayaran`, `total`, `bayar`, `tanggal_transaksi`, `tanggal_pembayaran`, `slug_transaksi`, `tgl_diterima`, `nama_penerima`, `bukti_penerimaan`, `no_resi`, `keterangan`) VALUES
('DO0122-003', '', '29', 'spk13', 2, 1, 'desa pakuwesi', 'DO0122-003.jpg', 750, 500, '2022-01-03', '2022-01-03', '', '2022-01-05', 'ketrina', 'iconadmin13.png', 'JD01899987', 'lunas'),
('DO0122-004', '12', '24', 'spk23346', 1, 2, 'blitar', 'DO0122-004.png', 0, 250, '2022-01-04', '2022-01-05', '', '2022-01-05', 'kelvin', 'beranda27.png', 'JD01899987', 'lunas'),
('DO0122-005', '12', '24', 'spk2336', 1, 2, 'blitar', 'DO0122-005.png', 7500, 7500, '2022-01-04', '2022-01-04', '', '2022-01-05', 'indyraa aw', 'kopi23.jpg', 'JD01899987', 'lunas');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `tanggal_update`, `is_active`) VALUES
(10, 'admin', 'indyra.wijayanti@gmail.com', 'indyra12', '5e9795e3f3ab55e7790a6283507c085db0d764fc', 'Admin', '2021-11-15 01:17:16', 'Y'),
(11, 'indy', 'indy@gmail.com', 'indy123', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '2022-01-04 03:23:31', 'N'),
(12, 'admin', 'admin@gmail.com', 'admin1', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '2022-01-04 03:18:08', 'Y'),
(13, 'eva', 'eva@gmail.com', 'eva123', '0050a3a1ab3d2530b34577213a85f11e8add3b42', 'Admin', '2021-11-15 01:16:49', 'Y'),
(15, 'indyra ayu', 'indyra.wijayanti@gmail.com', 'admin12', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'User', '2022-01-04 03:25:35', 'Y'),
(16, 'eva', 'indy@gmail.com', 'admin8', '7b2e9f54cdff413fcde01f330af6896c3cd7e6cd', 'User', '2022-01-04 03:27:46', 'Y'),
(17, 'indy', 'indy@gmail.com', 'indyra123', '21232f297a57a5a743894a0e4a801fc3', 'User', '2022-01-04 03:34:53', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `angsuran`
--
ALTER TABLE `angsuran`
  ADD PRIMARY KEY (`kode_angsuran`),
  ADD KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD KEY `kode_transaksi` (`kode_transaksi`(191));

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  ADD PRIMARY KEY (`id_header_transaksi`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indexes for table `jenis_pembayaran`
--
ALTER TABLE `jenis_pembayaran`
  ADD PRIMARY KEY (`id_jenis_pembayaran`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_pelanggan`
--
ALTER TABLE `kategori_pelanggan`
  ADD PRIMARY KEY (`id_kategoripelanggan`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nm_kota_aktif` (`id`,`nm_kota`,`aktif`),
  ADD KEY `lat_kota` (`lat_kota`),
  ADD KEY `long_kota` (`long_kota`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `kode_produk` (`kode_produk`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`),
  ADD UNIQUE KEY `nomor_rekening` (`nomor_rekening`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `angsuran`
--
ALTER TABLE `angsuran`
  MODIFY `kode_angsuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  MODIFY `id_header_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jenis_pembayaran`
--
ALTER TABLE `jenis_pembayaran`
  MODIFY `id_jenis_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kategori_pelanggan`
--
ALTER TABLE `kategori_pelanggan`
  MODIFY `id_kategoripelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `angsuran`
--
ALTER TABLE `angsuran`
  ADD CONSTRAINT `angsuran_ibfk_1` FOREIGN KEY (`kode_transaksi`) REFERENCES `transaksi` (`kode_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
