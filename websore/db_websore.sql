-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2015 at 12:11 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_websore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`idadmin` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `ket` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `ket`) VALUES
(1, 'admin', '6f5d0ad4bc971cddc51a0c5f74bdf3fd', NULL),
(2, 'admin', '6f5d0ad4bc971cddc51a0c5f74bdf3fd', NULL),
(3, 'agung', 'agung', NULL),
(4, 'agung', 'agung', NULL),
(5, 'wedus', 'f970e2767d0cfe75876ea857f92e319b', 'as');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
`id_artikel` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `id_kategori`, `judul`, `isi`, `gambar`) VALUES
(3, 0, 'Agung', 'Biasa saja', ''),
(4, 0, 'Tess', 'Coba !!!', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id_news` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `judul`, `isi`, `tanggal`, `gambar`) VALUES
(4, 'Dejan Antonic ingin bisa kembali mencetak pemain muda layaknya Wawan dan Iman.', 'Persipasi Bandung Raya siap berkontribusi lebih untuk rumah baru mereka, Bekasi. Sebagaimana diketahui, klub yang awalnya bermarkas di Bandung dengan nama Pelita Bandung Raya itu kini sudah memperkenalkan diri menjadi Persipasi Bandung Raya dan memiliki homebase Stadion Patriot.\r\n\r\nThe Boys Are Back pun ingin bisa dipenuhi para pemain asli Bekasi. Di mana mereka siap mengorbitkan para pemain muda Bekasi suatu saat nanti.', '0000-00-00', ''),
(5, 'Coba ', 'Tes', '0000-00-00', ''),
(6, 'berhasil di news', 'Update di halaman umum', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE IF NOT EXISTS `sport` (
`id_sport` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`id_sport`, `judul`, `isi`, `gambar`) VALUES
(1, 'MU', 'Gallery: Magical Mata on song against Liverpool\r\n\r\nJuan Mata was the star of the show after scoring twice - including a Goal of the Season contender - to help Manchester United complete a memorable double over Liverpool at Anfield.\r\n\r\nIn a first-half display reminiscent of last weekend''s impressive performance against Tottenham, Louis van Gaal''s side flew out of the traps and were ahead when Mata finished calmly past Simon Mignolet, sending the travelling Reds fans into raptures.\r\n\r\nWhile the Spaniard''s strike will live long in the memory, his second just before the hour-mark will surely go down as one of the fixture''s great goals, as the midfielder executed an acrobatic volley from Angel Di Maria''s chipped pass to ultimately secure all three points.\r\n\r\nOfficial club photographers John and Matt Peters, alongside snappers from Getty Images, were on hand to capture every twist and turn in yet another classic encounter. \r\n\r\nRelive the victory by clicking the main image above.', ''),
(2, 'aaa', 'dfdfdsfdfsdf', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
 ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id_news`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
 ADD PRIMARY KEY (`id_sport`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sport`
--
ALTER TABLE `sport`
MODIFY `id_sport` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
