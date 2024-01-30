-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 03:32 PM
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
-- Table structure for table `kelas1a`
--

CREATE TABLE `kelas1a` (
  `nis` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_general_ci NOT NULL,
  `tgl1` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl2` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl3` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl4` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl5` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl6` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl7` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl8` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl9` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl10` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl11` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl12` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl13` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl14` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl15` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl16` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl17` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl18` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl19` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl20` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl21` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl22` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl23` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl24` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl25` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl26` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl27` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl28` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl29` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl30` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl31` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `hadir` int NOT NULL,
  `sakit` int NOT NULL,
  `izin` int NOT NULL,
  `alpha` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas1a`
--

INSERT INTO `kelas1a` (`nis`, `nama`, `jenis_kelamin`, `tgl1`, `tgl2`, `tgl3`, `tgl4`, `tgl5`, `tgl6`, `tgl7`, `tgl8`, `tgl9`, `tgl10`, `tgl11`, `tgl12`, `tgl13`, `tgl14`, `tgl15`, `tgl16`, `tgl17`, `tgl18`, `tgl19`, `tgl20`, `tgl21`, `tgl22`, `tgl23`, `tgl24`, `tgl25`, `tgl26`, `tgl27`, `tgl28`, `tgl29`, `tgl30`, `tgl31`, `hadir`, `sakit`, `izin`, `alpha`) VALUES
('12301', 'ACIL', 'L', 'S', 'H', 'S', 'I', 'I', 'H', 'H', '', '', 'H', '', '', 'H', '', 'H', 'A', 'A', 'A', 'A', '', '', '', '', '', '', '', '', '', '', '', '', 6, 2, 2, 4),
('12302', 'AFRILA NAIFA R', 'P', 'H', 'S', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 1, 2, 0),
('12303', 'ALIP RIZKI', 'L', 'S', 'H', 'S', 'I', 'S', 'S', '', '', '', 'H', '', '', 'H', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 4, 1, 0),
('12304', 'ANGGA', 'L', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12305', 'ARFAN', 'L', 'H', 'H', 'H', 'I', 'I', 'I', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, 0, 3, 0),
('12306', 'AZRIL', 'L', 'H', 'H', 'H', 'I', 'I', 'A', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, 0, 2, 1),
('12307', 'BAGAS', 'L', 'H', 'H', 'H', 'I', 'I', 'A', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, 0, 2, 1),
('12308', 'DEVIKA', 'P', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12309', 'DIVA', 'P', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12310', 'EVANO FARZAN F', 'L', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12311', 'FAREL', 'L', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12312', 'HAFIDZ', 'L', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12313', 'HAIKAL', 'L', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12314', 'HILMA', 'P', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12315', 'LAILA', 'P', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12316', 'M. ALFATIH GUNAWAN', 'L', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12317', 'M. REYSHAKA ATHALA', 'P', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12318', 'MIRAZ', 'P', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12319', 'MUHAMAD ALFAN', 'L', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12320', 'MUHAMAD FARIZ', 'L', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12321', 'MUHAMAD KHOIRUL AJAM', 'L', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12322', 'QIANA', 'P', 'H', 'H', 'H', 'I', 'I', 'H', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 6, 0, 2, 0),
('12323', 'RAFFA', 'L', 'H', 'H', 'H', 'I', 'I', 'S', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, 1, 2, 0),
('12324', 'ROBI', 'L', 'H', 'H', 'H', 'I', 'A', 'S', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, 1, 1, 1),
('12325', 'SHEILA', 'P', 'H', 'H', 'H', 'I', 'I', 'S', '', '', '', 'H', '', '', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, 1, 2, 0),
('12326', 'YUNA TAJRILAHSYAH', 'L', 'H', 'H', 'H', 'A', 'A', 'I', '', '', '', 'H', '', '', 'S', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 4, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kelas1b`
--

CREATE TABLE `kelas1b` (
  `nis` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl1` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl2` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl3` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl4` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl5` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl6` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl7` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl8` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl9` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl10` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl11` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl12` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl13` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl14` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl15` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl16` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl17` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl18` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl19` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl20` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl21` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl22` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl23` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl24` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl25` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl26` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl27` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl28` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl29` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl30` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl31` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hadir` int DEFAULT NULL,
  `sakit` int DEFAULT NULL,
  `izin` int DEFAULT NULL,
  `alpha` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas1b`
--

INSERT INTO `kelas1b` (`nis`, `nama`, `jenis_kelamin`, `tgl1`, `tgl2`, `tgl3`, `tgl4`, `tgl5`, `tgl6`, `tgl7`, `tgl8`, `tgl9`, `tgl10`, `tgl11`, `tgl12`, `tgl13`, `tgl14`, `tgl15`, `tgl16`, `tgl17`, `tgl18`, `tgl19`, `tgl20`, `tgl21`, `tgl22`, `tgl23`, `tgl24`, `tgl25`, `tgl26`, `tgl27`, `tgl28`, `tgl29`, `tgl30`, `tgl31`, `hadir`, `sakit`, `izin`, `alpha`) VALUES
('12301', 'ADAM NURWAHID', 'L', 'H', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 0, 0),
('12302', 'ARFAN ABDUL H', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12303', 'BABONG PADLI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12304', 'CHERUL', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12305', 'DIAH S F', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12306', 'ELVIRA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12307', 'FATIMAH (IFAZ)', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12308', 'FINA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12309', 'HISYAM', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12310', 'KANZA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12311', 'KEYSA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12312', 'M. NIZAR ALFARIZI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12313', 'MUTIA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12314', 'NAFISA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12315', 'NAOMI NUR AFIFAH', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12316', 'NAUREEN RUMAISHA R', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12317', 'PUTRI', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12318', 'RAFFA', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12319', 'REIHAN R', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12320', 'RIZKA DWI FEBRIANI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12321', 'RUDI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12322', 'SHEVA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12323', 'ZAHWA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kelas2a`
--

CREATE TABLE `kelas2a` (
  `nis` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_general_ci NOT NULL,
  `tgl1` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl2` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl3` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl4` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl5` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl6` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl7` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl8` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl9` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl10` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl11` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl12` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl13` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl14` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl15` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl16` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl17` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl18` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl19` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl20` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl21` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl22` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl23` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl24` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl25` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl26` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl27` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl28` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl29` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl30` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl31` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `hadir` int NOT NULL,
  `sakit` int NOT NULL,
  `izin` int NOT NULL,
  `alpha` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas2a`
--

INSERT INTO `kelas2a` (`nis`, `nama`, `jenis_kelamin`, `tgl1`, `tgl2`, `tgl3`, `tgl4`, `tgl5`, `tgl6`, `tgl7`, `tgl8`, `tgl9`, `tgl10`, `tgl11`, `tgl12`, `tgl13`, `tgl14`, `tgl15`, `tgl16`, `tgl17`, `tgl18`, `tgl19`, `tgl20`, `tgl21`, `tgl22`, `tgl23`, `tgl24`, `tgl25`, `tgl26`, `tgl27`, `tgl28`, `tgl29`, `tgl30`, `tgl31`, `hadir`, `sakit`, `izin`, `alpha`) VALUES
('12301', 'AGAM', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12302', 'AINANYYA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12303', 'ALFIKRI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12304', 'DARA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12305', 'HANI KHAIRUNNISA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12306', 'KHOIRUL ANAM', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12307', 'KILAU', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12308', 'M. NUR RIZKY', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12309', 'RAFIKA SITI', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12310', 'RAQILA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12311', 'REYNAND', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12312', 'SYILA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12313', 'TIARA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12314', 'TIARA AYU', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12315', 'WULANDARI', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12316', 'ZENIA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12317', 'ZIKRINNA', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kelas2b`
--

CREATE TABLE `kelas2b` (
  `nis` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl1` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl2` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl3` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl4` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl5` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl6` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl7` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl8` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl9` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl10` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl11` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl12` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl13` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl14` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl15` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl16` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl17` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl18` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl19` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl20` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl21` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl22` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl23` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl24` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl25` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl26` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl27` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl28` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl29` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl30` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl31` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hadir` int DEFAULT NULL,
  `sakit` int DEFAULT NULL,
  `izin` int DEFAULT NULL,
  `alpha` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas2b`
--

INSERT INTO `kelas2b` (`nis`, `nama`, `jenis_kelamin`, `tgl1`, `tgl2`, `tgl3`, `tgl4`, `tgl5`, `tgl6`, `tgl7`, `tgl8`, `tgl9`, `tgl10`, `tgl11`, `tgl12`, `tgl13`, `tgl14`, `tgl15`, `tgl16`, `tgl17`, `tgl18`, `tgl19`, `tgl20`, `tgl21`, `tgl22`, `tgl23`, `tgl24`, `tgl25`, `tgl26`, `tgl27`, `tgl28`, `tgl29`, `tgl30`, `tgl31`, `hadir`, `sakit`, `izin`, `alpha`) VALUES
('12301', 'ALYA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12302', 'ARFI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12303', 'ARYA', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12304', 'HAFIZ', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12305', 'HANA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12306', 'IRWANSYAH', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12307', 'RAIHAN', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12308', 'RASYA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12309', 'REFINA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12310', 'REVAN', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12311', 'RIDO', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12312', 'YUNITA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12313', 'ZASKIA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kelas3a`
--

CREATE TABLE `kelas3a` (
  `nis` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl1` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl2` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl3` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl4` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl5` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl6` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl7` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl8` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl9` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl10` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl11` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl12` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl13` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl14` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl15` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl16` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl17` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl18` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl19` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl20` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl21` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl22` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl23` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl24` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl25` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl26` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl27` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl28` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl29` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl30` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl31` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hadir` int DEFAULT NULL,
  `sakit` int DEFAULT NULL,
  `izin` int DEFAULT NULL,
  `alpha` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas3a`
--

INSERT INTO `kelas3a` (`nis`, `nama`, `jenis_kelamin`, `tgl1`, `tgl2`, `tgl3`, `tgl4`, `tgl5`, `tgl6`, `tgl7`, `tgl8`, `tgl9`, `tgl10`, `tgl11`, `tgl12`, `tgl13`, `tgl14`, `tgl15`, `tgl16`, `tgl17`, `tgl18`, `tgl19`, `tgl20`, `tgl21`, `tgl22`, `tgl23`, `tgl24`, `tgl25`, `tgl26`, `tgl27`, `tgl28`, `tgl29`, `tgl30`, `tgl31`, `hadir`, `sakit`, `izin`, `alpha`) VALUES
('12301', 'AFIKA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 1, 2),
('12302', 'AQILA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12303', 'DANIS', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12304', 'DONA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12305', 'EDGAR', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12306', 'FASYA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12307', 'HABAWI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12308', 'HABIBI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12309', 'HALWA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12310', 'KEYLA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12311', 'KEYSHA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12312', 'LUCKY', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12313', 'M. AZKA', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12314', 'M. HILMI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12315', 'NABILA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12316', 'QUEEN', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12317', 'RAFA', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12318', 'RAYA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12319', 'SYIFA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12320', 'TUFAIL ALGIFARI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12321', 'YAZID', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kelas3b`
--

CREATE TABLE `kelas3b` (
  `nis` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl1` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl2` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl3` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl4` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl5` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl6` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl7` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl8` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl9` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl10` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl11` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl12` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl13` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl14` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl15` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl16` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl17` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl18` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl19` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl20` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl21` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl22` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl23` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl24` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl25` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl26` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl27` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl28` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl29` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl30` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl31` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hadir` int DEFAULT NULL,
  `sakit` int DEFAULT NULL,
  `izin` int DEFAULT NULL,
  `alpha` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas3b`
--

INSERT INTO `kelas3b` (`nis`, `nama`, `jenis_kelamin`, `tgl1`, `tgl2`, `tgl3`, `tgl4`, `tgl5`, `tgl6`, `tgl7`, `tgl8`, `tgl9`, `tgl10`, `tgl11`, `tgl12`, `tgl13`, `tgl14`, `tgl15`, `tgl16`, `tgl17`, `tgl18`, `tgl19`, `tgl20`, `tgl21`, `tgl22`, `tgl23`, `tgl24`, `tgl25`, `tgl26`, `tgl27`, `tgl28`, `tgl29`, `tgl30`, `tgl31`, `hadir`, `sakit`, `izin`, `alpha`) VALUES
('12301', 'ALEISYA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12302', 'ALIP AHMAD S', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12303', 'BISMA', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12304', 'DEA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12305', 'DILA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12306', 'FAQIH', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12307', 'FITRA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12308', 'HAFIZ', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12309', 'HAURA NAZHIFA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12310', 'KEVIN', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12311', 'M. NURRIZKY', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12312', 'M. SIDQI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12313', 'NABILA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12314', 'NARAS', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12315', 'NIKEN', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12316', 'REVAN', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12317', 'RIDWAN FADIL', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12318', 'RIFA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12319', 'SHERIL', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12320', 'SYAKIRA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12321', 'ZAIN', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12322', 'ZIRA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kelas4`
--

CREATE TABLE `kelas4` (
  `nis` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl1` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl2` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl3` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl4` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl5` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl6` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl7` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl8` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl9` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl10` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl11` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl12` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl13` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl14` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl15` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl16` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl17` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl18` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl19` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl20` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl21` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl22` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl23` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl24` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl25` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl26` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl27` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl28` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl29` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl30` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl31` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hadir` int DEFAULT NULL,
  `sakit` int DEFAULT NULL,
  `izin` int DEFAULT NULL,
  `alpha` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas4`
--

INSERT INTO `kelas4` (`nis`, `nama`, `jenis_kelamin`, `tgl1`, `tgl2`, `tgl3`, `tgl4`, `tgl5`, `tgl6`, `tgl7`, `tgl8`, `tgl9`, `tgl10`, `tgl11`, `tgl12`, `tgl13`, `tgl14`, `tgl15`, `tgl16`, `tgl17`, `tgl18`, `tgl19`, `tgl20`, `tgl21`, `tgl22`, `tgl23`, `tgl24`, `tgl25`, `tgl26`, `tgl27`, `tgl28`, `tgl29`, `tgl30`, `tgl31`, `hadir`, `sakit`, `izin`, `alpha`) VALUES
('12301', 'AINIYYAH', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12302', 'AKIRA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12303', 'ALENA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12304', 'ALIP R', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12305', 'ALYA AURA PUTRI', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12306', 'ASYA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12307', 'AULIA AGUSTIN', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12308', 'BIANCA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12309', 'CAROLINE', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12310', 'CLARA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12311', 'FAREL', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12312', 'HABIBI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12313', 'HAIKAL', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12314', 'IFRINA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12315', 'ISYE', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12316', 'M. FADIL', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12317', 'M. NURRIZKI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12318', 'MARSYA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12319', 'NABIL', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12320', 'NADIA MAHDA AULIA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12321', 'NUMAN', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12322', 'OPIK', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12323', 'PANJI', 'L', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12324', 'RIKA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12325', 'RIYANTI', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12326', 'SAFA NUR MAULIDA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12327', 'SITI NUR', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12328', 'SYIFA AULIA DEWI', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12329', 'TALITA HASNA', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
('12330', 'YURI', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas1a`
--
ALTER TABLE `kelas1a`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `kelas1b`
--
ALTER TABLE `kelas1b`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `kelas2a`
--
ALTER TABLE `kelas2a`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `kelas2b`
--
ALTER TABLE `kelas2b`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `kelas3a`
--
ALTER TABLE `kelas3a`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `kelas3b`
--
ALTER TABLE `kelas3b`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `kelas4`
--
ALTER TABLE `kelas4`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
