-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 25, 2024 at 07:31 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stacja paliw`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adresy`
--

CREATE TABLE `adresy` (
  `id` bigint(20) NOT NULL,
  `miasto` varchar(50) NOT NULL,
  `ulica` varchar(50) NOT NULL,
  `numer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adresy`
--

INSERT INTO `adresy` (`id`, `miasto`, `ulica`, `numer`) VALUES
(1, 'Gdańsk', 'Grunwaldzka', 9),
(2, 'Sopot', 'JanaP', 12),
(3, 'Gdynia', 'Orlowo', 5),
(4, 'Kraków', 'Krakowska', 7),
(5, 'Warszawa', 'Złota', 12),
(6, 'Poznań', 'Materska', 18);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stacje_paliw`
--

CREATE TABLE `stacje_paliw` (
  `id` bigint(20) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `adres` bigint(20) NOT NULL,
  `cena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stacje_paliw`
--

INSERT INTO `stacje_paliw` (`id`, `nazwa`, `adres`, `cena`) VALUES
(3, 'Orlen', 2, 5),
(4, 'lotos', 3, 2),
(5, 'BP', 4, 4),
(6, 'Mol', 5, 3),
(7, 'Tanie_Paliwko', 6, 5);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `adresy`
--
ALTER TABLE `adresy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `stacje_paliw`
--
ALTER TABLE `stacje_paliw`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_adres` (`adres`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adresy`
--
ALTER TABLE `adresy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stacje_paliw`
--
ALTER TABLE `stacje_paliw`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stacje_paliw`
--
ALTER TABLE `stacje_paliw`
  ADD CONSTRAINT `fk_adres` FOREIGN KEY (`adres`) REFERENCES `adresy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
