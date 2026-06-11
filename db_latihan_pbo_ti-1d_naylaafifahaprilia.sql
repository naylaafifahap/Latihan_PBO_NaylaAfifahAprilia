-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2026 at 07:13 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_ti-1d_naylaafifahaprilia`
--

-- --------------------------------------------------------

--
-- Table structure for table `tebel_tiket`
--

CREATE TABLE `tebel_tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(255) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(10,2) NOT NULL,
  `jenis_studio` enum('regular','imax','velvet') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(10) DEFAULT NULL,
  `kacamata_3d_id` varchar(50) DEFAULT NULL,
  `efek_gerak_fitur` varchar(100) DEFAULT NULL,
  `bantal_selimut_pack` varchar(50) DEFAULT NULL,
  `layanan_butler` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tebel_tiket`
--

INSERT INTO `tebel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
(1, 'Avengers: Doomsday', '2026-07-15 13:00:00', 2, '50000.00', 'regular', 'Dolby Digital 5.1', 'Row G', NULL, NULL, NULL, NULL),
(2, 'Spider-Man: Beyond the Spider-Verse', '2026-07-15 15:30:00', 1, '50000.00', 'regular', 'Dolby Digital 5.1', 'Row F', NULL, NULL, NULL, NULL),
(3, 'Batman: The Brave and the Bold', '2026-07-15 18:00:00', 4, '55000.00', 'regular', 'Dolby Atmos', 'Row E', NULL, NULL, NULL, NULL),
(4, 'The Conjuring: Last Rites', '2026-07-15 21:00:00', 2, '55000.00', 'regular', 'Dolby Atmos', 'Row H', NULL, NULL, NULL, NULL),
(5, 'Toy Story 5', '2026-07-16 11:00:00', 3, '50000.00', 'regular', 'Dolby Digital 5.1', 'Row J', NULL, NULL, NULL, NULL),
(6, 'Shrek 5', '2026-07-16 14:00:00', 2, '50000.00', 'regular', 'Dolby Digital 5.1', 'Row K', NULL, NULL, NULL, NULL),
(7, 'Inception 2', '2026-07-16 17:00:00', 1, '55000.00', 'regular', 'Dolby Atmos', 'Row D', NULL, NULL, NULL, NULL),
(8, 'Avengers: Doomsday', '2026-07-15 14:00:00', 2, '90000.00', 'imax', 'IMAX 12-Channel', 'Row C', 'K3D-IMAX-001', 'Dual Laser Projection', NULL, NULL),
(9, 'Avatar 4', '2026-07-15 17:30:00', 2, '95000.00', 'imax', 'IMAX 12-Channel', 'Row D', 'K3D-IMAX-002', 'High Frame Rate 3D', NULL, NULL),
(10, 'Interstellar Re-Release', '2026-07-15 21:00:00', 1, '95000.00', 'imax', 'IMAX 6-Channel', 'Row B', NULL, '70mm Film Simulation', NULL, NULL),
(11, 'Star Wars: New Jedi Order', '2026-07-16 13:00:00', 2, '90000.00', 'imax', 'IMAX 12-Channel', 'Row C', 'K3D-IMAX-003', 'Dual Laser Projection', NULL, NULL),
(12, 'Dune: Part III', '2026-07-16 16:30:00', 3, '95000.00', 'imax', 'IMAX 12-Channel', 'Row E', NULL, '4K Laser Digital', NULL, NULL),
(13, 'Matrix Resurrections 2', '2026-07-16 20:00:00', 2, '95000.00', 'imax', 'IMAX 12-Channel', 'Row D', 'K3D-IMAX-004', 'High Frame Rate 3D', NULL, NULL),
(14, 'Superman: Legacy', '2026-07-17 12:00:00', 1, '90000.00', 'imax', 'IMAX 12-Channel', 'Row C', NULL, 'Dual Laser Projection', NULL, NULL),
(15, 'Avengers: Doomsday', '2026-07-15 15:00:00', 2, '150000.00', 'velvet', NULL, 'Sofa A1', NULL, NULL, 'Premium Quilt Pack A', 'Full Service Butler'),
(16, 'The Conjuring: Last Rites', '2026-07-15 19:00:00', 2, '150000.00', 'velvet', NULL, 'Sofa B2', NULL, NULL, 'Standard Velvet Pack', 'On-Call Butler'),
(17, 'La La Land Sequel', '2026-07-15 21:30:00', 2, '175000.00', 'velvet', NULL, 'Sofa A3', NULL, NULL, 'Luxury Silk Pack', 'VIP Dedicated Butler'),
(18, 'Avatar 4', '2026-07-16 14:00:00', 2, '150000.00', 'velvet', NULL, 'Sofa C1', NULL, NULL, 'Premium Quilt Pack B', 'Full Service Butler'),
(19, 'Dune: Part III', '2026-07-16 18:00:00', 2, '175000.00', 'velvet', NULL, 'Sofa A2', NULL, NULL, 'Luxury Silk Pack', 'VIP Dedicated Butler'),
(20, 'Gladiator III', '2026-07-16 21:00:00', 2, '150000.00', 'velvet', NULL, 'Sofa B1', NULL, NULL, 'Standard Velvet Pack', 'On-Call Butler'),
(21, 'Wicked: Part Two', '2026-07-17 15:30:00', 2, '150000.00', 'velvet', NULL, 'Sofa C2', NULL, NULL, 'Premium Quilt Pack C', 'Full Service Butler');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tebel_tiket`
--
ALTER TABLE `tebel_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tebel_tiket`
--
ALTER TABLE `tebel_tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
