-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2016. Nov 27. 23:29
-- Kiszolgáló verziója: 10.1.16-MariaDB
-- PHP verzió: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `imdb`
--
CREATE DATABASE IF NOT EXISTS `imdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `imdb`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `filmek`
--

CREATE TABLE `filmek` (
  `azonosito` int(11) NOT NULL,
  `cim` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `megj_ev` year(4) NOT NULL,
  `hossz` varchar(8) COLLATE utf8_hungarian_ci NOT NULL,
  `kep` varchar(60) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `filmek`
--

INSERT INTO `filmek` (`azonosito`, `cim`, `megj_ev`, `hossz`, `kep`) VALUES
(1, 'Star Wars 2 - A Klónok Támadása', 2002, '142 perc', 'img/sci-fi/starwars2.png'),
(2, 'Star Wars 3 - A Sithek Bosszúja', 2005, '143 perc', 'img/sci-fi/starwars3.jpg'),
(3, 'Star Wars - The Clone Wars', 2008, '98 perc', 'img/animacio/starwarsCW.jpg'),
(4, 'Star Wars 5 - A Birodalom Visszavág', 1980, '124 perc', 'img/sci-fi/starwars5.jpg'),
(5, 'Star Wars 6 - A Jedi Visszatér', 1983, '134 perc', 'img/sci-fi/starwars6.jpg'),
(6, 'Star Wars 4 - Egy Új Remény', 1977, '125 perc', 'img/sci-fi/starwars4.jpg'),
(7, 'Mentőexpedíció', 2015, '140 perc', 'img/sci-fi/martian.jpg'),
(8, 'A gyűrűk ura - A gyűrű szövetsége', 2001, '178 perc', 'img/sci-fi/lotr1.jpg'),
(9, 'A gyűrűk ura - A két torony', 2002, '179 perc', 'img/sci-fi/lotr2.jpg'),
(10, 'A gyűrűk ura - A király visszatér', 2003, '201 perc', 'img/sci-fi/lotr3.jpg'),
(11, 'A rettenthetetlen', 1995, '178 perc', 'img/drama/braveheart.jpg'),
(12, 'A nagy Gatsby', 2013, '143 perc', 'img/drama/gatsby.jpg'),
(13, 'Tőzsdecápák - A pénz nem alszik', 2010, '133 perc', 'img/drama/tozsdecapak.jpg'),
(14, 'Ifjúság', 2015, '124 perc', 'img/drama/youth.jpg'),
(15, '2 kaliber', 2013, '109 perc', 'img/akcio/2guns.jpg'),
(16, '2012', 2009, '158 perc', 'img/akcio/2012.jpg'),
(17, 'Éli könyve', 2010, '118 perc', 'img/akcio/eli_konyve.jpg'),
(18, 'Halálos Fegyver 1', 1987, '110 perc', 'img/akcio/halalos1.jpg'),
(19, 'Halálos Fegyver 2', 1989, '114 perc', 'img/akcio/halalos2.jpg'),
(20, 'Halálos Fegyver 3', 1992, '118 perc', 'img/akcio/halalos3.jpg'),
(21, 'Hancock', 2008, '92 perc', 'img/akcio/hancock.jpg'),
(22, 'Hanna', 2011, '111 perc', 'img/akcio/hanna.jpg'),
(23, 'Holnapután', 2004, '124 perc', 'img/akcio/holnaputan.jpg'),
(24, 'John Wick', 2014, '101 perc', 'img/akcio/johnwick.jpg'),
(25, 'Démonok között', 2013, '112 perc', 'img/horror/Conjuring1.jpg'),
(26, 'Démonok között 2', 2016, '134 perc', 'img/horror/conjuring2.jpg'),
(27, 'Sikoly', 1996, '116 perc', 'img/horror/sikoly1.jpg'),
(28, 'Sikoly 2', 1997, '120 perc', 'img/horror/sikoly2.jpg'),
(29, 'Sikoly 3', 2000, '116 perc', 'img/horror/sikoly3.jpg'),
(30, 'Sikoly 4', 2011, '111 perc', 'img/horror/sikoly4.jpg'),
(31, 'Indiana Jones és az Elveszett Frigyláda Fosztogató', 1981, '115 perc', 'img/kaland/indiana1.jpg'),
(32, 'Indiana Jones és a Végzet Temploma', 1984, '118 perc', 'img/kaland/indiana2.jpg'),
(33, 'Indiana Jones és az Utolsó Kereszteslovag', 1989, '127 perc', 'img/kaland/indiana3.jpg'),
(34, 'Indiana Jones és a Kristálykoponya Királysága', 2008, '122 perc', 'img/kaland/indiana4.jpg'),
(35, 'A Hazafi', 2000, '165 perc', 'img/kaland/patriot.jpg'),
(36, 'A Visszatérő', 2016, '156 perc', 'img/kaland/revenant.jpg'),
(37, 'Lara Croft: Tomb Raider', 2001, '100 perc', 'img/kaland/tombraider1.jpg'),
(38, 'Lara Croft Tomb Raider: Az Élet Bölcsője', 2003, '117 perc', 'img/kaland/tombraider2.jpg'),
(39, 'Éjjeli Féreg', 2014, '117 perc', 'img/krimi/fereg.jpg'),
(40, 'A keresztapa', 1972, '175 perc', 'img/krimi/godfather.jpg'),
(41, 'A remény rabjai', 1994, '142 perc', 'img/krimi/remeny.jpg'),
(42, 'Sicario - A Bérgyilkos', 2015, '121 perc', 'img/krimi/sicario.jpg'),
(43, 'Tőzsdecápák', 1987, '126 perc', 'img/krimi/tozsdecapak1.jpg'),
(44, 'A 3 svéd lány Tirolban', 1977, '95 perc', 'img/porno/3svedlany.jpg'),
(45, 'Bajorok a pácban', 1974, '80 perc', 'img/porno/bajorok.jpg'),
(46, 'Debbie does Dallas', 1978, '80 perc', 'img/porno/debbie.jpg'),
(47, 'Legenda vagyok', 2007, '101 perc', 'img/thriller/iamlegend.jpg'),
(48, 'A sötétség után', 2013, '107 perc', 'img/thriller/philosophers.jpg'),
(49, 'Coming out', 2013, '96 perc', 'img/vigjatek/comingout.jpg'),
(50, 'Csak szex és más semmi', 2005, '97 perc', 'img/vigjatek/csakszex.jpg'),
(51, 'Don Jon', 2013, '90 perc', 'img/vigjatek/donjon.jpg'),
(52, 'Barátság extrákkal', 2011, '109 perc', 'img/vigjatek/friendsfuck.jpg'),
(53, 'Másnaposok', 2009, '100 perc', 'img/vigjatek/hangovers.jpg'),
(54, 'Másnaposok 2', 2011, '102 perc', 'img/vigjatek/hangovers2.jpg'),
(55, 'Mi kell a nőnek?', 2000, '127 perc', 'img/vigjatek/mi-kell-a-nonek.jpg'),
(56, 'Nagy fiúk', 2010, '102 perc', 'img/vigjatek/nagyfiuk1.jpg'),
(57, 'Nagy fiúk 2', 2013, '101 perc', 'img/vigjatek/nagyfiuk2.jpg'),
(58, 'Nem férek a bőrödbe', 2003, '97 perc', 'img/vigjatek/nemferek.jpg'),
(59, 'Nemzetbiztonság bt.', 2003, '88 perc', 'img/vigjatek/nemzetbiztonsag.jpg'),
(60, 'A (sz)ex az oka mindennek', 2015, '101 perc', 'img/vigjatek/szexazoka.jpg'),
(61, 'Törtetők', 2015, '104 perc', 'img/vigjatek/tortetok.jpg'),
(62, 'A Wall Street Farkasa', 2013, '180 perc', 'img/vigjatek/wows.jpg'),
(63, 'Zack & Miri pornót forgat', 2008, '101 perc', 'img/vigjatek/zack&miri.jpg'),
(64, 'Star Wars 7 - Az Ébredő Erő', 2015, '136 perc', 'img/sci-fi/starwars7.jpg'),
(65, 'Star Wars 1 - Baljós Árnyak', 1999, '136 perc', 'img/sci-fi/starwars1.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `filmkeszites`
--

CREATE TABLE `filmkeszites` (
  `azonosito` int(11) NOT NULL,
  `film_az` int(11) NOT NULL,
  `stud_az` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `filmkeszites`
--

INSERT INTO `filmkeszites` (`azonosito`, `film_az`, `stud_az`) VALUES
(1, 65, 11),
(3, 23, 15),
(4, 43, 3),
(5, 22, 5),
(6, 60, 12);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `filmstudiok`
--

CREATE TABLE `filmstudiok` (
  `azonosito` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `orszag` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `varos` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `cim` varchar(60) COLLATE utf8_hungarian_ci NOT NULL,
  `terem` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `filmstudiok`
--

INSERT INTO `filmstudiok` (`azonosito`, `nev`, `orszag`, `varos`, `cim`, `terem`) VALUES
(1, 'Koliwood', 'Magyarország', 'Budapest', 'Kossuth Lajos sgt. 74.', 3),
(2, 'Filmgráf', 'USA', 'L.A.', 'Back street 6.', 6),
(3, 'StanPan', 'USA', 'New York', 'Wall str. 243/a', 7),
(4, 'MGM Studio''s USA', 'USA', 'L.A.', 'Famous'' str. 1-12.', 12),
(5, 'MGM Australia', 'Australia', 'Melbourne', 'Cromwell str. 96-97.', 17),
(6, 'Promo Stúdió', 'Magyarország', 'Budapest', 'Sztálin tér 21.', 5),
(7, 'Szahara Ld. Studio''s', 'Tunézia', 'Tunisz', 'Al Allah str. 12-14.', 9),
(8, 'Baisers Français', 'Franciaország', 'Párizs', 'Rou de Faire L''amour 69.', 10),
(9, 'Disney Pictures USA', 'USA', 'L.A.', 'Famous'' str. 13-18.', 8),
(10, 'Disney Pictures USA', 'USA', 'New York', 'Washington sqr. 9-12.', 3),
(11, 'Circus Quattro', 'Írország', 'Dublin', 'Green Ace str. 10.', 1),
(12, 'MGM UK', 'UK', 'London', 'Elm street 13.', 5),
(13, 'Warner Brothers', 'UK', 'London', 'Beni Hill str. 15-17.', 6),
(14, 'Warner Brothers IR', 'Írország', 'Dublin', 'Lucky str. 2-4.', 4),
(15, 'Alpfigetta Asd.', 'Franciország', 'Párizs', 'Levertek-a-na''tzik boulevard 121.', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mufaj`
--

CREATE TABLE `mufaj` (
  `azonosito` int(11) NOT NULL,
  `film_az` int(11) NOT NULL,
  `mufaj` varchar(15) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `mufaj`
--

INSERT INTO `mufaj` (`azonosito`, `film_az`, `mufaj`) VALUES
(1, 1, 'akció'),
(2, 1, 'fantasztikus'),
(3, 1, 'kaland'),
(4, 1, 'sci-fi'),
(5, 2, 'akció'),
(6, 2, 'fantasztikus'),
(7, 2, 'kaland'),
(8, 2, 'sci-fi'),
(9, 3, 'akció'),
(10, 3, 'animációs'),
(11, 3, 'fantasztikus'),
(12, 3, 'kaland'),
(13, 3, 'sci-fi'),
(14, 4, 'akció'),
(15, 4, 'fantasztikus'),
(16, 4, 'kaland'),
(17, 4, 'sci-fi'),
(18, 5, 'akció'),
(19, 5, 'fantasztikus'),
(20, 5, 'kaland'),
(21, 5, 'sci-fi'),
(22, 6, 'akció'),
(23, 6, 'fantasztikus'),
(24, 6, 'kaland'),
(25, 6, 'sci-fi'),
(26, 7, 'dráma'),
(27, 7, 'kaland'),
(28, 7, 'sci-fi'),
(29, 8, 'dráma'),
(30, 8, 'fantasztikus'),
(31, 8, 'kaland'),
(32, 8, 'sci-fi'),
(33, 9, 'dráma'),
(34, 9, 'fantasztikus'),
(35, 9, 'kaland'),
(36, 9, 'sci-fi'),
(37, 10, 'dráma'),
(38, 10, 'fantasztikus'),
(39, 10, 'kaland'),
(40, 10, 'sci-fi'),
(41, 11, 'dráma'),
(42, 11, 'életrajzi'),
(43, 11, 'történelmi'),
(44, 12, 'dráma'),
(45, 12, 'romantikus'),
(46, 13, 'dráma'),
(47, 14, 'dráma'),
(48, 14, 'vígjáték'),
(49, 14, 'zenés'),
(50, 15, 'akció'),
(51, 15, 'kaland'),
(52, 15, 'krimi'),
(53, 16, 'akció'),
(54, 16, 'kaland'),
(55, 16, 'sci-fi'),
(56, 17, 'akció'),
(57, 17, 'dráma'),
(58, 17, 'kaland'),
(59, 18, 'akció'),
(60, 18, 'krimi'),
(61, 18, 'thriller'),
(62, 19, 'akció'),
(63, 19, 'krimi'),
(64, 19, 'thriller'),
(65, 20, 'akció'),
(66, 20, 'krimi'),
(67, 20, 'thriller'),
(68, 21, 'akció'),
(69, 21, 'dráma'),
(70, 21, 'krimi'),
(71, 22, 'akció'),
(72, 22, 'dráma'),
(73, 22, 'thriller'),
(74, 23, 'akció'),
(75, 23, 'kaland'),
(76, 23, 'sci-fi'),
(77, 24, 'akció'),
(78, 24, 'krimi'),
(79, 24, 'thriller'),
(80, 25, 'horror'),
(81, 25, 'misztikus'),
(82, 25, 'thriller'),
(83, 26, 'horror'),
(84, 26, 'misztikus'),
(85, 26, 'thriller'),
(86, 27, 'horror'),
(87, 27, 'misztikus'),
(88, 28, 'horror'),
(89, 28, 'misztikus'),
(90, 29, 'horror'),
(91, 29, 'misztikus'),
(92, 30, 'horror'),
(93, 30, 'misztikus'),
(94, 31, 'akció'),
(95, 31, 'kaland'),
(96, 32, 'akció'),
(97, 32, 'kaland'),
(98, 33, 'akció'),
(99, 33, 'kaland'),
(100, 34, 'akció'),
(101, 34, 'fantasztikus'),
(102, 34, 'kaland'),
(103, 35, 'akció'),
(104, 35, 'dráma'),
(105, 35, 'történelmi'),
(106, 36, 'dráma'),
(107, 36, 'kaland'),
(108, 36, 'thriller'),
(109, 37, 'akció'),
(110, 37, 'fantasztikus'),
(111, 37, 'kaland'),
(112, 38, 'akció'),
(113, 38, 'fantasztikus'),
(114, 38, 'kaland'),
(115, 39, 'dráma'),
(116, 39, 'krimi'),
(117, 39, 'thriller'),
(118, 40, 'dráma'),
(119, 40, 'krimi'),
(120, 41, 'dráma'),
(121, 41, 'krimi'),
(122, 42, 'akció'),
(123, 42, 'dráma'),
(124, 42, 'krimi'),
(125, 43, 'krimi'),
(126, 44, 'felnőtt'),
(127, 45, 'felnőtt'),
(128, 46, 'felnőtt'),
(129, 47, 'dráma'),
(130, 47, 'horror'),
(131, 47, 'sci-fi'),
(132, 48, 'dráma'),
(133, 48, 'fantasztikus'),
(134, 48, 'thriller'),
(135, 49, 'romantikus'),
(136, 49, 'vígjáték'),
(137, 50, 'vígjáték'),
(138, 51, 'dráma'),
(139, 51, 'romantikus'),
(140, 51, 'vígjáték'),
(141, 52, 'romantikus'),
(142, 52, 'vígjáték'),
(143, 53, 'vígjáték'),
(144, 54, 'misztikus'),
(145, 54, 'vígjáték'),
(146, 55, 'fantasztikus'),
(147, 55, 'romantikus'),
(148, 55, 'vígjáték'),
(149, 56, 'vígjáték'),
(150, 57, 'vígjáték'),
(151, 58, 'családi'),
(152, 58, 'fantasztikus'),
(153, 58, 'vígjáték'),
(154, 59, 'vígjáték'),
(155, 60, 'dráma'),
(156, 60, 'romantikus'),
(157, 60, 'vígjáték'),
(158, 61, 'vígjáték'),
(159, 62, 'életrajzi'),
(160, 62, 'krimi'),
(161, 62, 'vígjáték'),
(162, 63, 'romantikus'),
(163, 63, 'vígjáték'),
(164, 64, 'akció'),
(165, 64, 'fantasztikus'),
(166, 64, 'kaland'),
(167, 64, 'sci-fi'),
(168, 65, 'akció'),
(169, 65, 'fantasztikus'),
(170, 65, 'kaland'),
(171, 65, 'sci-fi');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szereples`
--

CREATE TABLE `szereples` (
  `azonosito` int(11) NOT NULL,
  `film_az` int(11) DEFAULT NULL,
  `szinesz_az` int(11) DEFAULT NULL,
  `szerep` varchar(20) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szereples`
--

INSERT INTO `szereples` (`azonosito`, `film_az`, `szinesz_az`, `szerep`) VALUES
(1, 1, 40, 'főszerep'),
(2, 1, 41, 'mellékszerep'),
(3, 1, 42, 'főszerep'),
(4, 1, 43, 'mellékszerep'),
(5, 10, 13, 'főszerep'),
(6, 10, 14, 'mellékszerep'),
(7, 10, 15, 'mellékszerep'),
(8, 10, 16, 'mellékszerep'),
(9, 10, 17, 'mellékszerep'),
(10, 10, 48, 'mellékszerep'),
(11, 11, 18, 'mellékszerep'),
(12, 11, 19, 'mellékszerep'),
(13, 11, 3, 'főszerep'),
(14, 12, 20, 'főszerep'),
(15, 12, 21, 'mellékszerep'),
(16, 12, 22, 'mellékszerep'),
(17, 13, 23, 'mellékszerep'),
(18, 13, 24, 'főszerep'),
(19, 13, 25, 'mellékszerep'),
(20, 13, 4, 'főszerep'),
(21, 14, 27, 'főszerep'),
(22, 14, 28, 'főszerep'),
(23, 14, 29, 'mellékszerep'),
(24, 15, 29, 'főszerep'),
(25, 15, 30, 'főszerep'),
(26, 15, 31, 'mellékszerep'),
(27, 15, 62, 'mellékszerep'),
(28, 16, 32, 'főszerep'),
(29, 16, 34, 'mellékszerep'),
(30, 16, 35, 'mellékszerep'),
(31, 17, 2, 'mellékszerep'),
(32, 17, 29, 'főszerep'),
(33, 18, 3, 'főszerep'),
(34, 18, 36, 'főszerep'),
(35, 19, 3, 'főszerep'),
(36, 19, 36, 'főszerep'),
(37, 2, 40, 'főszerep'),
(38, 2, 41, 'mellékszerep'),
(39, 2, 42, 'főszerep'),
(40, 2, 43, 'mellékszerep'),
(41, 20, 3, 'főszerep'),
(42, 20, 36, 'főszerep'),
(43, 21, 44, 'mellékszerep'),
(44, 21, 45, 'főszerep'),
(45, 21, 46, 'mellékszerep'),
(46, 22, 47, 'főszerep'),
(47, 22, 48, 'mellékszerep'),
(48, 23, 49, 'mellékszerep'),
(49, 23, 50, 'mellékszerep'),
(50, 23, 51, 'főszerep'),
(51, 24, 52, 'főszerep'),
(52, 25, 53, 'főszerep'),
(53, 25, 54, 'főszerep'),
(54, 26, 53, 'főszerep'),
(55, 26, 54, 'főszerep'),
(56, 27, 55, 'főszerep'),
(57, 27, 56, 'mellékszerep'),
(58, 27, 57, 'mellékszerep'),
(59, 28, 55, 'főszerep'),
(60, 29, 55, 'főszerep'),
(61, 30, 55, 'főszerep'),
(62, 30, 58, 'mellékszerep'),
(63, 31, 1, 'főszerep'),
(64, 31, 59, 'mellékszerep'),
(65, 32, 1, 'főszerep'),
(66, 33, 1, 'főszerep'),
(67, 34, 1, 'főszerep'),
(68, 34, 59, 'mellékszerep'),
(69, 35, 10, 'mellékszerep'),
(70, 35, 11, 'mellékszerep'),
(71, 35, 12, 'mellékszerep'),
(72, 35, 3, 'főszerep'),
(73, 35, 8, 'főszerep'),
(74, 35, 9, 'mellékszerep'),
(75, 36, 20, 'főszerep'),
(76, 37, 60, 'főszerep'),
(77, 38, 60, 'főszerep'),
(78, 39, 51, 'főszerep'),
(79, 39, 61, 'mellékszerep'),
(80, 39, 62, 'mellékszerep'),
(81, 4, 1, 'főszerep'),
(82, 4, 37, 'főszerep'),
(83, 4, 38, 'főszerep'),
(84, 40, 63, 'főszerep'),
(85, 40, 64, 'főszerep'),
(86, 41, 64, 'főszerep'),
(87, 42, 66, 'főszerep'),
(88, 43, 23, 'főszerep'),
(89, 43, 24, 'főszerep'),
(90, 46, 67, 'főszerep'),
(91, 47, 45, 'főszerep'),
(92, 48, 68, 'főszerep'),
(93, 48, 69, 'főszerep'),
(94, 5, 1, 'főszerep'),
(95, 5, 37, 'főszerep'),
(96, 5, 38, 'főszerep'),
(97, 51, 80, 'mellékszerep'),
(98, 52, 2, 'főszerep'),
(99, 52, 70, 'főszerep'),
(100, 53, 71, 'főszerep'),
(101, 53, 72, 'főszerep'),
(102, 53, 73, 'főszerep'),
(103, 54, 71, 'főszerep'),
(104, 54, 72, 'főszerep'),
(105, 54, 73, 'főszerep'),
(106, 55, 3, 'főszerep'),
(107, 56, 74, 'főszerep'),
(108, 56, 75, 'főszerep'),
(109, 57, 74, 'főszerep'),
(110, 57, 75, 'főszerep'),
(111, 59, 76, 'főszerep'),
(112, 6, 1, 'főszerep'),
(113, 6, 37, 'főszerep'),
(114, 6, 38, 'főszerep'),
(115, 60, 79, 'főszerep'),
(116, 62, 20, 'főszerep'),
(117, 62, 81, 'mellékszerep'),
(118, 63, 80, 'főszerep'),
(119, 64, 1, 'mellékszerep'),
(120, 64, 38, 'mellékszerep'),
(121, 65, 39, 'főszerep'),
(122, 65, 40, 'mellékszerep'),
(123, 65, 41, 'főszerep'),
(124, 65, 43, 'mellékszerep'),
(125, 7, 77, 'főszerep'),
(126, 7, 78, 'mellékszerep'),
(127, 8, 13, 'főszerep'),
(128, 8, 15, 'mellékszerep'),
(129, 8, 16, 'főszerep'),
(130, 9, 13, 'főszerep'),
(131, 9, 14, 'mellékszerep'),
(132, 9, 15, 'mellékszerep');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szinesz`
--

CREATE TABLE `szinesz` (
  `azonosito` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `szul` date NOT NULL,
  `nem` varchar(5) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szinesz`
--

INSERT INTO `szinesz` (`azonosito`, `nev`, `szul`, `nem`) VALUES
(1, 'Harrison Ford', '1942-07-13', 'férfi'),
(2, 'Mila Kunis', '1983-08-14', 'nő'),
(3, 'Mel Gibson', '1956-01-03', 'férfi'),
(4, 'Shia LaBeouf', '1986-06-11', 'férfi'),
(5, 'Megan Fox', '1986-05-16', 'nő'),
(6, 'Tyrese Gibson', '1978-12-30', 'férfi'),
(7, 'Josh Duhamel', '1972-11-14', 'férfi'),
(8, 'Heath Ledger', '1979-04-04', 'férfi'),
(9, 'Joely Richardson', '1965-01-09', 'nő'),
(10, 'Chris Cooper', '1951-07-09', 'férfi'),
(11, 'Jason Isaacs', '1963-06-06', 'férfi'),
(12, 'Donal Logue', '1966-02-27', 'férfi'),
(13, 'Elijah Wood', '1981-01-28', 'férfi'),
(14, 'Csókás Márton', '1966-06-30', 'férfi'),
(15, 'Christopher Lee', '1922-05-27', 'férfi'),
(16, 'Orlando Bloom', '1977-01-13', 'férfi'),
(17, 'Sean Bean', '1959-04-17', 'férfi'),
(18, 'Mhairi Calvey', '1988-05-07', 'nő'),
(19, 'James Cosmo', '1948-05-24', 'férfi'),
(20, 'Leonardo DiCaprio', '1974-11-11', 'férfi'),
(21, 'Elizabeth Debicki', '1990-08-01', 'nő'),
(22, 'Joel Edgerton', '1974-06-23', 'férfi'),
(23, 'Charlie Sheen', '1965-09-03', 'férfi'),
(24, 'Michael Douglas', '1944-09-25', 'férfi'),
(25, 'Carey Mulligan', '1985-05-28', 'nő'),
(26, 'Rachel Weisz', '1970-03-07', 'nő'),
(27, 'Michael Caine', '1933-03-14', 'férfi'),
(28, 'Paul Dano', '1984-06-19', 'férfi'),
(29, 'Denzel Washington', '1954-12-28', 'férfi'),
(30, 'Mark Wahlberg', '1971-06-05', 'férfi'),
(31, 'Paula Patton', '1975-12-05', 'nő'),
(32, 'John Cusack', '1966-06-28', 'férfi'),
(34, 'Chiwetel Ejiofor', '1977-07-10', 'férfi'),
(35, 'Amanda Peet', '1972-01-11', 'nő'),
(36, 'Danny Glover', '1946-07-22', 'férfi'),
(37, 'Mark Hamill', '1951-09-25', 'férfi'),
(38, 'Carrie Fisher', '1956-08-21', 'nő'),
(39, 'Liam Neeson', '1952-06-07', 'férfi'),
(40, 'Ewan McGregor', '1971-03-31', 'férfi'),
(41, 'Natalie Portman', '1981-06-09', 'nő'),
(42, 'Hayden Christensen', '1981-04-19', 'férfi'),
(43, 'Samuel L. Jackson', '1948-12-21', 'férfi'),
(44, 'Charlize Theron', '1975-08-07', 'nő'),
(45, 'Will Smith', '1968-09-25', 'férfi'),
(46, 'Jason Bateman', '1969-01-14', 'férfi'),
(47, 'Saoirse Ronan', '1994-04-12', 'nő'),
(48, 'Cate Blanchett', '1969-05-14', 'nő'),
(49, 'Emmy Rossum', '1986-09-12', 'nő'),
(50, 'Dennis Quaid', '1954-04-09', 'férfi'),
(51, 'Jake Gyllenhaall', '1980-12-19', 'férfi'),
(52, 'Keanu Reeves', '1964-09-02', 'férfi'),
(53, 'Patrick Wilson', '1973-07-03', 'férfi'),
(54, 'Vera Farmiga', '1973-08-06', 'nő'),
(55, 'Neve Campbell', '1973-11-03', 'nő'),
(56, 'Courteney Cox', '1964-06-15', 'nő'),
(57, 'Drew Barrymore', '1975-02-22', 'nő'),
(58, 'Shenae Grimes-Beech', '1989-11-24', 'nő'),
(59, 'Karen Allen', '1951-11-05', 'nő'),
(60, 'Angelina Jolie', '1975-06-04', 'nő'),
(61, 'Rene Russo', '1954-02-17', 'nő'),
(62, 'Bill Paxton', '1955-05-17', 'férfi'),
(63, 'Marlon Brando', '1924-04-03', 'férfi'),
(64, 'Al Pacino', '1940-04-25', 'férfi'),
(65, 'Tim Robbins', '1958-11-16', 'férfi'),
(66, 'Emily Blunt', '1983-02-23', 'nő'),
(67, 'Bambi Wood', '1955-07-12', 'nő'),
(68, 'Sophie Lowe', '1990-06-05', 'nő'),
(69, 'James D''Arcy', '1975-08-24', 'férfi'),
(70, 'Justin Timberlake', '1981-01-31', 'férfi'),
(71, 'Bradley Cooper', '1975-01-05', 'férfi'),
(72, 'Ed Helms', '1974-01-24', 'férfi'),
(73, 'Zach Galifianakis', '1969-11-01', 'férfi'),
(74, 'Adam Sandler', '1966-09-09', 'férfi'),
(75, 'Kevin James', '1965-04-26', 'férfi'),
(76, 'Martin Lawrence', '1965-04-16', 'férfi'),
(77, 'Matt Damon', '1970-11-08', 'férfi'),
(78, 'Jessica Chastain', '1977-03-24', 'nő'),
(79, 'Jason Sudeikis', '1975-09-18', 'férfi'),
(80, 'Seth Rogen', '1982-04-15', 'férfi'),
(81, 'Jonah Hill', '1983-12-20', 'férfi');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `filmek`
--
ALTER TABLE `filmek`
  ADD PRIMARY KEY (`azonosito`);

--
-- A tábla indexei `filmkeszites`
--
ALTER TABLE `filmkeszites`
  ADD PRIMARY KEY (`azonosito`),
  ADD KEY `film_az` (`film_az`),
  ADD KEY `stud_az` (`stud_az`);

--
-- A tábla indexei `filmstudiok`
--
ALTER TABLE `filmstudiok`
  ADD PRIMARY KEY (`azonosito`);

--
-- A tábla indexei `mufaj`
--
ALTER TABLE `mufaj`
  ADD PRIMARY KEY (`azonosito`),
  ADD KEY `azonosito` (`azonosito`),
  ADD KEY `azonosito_2` (`azonosito`),
  ADD KEY `film_az` (`film_az`);

--
-- A tábla indexei `szereples`
--
ALTER TABLE `szereples`
  ADD PRIMARY KEY (`azonosito`),
  ADD KEY `film_az` (`film_az`),
  ADD KEY `szinesz_az` (`szinesz_az`);

--
-- A tábla indexei `szinesz`
--
ALTER TABLE `szinesz`
  ADD PRIMARY KEY (`azonosito`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `filmek`
--
ALTER TABLE `filmek`
  MODIFY `azonosito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT a táblához `filmkeszites`
--
ALTER TABLE `filmkeszites`
  MODIFY `azonosito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT a táblához `filmstudiok`
--
ALTER TABLE `filmstudiok`
  MODIFY `azonosito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT a táblához `mufaj`
--
ALTER TABLE `mufaj`
  MODIFY `azonosito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT a táblához `szereples`
--
ALTER TABLE `szereples`
  MODIFY `azonosito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT a táblához `szinesz`
--
ALTER TABLE `szinesz`
  MODIFY `azonosito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `filmkeszites`
--
ALTER TABLE `filmkeszites`
  ADD CONSTRAINT `filmkeszites_ibfk_1` FOREIGN KEY (`film_az`) REFERENCES `filmek` (`azonosito`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `filmkeszites_ibfk_2` FOREIGN KEY (`stud_az`) REFERENCES `filmstudiok` (`azonosito`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `mufaj`
--
ALTER TABLE `mufaj`
  ADD CONSTRAINT `mufaj_ibfk_1` FOREIGN KEY (`film_az`) REFERENCES `filmek` (`azonosito`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `szereples`
--
ALTER TABLE `szereples`
  ADD CONSTRAINT `szereples_ibfk_1` FOREIGN KEY (`szinesz_az`) REFERENCES `szinesz` (`azonosito`) ON UPDATE CASCADE,
  ADD CONSTRAINT `szereples_ibfk_2` FOREIGN KEY (`film_az`) REFERENCES `filmek` (`azonosito`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
