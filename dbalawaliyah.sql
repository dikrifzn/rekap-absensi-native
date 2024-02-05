-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 02:38 AM
-- Server version: 8.1.0
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbalawaliyah`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int NOT NULL,
  `nama_kelas` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, '1A'),
(2, '1B'),
(3, '2A'),
(4, '2B'),
(5, '3A'),
(6, '3B'),
(7, '4');

-- --------------------------------------------------------

--
-- Table structure for table `matapelajaran`
--

CREATE TABLE `matapelajaran` (
  `id_matapelajaran` int NOT NULL,
  `matapelajaran` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matapelajaran`
--

INSERT INTO `matapelajaran` (`id_matapelajaran`, `matapelajaran`) VALUES
(1, 'Fiqih'),
(2, 'Akhlaq');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `username` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(25) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`username`, `password`) VALUES
('admin', '123'),
('dikrr', 'coba123');

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id_presensi` int NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nis` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_matapelajaran` int DEFAULT NULL,
  `status_presensi` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`id_presensi`, `tanggal`, `nis`, `id_matapelajaran`, `status_presensi`) VALUES
(341, '2024-02-03', '12301', 1, 'H'),
(342, '2024-02-03', '12302', 1, 'H'),
(343, '2024-02-03', '12303', 1, 'H'),
(344, '2024-02-03', '12304', 1, 'H'),
(345, '2024-02-03', '12305', 1, 'H'),
(346, '2024-02-03', '12306', 1, 'H'),
(347, '2024-02-03', '12307', 1, 'H'),
(348, '2024-02-03', '12308', 1, 'H'),
(349, '2024-02-03', '12309', 1, 'H'),
(350, '2024-02-03', '12310', 1, 'H'),
(351, '2024-02-03', '12311', 1, 'H'),
(352, '2024-02-03', '12312', 1, 'H'),
(353, '2024-02-03', '12313', 1, 'H'),
(354, '2024-02-03', '12314', 1, 'H'),
(355, '2024-02-03', '12315', 1, 'H'),
(356, '2024-02-03', '12316', 1, 'H'),
(357, '2024-02-03', '12317', 1, 'H'),
(358, '2024-02-03', '12318', 1, 'H'),
(359, '2024-02-03', '12319', 1, 'H'),
(360, '2024-02-03', '12320', 1, 'H'),
(361, '2024-02-03', '12321', 1, 'H'),
(362, '2024-02-03', '12322', 1, 'H'),
(363, '2024-02-03', '12323', 1, 'H'),
(364, '2024-02-03', '12324', 1, 'H'),
(365, '2024-02-03', '12325', 1, 'H'),
(366, '2024-02-03', '12326', 1, 'H');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_kelas` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `id_kelas`) VALUES
('12301', 'ACIL', 1),
('12302', 'AFRILA NAIFA R', 1),
('12303', 'ALIP RIZKI', 1),
('12304', 'ANGGA', 1),
('12305', 'ARFAN', 1),
('12306', 'AZRIL', 1),
('12307', 'BAGAS', 1),
('12308', 'DEVIKA', 1),
('12309', 'DIVA', 1),
('12310', 'EVANO FARZAN F', 1),
('12311', 'FAREL', 1),
('12312', 'HAFIDZ', 1),
('12313', 'HAIKAL', 1),
('12314', 'HILMA', 1),
('12315', 'LAILA', 1),
('12316', 'M. ALFATIH GUNAWAN', 1),
('12317', 'M. REYSHAKA ATHALA', 1),
('12318', 'MIRAZ', 1),
('12319', 'MUHAMAD ALFAN', 1),
('12320', 'MUHAMAD FARIZ', 1),
('12321', 'MUHAMAD KHOIRUL AJAM', 1),
('12322', 'QIANA', 1),
('12323', 'RAFFA', 1),
('12324', 'ROBI', 1),
('12325', 'SHEILA', 1),
('12326', 'YUNA TAJRILAHSYAH', 1),
('12327', 'ADAM NURWAHID', 2),
('12328', 'ARFAN ABDUL H', 2),
('12329', 'BABONG PADLI', 2),
('12330', 'CHERUL', 2),
('12331', 'DIAH S F', 2),
('12332', 'ELVIRA', 2),
('12333', 'FATIMAH (IFAZ)', 2),
('12334', 'FINA', 2),
('12335', 'HISYAM', 2),
('12336', 'KANZA', 2),
('12337', 'KEYSA', 2),
('12338', 'M. NIZAR ALFARIZI', 2),
('12339', 'MUTIA', 2),
('12340', 'NAFISA', 2),
('12341', 'NAOMI NUR AFIFAH', 2),
('12342', 'NAUREEN RUMAISHA R', 2),
('12343', 'PUTRI', 2),
('12344', 'RAFFA', 2),
('12345', 'REIHAN R', 2),
('12346', 'RIZKA DWI FEBRIANI', 2),
('12347', 'RUDI', 2),
('12348', 'SHEVA', 2),
('12349', 'ZAHWA', 2),
('12350', 'AGAM', 3),
('12351', 'AINANYYA', 3),
('12352', 'ALFIKRI', 3),
('12353', 'DARA', 3),
('12354', 'HANI KHAIRUNNISA', 3),
('12355', 'KHOIRUL ANAM', 3),
('12356', 'KILAU', 3),
('12357', 'M. NUR RIZKY', 3),
('12358', 'RAFIKA SITI', 3),
('12359', 'RAQILA', 3),
('12360', 'REYNAND', 3),
('12361', 'SYILA', 3),
('12362', 'TIARA', 3),
('12363', 'TIARA AYU', 3),
('12364', 'WULANDARI', 3),
('12365', 'ZENIA', 3),
('12366', 'ZIKRINNA', 3),
('12367', 'ALYA', 4),
('12368', 'ARFI', 4),
('12369', 'ARYA', 4),
('12370', 'HAFIZ', 4),
('12371', 'HANA', 4),
('12372', 'IRWANSYAH', 4),
('12373', 'RAIHAN', 4),
('12374', 'RASYA', 4),
('12375', 'REFINA', 4),
('12376', 'REVAN', 4),
('12377', 'RIDO', 4),
('12378', 'YUNITA', 4),
('12379', 'ZASKIA', 4),
('12380', 'AFIKA', 5),
('12381', 'AQILA', 5),
('12382', 'DANIS', 5),
('12383', 'DONA', 5),
('12384', 'EDGAR', 5),
('12385', 'FASYA', 5),
('12386', 'HABAWI', 5),
('12387', 'HABIBI', 5),
('12388', 'HALWA', 5),
('12389', 'KEYLA', 5),
('12390', 'KEYSHA', 5),
('12391', 'LUCKY', 5),
('12392', 'M. AZKA', 5),
('12393', 'M. HILMI', 5),
('12394', 'NABILA', 5),
('12395', 'QUEEN', 5),
('12396', 'RAFA', 5),
('12397', 'RAYA', 5),
('12398', 'SYIFA', 5),
('12399', 'TUFAIL ALGIFARI', 5),
('12400', 'YAZID', 5),
('12401', 'ALEISYA', 6),
('12402', 'ALIP AHMAD S', 6),
('12403', 'BISMA', 6),
('12404', 'DEA', 6),
('12405', 'DILA', 6),
('12406', 'FAQIH', 6),
('12407', 'FITRA', 6),
('12408', 'HAFIZ', 6),
('12409', 'HAVRA', 6),
('12410', 'KEVIN', 6),
('12411', 'M. NURRIZKY', 6),
('12412', 'M. SIDQI', 6),
('12413', 'NABILA', 6),
('12414', 'NARAS', 6),
('12415', 'NIKEN', 6),
('12416', 'REVAN', 6),
('12417', 'RIDWAN FADIL', 6),
('12418', 'RIFA', 6),
('12419', 'SHERIL', 6),
('12420', 'SYAKIRA', 6),
('12421', 'ZAIN', 6),
('12422', 'ZIRA', 6),
('12423', 'AINIYYAH', 7),
('12424', 'AKIRA', 7),
('12425', 'ALENA', 7),
('12426', 'ALIP R', 7),
('12427', 'ALYA AURA PUTRI', 7),
('12428', 'ASYA', 7),
('12429', 'AULIA AGUSTIN', 7),
('12430', 'BIANCA', 7),
('12431', 'CAROLINE', 7),
('12432', 'CLARA', 7),
('12433', 'FAREL', 7),
('12434', 'HABIBI', 7),
('12435', 'HAIKAL', 7),
('12436', 'IFRINA', 7),
('12437', 'ISYE', 7),
('12438', 'M. FADIL', 7),
('12439', 'M. NURRIZKI', 7),
('12440', 'MARSYA', 7),
('12441', 'NABIL', 7),
('12442', 'NADIA MAHDA AULIA', 7),
('12443', 'NUMAN', 7),
('12444', 'OPIK', 7),
('12445', 'PANJI', 7),
('12446', 'RIKA', 7),
('12447', 'RIYANTI', 7),
('12448', 'SAFA NUR MAULIDA', 7),
('12449', 'SITI NUR', 7),
('12450', 'SYIFA AULIA DEWI', 7),
('12451', 'TALITA HASNA', 7),
('12452', 'YURI', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
  ADD PRIMARY KEY (`id_matapelajaran`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id_presensi`),
  ADD KEY `nis` (`nis`),
  ADD KEY `id_matapelajaran` (`id_matapelajaran`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id_presensi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`),
  ADD CONSTRAINT `presensi_ibfk_2` FOREIGN KEY (`id_matapelajaran`) REFERENCES `matapelajaran` (`id_matapelajaran`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
