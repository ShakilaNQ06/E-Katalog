-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jun 2023 pada 11.59
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_katalog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(150) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` double NOT NULL,
  `gambar` text NOT NULL,
  `id_kategori` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`id`, `nama_barang`, `deskripsi`, `harga`, `gambar`, `id_kategori`) VALUES
(12, 'Teh Pucuk', 'Teh Pucuk Harum', 4000, 'teh pucuk.jpg', 1),
(14, 'Fruit Tea', 'Banyak Sensasinya', 5000, 'fruit tea.jpg', 1),
(15, 'Lays', 'Lays Potato Chip', 3500, 'lays.png', 9),
(16, 'Pocari Sweat', 'Go Sweat Go Ion', 5000, 'pocari.jpeg', 1),
(17, 'Mangga', 'Banyak Khasiatnya', 20000, 'mangga.jpeg', 8),
(18, 'Popcorn', 'Oishi Popcorn Caramel', 15000, 'popcorn.jpeg', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(1, 'Minuman'),
(8, 'Buah-Buahan'),
(9, 'Makanan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `nama_slider` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id`, `nama_slider`, `gambar`) VALUES
(4, 'Satu', 'Image.jpeg'),
(5, 'Dua', '648ac0c779055shop.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_about`
--

CREATE TABLE `tb_about` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_about`
--

INSERT INTO `tb_about` (`id`, `judul`, `isi`) VALUES
(1, 'About', 'isiiii');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sosial`
--

CREATE TABLE `tb_sosial` (
  `id` int(20) NOT NULL,
  `nama_sosmed` varchar(255) NOT NULL,
  `icon` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_sosial`
--

INSERT INTO `tb_sosial` (`id`, `nama_sosmed`, `icon`, `link`) VALUES
(8, 'Google', '648ac3e10d2cagoogle.png', 'https://www.google.com'),
(9, 'Twitter', '648abae4e5863twitter.png', 'https://twitter.com/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_twitter`
--

CREATE TABLE `tb_twitter` (
  `id` int(20) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_twitter`
--

INSERT INTO `tb_twitter` (`id`, `judul`, `isi`) VALUES
(1, 'Twitter', 'Isi Twitter');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_about`
--
ALTER TABLE `tb_about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_sosial`
--
ALTER TABLE `tb_sosial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_twitter`
--
ALTER TABLE `tb_twitter`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_about`
--
ALTER TABLE `tb_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_sosial`
--
ALTER TABLE `tb_sosial`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_twitter`
--
ALTER TABLE `tb_twitter`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
