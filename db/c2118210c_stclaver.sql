-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 20 mai 2023 à 12:21
-- Version du serveur : 10.5.19-MariaDB-cll-lve
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `c2118210c_stclaver`
--

-- --------------------------------------------------------

--
-- Structure de la table `caisse`
--

CREATE TABLE `caisse` (
  `id` int(11) NOT NULL,
  `nom_complet` text NOT NULL,
  `pays` text NOT NULL,
  `ville` text NOT NULL,
  `commune` text NOT NULL,
  `telephone` text NOT NULL,
  `email` text NOT NULL,
  `entreprise` text NOT NULL,
  `fonction` text NOT NULL,
  `date_arriver` text NOT NULL,
  `date_fin` text NOT NULL,
  `numero_identiter` text NOT NULL,
  `rue` text NOT NULL,
  `total_jours` text NOT NULL,
  `nationnalite` text NOT NULL,
  `chambres` text NOT NULL,
  `type_carte` text NOT NULL,
  `prix_chambre` text NOT NULL,
  `percepteur` text NOT NULL,
  `id_percepteur` int(11) NOT NULL,
  `code_facture` text NOT NULL,
  `date_operation` text NOT NULL,
  `tot_a_payer` text NOT NULL,
  `etat` int(11) NOT NULL,
  `motif` text NOT NULL,
  `client` text NOT NULL,
  `date_event` text NOT NULL,
  `description_evenement` text NOT NULL,
  `type_evenement` text NOT NULL,
  `nominnation` text NOT NULL,
  `nbr_personne` text NOT NULL,
  `prix` text NOT NULL,
  `salle` text NOT NULL,
  `num_carte` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `caisse`
--

INSERT INTO `caisse` (`id`, `nom_complet`, `pays`, `ville`, `commune`, `telephone`, `email`, `entreprise`, `fonction`, `date_arriver`, `date_fin`, `numero_identiter`, `rue`, `total_jours`, `nationnalite`, `chambres`, `type_carte`, `prix_chambre`, `percepteur`, `id_percepteur`, `code_facture`, `date_operation`, `tot_a_payer`, `etat`, `motif`, `client`, `date_event`, `description_evenement`, `type_evenement`, `nominnation`, `nbr_personne`, `prix`, `salle`, `num_carte`) VALUES
(31, 'Makangu ', 'Rdc', 'kisantu', 'baroubu', '0819778048', '', 'Hsj', 'gestionnaire', '2023-05-08', '2023-05-21', '', 'Mukelenge', '13', 'congolaise', 'Lys', 'Passport', '120', 'LOYOLA', 13, '1670781577', '2023-05-08', '1560', 0, 'location de la chambres', '', '', '', '', '', '', '', '', ''),
(32, 'marthe', 'rdc', 'kinshasa', 'mont ngafula', '+243817821910', '', 'HSJ', 'receptioniste', '2023-05-16', '2023-05-21', '', 'lutendele', '5', 'congolaise', '320', 'Carte electeur', '90', 'Xavier', 14, '1510455182', '2023-05-08', '450', 0, 'location de la chambres', '', '', '', '', '', '', '', '', ''),
(33, '', '', '', '', '+243817821910', '', 'HSJ', '', '', '', '', '', '', '', '', 'Carte electeur', '', 'Xavier', 14, '1620021458', '2023-05-08', '', 0, 'location de la salle', 'acf', '2023-05-09', '', 'reunion', 'Salle Henri dela Kethulle', '10-120', '500', '5', '236598'),
(34, '', '', '', '', '0811390800', '', 'Acation contre la faim', '', '', '', '', '', '', '', '', 'Carte electeur', '', 'LOYOLA', 13, '1166134039', '2023-05-08', '', 0, 'location de la salle', 'Action contre la faim', '2023-05-12', '', 'Conferences', 'Salle Mayamba', '5  40', '300', '3', '0002'),
(35, 'PAUL AKANGA', 'Rdc', 'kinshasa', 'ngaliema', '0893446371', '', '', 'casre carrecial', '', '', '', '', '0', 'congolaise', '311', 'Type carte', '90', 'LOYOLA', 13, '1502143984', '2023-05-09', '0', 0, 'location de la chambres', '', '', '', '', '', '', '', '', ''),
(36, 'Mme LINGOMBA LAURA', 'RDC', 'KINSHASA', '', '0974275940', '', '', '', '2023-05-07', '2023-05-13', '', 'KOKOLO', '6', 'CONGOLAISE', '317', 'Passport', '120', 'Xavier', 14, '1614357034', '2023-05-09', '720', 0, 'location de la chambres', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `caisses`
--

CREATE TABLE `caisses` (
  `id` int(11) NOT NULL,
  `code_facture` text NOT NULL,
  `date_operation` text NOT NULL,
  `tot_a_payer` float NOT NULL,
  `montant` float NOT NULL,
  `mode_paiement` text NOT NULL,
  `percepteur` text NOT NULL,
  `id_percepteur` int(11) NOT NULL,
  `motif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `caisses`
--

INSERT INTO `caisses` (`id`, `code_facture`, `date_operation`, `tot_a_payer`, `montant`, `mode_paiement`, `percepteur`, `id_percepteur`, `motif`) VALUES
(27, '1836763582', '', 90, 0, '', 'Xavier', 14, 'location de la chambres'),
(28, '1836763582', '2023-05-10', 90, 90, 'CARTE', 'Xavier', 14, 'location de la chambres'),
(30, '874302776', '', 1200, 0, '', 'Xavier', 14, 'location de la chambres'),
(31, '874302776', '2023-05-10', 1200, 840, 'CARTE', 'Xavier', 14, 'location de la chambres'),
(32, '737122392', '', 350, 0, '', 'Xavier', 14, 'location de la salle'),
(33, '737122392', '2023-05-10', 350, 350, 'VIREMENT', 'Xavier', 14, 'Location espace par personne'),
(34, '27869560', '', 1260, 0, '', 'Xavier', 14, 'location de la chambres'),
(35, '1557100318', '', 630, 0, '', 'Xavier', 14, 'location de la chambres'),
(36, '1765401504', '', 630, 0, '', 'Xavier', 14, 'location de la chambres'),
(37, '1990022385', '', 630, 0, '', 'Xavier', 14, 'location de la chambres'),
(38, '1596266256', '', 120, 0, '', 'Xavier', 14, 'location de la chambres'),
(40, '1638566861', '', 18480, 0, '', 'Xavier', 14, 'location de la chambres'),
(41, '396166842', '', 450, 0, '', 'Xavier', 14, 'location de la chambres'),
(43, '1091487260', '', 270, 0, '', 'Kitoga', 16, 'location de la chambres'),
(45, '2099409138', '', 7380, 0, '', 'Kitoga', 16, 'location de la chambres'),
(47, '1638566861', '2023-05-11', 18480, 4000, 'CARTE', 'root', 11, 'location de la chambres'),
(48, '795063610', '', 300, 0, '', 'root', 11, 'location de la salle'),
(49, '1483282932', '', 350, 0, '', 'root', 11, 'location de la salle'),
(51, '795063610', '2023-05-11', 300, 0, 'VIREMENT', 'root', 11, 'Location espace par personne'),
(52, '737122392', '2023-05-11', 350, 350, 'VIREMENT', 'root', 11, 'Location espace par personne'),
(54, '1638566861', '2023-05-11', 18480, 0, 'CARTE', 'Evelyne M.', 11, 'location de la chambres'),
(56, '858626486', '', 5310, 0, '', 'Esther', 16, 'location de la chambres'),
(57, '2029164004', '', 2790, 0, '', 'Esther', 16, 'location de la chambres'),
(60, '2029164004', '2023-05-12', 2790, 1800, 'VIREMENT', 'Evelyne M.', 20, 'location de la chambres'),
(67, '227172879', '', 350, 0, '', 'Dieu-merci', 17, 'location de la salle'),
(68, '1859118384', '', 350, 0, '', 'Evelyne M.', 20, 'location de la salle'),
(71, '1483282932', '2023-05-16', 350, 350, 'VIREMENT', 'Evelyne M.', 20, 'Location espace par personne'),
(72, '795063610', '2023-05-16', 300, 300, 'VIREMENT', 'Evelyne M.', 20, 'Location espace par personne'),
(75, '670867972', '', 90, 0, '', 'Chaida', 13, 'location de la chambres'),
(76, '1802326014', '', 360, 0, '', 'Esther', 16, 'location de la chambres'),
(77, '5830878', '', 360, 0, '', 'Esther', 16, 'location de la chambres'),
(78, '865282496', '', 630, 0, '', 'Dieu-merci', 17, 'location de la chambres'),
(79, '788336331', '', 500, 0, '', 'Racine', 19, 'location de la salle'),
(82, '402929165', '', 1000, 0, '', 'Chaida', 13, 'location de la salle'),
(83, '635006586', '', 2400, 0, '', 'Chaida', 13, 'location de la salle'),
(84, '1843136099', '', 350, 0, '', 'Chaida', 13, 'location de la salle'),
(85, '1843136099', '2023-05-18', 350, 350, 'Cash', 'Evelyne M.', 20, 'Location espace par personne'),
(86, '635006586', '2023-05-18', 300, 300, 'VIREMENT', 'Evelyne M.', 20, 'Location espace par personne'),
(87, '1859118384', '2023-05-18', 350, 350, 'Cash', 'Evelyne M.', 20, 'Location espace par personne'),
(88, '1483282932', '2023-05-18', 350, 350, 'VIREMENT', 'Evelyne M.', 20, 'Location espace par personne'),
(89, '1031936438', '2023-05-18', 300, 300, 'Cash', 'Evelyne M.', 20, 'Location espace par personne'),
(90, '1350374193', '2023-05-18', 500, 500, 'Cash', 'Evelyne M.', 20, 'Location espace par personne'),
(91, '1852354197', '', 1260, 0, '', 'Evelyne M.', 20, 'location de la chambres'),
(92, '2044242189', '', 90, 0, '', 'Evelyne M.', 20, 'location de la chambres'),
(93, '909685220', '', 1260, 0, '', 'Evelyne M.', 20, 'location de la chambres'),
(94, '909685220', '2023-05-18', 1260, 1260, 'Cash', 'Evelyne M.', 20, 'location de la chambres'),
(95, '2131313034', '', 270, 0, '', 'Seraphine', 18, 'location de la chambres'),
(96, '2131313034', '2023-05-18', 270, 270, 'Cash', 'Evelyne M.', 20, 'location de la chambres'),
(97, '670867972', '2023-05-18', 90, 90, 'Cash', 'Evelyne M.', 20, 'location de la chambres'),
(98, '1852354197', '2023-05-18', 1260, 1260, 'Cash', 'Evelyne M.', 20, 'location de la chambres'),
(99, '865282496', '2023-05-18', 630, 630, 'Cash', 'Evelyne M.', 20, 'location de la chambres'),
(100, '5830878', '2023-05-18', 360, 300, 'Cash', 'Evelyne M.', 20, 'location de la chambres'),
(101, '858626486', '2023-05-18', 5310, 1800, 'Cash', 'Evelyne M.', 20, 'location de la chambres'),
(102, '1228353968', '', 5490, 0, '', 'Chaida', 13, 'location de la chambres'),
(103, '46232905', '', 240, 0, '', 'Chaida', 13, 'location de la chambres'),
(104, '2131313034', '2023-05-18', 270, 270, 'Cash', 'Chaida', 13, 'location de la chambres'),
(105, '2131313034', '2023-05-18', 270, 270, 'Cash', 'Chaida', 13, 'location de la chambres'),
(106, '46232905', '2023-05-18', 240, 120, 'Cash', 'Chaida', 13, 'location de la chambres'),
(107, '301202398', '', 300, 0, '', 'Chaida', 13, 'location de la salle'),
(108, '539369462', '', 500, 0, '', 'Chaida', 13, 'location de la salle'),
(109, '653282089', '', 120, 0, '', 'Chaida', 13, 'location de la chambres'),
(110, '439218054', '', 90, 0, '', 'Esther', 16, 'location de la chambres'),
(111, '1345216332', '', 90, 0, '', 'Esther', 16, 'location de la chambres'),
(112, '1650016032', '', 120, 0, '', 'Jean Pascal', 15, 'location de la chambres'),
(113, '1125655603', '', 90, 0, '', 'Esther', 16, 'location de la chambres');

-- --------------------------------------------------------

--
-- Structure de la table `caisse_pressing`
--

CREATE TABLE `caisse_pressing` (
  `id` int(11) NOT NULL,
  `designation` text NOT NULL,
  `tarifi_normal` float NOT NULL,
  `tarifi_expresse` float NOT NULL,
  `percepteur` text NOT NULL,
  `id_percepteur` int(11) NOT NULL,
  `etat` int(11) NOT NULL,
  `qte` float NOT NULL,
  `pt` float NOT NULL,
  `id_prod` int(11) NOT NULL,
  `delimitation` text NOT NULL,
  `code_facture` text NOT NULL,
  `client` text NOT NULL,
  `Telephone` text NOT NULL,
  `date_operation` text NOT NULL,
  `position` int(11) NOT NULL,
  `tache` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `caisse_restaurant`
--

CREATE TABLE `caisse_restaurant` (
  `id` int(11) NOT NULL,
  `designation` text NOT NULL,
  `prix_usd` float NOT NULL,
  `categories` text NOT NULL,
  `percepteur` text NOT NULL,
  `id_percepteur` int(11) NOT NULL,
  `qte` int(11) NOT NULL,
  `pt` float NOT NULL,
  `code_facture` text NOT NULL,
  `date_operation` text NOT NULL,
  `etat` int(11) NOT NULL,
  `prix_fc` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `caisse_restaurant`
--

INSERT INTO `caisse_restaurant` (`id`, `designation`, `prix_usd`, `categories`, `percepteur`, `id_percepteur`, `qte`, `pt`, `code_facture`, `date_operation`, `etat`, `prix_fc`) VALUES
(122, 'NEDERBOURG ', 20, 'Boissons', 'root', 11, 1, 20, '924479833', '2023-05-11', 1, 0),
(123, 'NEDERBOURG ', 20, 'Boissons', 'root', 11, 1, 20, '924479833', '2023-05-11', 1, 0),
(124, 'NEDERBOURG ', 20, 'Boissons', 'root', 11, 1, 20, '924479833', '2023-05-11', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom_chambres` text NOT NULL,
  `prix_chambres` text NOT NULL,
  `code_cate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom_chambres`, `prix_chambres`, `code_cate`) VALUES
(5, 'Chambre simple', '90', '22'),
(6, 'Chambre double', '120', '44');

-- --------------------------------------------------------

--
-- Structure de la table `chambres`
--

CREATE TABLE `chambres` (
  `id` int(11) NOT NULL,
  `numero_chambres` text NOT NULL,
  `categories_chambres` text NOT NULL,
  `prix_chambre` text NOT NULL,
  `etat` int(11) NOT NULL,
  `code_cate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `chambres`
--

INSERT INTO `chambres` (`id`, `numero_chambres`, `categories_chambres`, `prix_chambre`, `etat`, `code_cate`) VALUES
(9, '301', 'Chambre simple', '90', 0, '22'),
(10, '302', 'Chambre simple', '90', 0, '22'),
(11, '303', 'Chambre double', '120', 0, '44'),
(12, '304', 'Chambre simple', '90', 0, '22'),
(13, '305', 'Chambre simple', '90', 1, '22'),
(14, '306', 'Chambre double', '120', 0, '44'),
(15, '307', 'Chambre simple', '90', 1, '22'),
(16, '308', 'Chambre simple', '90', 1, '22'),
(17, '311', 'Chambre simple', '90', 0, '22'),
(18, '312', 'Chambre simple', '90', 0, '22'),
(19, '313', 'Chambre simple', '90', 0, '22'),
(20, '314', 'Chambre double', '120', 1, '44'),
(21, '315', 'Chambre simple', '90', 1, '22'),
(22, '316', 'Chambre simple', '90', 0, '22'),
(23, '317', 'Chambre double', '120', 1, '44'),
(24, '318', 'Chambre simple', '90', 1, '22'),
(25, '319', 'Chambre simple', '90', 1, '22'),
(26, '320', 'Chambre simple', '90', 1, '22'),
(27, '321', 'Chambre simple', '90', 1, '22'),
(28, '322', 'Chambre simple', '90', 1, '22'),
(29, '323', 'Chambre simple', '90', 0, '22'),
(30, '324', 'Chambre simple', '90', 1, '22'),
(31, '325', 'Chambre simple', '90', 1, '22'),
(32, '326', 'Chambre simple', '90', 0, '22'),
(34, 'OrchidÃ©e', 'Chambre double', '120', 0, '44'),
(35, 'Tulipe', 'Chambre double', '120', 1, '44'),
(36, 'Trefle', 'Chambre double', '120', 0, '44'),
(37, 'PÃ©tunia', 'Chambre double', '120', 0, '44'),
(38, 'Lys', 'Chambre double', '120', 0, '44'),
(39, 'Lilas', 'Chambre double', '120', 0, '44'),
(40, 'Lavanda', 'Chambre double', '120', 0, '44'),
(41, 'jasmin', 'Chambre double', '120', 0, '44');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nom_complet` text NOT NULL,
  `pays` text NOT NULL,
  `ville` text NOT NULL,
  `commune` text NOT NULL,
  `telephone` text NOT NULL,
  `email` text NOT NULL,
  `entreprise` text NOT NULL,
  `fonction` text NOT NULL,
  `date_arriver` text NOT NULL,
  `date_fin` text NOT NULL,
  `numero_identiter` text NOT NULL,
  `rue` text NOT NULL,
  `total_jours` text NOT NULL,
  `nationnalite` text NOT NULL,
  `chambres` text NOT NULL,
  `type_carte` text NOT NULL,
  `prix_chambre` text NOT NULL,
  `percepteur` text NOT NULL,
  `id_percepteur` int(11) NOT NULL,
  `code_facture` text NOT NULL,
  `date_operation` text NOT NULL,
  `tot_a_payer` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom_complet`, `pays`, `ville`, `commune`, `telephone`, `email`, `entreprise`, `fonction`, `date_arriver`, `date_fin`, `numero_identiter`, `rue`, `total_jours`, `nationnalite`, `chambres`, `type_carte`, `prix_chambre`, `percepteur`, `id_percepteur`, `code_facture`, `date_operation`, `tot_a_payer`) VALUES
(36, 'M . BULAMBO KATAMBU AMBOISE ', 'RDC', 'KINSHASA', 'LIMETE', '0827511863', 'AMBOISE.BULAMBO@GMLAI.COM', 'INDIVIDU', 'PROFESSEUR', '2023-05-04', '2023-05-05', '', 'REGIDESO', '1', 'CONGOLAISE', '321', 'Carte electeur', '90', 'Xavier', 14, '1836763582', '2023-05-10', 90),
(38, 'Mme LINGOMBA LAURA', 'RDC', 'KINSHASA', 'KOKOLO', '0974275940', '', '', '', '2023-05-07', '2023-05-17', '', 'NÂ° 4', '10', 'CONGOLAISE', '317', 'Type d\'identitÃ©', '120', 'Xavier', 14, '874302776', '2023-05-10', 1200),
(39, 'M . KEZIPAME MOBETA STEPHANE', 'RDC', 'KINSHASA', 'ngaliema', '0815030047', 'stephanekezi@gmail.com', 'EAST CASTEL', 'SUPERVISEUR', '2023-05-09', '2023-05-23', '', 'AV MACAPAGNE', '14', 'CONGOLAISE', '307', 'Carte electeur', '90', 'Xavier', 14, '27869560', '2023-05-10', 1260),
(40, 'Mme PELLI CHERO ANNE MARIE', 'FRANCE', 'LETHOU', '13100', '+33631049813', 'ame.pellichero@gmail.net', 'ACF', 'DIRECTEUR', '2023-05-05', '2023-05-12', '', '', '7', 'FRANCAISE', '323', 'Passport', '90', 'Xavier', 14, '1557100318', '2023-05-10', 630),
(41, 'Mme PECRIAUX  FLORENCE', 'FRANCE', 'CANNES', '', '+33621616578', 'florence.pecriaux@gmail.com', 'ACF', '', '2023-05-05', '2023-05-12', '', 'AURELIENNE', '7', 'FRANCAISE', '316', 'Passport', '90', 'Xavier', 14, '1765401504', '2023-05-10', 630),
(42, 'M. PAPY LISULI', 'RDC', 'KISANGANI', 'MANGOBO', '0975495060', 'papylisuli82002@yahooFR', 'ACF', 'CONSULTANT', '2023-05-05', '2023-05-12', '', 'LUGWARA', '7', 'CONGOLAISE', '304', 'Carte electeur', '90', 'Xavier', 14, '1990022385', '2023-05-10', 630),
(43, 'M. MPAKU MPAKU BRISCA', 'RDC', 'KINSHASA', 'LEMBA', '0844459663', '', '', 'LIBERALE', '2023-05-10', '2023-05-11', '', '', '1', 'CONGOLAISE', 'Lavanda', 'Carte electeur', '120', 'Xavier', 14, '1596266256', '2023-05-10', 120),
(45, 'Mme MORCHID CHAIDIA', 'FRANCE', 'PARIS', '16 COUR DES PELITES CCMEC / NÂ°16', '+0033699149136', 'chadiamorchid@hormail.fr', 'monucso', 'psychologue', '2023-04-02', '2023-09-03', '', '', '154', 'FRANCAISE', '314', 'Passport', '120', 'Xavier', 14, '1638566861', '2023-05-10', 18480),
(46, 'M. KABEYA  KANANKOJI KANY', 'RDC ', 'KINSHASA', 'GOMBE', '0897887934', 'kany.kabeya@jmksancluary.co.za', 'TABITI SOLUTION SAS', 'DIRECTEUR GENERAL ', '2023-05-10', '2023-05-15', '', 'AV/ IS MASSAMBA NGALIEMA / NÂ° 16', '5', 'CONGOLAISE', '313', 'Carte electeur', '90', 'Xavier', 14, '396166842', '2023-05-10', 450),
(48, 'M.NDUME WA MUNG\'HO LEOPOLD', 'RDC', 'KINSHASA', 'ngaliema', '+243903206036', 'leonndume@gmail.com', '.........', '.........', '2023-05-09', '2023-05-12', '', 'MAKANDA KABOBI', '3', 'CONGOLAISE', '321', 'Carte electeur', '90', 'Kitoga', 16, '1091487260', '2023-05-10', 270),
(53, 'Mme JULIA WICKHAM', 'UK', 'LONDRE', '.....', '+447766334365', 'juliawickham@gmail.com', 'MONUSCO', 'AFFAIRES CIVILE', '2023-04-11', '2023-06-09', '', 'KNOLLYS ROAD', '59', 'UK', '325', 'Passport', '90', 'Esther', 16, '858626486', '2023-05-11', 5310),
(54, 'M.ALEXANDER DAVEY', 'ROYAUME UNI', 'ROVESAY', 'V Ste bute', '.........', 'alexanderdavey@cordaid.org', 'CORDAID', 'DP', '2023-05-11', '2023-06-11', '', 'BALLARCHY ROAD', '31', 'BRITANNIQUE', '319', 'Type carte', '90', 'Esther', 16, '2029164004', '2023-05-11', 2790),
(64, 'KABELA KAY CHANTAL', 'RDC', 'KINSHASA', 'LIMETE', '08145523501', '', '', '', '2023-05-17', '2023-05-18', '', 'LES OLIVIERS', '1', 'CONGOLAISE', '308', 'Passport', '90', 'Chaida', 13, '670867972', '2023-05-17', 90),
(65, 'Mme LAURA LINGOMBA', 'RDC', 'KINSHASA', 'NGALIEMA', '+243974275940', 'lauralingomba@yahoo.fr', 'SOLIDARITE BOBOTO CONGO', 'PRESIDENTE', '2023-05-17', '2023-05-21', '', 'KOKOLO', '4', 'CONGOLAISE', '321', 'Passport', '90', 'Esther', 16, '1802326014', '2023-05-17', 360),
(66, 'M.MBIYA YANNICK', 'NIGER', 'NIAMEY', '..............', '+243995215129', 'ilunga.yan20@gmail.com', '', 'ECA', '2023-05-17', '2023-05-21', '', '..............', '4', 'CONGOLAISE', '318', 'Passport', '90', 'Esther', 16, '5830878', '2023-05-17', 360),
(67, 'DIDO LUNDULA', 'AFRIQUE DU SUD', 'PRETORIA', '.............', '+243892411111', 'lundula@gmail.com', 'EWATT CONSULTING', 'EXECUTIVE', '2023-05-16', '2023-05-23', '', 'LEYOS', '7', 'CONGOLAISE', '315', 'Carte electeur', '90', 'Dieu-merci', 17, '865282496', '2023-05-18', 630),
(68, 'Jay ALEKI', 'RDC', 'KOLWEZI', '', '0816543352', '', 'PRIVEE', '', '2023-05-04', '2023-05-18', '', '', '14', 'CONGOLAISE', '324', 'Type d\'identitÃ©', '90', 'Evelyne M.', 20, '1852354197', '2023-05-18', 1260),
(69, 'JACOB MAZOMBO', 'RDC', 'KOLWEZI', '', '0816543352', '', 'PRIVEE', '', '2023-05-16', '2023-05-17', '', '', '1', 'CONGOLAISE', '304', 'Passport', '90', 'Evelyne M.', 20, '2044242189', '2023-05-18', 90),
(70, 'MPOMBO', 'RDC', '', '', '', '', '', '', '2023-04-30', '2023-05-14', '', '', '14', 'CONGOLAISE', '326', 'Carte electeur', '90', 'Evelyne M.', 20, '909685220', '2023-05-18', 1260),
(71, 'RUTURUTSA JACQUE', 'RDC', 'BUKAVU', 'IBANDA', '+243813163698', '', 'ADEPAE', 'DIRECTEUR ADJANT', '2023-05-18', '2023-05-21', '', 'DE LA MONTAGNE', '3', 'CONGOLAISE', '305', 'Type carte', '90', 'Seraphine', 18, '2131313034', '2023-05-18', 270),
(72, 'M. MESTRE DOMINIQUE', 'BELGIQUE', 'kinshasa', '', '0812572212', '', 'Touriste', 'Directeur', '2023-04-05', '2023-06-05', '', '', '61', 'BELGE', '322', 'Passport', '90', 'Chaida', 13, '1228353968', '2023-05-18', 5490),
(73, 'MOHAMUD SAID', 'RDC', 'LUBUMBASHI', 'LUBUMBASHI', '', '', 'PACIFIC', '', '2023-05-18', '2023-05-20', '', 'NDJAMENA', '2', 'ETHOPIENNE', 'Tulipe', 'Carte electeur', '120', 'Chaida', 13, '46232905', '2023-05-18', 240),
(74, 'ELIE BITAR', 'RDC', 'KINSHASA', 'GOMBE', '0827804764', '', '', '', '2023-05-19', '2023-05-20', '', '', '1', 'CONGOLAISE', '317', 'Carte electeur', '120', 'Chaida', 13, '653282089', '2023-05-19', 120),
(75, 'M.WATTEYN GEERT', 'BELGIQUE', 'DEINZE', '..............', '+32472090834', 'geertwatteyn@gmail.com', 'MSV', 'INFIRMIERE', '2023-05-19', '2023-05-20', '', 'JULES DAEMSHAAR', '1', 'BELGE', '308', 'Passport', '90', 'Esther', 16, '439218054', '2023-05-19', 90),
(76, 'Mme LEFEBVRE MARLEEN GODELIEVE', 'BELGIQUE', 'LETTRE', 'LETTRE', '03276766868', 'marleenlefebvre@gmail.com', 'MSV', 'INFIRMIERE', '2023-05-19', '2023-05-20', '', 'DU DE MINELLES', '1', 'BELGE', '320', 'Passport', '90', 'Esther', 16, '1345216332', '2023-05-19', 90),
(77, 'ELIE BITAR', 'RDC', 'KINSHASA', 'GOMBE', '+243827804764', '', 'KNCC', '', '2023-05-19', '2023-05-20', '', 'PIRRE MUBLE; by 24 novembre        N17; loc 602', '1', 'LIBAISE', '317', 'Passport', '120', 'Jean Pascal', 15, '1650016032', '2023-05-19', 120),
(78, 'Mme BRAU ANNE SABINE', 'BELGIQUE', 'ITTRE', '..............', '+32472559772', 'braunanne.25@gmail.com', 'MSV', 'KINESITHERAPIE', '2023-05-19', '2023-05-20', '', 'DE CAESBECY', '1', 'BELGE', '324', 'Passport', '90', 'Esther', 16, '1125655603', '2023-05-19', 90);

-- --------------------------------------------------------

--
-- Structure de la table `personelles`
--

CREATE TABLE `personelles` (
  `id` int(11) NOT NULL,
  `nom_agents` text NOT NULL,
  `telephone` int(11) NOT NULL,
  `sexe` varchar(7) NOT NULL,
  `service` varchar(20) NOT NULL,
  `adresse` text NOT NULL,
  `matricule` text NOT NULL,
  `mdp` text NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personelles`
--

INSERT INTO `personelles` (`id`, `nom_agents`, `telephone`, `sexe`, `service`, `adresse`, `matricule`, `mdp`, `username`) VALUES
(13, 'NZINGA NSANSI CHAIDA', 811390800, 'FEMME', 'Reception', 'kalamu, Q: kimbangu Av Lokelenge, NÂ° ', '1876330592', '1960', 'Chaida'),
(14, 'Mwelwa wessa Marthe', 817821910, 'FEMME', 'Reception', 'Mont-ngafula, Q. Lutendele nÂ° 14, Av Lukaya', '1881727628', '1980', 'Marthe'),
(15, 'Jean pascal Ntambwe', 823022468, 'HOMME', 'Reception', '', '2061216453', '2002', 'Jean Pascal'),
(16, 'Okitanganda Esther', 0, 'FEMME', 'Reception', '', '708956516', '2018', 'Esther'),
(17, 'Atweka Dieu-merci', 0, 'HOMME', 'Reception', '', '1804708574', '1976', 'Dieu-merci'),
(18, 'Lukiukilu Seraphine', 0, 'FEMME', 'Reception', '', '293538575', '1540', 'Seraphine'),
(19, 'LENGE Emmanuel', 2147483647, 'HOMME', 'DG', '7 avenue P. Boka', '1142175512', '1976', 'Racine'),
(20, 'Evelyne MAKANGU NDOMBASI', 819778048, 'FEMME', 'ADJOIN', '10 Av. Mukelenge ( Barumbu)', '544498818', '123', 'Evelyne M.');

-- --------------------------------------------------------

--
-- Structure de la table `pressing`
--

CREATE TABLE `pressing` (
  `id` int(11) NOT NULL,
  `designation` text NOT NULL,
  `tarifi_normal` text NOT NULL,
  `tarifi_expresse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pressing`
--

INSERT INTO `pressing` (`id`, `designation`, `tarifi_normal`, `tarifi_expresse`) VALUES
(3, 'Abacos', '8', '22'),
(4, 'BLOUSON', '4', '5'),
(5, 'Basket', '4', '6'),
(6, 'BOUBOU 2 PIECES', '8', '10'),
(7, 'Boubou 3 piÃ¨ce', '8', '10'),
(8, 'casquette', '2', '4'),
(9, 'chaussure dain', '5', '8'),
(10, 'CHEMISE', '3', '5'),
(11, 'Chaussettes', '2', '3'),
(12, 'CHEMISE BAZIN', '4', '5'),
(13, 'chemises Jeans', '3', '4'),
(14, 'CHEMISE VELOURS', '4', '6'),
(15, 'COSTUME DEMI -DKR 3PIECES', '5', '8'),
(16, 'costume demi  dkr 2 pcs', '5', '8'),
(17, 'Costume 3 pcs', '8', '9'),
(18, 'COSTUME 2 PIECES', '8', '9'),
(19, 'CRAVATE', '1', '2'),
(20, 'Ensemble 3 piÃ¨ce', '8', '9'),
(21, 'ENSEMBLE 2 PIECE', '8', '9'),
(22, 'MANTEAU', '7', '8'),
(23, 'Gilet', '2', '3'),
(24, 'PAGNE', '3', '4'),
(25, 'PANTALON JEANS', '3', '5'),
(26, 'pantalon velours', '4', '5'),
(27, 'PANTALON KAKI', '4', '5'),
(28, 'Pantalon lin', '4', '5'),
(29, 'PANTALON TISSU', '3', '5'),
(30, 'polo  T-shirt', '5', '5'),
(31, 'PULL OVER', '4', '6'),
(32, 'ROBE BAZIN', '4', '6'),
(33, 'Robe simple', '4', '6'),
(34, 'Robe Mariage', '20', '25'),
(35, 'ROBE SOIREE', '8', '10'),
(36, 'VESTON SIMPLE', '4', '5'),
(37, 'veston femme', '4', '6'),
(38, 'VESTON KAKI', '4', '6'),
(39, 'veston jeans', '4', '6');

-- --------------------------------------------------------

--
-- Structure de la table `profrorma`
--

CREATE TABLE `profrorma` (
  `id` int(11) NOT NULL,
  `code_proforma` text NOT NULL,
  `libelle` text NOT NULL,
  `montant` float NOT NULL,
  `client` text NOT NULL,
  `percepteur` text NOT NULL,
  `id_percepteur` int(11) NOT NULL,
  `motif` text NOT NULL,
  `date_operation` text NOT NULL,
  `etat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `profrorma`
--

INSERT INTO `profrorma` (`id`, `code_proforma`, `libelle`, `montant`, `client`, `percepteur`, `id_percepteur`, `motif`, `date_operation`, `etat`) VALUES
(16, '631849489', 'jasmin', 120, 'Georges', 'Racine', 19, 'chambres', '2023-05-11', 1),
(17, '1248283264', 'PÃ©tunia', 120, '', 'Chaida', 13, 'chambres', '2023-05-18', 0);

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `designation` text NOT NULL,
  `prix_usd` float NOT NULL,
  `categories` text NOT NULL,
  `prix_fc` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `restaurant`
--

INSERT INTO `restaurant` (`id`, `designation`, `prix_usd`, `categories`, `prix_fc`) VALUES
(9, 'TEMBO', 3, 'Boissons', 0),
(10, 'NKOYI', 2.5, 'Boissons', 0),
(11, 'BEAUFORT', 2.5, 'Boissons', 0),
(12, 'CASTEL', 2.5, 'Boissons', 0),
(13, 'PRIMUS', 2.5, 'Boissons', 0),
(14, 'TURBO', 2.5, 'Boissons', 0),
(15, 'TURBO', 2.5, 'Boissons', 0),
(16, 'HEINEKEN', 2.5, 'Boissons', 0),
(17, 'LEGEND PETIT', 2, 'Boissons', 0),
(18, 'BEAUFORT PETIT', 2, 'Boissons', 0),
(19, 'MULTING', 2, 'Boissons', 0),
(20, 'CLASS', 2, 'Boissons', 0),
(21, 'MALTINA', 1.5, 'Boissons', 0),
(22, 'COCA ZERO', 1.5, 'Boissons', 0),
(23, 'COCA', 1.5, 'Boissons', 0),
(24, 'FANTA', 1.5, 'Boissons', 0),
(25, 'SPRITE', 1.5, 'Boissons', 0),
(26, 'VITALO', 1.5, 'Boissons', 0),
(27, 'MALTINA', 1.5, 'Boissons', 0),
(28, 'TONIC', 1.5, 'Boissons', 0),
(29, 'SAVANA', 5, 'Boissons', 0),
(30, ' BAVARIA', 5, 'Boissons', 0),
(31, 'BARON SIMON', 5, 'Boissons', 0),
(32, 'EXO', 5, 'Boissons', 0),
(33, 'BOUTEILLE D\'EAU', 0.5, 'Boissons', 0),
(34, 'JUS CERES', 5, 'Boissons', 0),
(35, 'DON SIMON', 5, 'Boissons', 0),
(36, 'MARTINI', 20, 'Boissons', 0),
(37, 'PORTO', 20, 'Boissons', 0),
(38, 'NEDERBOURG ', 20, 'Boissons', 0);

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL,
  `client` text NOT NULL,
  `entreprise` text NOT NULL,
  `telephone` text NOT NULL,
  `num_carte` text NOT NULL,
  `type_carte` text NOT NULL,
  `date_event` text NOT NULL,
  `description_evenement` text NOT NULL,
  `type_evenement` text NOT NULL,
  `nominnation` text NOT NULL,
  `nbr_personne` text NOT NULL,
  `prix` text NOT NULL,
  `salle` text NOT NULL,
  `id_percepteur` int(11) NOT NULL,
  `percepteur` text NOT NULL,
  `code_facture` text NOT NULL,
  `date_fin` text NOT NULL,
  `jours` text NOT NULL,
  `tot_a_payer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id`, `client`, `entreprise`, `telephone`, `num_carte`, `type_carte`, `date_event`, `description_evenement`, `type_evenement`, `nominnation`, `nbr_personne`, `prix`, `salle`, `id_percepteur`, `percepteur`, `code_facture`, `date_fin`, `jours`, `tot_a_payer`) VALUES
(18, 'IN PLANETE DIGITAL', 'OGI', '0810015922', '00889', 'Carte electeur', '2023-05-17', '', 'Conferences', 'Salle Henri dela Kethulle', '10-120', '500', '5', 13, 'LOYOLA', '1350374193', '', '', '500'),
(19, 'JOSLN', 'OGI', '076678', '4356', 'Carte electeur', '2023-05-10', '', 'reunion', 'Salle Mayamba', '5  40', '300', '3', 16, 'Kitoga', '1031936438', '', '', '300'),
(20, 'JEMIMA', 'ACTION CONTRE LA FAIM', '0819797177', '', 'Type carte', '2023-05-10', '', 'Raconte', 'Salle Metena', '5-85', '350', '4', 14, 'Xavier', '737122392', '', '', '350'),
(21, ' MinistÃ¨re de la santÃ©', 'OMS', '0816543352', '', 'Type carte', '2023-05-11', '', 'reunion', 'Salle Mayamba', '5  40', '300', '3', 11, 'root', '795063610', '', '', '300'),
(22, 'OTHER SOLUTION CONS', 'ACTION CONTRE LA FIN', '0816543352', '', 'Type carte', '2023-05-11', '', 'Raconte', 'Salle Metena', '5-85', '350', '4', 11, 'root', '1483282932', '', '', '350'),
(23, 'M.YANICK', 'COMMUNITING', '+243992000807', '', 'Type carte', '2023-05-15', '', 'reunion', 'Salle Metena', '5-85', '350', '4', 17, 'Dieu-merci', '227172879', '', '', '350'),
(24, 'FRMI', 'FRMI', '', '', 'Type carte', '2023-05-16', '', 'Conferences', 'Salle Metena', '5-85', '350', '4', 20, 'Evelyne M.', '1859118384', '', '', '350'),
(27, 'NATALIE', 'G F A', '0810015922', '', 'Carte electeur', '2023-05-17', '', '', 'Salle Henri dela Kethulle', '10-120', '500', '5', 13, 'Chaida', '402929165', '2023-05-18', '2', '1000'),
(28, 'PATRICK', 'MINISTERE DE LA SANTE', '0817006420', '', 'Carte electeur', '2023-05-11', '', '', 'Salle Mayamba', '5  40', '300', '3', 13, 'Chaida', '635006586', '2023-05-18', '8', '2400'),
(29, 'FINA', 'SECRETARIAT GENERAL GENERAL', '', '', 'Carte electeur', '2023-05-18', '', '', 'Salle Metena', '5-85', '350', '4', 13, 'Chaida', '1843136099', '', '1', '350'),
(30, 'PATRICK', 'INSPECTION GENERAL DE LA SANTE OSM', '0817006420', '', 'Carte electeur', '2023-05-19', '', '', 'Salle Mayamba', '5  40', '300', '3', 13, 'Chaida', '301202398', '', '1', '300'),
(31, 'FINA', 'SECRETARIAT GENERAL DELA SANTE SG', '0817006420', '', 'Carte electeur', '2023-05-19', '', '', 'Salle Henri dela Kethulle', '10-120', '500', '5', 13, 'Chaida', '539369462', '', '1', '500');

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

CREATE TABLE `salles` (
  `id` int(11) NOT NULL,
  `nominnation` text NOT NULL,
  `nbr_personne` text NOT NULL,
  `prix` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `salles`
--

INSERT INTO `salles` (`id`, `nominnation`, `nbr_personne`, `prix`) VALUES
(3, 'Salle Mayamba', '5  40', '300'),
(4, 'Salle Metena', '5-85', '350'),
(5, 'Salle Henri dela Kethulle', '10-120', '500'),
(6, 'Grand balcon', '200', '300'),
(7, 'Location espace par personne', '1', '5');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `caisse`
--
ALTER TABLE `caisse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `caisses`
--
ALTER TABLE `caisses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `caisse_pressing`
--
ALTER TABLE `caisse_pressing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `caisse_restaurant`
--
ALTER TABLE `caisse_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chambres`
--
ALTER TABLE `chambres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personelles`
--
ALTER TABLE `personelles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pressing`
--
ALTER TABLE `pressing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `profrorma`
--
ALTER TABLE `profrorma`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `salles`
--
ALTER TABLE `salles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `caisse`
--
ALTER TABLE `caisse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `caisses`
--
ALTER TABLE `caisses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT pour la table `caisse_pressing`
--
ALTER TABLE `caisse_pressing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT pour la table `caisse_restaurant`
--
ALTER TABLE `caisse_restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `chambres`
--
ALTER TABLE `chambres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT pour la table `personelles`
--
ALTER TABLE `personelles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `pressing`
--
ALTER TABLE `pressing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `profrorma`
--
ALTER TABLE `profrorma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `salles`
--
ALTER TABLE `salles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
