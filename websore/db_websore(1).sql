-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2015 at 12:13 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL+AF8-MODE +AD0 +ACI-NO+AF8-AUTO+AF8-VALUE+AF8-ON+AF8-ZERO+ACIAOw
SET time+AF8-zone +AD0 +ACIAKw-00:00+ACIAOw


/+ACoAIQ-40101 SET +AEA-OLD+AF8-CHARACTER+AF8-SET+AF8-CLIENT+AD0AQABA-CHARACTER+AF8-SET+AF8-CLIENT +ACo-/+ADs
/+ACoAIQ-40101 SET +AEA-OLD+AF8-CHARACTER+AF8-SET+AF8-RESULTS+AD0AQABA-CHARACTER+AF8-SET+AF8-RESULTS +ACo-/+ADs
/+ACoAIQ-40101 SET +AEA-OLD+AF8-COLLATION+AF8-CONNECTION+AD0AQABA-COLLATION+AF8-CONNECTION +ACo-/+ADs
/+ACoAIQ-40101 SET NAMES utf8 +ACo-/+ADs

--
-- Database: +AGA-db+AF8-websore+AGA
--

-- --------------------------------------------------------

--
-- Table structure for table +AGA-admin+AGA
--

CREATE TABLE IF NOT EXISTS +AGA-admin+AGA (
+AGA-idadmin+AGA int(11) NOT NULL,
  +AGA-username+AGA varchar(40) NOT NULL,
  +AGA-password+AGA varchar(40) NOT NULL,
  +AGA-ket+AGA varchar(100) DEFAULT NULL
) ENGINE+AD0-InnoDB  DEFAULT CHARSET+AD0-latin1 AUTO+AF8-INCREMENT+AD0-6 +ADs

--
-- Dumping data for table +AGA-admin+AGA
--

INSERT INTO +AGA-admin+AGA (+AGA-idadmin+AGA, +AGA-username+AGA, +AGA-password+AGA, +AGA-ket+AGA) VALUES
(1, 'admin', '6f5d0ad4bc971cddc51a0c5f74bdf3fd', NULL),
(2, 'admin', '6f5d0ad4bc971cddc51a0c5f74bdf3fd', NULL),
(3, 'agung', 'agung', NULL),
(4, 'agung', 'agung', NULL),
(5, 'wedus', 'f970e2767d0cfe75876ea857f92e319b', 'as')+ADs

-- --------------------------------------------------------

--
-- Table structure for table +AGA-artikel+AGA
--

CREATE TABLE IF NOT EXISTS +AGA-artikel+AGA (
+AGA-id+AF8-artikel+AGA int(11) NOT NULL,
  +AGA-id+AF8-kategori+AGA int(11) NOT NULL,
  +AGA-judul+AGA varchar(255) NOT NULL,
  +AGA-isi+AGA text NOT NULL,
  +AGA-gambar+AGA varchar(255) NOT NULL
) ENGINE+AD0-InnoDB  DEFAULT CHARSET+AD0-latin1 AUTO+AF8-INCREMENT+AD0-5 +ADs

--
-- Dumping data for table +AGA-artikel+AGA
--

INSERT INTO +AGA-artikel+AGA (+AGA-id+AF8-artikel+AGA, +AGA-id+AF8-kategori+AGA, +AGA-judul+AGA, +AGA-isi+AGA, +AGA-gambar+AGA) VALUES
(3, 0, 'Agung', 'Biasa saja', ''),
(4, 0, 'Tess', 'Coba +ACEAIQAh', '')+ADs

-- --------------------------------------------------------

--
-- Table structure for table +AGA-kategori+AGA
--

CREATE TABLE IF NOT EXISTS +AGA-kategori+AGA (
+AGA-id+AF8-kategori+AGA int(11) NOT NULL,
  +AGA-nama+AF8-kategori+AGA varchar(255) NOT NULL
) ENGINE+AD0-InnoDB DEFAULT CHARSET+AD0-latin1 AUTO+AF8-INCREMENT+AD0-1 +ADs

-- --------------------------------------------------------

--
-- Table structure for table +AGA-news+AGA
--

CREATE TABLE IF NOT EXISTS +AGA-news+AGA (
+AGA-id+AF8-news+AGA int(11) NOT NULL,
  +AGA-judul+AGA varchar(255) NOT NULL,
  +AGA-isi+AGA text NOT NULL,
  +AGA-tanggal+AGA date NOT NULL,
  +AGA-gambar+AGA varchar(255) NOT NULL
) ENGINE+AD0-InnoDB  DEFAULT CHARSET+AD0-latin1 AUTO+AF8-INCREMENT+AD0-7 +ADs

--
-- Dumping data for table +AGA-news+AGA
--

INSERT INTO +AGA-news+AGA (+AGA-id+AF8-news+AGA, +AGA-judul+AGA, +AGA-isi+AGA, +AGA-tanggal+AGA, +AGA-gambar+AGA) VALUES
(4, 'Dejan Antonic ingin bisa kembali mencetak pemain muda layaknya Wawan dan Iman.', 'Persipasi Bandung Raya siap berkontribusi lebih untuk rumah baru mereka, Bekasi. Sebagaimana diketahui, klub yang awalnya bermarkas di Bandung dengan nama Pelita Bandung Raya itu kini sudah memperkenalkan diri menjadi Persipasi Bandung Raya dan memiliki homebase Stadion Patriot.+AFw-r+AFw-n+AFw-r+AFw-nThe Boys Are Back pun ingin bisa dipenuhi para pemain asli Bekasi. Di mana mereka siap mengorbitkan para pemain muda Bekasi suatu saat nanti.', '0000-00-00', ''),
(5, 'Coba ', 'Tes', '0000-00-00', ''),
(6, 'berhasil di news', 'Update di halaman umum', '0000-00-00', '')+ADs

-- --------------------------------------------------------

--
-- Table structure for table +AGA-sport+AGA
--

CREATE TABLE IF NOT EXISTS +AGA-sport+AGA (
+AGA-id+AF8-sport+AGA int(11) NOT NULL,
  +AGA-judul+AGA varchar(255) NOT NULL,
  +AGA-isi+AGA text NOT NULL,
  +AGA-gambar+AGA varchar(255) NOT NULL
) ENGINE+AD0-InnoDB  DEFAULT CHARSET+AD0-latin1 AUTO+AF8-INCREMENT+AD0-3 +ADs

--
-- Dumping data for table +AGA-sport+AGA
--

INSERT INTO +AGA-sport+AGA (+AGA-id+AF8-sport+AGA, +AGA-judul+AGA, +AGA-isi+AGA, +AGA-gambar+AGA) VALUES
(1, 'MU', 'Gallery: Magical Mata on song against Liverpool+AFw-r+AFw-n+AFw-r+AFw-nJuan Mata was the star of the show after scoring twice - including a Goal of the Season contender - to help Manchester United complete a memorable double over Liverpool at Anfield.+AFw-r+AFw-n+AFw-r+AFw-nIn a first-half display reminiscent of last weekend''s impressive performance against Tottenham, Louis van Gaal''s side flew out of the traps and were ahead when Mata finished calmly past Simon Mignolet, sending the travelling Reds fans into raptures.+AFw-r+AFw-n+AFw-r+AFw-nWhile the Spaniard''s strike will live long in the memory, his second just before the hour-mark will surely go down as one of the fixture''s great goals, as the midfielder executed an acrobatic volley from Angel Di Maria''s chipped pass to ultimately secure all three points.+AFw-r+AFw-n+AFw-r+AFw-nOfficial club photographers John and Matt Peters, alongside snappers from Getty Images, were on hand to capture every twist and turn in yet another classic encounter. +AFw-r+AFw-n+AFw-r+AFw-nRelive the victory by clicking the main image above.', ''),
(2, 'aaa', 'dfdfdsfdfsdf', '')+ADs

--
-- Indexes for dumped tables
--

--
-- Indexes for table +AGA-admin+AGA
--
ALTER TABLE +AGA-admin+AGA
 ADD PRIMARY KEY (+AGA-idadmin+AGA)+ADs

--
-- Indexes for table +AGA-artikel+AGA
--
ALTER TABLE +AGA-artikel+AGA
 ADD PRIMARY KEY (+AGA-id+AF8-artikel+AGA)+ADs

--
-- Indexes for table +AGA-kategori+AGA
--
ALTER TABLE +AGA-kategori+AGA
 ADD PRIMARY KEY (+AGA-id+AF8-kategori+AGA)+ADs

--
-- Indexes for table +AGA-news+AGA
--
ALTER TABLE +AGA-news+AGA
 ADD PRIMARY KEY (+AGA-id+AF8-news+AGA)+ADs

--
-- Indexes for table +AGA-sport+AGA
--
ALTER TABLE +AGA-sport+AGA
 ADD PRIMARY KEY (+AGA-id+AF8-sport+AGA)+ADs

--
-- AUTO+AF8-INCREMENT for dumped tables
--

--
-- AUTO+AF8-INCREMENT for table +AGA-admin+AGA
--
ALTER TABLE +AGA-admin+AGA
MODIFY +AGA-idadmin+AGA int(11) NOT NULL AUTO+AF8-INCREMENT,AUTO+AF8-INCREMENT+AD0-6+ADs
--
-- AUTO+AF8-INCREMENT for table +AGA-artikel+AGA
--
ALTER TABLE +AGA-artikel+AGA
MODIFY +AGA-id+AF8-artikel+AGA int(11) NOT NULL AUTO+AF8-INCREMENT,AUTO+AF8-INCREMENT+AD0-5+ADs
--
-- AUTO+AF8-INCREMENT for table +AGA-kategori+AGA
--
ALTER TABLE +AGA-kategori+AGA
MODIFY +AGA-id+AF8-kategori+AGA int(11) NOT NULL AUTO+AF8-INCREMENT+ADs
--
-- AUTO+AF8-INCREMENT for table +AGA-news+AGA
--
ALTER TABLE +AGA-news+AGA
MODIFY +AGA-id+AF8-news+AGA int(11) NOT NULL AUTO+AF8-INCREMENT,AUTO+AF8-INCREMENT+AD0-7+ADs
--
-- AUTO+AF8-INCREMENT for table +AGA-sport+AGA
--
ALTER TABLE +AGA-sport+AGA
MODIFY +AGA-id+AF8-sport+AGA int(11) NOT NULL AUTO+AF8-INCREMENT,AUTO+AF8-INCREMENT+AD0-3+ADs-