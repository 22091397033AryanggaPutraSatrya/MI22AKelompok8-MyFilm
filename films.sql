-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2023 pada 16.35
-- Versi server: 10.4.28-MariaDB-log
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `films`
--
CREATE DATABASE IF NOT EXISTS `films` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `films`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datafilms`
--

CREATE TABLE IF NOT EXISTS `datafilms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `synopsis` text NOT NULL,
  `video_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `datafilms`
--

INSERT INTO `datafilms` (`id`, `title`, `image`, `synopsis`, `video_url`) VALUES
(1, 'A Haunting in Venice', 'assets/haunting in venice.jpg', 'Berlatar di kota Venice pasca Perang Dunia II, Hercule Poirot kembali beraksi ketika salah satu tamu acara tersebut mati misterius.', 'https://www.youtube.com/embed/yEddsSwweyE?si=ayyreVWUX7Xn-MmJ'),
(2, 'No Hard Feelings', 'assets/no-hard-feelings-poster-jennifer-lawrence.jpg', 'Seorang remaja introvert bernama Percy berusia 19 tahun mencari jasa pacar mendadak.', 'https://www.youtube.com/embed/P15S6ND8kbQ?si=i_mgeMd3NRcgCsIT'),
(3, 'The Nun II', 'assets/thenun2.jpg', 'Kali ini, film The Nun berlatar di tahun 1956 di Prancis. Suatu ketika seorang pendeta dibunuh dan iblis menyebar.', 'https://www.youtube.com/embed/QF-oyCwaArU?si=Opjd8-4PDUFX3Ysy'),
(4, 'The Equalizer 3', 'assets/thequalizer3.jpg', 'Kali ini, Robert McCall tak lagi menjadi pembunuh suruhan pemerintah dan menemukan ketenangan dengan menjadi pelayan masyarakat.', 'https://www.youtube.com/embed/19ikl8vy4zs?si=2qHkT-giS4IfgLD4'),
(5, 'His Only Son', 'assets/his-only-son.jpeg', 'Film ini adalah sejarah tentang Abraham yang mendapatkan perintah untuk mengorbankan anaknya.', 'https://www.youtube.com/embed/zo2V5CQMuJw?si=DxuQO1qJFfXphqgW');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datafilms2`
--

CREATE TABLE IF NOT EXISTS `datafilms2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `synopsis` text NOT NULL,
  `video_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `datafilms2`
--

INSERT INTO `datafilms2` (`id`, `title`, `image`, `synopsis`, `video_url`) VALUES
(1, 'Avatar (2009)', 'assets/avatar-2009.jpg', 'Avatar mengisahkan asal muasal manusia mengetahui Planet Pandora yang ditinggali oleh suku Na\'vi.', 'https://www.youtube.com/embed/5PSNL1qE6VY?si=gYVbLW6h_c5F9CQw'),
(2, 'Avengers: Endgame (2019)', 'assets/endgame.jpg', 'Film lanjutan dari Infinity War ini mengisahkan kehidupan bumi setelah Thanos melenyapkan setengah populasi dunia.', 'https://www.youtube.com/embed/TcMBFSGVi1c?si=tuDqmEX2fjUSDyvd'),
(3, 'Avengers: Infinity War (2018)', 'assets/avengers-infinity-war.jpg', 'Avengers dan guardians of the galaxy upaya untuk mencegah thanos dari mengumpulkan enam maha kuasa infinity stones.', 'https://www.youtube.com/embed/6ZfuNTqbHE8?si=9NYHhv02dzvyx7hh'),
(4, 'Titanic (1997)', 'assets/titanic.jpg', 'Mengisahkan kisah cinta yang tragis di antara Rose Dewitt Bukater (Kate Winslet) dan Jack Dawson (Leonardo DiCaprio).', 'https://www.youtube.com/embed/CHekzSiZjrY?si=Wz9CbNd21OU5aUAQ'),
(5, 'The Lion King (2019)', 'assets/lionking.jpg', 'Film produksi Walt Disney Pictures ini merupakan remake dari The Lion King yang pernah dirilis.', 'https://www.youtube.com/embed/7TavVZMewpY?si=y4fBdY2Mtp9QvoYk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datafilms3`
--

CREATE TABLE IF NOT EXISTS `datafilms3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `synopsis` text NOT NULL,
  `video_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `datafilms3`
--

INSERT INTO `datafilms3` (`id`, `title`, `image`, `synopsis`, `video_url`) VALUES
(1, 'The Godfather (1972)', 'assets/godfather.jpg', 'film ini bercerita tentang seorang bos mafia yang hendak mewariskan kekuasaannya pada anak laki-lakinya.', 'https://www.youtube.com/embed/sY1S34973zA?si=H_VkT1m0xn5vZizu'),
(2, 'Parasite (2019)', 'assets/parasite.jpg', 'Sebuah keluarga yang menumpang pada keluarga kaya dan ingin menyingkirkan mereka secara perlahan.', 'https://www.youtube.com/embed/5xH0HfJHsaY?si=2arkqvpZToi4HZTJ'),
(3, 'Us (2019)', 'assets/us.jpeg', 'film Us dimulai dari keluarga Adelaide Wilson yang berlibur ke rumah masa kecil tempat sang ibu tumbuh.', 'https://www.youtube.com/embed/hNCmb-4oXJA?si=tCE4eoEPicyysW_6'),
(4, 'Split (2017)', 'assets/split.jpg', 'film terbaik selanjutnya bergenre psychological horror thriller yang disutradarai oleh M. Night Shyamalan.', 'https://www.youtube.com/embed/ROVc_47FUD8?si=T8Zd4dKnz8FmnV6n'),
(5, 'The Invisible Guest (2016)', 'assets/contratiempo.jpeg', 'Kisah pembunuhan memang selalu menarik untuk diangkat dalam sebuah film, salah satunya adalah The Invisible Guest.', 'https://www.youtube.com/embed/epCg2RbyF80?si=FW9lZbz_bPgWyiEF');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
