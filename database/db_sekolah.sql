-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 Jul 2019 pada 15.02
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_admin`
--

CREATE TABLE `login_admin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login_admin`
--

INSERT INTO `login_admin` (`username`, `password`) VALUES
('admin', 'admin12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_tu`
--

CREATE TABLE `login_tu` (
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login_tu`
--

INSERT INTO `login_tu` (`username`, `password`) VALUES
('tatausaha', 'tu12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `id_pembayaran` varchar(10) NOT NULL,
  `id_penilaian` varchar(10) NOT NULL,
  `id_pendaftaran` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `total_pembayaran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id_pembayaran`, `id_penilaian`, `id_pendaftaran`, `nama`, `total_pembayaran`) VALUES
('0001', '001', '01', 'Bagus', 6000000),
('0002', '002', '02', 'Wiliam', 6000000),
('0003', '003', '03', 'Aisah', 6000000),
('0004', '003', '05', 'upar', 9000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pendaftaran`
--

CREATE TABLE `tb_pendaftaran` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `jurusan` varchar(15) NOT NULL,
  `sekolah` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `alamat_sekolah` varchar(50) NOT NULL,
  `ayah` varchar(20) NOT NULL,
  `pekerjaan` varchar(15) NOT NULL,
  `tlp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pendaftaran`
--

INSERT INTO `tb_pendaftaran` (`id`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `jurusan`, `sekolah`, `email`, `alamat_sekolah`, `ayah`, `pekerjaan`, `tlp`, `alamat`) VALUES
('01', 'Bagus', 'Bogor', '1996-02-01', 'Laki-Laki', 'Islam', 'Akutansi', 'Smp Bogor 1', 'smpbogor@gmail.com', 'Jl. Bogor Km 30', 'Bapake', 'Buruh', '0987654321', 'Jl. Cibinong Raya'),
('02', 'Wiliam', 'Jakarta', '1996-02-02', 'Laki-Laki', 'Kristen', 'TKJ', 'Smpn Jakarta 12', 'smpn12jkt@gmail.com', 'Jl. Jakarta Raya', 'Bapake', 'Wirausaha', '0891234567', 'Jl. Jakarta'),
('03', 'Aisah', 'Bekasi', '1996-03-03', 'Perempuan', 'Islam', 'Akutansi', 'Smpn Bekasi 1', 'smpbks1@gmail.com', 'JL. Bekasi Raya', 'Bapake', 'Pegawai', '0987656789', 'Jl Jakarta'),
('04', 'dian', 'jakarta', '1997-02-01', 'Perempuan', 'Islam', 'TKJ', 'smpn jkt 1', 'jkt1@gmail.com', 'jl.jakarta', 'bapak', 'wirausaha', '0987654321', 'jl.jakarta'),
('05', 'upar', 'bandung', '1995-03-05', 'Laki-Laki', 'Islam', 'TKJ', 'smpn 12', 'upar123@gmail.com', 'jalan bandung', 'mail', 'guru', '081287648699', 'bandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penilaian`
--

CREATE TABLE `tb_penilaian` (
  `id_penilaian` varchar(10) NOT NULL,
  `id_pendaftaran` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `sekolah_asal` varchar(40) NOT NULL,
  `nilai` int(3) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `keterangan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_penilaian`
--

INSERT INTO `tb_penilaian` (`id_penilaian`, `id_pendaftaran`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `sekolah_asal`, `nilai`, `bulan`, `tahun`, `keterangan`) VALUES
('001', '01', 'Bagus', 'Bogor', '1996-02-01', 'Laki-Laki', 'Smp Bogor 1', 80, 'Juli', '2019', 'LULUS'),
('002', '02', 'Wiliam', 'Jakarta', '1996-02-02', 'Laki-Laki', 'Smpn Jakarta 12', 90, 'Juli', '2019', 'LULUS'),
('003', '05', 'upar', 'bandung', '1995-03-05', 'Laki-Laki', 'smpn 12', 80, 'Juli', '2019', 'LULUS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_admin`
--
ALTER TABLE `login_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `login_tu`
--
ALTER TABLE `login_tu`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_penilaian` (`id_penilaian`);

--
-- Indexes for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  ADD PRIMARY KEY (`id_penilaian`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
