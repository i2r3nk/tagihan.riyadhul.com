-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 15, 2024 at 03:59 AM
-- Server version: 5.7.40-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tagihan.my.id`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`riyadhul`@`localhost` FUNCTION `fRupiah` (`number` BIGINT) RETURNS VARCHAR(255) CHARSET latin1 BEGIN
DECLARE hasil VARCHAR(255);
SET hasil = REPLACE(REPLACE(REPLACE(FORMAT(number, 0), '.', '|'), ',', '.'), '|', ',');
RETURN (hasil);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bulan`
--

CREATE TABLE `tb_bulan` (
  `id_bulan` varchar(2) NOT NULL,
  `bulan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bulan`
--

INSERT INTO `tb_bulan` (`id_bulan`, `bulan`) VALUES
('01', 'Januari'),
('02', 'Februari'),
('03', 'Maret'),
('04', 'April'),
('05', 'Mei'),
('06', 'Juni'),
('07', 'Juli'),
('08', 'Agustus'),
('09', 'September'),
('10', 'Oktober'),
('11', 'November'),
('12', 'Desember');

-- --------------------------------------------------------

--
-- Table structure for table `tb_paket`
--

CREATE TABLE `tb_paket` (
  `id_paket` varchar(6) NOT NULL,
  `paket` varchar(20) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` varchar(6) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(15) NOT NULL,
  `level` varchar(5) NOT NULL DEFAULT 'PLG',
  `paket` varchar(64) NOT NULL,
  `tarif` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama`, `alamat`, `no_hp`, `email`, `password`, `level`, `paket`, `tarif`) VALUES
('C001', 'Willy', 'RW.02 RT.02', '08985699583', '-', '4462', 'PLG', 'Bulanan Lama 3 HP', 120000),
('C002', 'Bu iis Pa Hasan Sadili', 'RW.02 RT.02', '0', '-', '6500', 'PLG', 'Bulanan Lama 4 HP', 130000),
('C003', 'Suherman', 'RW.02 RT.01', '082262600183', '-', '5404', 'PLG', 'Bulanan Lama 2 HP', 80000),
('C004', 'intan', 'RW.02 RT.01', '089519356990', '-', '2132', 'PLG', 'Bulanan Lama 3 HP', 120000),
('C005', 'ita', 'RW.02 RT.01', '081393931269', '-', '4182', 'PLG', 'Bulanan Lama 2 HP', 85000),
('C007', 'Tarumli', 'RW.02 RT.01', '0', '-', '6032', 'PLG', 'Bulanan Lama 3 HP', 120000),
('C009', 'Hanan Kevin', 'RW.02 RT.02', '0', '-', '6034', 'PLG', 'Bulanan Lama 1 HP', 40000),
('C010', 'Eka Awod', 'RW.02 RT.02', '0', '-', '6678', 'PLG', 'Bulanan Lama 1 HP 1 STB', 100000),
('C011', 'Berry', 'RW.02 RT.02', '081324224677', '-', '6272', 'PLG', 'Bulanan Lama 2 HP', 80000),
('C012', 'Pa Edi', 'RW.02 RT.03', '0', '-', '6861', 'PLG', 'Bulanan Lama 1 HP', 50000),
('C013', 'Rio', 'RW.02 RT.03', '089501690225', '-', '7809', 'PLG', 'Bulanan Lama 1 HP', 40000),
('C014', 'Dewi Santi', 'RW.02 RT.03', '0', '-', '5218', 'PLG', 'Bulanan Lama 1 HP 1 SmartTV', 100000),
('C015', 'Jepang', 'RW.02 RT.03', '0', '-', '9682', 'PLG', 'Bulanan Lama 3 HP + 1 Bonus', 120000),
('C016', 'Yonatan Ci Memey', 'RW.02 RT.03', '0', '-', '4349', 'PLG', 'Bulanan Lama 2 HP 1 Laptop', 130000),
('C017', 'Halimah Tukijan', 'RW.02 RT.03', '0', '-', '7006', 'PLG', 'Bulanan Lama 2 HP', 85000),
('C018', 'Bu Titi Pa Solihin', 'RW.02 RT.03', '0895374097245', '-', '3765', 'PLG', 'Bulanan Lama 2 HP', 80000),
('C019', 'Uweng', 'RW.02 RT.03', '0', '-', '1677', 'PLG', 'Bulanan Lama 1 HP', 40000),
('C021', 'Debaynara', 'RW.02 RT.04', '0', '-', '8170', 'PLG', 'Bulanan Lama 3 HP', 130000),
('C022', 'Jessica', 'RW.02 RT.04', '08976678857', '-', '5245', 'PLG', 'Bulanan Lama 3 HP + STB', 195000),
('C023', 'Genot', 'RW.02 RT.04', '0', '-', '9581', 'PLG', '1 STB', 85000),
('C024', 'Urip Heru', 'RW.02 RT.05', '0', '-', '3687', 'PLG', 'Bulanan Lama 1 HP', 50000),
('C025', 'Pa ikhsan', 'RW.02 RT.05', '0', '-', '7585', 'PLG', 'Bulanan Lama 2 HP', 80000),
('C026', 'Megan', 'RW.02 RT.04', '089673324076', '-', '2953', 'PLG', 'Bulanan Lama 1 HP + STB', 140000),
('C027', 'H. Arif', 'RW.02 RT.05', '081286503592', '-', '2035', 'PLG', 'Bulanan Lama 1 HP', 40000),
('C028', 'Pa John', 'RW.02 RT.05', '087808675416', '-', '5831', 'PLG', 'Bulanan Lama 2 HP', 80000),
('C030', 'Felisya Pa Karso', 'RW.02 RT.05', '089528793799', '-', '6080', 'PLG', 'Bulanan Lama 3 HP + 1 Bonus', 130000),
('C031', 'Kiki Aisyah', 'RW.02 RT.05', '081804661107', '-', '6561', 'PLG', 'Bulanan Lama 1 HP  40000+ Laptop 50000', 90000),
('C033', 'Ki Endang Galih Rahma', 'RW.02 RT.05', '0', '-', '7374', 'PLG', 'Bulanan Lama 2 HP', 80000),
('C034', 'Nova', 'RW.02 RT.05', '0', '-', '8344', 'PLG', 'Bulanan Baru 1 HP', 50000),
('C035', 'Agus Amay', 'RW.02 RT.06', '0', '-', '9947', 'PLG', 'Bulanan Lama 3 HP', 130000),
('C037', 'Farel Mikino', 'RW.02 RT.06', '0', '-', '3680', 'PLG', 'Bulanan Lama 1 HP', 50000),
('C038', 'Rifai', 'RW.02 RT.06', '089638230007', '-', '1929', 'PLG', 'Bulanan Lama 2 HP', 80000),
('C039', 'Wa Desi', 'RW.02 RT.06', '089658823503', '-', '8190', 'PLG', 'Bulanan Lama 1 HP + Listrik', 100000),
('C042', 'Gustiar - Pa Mul Ponakan', 'RW.01 RT.01', '0', '-', '5944', 'PLG', 'Bulanan Lama 1 HP', 50000),
('C043', 'Bu Dian', 'RW.01 RT.01', '0', '-', '5431', 'PLG', 'Bulanan Lama 1 HP', 50000),
('C045', 'Om Alex', 'RW.01 RT.03', '0895326851083', '-', '9601', 'PLG', 'Bulanan Lama 3 HP', 120000),
('C046', 'Pa Warto Maulana Ibrahim', 'RW.01 RT.04', '0', '-', '1613', 'PLG', 'Bulanan Lama 2 HP', 80000),
('C047', 'Pa Pendi Zaskia', 'RW.01 RT.04', '0', '-', '1457', 'PLG', 'Bulanan Lama 2 HP', 75000),
('C048', 'Pa Pardi Pijat', 'RW.01 RT.05', '0', '-', '1319', 'PLG', 'Bulanan Lama 2 HP', 80000),
('C049', 'Bu Evi', 'RW.01 RT.02', '0', '-', '7611', 'PLG', 'Bulanan Lama 3 HP', 120000),
('C050', 'Fatur', 'RW.02 RT.05', '0', '-', '6878', 'PLG', 'Bulanan Baru 2 HP', 90000),
('C051', 'Mba Neng nasi kuning', 'RW.01 RT.05', '0', '-', '1877', 'PLG', 'Bulanan Lama 3 HP + 1 Bonus', 160000),
('C052', 'Om Kodim', 'RW.01 RT.05', '0', '-', '5432', 'PLG', 'Bulanan Lama 2 HP', 80000),
('C054', 'Restu', 'RW.01 RT.05', '0', '-', '9605', 'PLG', 'Bulanan Lama 1 HP', 45000),
('C055', 'Elan', 'RW.01 RT.04', '089667114217', '-', '1206', 'PLG', 'Bulanan Lama 1 HP', 40000),
('C056', 'Ce Eni Ariel', 'RW.01 RT.04', '0', '-', '9388', 'PLG', 'Bulanan Lama 2 HP', 80000),
('C060', 'Muhammad Hidayat', 'RW.01 RT.05', '089660571696', '-', '8895', 'PLG', 'Bulanan Lama 3 HP', 110000),
('C062', 'Fajar', 'RW.07 RT.01', '087783093229', '-', '6610', 'PLG', 'Bulanan Lama 2 HP + Laptop', 130000),
('C063', 'Pa Mansur Naufal', 'RW.06 RT.03', '085224763182', '-', '8337', 'PLG', 'Bulanan Lama 3 HP', 110000),
('C064', 'Pa Agus Adik Pa Deni Ketua RT.02 ', 'RW.07 RT.02', '0', '-', '9905', 'PLG', 'Bulanan Baru 2 HP', 95000),
('C065', 'Pa Roni', 'RW.07 RT.02', '082116474414', '-', '6812', 'PLG', 'Bulanan Lama 3 HP', 120000),
('C067', 'Buras - Kakak Pa Engkos', 'RW.07 RT.03', '0', '-', '2345', 'PLG', 'Bulanan Lama 1 HP', 40000),
('C068', 'Ngkris', 'RW.07 RT.03', '0', '-', '3639', 'PLG', 'Bulanan Lama 2 HP', 80000),
('C069', 'Hendra', 'RW.05 RT.03', '089513090589', '-', '3535', 'PLG', 'STB TV Only', 75000),
('C070', 'Sari Rizky sebelah Bang Arif', 'RW.01 RT.01', '0', '-', '8381', 'PLG', 'Bulanan Baru 1 HP', 50000),
('C071', 'Yudi KPLP', 'RW.01 RT.03', '08990420809', '-', '2124', 'PLG', 'Bulanan Baru 1 HP', 50000),
('C073', 'Pa Carkam', 'RW.02 RT.02', '0', '-', '3964', 'PLG', 'STB TV YT', 75000),
('C074', 'Eni Mamaih', 'RW.02 RT.03', '0', '-', '3781', 'PLG', 'Bulanan Baru 2 HP', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'Administrator'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'Riyadhul Jannah', 'warkop', 's1l1w4ng1', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tagihan`
--

CREATE TABLE `tb_tagihan` (
  `id_tagihan` int(11) NOT NULL,
  `bulan` varchar(3) NOT NULL,
  `tahun` year(4) NOT NULL,
  `id_pelanggan` varchar(6) NOT NULL,
  `tagihan` int(11) NOT NULL,
  `status` enum('BL','LS') NOT NULL,
  `tgl_bayar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tagihan`
--

INSERT INTO `tb_tagihan` (`id_tagihan`, `bulan`, `tahun`, `id_pelanggan`, `tagihan`, `status`, `tgl_bayar`) VALUES
(390, '01', 2024, 'C001', 120000, 'BL', '0000-00-00'),
(391, '01', 2024, 'C002', 130000, 'BL', '0000-00-00'),
(392, '01', 2024, 'C003', 80000, 'LS', '2024-01-15'),
(393, '01', 2024, 'C004', 120000, 'BL', '0000-00-00'),
(394, '01', 2024, 'C005', 85000, 'BL', '0000-00-00'),
(396, '01', 2024, 'C007', 120000, 'BL', '0000-00-00'),
(397, '01', 2024, 'C009', 40000, 'LS', '2024-01-15'),
(398, '01', 2024, 'C010', 100000, 'LS', '2024-01-15'),
(399, '01', 2024, 'C011', 80000, 'BL', '0000-00-00'),
(400, '01', 2024, 'C012', 50000, 'LS', '2024-01-15'),
(401, '01', 2024, 'C013', 40000, 'BL', '0000-00-00'),
(402, '01', 2024, 'C014', 100000, 'BL', '0000-00-00'),
(403, '01', 2024, 'C015', 120000, 'BL', '0000-00-00'),
(404, '01', 2024, 'C016', 130000, 'BL', '0000-00-00'),
(405, '01', 2024, 'C017', 85000, 'LS', '2024-01-15'),
(406, '01', 2024, 'C018', 80000, 'BL', '0000-00-00'),
(407, '01', 2024, 'C019', 40000, 'LS', '2024-01-15'),
(408, '01', 2024, 'C021', 130000, 'BL', '0000-00-00'),
(409, '01', 2024, 'C022', 195000, 'BL', '0000-00-00'),
(410, '01', 2024, 'C023', 85000, 'BL', '0000-00-00'),
(411, '01', 2024, 'C024', 50000, 'BL', '0000-00-00'),
(412, '01', 2024, 'C025', 80000, 'BL', '0000-00-00'),
(413, '01', 2024, 'C026', 140000, 'BL', '0000-00-00'),
(414, '01', 2024, 'C027', 40000, 'BL', '0000-00-00'),
(415, '01', 2024, 'C028', 80000, 'BL', '0000-00-00'),
(417, '01', 2024, 'C030', 130000, 'BL', '0000-00-00'),
(418, '01', 2024, 'C031', 90000, 'BL', '0000-00-00'),
(420, '01', 2024, 'C033', 80000, 'BL', '0000-00-00'),
(421, '01', 2024, 'C034', 50000, 'BL', '0000-00-00'),
(422, '01', 2024, 'C035', 130000, 'LS', '2024-01-17'),
(423, '01', 2024, 'C037', 50000, 'BL', '0000-00-00'),
(424, '01', 2024, 'C038', 80000, 'BL', '0000-00-00'),
(425, '01', 2024, 'C039', 100000, 'BL', '0000-00-00'),
(427, '01', 2024, 'C042', 50000, 'LS', '2024-01-15'),
(428, '01', 2024, 'C043', 50000, 'LS', '2024-01-15'),
(429, '01', 2024, 'C045', 120000, 'BL', '0000-00-00'),
(430, '01', 2024, 'C046', 80000, 'BL', '0000-00-00'),
(431, '01', 2024, 'C047', 75000, 'LS', '2024-01-15'),
(432, '01', 2024, 'C048', 80000, 'BL', '0000-00-00'),
(433, '01', 2024, 'C049', 120000, 'BL', '0000-00-00'),
(434, '01', 2024, 'C050', 90000, 'BL', '0000-00-00'),
(435, '01', 2024, 'C051', 160000, 'BL', '0000-00-00'),
(436, '01', 2024, 'C052', 80000, 'BL', '0000-00-00'),
(437, '01', 2024, 'C054', 45000, 'BL', '0000-00-00'),
(438, '01', 2024, 'C055', 40000, 'BL', '0000-00-00'),
(439, '01', 2024, 'C056', 80000, 'BL', '0000-00-00'),
(440, '01', 2024, 'C060', 110000, 'BL', '0000-00-00'),
(442, '01', 2024, 'C062', 130000, 'BL', '0000-00-00'),
(443, '01', 2024, 'C063', 110000, 'BL', '0000-00-00'),
(444, '01', 2024, 'C064', 95000, 'BL', '0000-00-00'),
(445, '01', 2024, 'C065', 120000, 'BL', '0000-00-00'),
(447, '01', 2024, 'C067', 40000, 'BL', '0000-00-00'),
(448, '01', 2024, 'C068', 80000, 'BL', '0000-00-00'),
(449, '01', 2024, 'C069', 75000, 'BL', '0000-00-00'),
(450, '01', 2024, 'C070', 50000, 'BL', '0000-00-00'),
(451, '01', 2024, 'C071', 50000, 'BL', '0000-00-00'),
(453, '01', 2024, 'C073', 75000, 'BL', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bulan`
--
ALTER TABLE `tb_bulan`
  ADD PRIMARY KEY (`id_bulan`);

--
-- Indexes for table `tb_paket`
--
ALTER TABLE `tb_paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  ADD PRIMARY KEY (`id_tagihan`),
  ADD KEY `id_penghuni` (`id_pelanggan`),
  ADD KEY `bulan` (`bulan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  MODIFY `id_tagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  ADD CONSTRAINT `tb_tagihan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `tb_pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_tagihan_ibfk_2` FOREIGN KEY (`bulan`) REFERENCES `tb_bulan` (`id_bulan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
