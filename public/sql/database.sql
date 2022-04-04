-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2022. Ápr 04. 09:06
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `214SZFT_MVCfeladat`
--
CREATE DATABASE IF NOT EXISTS `214SZFT_MVCfeladat` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `214SZFT_MVCfeladat`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `contents`
--

CREATE TABLE `contents` (
  `ID` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `description` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `contents`
--

INSERT INTO `contents` (`ID`, `title`, `description`) VALUES
(1, 'index', 'Rólunk\n\nA belváros legmozgalmasabb étel-tere: ötcsillagos hamburgerek válogatott alapanyagokból, szezonális változatokban, autentikus tex-mex konyha taco hangsúllyal, házi szószokkal a mamma konyhájából, folyton nyüzsgő közösségi tér, a gördülékeny naphoz bitangjó kávé a My Little Melbourne csapatától, a még gördülékenyebb délutánokhoz és estékhez jéghideg sörök és koktélok. Random utcazenészekbe is belefutni!\n\nFussatok össze itt!\n'),
(2, 'contacts', 'Nyitva tartás:\n\nMinden nap 11:00-22:00\n\n \nRendelés felvétel:\n\nMinden nap 11:00-21:30\n\n06 30 696 7112\n\nMin rendelés: 1000 HUF\n\n \nKiszállítási terület:\n\nDebrecen\n\nSzállítási idő: 70 perc\n\n\nSzállítási díj:\nDebrecen tábláig - 390Ft\n\n\nKapcsolat:\n\nCím: Debrecen Péterfia utca 42-44.\n\nPanasz esetén: 06 30 696 7112\n\n \n\nEmail: oriashgc@gmail.com');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hamburgers`
--

CREATE TABLE `hamburgers` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `description` text COLLATE utf8_hungarian_ci NOT NULL,
  `price` double NOT NULL,
  `pic` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `hamburgers`
--

INSERT INTO `hamburgers` (`ID`, `name`, `description`, `price`, `pic`) VALUES
(1, 'Big Boss burger ', 'szezámmagos buci húspogácsa roston sült csirkemell csíkok jégsaláta kígyóuborka paradicsom lilahagyma trappista sajt füstölt sajt ementáli sajt\r\nXXL-es buciban, sertés és marhahús keverékéből készült pogácsával ', 2390, 'big-boss-burger.jpg'),
(2, 'Csirkeburger ', 'szezámmagos buci roston sült csirkemell csíkok jégsaláta kígyóuborka paradicsom lilahagyma trappista sajt majonéz ketchup mustár\r\nL-es buciban, rostlapon sült pácolt csirkemell csíkokkal ', 1390, 'csirkeburger.jpg'),
(3, 'Négysajtos burger', 'szezámmagos buci dupla marhahúspogácsa jégsaláta kígyóuborka paradicsom lilahagyma trappista sajt maasdamer sajt füstölt sajt cheddar sajtszósz házi hamburgerszósz\r\nXL-es buciban, 2db 10dkg-os marhahúspogácsával, pikáns cheddar sajtszósszal ', 1890, 'negysajtos-burger.jpg'),
(4, 'Farmburger', 'szezámmagos buci sertéshúspogácsa sült bacon jégsaláta kígyóuborka paradicsom lilahagyma pirított hagyma savanyú káposzta tükörtojás majonéz ketchup mustár\r\nL-es buciban, vaslapon sült fűszeres sertéshúspogácsával ', 1590, 'farm-burger.jpg'),
(5, 'Prémium burger ', 'szezámmagos buci dupla marhahúspogácsa jégsaláta savanyú uborka paradicsom lilahagyma rántott hagymakarika hamburgerszósz\r\nXL-es buciban, 2db 20dkg-os zöldfűszeres sajtkrémmel töltött marhahúspogácsával, Francia hamburgerszósszal ', 1990, 'premium-burger.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `menuItems`
--

CREATE TABLE `menuItems` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `menuItems`
--

INSERT INTO `menuItems` (`ID`, `name`, `url`) VALUES
(1, 'Főoldal', 'index'),
(2, 'Hamburgerek', 'hamburgers'),
(3, 'Árlista', 'pricelist'),
(4, 'Elérhetőségeink', 'contacts');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `hamburgers`
--
ALTER TABLE `hamburgers`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `menuItems`
--
ALTER TABLE `menuItems`
  ADD PRIMARY KEY (`ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `contents`
--
ALTER TABLE `contents`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `hamburgers`
--
ALTER TABLE `hamburgers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `menuItems`
--
ALTER TABLE `menuItems`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
