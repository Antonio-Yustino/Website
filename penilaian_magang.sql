-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Bulan Mei 2022 pada 11.10
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penilaian_magang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang`
--

CREATE TABLE `bidang` (
  `id_bidang` varchar(100) NOT NULL,
  `nama_bidang` varchar(100) NOT NULL,
  `id_pembimbing` varchar(100) NOT NULL,
  `tgl_input` date NOT NULL,
  `tgl_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bidang`
--

INSERT INTO `bidang` (`id_bidang`, `nama_bidang`, `id_pembimbing`, `tgl_input`, `tgl_update`) VALUES
('bidang0001', 'Bagian Umum dan Keuangan', 'pembimbing0002', '2022-05-10', '0000-00-00'),
('bidang0002', 'Bagian Persidangan dan Perundang-Undangan', 'pembimbing0003', '2022-05-10', '0000-00-00'),
('bidang0003', 'Bagian Fasilitas Pengawasan dan Penganggaran', 'pembimbing0004', '2022-05-10', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kampus`
--

CREATE TABLE `kampus` (
  `id_kampus` varchar(100) NOT NULL,
  `nama_kampus` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_input` date NOT NULL,
  `tgl_update` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kampus`
--

INSERT INTO `kampus` (`id_kampus`, `nama_kampus`, `alamat`, `tgl_input`, `tgl_update`) VALUES
('kampus0001', 'Institut Teknologi Dan Bisnis STIKOM BALI', 'Jl. Raya Puputan No.86, Dangin Puri Klod, Kec. Denpasar Tim., Kota Denpasar, Bali 80234', '2022-05-07', 2022),
('kampus0002', 'Institut Bisnis dan Teknologi Indonesia (INSTIKI)', 'Jl. Tukad Pakerisan No.97, Panjer, Denpasar Selatan, Kota Denpasar, Bali 80225', '2022-05-09', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` varchar(100) NOT NULL,
  `id_mahasiswa` varchar(100) NOT NULL,
  `tgl_kegiatan` date NOT NULL,
  `kegiatan` text NOT NULL,
  `tgl_input` date NOT NULL,
  `tgl_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `id_mahasiswa`, `tgl_kegiatan`, `kegiatan`, `tgl_input`, `tgl_update`) VALUES
('kegiatan0001', 'mahasiswa0001', '2022-05-12', 'Pada era globalisasi seperti saat ini, pesatnya perkembangan ilmu pengetahuan dan teknologi menuntut instansi-instansi pemerintahan ditingkat desa harus menerapkan sebuah pengolahan data dan pelayanan publik yang terkomputerisasi dan terotomatisasi sehingga dapat memberikan informasi yang tepat dan akurat. Sistem informasi administrasi kependudukan dimaksudkan ini untuk meningkatkan efisiensi dalam hal pelayanan kepada masyarakat. ', '2022-05-12', '2022-05-20'),
('kegiatan0002', 'mahasiswa0001', '2022-05-13', 'A', '2022-05-12', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `id_kampus` varchar(100) NOT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `telepon` varchar(15) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tgl_input` date NOT NULL,
  `tgl_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama`, `nim`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `id_kampus`, `tgl_mulai`, `tgl_selesai`, `telepon`, `foto`, `tgl_input`, `tgl_update`) VALUES
('mahasiswa0001', 'Arnoldus Jimitius', '180030827', 'Laki-laki', 'Maumere', '2022-05-10', 'Jln.Tukad Melangit No.37', 'kampus0001', '2022-05-12', '2022-05-14', '082237946045', '180030827-A.jpg', '2022-05-10', '2022-05-10'),
('mahasiswa0002', 'Roval Chandra Kirana', '180010274', 'Laki-laki', 'Reo', '2022-05-10', 'Reo', 'kampus0001', '2022-05-12', '2022-05-14', '083167436994', '180010274-RovalChandraKirana.jpg', '2022-05-10', '0000-00-00'),
('mahasiswa0003', 'Filander Filbert Hieng', '180010227', 'Laki-laki', 'Maumere', '2022-05-10', 'Jln. Letda Reta', 'kampus0001', '2022-05-12', '2022-05-14', '085643921299', '180010227-FilanderFilbertHieng.jpg', '2022-05-10', '0000-00-00'),
('mahasiswa0004', 'Arnoldus Budjak', '180030828', 'Laki-laki', 'Maumere', '2022-05-10', 'Jalan Kemana Kek', 'kampus0002', '2022-05-12', '2022-05-14', '084589975432', '180030828-ArnoldusBudjak.jpg', '2022-05-10', '0000-00-00'),
('mahasiswa0005', 'Abraham Leo Rato', '180030881', 'Laki-laki', 'Bajawa', '2022-05-12', 'Jalan Bosan', 'kampus0001', '2022-05-12', '2022-05-14', '087134912390', '180030881-AbrahamLeoRato.jpg', '2022-05-12', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembagianbidang`
--

CREATE TABLE `pembagianbidang` (
  `id_pembagianbidang` varchar(100) NOT NULL,
  `id_bidang` varchar(100) NOT NULL,
  `id_mahasiswa` varchar(100) NOT NULL,
  `tgl_input` date NOT NULL,
  `tgl_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembagianbidang`
--

INSERT INTO `pembagianbidang` (`id_pembagianbidang`, `id_bidang`, `id_mahasiswa`, `tgl_input`, `tgl_update`) VALUES
('pembagianbidang0001', 'bidang0003', 'mahasiswa0004', '2022-05-10', '0000-00-00'),
('pembagianbidang0002', 'bidang0003', 'mahasiswa0001', '2022-05-10', '0000-00-00'),
('pembagianbidang0003', 'bidang0002', 'mahasiswa0003', '2022-05-10', '0000-00-00'),
('pembagianbidang0004', 'bidang0001', 'mahasiswa0002', '2022-05-10', '2022-05-10'),
('pembagianbidang0005', 'bidang0002', 'mahasiswa0005', '2022-05-21', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembimbing`
--

CREATE TABLE `pembimbing` (
  `id_pembimbing` varchar(100) NOT NULL,
  `nama_pembimbing` varchar(100) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tgl_input` date NOT NULL,
  `tgl_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembimbing`
--

INSERT INTO `pembimbing` (`id_pembimbing`, `nama_pembimbing`, `nip`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `telepon`, `foto`, `tgl_input`, `tgl_update`) VALUES
('pembimbing0001', 'Stefanus Jemsifori, STP', '197612262006041007', 'Laki-laki', 'Labuan Bajo', '2022-05-10', 'Jalan Kemana Kek', '082265437896', '197612262006041007-StefanusJemsiforiSTP.jpg', '2022-05-10', '2022-05-10'),
('pembimbing0002', 'Maria I.D Djeha,SE,M.Ec.Dev', '197811252008042003', 'Perempuan', 'Labuan Bajo', '2022-05-10', 'Jalan di tempat Grak', '089765438909', '197811252008042003-MariaIDDjehaSEMEcDev.jpg', '2022-05-10', '0000-00-00'),
('pembimbing0003', 'Ir. Aurelia Imelda MeZE', '196411191994032004', 'Perempuan', 'Labuan Bajo', '2022-05-10', 'Jln. Tukaran sendal', '082212345678', '196411191994032004-IrAureliaImeldaMeZE.jpg', '2022-05-10', '0000-00-00'),
('pembimbing0004', 'Drs. Yosep Sudarmin', '196411101994031004', 'Laki-laki', 'Labuan Bajo', '2022-05-10', 'Jalan Tidak Tahu Arah', '08223456787', '196411101994031004-DrsYosepSudarmin.jpg', '2022-05-10', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` varchar(100) NOT NULL,
  `id_bidang` varchar(100) NOT NULL,
  `id_mahasiswa` varchar(100) NOT NULL,
  `tgl_input` date DEFAULT NULL,
  `tgl_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_bidang`, `id_mahasiswa`, `tgl_input`, `tgl_update`) VALUES
('penilaian0001', 'bidang0003', 'mahasiswa0001', '2022-05-15', '2022-05-15'),
('penilaian0002', 'bidang0003', 'mahasiswa0004', '2022-05-16', '2022-05-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaiandetail`
--

CREATE TABLE `penilaiandetail` (
  `id_penilaiandetail` varchar(100) NOT NULL,
  `id_penilaian` varchar(100) NOT NULL,
  `id_subpenilaian` varchar(100) NOT NULL,
  `nilai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penilaiandetail`
--

INSERT INTO `penilaiandetail` (`id_penilaiandetail`, `id_penilaian`, `id_subpenilaian`, `nilai`) VALUES
('penilaiandetail0015', 'penilaian0001', 'subpenilaian0003', '100'),
('penilaiandetail0016', 'penilaian0001', 'subpenilaian0006', '100'),
('penilaiandetail0017', 'penilaian0001', 'subpenilaian0004', '90'),
('penilaiandetail0018', 'penilaian0001', 'subpenilaian0002', '90'),
('penilaiandetail0019', 'penilaian0001', 'subpenilaian0001', '90'),
('penilaiandetail0020', 'penilaian0001', 'subpenilaian0007', '90'),
('penilaiandetail0021', 'penilaian0001', 'subpenilaian0005', '90'),
('penilaiandetail0029', 'penilaian0002', 'subpenilaian0003', '85'),
('penilaiandetail0030', 'penilaian0002', 'subpenilaian0006', '85'),
('penilaiandetail0031', 'penilaian0002', 'subpenilaian0004', '85'),
('penilaiandetail0032', 'penilaian0002', 'subpenilaian0002', '95'),
('penilaiandetail0033', 'penilaian0002', 'subpenilaian0001', '88'),
('penilaiandetail0034', 'penilaian0002', 'subpenilaian0007', '88'),
('penilaiandetail0035', 'penilaian0002', 'subpenilaian0005', '88');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subpenilaian`
--

CREATE TABLE `subpenilaian` (
  `id_subpenilaian` varchar(100) NOT NULL,
  `jenis_penilaian` varchar(100) NOT NULL,
  `tgl_input` date NOT NULL,
  `tgl_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `subpenilaian`
--

INSERT INTO `subpenilaian` (`id_subpenilaian`, `jenis_penilaian`, `tgl_input`, `tgl_update`) VALUES
('subpenilaian0001', 'Skill / Kompetensi Teknis', '2022-05-13', '2022-05-15'),
('subpenilaian0002', 'Presensi Kehadiran', '2022-05-13', '2022-05-15'),
('subpenilaian0003', 'Dedikasi terhadap tugas', '2022-05-13', '2022-05-15'),
('subpenilaian0004', 'Prakarsa / Inisiatif', '2022-05-13', '2022-05-15'),
('subpenilaian0005', 'Tanggung Jawab', '2022-05-13', '2022-05-15'),
('subpenilaian0006', 'Kemampuan Bekerja Sama', '2022-05-13', '2022-05-15'),
('subpenilaian0007', 'Sopan santun dan etika', '2022-05-13', '2022-05-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nimnip` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hak_akses` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `login_waktu_terakhir` time NOT NULL,
  `login_tanggal_terakhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `nimnip`, `password`, `hak_akses`, `status`, `login_waktu_terakhir`, `login_tanggal_terakhir`) VALUES
('user0001', 'Admin', '180030826', '84f0a1d9587cbf8297d86685ab4b768d', 'Admin', 'Aktifkan', '09:58:15', '2022-05-21'),
('user0002', 'Arnoldus Jimitius', '180030827', 'e9334e872e04df46b2f66d314c439601', 'Mahasiswa', 'Aktifkan', '08:38:52', '2022-05-21'),
('user0003', 'Roval Chandra Kirana', '180010274', 'bd935b1eecb92193e826fca119f87723', 'Mahasiswa', 'Aktifkan', '14:46:07', '2022-05-18'),
('user0004', 'Filander Filbert Hieng', '180010227', '897c2969310b31dd4652df60923c76d4', 'Mahasiswa', 'Aktifkan', '15:01:15', '2022-05-16'),
('user0005', 'Stefanus Jemsifori, STP', '197612262006041007', 'ae134211bb3b00b69301806e44017f7e', 'Pembimbing', 'Aktifkan', '18:16:38', '2022-05-12'),
('user0006', 'Arnoldus Budjak', '180030828', 'b2b111a37b5409309f4a78dc06e55cc4', 'Mahasiswa', 'Aktifkan', '15:32:40', '2022-05-16'),
('user0007', 'Maria I.D Djeha,SE,M.Ec.Dev', '197811252008042003', '87309638f50217bca23c999b41ecb429', 'Pembimbing', 'Aktifkan', '18:16:19', '2022-05-12'),
('user0008', 'Ir. Aurelia Imelda MeZE', '196411191994032004', '4ef5e1372f613f76e6905c5202de0735', 'Pembimbing', 'Aktifkan', '15:21:00', '2022-05-18'),
('user0009', 'Drs. Yosep Sudarmin', '196411101994031004', '6002a36bc7d6bf59a0a2612cfc9777c4', 'Pembimbing', 'Aktifkan', '08:41:34', '2022-05-21'),
('user0010', 'Abraham Leo Rato', '180030881', 'da5203ef97f8643b750986870b1e3e16', 'Mahasiswa', 'Aktifkan', '15:20:05', '2022-05-18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indeks untuk tabel `kampus`
--
ALTER TABLE `kampus`
  ADD PRIMARY KEY (`id_kampus`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indeks untuk tabel `pembagianbidang`
--
ALTER TABLE `pembagianbidang`
  ADD PRIMARY KEY (`id_pembagianbidang`);

--
-- Indeks untuk tabel `pembimbing`
--
ALTER TABLE `pembimbing`
  ADD PRIMARY KEY (`id_pembimbing`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`);

--
-- Indeks untuk tabel `penilaiandetail`
--
ALTER TABLE `penilaiandetail`
  ADD PRIMARY KEY (`id_penilaiandetail`);

--
-- Indeks untuk tabel `subpenilaian`
--
ALTER TABLE `subpenilaian`
  ADD PRIMARY KEY (`id_subpenilaian`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
