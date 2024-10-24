-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 04:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(9, 'asdad', 'fayyadhahmada@gmail.com', 'ASDASD', '2024-10-23 18:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `tahun_mulai` varchar(10) DEFAULT NULL,
  `tahun_selesai` varchar(10) DEFAULT NULL,
  `institusi` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `tahun_mulai`, `tahun_selesai`, `institusi`, `deskripsi`) VALUES
(1, '2023', 'Sekarang', 'Universitas Pembangunan Jaya', 'Mahasiswa Informatika'),
(2, '2020', '2023', 'SMK Letris Indonesia 1', 'Jurusan Teknologi Informasi'),
(3, '2017', '2020', 'SMP Negeri 1 Tangerang Selatan', ''),
(4, '2014', '', 'SD Negeri 1 Tangerang Selatan', '');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `tahun` varchar(10) DEFAULT NULL,
  `posisi` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `tahun`, `posisi`, `deskripsi`) VALUES
(1, '2023', 'Ketua Acara Pentas Seni', 'Ketua Acara Pentas Seni (Pensi) dengan lebih dari 1.300 peserta'),
(2, '2022', 'Ketua Tim Creativ dan Ketua Acara Maulid Nabi', 'Memimpin berbagai acara besar di sekolah'),
(3, '2021', 'Penghargaan Film Terbaik', 'Menerima penghargaan film terbaik di Letris Movies Festival'),
(4, '2020', 'Asisten Fotografer', 'Bekerja sebagai asisten fotografer di acara perkawinan');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `nama`, `deskripsi`, `link`) VALUES
(1, 'Fayyadh Ahmad Murhali', 'Saya Fayyadh Ahmad Murhali, mahasiswa Informatika dengan minat khusus dalam keamanan siber. Selain itu, saya juga menggemari fotografi, videografi, dan desain, di mana saya mengekspresikan kreativitas saya melalui visual. Menggabungkan keahlian teknologi dan seni visual, saya berkomitmen untuk terus belajar dan memberikan dampak positif dalam dunia digital.', 'https://www.linkedin.com/in/fayyadh-ahmad/,https://github.com/fayyadh678');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Fayyadh Ahmad Murhali', 'Halo, nama saya Fayyadh. Saya seorang Photographer, Videographer, dan Developer. Saya sangat suka menangkap momen-momen indah dan mengembangkan ide-ide kreatif dalam dunia digital. Selamat datang di portfolio saya, dan saya berharap dapat bekerja sama dengan Anda!');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `link`) VALUES
(1, 'Animasi', 'https://youtu.be/ZJ2mWH_n7vM'),
(2, 'Project Film', 'https://youtu.be/UgC2v6eXdjM'),
(3, 'Animasi', 'https://youtu.be/iA69HDdJGL0'),
(4, 'Animasi', 'https://youtu.be/3GiFiZqRKf4'),
(5, 'Maulid Nabi', 'https://youtu.be/3GiFiZqRKf4'),
(6, 'Video Profile', 'https://youtu.be/WOnYxOZ3oJ8'),
(7, 'Iklan Project', 'https://youtu.be/xBlXb4tInsE'),
(8, 'Radio Battle', 'https://youtu.be/F3MZPYD_KzI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
