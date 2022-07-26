-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 04:29 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_teh`
--

-- --------------------------------------------------------

--
-- Table structure for table `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` varchar(4) NOT NULL,
  `kode_hama` varchar(4) NOT NULL,
  `kode_gejala` varchar(4) NOT NULL,
  `nilai_mb` double NOT NULL,
  `nilai_md` double NOT NULL,
  `nilai_cf` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_hama`, `kode_gejala`, `nilai_mb`, `nilai_md`, `nilai_cf`) VALUES
('BP04', 'H01', 'GJ01', 1, 0.8, 0.2),
('BP05', 'H01', 'GJ02', 1, 0.2, 0.8),
('BP06', 'H02', 'GJ03', 0.6, 0, 0.6),
('BP07', 'H001', 'G001', 0.4, 0, 0.4),
('BP08', 'H001', 'G002', 0.6, 0, 0.6),
('BP09', 'H001', 'G003', 0.6, 0.4, 0.2),
('BP10', 'H001', 'G004', 0.4, 0, 0.4),
('BP11', 'H001', 'G021', 0.8, 0, 0.8),
('BP12', 'H001', 'G022', 1, 0.4, 0.6),
('BP13', 'H001', 'G023', 0.6, 0.4, 0.2),
('BP14', 'H002', 'G005', 0.8, 0, 0.8),
('BP15', 'H002', 'G006', 0.6, 0, 0.6),
('BP16', 'H002', 'G007', 0.4, 0, 0.4),
('BP17', 'H003', 'G005', 0.8, 0.4, 0.4),
('BP18', 'H003', 'G008', 0.6, 0, 0.6),
('BP19', 'H003', 'G009', 0.6, 0, 0.6),
('BP20', 'H004', 'G010', 0.6, 0, 0.6),
('BP21', 'H004', 'G011', 0.6, 0, 0.6),
('BP22', 'H004', 'G024', 0.6, 0, 0.6),
('BP23', 'H004', 'G012', 0.8, 0.4, 0.4),
('BP24', 'H004', 'G013', 0.6, 0, 0.6),
('BP25', 'H005', 'G014', 0.6, 0, 0.6),
('BP26', 'H005', 'G015', 0.4, 0, 0.4),
('BP27', 'H005', 'G007', 0.4, 0, 0.4),
('BP28', 'H006', 'G016', 0.6, 0, 0.6),
('BP29', 'H006', 'G017', 0.6, 0, 0.6),
('BP30', 'H006', 'G018', 0.8, 0.4, 0.4),
('BP31', 'H006', 'G019', 0.4, 0, 0.4),
('BP32', 'H006', 'G024', 0.6, 0, 0.6),
('BP33', 'H006', 'G020', 0.6, 0.4, 0.2);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE `diagnosa` (
  `kode_diagnosa` int(11) NOT NULL,
  `kode_hama` varchar(4) NOT NULL,
  `hasil_hama` text NOT NULL,
  `hasil_gejala` text NOT NULL,
  `hasil_nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnosa`
--

INSERT INTO `diagnosa` (`kode_diagnosa`, `kode_hama`, `hasil_hama`, `hasil_gejala`, `hasil_nilai`) VALUES
(1, 'H01', '{\"H01\":\"0.6688\"}', '{\"GJ01\":\"1\",\"GJ02\":\"3\"}', 0.6688),
(2, 'H002', '{\"H002\":\"0.1600\",\"H001\":\"0.0800\"}', '{\"G001\":\"1\",\"G003\":\"3\"}', 0.16),
(3, 'H002', '{\"H002\":\"0.2944\",\"H003\":\"0.1600\",\"H001\":\"0.0800\"}', '{\"G001\":\"1\",\"G002\":\"3\",\"G003\":\"4\"}', 0.2944),
(4, 'H002', '{\"H002\":\"0.3920\",\"H003\":\"0.2000\",\"H001\":\"0.1200\"}', '{\"G003\":\"1\",\"G001\":\"2\",\"G002\":\"4\"}', 0.392),
(5, 'H002', '{\"H002\":\"0.2944\",\"H003\":\"0.1600\",\"H001\":\"0.0800\"}', '{\"G001\":\"1\",\"G002\":\"3\"}', 0.2944),
(6, 'H002', '{\"H002\":\"0.4000\",\"H001\":\"0.2000\"}', '{\"G001\":\"4\",\"G003\":\"3\"}', 0.4),
(7, 'H003', '{\"H003\":\"0.5216\",\"H002\":\"0.4480\",\"H001\":\"0.2000\"}', '{\"G004\":\"2\",\"G003\":\"2\",\"G002\":\"1\",\"G001\":\"4\"}', 0.5216),
(8, 'H003', '{\"H003\":\"0.4800\",\"H002\":\"0.2400\",\"H001\":\"0.1200\"}', '{\"G001\":\"2\",\"G004\":\"2\",\"G003\":\"1\"}', 0.48),
(9, 'H002', '{\"H002\":\"0.3280\",\"H003\":\"0.2000\",\"H001\":\"0.0800\"}', '{\"G001\":\"1\",\"G003\":\"1\",\"G002\":\"4\"}', 0.328),
(10, 'H003', '{\"H003\":\"0.4016\",\"H002\":\"0.1200\"}', '{\"G002\":\"2\",\"G004\":\"1\"}', 0.4016),
(11, 'H002', '{\"H002\":\"0.2608\",\"H003\":\"0.1200\",\"H001\":\"0.0800\"}', '{\"G003\":\"3\",\"G001\":\"1\",\"G002\":\"2\"}', 0.2608),
(12, 'H003', '{\"H003\":\"0.5632\",\"H002\":\"0.4960\",\"H001\":\"0.2000\"}', '{\"G001\":\"4\",\"G002\":\"3\",\"G003\":\"1\",\"G004\":\"2\"}', 0.5632),
(13, 'H002', '{\"H002\":\"0.1600\",\"H001\":\"0.0800\"}', '{\"G001\":\"1\"}', 0.16),
(14, 'H003', '{\"H003\":\"0.4288\",\"H002\":\"0.2944\",\"H001\":\"0.0800\"}', '{\"G001\":\"1\",\"G003\":\"2\",\"G002\":\"3\",\"G004\":\"1\"}', 0.4288),
(15, 'H004', '{\"H004\":\"0.8320\",\"H003\":\"0.4224\",\"H005\":\"0.4000\",\"H001\":\"0.3744\"}', '{\"G001\":\"4\",\"G002\":\"1\",\"G003\":\"2\",\"G004\":\"3\",\"G005\":\"1\"}', 0.832),
(16, 'H004', '{\"H004\":\"0.8320\",\"H003\":\"0.4224\",\"H005\":\"0.4000\",\"H001\":\"0.3744\"}', '{\"G001\":\"4\",\"G002\":\"1\",\"G004\":\"3\",\"G003\":\"2\",\"G005\":\"1\"}', 0.832),
(17, 'H004', '{\"H004\":\"0.8320\",\"H003\":\"0.4224\",\"H005\":\"0.4000\",\"H001\":\"0.3744\"}', '{\"G001\":\"4\",\"G002\":\"1\",\"G003\":\"2\",\"G004\":\"3\",\"G005\":\"1\"}', 0.832),
(18, 'H004', '{\"H004\":\"0.8320\",\"H003\":\"0.4224\",\"H005\":\"0.4000\",\"H001\":\"0.3744\"}', '{\"G001\":\"4\",\"G002\":\"1\",\"G003\":\"2\",\"G004\":\"3\",\"G005\":\"1\"}', 0.832),
(19, 'H004', '{\"H004\":\"0.4800\",\"H003\":\"0.3200\",\"H005\":\"0.2400\",\"H001\":\"0.1600\"}', '{\"G001\":\"2\",\"G003\":\"3\",\"G004\":\"1\"}', 0.48),
(20, 'H004', '{\"H004\":\"0.5632\",\"H003\":\"0.2400\",\"H005\":\"0.2400\"}', '{\"G001\":\"2\",\"G002\":\"1\",\"G003\":\"2\"}', 0.5632),
(21, 'H004', '{\"H004\":\"0.4800\",\"H005\":\"0.2400\",\"H003\":\"0.1600\"}', '{\"G001\":\"2\",\"G003\":\"1\"}', 0.48),
(22, 'H003', '{\"H003\":\"0.7280\",\"H004\":\"0.4288\",\"H001\":\"0.3920\",\"H005\":\"0.1600\"}', '{\"G001\":\"1\",\"G002\":\"1\",\"G003\":\"3\",\"G005\":\"4\",\"G004\":\"2\"}', 0.728),
(23, 'H003', '{\"H003\":\"0.6160\",\"H004\":\"0.5376\",\"H001\":\"0.4016\",\"H005\":\"0.1600\"}', '{\"G001\":\"1\",\"G002\":\"3\",\"G004\":\"3\",\"G003\":\"4\",\"G005\":\"2\"}', 0.616),
(24, 'H003', '{\"H003\":\"0.6640\",\"H004\":\"0.5376\",\"H001\":\"0.4560\",\"H005\":\"0.1600\"}', '{\"G001\":\"1\",\"G002\":\"3\",\"G003\":\"1\",\"G004\":\"3\",\"G005\":\"4\"}', 0.664),
(25, 'H002', '{\"H002\":\"0.8368\",\"H003\":\"0.5914\",\"H005\":\"0.4000\",\"H004\":\"0.3600\",\"H006\":\"0.3600\",\"H001\":\"0.1200\"}', '{\"G003\":\"2\",\"G006\":\"4\",\"G008\":\"2\",\"G009\":\"1\",\"G005\":\"1\",\"G007\":\"4\",\"G024\":\"2\"}', 0.8368),
(26, 'H001', '{\"H001\":\"0.6568\",\"H004\":\"0.6000\",\"H006\":\"0.6000\",\"H003\":\"0.3600\"}', '{\"G001\":\"1\",\"G002\":\"2\",\"G004\":\"2\",\"G008\":\"2\",\"G024\":\"4\",\"G023\":\"3\"}', 0.6568),
(27, 'H003', '{\"H003\":\"0.6000\",\"H002\":\"0.4000\",\"H005\":\"0.4000\",\"H004\":\"0.3600\",\"H006\":\"0.3600\",\"H001\":\"0.2944\"}', '{\"G001\":\"1\",\"G008\":\"4\",\"G007\":\"4\",\"G023\":\"3\",\"G024\":\"2\"}', 0.6),
(28, 'H002', '{\"H002\":\"0.7596\",\"H003\":\"0.7446\",\"H001\":\"0.6909\",\"H004\":\"0.3600\",\"H005\":\"0.3200\"}', '{\"G001\":\"1\",\"G002\":\"4\",\"G003\":\"1\",\"G007\":\"3\",\"G006\":\"3\",\"G005\":\"1\",\"G009\":\"1\",\"G008\":\"4\",\"G011\":\"2\"}', 0.7596),
(29, 'H001', '{\"H001\":\"0.9682\"}', '{\"G001\":\"3\",\"G002\":\"3\",\"G003\":\"3\",\"G004\":\"3\",\"G021\":\"3\",\"G022\":\"3\",\"G023\":\"3\"}', 0.9682),
(30, 'H002', '{\"H002\":\"0.9520\",\"H003\":\"0.4000\",\"H005\":\"0.4000\"}', '{\"G005\":\"4\",\"G006\":\"4\",\"G007\":\"4\"}', 0.952),
(31, 'H003', '{\"H003\":\"0.9040\",\"H002\":\"0.8480\"}', '{\"G005\":\"4\",\"G006\":\"1\",\"G008\":\"4\",\"G009\":\"4\"}', 0.904),
(32, 'H004', '{\"H004\":\"0.9846\",\"H006\":\"0.6000\"}', '{\"G010\":\"4\",\"G011\":\"4\",\"G012\":\"4\",\"G024\":\"4\",\"G013\":\"4\"}', 0.9846),
(33, 'H005', '{\"H005\":\"0.8560\",\"H002\":\"0.4000\"}', '{\"G014\":\"4\",\"G015\":\"4\",\"G007\":\"4\"}', 0.856),
(34, 'H006', '{\"H006\":\"0.9470\"}', '{\"G016\":\"4\",\"G017\":\"4\",\"G018\":\"4\",\"G019\":\"4\",\"G020\":\"1\"}', 0.947),
(35, 'H006', '{\"H006\":\"0.9816\",\"H004\":\"0.6000\"}', '{\"G024\":\"4\",\"G020\":\"4\",\"G019\":\"4\",\"G018\":\"4\",\"G017\":\"4\",\"G016\":\"4\"}', 0.9816),
(36, 'H001', '{\"H001\":\"0.8128\",\"H004\":\"0.7945\",\"H005\":\"0.4800\",\"H006\":\"0.4800\",\"H003\":\"0.3600\"}', '{\"G001\":\"3\",\"G002\":\"2\",\"G003\":\"4\",\"G004\":\"1\",\"G009\":\"2\",\"G010\":\"3\",\"G011\":\"1\",\"G014\":\"3\",\"G022\":\"2\",\"G024\":\"3\"}', 0.8128),
(37, 'H001', '{\"H001\":\"0.6000\",\"H004\":\"0.6000\"}', '{\"G002\":\"4\",\"G010\":\"4\"}', 0.6),
(38, 'H001', '{\"H001\":\"0.9926\"}', '{\"G001\":\"4\",\"G002\":\"4\",\"G003\":\"4\",\"G004\":\"4\",\"G023\":\"4\",\"G022\":\"4\",\"G021\":\"4\"}', 0.9926),
(39, 'H002', '{\"H002\":\"0.9520\",\"H003\":\"0.4000\",\"H005\":\"0.4000\"}', '{\"G005\":\"4\",\"G006\":\"4\",\"G007\":\"4\"}', 0.952),
(40, 'H003', '{\"H003\":\"0.9040\",\"H002\":\"0.8000\"}', '{\"G005\":\"4\",\"G008\":\"4\",\"G009\":\"4\"}', 0.904),
(41, 'H004', '{\"H004\":\"0.9846\",\"H006\":\"0.6000\"}', '{\"G010\":\"4\",\"G011\":\"4\",\"G024\":\"4\",\"G012\":\"4\",\"G013\":\"4\"}', 0.9846),
(42, 'H005', '{\"H005\":\"0.8560\",\"H002\":\"0.4000\"}', '{\"G014\":\"4\",\"G015\":\"4\",\"G007\":\"4\"}', 0.856),
(43, 'H006', '{\"H006\":\"0.9816\",\"H004\":\"0.6000\"}', '{\"G024\":\"4\",\"G020\":\"4\",\"G019\":\"4\",\"G018\":\"4\",\"G017\":\"4\",\"G016\":\"4\"}', 0.9816),
(44, 'H001', '{\"H001\":\"0.9926\"}', '{\"G001\":\"4\",\"G003\":\"4\",\"G002\":\"4\",\"G004\":\"4\",\"G023\":\"4\",\"G022\":\"4\",\"G021\":\"4\"}', 0.9926),
(45, 'H006', '{\"H006\":\"0.8054\",\"H005\":\"0.7280\"}', '{\"G014\":\"4\",\"G015\":\"3\",\"G016\":\"2\",\"G017\":\"4\",\"G019\":\"2\"}', 0.8054),
(46, 'H006', '{\"H006\":\"0.8054\",\"H005\":\"0.7280\"}', '{\"G014\":\"4\",\"G015\":\"3\",\"G016\":\"2\",\"G017\":\"4\",\"G019\":\"2\"}', 0.8054),
(47, 'H006', '{\"H006\":\"0.8054\",\"H005\":\"0.7280\"}', '{\"G014\":\"4\",\"G015\":\"3\",\"G016\":\"2\",\"G017\":\"4\",\"G019\":\"2\"}', 0.8054),
(48, 'H006', '{\"H006\":\"0.8054\",\"H005\":\"0.7280\"}', '{\"G014\":\"4\",\"G015\":\"3\",\"G016\":\"2\",\"G017\":\"4\",\"G019\":\"2\"}', 0.8054),
(49, 'H006', '{\"H006\":\"0.8054\",\"H005\":\"0.7280\"}', '{\"G014\":\"4\",\"G015\":\"3\",\"G016\":\"2\",\"G017\":\"4\",\"G019\":\"2\"}', 0.8054),
(50, 'H006', '{\"H006\":\"0.8054\",\"H005\":\"0.7280\"}', '{\"G014\":\"4\",\"G015\":\"3\",\"G016\":\"2\",\"G017\":\"4\",\"G019\":\"2\"}', 0.8054),
(51, 'H006', '{\"H006\":\"0.8054\",\"H005\":\"0.7280\"}', '{\"G014\":\"4\",\"G015\":\"3\",\"G016\":\"2\",\"G017\":\"4\",\"G019\":\"2\"}', 0.8054),
(52, 'H006', '{\"H006\":\"0.8054\",\"H005\":\"0.7280\"}', '{\"G014\":\"4\",\"G015\":\"3\",\"G016\":\"2\",\"G017\":\"4\",\"G019\":\"2\"}', 0.8054),
(53, 'H006', '{\"H006\":\"0.8054\",\"H005\":\"0.7280\"}', '{\"G014\":\"4\",\"G015\":\"3\",\"G016\":\"2\",\"G017\":\"4\",\"G019\":\"2\"}', 0.8054),
(54, 'H006', '{\"H006\":\"0.8054\",\"H005\":\"0.7280\"}', '{\"G014\":\"4\",\"G015\":\"3\",\"G016\":\"2\",\"G017\":\"4\",\"G019\":\"2\"}', 0.8054),
(55, 'H006', '{\"H006\":\"0.8054\",\"H005\":\"0.7280\"}', '{\"G014\":\"4\",\"G015\":\"3\",\"G016\":\"2\",\"G017\":\"4\",\"G019\":\"2\"}', 0.8054),
(56, 'H006', '{\"H006\":\"0.8054\",\"H005\":\"0.7280\"}', '{\"G014\":\"4\",\"G015\":\"3\",\"G016\":\"2\",\"G017\":\"4\",\"G019\":\"2\"}', 0.8054),
(57, 'H002', '{\"H002\":\"0.6400\",\"H004\":\"0.3600\",\"H006\":\"0.3600\",\"H003\":\"0.3200\",\"H001\":\"0.1600\"}', '{\"G001\":\"1\",\"G024\":\"2\",\"G005\":\"3\"}', 0.64),
(58, 'H002', '{\"H002\":\"0.6400\",\"H004\":\"0.3600\",\"H006\":\"0.3600\",\"H003\":\"0.3200\",\"H001\":\"0.1600\"}', '{\"G001\":\"1\",\"G024\":\"2\",\"G005\":\"3\"}', 0.64),
(59, 'H006', '{\"H006\":\"0.8054\",\"H005\":\"0.7280\"}', '{\"G014\":\"4\",\"G015\":\"3\",\"G016\":\"2\",\"G017\":\"4\",\"G019\":\"2\"}', 0.8054),
(60, 'H002', '{\"H002\":\"0.6400\",\"H003\":\"0.5648\",\"H004\":\"0.4000\",\"H001\":\"0.2400\",\"H006\":\"0.2400\"}', '{\"G002\":\"1\",\"G005\":\"3\",\"G009\":\"2\",\"G012\":\"4\",\"G018\":\"2\"}', 0.64),
(61, 'H001', '{\"H001\":\"0.6000\",\"H004\":\"0.4800\",\"H006\":\"0.4800\"}', '{\"G002\":\"4\",\"G024\":\"3\"}', 0.6),
(62, 'H003', '{\"H003\":\"0.7280\",\"H002\":\"0.6400\",\"H001\":\"0.4000\",\"H004\":\"0.4000\"}', '{\"G001\":\"4\",\"G005\":\"3\",\"G009\":\"4\",\"G012\":\"4\"}', 0.728),
(63, 'H003', '{\"H003\":\"0.7280\",\"H002\":\"0.6400\",\"H001\":\"0.4000\",\"H004\":\"0.4000\"}', '{\"G001\":\"4\",\"G005\":\"3\",\"G009\":\"4\",\"G012\":\"4\"}', 0.728),
(64, 'H002', '{\"H002\":\"0.8000\",\"H001\":\"0.6000\",\"H004\":\"0.6000\",\"H003\":\"0.4000\"}', '{\"G002\":\"4\",\"G005\":\"4\",\"G010\":\"4\"}', 0.8);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` varchar(4) NOT NULL,
  `nama_gejala` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
('G001', 'Gejala serangan berada di permukaan bagian bawah daun'),
('G002', 'Terlihat bercak – cercak kecil seperti terkena minyak pada pangkal daun'),
('G003', 'Pangkal daun berwarna agak kecoklatan'),
('G004', 'Pada ujung daun, sekitar ibu tulang daun terbentuk kalus'),
('G005', 'Daun tergulung'),
('G006', 'Ditemukan ulat dengan kepala berwarna coklat tua atau hitam'),
('G007', 'Bagian atas daun mengering'),
('G008', 'Pada bagian pucuk ditemukan ulat yang gerakannya lamban dan berukuran kecil'),
('G009', 'Terdapat adanya benang – benang halus yang mengikat dua pucuk'),
('G010', 'Pada permukaan daun terdapat bintik – bintik tembus cahaya'),
('G011', 'Daun timbul bercak – bercak coklat'),
('G012', 'Daun mati atau gugur'),
('G013', 'Pada bagian tepi helai atau bagian tengah terdapat lubang besar'),
('G014', 'Pertumbuhan tunas muda dan ranting muda tidak sempurna'),
('G015', 'Bagian pucuk daun yang masih kecil mati'),
('G016', 'Daun menjadi berwarna coklat tua'),
('G017', 'Pada bagian perdu ditemukan serangga kecil pada stadia nimfa'),
('G018', 'Sebagian pinggiran daun mengeriting'),
('G019', 'Daun muda berwarna kusam'),
('G020', 'Daun muda mengeriting'),
('G021', 'Terdapat koloni pada pangkal daun sekitar ibu tulang daun'),
('G022', 'Daun menjadi rontok'),
('G023', 'Mahkota perdu menjadi jarang hingga gundul'),
('G024', 'Daun berwarna kuning');

-- --------------------------------------------------------

--
-- Table structure for table `hama`
--

CREATE TABLE `hama` (
  `kode_hama` varchar(4) NOT NULL,
  `nama_hama` varchar(250) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hama`
--

INSERT INTO `hama` (`kode_hama`, `nama_hama`, `gambar`) VALUES
('H001', 'Tungau Jingga', 'Tungau_jingga_daun_teh_AWB.jpg'),
('H002', 'Ulat Penggulung Daun', 'Homona-coffearia-Ulat-Penggulung-Daun-300x300.jpg'),
('H003', 'Ulat Penggulung Pucuk', 'penggulung_daun_teh_AWB.jpg'),
('H004', 'Ulat Api', 'Setora_nitens_AWB.jpg'),
('H005', 'Kutu Hitam', 'Toxoptera-aurantii-on-a-citrus-tree-in-Cameron-highlands.png'),
('H006', 'Empoasca sp', 'Empoasca.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `solusi`
--

CREATE TABLE `solusi` (
  `kode_solusi` int(11) NOT NULL,
  `kode_hama` varchar(4) NOT NULL,
  `solusi` text NOT NULL,
  `slug` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solusi`
--

INSERT INTO `solusi` (`kode_solusi`, `kode_hama`, `solusi`, `slug`) VALUES
(29, 'H01', 'Ini bisa udah', 'SL01'),
(30, 'H01', 'Testing', 'SL01'),
(31, 'H01', 'akuusa', 'SL01'),
(32, 'H01', 'Nur', 'SL02'),
(33, 'H01', 'Nadya', 'SL02'),
(34, 'H01', 'Nafis', 'SL02'),
(35, 'H01', 'Sayang', 'SL02'),
(36, 'H01', 'akuubisa', 'SL03'),
(37, 'H01', 'akuuini', 'SL03'),
(56, 'H001', 'Menjelang musim kemarau pengendalian gulma hanya sebatas tidak melampaui bidang petik dan Mengoptimalkan fungsi penaung untuk mengatur kelembaban ', 'S004'),
(57, 'H001', 'Menjelang musim kemarau pengendalian gulma hanya sebatas tidak melampaui bidang petik', 'S004'),
(58, 'H002', 'Pengendalian dilakukan secara mekanik melalui petikan, dapat menggunakan tenaga khusus atau disertakan dalam pemetikan. Serangan pada areal yang baru dipangkas, dikendalikan melalui petikan dengan tenaga khusus yang terampil sehingga tidak merusak bentuk tanaman. Pengendalian secara kimia tidak efektif karena ulat terlindung oleh lipatan daun.', 'S005'),
(59, 'H002', 'Serangan pada areal yang baru dipangkas, dikendalikan melalui petikan dengan tenaga khusus yang terampil sehingga tidak merusak bentuk tanaman', 'S005'),
(60, 'H002', 'Pengendalian secara kimia tidak efektif karena ulat terlindung oleh lipatan daun', 'S005'),
(61, 'H003', 'Memperpendek daur petik dan memetik semua pucuk yang terserang, serta pucuk atau daun yang berkepompong. Petikan pada tanaman yang baru dipangkas dilakukan oleh tenaga khusus yang terlatih agar tidak merusak bentuk tanaman, lalu diahruskan Menyiang gulma secara teratur, usahakan gulma jangan sampai berbunga karena merupakan sumber makanan bagi imago ulat tersebut', 'S006'),
(62, 'H003', 'Menyiang gulma secara teratur, usahakan gulma jangan sampai berbunga karena merupakan sumber makanan bagi imago ulat tarsebut', 'S006'),
(66, 'H004', 'Pengendalian harus dilaksanakan seawal mungkin berdasarkan hasil pengamatan. Secara mekanik dengan mengumpulkan larva, pupa kemudian dibunuh (dibakar). Lalu Secara biologi dengan menyemprotkan biosida cendawan parasit Phaecilomyces fumosa dosis/ ha = 2 kg/aplikasi. Yang terakhit Secara kimia dengan menyemprot insektisida dengan bahan aktif Sipermetrin 50 EC konsentrasi 0,02 - 0,05 % ke permukaan bawah daun. - Penyemprotan diulang dengan interval 7 hari jika masih ditemukan ulat darna.', 'S007'),
(67, 'H004', 'Secara mekanik dengan mengumpulkan larva, pupa kemudian dibunuh (dibakar)', 'S007'),
(68, 'H004', 'Secara biologi dengan menyemprotkan biosida cendawan parasit Phaecilomyces fumosa dosis/ ha = 2 kg/aplikasi', 'S007'),
(69, 'H004', 'Secara kimia dengan menyemprot insektisida dengan bahan aktif Sipermetrin 50EC konsentrasi 0,02 - 0,05 % ke permukaan bawah daun. - Penyemprotan diulang dengan interval 7 hari jika masih ditemukan ulat darna', 'S007'),
(70, 'H005', 'Pengendalian dilakukan berdasarkan pengamatan. Secara kultur teknis melalui pemetikan tunas-tunas yang terserang, pengendalian gulma secara teratur dan pemupukan sesuai rekomendasi Pusat Penelitian. Pengendalian kimiawi dilakukan pada tanaman yang baru dipangkas sampai dengan tahun kedua. Penyemprotan dengan insektisida bahan aktif metidation 40EC konsentrasi 0.2% atau sipermetrin 50EC konsentrasi 0.02%. Penyemprotan diarahkan terutama ke pucuk teh.', 'S008'),
(71, 'H005', 'Secara kultur teknis melalui pemetikan tunas-tunas yang terserang, pengendalian gulma sacara teratur dan pemupukan sesuai rekomendasi Pusat Penelitian', 'S008'),
(72, 'H005', 'Pengendalian kimiawi dilakukan pada tanaman yang baru dipangkas sampai dengan tahun kedua. Penyemprotan dengan insektisida bahan aktif metidation 40EC konsentrasi 0.2% atau sipermetrin 50EC konsentrasi 0.02%. Penyemprotan diarahkan terutama ke pucuk teh', 'S008'),
(73, 'H006', 'Secara langsung dapat dilakukan dengan penyemprotan insektisida (perhatikan penggunaan insektisida yang tidak menimbulkan residu pada tanaman), secara tidak langsung umumnya melalui sanitasi sarana panen dengan tujuan untuk memutus penyebaran hama yang luas. Monitoring dan inventarisasi areal serangan perlu dilakukan setiap hari dan dievaluasi setiap minggu untuk dapat menentukan cara pengendaliannya secara efektif dan ekonomis', 'S009');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`),
  ADD KEY `kode_hama` (`kode_hama`),
  ADD KEY `kode_gejala` (`kode_gejala`);

--
-- Indexes for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`kode_diagnosa`),
  ADD KEY `kode_hama` (`kode_hama`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `hama`
--
ALTER TABLE `hama`
  ADD PRIMARY KEY (`kode_hama`);

--
-- Indexes for table `solusi`
--
ALTER TABLE `solusi`
  ADD PRIMARY KEY (`kode_solusi`),
  ADD KEY `kode_hama` (`kode_hama`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `kode_diagnosa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `solusi`
--
ALTER TABLE `solusi`
  MODIFY `kode_solusi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gejala`
--
ALTER TABLE `gejala`
  ADD CONSTRAINT `gejala_ibfk_1` FOREIGN KEY (`kode_gejala`) REFERENCES `basis_pengetahuan` (`kode_gejala`);

--
-- Constraints for table `hama`
--
ALTER TABLE `hama`
  ADD CONSTRAINT `hama_ibfk_1` FOREIGN KEY (`kode_hama`) REFERENCES `basis_pengetahuan` (`kode_hama`),
  ADD CONSTRAINT `hama_ibfk_2` FOREIGN KEY (`kode_hama`) REFERENCES `solusi` (`kode_hama`),
  ADD CONSTRAINT `hama_ibfk_3` FOREIGN KEY (`kode_hama`) REFERENCES `diagnosa` (`kode_hama`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
