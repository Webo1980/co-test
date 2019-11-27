-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 27. Nov 2019 um 19:17
-- Server-Version: 10.4.6-MariaDB
-- PHP-Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `co-test`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191124202633', '2019-11-24 20:26:58');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `product`
--

INSERT INTO `product` (`id`, `title`, `count`, `details`) VALUES
(1, 'Product 1', 10, 'Here is product 1 details are shown'),
(2, 'Product 2', 3, 'Here is product 2 details are shown'),
(3, 'product3', 50, ''),
(4, 'Product 4', 45, ''),
(5, 'Product 5', 60, '');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
