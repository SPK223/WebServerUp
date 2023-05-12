-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1:3306
-- Tid vid skapande: 12 maj 2023 kl 19:17
-- Serverversion: 8.0.31
-- PHP-version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `ehandel`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(510) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumpning av Data i tabell `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Dricka', 'I munnen införa något flytande ämne och genom upprepade sväljningar låta det rinna ned genom strupen.'),
(2, 'Godis', 'Godis är en typ av livsmedel som är avsedd enbart för njutning, ej för dess eventuella näringsvärde.');

-- --------------------------------------------------------

--
-- Tabellstruktur `produkter`
--

DROP TABLE IF EXISTS `produkter`;
CREATE TABLE IF NOT EXISTS `produkter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `description` varchar(510) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumpning av Data i tabell `produkter`
--

INSERT INTO `produkter` (`id`, `name`, `price`, `description`, `category`, `img`, `created_at`) VALUES
(1, 'Redbull', 20, 'Det här är funktionsdrycken som ger energi genom sina aktiva ingredienser av koffein, taurin, B-vitamin, sockerbeta och naturligt alpvatten. Drycken är populär för studenter, idrottare och yrkesarbetande, samt för den som vill få extra bränsle inför en annan mental eller fysisk ansträngning. Red Bull är även en självklarhet inom krogbranschen. Energidrycken är därför en mycket attraktiv produkt för såväl restaurang- , krog- och caféverksamheter.', 'Dricka', 'redbull.jpg', '2023-03-23'),
(2, 'Pepsi', 18, 'Trött på ditt Coca-Cola-beroende och sugen på att testa någonting nytt? Pepsi är ett fullgott alternativ som smakar nästan som Coca-Cola, fast enligt vissa ännu bättre. Pepsi började tillverkas i USA\r\ni början av 1890-talet av apoterkaren Caleb Bradham för att användas mot magsmärtor. Drycken hette från början \"Brad\'s drink\" men bytte snart namn till \"Pepsi-Cola\".', 'Dricka', 'pepsi.jpg', '2023-03-17'),
(3, 'Kinder Maxi', 10, 'Kinderägg är oerhört goda med sin mjuka mjölkchoklad, men tycker du den tar slut alldeles för snabbt borde du testa Kinder Maxi. Kinder Maxi kommer i form av en chokladkaka med samma goda smak som Kinderägget. Dock blir du utan den lilla överraskningen inuti men kakan är så god så det gör inget.', 'Godis', 'kindermaxi.jpg', '2023-02-06'),
(4, 'Takis Blue Heat', 80, 'INTENSIVA snacks med hetta brännande som en blå flamma i munnen, rullade för extra krispighet. Gör dig redo för en smakresa du sent skall glömma! ', 'Godis', 'takisblueheat.jpg', '2023-03-10'),
(5, 'Corny Big Choklad', 15, 'Corny är en klassiker som oftast legat undangömd på något märkligt ställe på affären, men som alla trogna kunder alltid hittar på. Corny passar lika bra på utflykten som efter hockeyträningen då den innehåller både sötma och energi! ', 'Godis', 'cornybigchoklad.jpg', '2023-03-16'),
(6, 'Corny Big White Chocolate', 15, 'Corny är en klassiker som oftast legat undangömd på något märkligt ställe på affären, men som alla trogna kunder alltid hittar på. Corny passar lika bra på utflykten som efter hockeyträningen då den innehåller både sötma och energi! ', 'Godis', 'cornybigwhitechocolate.jpg', '2023-03-13');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
