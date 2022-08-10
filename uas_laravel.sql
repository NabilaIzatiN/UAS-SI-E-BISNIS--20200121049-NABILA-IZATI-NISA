-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Agu 2022 pada 03.42
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mahasiswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matakuliah_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`id`, `keterangan`, `created_at`, `updated_at`, `mahasiswa`, `matakuliah_id`) VALUES
(4, 'Hadir', '2022-08-09 16:48:18', '2022-08-09 16:48:18', 'Kuslia Noval Widya', 6),
(5, 'Tidak Hadir', '2022-08-09 16:55:28', '2022-08-09 16:55:28', 'Wahyu Kurnia Senjaya', 4),
(6, 'Hadir', '2022-08-09 17:02:34', '2022-08-09 17:02:34', 'Silviana Devi', 4),
(7, 'Hadir', '2022-08-09 17:02:57', '2022-08-09 17:02:57', 'Lisa Adinda', 5),
(8, 'Hadir', '2022-08-09 17:03:36', '2022-08-09 17:03:36', 'Stephani Trivena', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `datamahasiswa`
--

CREATE TABLE `datamahasiswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_mahasiswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jadwal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `matakuliah_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `jadwal`, `created_at`, `updated_at`, `matakuliah_id`) VALUES
(4, '2022-08-15', '2022-08-09 16:35:36', '2022-08-09 16:35:36', 6),
(5, '2022-08-15', '2022-08-09 16:36:00', '2022-08-09 16:36:00', 4),
(6, '2022-08-16', '2022-08-09 16:42:57', '2022-08-09 16:42:57', 5),
(7, '2022-08-16', '2022-08-09 16:43:56', '2022-08-09 16:43:56', 9),
(8, '2022-08-17', '2022-08-09 16:44:16', '2022-08-09 16:44:16', 7),
(9, '2022-08-18', '2022-08-09 16:44:31', '2022-08-09 16:44:31', 8),
(10, '2022-08-19', '2022-08-09 16:44:46', '2022-08-09 16:44:46', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontrak`
--

CREATE TABLE `kontrak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` bigint(20) NOT NULL,
  `nama_mhs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `no_tlp` bigint(20) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `nim`, `nama_mhs`, `email`, `umur`, `alamat`, `created_at`, `updated_at`, `no_tlp`, `semester`) VALUES
(6, 20200121016, 'Wahyu Kurnia Senjaya', 'wahyu.senjaya.si.20@cic.ac.id', 21, 'Cirebon', '2022-08-09 16:24:19', '2022-08-09 16:24:19', 81324184684, 4),
(7, 2020107008, 'Silviana Devi', 'silviana.devi.si.20@cic.ac.id', 21, 'Cirebon', '2022-08-09 16:26:05', '2022-08-09 16:26:05', 89512602298, 4),
(8, 20200121044, 'Kuslia Noval Widya', 'kuslia.widya.si.20@cic.ac.id', 21, 'Cirebon', '2022-08-09 16:28:04', '2022-08-09 16:28:04', 8978471317, 4),
(9, 20200121035, 'Stephani Trivena', 'stephani.trivena.si.20@cic.ac.id', 21, 'Cirebon', '2022-08-09 16:29:18', '2022-08-09 16:29:18', 895374901258, 4),
(10, 20200121041, 'Lisa Adinda', 'lisa.adinda.si.20@cic.ac.id', 21, 'Cirebon', '2022-08-09 16:30:55', '2022-08-09 16:30:55', 85624037083, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `matakuliah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`id`, `sks`, `created_at`, `updated_at`, `matakuliah`) VALUES
(4, 4, '2022-08-09 16:32:23', '2022-08-09 16:32:23', 'Pemrograman Internet Intermediate'),
(5, 2, '2022-08-09 16:32:44', '2022-08-09 16:32:44', 'UI & UX Design'),
(6, 3, '2022-08-09 16:33:09', '2022-08-09 16:33:09', 'Business Intelegence'),
(7, 3, '2022-08-09 16:33:35', '2022-08-09 16:33:35', 'E-Commerce'),
(8, 3, '2022-08-09 16:33:58', '2022-08-09 16:33:58', 'Analisa sistem berorientasi obyek'),
(9, 2, '2022-08-09 16:34:26', '2022-08-09 16:34:26', 'TOEFL Preparations'),
(10, 3, '2022-08-09 16:34:47', '2022-08-09 16:34:47', 'Rekayasa Perangkat Lunak : Agile Scrum Introduction');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_25_033849_create_mahasiswas_table', 1),
(6, '2022_08_08_035402_create_matakuliah_table', 1),
(7, '2022_08_08_045355_create_jadwal_table', 1),
(8, '2022_08_08_051614_add_matakuliah_to_matakuliah', 1),
(9, '2022_08_08_054056_add_matakuliah_id_to_jadwal', 1),
(10, '2022_08_08_081631_create_datamahasiswa_table', 1),
(11, '2022_08_08_083355_add_no_tlp_to_mahasiswas', 1),
(12, '2022_08_08_085311_create_absensi_table', 1),
(13, '2022_08_09_022241_add_to_absensi', 1),
(14, '2022_08_09_051818_add_matakuliah_id_to_absensi', 1),
(15, '2022_08_09_084106_create_kontrak_table', 1),
(16, '2022_08_09_085016_add_semester_to_mahasiswas', 1),
(17, '2022_08_09_094115_create_semester_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `semester`
--

CREATE TABLE `semester` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin1', 'admin@gmail.com', NULL, '$2y$10$mE4UWlXBIpMP9z7nOuQhie1Mts8FrQrhDV39/lfihZF0On5x3eBAa', 'admin', NULL, '2022-08-09 05:26:01', '2022-08-09 05:26:01'),
(5, 'Kuslia Noval Widya', 'kuslia@gmail.com', NULL, '$2y$10$hPfaMVTun2dQG/yBAUDisOU3y/zl13SMkonshPd.B4Me8t392IVwG', 'admin', NULL, '2022-08-09 16:47:55', '2022-08-09 16:47:55'),
(6, 'Wahyu Kurnia Senjaya', 'wahyu.senjaya.si.20@cic.ac.id', NULL, '$2y$10$3z8nowN2XhknVmhIGd6nQ.6ley5NLvsoj3aJQyRZIdsaT6qzxBdKe', 'admin', NULL, '2022-08-09 16:49:33', '2022-08-09 16:49:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datamahasiswa`
--
ALTER TABLE `datamahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontrak`
--
ALTER TABLE `kontrak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mahasiswas_nim_unique` (`nim`),
  ADD UNIQUE KEY `mahasiswas_email_unique` (`email`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `datamahasiswa`
--
ALTER TABLE `datamahasiswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kontrak`
--
ALTER TABLE `kontrak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `semester`
--
ALTER TABLE `semester`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
