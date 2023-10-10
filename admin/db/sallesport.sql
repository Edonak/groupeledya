-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 09 Septembre 2023 à 16:27
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `sallesport`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE IF NOT EXISTS `abonnement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` text NOT NULL,
  `Date_de_naisance` text NOT NULL,
  `sexe` text NOT NULL,
  `telephone` text NOT NULL,
  `adresse` text NOT NULL,
  `taille` float NOT NULL,
  `poids` text NOT NULL,
  `code_client` text NOT NULL,
  `prenom` text NOT NULL,
  `Objectif` text NOT NULL,
  `Antecedents` text NOT NULL,
  `date_enregistrement` text NOT NULL,
  `etat` int(11) NOT NULL,
  `libelle` text NOT NULL,
  `prix` text NOT NULL,
  `nmbr_jr` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=45 ;

--
-- Contenu de la table `abonnement`
--

INSERT INTO `abonnement` (`id`, `nom_client`, `Date_de_naisance`, `sexe`, `telephone`, `adresse`, `taille`, `poids`, `code_client`, `prenom`, `Objectif`, `Antecedents`, `date_enregistrement`, `etat`, `libelle`, `prix`, `nmbr_jr`) VALUES
(44, 'Mampamia', '2023-09-09', 'HOMME', '08976823', 'kingabwa', 7, '10', '1563298800', 'Bantu', 'dfgh', 'sdfghj', '2023-09-09', 1, 'enfant', '25', '2');

-- --------------------------------------------------------

--
-- Structure de la table `appro`
--

CREATE TABLE IF NOT EXISTS `appro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `posologie` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=53 ;

--
-- Contenu de la table `appro`
--

INSERT INTO `appro` (`id`, `code_produits`, `date_expiration`, `lot`, `qte_cart`, `pa_usd`, `pv_usd`, `date_enregistrement`, `sortie`, `alert`, `qte_pieces`, `bg`, `pourcentage`, `pu_cdf`, `nom_produits`, `type_produits`, `devise`, `pa_cdf`, `pv_cdf`, `pu_usd`, `perimer`, `perte_pv_cdf`, `perte_pu_usd`, `perte_pu_cdf`, `perte_pv_usd`, `perte_qte_cart`, `jours_expire`, `etat`, `position_alefte`, `posologie`) VALUES
(50, '2234437271', '2023-10-31', '2053697709', '45', '', 20, '2023-05-29', 38, 5, 0, 0, 0, 0, 'dollaren', 'COMPRIMER', '', '', 46000, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'non', ''),
(51, '2234437271', '2023-09-30', '1262116756', '30', '', 20, '2023-05-29', 20, 5, 0, 0, 0, 0, 'dollaren', 'CIRO', '', '', 46000, 0, 0, 0, 0, 0, 0, 0, 124, 0, 'non', ''),
(52, '1245822984', '2023-08-31', '1269036542', '60', '', 0.0608696, '2023-05-30', 14, 5, 0, 0, 0, 0, 'quinine', 'COMPRIMER', '', '', 140, 0, 0, 0, 0, 0, 0, 0, 93, 0, 'non', '');

-- --------------------------------------------------------

--
-- Structure de la table `archives`
--

CREATE TABLE IF NOT EXISTS `archives` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `archives_appro`
--

CREATE TABLE IF NOT EXISTS `archives_appro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=71 ;

--
-- Contenu de la table `archives_appro`
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

CREATE TABLE IF NOT EXISTS `caisse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `num_carte` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=37 ;

--
-- Contenu de la table `caisse`
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

CREATE TABLE IF NOT EXISTS `caisses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_facture` text NOT NULL,
  `date_operation` text NOT NULL,
  `tot_a_payer` float NOT NULL,
  `montant` float NOT NULL,
  `mode_paiement` text NOT NULL,
  `percepteur` text NOT NULL,
  `id_percepteur` int(11) NOT NULL,
  `motif` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=114 ;

--
-- Contenu de la table `caisses`
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
-- Structure de la table `caisse_hosto`
--

CREATE TABLE IF NOT EXISTS `caisse_hosto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_complet` text NOT NULL,
  `etat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `caisse_pressing`
--

CREATE TABLE IF NOT EXISTS `caisse_pressing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `tache` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `caisse_produis`
--

CREATE TABLE IF NOT EXISTS `caisse_produis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_fiche` text NOT NULL,
  `lot` text NOT NULL,
  `qte_cart` text NOT NULL,
  `date_enregistrement` text NOT NULL,
  `pu_cdf` float NOT NULL,
  `nom_produits` text NOT NULL,
  `type_produits` text NOT NULL,
  `pu_usd` float NOT NULL,
  `code_facture` text NOT NULL,
  `etat` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `username` text NOT NULL,
  `type_vente` text NOT NULL,
  `qrcode` text NOT NULL,
  `libelle` text NOT NULL,
  `nom` text NOT NULL,
  `age` text NOT NULL,
  `sexe` text NOT NULL,
  `tel` text NOT NULL,
  `adresse` text NOT NULL,
  `taille` text NOT NULL,
  `heure_ariive` text NOT NULL,
  `service` text NOT NULL,
  `total` float NOT NULL,
  `categorie` text NOT NULL,
  `total_generale` float NOT NULL,
  `client` text NOT NULL,
  `paie` varchar(20) NOT NULL,
  `global` float NOT NULL,
  `global_final` float NOT NULL,
  `mode` text NOT NULL,
  `prix` text NOT NULL,
  `montant` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `caisse_restaurant`
--

CREATE TABLE IF NOT EXISTS `caisse_restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `prix_fc` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=125 ;

--
-- Contenu de la table `caisse_restaurant`
--

INSERT INTO `caisse_restaurant` (`id`, `designation`, `prix_usd`, `categories`, `percepteur`, `id_percepteur`, `qte`, `pt`, `code_facture`, `date_operation`, `etat`, `prix_fc`) VALUES
(122, 'NEDERBOURG ', 20, 'Boissons', 'root', 11, 1, 20, '924479833', '2023-05-11', 1, 0),
(123, 'NEDERBOURG ', 20, 'Boissons', 'root', 11, 1, 20, '924479833', '2023-05-11', 1, 0),
(124, 'NEDERBOURG ', 20, 'Boissons', 'root', 11, 1, 20, '924479833', '2023-05-11', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `caisse_voyage`
--

CREATE TABLE IF NOT EXISTS `caisse_voyage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_facture` int(11) NOT NULL,
  `clients` text NOT NULL,
  `devise` text NOT NULL,
  `montant` float NOT NULL,
  `date_paiement` text NOT NULL,
  `motif` text NOT NULL,
  `code_client` text NOT NULL,
  `qrcode` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `caisse_voyage`
--

INSERT INTO `caisse_voyage` (`id`, `code_facture`, `clients`, `devise`, `montant`, `date_paiement`, `motif`, `code_client`, `qrcode`) VALUES
(8, 917500670, 'pioner EEEE ', 'USD', 12, '2023-06-01', 'Ouverture des dossiers', '914150073', 'Qr code/temp/917500670.png');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_categorie` text NOT NULL,
  `pourcentage` text NOT NULL,
  `code_cate` text NOT NULL,
  `libelle` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `nom_categorie`, `pourcentage`, `code_cate`, `libelle`) VALUES
(14, 'categorie 1', '1', '1460552700', 'Non_payant'),
(15, 'categorie 2', '50', '1416126725', 'moitie'),
(16, 'categorie 3', '100', '2035364750', 'payant');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_morgue`
--

CREATE TABLE IF NOT EXISTS `categorie_morgue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` text NOT NULL,
  `prix` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `categorie_morgue`
--

INSERT INTO `categorie_morgue` (`id`, `libelle`, `prix`) VALUES
(1, 'embaumer', '20000'),
(2, 'normal', '0');

-- --------------------------------------------------------

--
-- Structure de la table `chambres`
--

CREATE TABLE IF NOT EXISTS `chambres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_chambres` text NOT NULL,
  `categories_chambres` text NOT NULL,
  `prix_chambre` text NOT NULL,
  `etat` int(11) NOT NULL,
  `code_cate` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=42 ;

--
-- Contenu de la table `chambres`
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

CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` text NOT NULL,
  `Date_de_naisance` text NOT NULL,
  `sexe` text NOT NULL,
  `telephone` text NOT NULL,
  `adresse` text NOT NULL,
  `taille` float NOT NULL,
  `poids` text NOT NULL,
  `code_client` text NOT NULL,
  `prenom` text NOT NULL,
  `Objectif` text NOT NULL,
  `Antecedents` text NOT NULL,
  `date_enregistrement` text NOT NULL,
  `etat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `nom_client`, `Date_de_naisance`, `sexe`, `telephone`, `adresse`, `taille`, `poids`, `code_client`, `prenom`, `Objectif`, `Antecedents`, `date_enregistrement`, `etat`) VALUES
(7, 'Mampamia', '2023-09-09', 'HOMME', '08976823', 'kingabwa', 7, '10', '1563298800', 'Bantu', 'dfgh', 'sdfghj', '2023-09-09', 1);

-- --------------------------------------------------------

--
-- Structure de la table `fiche`
--

CREATE TABLE IF NOT EXISTS `fiche` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_complet` text NOT NULL,
  `sexe` text NOT NULL,
  `age` text NOT NULL,
  `adresse` text NOT NULL,
  `telephone` text NOT NULL,
  `taille` text NOT NULL,
  `heure_ariive` text NOT NULL,
  `etat` int(11) NOT NULL,
  `categorie` text NOT NULL,
  `service` text NOT NULL,
  `code_fiche` text NOT NULL,
  `prix` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Contenu de la table `fiche`
--

INSERT INTO `fiche` (`id`, `nom_complet`, `sexe`, `age`, `adresse`, `telephone`, `taille`, `heure_ariive`, `etat`, `categorie`, `service`, `code_fiche`, `prix`) VALUES
(54, 'kalogi', 'FEMME', '100', 'kingabwa', '0928383744', '190', '2 July 2023', 1, 'moitie', 'PEDIATRIE', '1288971587', '6000'),
(55, 'victoria', 'FEMME', '100', 'lemba', '0826425263', '175', '2 July 2023', 1, 'payant', 'PEDIATRIE', '1514214378', '6000');

-- --------------------------------------------------------

--
-- Structure de la table `frais`
--

CREATE TABLE IF NOT EXISTS `frais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `montant` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `frais`
--

INSERT INTO `frais` (`id`, `nom`, `montant`) VALUES
(2, 'Ouverture des dossiers', 500);

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE IF NOT EXISTS `medecin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `categories` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `medecin`
--

INSERT INTO `medecin` (`id`, `nom`, `categories`) VALUES
(4, 'Dr fiston', 'Generaliste'),
(5, 'dr luc', 'Specialiste'),
(6, 'choisir docteur', 'Generaliste');

-- --------------------------------------------------------

--
-- Structure de la table `morgue`
--

CREATE TABLE IF NOT EXISTS `morgue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_conservation` text NOT NULL,
  `nom_defun` text NOT NULL,
  `nom_responsable` text NOT NULL,
  `telephone` text NOT NULL,
  `date_enregistrement` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ordonances`
--

CREATE TABLE IF NOT EXISTS `ordonances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `presentation` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=345 ;

--
-- Contenu de la table `ordonances`
--

INSERT INTO `ordonances` (`id`, `code_produits`, `lot`, `qte_cart`, `date_enregistrement`, `pu_cdf`, `nom_produits`, `type_produits`, `pu_usd`, `perimer`, `code_facture`, `etat`, `id_produit`, `username`, `type_vente`, `qrcode`, `posologie`, `tel`, `age`, `poids`, `sexe`, `docteur`, `nom`, `dosage`, `presentation`) VALUES
(337, '', '', '1', '2023-06-17', 0, 'DOLLAREN', 'plaquette', 0, '', '1457894551', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-171457894551.png', '3X3', '243815688578', 20, '90', 'homme', 'Dr SYLLA', 'pioner', '500mg', ''),
(338, '', '', '1', '2023-06-17', 0, 'DOLLAREN', 'plaquette', 0, '', '1503190916', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-171503190916.png', '3X3', '+243810015922', 20, '75', 'femme', 'Dr luc', 'jordan', '500mg', ''),
(339, '', '', '1', '2023-06-17', 0, 'ubucap', 'ciro', 0, '', '1503190916', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-171503190916.png', '2X1', '+243810015922', 20, '75', 'femme', 'Dr luc', 'jordan', '1000mg', ''),
(341, '', '', '1', '2023-06-18', 0, 'DOLLAREN', 'plaquette', 0, '', '1795451964', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-181795451964.png', '3X3', '243810015922', 20, '90', 'homme', 'Dr luc', 'rixel', '500mg', ''),
(342, '', '', '4', '2023-06-18', 0, 'DOLLAREN', 'plaquette', 0, '', '1405729352', 1, 0, 'Racine', '', 'Qr code/temp/2023-06-181405729352.png', '3X3', '+243906748099', 28, '85', 'homme', 'Dr SYLLA', 'OSETTE', '500mg', 'FLACON'),
(343, '', '', '1', '2023-07-02', 0, 'DOLLAREN', 'plaquette', 0, '', '', 0, 0, 'Racine', '', '', '', '', 0, '', '', '', '', '', ''),
(344, '', '', '1', '2023-07-02', 0, 'diasepa', 'ciro', 0, '', '', 0, 0, 'Racine', '', '', '', '', 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `partenaire`
--

CREATE TABLE IF NOT EXISTS `partenaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `partenaire`
--

INSERT INTO `partenaire` (`id`, `nom`) VALUES
(1, 'SUNU ASSURANCE'),
(2, 'pactilis'),
(3, 'aucun partennaire'),
(4, 'MSH INTERNATIONNAL'),
(5, 'GGA');

-- --------------------------------------------------------

--
-- Structure de la table `personelles`
--

CREATE TABLE IF NOT EXISTS `personelles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_agents` text NOT NULL,
  `telephone` int(11) NOT NULL,
  `sexe` varchar(7) NOT NULL,
  `service` varchar(20) NOT NULL,
  `adresse` text NOT NULL,
  `matricule` text NOT NULL,
  `mdp` text NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `personelles`
--

INSERT INTO `personelles` (`id`, `nom_agents`, `telephone`, `sexe`, `service`, `adresse`, `matricule`, `mdp`, `username`) VALUES
(19, 'LENGE Emmanuel', 2147483647, 'HOMME', 'DG', '7 avenue P. Boka', '1142175512', '123', 'Racine'),
(21, 'stive', 8976823, 'FEMME', 'Reception', 'kingabwa', '1873982444', '1234', 'stive');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE IF NOT EXISTS `personne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_categorie` text NOT NULL,
  `individus` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`id`, `nom_categorie`, `individus`) VALUES
(11, 'Nom payant', 'eglises');

-- --------------------------------------------------------

--
-- Structure de la table `pressing`
--

CREATE TABLE IF NOT EXISTS `pressing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` text NOT NULL,
  `tarifi_normal` text NOT NULL,
  `tarifi_expresse` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=40 ;

--
-- Contenu de la table `pressing`
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

CREATE TABLE IF NOT EXISTS `produits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_produits` text NOT NULL,
  `nom_produits` text NOT NULL,
  `type_produits` text NOT NULL,
  `posologie` text NOT NULL,
  `libelle` text NOT NULL,
  `prix` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `produits`
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

CREATE TABLE IF NOT EXISTS `profrorma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_proforma` text NOT NULL,
  `libelle` text NOT NULL,
  `montant` float NOT NULL,
  `client` text NOT NULL,
  `percepteur` text NOT NULL,
  `id_percepteur` int(11) NOT NULL,
  `motif` text NOT NULL,
  `date_operation` text NOT NULL,
  `etat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `profrorma`
--

INSERT INTO `profrorma` (`id`, `code_proforma`, `libelle`, `montant`, `client`, `percepteur`, `id_percepteur`, `motif`, `date_operation`, `etat`) VALUES
(16, '631849489', 'jasmin', 120, 'Georges', 'Racine', 19, 'chambres', '2023-05-11', 1),
(17, '1248283264', 'PÃ©tunia', 120, '', 'Chaida', 13, 'chambres', '2023-05-18', 0);

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

CREATE TABLE IF NOT EXISTS `restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` text NOT NULL,
  `prix_usd` float NOT NULL,
  `categories` text NOT NULL,
  `prix_fc` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=39 ;

--
-- Contenu de la table `restaurant`
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
(33, 'BOUTEILLE D''EAU', 0.5, 'Boissons', 0),
(34, 'JUS CERES', 5, 'Boissons', 0),
(35, 'DON SIMON', 5, 'Boissons', 0),
(36, 'MARTINI', 20, 'Boissons', 0),
(37, 'PORTO', 20, 'Boissons', 0),
(38, 'NEDERBOURG ', 20, 'Boissons', 0);

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE IF NOT EXISTS `salle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `tot_a_payer` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `salle`
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

CREATE TABLE IF NOT EXISTS `salles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nominnation` text NOT NULL,
  `nbr_personne` text NOT NULL,
  `prix` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `salles`
--

INSERT INTO `salles` (`id`, `nominnation`, `nbr_personne`, `prix`) VALUES
(3, 'Salle Mayamba', '5  40', '300'),
(4, 'Salle Metena', '5-85', '350'),
(5, 'Salle Henri dela Kethulle', '10-120', '500'),
(6, 'Grand balcon', '200', '300'),
(7, 'Location espace par personne', '1', '5');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_service` text NOT NULL,
  `code_service` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`id`, `nom_service`, `code_service`) VALUES
(3, 'ACCOUCHEMENT', '1881839437'),
(4, 'INTERVENTION CHIRURGICALE', '1174094960'),
(5, 'DENTISTERIE', '1548706390'),
(6, 'PEDIATRIE', '1844032785');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` text NOT NULL,
  `prix` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `services`
--

INSERT INTO `services` (`id`, `libelle`, `prix`) VALUES
(13, 'FICHE CONSULTATION', 6000),
(14, 'TRANSFUSION', 24000),
(15, 'PERFUSION', 20000),
(16, 'PENSEMENT', 12000),
(17, 'REANIMATION URGENCE', 8000);

-- --------------------------------------------------------

--
-- Structure de la table `sous_partenaire`
--

CREATE TABLE IF NOT EXISTS `sous_partenaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `partennaire` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `sous_partenaire`
--

INSERT INTO `sous_partenaire` (`id`, `nom`, `partennaire`) VALUES
(1, 'programation', 'SUNU ASSURANCE'),
(2, 'OGI', 'pactilis'),
(3, 'aucun partennaire', 'aucun partennaire'),
(4, 'CASINO SANUT', 'pactilis'),
(5, 'IP DEVELOPPEMENT', 'SUNU ASSURANCE'),
(6, 'AB ASSISTANCE', 'MSH INTERNATIONNAL'),
(7, 'BOLLORE', 'pactilis');

-- --------------------------------------------------------

--
-- Structure de la table `tarif`
--

CREATE TABLE IF NOT EXISTS `tarif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_tarif` text NOT NULL,
  `libelle` text NOT NULL,
  `prix` text NOT NULL,
  `nombre_jours` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `tarif`
--

INSERT INTO `tarif` (`id`, `code_tarif`, `libelle`, `prix`, `nombre_jours`) VALUES
(10, '1927956383', 'journalier', '6', '1'),
(11, '385687862', 'hebdomadaire', '20', '7'),
(12, '1784019748', 'mensuel 3W', '35', '12'),
(13, '636334178', 'mensuel FD', '55', '30'),
(14, '1560387358', 'trimestriel', '140', '90'),
(15, '2044999430', 'annuel', '420', '365'),
(17, '1887044333', 'perte poids rapide', '80', '16'),
(19, '1052439750', 'enfant', '25', '6');

-- --------------------------------------------------------

--
-- Structure de la table `taux`
--

CREATE TABLE IF NOT EXISTS `taux` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taux` text NOT NULL,
  `date_enregistrement` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `taux`
--

INSERT INTO `taux` (`id`, `taux`, `date_enregistrement`) VALUES
(2, '2300', '2023-05-21');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
