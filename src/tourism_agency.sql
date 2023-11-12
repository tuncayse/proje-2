-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 12 Kas 2023, 13:57:54
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `tourism_agency`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `facility`
--

CREATE TABLE `facility` (
  `id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `facility`
--

INSERT INTO `facility` (`id`, `hotel_id`, `name`) VALUES
(4, 7, 'Ücretsiz Otopark'),
(7, 9, 'Yüzme Havuzu'),
(8, 9, 'SPA'),
(9, 9, '7/24 Oda Servisi'),
(10, 7, 'Ücretsiz Wifi'),
(15, 1, 'Ücretsiz Wifi'),
(16, 1, 'Ücretsiz Otopark'),
(17, 1, 'Yüzme Havuzu'),
(18, 2, 'Ücretsiz Wifi'),
(19, 2, 'Fitness Center'),
(20, 4, 'Fitness Center'),
(21, 4, 'SPA'),
(22, 4, '7/24 Oda Servisi'),
(24, 5, 'Ücretsiz Otopark'),
(25, 5, 'Yüzme Havuzu'),
(32, 6, 'Yüzme Havuzu'),
(33, 6, 'Ücretsiz Wifi'),
(34, 8, 'Fitness Center'),
(35, 8, 'SPA'),
(36, 8, '7/24 Oda Servisi'),
(47, 28, 'Ücretsiz Wifi'),
(48, 31, 'Ücretsiz Wifi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hostel`
--

CREATE TABLE `hostel` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `hostel`
--

INSERT INTO `hostel` (`id`, `name`, `hotel_id`) VALUES
(9, 'Ultra Herşey Dahil', 1),
(13, 'Herşey Dahil', 1),
(15, 'Sadece Yatak', 1),
(16, 'Oda Kahvaltı', 2),
(17, 'Tam Pansiyon', 2),
(18, 'Oda Kahvaltı', 4),
(19, 'Yarım Pansiyon', 4),
(20, 'Oda Kahvaltı', 4),
(21, 'Tam Pansiyon', 9),
(22, 'Yarım Pansiyon', 9),
(23, 'Ultra Herşey Dahil', 5),
(24, 'Herşey Dahil', 9),
(26, 'Sadece Yatak', 9),
(27, 'Ultra Herşey Dahil', 8),
(28, 'Herşey Dahil', 8),
(29, 'Oda Kahvaltı', 8),
(30, 'Tam Pansiyon', 8),
(34, 'Ultra Herşey Dahil', 6),
(35, 'Herşey Dahil', 6),
(36, 'Oda Kahvaltı', 6),
(37, 'Tam Pansiyon', 6),
(39, 'Oda Kahvaltı', 5),
(40, 'Tam Pansiyon', 5),
(42, 'Yarım Pansiyon', 5),
(43, 'Sadece Yatak', 5),
(44, 'Sadece Yatak', 7),
(45, 'Ultra Herşey Dahil', 4),
(46, 'Tam Pansiyon', 4),
(47, 'Sadece Yatak', 4),
(48, 'Ultra Herşey Dahil', 1),
(49, 'Oda Kahvaltı', 1),
(50, 'Tam Pansiyon', 1),
(51, 'Oda Kahvaltı', 2),
(52, 'Yarım Pansiyon', 2),
(53, 'Sadece Yatak', 2),
(54, 'Oda Kahvaltı', 4),
(55, 'Tam Pansiyon', 4),
(56, 'Yarım Pansiyon', 4),
(57, 'Sadece Yatak', 4),
(58, 'Ultra Herşey Dahil', 5),
(59, 'Sadece Yatak', 5),
(60, 'Tam Pansiyon', 4),
(61, 'Yarım Pansiyon', 4),
(62, 'Ultra Herşey Dahil', 1),
(63, 'Oda Kahvaltı', 1),
(64, 'Tam Pansiyon', 1),
(65, 'Ultra Herşey Dahil', 20),
(66, 'Ultra Herşey Dahil', 21),
(67, 'Yarım Pansiyon', 21),
(68, 'Ultra Herşey Dahil', 22),
(69, 'Herşey Dahil', 22),
(70, 'Ultra Herşey Dahil', 24),
(71, 'Ultra Herşey Dahil', 28),
(72, 'Ultra Herşey Dahil', 31);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hotel`
--

CREATE TABLE `hotel` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `city`, `region`, `address`, `email`, `phone_number`, `star`) VALUES
(1, 'Kodluyoruz Life İstanbul', 'İstanbul', 'Beyoğlu', 'Şahkulu, Şişhane Metro Durağı, Meşrutiyet Cd. No:125, 34421', ' info@kodluyoruz.org', '111', '5'),
(2, 'Patika Life', 'istanbul', 'beşiktaş', 'Cihannüma, 34353 Beşiktaş/İstanbul', 'patika@patikadev.org', '222', '4'),
(4, 'Pera Palace', 'İstanbul', 'Beyoğlu', 'Meşrutiyet Caddesi', 'pera@gmail.com', '377', '5'),
(5, 'Game Patikası', 'Patika +', 'Patika Merkez', 'JAVA 102 caddesi', 'GamePatikasi.org', '555', '5'),
(6, 'Perla Hotel', 'sakarya', 'sapanca', 'Sapanca Merk.', 'Perla@gmail.com', '256', '3'),
(8, 'Wall Street Hotel', 'New York', 'Manhattan', 'South Manhattan', 'WallStreet@info', '456', '5'),
(9, 'Hilton Garden', 'İstanbul', 'Mecidiyeköy', 'Şişli', 'hilton@info', '963', '4');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reservation`
--

CREATE TABLE `reservation` (
  `id` int NOT NULL,
  `client_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `client_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `client_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `client_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_id` int NOT NULL,
  `room_id` int NOT NULL,
  `day` int NOT NULL,
  `total_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `reservation`
--

INSERT INTO `reservation` (`id`, `client_name`, `client_phone`, `client_email`, `client_note`, `hotel_id`, `room_id`, `day`, `total_price`) VALUES
(15, 'Merve Durmaz', '123 456 7889', 'mrv_drmz@gmail.com', '----', 5, 38, 3, 3900),
(19, 'İlayda', 'Çelik', 'ilayda.1@gmail.com', 'teşekkürler', 5, 38, 2, 2600),
(21, 'Ayşe', 'Tunç', 'tncayse@gmail.com', 'yok', 5, 36, 4, 6800),
(22, 'Ruken ', 'Zirek', 'zrkrkn@gmail.com', 'Çok kolay bir şekilde rezervasyon yaptım,Teşekkürler.', 9, 30, 3, 6300),
(23, 'Sümeyye', 'Bal', 'smybl@gmail.com', 'yok', 4, 27, 2, 4800),
(24, 'Sinan', 'Ferhat', 'sinan@gmail.com', 'tşk', 1, 25, 5, 5000),
(27, 'Elif', 'Durmaz', 'elif@gmail.com', '=)', 8, 34, 4, 4800),
(29, 'Tuğba', 'Atlı', 'tgba@gmail.com', ':))', 2, 48, 4, 4800);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room`
--

CREATE TABLE `room` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_id` int NOT NULL,
  `season_id` int NOT NULL,
  `hostel_id` int NOT NULL,
  `stock` int NOT NULL,
  `adult_price` int NOT NULL,
  `child_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `room`
--

INSERT INTO `room` (`id`, `name`, `hotel_id`, `season_id`, `hostel_id`, `stock`, `adult_price`, `child_price`) VALUES
(24, 'Single', 1, 24, 50, 20, 1000, 600),
(25, 'Double', 1, 23, 50, 14, 700, 300),
(26, 'Suit', 2, 27, 53, 10, 1200, 800),
(27, 'Single', 4, 36, 61, 19, 1400, 1000),
(28, 'Double', 4, 36, 61, 20, 1000, 700),
(29, 'Single', 9, 38, 26, 10, 800, 500),
(30, 'Kral', 9, 38, 26, 9, 1200, 900),
(33, 'Single', 6, 44, 37, 20, 900, 500),
(34, 'Single', 8, 42, 30, 9, 800, 400),
(35, 'Suit', 8, 42, 30, 9, 1100, 800),
(36, 'Suit', 5, 32, 59, 9, 1000, 700),
(37, 'Single', 5, 32, 59, 10, 900, 700),
(38, 'Double', 5, 32, 59, 8, 800, 500),
(48, 'Single', 2, 27, 53, 9, 800, 400);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roomfeatures`
--

CREATE TABLE `roomfeatures` (
  `id` int NOT NULL,
  `room_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `roomfeatures`
--

INSERT INTO `roomfeatures` (`id`, `room_id`, `name`) VALUES
(22, 24, 'TV'),
(23, 24, 'Minibar'),
(24, 24, 'Kasa'),
(25, 25, 'Minibar'),
(26, 25, 'Projesiyon'),
(27, 26, 'Kasa'),
(28, 26, 'Projesiyon'),
(29, 30, 'TV'),
(30, 30, 'Minibar'),
(31, 30, 'Kasa'),
(32, 32, 'TV'),
(33, 42, 'TV'),
(34, 42, 'Projesiyon'),
(35, 38, 'Minibar'),
(37, 37, 'Kasa'),
(38, 36, 'TV'),
(39, 36, 'Minibar'),
(40, 36, 'Projesiyon'),
(41, 36, 'Oyun Konsolu'),
(42, 35, 'TV'),
(43, 35, 'Kasa'),
(44, 34, 'TV'),
(45, 34, 'Minibar'),
(46, 33, 'TV'),
(47, 33, 'Oyun Konsolu'),
(48, 31, 'TV'),
(49, 31, 'Oyun Konsolu'),
(50, 29, 'Minibar'),
(51, 29, 'Projesiyon'),
(52, 28, 'Minibar'),
(53, 28, 'Oyun Konsolu'),
(54, 27, 'TV'),
(55, 38, 'TV'),
(56, 38, 'Minibar');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `season`
--

CREATE TABLE `season` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `season`
--

INSERT INTO `season` (`id`, `name`, `hotel_id`, `start_date`, `end_date`) VALUES
(23, 'Yaz Dönemi', 1, '2024-06-01', '2024-09-01'),
(24, 'Kış Dönemi', 1, '2024-03-01', '2024-05-31'),
(25, 'Yaz Dönemi', 2, '2024-06-01', '2024-09-01'),
(26, 'Son Bahar Dönemi', 2, '2024-09-02', '2024-11-30'),
(27, 'İlk Bahar Dönemi', 2, '2024-03-01', '2024-05-31'),
(28, 'Yaz Dönemi', 4, '2024-06-01', '2024-09-01'),
(29, 'Son Bahar Dönemi', 4, '2024-09-02', '2024-11-30'),
(30, 'İlk Bahar Dönemi', 4, '2024-03-01', '2024-05-31'),
(31, 'Yaz Dönemi', 5, '2024-06-01', '2024-09-01'),
(32, 'İlk Bahar Dönemi', 5, '2024-03-01', '2024-05-31'),
(33, 'Yaz Dönemi', 4, '2024-06-01', '2024-09-01'),
(34, 'Son Bahar Dönemi', 4, '2024-09-02', '2024-11-30'),
(35, 'İlk Bahar Dönemi', 4, '2024-03-01', '2024-05-31'),
(36, 'Kış Dönemi', 4, '2024-03-01', '2024-05-31'),
(37, 'Yaz Dönemi', 9, '2024-06-01', '2024-09-01'),
(38, 'Son Bahar Dönemi', 9, '2024-09-02', '2024-11-30'),
(39, 'Yaz Dönemi', 8, '2024-06-01', '2024-09-01'),
(40, 'Son Bahar Dönemi', 8, '2024-09-02', '2024-11-30'),
(41, 'İlk Bahar Dönemi', 8, '2024-03-01', '2024-05-31'),
(42, 'Kış Dönemi', 8, '2024-03-01', '2024-05-31'),
(43, 'Yaz Dönemi', 6, '2024-06-01', '2024-09-01'),
(44, 'Son Bahar Dönemi', 6, '2024-09-02', '2024-11-30'),
(45, 'Kış Dönemi', 9, '2024-03-01', '2024-05-31'),
(50, 'Kış Dönemi', 22, '2024-03-01', '2024-05-31'),
(52, 'Son Bahar Dönemi', 24, '2024-09-02', '2024-11-30'),
(53, 'Yaz Dönemi', 28, '2024-06-01', '2024-09-01'),
(54, 'Yaz Dönemi', 31, '2024-06-01', '2024-09-01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` enum('admin','employee') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `name`, `uname`, `email`, `pass`, `type`) VALUES
(1, 'ayşe tunç', 'ayse', 'ayse@gmail.com', '1234', 'admin'),
(2, 'sümeyye bal', 'sümeyye', 'sümeyye@gmail.com', '1234', 'employee'),
(3, 'patika dev', 'patika', 'patika_dev@gmail.com', '6842', 'employee'),
(20, 'Kodluyoruz', 'kodluyoruz', 'as', '123', 'employee'),
(21, 'John Doe', 'john', 'john@gmail.com', '1234', 'employee'),
(22, 'User1', 'user', 'user.1@gmail.com', '6842', 'employee'),
(23, 'User2', 'user2', 'user.2@gmail.com', '1212', 'employee'),
(29, 'User3', 'userr', 'user.3@hotmail.com', '4747', 'employee'),
(30, 'mehmet', 'kaya', 'mhmtky', '456', 'admin');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `roomfeatures`
--
ALTER TABLE `roomfeatures`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `facility`
--
ALTER TABLE `facility`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Tablo için AUTO_INCREMENT değeri `hostel`
--
ALTER TABLE `hostel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Tablo için AUTO_INCREMENT değeri `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `room`
--
ALTER TABLE `room`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Tablo için AUTO_INCREMENT değeri `roomfeatures`
--
ALTER TABLE `roomfeatures`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Tablo için AUTO_INCREMENT değeri `season`
--
ALTER TABLE `season`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
