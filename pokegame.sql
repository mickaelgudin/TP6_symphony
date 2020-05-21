-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 21, 2020 at 03:04 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokegame`
--
CREATE DATABASE IF NOT EXISTS `pokegame` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pokegame`;

-- --------------------------------------------------------

--
-- Table structure for table `dresseur`
--

DROP TABLE IF EXISTS `dresseur`;
CREATE TABLE IF NOT EXISTS `dresseur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mdp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pieces` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
CREATE TABLE IF NOT EXISTS `pokemon` (
  `idP` int(11) NOT NULL AUTO_INCREMENT,
  `sexe` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xp` int(11) NOT NULL,
  `niveau` int(11) NOT NULL,
  `prix_vente` int(11) NOT NULL,
  `pokemonTypeId` int(11) NOT NULL,
  `dresseurId` int(11) NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_elementary_type`
--

DROP TABLE IF EXISTS `ref_elementary_type`;
CREATE TABLE IF NOT EXISTS `ref_elementary_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `montagne` tinyint(1) NOT NULL DEFAULT 0,
  `prairie` tinyint(1) NOT NULL DEFAULT 0,
  `ville` tinyint(1) NOT NULL DEFAULT 0,
  `foret` tinyint(1) NOT NULL DEFAULT 0,
  `plage` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_elementary_type`
--

INSERT INTO `ref_elementary_type` (`id`, `libelle`, `montagne`, `prairie`, `ville`, `foret`, `plage`) VALUES
(1, 'ACIER', 1, 0, 0, 0, 0),
(2, 'COMBAT', 0, 0, 1, 0, 0),
(3, 'DRAGON', 1, 0, 0, 0, 1),
(4, 'EAU', 0, 0, 0, 0, 1),
(5, 'ELECTRIK', 0, 0, 1, 0, 0),
(6, 'FEE', 0, 1, 0, 0, 0),
(7, 'FEU', 0, 1, 0, 0, 0),
(8, 'GLACE', 1, 0, 0, 0, 0),
(9, 'INSECTE', 0, 0, 0, 1, 0),
(10, 'NORMAL', 1, 1, 1, 1, 1),
(11, 'PLANTE', 0, 1, 0, 0, 0),
(12, 'POISON', 0, 0, 0, 0, 1),
(13, 'PSY', 0, 0, 1, 0, 0),
(14, 'ROCHE', 1, 0, 0, 0, 0),
(15, 'SOL', 0, 1, 0, 0, 0),
(16, 'SPECTRE', 0, 0, 0, 1, 0),
(17, 'VOL', 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ref_pokemon_type`
--

DROP TABLE IF EXISTS `ref_pokemon_type`;
CREATE TABLE IF NOT EXISTS `ref_pokemon_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evolution` tinyint(1) NOT NULL,
  `starter` tinyint(1) NOT NULL,
  `type_courbe_niveau` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_1` int(11) NOT NULL,
  `type_2` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_pokemon_type`
--

INSERT INTO `ref_pokemon_type` (`id`, `nom`, `evolution`, `starter`, `type_courbe_niveau`, `type_1`, `type_2`) VALUES
(1, 'Bulbizarre', 0, 0, 'P', 0, 0),
(2, 'Herbizarre', 0, 0, 'P', 0, 0),
(3, 'Florizarre', 0, 0, 'P', 0, 0),
(4, 'SalamÃ¨che', 0, 0, 'P', 0, 0),
(5, 'Reptincel', 0, 0, 'P', 0, 0),
(6, 'Dracau7', 0, 0, 'P', 0, 0),
(7, 'Carapuce', 0, 0, 'P', 0, 0),
(8, 'Carabaffe', 0, 0, 'P', 0, 0),
(9, 'Tortank', 0, 0, 'P', 0, 0),
(10, 'Chenipan', 0, 0, 'M', 0, 0),
(11, 'Chrys1', 0, 0, 'M', 0, 0),
(12, 'Papilusion', 0, 0, 'M', 0, 0),
(13, 'Aspicot', 0, 0, 'M', 0, 0),
(14, 'Coconfort', 0, 0, 'M', 0, 0),
(15, 'Dardargnan', 0, 0, 'M', 0, 0),
(16, 'Roucool', 0, 0, 'P', 0, 0),
(17, 'Roucoups', 0, 0, 'P', 0, 0),
(18, 'Roucarnage', 0, 0, 'P', 0, 0),
(19, 'Rattata', 0, 0, 'M', 0, 0),
(20, 'Rattatac', 0, 0, 'M', 0, 0),
(21, 'Piafabec', 0, 0, 'M', 0, 0),
(22, 'Rapasdepic', 0, 0, 'M', 0, 0),
(23, 'Abo', 0, 0, 'M', 0, 0),
(24, 'Arbok', 0, 0, 'M', 0, 0),
(25, 'Pikachu', 0, 0, 'M', 0, 0),
(26, 'Raichu', 0, 0, 'M', 0, 0),
(27, 'Sabelette', 0, 0, 'M', 0, 0),
(28, 'Sablair4', 0, 0, 'M', 0, 0),
(29, 'Nidoran_', 0, 0, 'P', 0, 0),
(30, 'Nidorina', 0, 0, 'P', 0, 0),
(31, 'Nidoqueen', 0, 0, 'P', 0, 0),
(32, 'Nidoran_', 0, 0, 'P', 0, 0),
(33, 'Nidorino', 0, 0, 'P', 0, 0),
(34, 'Nidoking', 0, 0, 'P', 0, 0),
(35, 'MÃ©lofÃ©e', 0, 0, 'R', 0, 0),
(36, 'MÃ©lodelfe', 0, 0, 'R', 0, 0),
(37, 'Goupix', 0, 0, 'M', 0, 0),
(38, '7nard', 0, 0, 'M', 0, 0),
(39, 'Rondoudou', 0, 0, 'R', 0, 0),
(40, 'Grodoudou', 0, 0, 'R', 0, 0),
(41, 'Nosferapti', 0, 0, 'M', 0, 0),
(42, 'Nosferalto', 0, 0, 'M', 0, 0),
(43, 'Mystherbe', 0, 0, 'P', 0, 0),
(44, 'Ortide', 0, 0, 'P', 0, 0),
(45, 'Rafflesia', 0, 0, 'P', 0, 0),
(46, 'Paras', 0, 0, 'M', 0, 0),
(47, 'Parasect', 0, 0, 'M', 0, 0),
(48, 'Mimitoss', 0, 0, 'M', 0, 0),
(49, 'AÃ©romite', 0, 0, 'M', 0, 0),
(50, 'Taupiqueur', 0, 0, 'M', 0, 0),
(51, 'Triopikeur', 0, 0, 'M', 0, 0),
(52, 'Miaouss', 0, 0, 'M', 0, 0),
(53, 'Persian', 0, 0, 'M', 0, 0),
(54, '13kokwak', 0, 0, 'M', 0, 0),
(55, 'Akwakwak', 0, 0, 'M', 0, 0),
(56, 'FÃ©rosinge', 0, 0, 'M', 0, 0),
(57, 'Colossinge', 0, 0, 'M', 0, 0),
(58, 'Caninos', 0, 0, 'L', 0, 0),
(59, 'Arcanin', 0, 0, 'L', 0, 0),
(60, 'Ptitard', 0, 0, 'P', 0, 0),
(61, 'TÃ©tarte', 0, 0, 'P', 0, 0),
(62, 'Tartard', 0, 0, 'P', 0, 0),
(63, 'Abra', 0, 0, 'P', 0, 0),
(64, 'Kadabra', 0, 0, 'P', 0, 0),
(65, 'Alakazam', 0, 0, 'P', 0, 0),
(66, 'Machoc', 0, 0, 'P', 0, 0),
(67, 'Machopeur', 0, 0, 'P', 0, 0),
(68, 'Mackogneur', 0, 0, 'P', 0, 0),
(69, 'ChÃ©tiflor', 0, 0, 'P', 0, 0),
(70, 'Boustiflor', 0, 0, 'P', 0, 0),
(71, 'Empiflor', 0, 0, 'P', 0, 0),
(72, 'Tentacool', 0, 0, 'L', 0, 0),
(73, 'Tentacruel', 0, 0, 'L', 0, 0),
(74, 'Racaillou', 0, 0, 'P', 0, 0),
(75, 'Gravalanch', 0, 0, 'P', 0, 0),
(76, 'Grolem', 0, 0, 'P', 0, 0),
(77, 'Ponyta', 0, 0, 'M', 0, 0),
(78, 'Galopa', 0, 0, 'M', 0, 0),
(79, 'Ramoloss', 0, 0, 'M', 0, 0),
(80, 'Flagadoss', 0, 0, 'M', 0, 0),
(81, 'MagnÃ©ti', 0, 0, 'M', 0, 0),
(82, 'MagnÃŒÂ©ton', 0, 0, 'M', 0, 0),
(83, 'Canarticho', 0, 0, 'M', 0, 0),
(84, 'Doduo', 0, 0, 'M', 0, 0),
(85, 'Dodrio', 0, 0, 'M', 0, 0),
(86, 'Otaria', 0, 0, 'M', 0, 0),
(87, 'Lamantine', 0, 0, 'M', 0, 0),
(88, 'Tadmorv', 0, 0, 'M', 0, 0),
(89, 'Grotadmorv', 0, 0, 'M', 0, 0),
(90, 'Kokiyas', 0, 0, 'L', 0, 0),
(91, 'Crustabri', 0, 0, 'L', 0, 0),
(92, 'Fantominus', 0, 0, 'P', 0, 0),
(93, 'Spectrum', 0, 0, 'P', 0, 0),
(94, 'Ectoplasma', 0, 0, 'P', 0, 0),
(95, 'Onix', 0, 0, 'M', 0, 0),
(96, 'Soporifik', 0, 0, 'M', 0, 0),
(97, 'Hypnomade', 0, 0, 'M', 0, 0),
(98, 'Krabby', 0, 0, 'M', 0, 0),
(99, 'Krabboss', 0, 0, 'M', 0, 0),
(100, '18torbe', 0, 0, 'M', 0, 0),
(101, 'Electrode', 0, 0, 'M', 0, 0),
(102, 'Noeunoeuf', 0, 0, 'L', 0, 0),
(103, 'Noadkoko', 0, 0, 'L', 0, 0),
(104, 'Osselait', 0, 0, 'M', 0, 0),
(105, 'Ossatueur', 0, 0, 'M', 0, 0),
(106, 'Kicklee', 0, 0, 'M', 0, 0),
(107, 'Tygnon', 0, 0, 'M', 0, 0),
(108, 'Excelangue', 0, 0, 'M', 0, 0),
(109, 'Smogo', 0, 0, 'M', 0, 0),
(110, 'Smogogo', 0, 0, 'M', 0, 0),
(111, 'Rhinocorne', 0, 0, 'L', 0, 0),
(112, 'RhinofÃ©ros', 0, 0, 'L', 0, 0),
(113, 'Leveinard', 0, 0, 'R', 0, 0),
(114, 'Saquedeneu', 0, 0, 'M', 0, 0),
(115, 'Kangourex', 0, 0, 'M', 0, 0),
(116, 'Hypotrempe', 0, 0, 'M', 0, 0),
(117, 'HypocÃŒÂ©an', 0, 0, 'M', 0, 0),
(118, 'PoissirÃŒÂ¬ne', 0, 0, 'M', 0, 0),
(119, 'Poissoroy', 0, 0, 'M', 0, 0),
(120, 'Stari', 0, 0, 'L', 0, 0),
(121, 'Staross', 0, 0, 'L', 0, 0),
(122, 'M. Mime', 0, 0, 'M', 0, 0),
(123, 'InsÃ©cateur', 0, 0, 'M', 0, 0),
(124, 'Lippoutou', 0, 0, 'M', 0, 0),
(125, 'Elektek', 0, 0, 'M', 0, 0),
(126, 'Magmar', 0, 0, 'M', 0, 0),
(127, 'Scarabrute', 0, 0, 'L', 0, 0),
(128, 'Tauros', 0, 0, 'L', 0, 0),
(129, 'Magicarpe', 0, 0, 'L', 0, 0),
(130, 'LÃ©viator', 0, 0, 'L', 0, 0),
(131, 'Lokhlass', 0, 0, 'L', 0, 0),
(132, 'MÃ©tamorph', 0, 0, 'M', 0, 0),
(133, 'E18i', 0, 0, 'M', 0, 0),
(134, 'Aquali', 0, 0, 'M', 0, 0),
(135, '18tali', 0, 0, 'M', 0, 0),
(136, 'Pyroli', 0, 0, 'M', 0, 0),
(137, 'Porygon', 0, 0, 'M', 0, 0),
(138, 'Amonita', 0, 0, 'M', 0, 0),
(139, 'Amonistar', 0, 0, 'M', 0, 0),
(140, 'Kabuto', 0, 0, 'M', 0, 0),
(141, 'Kabutops', 0, 0, 'M', 0, 0),
(142, 'PtÃ©ra', 0, 0, 'L', 0, 0),
(143, 'Ronflex', 0, 0, 'L', 0, 0),
(144, 'Artikodin', 0, 0, 'L', 0, 0),
(145, 'Electhor', 0, 0, 'L', 0, 0),
(146, 'Sulfura', 0, 0, 'L', 0, 0),
(147, 'Minidraco', 0, 0, 'L', 0, 0),
(148, 'Draco', 0, 0, 'L', 0, 0),
(149, 'Dracolosse', 0, 0, 'L', 0, 0),
(150, 'Mewtwo', 0, 0, 'L', 0, 0),
(151, 'Mew', 0, 0, 'P', 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
