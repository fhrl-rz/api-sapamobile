-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Agu 2022 pada 18.41
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sapamobile`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar__ulang`
--

CREATE TABLE `daftar__ulang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload slip spp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload surat kompensasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload surat perpustakaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_08_07_191957_create_daftar__ulangs_table', 2);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_berita`
--

CREATE TABLE `t_berita` (
  `bidang_jasa` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `judul_en` varchar(500) NOT NULL,
  `judul_seo` varchar(500) NOT NULL,
  `headline` enum('Y','N') NOT NULL DEFAULT 'N',
  `isi_berita` text NOT NULL,
  `isi_en` text NOT NULL,
  `panel` varchar(100) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `create` date NOT NULL,
  `konfir` enum('Y','N') NOT NULL DEFAULT 'Y',
  `bagian` varchar(100) NOT NULL,
  `upload` varchar(100) NOT NULL,
  `trash` enum('Y','N') NOT NULL DEFAULT 'N',
  `t_website` enum('Y','N') DEFAULT 'N',
  `t_simakpta` enum('Y','N') NOT NULL DEFAULT 'N',
  `t_sapa` enum('Y','N') NOT NULL DEFAULT 'N',
  `urutan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_berita`
--

INSERT INTO `t_berita` (`bidang_jasa`, `id_berita`, `id_kategori`, `username`, `nama_user`, `judul`, `judul_en`, `judul_seo`, `headline`, `isi_berita`, `isi_en`, `panel`, `hari`, `tanggal`, `jam`, `gambar`, `tag`, `create`, `konfir`, `bagian`, `upload`, `trash`, `t_website`, `t_simakpta`, `t_sapa`, `urutan`) VALUES
('', 49, 2, 'admin', '', 'Kunjungan Duta Besar Perancis Ke Politeknik Aceh', '', 'Kunjungan Duta Besar Perancis Ke Politeknik Aceh', 'N', ' Tanggal 27 November 2014 Politeknik Aceh kedatangan tamu istimewa dari Duta besar Prancis yang bertujuan silaturahmi ke Politeknik Aceh. Ibu Duta Besar Prancis Corinne Breuzé beserta rombongannya serta didampingi oleh direktur Politeknik Aceh  Ir. Zainal Hanafi, bukan hanya sekedar silaturahmi mereka juga melihat berkeliling ke beberapa Laboratorium dan Warung prancis. Warung Prancis atau Jambo Prancis merupakan lembaga resmi dan Politeknik Aceh sebagai pusat informasi studi ke Prancis (baik informasi beasiswa, kebudayaan dan pemeran pendidikan), juga sebagai tempat persiapan pembelajaran ke Prancis seperti kursus bahasa dan budaya. Selain bahasa inggris untuk pembekalan mahasiswa sebagai komunikasi internasional Politeknik Aceh juga memberi pembekalan juga bahasa Prancis mau dari mahasiswa atau untuk umum dan Politeknik Aceh sudah mendirikan Warung Prancis pertama di Aceh.', '', 'News', 'Jumat', '2014-05-02', '14:35:40', 'IMG_6312.jpg', '', '0000-00-00', 'Y', '6', '', 'N', 'N', 'N', 'N', 0),
('', 50, 2, 'admin', '', 'Politeknik Aceh ikuti Workshop Capaian Pembelajaran Prodi Vokasi', '', 'Politeknik Aceh ikuti Workshop Capaian Pembelajaran Prodi Vokasi', 'N', '17/08/2019 - Politeknik Aceh yang diwakili oleh direktur, wakil direktur bidang akademik dan kemahasiswaan, kepala bagian akademik dan seluruh ketua program studi mengikuti Workshop Capaian Pembelajaran Prodi Vokasi yang diselenggarakan oleh LLDIKTI Wilayah XIII Aceh di Aula Hotel Grand Nanggroe selama 3 hari dari tanggal 14 s/d 16 Agustus 2019. \r\n\r\n\r\nKegiatan workshop yang diikuti oleh perguruan tinggi vokasi di lingkup kerja LLDIKTI Wilayah XIII ini, membahas tentang pengembangan kurikulum yang menerapkan kurikulum berbasis SN-DIKTI dan SKKNI yang bertujuan untuk mengimplementasikan pencapaian hasil lulusan prodi vokasi yang baik, sehingga bisa memiliki keahlian tertentu untuk memenuhi kebutuhan industry.\r\n\r\n\r\nDalam kegiatan ini juga turut di undang pihak dari industri – industri yang berada di provinsi Aceh untuk menyampaikan materi tentang kebutuhan tenaga kerja yang memiliki keterampilan yang sesuai kebutuhan industri.', '', 'Berita', 'Jumat', '2014-05-02', '14:38:44', '190828101013Untitled-1.jpg', '', '0000-00-00', 'Y', '4', '', 'N', 'N', 'N', 'N', 0),
('', 67, 2, 'mahmud', 'mahmud', 'Politkeknik Aceh Terima Kunjungan Tim Pendampingan Akreditasi Perguruan Tinggi', '', 'Politkeknik Aceh Terima Kunjungan Tim Pendampingan Akreditasi Perguruan Tinggi', 'Y', 'Akreditasi perguruan tinggi merupakan proses penilaian terhadap terhadap penyelenggaraan akademik dan manajemen institusi yang didasarkan standar yang ditetapkan. Proses akreditasi dilaksanakan Badan Akreditasi Nasional Perguruan Tinggi (BAN-PT) terhadap semua perguruan tinggi di Indonesia.\r\n\r\nPoliteknik Aceh Menerima kunjungan tim pendampingan dari LLDIKTI 13 Wilayah Aceh bertempat di ruang meeting B Kampus Politeknik Aceh, Sabtu 12 Oktober, kunjungan tim pendampingan disambut langsung oleh Direktur Politeknik Aceh, Wakil Direktur Bidang Akademik, Kemahasiswaan dan Alumni, dan Wakil direktur Bidang Umum, administrasi dan kerjasama beserta seluruh kepala bagian dan kepala program studi.', '', 'Berita', 'Jumat', '2014-05-02', '09:32:53', 'ig_Pa1.jpg', '', '0000-00-00', 'N', '6', '140502092106PANDUAN dan FORMULIR PENERIMAAN MHS BARU 2014-2015_1.pdf', 'N', 'N', 'N', 'N', 0),
('', 68, 3, 'dosen_badell', '', 'Asesmen Lapangan Akreditasi Secara Daring Prodi D3 Teknologi Informasi', '', 'Asesmen Lapangan Akreditasi Secara Daring Prodi D3 Teknologi Informasi', 'N', 'Banda Aceh,17-18 Desember 2021 Pelaksanaan Asesmen Lapangan Akreditasi secara daring via zoom untuk program studi Teknologi Informasi Politeknik Aceh, yang diikuti oleh Direktur dan Wakil Direktur 1, dosen Teknologi Informasi, Kepala Unit, Tenaga Pendidikan, Stecholder, Mahasiswa dan alumni. adapun Tim Asesor yang ditugaskan oleh Badan Akreditasi Nasional Perguruan Tinggi adalah Bapak Dr. Nur Rokhman, S.Si.,M.Kom dari Universitas Gajah Mada (UGM) dan Ibu Ani Rahmani, S.Si., M.T dari Politeknik Negeri Bandung (POLBAN).', '', '', 'Rabu', '2014-05-14', '15:30:21', 'assemen.jpeg', '', '0000-00-00', 'N', '3', '', 'N', 'N', 'N', 'N', 0),
('', 70, 2, 'news_badell', 'Abdul Rahman', 'Politeknik Aceh mendapatkan kunjungan Dari Toyama City Jepang, ', '', 'Politeknik Aceh mendapatkan kunjungan Dari Toyama City Jepang, ', 'N', ' Mr Takata yang didampingi oleh Ketua Yayasan Politeknik Aceh Bapak Iskandar Sos, M.Si, yang disambut oleh Direktur Politeknik Aceh Bapak Dr.Ir Yuhanis Yunus M.Eng, acara tersebut berlangsung di gedung meeting B yang ada dipoliteknik Aceh, dalam kunjungan \r\nMr Takata ke politeknik Aceh ingin melakukan kerjasama dalam bidang pendidikan. Dalam musyawarah yang berlangsung satu hari tersebut Bapak Direktur  Dr. Ir Yuhanis Yunus M.Eng mengatakan dalam (diskusi bersama) bahwa kita mengharapkan bisa  membuka kejurusan bahasa Jepang di Politeknik Aceh. disamping itu juga tutur dari karyawan Politeknik Aceh. Bahwa Politeknik Aceh juga pernah menerima bantuan buku dari Jepang. Dengan adanya hubungan ini kita mengharapkan agar nantinya kita dapat mengirimkan anak-anak peserta didik magang kita yang ada di Politeknik Aceh bisa berangkat ke Toyama City Jepang\r\n\r\n', '', 'News', 'Kamis', '2014-05-15', '20:02:36', '191018130045toyama.jpg', '', '0000-00-00', 'Y', '6', '', 'N', 'N', 'N', 'N', 0),
('', 71, 8, 'mimin_badell', 'Abd_raman', 'Akhir Tahun 2021, Politeknik Aceh Terima Penghargaan “Mitra Beasiswa Talenta Digital” dari KOMINFO RI', '', 'Akhir Tahun 2021, Politeknik Aceh Terima Penghargaan “Mitra Beasiswa Talenta Digital” dari KOMINFO RI', 'N', 'Banda Aceh (31/12/2021) Prestasi membanggakan kembali di terima Politeknik Aceh di akhir tahun 2021, Tahun ini Politeknik Aceh Kembali mendapat Apresiasi dari Kementerian Komunikasi dan Informatika RI sebagai Mitra Penyelenggara “Beasiswa Talenta Digital” Tahun 2021 di Jakarta pada Kegiatan Appreciation Day Mitra DTS 2021. Kamis (30/12).\r\n“Politeknik Aceh pada tahun ini kembali berkesempatan menjadi salah satu mitra dari 103 Universitas/Politeknik penyelenggara kegiatan beasiswa talenta digital Kementerian Komunikasi dan Informatika RI. Jadi kami mengucapkan Terima Kasih atas kerpercayaan KOMINFO menggandeng Politeknik Aceh sebagai mitra penyelenggara Beasiswa Talenta di Provinsi Aceh Bersama Politeknik Negeri Lhokseumawe dan Universitas Syiah Kuala”. Kata Direktur Politeknik Aceh, Dr. Hilmi, SE., M.Si., Ak. CA dalam keterangan tertulisnya.\r\nKegiatan” Beasiswa talenta Digital” ini sendiri merupakan program pelatihan dan sertifikasi berbasis kompetensi nasional yang bertujuan untuk mempersiapkan para lulusan lulusan SMK/sederajat serta Diploma 3 dan 4 bidang Sciences, Technology, Engineering, dan Math (STEM) yang belum bekerja atau tidak sedang bekerja agar memiliki kompetensi profesional sesuai dengan perkembangan ilmu pengetahuan dan teknologi di era revolusi industri 4.0 sehingga dapat bersaing baik di industri dalam maupun luar negeri. Lanjutnya.\r\nPada Program DTS 2021 Selain didukung oleh para mitra yang turut memberikan materi pelatihan kepada peserta, 103 universitas/Politeknik dalam negeri termasuk ikut bermitra 4 universitas luar negeri, 13 perusahaan teknologi global, hingga sejumlah edutech nasional, asosiasi dan komunitas, dunia usaha, perbankan, marketplace, serta startup.', '', '', 'Senin', '2014-05-19', '09:25:51', 'kominfo.jpeg', '', '0000-00-00', 'Y', '6', '', 'N', 'N', 'N', 'N', 0),
('', 72, 8, 'mimin_badell', 'Abd_raman', 'Award LLDIKTI Wilayah 13 Tahun 2021', '', 'Award LLDIKTI Wilayah 13 Tahun 2021', 'N', 'Lembaga Layanan Pendidikan Tinggi\r\n(LLDIKTI) Award adalah penghargaan yang diberikan oleh Direktorat Jenderal Pendidikan Tinggi Kementerian Pendidikan dan Kebudayaan Republik Indonesia kepada universitas yang berprestasi.\r\nAlhamdulillah Politeknik Aceh telah menerima penghargaan sebagai PTS swasta terbaik pada tahun 2018, 2019, dan 2020.\r\nRakan, doakan tahun ini Politeknik Aceh dapat membawa pulang penghargaan ini lagi ya!', '', 'Berita', 'Senin', '2014-05-19', '09:40:41', 'award.jpeg', '', '0000-00-00', 'N', '6', '', 'N', 'N', 'N', 'N', 0),
('', 73, 0, 'mimin_badell', 'Abd_raman', 'Kunjungan Tim Divisi Lingkungan Kota Toyama', '', 'Kunjungan Tim Divisi Lingkungan Kota Toyama', 'N', '30/11/2018 | Kunjungan Tim Environmental DivisionToyama City, Jepang Ke Kampus Politeknik Aceh terkait inisiasi program kerjasama Sister City dengan Pemerintah Kota Banda Aceh.', '', '', 'Senin', '2014-05-19', '15:05:03', 'toyama.jpeg', '', '0000-00-00', 'Y', '', '', 'N', 'N', 'N', 'N', 0),
('', 75, 8, 'mimin_badell', 'Abd_raman', 'Focus Group Discussion Politeknik: “Pengembangan Politeknik Menghadapi Era Industri 4.0”', '', 'Focus Group Discussion Politeknik: “Pengembangan Politeknik Menghadapi Era Industri 4.0”', 'N', ' Banda Aceh 21/02/2019, Menghadapi era industri 4.0 pemerintah Indonesia berupaya melalui berbagai program salah satu nya peningkatan mutu pendidikan vokasi khususnya perguruan tinggi vokasi seperti Politeknik, berkenaan dengan itu Politeknik Aceh bekerja sama dengan 2 Politeknik lainnya yakni Politeknik Caltex Riau (PCR) dan Politeknik Aceh Selatan (Poltas) menyelenggarakan Focus Group Discussion (FGD) Politeknik dengan tema “Pengembangan Politeknik Menghadapi Era Industri 4.0”.', '', 'Berita', 'Kamis', '2014-06-19', '15:04:02', '190313150549fgd4.jpeg', '', '0000-00-00', 'Y', '6', '140619150211INFO LOWONGAN_HERMES PALACE.pdf', 'N', 'N', 'N', 'N', 0),
('', 96, 0, 'alfi123', '', 'Galeri Kunjungan Politeknik Malaysia ke Politeknik Aceh', '', 'Galeri Kunjungan Politeknik Malaysia ke Politeknik Aceh', 'N', 'Adapun beberapa Politeknik Malaysia yang berkunjung ke Politeknik Aceh  adalah :\r\n\r\n1. Politeknik Sultan Azlan Shah, Behrang, Perak\r\n2. Politeknik Kota Bharu, Kelantan\r\nPoliteknik Sultan Haji Ahmad Shah, Kuantan, Pahang\r\n3. Politeknik Sultan Abdul Halim Mu’adzam Shah, Jitra, Kedah\r\n4. Politeknik Kota Kinabalu, SabahPoliteknik Ungku Omar, Ipoh, Perak', '', '', 'Kamis', '2014-12-04', '16:49:13', 'pos7.jpg', '', '0000-00-00', 'N', '', '', 'N', 'N', 'N', 'N', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kategori`
--

CREATE TABLE `t_kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `kategori_seo` varchar(100) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pengumuman`
--

CREATE TABLE `t_pengumuman` (
  `id_pengumuman` int(5) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `judul_en` varchar(500) NOT NULL,
  `judul_seo` varchar(500) NOT NULL,
  `isi_pengumuman` text NOT NULL,
  `isi_en` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(100) NOT NULL,
  `hari` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `konfir` enum('Y','N') NOT NULL DEFAULT 'Y',
  `bagian` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `upload` varchar(100) NOT NULL,
  `headline` enum('Y','N') NOT NULL DEFAULT 'N',
  `trash` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar__ulang`
--
ALTER TABLE `daftar__ulang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indeks untuk tabel `t_berita`
--
ALTER TABLE `t_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `t_kategori`
--
ALTER TABLE `t_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `t_pengumuman`
--
ALTER TABLE `t_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

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
-- AUTO_INCREMENT untuk tabel `daftar__ulang`
--
ALTER TABLE `daftar__ulang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_berita`
--
ALTER TABLE `t_berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT untuk tabel `t_kategori`
--
ALTER TABLE `t_kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_pengumuman`
--
ALTER TABLE `t_pengumuman`
  MODIFY `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
