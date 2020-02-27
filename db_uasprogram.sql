-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Feb 2020 pada 03.43
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uasprogram`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `input_barang`
--

CREATE TABLE `input_barang` (
  `id_barang` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `input_barang`
--

INSERT INTO `input_barang` (`id_barang`, `nama`, `kategori_id`, `satuan_id`) VALUES
(123, 'sabun mandi', 101, 112),
(124, 'sabun muka', 102, 113),
(125, 'sikat gigi', 103, 114),
(126, 'sampo', 104, 115),
(127, 'odol', 105, 116),
(128, 'sikat gigi', 106, 117),
(129, 'bak mandi', 107, 118),
(130, 'ember', 108, 119),
(131, 'handuk', 109, 120),
(132, 'sikat baju', 110, 121),
(133, 'baju', 111, 122),
(134, 'celana', 112, 123),
(135, 'gayung', 113, 124),
(136, 'sandal', 114, 125),
(137, 'mainan', 115, 126),
(138, 'pelan', 116, 127),
(139, 'pembersih lantai', 117, 128),
(140, 'elap', 118, 129),
(141, 'baju kaos', 119, 130),
(142, 'piyama', 120, 131);

-- --------------------------------------------------------

--
-- Struktur dari tabel `input_kategori`
--

CREATE TABLE `input_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `input_kategori`
--

INSERT INTO `input_kategori` (`id_kategori`, `nama`) VALUES
(101, 'sabun mandi'),
(102, 'sabun muka'),
(103, 'sikat gigi'),
(104, 'sampo'),
(105, 'odol'),
(106, 'sikat gigi'),
(107, 'bak mandi'),
(108, 'ember'),
(109, 'handuk'),
(110, 'sikat baju'),
(111, 'baju'),
(112, 'celana'),
(113, 'gayung'),
(114, 'sandal'),
(115, 'mainan'),
(116, 'pelan'),
(117, 'pembersih lantai'),
(118, 'elap'),
(119, 'baju kaos'),
(120, 'piyama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `input_satuan`
--

CREATE TABLE `input_satuan` (
  `id_satuan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `input_satuan`
--

INSERT INTO `input_satuan` (`id_satuan`, `nama`) VALUES
(112, 'sabun mandi'),
(113, 'sabun muka'),
(114, 'sikat gigi'),
(115, 'sampo'),
(116, 'odol'),
(117, 'sikat gigi'),
(118, 'bak mandi'),
(119, 'ember'),
(120, 'handuk'),
(121, 'sikat baju'),
(122, 'baju'),
(123, 'celana'),
(124, 'gayung'),
(125, 'sandal'),
(126, 'mainan'),
(127, 'pelan'),
(128, 'pembersih lantai'),
(129, 'elap'),
(130, 'baju kaos'),
(131, 'piyama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `input_transaksi`
--

CREATE TABLE `input_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama_transaksi` varchar(100) NOT NULL,
  `tgl_transaksi` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `input_transaksi`
--

INSERT INTO `input_transaksi` (`id_transaksi`, `nama_transaksi`, `tgl_transaksi`, `harga`, `qty`, `id_barang`) VALUES
(12345, 'nota kotan', '0000-00-00', 5000, 3, 123),
(12346, 'nota kredit', '0000-00-00', 10000, 3, 124),
(12347, 'nota debet', '0000-00-00', 3000, 1, 125),
(12348, 'kwitansi', '0000-00-00', 2000, 2, 126),
(12349, 'bukti transaksi', '0000-00-00', 15000, 1, 127),
(12350, 'rekening koran', '0000-00-00', 12000, 4, 128),
(12351, 'cek', '0000-00-00', 10000, 3, 129),
(12352, 'giro', '0000-00-00', 4000, 2, 130),
(12353, 'nota kotan', '0000-00-00', 3500, 1, 131),
(12354, 'nota kredit', '0000-00-00', 10000, 1, 132),
(12355, 'nota debet', '0000-00-00', 8000, 3, 133),
(12356, 'kwitansi', '0000-00-00', 4300, 3, 134),
(12357, 'bukti transaksi', '0000-00-00', 20000, 2, 135),
(12358, 'rekening koran', '0000-00-00', 4500, 1, 136),
(12359, 'cek', '0000-00-00', 7600, 1, 137),
(12360, 'giro', '0000-00-00', 8000, 4, 138),
(12361, 'nota kotan', '0000-00-00', 4300, 2, 139),
(12362, 'nota kredit', '0000-00-00', 5000, 1, 140),
(12363, 'nota debet', '0000-00-00', 2800, 1, 141),
(12364, 'kwitansi', '0000-00-00', 5000, 2, 142),
(12345, 'nota kotan', '02/02/2020', 5000, 3, 123),
(12346, 'nota kredit', '03/02/2020', 10000, 3, 124),
(12347, 'nota debet', '04/02/2020', 3000, 1, 125),
(12348, 'kwitansi', '05/02/2020', 2000, 2, 126),
(12349, 'bukti transaksi', '06/02/2020', 15000, 1, 127),
(12350, 'rekening koran', '07/02/2020', 12000, 4, 128),
(12351, 'cek', '08/02/2020', 10000, 3, 129),
(12352, 'giro', '09/02/2020', 4000, 2, 130),
(12353, 'nota kotan', '10/02/2020', 3500, 1, 131),
(12354, 'nota kredit', '11/02/2020', 10000, 1, 132),
(12355, 'nota debet', '12/02/2020', 8000, 3, 133),
(12356, 'kwitansi', '13/02/2020', 4300, 3, 134),
(12357, 'bukti transaksi', '14/02/2020', 20000, 2, 135),
(12358, 'rekening koran', '15/02/2020', 4500, 1, 136),
(12359, 'cek', '16/02/2020', 7600, 1, 137),
(12360, 'giro', '17/02/2020', 8000, 4, 138),
(12361, 'nota kotan', '18/02/2020', 4300, 2, 139),
(12362, 'nota kredit', '19/02/2020', 5000, 1, 140),
(12363, 'nota debet', '20/02/2020', 2800, 1, 141),
(12364, 'kwitansi', '21/02/2020', 5000, 2, 142);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `input_barang`
--
ALTER TABLE `input_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `input_kategori`
--
ALTER TABLE `input_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `input_satuan`
--
ALTER TABLE `input_satuan`
  ADD PRIMARY KEY (`id_satuan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
