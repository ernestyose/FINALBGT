-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 11:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `antri`
--

-- --------------------------------------------------------

--
-- Table structure for table `antrian`
--

CREATE TABLE `antrian` (
  `ID_Antrian` int(11) NOT NULL,
  `ID_Resepsionis` int(11) DEFAULT NULL,
  `ID_Pasien` int(11) DEFAULT NULL,
  `ID_Dokter` int(11) DEFAULT NULL,
  `Tgl_Antrian` date DEFAULT NULL,
  `Status` enum('Menunggu','Diperiksa','Selesai') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `antrian`
--

INSERT INTO `antrian` (`ID_Antrian`, `ID_Resepsionis`, `ID_Pasien`, `ID_Dokter`, `Tgl_Antrian`, `Status`) VALUES
(1, 10, 1, 1, '2024-06-20', 'Diperiksa'),
(2, 10, 3, 3, '2024-06-20', 'Menunggu');

-- --------------------------------------------------------

--
-- Table structure for table `antrian2`
--

CREATE TABLE `antrian2` (
  `ID_Antrian` int(11) NOT NULL,
  `ID_Resepsionis` int(11) DEFAULT NULL,
  `ID_Pasien` int(11) DEFAULT NULL,
  `ID_Dokter` int(11) DEFAULT NULL,
  `Tgl_Antrian` date DEFAULT NULL,
  `Status` enum('Menunggu','Diperiksa','Selesai') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `antrian2`
--

INSERT INTO `antrian2` (`ID_Antrian`, `ID_Resepsionis`, `ID_Pasien`, `ID_Dokter`, `Tgl_Antrian`, `Status`) VALUES
(1, 10, 2, 1, '2024-06-20', 'Diperiksa');

-- --------------------------------------------------------

--
-- Table structure for table `antrian3`
--

CREATE TABLE `antrian3` (
  `ID_Antrian` int(11) NOT NULL,
  `ID_Resepsionis` int(11) DEFAULT NULL,
  `ID_Pasien` int(11) DEFAULT NULL,
  `ID_Dokter` int(11) DEFAULT NULL,
  `Tgl_Antrian` date DEFAULT NULL,
  `Status` enum('Menunggu','Diperiksa','Selesai') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `antrian3`
--

INSERT INTO `antrian3` (`ID_Antrian`, `ID_Resepsionis`, `ID_Pasien`, `ID_Dokter`, `Tgl_Antrian`, `Status`) VALUES
(1, 10, 4, 4, '2024-06-20', 'Diperiksa');

-- --------------------------------------------------------

--
-- Table structure for table `antrian_copy`
--

CREATE TABLE `antrian_copy` (
  `ID_Antrian` int(11) NOT NULL,
  `ID_Resepsionis` int(11) DEFAULT NULL,
  `ID_Pasien` int(11) DEFAULT NULL,
  `ID_Dokter` int(11) DEFAULT NULL,
  `Tgl_Antrian` date DEFAULT NULL,
  `Status` enum('Menunggu','Diperiksa','Selesai') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `ID_Dokter` int(11) NOT NULL,
  `Nama_D` varchar(50) DEFAULT NULL,
  `Spesialis` varchar(20) DEFAULT NULL,
  `Jadwal` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`ID_Dokter`, `Nama_D`, `Spesialis`, `Jadwal`) VALUES
(1, 'Dr. Panji', 'Jantung', 'Senin-Jum\'at, 08:00-17:00'),
(2, 'Dr. Jayanta', 'Bedah', 'Rabu-Sabtu, 09:00-18:00'),
(3, 'Dr. Lutfi', 'Anak', 'Senin-Jum\'at, 07:00-16:00'),
(4, 'Dr. Neni', 'Mata', 'Selasa-Jum\'at, 08.00-17.00'),
(5, 'Dr. Kharisma', 'THT', 'Senin-Sabtu, 09.00-18.00');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `ID_Pasien` int(11) NOT NULL,
  `NIK` int(20) DEFAULT NULL,
  `Nama_P` varchar(50) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `Domisili` varchar(50) DEFAULT NULL,
  `Tgl_lahir` date DEFAULT NULL,
  `No_HP` varchar(14) DEFAULT NULL,
  `Jenis_Kelamin` enum('L','P') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`ID_Pasien`, `NIK`, `Nama_P`, `Alamat`, `Domisili`, `Tgl_lahir`, `No_HP`, `Jenis_Kelamin`) VALUES
(1, 2010511137, 'Agif', 'Jl. Jendral Sudirman No. 26', 'Jakarta', '2004-08-26', '08119787876', 'L'),
(2, 2010511152, 'Rayen', 'Jl. Jendral Sudirman No. 25', 'Jakarta', '2004-07-15', '081293604020', 'L'),
(3, 2010511132, 'Rendy', 'Jl. Jendral Sudirman No. 24', 'Jakarta', '2004-09-22', '082112550912', 'L'),
(4, 2010511168, 'Ernest', 'Jl. Jendral Sudirman No. 27', 'Jakarta', '2004-02-10', '082124346545', 'L'),
(5, 2010511190, 'Ijah', 'Jl. Jendral Sudirman No. 28', 'Jakarta', '2004-01-02', '08121123863', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `resepsionis`
--

CREATE TABLE `resepsionis` (
  `ID_Resepsionis` int(11) NOT NULL,
  `Nama_R` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resepsionis`
--

INSERT INTO `resepsionis` (`ID_Resepsionis`, `Nama_R`) VALUES
(10, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antrian`
--
ALTER TABLE `antrian`
  ADD PRIMARY KEY (`ID_Antrian`);

--
-- Indexes for table `antrian2`
--
ALTER TABLE `antrian2`
  ADD PRIMARY KEY (`ID_Antrian`);

--
-- Indexes for table `antrian3`
--
ALTER TABLE `antrian3`
  ADD PRIMARY KEY (`ID_Antrian`);

--
-- Indexes for table `antrian_copy`
--
ALTER TABLE `antrian_copy`
  ADD PRIMARY KEY (`ID_Antrian`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`ID_Dokter`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`ID_Pasien`);

--
-- Indexes for table `resepsionis`
--
ALTER TABLE `resepsionis`
  ADD PRIMARY KEY (`ID_Resepsionis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `antrian`
--
ALTER TABLE `antrian`
  MODIFY `ID_Antrian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `antrian2`
--
ALTER TABLE `antrian2`
  MODIFY `ID_Antrian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `antrian3`
--
ALTER TABLE `antrian3`
  MODIFY `ID_Antrian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `antrian_copy`
--
ALTER TABLE `antrian_copy`
  MODIFY `ID_Antrian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `ID_Dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `ID_Pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resepsionis`
--
ALTER TABLE `resepsionis`
  MODIFY `ID_Resepsionis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
