-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 15. April 2013 jam 04:10
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pro_komar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `AdminID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `AdminNama` varchar(200) NOT NULL,
  `HashPassword` varchar(300) NOT NULL,
  PRIMARY KEY (`AdminID`),
  UNIQUE KEY `AdminID` (`AdminID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`AdminID`, `AdminNama`, `HashPassword`) VALUES
(1, 'andy', '69a47bfe08132dbae9ea3c36c4ae6c17aa711f5c3ce6180d54ad9c73a6e2ea5a45c2b7b9'),
(2, 'azka', '69a47bfe08132dbae9ea3c36c4ae6c17aa711f5c3ce6180d54ad9c73a6e2ea5a45c2b7b9'),
(3, 'fajrin', '69a47bfe08132dbae9ea3c36c4ae6c17aa711f5c3ce6180d54ad9c73a6e2ea5a45c2b7b9');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `id_karyawan` mediumint(9) NOT NULL AUTO_INCREMENT,
  `nama_karyawan` varchar(30) DEFAULT NULL,
  `jabatan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_karyawan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `jabatan`) VALUES
(1, 'Fajrin', 'Satpam'),
(2, 'Jelani Hart', 'Penjualan'),
(3, 'Graiden Tyson', 'Satpam'),
(4, 'Lucas Stephenson', 'Produksi'),
(5, 'Elmo Moreno', 'Satpam'),
(6, 'Alexander Gamble', 'Desain'),
(7, 'Mannix Peterson', 'Produksi'),
(8, 'Rashad Pope', 'Satpam'),
(9, 'Berk Shaw', 'Desain'),
(10, 'Jared Carr', 'Produksi'),
(11, 'Wing Acevedo', 'Desain'),
(12, 'Harrison Foster', 'Satpam'),
(13, 'Callum Hensley', 'Penjualan'),
(14, 'Myles Lott', 'Desain'),
(15, 'Keith Harris', 'Penjualan'),
(16, 'Sawyer Crosby', 'Satpam'),
(17, 'Griffith Perry', 'Penjualan'),
(18, 'Leo Spencer', 'Penjualan'),
(19, 'Asher Shepard', 'Satpam'),
(20, 'Lyle Erickson', 'Desain'),
(21, 'Beau Mcclure', 'Produksi'),
(22, 'Sebastian Randall', 'Penjualan'),
(23, 'Garrison Fry', 'Desain'),
(24, 'Clayton Terrell', 'Penjualan'),
(25, 'Cole Mays', 'Satpam'),
(26, 'Zachary Taylor', 'Desain'),
(27, 'Yasir Cortez', 'Satpam'),
(28, 'Porter Rojas', 'Desain'),
(29, 'Flynn Murray', 'Satpam'),
(30, 'Otto Rush', 'Desain'),
(31, 'Giacomo Mccarty', 'Penjualan'),
(32, 'Alfonso Romero', 'Penjualan'),
(33, 'Leroy Holt', 'Produksi'),
(34, 'Clarke Stout', 'Produksi'),
(35, 'Sean Holder', 'Produksi'),
(36, 'Oren Mckee', 'Penjualan'),
(37, 'Brent Wiggins', 'Satpam'),
(38, 'Fritz Beach', 'Satpam'),
(39, 'Hop Payne', 'Penjualan'),
(40, 'Edward Robles', 'Penjualan'),
(41, 'Scott Gates', 'Desain'),
(42, 'Drew Hartman', 'Desain'),
(43, 'Orlando Duncan', 'Produksi'),
(44, 'Nathan Mueller', 'Desain'),
(45, 'Ryan Potter', 'Satpam'),
(46, 'Declan Bright', 'Satpam'),
(47, 'Vernon Sawyer', 'Produksi'),
(48, 'Benjamin Leach', 'Penjualan'),
(49, 'Ryan Miller', 'Penjualan'),
(50, 'Cedric Jensen', 'Penjualan'),
(51, 'Duncan Goff', 'Satpam'),
(52, 'Quinlan Barber', 'Produksi'),
(53, 'Reuben Salazar', 'Produksi'),
(54, 'Duncan Sexton', 'Satpam'),
(55, 'Clarke Anderson', 'Desain'),
(56, 'Damon Francis', 'Penjualan'),
(57, 'Abdul Butler', 'Satpam'),
(58, 'Dieter England', 'Desain'),
(59, 'Valentine Gibbs', 'Produksi'),
(60, 'Yardley Bishop', 'Desain'),
(61, 'Lawrence Randall', 'Penjualan'),
(62, 'Andrew Cross', 'Produksi'),
(63, 'Zahir Fuentes', 'Desain'),
(64, 'Amery Horn', 'Satpam'),
(65, 'Clark Townsend', 'Desain'),
(66, 'Francis Campbell', 'Satpam'),
(67, 'Zachery Stout', 'Desain'),
(68, 'Dominic Frank', 'Satpam'),
(69, 'Baker Hurst', 'Desain'),
(70, 'Oren Finley', 'Produksi'),
(71, 'Aladdin Atkins', 'Produksi'),
(72, 'Roth Ortiz', 'Penjualan'),
(73, 'Zane Maldonado', 'Penjualan'),
(74, 'Mason Payne', 'Produksi'),
(75, 'Omar Rutledge', 'Produksi'),
(76, 'Daquan Hester', 'Satpam'),
(77, 'Kieran Gomez', 'Penjualan'),
(78, 'Harding Mcconnell', 'Satpam'),
(79, 'Elliott Price', 'Produksi'),
(80, 'Jerome Shannon', 'Penjualan'),
(81, 'Anthony Hancock', 'Satpam'),
(82, 'Gray Whitney', 'Satpam'),
(83, 'Nathan Giles', 'Produksi'),
(84, 'Dylan Hardin', 'Produksi'),
(85, 'Rudyard Young', 'Desain'),
(86, 'Alexander Benton', 'Penjualan'),
(87, 'Julian West', 'Satpam'),
(88, 'Burke Gallagher', 'Satpam'),
(89, 'Tucker Garcia', 'Desain'),
(90, 'Jacob Stanley', 'Satpam'),
(91, 'Raphael Alford', 'Penjualan'),
(92, 'Myles Pate', 'Penjualan'),
(93, 'Elijah Dennis', 'Satpam'),
(94, 'Colton Madden', 'Satpam'),
(95, 'Jonas Robbins', 'Produksi'),
(96, 'Quentin Hooper', 'Satpam'),
(97, 'Orson Dotson', 'Satpam'),
(98, 'Carson Wolf', 'Penjualan'),
(99, 'Cruz Buckner', 'Penjualan'),
(100, 'Aquila Barrett', 'Satpam'),
(101, 'Damon Bennett', 'Produksi'),
(102, 'Adam Long', 'Desain'),
(103, 'Arden Weiss', 'Produksi'),
(104, 'Caldwell Sparks', 'Satpam'),
(105, 'Thane Ballard', 'Penjualan'),
(106, 'Dolan Solis', 'Desain'),
(107, 'Rafael Miranda', 'Desain'),
(108, 'Hedley Johnston', 'Penjualan'),
(109, 'Tyler Watts', 'Satpam'),
(110, 'Tate Gallegos', 'Satpam'),
(111, 'Cadman Albert', 'Satpam'),
(112, 'Zeph Curtis', 'Penjualan'),
(113, 'Andrew Nieves', 'Desain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `motif_batik`
--

CREATE TABLE IF NOT EXISTS `motif_batik` (
  `kode_motif` varchar(20) NOT NULL,
  `nama_pembuat` varchar(30) DEFAULT NULL,
  `tanggal_dibuat` date DEFAULT NULL,
  `kategori` varchar(20) NOT NULL,
  PRIMARY KEY (`kode_motif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `motif_batik`
--

INSERT INTO `motif_batik` (`kode_motif`, `nama_pembuat`, `tanggal_dibuat`, `kategori`) VALUES
('1', 'Wade Y. Singleton', '2007-10-19', 'CAP'),
('10', 'Anjolie R. Stout', '2010-11-02', 'CAP'),
('100', 'Jayme V. Bolton', '2007-04-22', 'CAP'),
('101', 'Jeanette E. Cleveland', '2005-02-21', 'CAP'),
('102', 'Maya S. Jackson', '2001-07-14', 'CAP'),
('103', 'Aaron B. Reyes', '2003-12-26', 'CAP'),
('104', 'Justin J. Wynn', '2003-09-23', 'CAP'),
('105', 'Calvin F. Pennington', '2013-05-04', 'CAP'),
('106', 'Brendan O. Dickson', '2012-06-30', 'CAP'),
('107', 'Rana C. Harper', '2002-07-25', 'CAP'),
('108', 'Tara B. Hutchinson', '2000-06-15', 'CAP'),
('109', 'Mallory N. Abbott', '2011-06-30', 'CAP'),
('11', 'Tatyana N. Schroeder', '2001-08-24', 'CAP'),
('110', 'Upton P. James', '2004-09-26', 'CAP'),
('111', 'Price U. Walton', '2002-06-06', 'CAP'),
('112', 'Uriel G. Mcintosh', '2000-06-02', 'CAP'),
('113', 'Malik A. Mcintyre', '2000-11-13', 'CAP'),
('12', 'Serina L. Mccoy', '2011-06-17', 'CAP'),
('13', 'Yolanda U. Duffy', '2010-03-14', 'CAP'),
('14', 'Jocelyn L. Villarreal', '2013-03-13', 'CAP'),
('15', 'Rhea B. Reeves', '2008-12-20', 'CAP'),
('16', 'Joan M. Kent', '2000-05-19', 'CAP'),
('17', 'Hall E. Giles', '2008-05-31', 'CAP'),
('18', 'Marshall Q. Mccormick', '2012-01-06', 'CAP'),
('19', 'Cullen J. Roberson', '2009-06-06', 'CAP'),
('2', 'Priscilla D. Vazquez', '2013-11-16', 'CAP'),
('20', 'Quemby G. Sharp', '2010-04-07', 'CAP'),
('21', 'Igor B. Potter', '2004-10-14', 'CAP'),
('22', 'Veda Q. Mays', '2013-11-05', 'CAP'),
('23', 'Grant X. Maldonado', '2003-01-13', 'CAP'),
('24', 'Camilla V. Barron', '2003-05-09', 'CAP'),
('25', 'Lewis P. Sherman', '2003-01-02', 'CAP'),
('26', 'Megan C. Gardner', '2002-07-27', 'CAP'),
('27', 'Brian K. Park', '2008-06-27', 'CAP'),
('28', 'Emma A. Goff', '2001-01-03', 'CAP'),
('29', 'Vielka U. Maxwell', '2007-11-30', 'CAP'),
('3', 'Merrill N. Green', '2010-04-26', 'CAP'),
('30', 'Emerald Q. Gilbert', '2006-03-23', 'CAP'),
('31', 'Kelly J. Reyes', '2010-03-04', 'CAP'),
('32', 'Levi Y. Osborn', '2007-02-22', 'CAP'),
('33', 'Daria M. Beasley', '2002-12-15', 'CAP'),
('34', 'Cairo N. Crosby', '2003-05-09', 'CAP'),
('35', 'Yen J. Salas', '2006-09-11', 'CAP'),
('36', 'Lacey S. Jackson', '2010-01-12', 'CAP'),
('37', 'Marvin K. Mcdowell', '2013-01-30', 'CAP'),
('38', 'Aspen T. Talley', '2009-09-29', 'CAP'),
('39', 'Aurora I. Sellers', '2002-10-29', 'CAP'),
('4', 'Mikayla I. Morse', '2001-02-05', 'CAP'),
('40', 'Sonia R. Bush', '2003-06-18', 'CAP'),
('41', 'Jocelyn K. Myers', '2010-12-26', 'CAP'),
('42', 'September C. Dudley', '2004-01-09', 'TULIS'),
('43', 'Quynn E. Kerr', '2011-06-02', 'TULIS'),
('44', 'Desiree J. Morgan', '2009-06-17', 'TULIS'),
('45', 'Remedios E. Mercado', '2005-11-06', 'TULIS'),
('46', 'Cassady Q. Coffey', '2003-09-19', 'TULIS'),
('47', 'Stacy G. Shannon', '2008-01-25', 'TULIS'),
('48', 'Donovan D. Travis', '2001-06-02', 'TULIS'),
('49', 'Alan Z. Wong', '2012-09-20', 'TULIS'),
('5', 'Samson R. Michael', '2007-01-21', 'TULIS'),
('50', 'Gary C. Singleton', '2008-12-16', 'TULIS'),
('51', 'Abdul T. Gibbs', '2010-04-20', 'TULIS'),
('52', 'Ignatius A. Clay', '2010-01-02', 'TULIS'),
('53', 'Kelly N. Watson', '2006-02-03', 'TULIS'),
('54', 'Neve D. Cross', '2006-01-19', 'TULIS'),
('55', 'Autumn T. Albert', '2003-03-13', 'TULIS'),
('56', 'Dieter Y. Clayton', '2004-12-16', 'TULIS'),
('57', 'Uma U. Barton', '2005-07-11', 'TULIS'),
('58', 'Carson R. Fuller', '2002-02-05', 'TULIS'),
('59', 'Eric R. Gillespie', '2011-01-23', 'TULIS'),
('6', 'Paki X. Hayden', '2008-10-05', 'TULIS'),
('60', 'Dolan N. Oliver', '2008-06-28', 'TULIS'),
('61', 'Grady W. Olson', '2012-04-09', 'TULIS'),
('62', 'Bo A. Bruce', '2002-03-07', 'TULIS'),
('63', 'Branden Z. Morgan', '2013-03-23', 'TULIS'),
('64', 'Lysandra F. Glass', '2005-11-19', 'TULIS'),
('65', 'Portia F. Hinton', '2013-06-10', 'TULIS'),
('66', 'Kasper J. Ortiz', '2013-07-11', 'TULIS'),
('67', 'Jarrod L. Meadows', '2001-12-23', 'TULIS'),
('68', 'Darryl T. Robbins', '2001-03-09', 'TULIS'),
('69', 'Vanna C. Blevins', '2012-07-28', 'TULIS'),
('7', 'Serina H. Payne', '2002-01-26', 'TULIS'),
('70', 'Lila T. Golden', '2006-12-31', 'TULIS'),
('71', 'Bree L. Patrick', '2006-09-05', 'TULIS'),
('72', 'Xerxes O. Saunders', '2011-04-30', 'TULIS'),
('73', 'Abel F. Wall', '2002-11-24', 'TULIS'),
('74', 'Yuri O. Lynn', '2004-11-06', 'TULIS'),
('75', 'Celeste Z. Franklin', '2007-06-28', 'TULIS'),
('76', 'Halla R. Sellers', '2010-03-23', 'TULIS'),
('77', 'Phillip H. Flores', '2003-06-04', 'TULIS'),
('78', 'Chaim B. Logan', '2009-10-24', 'TULIS'),
('79', 'Unity D. Jacobson', '2007-02-20', 'TULIS'),
('8', 'David P. Hurley', '2014-03-19', 'TULIS'),
('80', 'Abra M. Bernard', '2013-06-23', 'TULIS'),
('81', 'Quintessa E. Cohen', '2007-02-24', 'TULIS'),
('82', 'Craig A. Castillo', '2001-02-07', 'TULIS'),
('83', 'Rashad Y. Chambers', '2008-09-28', 'TULIS'),
('84', 'Zachery M. Carey', '2000-11-01', 'TULIS'),
('85', 'Kelly U. Fulton', '2009-05-14', 'TULIS'),
('86', 'Justina Q. Owens', '2000-11-26', 'TULIS'),
('87', 'Caryn Y. Howe', '2005-10-06', 'TULIS'),
('88', 'Isaac M. Miles', '2006-12-02', 'TULIS'),
('89', 'Jonas Y. Lucas', '2002-02-09', 'TULIS'),
('9', 'Chester O. Perry', '2005-11-17', 'TULIS'),
('90', 'Madeline A. Macdonald', '2004-06-02', 'TULIS'),
('91', 'Bernard E. Galloway', '2004-05-20', 'TULIS'),
('92', 'Elaine I. Lowery', '2008-07-26', 'TULIS'),
('93', 'Elmo N. Gates', '2010-09-04', 'TULIS'),
('94', 'Dale Q. Fuller', '2004-05-29', 'TULIS'),
('95', 'Odysseus Z. Sloan', '2013-03-30', 'TULIS'),
('96', 'Kathleen R. Grant', '2006-01-20', 'TULIS'),
('97', 'Cally C. Lawson', '2006-09-26', 'TULIS'),
('98', 'Athena T. Whitley', '2004-06-04', 'TULIS'),
('99', 'Kendall H. Hull', '2013-10-16', 'TULIS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `motif_batik_cap`
--

CREATE TABLE IF NOT EXISTS `motif_batik_cap` (
  `kode_motif` varchar(20) DEFAULT NULL,
  `nama_motif` varchar(50) DEFAULT NULL,
  KEY `motif_batik_cap_ibfk_1` (`kode_motif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `motif_batik_cap`
--

INSERT INTO `motif_batik_cap` (`kode_motif`, `nama_motif`) VALUES
('1', 'Cap Rama Wijaya 2010'),
('10', 'Cap Hanoman 1999'),
('100', 'Cap Batara Surya 2010'),
('101', 'Cap Kresna 2005'),
('102', 'Cap Batara Wisnu 2012'),
('103', 'Cap Batara Indra 1994'),
('104', 'Cap Hanoman 2003'),
('105', 'Cap Sangkuni 2007'),
('106', 'Cap Anjani 2003'),
('107', 'Cap Sangkuni 1999'),
('108', 'Cap Arjuna 2005'),
('109', 'Cap Arjuna 2002'),
('11', 'Cap Sangkuni 2004'),
('110', 'Cap Banowati 1998'),
('111', 'Cap Anjani 2011'),
('112', 'Cap Batara Indra 2012'),
('113', 'Cap Batara Indra 2011'),
('12', 'Cap Sadewa 1995'),
('13', 'Cap Rama 1995'),
('14', 'Cap Batara Surya 2009'),
('15', 'Cap Bima 1994'),
('16', 'Cap Pandu 2001'),
('17', 'Cap Gatotkaca 1995'),
('18', 'Cap Arjuna 2009'),
('19', 'Cap Laksmana 2003'),
('2', 'Cap Rama Wijaya 2010'),
('20', 'Cap Batara Surya 2006'),
('21', 'Cap Banowati 2002'),
('22', 'Cap Pandu 1997'),
('23', 'Cap Sangkuni 2007'),
('24', 'Cap Yudhistira 1993'),
('25', 'Cap Sadewa 2003'),
('26', 'Cap Kresna 1995'),
('27', 'Cap Sadewa 2009'),
('28', 'Cap Batara Wisnu 1996'),
('29', 'Cap Anjani 2002'),
('3', 'Cap Laksmana 1997'),
('30', 'Cap Anjani 1993'),
('31', 'Cap Batara Wisnu 1999'),
('32', 'Cap Hanoman 2003'),
('33', 'Cap Laksmana 2003'),
('34', 'Cap Nakula 1993'),
('35', 'Cap Batara Surya 2013'),
('36', 'Cap Anjani 2005'),
('37', 'Cap Arjuna 2012'),
('38', 'Cap Sadewa 1994'),
('39', 'Cap Sangkuni 2012'),
('4', 'Cap Kresna 2001'),
('40', 'Cap Hanoman 2003'),
('41', 'Cap Anjani 2007');

-- --------------------------------------------------------

--
-- Struktur dari tabel `motif_batik_tulis`
--

CREATE TABLE IF NOT EXISTS `motif_batik_tulis` (
  `kode_motif` varchar(20) DEFAULT NULL,
  `nama_motif` varchar(50) DEFAULT NULL,
  KEY `motif_batik_tulis_ibfk_1` (`kode_motif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `motif_batik_tulis`
--

INSERT INTO `motif_batik_tulis` (`kode_motif`, `nama_motif`) VALUES
('42', 'Tulis Antereja 2003'),
('43', 'Tulis Batara Indra 2004'),
('44', 'Tulis Rama Wijaya 2005'),
('45', 'Tulis Batara Guru 1993'),
('46', 'Tulis Antereja 2006'),
('47', 'Tulis Batara Guru 2008'),
('48', 'Tulis Yudhistira 2011'),
('49', 'Tulis Anjani 1993'),
('5', 'Tulis Gatotkaca 2007'),
('50', 'Tulis Pandu 2012'),
('51', 'Tulis Kresna 1994'),
('52', 'Tulis Pandu 2012'),
('53', 'Tulis Rama Wijaya 2012'),
('54', 'Tulis Gatotkaca 1997'),
('55', 'Tulis Anjani 2011'),
('56', 'Tulis Batara Wisnu 1993'),
('57', 'Tulis Batara Surya 2013'),
('58', 'Tulis Banowati 1997'),
('59', 'Tulis Anggada 2009'),
('6', 'Tulis Batara Surya 1996'),
('60', 'Tulis Shinta 2012'),
('61', 'Tulis Anggada 1999'),
('62', 'Tulis Anggada 2009'),
('63', 'Tulis Baladewa 1993'),
('64', 'Tulis Arjuna 1993'),
('65', 'Tulis Laksmana 1997'),
('66', 'Tulis Antereja 1997'),
('67', 'Tulis Anggada 1993'),
('68', 'Tulis Nakula 1993'),
('69', 'Tulis Rama Wijaya 2002'),
('7', 'Tulis Baladewa 2011'),
('70', 'Tulis Abimanyu 2007'),
('71', 'Tulis Anggada 2009'),
('72', 'Tulis Shinta 2006'),
('73', 'Tulis Sangkuni 1994'),
('74', 'Tulis Laksmana 2011'),
('75', 'Tulis Sangkuni 1999'),
('76', 'Tulis Rama 2011'),
('77', 'Tulis Hanoman 2013'),
('78', 'Tulis Pandu 2001'),
('79', 'Tulis Baladewa 2001'),
('8', 'Tulis Yudhistira 2005'),
('80', 'Tulis Batara Indra 1996'),
('81', 'Tulis Gatotkaca 2005'),
('82', 'Tulis Laksmana 2007'),
('83', 'Tulis Anjani 2004'),
('84', 'Tulis Anjani 2012'),
('85', 'Tulis Batara Indra 2006'),
('86', 'Tulis Bima 2009'),
('87', 'Tulis Anjani 2005'),
('88', 'Tulis Baladewa 2004'),
('89', 'Tulis Rama 1996'),
('9', 'Tulis Rama Wijaya 1993'),
('90', 'Tulis Hanoman 1999'),
('91', 'Tulis Sadewa 2007'),
('92', 'Tulis Anggada 2006'),
('93', 'Tulis Rama Wijaya 2003'),
('94', 'Tulis Bima 1999'),
('95', 'Tulis Baladewa 1994'),
('96', 'Tulis Hanoman 1995'),
('97', 'Tulis Gatotkaca 2010'),
('98', 'Tulis Anjani 2009'),
('99', 'Tulis Anggada 2002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_batik`
--

CREATE TABLE IF NOT EXISTS `order_batik` (
  `nomor_pesanan` int(11) NOT NULL,
  `id_produk` mediumint(9) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  KEY `order_batik_ibfk_1` (`nomor_pesanan`),
  KEY `order_batik_ibfk_2` (`id_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order_batik`
--

INSERT INTO `order_batik` (`nomor_pesanan`, `id_produk`, `quantity`) VALUES
(1, 63, 9),
(1, 5, 12),
(2, 84, 10),
(2, 28, 1),
(3, 19, 4),
(3, 10, 5),
(4, 86, 2),
(4, 52, 4),
(5, 104, 2),
(5, 88, 10),
(6, 102, 5),
(6, 99, 13),
(7, 37, 1),
(7, 97, 10),
(8, 23, 13),
(8, 77, 8),
(9, 34, 7),
(9, 37, 13),
(10, 63, 9),
(10, 74, 8),
(11, 111, 13),
(11, 112, 3),
(12, 110, 8),
(12, 5, 11),
(13, 33, 11),
(13, 69, 4),
(14, 32, 11),
(14, 88, 10),
(15, 83, 6),
(15, 5, 7),
(16, 84, 9),
(16, 94, 3),
(17, 41, 9),
(17, 92, 13),
(18, 38, 7),
(18, 15, 5),
(19, 99, 11),
(19, 2, 2),
(20, 37, 8),
(20, 21, 6),
(21, 63, 6),
(21, 44, 13),
(22, 61, 3),
(22, 64, 1),
(23, 66, 10),
(23, 71, 11),
(24, 66, 13),
(24, 22, 1),
(25, 98, 6),
(25, 16, 7),
(26, 7, 8),
(26, 53, 8),
(27, 62, 5),
(27, 88, 2),
(28, 63, 2),
(28, 19, 7),
(29, 58, 12),
(29, 98, 8),
(30, 35, 1),
(30, 12, 12),
(31, 47, 3),
(31, 53, 8),
(32, 68, 4),
(32, 60, 13),
(33, 65, 9),
(33, 52, 5),
(34, 34, 6),
(34, 23, 10),
(35, 63, 1),
(35, 104, 5),
(36, 26, 6),
(36, 82, 10),
(37, 96, 7),
(37, 63, 11),
(38, 94, 6),
(38, 35, 11),
(39, 44, 12),
(39, 23, 6),
(40, 22, 13),
(40, 38, 6),
(41, 3, 6),
(41, 32, 5),
(42, 19, 1),
(42, 50, 5),
(43, 113, 2),
(43, 102, 8),
(44, 64, 7),
(44, 95, 10),
(45, 3, 1),
(45, 3, 8),
(46, 25, 4),
(46, 37, 1),
(47, 54, 13),
(47, 1, 2),
(48, 31, 7),
(48, 100, 6),
(49, 106, 3),
(49, 74, 2),
(50, 69, 9),
(50, 34, 5),
(51, 33, 12),
(51, 24, 3),
(52, 40, 6),
(52, 1, 9),
(53, 3, 2),
(53, 10, 2),
(54, 19, 3),
(54, 66, 6),
(55, 113, 7),
(55, 38, 3),
(56, 107, 2),
(56, 108, 9),
(57, 23, 10),
(57, 13, 7),
(58, 4, 3),
(58, 72, 13),
(59, 50, 7),
(59, 58, 6),
(60, 78, 1),
(60, 96, 3),
(61, 2, 12),
(61, 73, 3),
(62, 15, 5),
(62, 80, 3),
(63, 26, 10),
(63, 38, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` mediumint(9) NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(30) DEFAULT NULL,
  `alamat_pelanggan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`) VALUES
(1, 'Lillith Cochran', 'P.O. Box 616, 406 Convallis Rd.'),
(2, 'Kyla Griffith', '419-9543 Varius Av.'),
(3, 'Ora Wyatt', 'Ap #737-218 Et Rd.'),
(4, 'Teagan Crawford', '7406 Risus. St.'),
(5, 'Echo Woodard', 'Ap #109-6047 Mauris Ave'),
(6, 'Aimee Burns', 'Ap #585-4840 Odio. St.'),
(7, 'Julie Whitley', 'Ap #843-746 In Road'),
(8, 'Clio Knapp', '986-2532 Odio. St.'),
(9, 'Lucy Spears', '8124 Dolor. Av.'),
(10, 'Lillith Hernandez', '948-3583 Ac St.'),
(11, 'Kai Mcdaniel', 'P.O. Box 871, 7874 Varius Avenue'),
(12, 'Kalia Lowe', 'Ap #206-3223 Massa Rd.'),
(13, 'Wyoming Lindsey', 'P.O. Box 247, 1981 Sit St.'),
(14, 'Wynne Alvarez', '839-7158 Dolor Rd.'),
(15, 'Shelly Rice', '960-2881 Et Street'),
(16, 'Isabella Sandoval', '709-4316 Et Av.'),
(17, 'Bo Rose', '137-2809 Suspendisse St.'),
(18, 'Joan Cox', 'P.O. Box 517, 9466 Est, Road'),
(19, 'Melinda Figueroa', 'P.O. Box 751, 8358 Sed Rd.'),
(20, 'Iona Oconnor', '263-6988 Vulputate Av.'),
(21, 'Shelley Solis', 'Ap #876-378 Dolor. Avenue'),
(22, 'Zelenia Tran', 'P.O. Box 789, 8513 Massa. Road'),
(23, 'Hadley Dean', 'Ap #509-4912 Risus. Avenue'),
(24, 'Lesley Clemons', '4411 Ligula. Avenue'),
(25, 'Rebekah Goodwin', 'P.O. Box 528, 6002 Pretium Rd.'),
(26, 'Chanda Cain', 'P.O. Box 427, 5034 Quis St.'),
(27, 'Leandra Jensen', '4990 Per Road'),
(28, 'Colette Rojas', '617-8386 Urna Rd.'),
(29, 'Macy Lopez', '145-6507 Est. St.'),
(30, 'Riley Dunn', '328-8530 Fringilla. Road'),
(31, 'Mariko Gutierrez', '6946 Eget St.'),
(32, 'Imani Gibbs', 'Ap #358-8906 Tellus. Av.'),
(33, 'Clare Marks', 'P.O. Box 106, 7322 Sodales St.'),
(34, 'Chiquita Garrett', 'P.O. Box 134, 9574 A, Av.'),
(35, 'Kiona Ingram', 'P.O. Box 623, 5883 Euismod Road'),
(36, 'Cynthia Knowles', '7769 Tempus Rd.'),
(37, 'Kalia Haney', 'Ap #661-8317 Habitant Road'),
(38, 'Maite Robertson', '1741 Aliquam Road'),
(39, 'Britanni Ruiz', '8088 Libero St.'),
(40, 'Maris Wilcox', 'Ap #783-9242 Phasellus Ave'),
(41, 'Ann Barber', '9955 Dis Avenue'),
(42, 'Felicia Stein', '271-4836 Maecenas Av.'),
(43, 'Evangeline Bailey', 'P.O. Box 946, 537 Ipsum Street'),
(44, 'Karyn Bridges', 'Ap #794-4719 Lacus. Street'),
(45, 'Jena Gallagher', '335-8827 Ipsum Road'),
(46, 'Fay Bishop', '2457 Nibh. Rd.'),
(47, 'Jenna Hood', 'Ap #511-7431 Neque Avenue'),
(48, 'Winter Moss', 'P.O. Box 803, 8059 Nascetur St.'),
(49, 'Jane Kline', '8982 Nam Avenue'),
(50, 'Britanni Frank', 'P.O. Box 610, 4582 Ac Road'),
(51, 'Aretha Cardenas', 'Ap #850-7359 Proin Street'),
(52, 'Kessie Luna', 'Ap #858-9283 Tempor Street'),
(53, 'Kessie Winters', '294-8871 Neque. Street'),
(54, 'Gail Chan', '156-8060 Sit Road'),
(55, 'Mia Miranda', '6560 Quis Ave'),
(56, 'Alika Graham', '445 In Ave'),
(57, 'Willow Bruce', 'P.O. Box 142, 7763 Ante, Av.'),
(58, 'Phoebe Grant', 'P.O. Box 534, 1325 Dictum Avenue'),
(59, 'Alice Travis', 'Ap #325-7217 Dictum St.'),
(60, 'Xaviera William', 'P.O. Box 862, 1143 Est Rd.'),
(61, 'Quynn Patterson', '6838 Rhoncus Ave'),
(62, 'Kiayada Small', 'Ap #177-4712 Faucibus Street'),
(63, 'Leila Garrison', '868-2851 Lobortis Ave'),
(64, 'Jessamine Marsh', 'Ap #552-6591 Gravida St.'),
(65, 'Carissa Klein', '290-4000 Lorem, Street'),
(66, 'Zelda Baird', '8044 Nisi Rd.'),
(67, 'Regan Joseph', 'P.O. Box 295, 2029 Et Street'),
(68, 'Paloma Mayer', 'P.O. Box 651, 5402 Lobortis St.'),
(69, 'Cheyenne Cantu', '589-3504 Quam, Av.'),
(70, 'Lara Sandoval', '5892 Nisi Avenue'),
(71, 'Aileen Fletcher', 'P.O. Box 955, 7057 Fusce Av.'),
(72, 'Giselle Yang', 'Ap #545-5680 Dapibus Rd.'),
(73, 'Pamela Lambert', 'Ap #386-3123 Augue Street'),
(74, 'Lana Mcmahon', 'P.O. Box 696, 4464 Et Av.'),
(75, 'Azalia Hurley', '4993 Convallis St.'),
(76, 'Uma Sears', 'P.O. Box 496, 5438 Non, Rd.'),
(77, 'Minerva Chang', '5529 Eget Street'),
(78, 'Iona Chandler', '811-3351 Lorem, Ave'),
(79, 'Ginger Norris', 'P.O. Box 612, 4467 Sagittis Avenue'),
(80, 'Camille Nixon', 'Ap #121-910 Sit Rd.'),
(81, 'Colleen Christian', '6893 Ridiculus Ave'),
(82, 'Rebekah Benson', '769-5795 Nunc Street'),
(83, 'Chiquita Crosby', 'Ap #136-9943 Auctor Rd.'),
(84, 'Kevyn Castillo', '310-1536 Mauris Avenue'),
(85, 'Vielka Savage', 'P.O. Box 407, 5443 Libero St.'),
(86, 'Ramona Clayton', 'P.O. Box 826, 8756 Ipsum Rd.'),
(87, 'Nola Lyons', '8169 Nulla. Avenue'),
(88, 'Iris Fitzgerald', '227 Nullam Road'),
(89, 'Xandra Ramos', '2556 Duis St.'),
(90, 'Ainsley Benson', '825-8135 Per St.'),
(91, 'Lucy Baldwin', '2415 Felis Av.'),
(92, 'Kylan Harrell', 'P.O. Box 548, 8255 Dignissim Road'),
(93, 'Jenna Gordon', '268-9884 Arcu. Street'),
(94, 'Nadine Hansen', '948-2019 A Avenue'),
(95, 'Jenna Golden', '409 Nec Street'),
(96, 'Mallory Randolph', '334-5354 Sit Av.'),
(97, 'Nicole Herman', '3902 Ac Rd.'),
(98, 'Petra Branch', 'P.O. Box 488, 3205 Dui, Avenue'),
(99, 'Xaviera Gray', 'Ap #240-2629 Arcu Avenue'),
(100, 'Lavinia Henry', 'P.O. Box 941, 4600 Ut, Rd.'),
(101, 'Sophia Cross', '1367 Quam Road'),
(102, 'Janna Hogan', 'P.O. Box 171, 5702 Dolor. Av.'),
(103, 'Bianca Chaney', 'P.O. Box 421, 1393 Interdum Road'),
(104, 'Alyssa Tyler', '726-4828 Mauris Street'),
(105, 'Amethyst Perkins', 'Ap #662-2249 Sed Rd.'),
(106, 'Zena Lewis', '3352 Vitae, Road'),
(107, 'Debra Cameron', 'P.O. Box 614, 7990 Orci Av.'),
(108, 'Meredith Park', 'Ap #157-831 Non Av.'),
(109, 'Allegra Leblanc', 'Ap #539-9232 Phasellus Rd.'),
(110, 'Audra Blanchard', 'P.O. Box 174, 6428 Nunc Street'),
(111, 'Katell Barton', 'P.O. Box 438, 5240 Aliquam Ave'),
(112, 'Jael Waters', 'Ap #523-8681 Ornare, St.'),
(113, 'Imogene Lewis', 'P.O. Box 739, 9310 Commodo Road');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE IF NOT EXISTS `pesanan` (
  `nomor_pesanan` int(11) NOT NULL AUTO_INCREMENT,
  `id_karyawan` int(11) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `tanggal_order` date DEFAULT NULL,
  PRIMARY KEY (`nomor_pesanan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`nomor_pesanan`, `id_karyawan`, `id_pelanggan`, `tanggal_order`) VALUES
(1, 1, 1, '2007-01-23'),
(2, 2, 2, '2008-04-11'),
(3, 3, 3, '2008-10-14'),
(4, 4, 4, '2004-02-10'),
(5, 5, 5, '2003-06-16'),
(6, 6, 6, '2008-06-10'),
(7, 7, 7, '2009-05-09'),
(8, 8, 8, '2005-04-19'),
(9, 9, 9, '2008-10-01'),
(10, 10, 10, '2010-04-04'),
(11, 11, 11, '2006-07-21'),
(12, 12, 12, '2006-09-15'),
(13, 13, 13, '2007-05-03'),
(14, 14, 14, '2004-06-26'),
(15, 15, 15, '2012-10-25'),
(16, 16, 16, '2006-09-27'),
(17, 17, 17, '2009-02-01'),
(18, 18, 18, '2007-05-18'),
(19, 19, 19, '2004-11-16'),
(20, 20, 20, '2008-11-26'),
(21, 21, 21, '2008-08-03'),
(22, 22, 22, '2009-09-09'),
(23, 23, 23, '2005-05-13'),
(24, 24, 24, '2011-08-10'),
(25, 25, 25, '2005-07-09'),
(26, 26, 26, '2007-04-14'),
(27, 27, 27, '2011-05-30'),
(28, 28, 28, '2008-02-26'),
(29, 29, 29, '2004-08-30'),
(30, 30, 30, '2011-04-24'),
(31, 31, 31, '2004-11-04'),
(32, 32, 32, '2007-02-25'),
(33, 33, 33, '2005-09-12'),
(34, 34, 34, '2007-06-07'),
(35, 35, 35, '2003-03-14'),
(36, 36, 36, '2012-02-09'),
(37, 37, 37, '2003-03-17'),
(38, 38, 38, '2006-10-19'),
(39, 39, 39, '2008-09-14'),
(40, 40, 40, '2011-03-23'),
(41, 41, 41, '2007-01-26'),
(42, 42, 42, '2005-04-08'),
(43, 43, 43, '2008-04-18'),
(44, 44, 44, '2008-01-05'),
(45, 45, 45, '2011-11-14'),
(46, 46, 46, '2003-10-19'),
(47, 47, 47, '2004-03-14'),
(48, 48, 48, '2011-01-27'),
(49, 49, 49, '2007-02-01'),
(50, 50, 50, '2008-06-10'),
(51, 51, 51, '2003-10-02'),
(52, 52, 52, '2003-07-08'),
(53, 53, 53, '2007-09-14'),
(54, 54, 54, '2009-12-17'),
(55, 55, 55, '2009-03-06'),
(56, 56, 56, '2004-02-24'),
(57, 57, 57, '2003-03-14'),
(58, 58, 58, '2004-03-16'),
(59, 59, 59, '2007-06-01'),
(60, 60, 60, '2006-04-10'),
(61, 61, 61, '2008-07-22'),
(62, 62, 62, '2012-07-15'),
(63, 63, 63, '2010-11-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` mediumint(9) NOT NULL AUTO_INCREMENT,
  `kode_motif` varchar(20) DEFAULT NULL,
  `nama_produk` varchar(40) DEFAULT NULL,
  `harga_satuan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produk`),
  KEY `produk_ibfk_1` (`kode_motif`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=114 ;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `kode_motif`, `nama_produk`, `harga_satuan`) VALUES
(1, '1', 'Baju Medan 2000', 1500000),
(2, '10', 'Mukena Bandung 2012', 2100000),
(3, '100', 'Kemeja Aceh 1996', 500000),
(4, '101', 'Mukena Cirebon 2003', 1700000),
(5, '102', 'Baju Cirebon 1998', 1700000),
(6, '103', 'Gamis Aceh 1994', 700000),
(7, '104', 'Selendang Semarang 2013', 2700000),
(8, '105', 'Gamis Bandung 2006', 2300000),
(9, '106', 'Mukena Surabaya 2007', 1700000),
(10, '107', 'Kemeja Aceh 2011', 1300000),
(11, '108', 'Mukena Semarang 1998', 300000),
(12, '109', 'Gamis Semarang 1996', 700000),
(13, '11', 'Lukisan Cirebon 2012', 3100000),
(14, '110', 'Baju Semarang 2001', 500000),
(15, '111', 'Kemeja Medan 2000', 900000),
(16, '112', 'Mukena Bandung 2001', 3100000),
(17, '113', 'Selendang Purwokerto 2000', 900000),
(18, '12', 'Celana Palembang 1995', 2100000),
(19, '13', 'Baju Yogyakarta 2006', 1300000),
(20, '14', 'Selendang Purwakarta 1998', 2300000),
(21, '15', 'Celana Yogyakarta 1994', 2700000),
(22, '16', 'Mukena Yogyakarta 2009', 2100000),
(23, '17', 'Lukisan Purwokerto 1996', 300000),
(24, '18', 'Lukisan Surabaya 2010', 900000),
(25, '19', 'Kemeja Semarang 2013', 2700000),
(26, '2', 'Baju Purwokerto 2006', 2700000),
(27, '20', 'Lukisan Aceh 2006', 900000),
(28, '21', 'Gamis Purwokerto 2010', 2700000),
(29, '22', 'Celana Semarang 2007', 100000),
(30, '23', 'Selendang Semarang 2009', 2300000),
(31, '24', 'Baju Palembang 2008', 1700000),
(32, '25', 'Mukena Cimahi 1997', 1300000),
(33, '26', 'Celana Purwokerto 1993', 700000),
(34, '27', 'Kemeja Yogyakarta 1993', 1300000),
(35, '28', 'Gamis Semarang 2000', 2300000),
(36, '29', 'Gamis Cimahi 2003', 300000),
(37, '3', 'Selendang Purwakarta 2009', 2300000),
(38, '30', 'Selendang Purwokerto 1993', 500000),
(39, '31', 'Baju Aceh 2005', 2100000),
(40, '32', 'Gamis Cimahi 2007', 1300000),
(41, '33', 'Lukisan Surabaya 1999', 5700000),
(42, '34', 'Mukena Palembang 2000', 100000),
(43, '35', 'Baju Purwokerto 2013', 1300000),
(44, '36', 'Kemeja Cirebon 2013', 2100000),
(45, '37', 'Gamis Cirebon 2007', 2700000),
(46, '38', 'Gamis Cimahi 2012', 2100000),
(47, '39', 'Selendang Aceh 2003', 1300000),
(48, '4', 'Baju Surabaya 2001', 100000),
(49, '40', 'Mukena Cirebon 2006', 500000),
(50, '41', 'Baju Bandung 2006', 3100000),
(51, '42', 'Selendang Palembang 2001', 2300000),
(52, '43', 'Celana Semarang 2000', 1300000),
(53, '44', 'Selendang Cirebon 1993', 3100000),
(54, '45', 'Baju Purwokerto 2002', 3100000),
(55, '46', 'Lukisan Purwokerto 1994', 5700000),
(56, '47', 'Baju Aceh 2004', 1500000),
(57, '48', 'Gamis Purwakarta 2009', 1700000),
(58, '49', 'Selendang Bandung 2000', 2100000),
(59, '5', 'Gamis Bandung 2004', 900000),
(60, '50', 'Celana Medan 2001', 900000),
(61, '51', 'Celana Aceh 2008', 1300000),
(62, '52', 'Lukisan Surabaya 2000', 100000),
(63, '53', 'Mukena Cirebon 2013', 1500000),
(64, '54', 'Celana Aceh 2005', 3100000),
(65, '55', 'Celana Semarang 2009', 300000),
(66, '56', 'Mukena Medan 2006', 1300000),
(67, '57', 'Lukisan Cimahi 2012', 3100000),
(68, '58', 'Baju Semarang 2000', 500000),
(69, '59', 'Selendang Cimahi 2001', 2700000),
(70, '6', 'Gamis Cirebon 2009', 2100000),
(71, '60', 'Baju Cimahi 2009', 1700000),
(72, '61', 'Baju Semarang 2002', 500000),
(73, '62', 'Selendang Bandung 2006', 3100000),
(74, '63', 'Celana Cimahi 2013', 2100000),
(75, '64', 'Lukisan Purwokerto 2005', 500000),
(76, '65', 'Lukisan Surabaya 2003', 1700000),
(77, '66', 'Mukena Yogyakarta 2000', 2100000),
(78, '67', 'Kemeja Surabaya 2007', 700000),
(79, '68', 'Celana Purwokerto 2000', 500000),
(80, '69', 'Baju Aceh 2002', 500000),
(81, '7', 'Kemeja Cimahi 1998', 500000),
(82, '70', 'Mukena Cirebon 1998', 1300000),
(83, '71', 'Mukena Palembang 2006', 900000),
(84, '72', 'Celana Cirebon 2006', 700000),
(85, '73', 'Lukisan Palembang 2002', 300000),
(86, '74', 'Lukisan Medan 2008', 1500000),
(87, '75', 'Lukisan Bandung 2007', 700000),
(88, '76', 'Kemeja Semarang 2002', 2700000),
(89, '77', 'Mukena Medan 1995', 2100000),
(90, '78', 'Selendang Cirebon 2000', 1700000),
(91, '79', 'Celana Purwokerto 2000', 1700000),
(92, '8', 'Kemeja Purwakarta 2004', 700000),
(93, '80', 'Baju Purwokerto 1994', 700000),
(94, '81', 'Kemeja Semarang 2013', 2100000),
(95, '82', 'Gamis Cimahi 2011', 5700000),
(96, '83', 'Celana Palembang 2008', 100000),
(97, '84', 'Mukena Purwakarta 2007', 2300000),
(98, '85', 'Baju Cimahi 1997', 300000),
(99, '86', 'Mukena Yogyakarta 1995', 1300000),
(100, '87', 'Gamis Purwokerto 2000', 2100000),
(101, '88', 'Gamis Surabaya 1998', 2100000),
(102, '89', 'Gamis Semarang 2007', 1300000),
(103, '9', 'Mukena Semarang 2010', 2700000),
(104, '90', 'Kemeja Yogyakarta 2013', 1500000),
(105, '91', 'Kemeja Semarang 2011', 100000),
(106, '92', 'Celana Cirebon 2012', 500000),
(107, '93', 'Kemeja Surabaya 2013', 300000),
(108, '94', 'Gamis Semarang 1993', 2700000),
(109, '95', 'Gamis Purwokerto 2000', 5700000),
(110, '96', 'Mukena Cirebon 2008', 5700000),
(111, '97', 'Lukisan Purwokerto 1995', 1700000),
(112, '98', 'Celana Purwokerto 2007', 300000),
(113, '99', 'Kemeja Palembang 2000', 500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('4f697b93512f78ee6473128a7f2fc43e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.30 (KHTML, like Gecko) Chrome/26.0.1403.0 Safari/537.30', 1365308229, 'a:4:{s:9:"user_data";s:0:"";s:7:"AdminID";s:1:"1";s:9:"AdminNama";s:4:"andy";s:16:"IzinkanAksesJual";s:18:"NemesisMengizinkan";}'),
('7d5422557f7665c9e1319adadcdc6596', '192.168.1.5', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365308178, 'a:4:{s:9:"user_data";s:0:"";s:7:"AdminID";s:1:"1";s:9:"AdminNama";s:4:"andy";s:16:"IzinkanAksesJual";s:18:"NemesisMengizinkan";}'),
('8190e12cb7bec213dfa28e3aa3aa8f3a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox/18.0', 1362925905, 'a:6:{s:9:"user_data";s:0:"";s:7:"AdminID";s:1:"1";s:9:"AdminNama";s:4:"andy";s:16:"IzinkanAksesJual";s:18:"NemesisMengizinkan";s:9:"FormKasir";s:9:"FormAktif";s:11:"FormBarcode";s:10:"TidakAktif";}'),
('c00aaa150074f93d9aa48bb7fbbc911b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.30 (KHTML, like Gecko) Chrome/26.0.1403.0 Safari/537.30', 1365994605, 'a:6:{s:9:"user_data";s:0:"";s:7:"AdminID";s:1:"1";s:9:"AdminNama";s:4:"andy";s:16:"IzinkanAksesJual";s:18:"NemesisMengizinkan";s:9:"FormKasir";s:14:"FormTidakAktif";s:11:"FormBarcode";s:10:"TidakAktif";}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `telepon_pelanggan`
--

CREATE TABLE IF NOT EXISTS `telepon_pelanggan` (
  `id_pelanggan` mediumint(9) NOT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  KEY `telepon_pelanggan_ibfk_1` (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `telepon_pelanggan`
--

INSERT INTO `telepon_pelanggan` (`id_pelanggan`, `no_telepon`) VALUES
(1, '(691) 324-0889'),
(2, '(766) 547-6296'),
(3, '(407) 210-1472'),
(4, '(432) 664-0738'),
(5, '(604) 359-1211'),
(6, '(962) 673-7974'),
(7, '(228) 485-8821'),
(8, '(792) 228-0402'),
(9, '(599) 756-0268'),
(10, '(871) 719-2975'),
(11, '(144) 367-1711'),
(12, '(171) 947-6502'),
(13, '(489) 541-4702'),
(14, '(316) 742-5607'),
(15, '(804) 999-6546'),
(16, '(894) 849-8869'),
(17, '(180) 765-0110'),
(18, '(890) 390-1556'),
(19, '(235) 610-5082'),
(20, '(191) 277-7788'),
(21, '(868) 998-9135'),
(22, '(859) 420-3812'),
(23, '(122) 239-9078'),
(24, '(964) 854-6459'),
(25, '(935) 877-9151'),
(26, '(463) 686-6773'),
(27, '(569) 145-4090'),
(28, '(194) 582-3738'),
(29, '(975) 333-9906'),
(30, '(462) 367-8177'),
(31, '(387) 735-9632'),
(32, '(520) 153-3434'),
(33, '(160) 496-1889'),
(34, '(607) 371-8671'),
(35, '(934) 939-3736'),
(36, '(243) 282-8016'),
(37, '(977) 605-7925'),
(38, '(118) 511-4488'),
(39, '(102) 411-6017'),
(40, '(704) 575-0542'),
(41, '(154) 905-0599'),
(42, '(300) 641-7029'),
(43, '(890) 448-8433'),
(44, '(748) 239-6446'),
(45, '(476) 430-6118'),
(46, '(107) 242-9273'),
(47, '(647) 550-3247'),
(48, '(984) 538-6997'),
(49, '(718) 522-7244'),
(50, '(618) 454-4978'),
(51, '(767) 211-0700'),
(52, '(671) 423-5060'),
(53, '(521) 467-8066'),
(54, '(932) 754-8528'),
(55, '(586) 629-0896'),
(56, '(949) 185-8655'),
(57, '(448) 613-1093'),
(58, '(842) 514-3122'),
(59, '(817) 725-3128'),
(60, '(653) 515-8358'),
(61, '(732) 983-3146'),
(62, '(538) 211-7429'),
(63, '(395) 647-2307'),
(64, '(271) 469-7012'),
(65, '(765) 686-7610'),
(66, '(649) 204-9279'),
(67, '(197) 233-0042'),
(68, '(419) 977-6447'),
(69, '(501) 411-8146'),
(70, '(145) 858-1696'),
(71, '(937) 824-6890'),
(72, '(640) 782-9633'),
(73, '(348) 824-6416'),
(74, '(109) 792-2612'),
(75, '(776) 744-0314'),
(76, '(748) 621-0951'),
(77, '(652) 632-8589'),
(78, '(856) 420-9340'),
(79, '(715) 678-7782'),
(80, '(947) 201-3862'),
(81, '(747) 490-4838'),
(82, '(910) 577-3451'),
(83, '(745) 565-6043'),
(84, '(317) 166-0054'),
(85, '(946) 193-7273'),
(86, '(457) 903-5649'),
(87, '(961) 777-3789'),
(88, '(373) 873-2559'),
(89, '(994) 785-0314'),
(90, '(401) 578-1169'),
(91, '(197) 475-7012'),
(92, '(102) 570-0741'),
(93, '(381) 528-3409'),
(94, '(509) 347-7179'),
(95, '(479) 626-7242'),
(96, '(470) 513-4584'),
(97, '(534) 459-0308'),
(98, '(345) 217-8893'),
(99, '(130) 282-4273'),
(100, '(726) 261-0741'),
(101, '(576) 197-8767'),
(102, '(171) 289-3321'),
(103, '(683) 309-3068'),
(104, '(215) 824-6022'),
(105, '(829) 947-9701'),
(106, '(979) 390-1318'),
(107, '(230) 712-1724'),
(108, '(907) 901-7997'),
(109, '(185) 104-0271'),
(110, '(194) 166-3846'),
(111, '(346) 937-0060'),
(112, '(878) 479-7815'),
(113, '(124) 531-1695');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `motif_batik_cap`
--
ALTER TABLE `motif_batik_cap`
  ADD CONSTRAINT `motif_batik_cap_ibfk_1` FOREIGN KEY (`kode_motif`) REFERENCES `motif_batik` (`kode_motif`);

--
-- Ketidakleluasaan untuk tabel `motif_batik_tulis`
--
ALTER TABLE `motif_batik_tulis`
  ADD CONSTRAINT `motif_batik_tulis_ibfk_1` FOREIGN KEY (`kode_motif`) REFERENCES `motif_batik` (`kode_motif`);

--
-- Ketidakleluasaan untuk tabel `order_batik`
--
ALTER TABLE `order_batik`
  ADD CONSTRAINT `order_batik_ibfk_1` FOREIGN KEY (`nomor_pesanan`) REFERENCES `pesanan` (`nomor_pesanan`),
  ADD CONSTRAINT `order_batik_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kode_motif`) REFERENCES `motif_batik` (`kode_motif`);

--
-- Ketidakleluasaan untuk tabel `telepon_pelanggan`
--
ALTER TABLE `telepon_pelanggan`
  ADD CONSTRAINT `telepon_pelanggan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
