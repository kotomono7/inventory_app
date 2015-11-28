-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2015 at 01:22 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE IF NOT EXISTS `detail_transaksi` (
  `idtransaksi` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`idtransaksi`, `idproduk`, `quantity`) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 1, 1),
(2, 2, 1),
(3, 1, 1),
(4, 1, 1),
(4, 2, 1),
(5, 1, 1),
(5, 2, 1),
(6, 1, 1),
(6, 2, 1),
(7, 1, 4),
(7, 2, 1),
(8, 1, 2),
(8, 2, 1),
(9, 2, 1),
(9, 1, 1),
(10, 1, 2),
(10, 2, 1),
(12, 2, 1),
(13, 2, 1),
(14, 2, 1),
(15, 2, 1),
(16, 1, 10),
(16, 2, 1),
(17, 2, 6),
(18, 4, 5),
(19, 5, 4),
(20, 5, 2),
(21, 5, 2),
(22, 6, 1),
(23, 5, 1),
(23, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `idproduk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(200) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  PRIMARY KEY (`idproduk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `nama_produk`, `harga`, `stok`, `idkategori`) VALUES
(1, 'Indomie Goreng', 2500, 5, 1),
(2, 'Soffel Anti Nyamuk', 500, 20, 2),
(3, 'Kopi Kapal Api (Special Mix)', 1000, 0, 1),
(4, 'Minyak Sayur 1/2 Liter', 5500, 25, 1),
(5, 'Telor Ayam 1 Kg ', 25000, 91, 1),
(6, 'Gula Pasir 1 Kg', 10000, 23, 1),
(7, 'Tolak Angin Cair', 1000, 100, 1),
(9, 'Sarimi Isi 2', 3000, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `idtransaksi` int(11) NOT NULL AUTO_INCREMENT,
  `totalitems` int(11) NOT NULL,
  `totalcost` double NOT NULL,
  `bayar` double NOT NULL,
  `kembali` double NOT NULL,
  `date` date NOT NULL,
  `view` int(11) NOT NULL,
  PRIMARY KEY (`idtransaksi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`idtransaksi`, `totalitems`, `totalcost`, `bayar`, `kembali`, `date`, `view`) VALUES
(1, 2, 3000, 10000, 7000, '2015-09-26', 0),
(2, 2, 3000, 4000, 1000, '2015-09-26', 0),
(3, 1, 2500, 3000, 500, '2015-09-26', 0),
(4, 2, 3000, 20000, 17000, '2015-09-26', 0),
(5, 2, 3000, 5000, 2000, '2015-09-26', 0),
(6, 2, 3000, 8000, 5000, '2015-09-26', 0),
(7, 2, 10500, 11000, 500, '2015-09-26', 0),
(8, 2, 5500, 6000, 500, '2015-09-26', 0),
(9, 2, 3000, 3000, 0, '2015-09-26', 0),
(10, 2, 5500, 6000, 500, '2015-09-28', 0),
(11, 0, 0, 0, 0, '2015-09-28', 0),
(12, 1, 500, 1000, 500, '2015-09-28', 0),
(13, 1, 500, 1000, 500, '2015-09-28', 0),
(14, 1, 500, 500, 0, '2015-09-28', 0),
(15, 1, 500, 500, 0, '2015-09-28', 0),
(16, 2, 25500, 50000, 24500, '2015-09-29', 0),
(17, 1, 3000, 3000, 0, '2015-09-30', 0),
(18, 1, 27500, 30000, 2500, '2015-09-29', 0),
(19, 1, 100000, 100000, 0, '2015-09-29', 0),
(20, 1, 50000, 50000, 0, '2015-09-30', 0),
(21, 1, 50000, 100000, 50000, '2015-09-30', 0),
(22, 1, 10000, 10000, 0, '2015-09-30', 0),
(23, 2, 35000, 70000, 35000, '2015-11-28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama_lengkap` varchar(80) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `email`, `password`, `nama_lengkap`) VALUES
(1, 'meddmed', 'medianto.jaelani@gmail.com', 'mamapapa', 'Medianto Jaelani'),
(2, 'admin', 'admin@localhost', 'admin', 'Administrator');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
