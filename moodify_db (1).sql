-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jan 2026 pada 06.51
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moodify_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `image`) VALUES
(1, 'Tetap Positif', 'Berpikir positif dapat membantu mengurangi stres dan meningkatkan kesehatan mental. Mulailah hari dengan rasa syukur dan fokus pada hal-hal baik.', 'https://images.unsplash.com/photo-1506126613408-eca07ce68773'),
(3, 'Jangan Menyerah', 'Setiap orang pernah mengalami hari yang buruk. Ingat, kegagalan adalah bagian dari proses menuju kesuksesan. Teruslah melangkah.', 'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee'),
(4, 'Nikmati Hal Sederhana', 'Kebahagiaan sering datang dari hal-hal kecil seperti secangkir kopi atau udara pagi. Hargai momen sederhana dalam hidup.', 'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085'),
(5, 'Istirahat Sejenak', 'Istirahat yang cukup sangat penting untuk menjaga kesehatan fisik dan mental. Jangan ragu untuk berhenti sejenak dan bernapas.', 'https://images.unsplash.com/photo-1501785888041-af3ef285b470'),
(6, 'Bersyukur Setiap Hari', 'Membiasakan diri untuk bersyukur dapat membantu mengubah sudut pandang menjadi lebih positif dan membuat hati lebih tenang.', 'https://images.unsplash.com/photo-1504196606672-aef5c9cefc92'),
(7, 'Lakukan yang Terbaik', 'Kamu tidak harus sempurna setiap hari. Cukup lakukan yang terbaik dengan kemampuan yang kamu miliki saat ini.', 'https://images.unsplash.com/photo-1496307042754-b4aa456c4a2d'),
(8, 'Self Care Itu Penting', 'Self care bukan berarti egois. Meluangkan waktu untuk diri sendiri dapat membantu menjaga keseimbangan emosi dan meningkatkan kualitas hidup.', 'https://images.unsplash.com/photo-1525097487452-6278ff080c31'),
(10, 'Prioritize urself', 'Luangkan waktu untuk dirimu', 'https://www.instagram.com/p/Cd2sLZ8ruFd/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `text`) VALUES
(1, 'Kamu hebat hari ini! 🌈'),
(2, 'Tetap semangat, semua akan berlalu 💪'),
(3, 'Jangan lupa tersenyum 😊');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'alif', 'inialif'),
(2, 'agus', 'agus123'),
(3, 'harivzan', 'harivzan'),
(4, 'faisal', 'faisal123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
