-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jun 2023 pada 13.48
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
(6, 'Teh Pucuk', 'Teh Pucuk Harum adalah minuman teh kemasan yang dibuat dari pucuk daun teh pilihan. ', 4000, 'teh pucuk.jpeg', 1),
(9, 'Apel', 'Tidak mengandung lemak dan bebas kolesterol.', 15000, 'Ini-Manfaat-Buah-Apel-Untuk-Kesehatan.jpg', 8),
(10, 'No-Churn Lemon Ice Cream', 'No-Churn Lemon Ice Cream rasanya luar biasa!', 8000, 'No-Churn-Lemon-Ice-Cream-Feature.jpg', 5),
(11, 'Van Leeuwen Ice Cream', 'Chocolate Fudge Brownie ', 35000, 'van leeuwen ice cream.jpg', 5);

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
(5, 'Ice Cream'),
(8, 'Buah-Buahan'),
(9, 'Sayuran');

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
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
