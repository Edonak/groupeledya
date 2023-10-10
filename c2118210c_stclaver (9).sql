-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 23 juin 2023 à 19:38
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Structure de la table `appro`
--

CREATE TABLE `appro` (
  `id` int(11) NOT NULL,
  `code_produits` text NOT NULL,
  `date_expiration` text NOT NULL,
  `lot` text NOT NULL,
  `qte_cart` text NOT NULL,
  `pa_usd` text NOT NULL,
  `pv_usd` float NOT NULL,
  `date_enregistrement` text NOT NULL,
  `sortie` int(11) NOT NULL,
  `alert` float NOT NULL,
  `qte_pieces` int(11) NOT NULL,
  `bg` float NOT NULL,
  `pourcentage` float NOT NULL,
  `pu_cdf` float NOT NULL,
  `nom_produits` text NOT NULL,
  `type_produits` text NOT NULL,
  `devise` text NOT NULL,
  `pa_cdf` text NOT NULL,
  `pv_cdf` float NOT NULL,
  `pu_usd` float NOT NULL,
  `perimer` int(11) NOT NULL,
  `perte_pv_cdf` float NOT NULL,
  `perte_pu_usd` float NOT NULL,
  `perte_pu_cdf` float NOT NULL,
  `perte_pv_usd` float NOT NULL,
  `perte_qte_cart` int(11) NOT NULL,
  `jours_expire` int(11) NOT NULL,
  `etat` int(11) NOT NULL,
  `position_alefte` text NOT NULL,
  `posologie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `appro`
--

INSERT INTO `appro` (`id`, `code_produits`, `date_expiration`, `lot`, `qte_cart`, `pa_usd`, `pv_usd`, `date_enregistrement`, `sortie`, `alert`, `qte_pieces`, `bg`, `pourcentage`, `pu_cdf`, `nom_produits`, `type_produits`, `devise`, `pa_cdf`, `pv_cdf`, `pu_usd`, `perimer`, `perte_pv_cdf`, `perte_pu_usd`, `perte_pu_cdf`, `perte_pv_usd`, `perte_qte_cart`, `jours_expire`, `etat`, `position_alefte`, `posologie`) VALUES
(50, '2234437271', '2023-10-31', '2053697709', '45', '', 20, '2023-05-29', 38, 5, 0, 0, 0, 0, 'dollaren', 'COMPRIMER', '', '', 46000, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'non', ''),
(51, '2234437271', '2023-09-30', '1262116756', '30', '', 20, '2023-05-29', 20, 5, 0, 0, 0, 0, 'dollaren', 'CIRO', '', '', 46000, 0, 0, 0, 0, 0, 0, 0, 124, 0, 'non', ''),
(52, '1245822984', '2023-08-31', '1269036542', '60', '', 0.0608696, '2023-05-30', 14, 5, 0, 0, 0, 0, 'quinine', 'COMPRIMER', '', '', 140, 0, 0, 0, 0, 0, 0, 0, 93, 0, 'non', '');

-- --------------------------------------------------------

--
-- Structure de la table `archives`
--

CREATE TABLE `archives` (
  `id` int(11) NOT NULL,
  `code_produits` text NOT NULL,
  `date_expiration` text NOT NULL,
  `lot` text NOT NULL,
  `qte` text NOT NULL,
  `pa` text NOT NULL,
  `pv` text NOT NULL,
  `date_enregistrement` text NOT NULL,
  `sortie` varchar(30) NOT NULL,
  `nom_produits` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `archives_appro`
--

CREATE TABLE `archives_appro` (
  `id` int(11) NOT NULL,
  `code_produits` text NOT NULL,
  `date_expiration` text NOT NULL,
  `lot` text NOT NULL,
  `qte_cart` text NOT NULL,
  `pa_usd` text NOT NULL,
  `pv_usd` float NOT NULL,
  `date_enregistrement` text NOT NULL,
  `sortie` int(11) NOT NULL,
  `alert` float NOT NULL,
  `qte_pieces` int(11) NOT NULL,
  `bg` float NOT NULL,
  `pourcentage` float NOT NULL,
  `pu_cdf` float NOT NULL,
  `nom_produits` text NOT NULL,
  `type_produits` text NOT NULL,
  `devise` text NOT NULL,
  `pa_cdf` text NOT NULL,
  `pv_cdf` float NOT NULL,
  `pu_usd` float NOT NULL,
  `perimer` int(11) NOT NULL,
  `perte_pv_cdf` float NOT NULL,
  `perte_pu_usd` float NOT NULL,
  `perte_pu_cdf` float NOT NULL,
  `perte_pv_usd` float NOT NULL,
  `perte_qte_cart` int(11) NOT NULL,
  `jours_expire` int(11) NOT NULL,
  `etat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `archives_appro`
--

INSERT INTO `archives_appro` (`id`, `code_produits`, `date_expiration`, `lot`, `qte_cart`, `pa_usd`, `pv_usd`, `date_enregistrement`, `sortie`, `alert`, `qte_pieces`, `bg`, `pourcentage`, `pu_cdf`, `nom_produits`, `type_produits`, `devise`, `pa_cdf`, `pv_cdf`, `pu_usd`, `perimer`, `perte_pv_cdf`, `perte_pu_usd`, `perte_pu_cdf`, `perte_pv_usd`, `perte_qte_cart`, `jours_expire`, `etat`) VALUES
(44, '1524437271', '2023-08-31', '12DE', '10', '80', 0, '2023-05-26', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '184000', 0, 0, 0, 0, 0, 0, 0, 0, 97, 0),
(45, '1245822984', '2023-07-31', '13E23', '10', '75', 0, '2023-05-26', 0, 0, 0, 0, 0, 0, 'quinine', 'COMPRIMER', 'USD', '172500', 0, 0, 0, 0, 0, 0, 0, 0, 66, 0),
(46, '1524437271', '2023-09-30', '12DE', '10', '120', 0, '2023-05-28', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '276000', 0, 0, 0, 0, 0, 0, 0, 0, 125, 0),
(47, '1524437271', '2023-08-31', '12DE', '10', '220', 0, '2023-05-28', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '506000', 0, 0, 0, 0, 0, 0, 0, 0, 95, 0),
(48, '1524437271', '2023-07-31', '12DE', '10', '120', 0, '2023-05-28', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '276000', 0, 0, 0, 0, 0, 0, 0, 0, 64, 0),
(49, '1524437271', '2023-05-31', '12DE', '120', '150', 0, '2023-05-28', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '345000', 0, 0, 0, 0, 0, 0, 0, 0, 3, 0),
(50, '1524437271', '2023-05-31', '12DE', '33', '46000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '105800000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(51, '1524437271', '2023-05-31', '12DE', '32', '46000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '105800000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(52, '1524437271', '2023-05-31', '12DE', '8', '46000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '105800000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(53, '1524437271', '2023-05-31', '12DE', '38', '46000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '105800000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(54, '1524437271', '2023-05-31', '12DE', '2', '20000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '46000000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(55, '1524437271', '2023-05-31', '12DE', '20', '46000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '105800000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(56, '1524437271', '2023-05-31', '12DE', '10', '46000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '105800000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(57, '1524437271', '2023-05-31', '12DE', '10', '46000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '105800000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(58, '1524437271', '2023-05-31', '12DE', '5', '46000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '105800000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(59, '1524437271', '2023-05-31', '12DE', '25', '46000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '105800000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(60, '1524437271', '2023-05-31', '12DE', '10', '46000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '105800000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(61, '1524437271', '2023-05-31', '12DE', '10', '140', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '322000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(62, '1524437271', '2023-05-31', '12DE', '50', '20000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '46000000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(63, '1524437271', '2023-05-31', '12DE', '10', '46000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', 'USD', '105800000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(64, '1524437271', '2023-08-31', '1518930348', '60', '6900000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', '', '3000', 0, 0, 0, 0, 0, 0, 0, 0, 94, 0),
(65, '2234437271', '2023-08-31', '1325675525', '10', '105800000', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'dollaren', 'COMPRIMER', '', '46000', 0, 0, 0, 0, 0, 0, 0, 0, 94, 0),
(66, '1524437271', '2023-08-31', '1014261733', '50', '20', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'ubucap', 'COMPRIMER', '', '46000', 0, 0, 0, 0, 0, 0, 0, 0, 94, 0),
(67, '2234437271', '2023-08-31', '1464929906', '10', '20', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'dollaren', 'COMPRIMER', '', '46000', 0, 0, 0, 0, 0, 0, 0, 0, 94, 0),
(68, '2234437271', '2023-05-31', '2053697709', '10', '20', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'dollaren', 'COMPRIMER', '', '46000', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(69, '2234437271', '2023-09-30', '1262116756', '10', '20', 0, '2023-05-29', 0, 0, 0, 0, 0, 0, 'dollaren', 'CIRO', '', '46000', 0, 0, 0, 0, 0, 0, 0, 0, 124, 0),
(70, '1245822984', '2023-08-31', '1269036542', '60', '0.060869565217391', 0, '2023-05-30', 0, 0, 0, 0, 0, 0, 'quinine', 'COMPRIMER', '', '140', 0, 0, 0, 0, 0, 0, 0, 0, 93, 0);

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
-- Structure de la table `caisse_produis`
--

CREATE TABLE `caisse_produis` (
  `id` int(11) NOT NULL,
  `code_produits` text NOT NULL,
  `lot` text NOT NULL,
  `qte_cart` text NOT NULL,
  `date_enregistrement` text NOT NULL,
  `pu_cdf` float NOT NULL,
  `nom_produits` text NOT NULL,
  `type_produits` text NOT NULL,
  `pu_usd` float NOT NULL,
  `perimer` text NOT NULL,
  `code_facture` text NOT NULL,
  `etat` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `username` text NOT NULL,
  `type_vente` text NOT NULL,
  `qrcode` text NOT NULL,
  `libelle` text NOT NULL,
  `nom` text NOT NULL,
  `age` int(11) NOT NULL,
  `sexe` text NOT NULL,
  `tel` text NOT NULL,
  `docteur` text NOT NULL,
  `titre` text NOT NULL,
  `total` float NOT NULL,
  `partennaire` text NOT NULL,
  `sous_partennaire` text NOT NULL,
  `categorie` text NOT NULL,
  `reduction` int(11) NOT NULL,
  `total_generale` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `caisse_produis`
--

INSERT INTO `caisse_produis` (`id`, `code_produits`, `lot`, `qte_cart`, `date_enregistrement`, `pu_cdf`, `nom_produits`, `type_produits`, `pu_usd`, `perimer`, `code_facture`, `etat`, `id_produit`, `username`, `type_vente`, `qrcode`, `libelle`, `nom`, `age`, `sexe`, `tel`, `docteur`, `titre`, `total`, `partennaire`, `sous_partennaire`, `categorie`, `reduction`, `total_generale`) VALUES
(352, '', '', '1', '2023-06-22', 0, '', 'CIRO', 20, '', '2023-06-22Thursday751059496', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-22751059496.png', 'Morphine inj amp', 'choisir partennaire', 20, 'femme', '243815688578', 'dr luc', 'Specialiste', 20, 'choisir partennaire', 'choisir partennaire', 'Conventionner', 45, 11),
(353, '', '', '1', '2023-06-22', 0, '', 'PLAQUETTE', 10, '', '2023-06-22Thursday751059496', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-22751059496.png', 'Serum physiologie', 'choisir partennaire', 20, 'femme', '243815688578', 'dr luc', 'Specialiste', 10, 'choisir partennaire', 'choisir partennaire', 'Conventionner', 45, 5.5),
(354, '', '', '1', '2023-06-22', 0, '', 'comprimer', 200, '', '2023-06-22Thursday751059496', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-22751059496.png', 'Morphine inj amp', 'choisir partennaire', 20, 'femme', '243815688578', 'dr luc', 'Specialiste', 200, 'choisir partennaire', 'choisir partennaire', 'Conventionner', 45, 110),
(355, '', '', '1', '2023-06-22', 0, '', 'comprimer', 200, '', '2023-06-22Thursday542212605', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-22542212605.png', 'Morphine inj amp', 'choisir partennaire', 28, 'homme', '243810015922', 'Dr fiston', 'Generaliste', 200, 'choisir partennaire', 'choisir partennaire', 'Assurer', 25, 150),
(356, '', '', '1', '2023-06-22', 0, '', 'PLAQUETTE', 10, '', '2023-06-22Thursday542212605', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-22542212605.png', 'Serum physiologie', 'choisir partennaire', 28, 'homme', '243810015922', 'Dr fiston', 'Generaliste', 10, 'choisir partennaire', 'choisir partennaire', 'Assurer', 25, 7.5),
(357, '', '', '2', '2023-06-22', 0, '', 'CIRO', 20, '', '2023-06-22Thursday542212605', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-22542212605.png', 'Morphine inj amp', 'choisir partennaire', 28, 'homme', '243810015922', 'Dr fiston', 'Generaliste', 40, 'choisir partennaire', 'choisir partennaire', 'Assurer', 25, 30),
(358, '', '', '2', '2023-06-22', 0, '', 'CIRO', 20, '', '2023-06-22Thursday660932020', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-22660932020.png', 'Morphine inj amp', 'choisir partennaire', 20, 'femme', '243815688578', 'dr luc', 'Specialiste', 40, 'choisir partennaire', 'choisir partennaire', 'Conventionner', 30, 28),
(359, '', '', '1', '2023-06-22', 0, '', 'comprimer', 200, '', '2023-06-22Thursday660932020', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-22660932020.png', 'Morphine inj amp', 'choisir partennaire', 20, 'femme', '243815688578', 'dr luc', 'Specialiste', 200, 'choisir partennaire', 'choisir partennaire', 'Conventionner', 30, 140),
(360, '', '', '5', '2023-06-22', 0, '', 'comprimer', 200, '', '2023-06-22Thursday1910875759', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-221910875759.png', 'Morphine inj amp', 'OGI', 20, 'homme', '243815688578', 'Dr fiston', 'Generaliste', 1000, 'pactilis', 'OGI', 'Privé', 30, 700);

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
-- Structure de la table `caisse_voyage`
--

CREATE TABLE `caisse_voyage` (
  `id` int(11) NOT NULL,
  `code_facture` int(11) NOT NULL,
  `clients` text NOT NULL,
  `devise` text NOT NULL,
  `montant` float NOT NULL,
  `date_paiement` text NOT NULL,
  `motif` text NOT NULL,
  `code_client` text NOT NULL,
  `qrcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `caisse_voyage`
--

INSERT INTO `caisse_voyage` (`id`, `code_facture`, `clients`, `devise`, `montant`, `date_paiement`, `motif`, `code_client`, `qrcode`) VALUES
(8, 917500670, 'pioner EEEE ', 'USD', 12, '2023-06-01', 'Ouverture des dossiers', '914150073', 'Qr code/temp/917500670.png');

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
(13, '305', 'Chambre simple', '90', 0, '22'),
(14, '306', 'Chambre double', '120', 0, '44'),
(15, '307', 'Chambre simple', '90', 0, '22'),
(16, '308', 'Chambre simple', '90', 0, '22'),
(17, '311', 'Chambre simple', '90', 0, '22'),
(18, '312', 'Chambre simple', '90', 0, '22'),
(19, '313', 'Chambre simple', '90', 0, '22'),
(20, '314', 'Chambre double', '120', 0, '44'),
(21, '315', 'Chambre simple', '90', 0, '22'),
(22, '316', 'Chambre simple', '90', 0, '22'),
(23, '317', 'Chambre double', '120', 0, '44'),
(24, '318', 'Chambre simple', '90', 0, '22'),
(25, '319', 'Chambre simple', '90', 0, '22'),
(26, '320', 'Chambre simple', '90', 0, '22'),
(27, '321', 'Chambre simple', '90', 0, '22'),
(28, '322', 'Chambre simple', '90', 0, '22'),
(29, '323', 'Chambre simple', '90', 0, '22'),
(30, '324', 'Chambre simple', '90', 0, '22'),
(31, '325', 'Chambre simple', '90', 0, '22'),
(32, '326', 'Chambre simple', '90', 0, '22'),
(34, 'OrchidÃ©e', 'Chambre double', '120', 0, '44'),
(35, 'Tulipe', 'Chambre double', '120', 0, '44'),
(36, 'Trefle', 'Chambre double', '120', 0, '44'),
(37, 'PÃ©tunia', 'Chambre double', '120', 0, '44'),
(38, 'Lys', 'Chambre double', '120', 0, '44'),
(39, 'Lilas', 'Chambre double', '120', 0, '44'),
(40, 'Lavanda', 'Chambre double', '120', 0, '44'),
(41, 'jasmin', 'Chambre double', '120', 0, '44');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `sexe` text NOT NULL,
  `telephone` text NOT NULL,
  `identite` text NOT NULL,
  `domicile` text NOT NULL,
  `email` text NOT NULL,
  `nationnalite` text NOT NULL,
  `dat_naisse` text NOT NULL,
  `lieu_naisse` text NOT NULL,
  `profession` text NOT NULL,
  `enfant` text NOT NULL,
  `matrimoniale` text NOT NULL,
  `etat` int(11) NOT NULL,
  `docs` text NOT NULL,
  `qrcode` text NOT NULL,
  `code_facture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `sexe`, `telephone`, `identite`, `domicile`, `email`, `nationnalite`, `dat_naisse`, `lieu_naisse`, `profession`, `enfant`, `matrimoniale`, `etat`, `docs`, `qrcode`, `code_facture`) VALUES
(1, 'pioner', 'EEEE', 'Homme', '098763', '2333', 'ZZZ', 'desirengongo2018@gmail.com', 'CONGOLAISE', '2023-06-01', 'ZZZ', 'ZZ', 'ZZ', 'Marié', 0, 'fiche_clients/1189393453osette diagramme.pdf', '', '914150073');

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
-- Structure de la table `frais`
--

CREATE TABLE `frais` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `montant` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `frais`
--

INSERT INTO `frais` (`id`, `nom`, `montant`) VALUES
(2, 'Ouverture des dossiers', 500);

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `categories` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`id`, `nom`, `categories`) VALUES
(4, 'Dr fiston', 'Generaliste'),
(5, 'dr luc', 'Specialiste'),
(6, 'choisir docteur', 'Generaliste');

-- --------------------------------------------------------

--
-- Structure de la table `ordonances`
--

CREATE TABLE `ordonances` (
  `id` int(11) NOT NULL,
  `code_produits` text NOT NULL,
  `lot` text NOT NULL,
  `qte_cart` text NOT NULL,
  `date_enregistrement` text NOT NULL,
  `pu_cdf` float NOT NULL,
  `nom_produits` text NOT NULL,
  `type_produits` text NOT NULL,
  `pu_usd` float NOT NULL,
  `perimer` text NOT NULL,
  `code_facture` text NOT NULL,
  `etat` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `username` text NOT NULL,
  `type_vente` text NOT NULL,
  `qrcode` text NOT NULL,
  `posologie` text NOT NULL,
  `tel` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `poids` text NOT NULL,
  `sexe` text NOT NULL,
  `docteur` text NOT NULL,
  `nom` text NOT NULL,
  `dosage` text NOT NULL,
  `presentation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ordonances`
--

INSERT INTO `ordonances` (`id`, `code_produits`, `lot`, `qte_cart`, `date_enregistrement`, `pu_cdf`, `nom_produits`, `type_produits`, `pu_usd`, `perimer`, `code_facture`, `etat`, `id_produit`, `username`, `type_vente`, `qrcode`, `posologie`, `tel`, `age`, `poids`, `sexe`, `docteur`, `nom`, `dosage`, `presentation`) VALUES
(337, '', '', '1', '2023-06-17', 0, 'DOLLAREN', 'plaquette', 0, '', '1457894551', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-171457894551.png', '3X3', '243815688578', 20, '90', 'homme', 'Dr SYLLA', 'pioner', '500mg', ''),
(338, '', '', '1', '2023-06-17', 0, 'DOLLAREN', 'plaquette', 0, '', '1503190916', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-171503190916.png', '3X3', '+243810015922', 20, '75', 'femme', 'Dr luc', 'jordan', '500mg', ''),
(339, '', '', '1', '2023-06-17', 0, 'ubucap', 'ciro', 0, '', '1503190916', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-171503190916.png', '2X1', '+243810015922', 20, '75', 'femme', 'Dr luc', 'jordan', '1000mg', ''),
(341, '', '', '1', '2023-06-18', 0, 'DOLLAREN', 'plaquette', 0, '', '1795451964', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-181795451964.png', '3X3', '243810015922', 20, '90', 'homme', 'Dr luc', 'rixel', '500mg', ''),
(342, '', '', '4', '2023-06-18', 0, 'DOLLAREN', 'plaquette', 0, '', '1405729352', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-181405729352.png', '3X3', '+243906748099', 28, '85', 'homme', 'Dr SYLLA', 'OSETTE', '500mg', 'FLACON');

-- --------------------------------------------------------

--
-- Structure de la table `partenaire`
--

CREATE TABLE `partenaire` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `partenaire`
--

INSERT INTO `partenaire` (`id`, `nom`) VALUES
(1, 'SUNU ASSURANCE'),
(2, 'pactilis'),
(3, 'choisir partennaire');

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
(19, 'LENGE Emmanuel', 2147483647, 'HOMME', 'DG', '7 avenue P. Boka', '1142175512', '1976', 'Racine');

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
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `code_produits` text NOT NULL,
  `nom_produits` text NOT NULL,
  `type_produits` text NOT NULL,
  `posologie` text NOT NULL,
  `libelle` text NOT NULL,
  `prix` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `code_produits`, `nom_produits`, `type_produits`, `posologie`, `libelle`, `prix`) VALUES
(13, '1886169699', 'DOLLAREN', 'plaquette', '', '', 0),
(14, '85629233', 'diasepa', 'ciro', '', '', 0),
(15, '1888766346', 'ubucap', 'ciro', '', '', 0),
(16, '292062437', 'PARACETAMOL', 'PLAQUETTE', '', '', 0);

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

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `code_produits` text NOT NULL,
  `nom_produits` text NOT NULL,
  `type_produits` text NOT NULL,
  `posologie` text NOT NULL,
  `libelle` text NOT NULL,
  `prix` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `code_produits`, `nom_produits`, `type_produits`, `posologie`, `libelle`, `prix`) VALUES
(8, '1359183008', '', 'CIRO', '', 'Morphine inj amp', 20),
(9, '1677116027', '', 'PLAQUETTE', '', 'Serum physiologie', 10),
(10, '577203442', '', 'comprimer', '', 'Morphine inj amp', 200);

-- --------------------------------------------------------

--
-- Structure de la table `sous_partenaire`
--

CREATE TABLE `sous_partenaire` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `partennaire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sous_partenaire`
--

INSERT INTO `sous_partenaire` (`id`, `nom`, `partennaire`) VALUES
(1, 'programation', 'SUNU ASSURANCE'),
(2, 'OGI', 'pactilis'),
(3, 'choisir partennaire', 'choisir partennaire');

-- --------------------------------------------------------

--
-- Structure de la table `taux`
--

CREATE TABLE `taux` (
  `id` int(11) NOT NULL,
  `taux` text NOT NULL,
  `date_enregistrement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `taux`
--

INSERT INTO `taux` (`id`, `taux`, `date_enregistrement`) VALUES
(2, '2300', '2023-05-21');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appro`
--
ALTER TABLE `appro`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `archives_appro`
--
ALTER TABLE `archives_appro`
  ADD PRIMARY KEY (`id`);

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
-- Index pour la table `caisse_produis`
--
ALTER TABLE `caisse_produis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `caisse_restaurant`
--
ALTER TABLE `caisse_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `caisse_voyage`
--
ALTER TABLE `caisse_voyage`
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
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `frais`
--
ALTER TABLE `frais`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ordonances`
--
ALTER TABLE `ordonances`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partenaire`
--
ALTER TABLE `partenaire`
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
-- Index pour la table `produits`
--
ALTER TABLE `produits`
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
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sous_partenaire`
--
ALTER TABLE `sous_partenaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `taux`
--
ALTER TABLE `taux`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appro`
--
ALTER TABLE `appro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `archives_appro`
--
ALTER TABLE `archives_appro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

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
-- AUTO_INCREMENT pour la table `caisse_produis`
--
ALTER TABLE `caisse_produis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT pour la table `caisse_restaurant`
--
ALTER TABLE `caisse_restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT pour la table `caisse_voyage`
--
ALTER TABLE `caisse_voyage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT pour la table `frais`
--
ALTER TABLE `frais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `medecin`
--
ALTER TABLE `medecin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `ordonances`
--
ALTER TABLE `ordonances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT pour la table `partenaire`
--
ALTER TABLE `partenaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `sous_partenaire`
--
ALTER TABLE `sous_partenaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `taux`
--
ALTER TABLE `taux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
