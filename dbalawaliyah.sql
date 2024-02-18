-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 04:05 PM
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
-- Database: `dbalawaliyah`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) DEFAULT NULL
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
  `id_matapelajaran` int(11) NOT NULL,
  `matapelajaran` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matapelajaran`
--

INSERT INTO `matapelajaran` (`id_matapelajaran`, `matapelajaran`) VALUES
(1, 'Do\'a'),
(2, 'Hadis'),
(3, 'Juz Ama'),
(4, 'B. Arab'),
(5, 'Persolatan'),
(6, 'Tauhid');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`username`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id_presensi` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nis` varchar(15) DEFAULT NULL,
  `id_matapelajaran` int(11) DEFAULT NULL,
  `status_presensi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`id_presensi`, `tanggal`, `nis`, `id_matapelajaran`, `status_presensi`) VALUES
(527, '2024-02-18', '12301', 1, 'A'),
(528, '2024-02-18', '12302', 1, 'I'),
(529, '2024-02-18', '12303', 1, 'S'),
(530, '2024-02-18', '12304', 1, 'H'),
(531, '2024-02-18', '12305', 1, 'H'),
(532, '2024-02-18', '12306', 1, 'H'),
(533, '2024-02-18', '12307', 1, 'H'),
(534, '2024-02-18', '12308', 1, 'H'),
(535, '2024-02-18', '12309', 1, 'H'),
(536, '2024-02-18', '12310', 1, 'H'),
(537, '2024-02-18', '12311', 1, 'H'),
(538, '2024-02-18', '12312', 1, 'H'),
(539, '2024-02-18', '12313', 1, 'H'),
(540, '2024-02-18', '12314', 1, 'H'),
(541, '2024-02-18', '12315', 1, 'H'),
(542, '2024-02-18', '12316', 1, 'H'),
(543, '2024-02-18', '12317', 1, 'H'),
(544, '2024-02-18', '12318', 1, 'H'),
(545, '2024-02-18', '12319', 1, 'H'),
(546, '2024-02-18', '12320', 1, 'H'),
(547, '2024-02-18', '12321', 1, 'H'),
(548, '2024-02-18', '12322', 1, 'H'),
(549, '2024-02-18', '12323', 1, 'H'),
(550, '2024-02-18', '12324', 1, 'H'),
(551, '2024-02-18', '12325', 1, 'H'),
(552, '2024-02-18', '12326', 1, 'H'),
(553, '2024-02-18', '12301', 1, 'A'),
(554, '2024-02-18', '12302', 1, 'I'),
(555, '2024-02-18', '12303', 1, 'S'),
(556, '2024-02-18', '12304', 1, 'H'),
(557, '2024-02-18', '12305', 1, 'H'),
(558, '2024-02-18', '12306', 1, 'H'),
(559, '2024-02-18', '12307', 1, 'H'),
(560, '2024-02-18', '12308', 1, 'H'),
(561, '2024-02-18', '12309', 1, 'H'),
(562, '2024-02-18', '12310', 1, 'H'),
(563, '2024-02-18', '12311', 1, 'H'),
(564, '2024-02-18', '12312', 1, 'H'),
(565, '2024-02-18', '12313', 1, 'H'),
(566, '2024-02-18', '12314', 1, 'H'),
(567, '2024-02-18', '12315', 1, 'H'),
(568, '2024-02-18', '12316', 1, 'H'),
(569, '2024-02-18', '12317', 1, 'H'),
(570, '2024-02-18', '12318', 1, 'H'),
(571, '2024-02-18', '12319', 1, 'H'),
(572, '2024-02-18', '12320', 1, 'H'),
(573, '2024-02-18', '12321', 1, 'H'),
(574, '2024-02-18', '12322', 1, 'H'),
(575, '2024-02-18', '12323', 1, 'H'),
(576, '2024-02-18', '12324', 1, 'H'),
(577, '2024-02-18', '12325', 1, 'H'),
(578, '2024-02-18', '12326', 1, 'H'),
(579, '2024-02-18', '12301', 1, 'A'),
(580, '2024-02-18', '12302', 1, 'I'),
(581, '2024-02-18', '12303', 1, 'S'),
(582, '2024-02-18', '12304', 1, 'H'),
(583, '2024-02-18', '12305', 1, 'H'),
(584, '2024-02-18', '12306', 1, 'H'),
(585, '2024-02-18', '12307', 1, 'H'),
(586, '2024-02-18', '12308', 1, 'H'),
(587, '2024-02-18', '12309', 1, 'H'),
(588, '2024-02-18', '12310', 1, 'H'),
(589, '2024-02-18', '12311', 1, 'H'),
(590, '2024-02-18', '12312', 1, 'H'),
(591, '2024-02-18', '12313', 1, 'H'),
(592, '2024-02-18', '12314', 1, 'H'),
(593, '2024-02-18', '12315', 1, 'H'),
(594, '2024-02-18', '12316', 1, 'H'),
(595, '2024-02-18', '12317', 1, 'H'),
(596, '2024-02-18', '12318', 1, 'H'),
(597, '2024-02-18', '12319', 1, 'H'),
(598, '2024-02-18', '12320', 1, 'H'),
(599, '2024-02-18', '12321', 1, 'H'),
(600, '2024-02-18', '12322', 1, 'H'),
(601, '2024-02-18', '12323', 1, 'H'),
(602, '2024-02-18', '12324', 1, 'H'),
(603, '2024-02-18', '12325', 1, 'H'),
(604, '2024-02-18', '12326', 1, 'H'),
(605, '2024-02-18', '12301', 1, 'A'),
(606, '2024-02-18', '12302', 1, 'I'),
(607, '2024-02-18', '12303', 1, 'S'),
(608, '2024-02-18', '12304', 1, 'H'),
(609, '2024-02-18', '12305', 1, 'H'),
(610, '2024-02-18', '12306', 1, 'H'),
(611, '2024-02-18', '12307', 1, 'H'),
(612, '2024-02-18', '12308', 1, 'H'),
(613, '2024-02-18', '12309', 1, 'H'),
(614, '2024-02-18', '12310', 1, 'H'),
(615, '2024-02-18', '12311', 1, 'H'),
(616, '2024-02-18', '12312', 1, 'H'),
(617, '2024-02-18', '12313', 1, 'H'),
(618, '2024-02-18', '12314', 1, 'H'),
(619, '2024-02-18', '12315', 1, 'H'),
(620, '2024-02-18', '12316', 1, 'H'),
(621, '2024-02-18', '12317', 1, 'H'),
(622, '2024-02-18', '12318', 1, 'H'),
(623, '2024-02-18', '12319', 1, 'H'),
(624, '2024-02-18', '12320', 1, 'H'),
(625, '2024-02-18', '12321', 1, 'H'),
(626, '2024-02-18', '12322', 1, 'H'),
(627, '2024-02-18', '12323', 1, 'H'),
(628, '2024-02-18', '12324', 1, 'H'),
(629, '2024-02-18', '12325', 1, 'H'),
(630, '2024-02-18', '12326', 1, 'H');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(15) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `status` enum('aktif','tidak_aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `id_kelas`, `status`) VALUES
('12301', 'ACIL', 1, 'aktif'),
('12302', 'AFRILA NAIFA R', 1, 'aktif'),
('12303', 'ALIP RIZKI', 1, 'aktif'),
('12304', 'ANGGA', 1, 'aktif'),
('12305', 'ARFAN', 1, 'aktif'),
('12306', 'AZRIL', 1, 'aktif'),
('12307', 'BAGAS', 1, 'aktif'),
('12308', 'DEVIKA', 1, 'aktif'),
('12309', 'DIVA', 1, 'aktif'),
('12310', 'EVANO FARZAN F', 1, 'aktif'),
('12311', 'FAREL', 1, 'aktif'),
('12312', 'HAFIDZ', 1, 'aktif'),
('12313', 'HAIKAL', 1, 'aktif'),
('12314', 'HILMA', 1, 'aktif'),
('12315', 'LAILA', 1, 'aktif'),
('12316', 'M. ALFATIH GUNAWAN', 1, 'aktif'),
('12317', 'M. REYSHAKA ATHALA', 1, 'aktif'),
('12318', 'MIRAZ', 1, 'aktif'),
('12319', 'MUHAMAD ALFAN', 1, 'aktif'),
('12320', 'MUHAMAD FARIZ', 1, 'aktif'),
('12321', 'MUHAMAD KHOIRUL AJAM', 1, 'aktif'),
('12322', 'QIANA', 1, 'aktif'),
('12323', 'RAFFA', 1, 'aktif'),
('12324', 'ROBI', 1, 'aktif'),
('12325', 'SHEILA', 1, 'aktif'),
('12326', 'YUNA TAJRILAHSYAH', 1, 'aktif'),
('12327', 'ADAM NURWAHID', 2, 'aktif'),
('12328', 'ARFAN ABDUL H', 2, 'aktif'),
('12329', 'BABONG PADLI', 2, 'aktif'),
('12330', 'CHERUL', 2, 'aktif'),
('12331', 'DIAH S F', 2, 'aktif'),
('12332', 'ELVIRA', 2, 'aktif'),
('12333', 'FATIMAH (IFAZ)', 2, 'aktif'),
('12334', 'FINA', 2, 'aktif'),
('12335', 'HISYAM', 2, 'aktif'),
('12336', 'KANZA', 2, 'aktif'),
('12337', 'KEYSA', 2, 'aktif'),
('12338', 'M. NIZAR ALFARIZI', 2, 'aktif'),
('12339', 'MUTIA', 2, 'aktif'),
('12340', 'NAFISA', 2, 'aktif'),
('12341', 'NAOMI NUR AFIFAH', 2, 'aktif'),
('12342', 'NAUREEN RUMAISHA R', 2, 'aktif'),
('12343', 'PUTRI', 2, 'aktif'),
('12344', 'RAFFA', 2, 'aktif'),
('12345', 'REIHAN R', 2, 'aktif'),
('12346', 'RIZKA DWI FEBRIANI', 2, 'aktif'),
('12347', 'RUDI', 2, 'aktif'),
('12348', 'SHEVA', 2, 'aktif'),
('12349', 'ZAHWA', 2, 'aktif'),
('12350', 'AGAM', 3, 'aktif'),
('12351', 'AINANYYA', 3, 'aktif'),
('12352', 'ALFIKRI', 3, 'aktif'),
('12353', 'DARA', 3, 'aktif'),
('12354', 'HANI KHAIRUNNISA', 3, 'aktif'),
('12355', 'KHOIRUL ANAM', 3, 'aktif'),
('12356', 'KILAU', 3, 'aktif'),
('12357', 'M. NUR RIZKY', 3, 'aktif'),
('12358', 'RAFIKA SITI', 3, 'aktif'),
('12359', 'RAQILA', 3, 'aktif'),
('12360', 'REYNAND', 3, 'aktif'),
('12361', 'SYILA', 3, 'aktif'),
('12362', 'TIARA', 3, 'aktif'),
('12363', 'TIARA AYU', 3, 'aktif'),
('12364', 'WULANDARI', 3, 'aktif'),
('12365', 'ZENIA', 3, 'aktif'),
('12366', 'ZIKRINNA', 3, 'aktif'),
('12367', 'ALYA', 4, 'aktif'),
('12368', 'ARFI', 4, 'aktif'),
('12369', 'ARYA', 4, 'aktif'),
('12370', 'HAFIZ', 4, 'aktif'),
('12371', 'HANA', 4, 'aktif'),
('12372', 'IRWANSYAH', 4, 'aktif'),
('12373', 'RAIHAN', 4, 'aktif'),
('12374', 'RASYA', 4, 'aktif'),
('12375', 'REFINA', 4, 'aktif'),
('12376', 'REVAN', 4, 'aktif'),
('12377', 'RIDO', 4, 'aktif'),
('12378', 'YUNITA', 4, 'aktif'),
('12379', 'ZASKIA', 4, 'aktif'),
('12380', 'AFIKA', 5, 'aktif'),
('12381', 'AQILA', 5, 'aktif'),
('12382', 'DANIS', 5, 'aktif'),
('12383', 'DONA', 5, 'aktif'),
('12384', 'EDGAR', 5, 'aktif'),
('12385', 'FASYA', 5, 'aktif'),
('12386', 'HABAWI', 5, 'aktif'),
('12387', 'HABIBI', 5, 'aktif'),
('12388', 'HALWA', 5, 'aktif'),
('12389', 'KEYLA', 5, 'aktif'),
('12390', 'KEYSHA', 5, 'aktif'),
('12391', 'LUCKY', 5, 'aktif'),
('12392', 'M. AZKA', 5, 'aktif'),
('12393', 'M. HILMI', 5, 'aktif'),
('12394', 'NABILA', 5, 'aktif'),
('12395', 'QUEEN', 5, 'aktif'),
('12396', 'RAFA', 5, 'aktif'),
('12397', 'RAYA', 5, 'aktif'),
('12398', 'SYIFA', 5, 'aktif'),
('12399', 'TUFAIL ALGIFARI', 5, 'aktif'),
('12400', 'YAZID', 5, 'aktif'),
('12401', 'ALEISYA', 6, 'aktif'),
('12402', 'ALIP AHMAD S', 6, 'aktif'),
('12403', 'BISMA', 6, 'aktif'),
('12404', 'DEA', 6, 'aktif'),
('12405', 'DILA', 6, 'aktif'),
('12406', 'FAQIH', 6, 'aktif'),
('12407', 'FITRA', 6, 'aktif'),
('12408', 'HAFIZ', 6, 'aktif'),
('12409', 'HAVRA', 6, 'aktif'),
('12410', 'KEVIN', 6, 'aktif'),
('12411', 'M. NURRIZKY', 6, 'aktif'),
('12412', 'M. SIDQI', 6, 'aktif'),
('12413', 'NABILA', 6, 'aktif'),
('12414', 'NARAS', 6, 'aktif'),
('12415', 'NIKEN', 6, 'aktif'),
('12416', 'REVAN', 6, 'aktif'),
('12417', 'RIDWAN FADIL', 6, 'aktif'),
('12418', 'RIFA', 6, 'aktif'),
('12419', 'SHERIL', 6, 'aktif'),
('12420', 'SYAKIRA', 6, 'aktif'),
('12421', 'ZAIN', 6, 'aktif'),
('12422', 'ZIRA', 6, 'aktif'),
('12423', 'AINIYYAH', 7, 'aktif'),
('12424', 'AKIRA', 7, 'aktif'),
('12425', 'ALENA', 7, 'aktif'),
('12426', 'ALIP R', 7, 'aktif'),
('12427', 'ALYA AURA PUTRI', 7, 'aktif'),
('12428', 'ASYA', 7, 'aktif'),
('12429', 'AULIA AGUSTIN', 7, 'aktif'),
('12430', 'BIANCA', 7, 'aktif'),
('12431', 'CAROLINE', 7, 'aktif'),
('12432', 'CLARA', 7, 'aktif'),
('12433', 'FAREL', 7, 'aktif'),
('12434', 'HABIBI', 7, 'aktif'),
('12435', 'HAIKAL', 7, 'aktif'),
('12436', 'IFRINA', 7, 'aktif'),
('12437', 'ISYE', 7, 'aktif'),
('12438', 'M. FADIL', 7, 'aktif'),
('12439', 'M. NURRIZKI', 7, 'aktif'),
('12440', 'MARSYA', 7, 'aktif'),
('12441', 'NABIL', 7, 'aktif'),
('12442', 'NADIA MAHDA AULIA', 7, 'aktif'),
('12443', 'NUMAN', 7, 'aktif'),
('12444', 'OPIK', 7, 'aktif'),
('12445', 'PANJI', 7, 'aktif'),
('12446', 'RIKA', 7, 'aktif'),
('12447', 'RIYANTI', 7, 'aktif'),
('12448', 'SAFA NUR MAULIDA', 7, 'aktif'),
('12449', 'SITI NUR', 7, 'aktif'),
('12450', 'SYIFA AULIA DEWI', 7, 'aktif'),
('12451', 'TALITA HASNA', 7, 'aktif'),
('12452', 'YURI', 7, 'aktif');

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
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=631;

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
