-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Nov 2025 pada 05.40
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invent`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tersedia` int(11) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `deskripsi`, `jumlah`, `tersedia`, `lokasi`, `kode`, `created_at`) VALUES
(1, 'HDMI', 'Menghubungkan laptop ke tv', 6, 3, 'SMC telkom', '01', '2025-11-24 03:18:37'),
(2, 'ac', 'hh', 1, 1, 'telkom', '2', '2025-11-24 04:34:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `pinjaman` varchar(100) NOT NULL,
  `jenis` enum('pinjam','kembali') NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `barang_id`, `pinjaman`, `jenis`, `jumlah`, `tanggal`, `catatan`) VALUES
(1, 1, '', 'pinjam', 1, '2025-11-24 10:23:40', 'dipakai dikelas 12 rpl 2'),
(2, 1, '', 'kembali', 1, '2025-11-24 10:25:48', 'Sudah selesai dikembalikan'),
(3, 1, '', 'pinjam', 1, '2025-11-24 10:27:43', ''),
(4, 1, '', 'kembali', 1, '2025-11-24 10:27:54', 'hh'),
(5, 1, '', 'pinjam', 1, '2025-11-24 10:40:00', ''),
(6, 1, '', 'kembali', 1, '2025-11-24 10:42:50', 'ss'),
(7, 1, '', 'pinjam', 2, '2025-11-24 11:21:00', 'aa'),
(8, 1, '', 'pinjam', 1, '2025-11-24 11:22:40', 'qq'),
(9, 1, '', 'kembali', 5, '2025-11-24 11:28:00', 'gg'),
(10, 1, '', 'pinjam', 2, '2025-11-24 11:33:46', 'untuk kelas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `created_at`, `role`) VALUES
(1, 'Admin', '$2y$10$wyg1Mm1KXU.M0scL.fNcD.bDebtHeYZ/FzzoqfyYKPe4uNavZNgQ6', 'Administrator', '2025-11-17 02:24:24', 'admin'),
(2, 'Banyu', '$2y$10$ugrmCeRO8.Qw2Y/1x2auj./g3Z7PMgRMfO0aAnBrLaIwGUHzdTXSK', 'banyuselfa', '2025-11-24 03:48:20', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
