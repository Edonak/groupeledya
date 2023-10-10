-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 10 mai 2023 à 07:10
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
-- Base de données : `c2054124c_pretre`
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
(3, '1309246805', '', 450, 0, '', 'root', 12, 'location de la chambres'),
(4, '1309246805', '2023-05-09', 450, 200, 'CARTE', 'root', 12, 'location de la chambres'),
(6, '1909931643', '', 5, 0, '', 'root', 12, 'location de la salle'),
(7, '1909931643', '2023-05-09', 5, 1, 'CARTE', 'root', 12, 'location de la salle'),
(8, '1909931643', '2023-05-09', 5, 4, 'VIREMENT', 'root', 12, 'location de la salle'),
(9, '1309246805', '2023-05-10', 450, 20, 'Cash', 'root', 11, 'location de la chambres');

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

--
-- Déchargement des données de la table `caisse_pressing`
--

INSERT INTO `caisse_pressing` (`id`, `designation`, `tarifi_normal`, `tarifi_expresse`, `percepteur`, `id_percepteur`, `etat`, `qte`, `pt`, `id_prod`, `delimitation`, `code_facture`, `client`, `Telephone`, `date_operation`, `position`, `tache`) VALUES
(81, 'Robe Mariage', 20, 0, 'LOYOLA', 13, 1, 5, 100, 34, 'normale', '1189536068', 'pere kiaka', '0811390800', '2023-05-08', 0, ''),
(82, 'PULL OVER', 4, 0, 'LOYOLA', 13, 1, 5, 20, 31, 'normale', '1189536068', 'pere kiaka', '0811390800', '2023-05-08', 0, ''),
(83, 'veston jeans', 4, 0, 'root', 11, 0, 2, 8, 39, 'normale', '', '', '', '2023-05-09', 0, ''),
(85, 'PANTALON TISSU', 3, 0, 'Xavier', 14, 0, 1, 3, 29, 'normale', '', '', '', '2023-05-09', 0, ''),
(86, 'PANTALON TISSU', 3, 0, 'Xavier', 14, 0, 1, 3, 29, 'normale', '', '', '', '2023-05-09', 0, ''),
(87, 'CHEMISE BAZIN', 4, 0, 'Xavier', 14, 0, 1, 4, 12, 'normale', '', '', '', '2023-05-09', 0, ''),
(88, 'CHEMISE VELOURS', 4, 0, 'Xavier', 14, 0, 1, 4, 14, 'normale', '', '', '', '2023-05-09', 0, '');

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
(118, 'VIN NERGBOURG', 15, 'Boissons', 'root', 12, 1, 15, '1362830604', '2023-05-10', 1, 0),
(119, 'coca', 0, 'Boissons', 'root', 12, 1, 0, '1362830604', '2023-05-10', 1, 3000),
(120, 'coca', 0, 'Boissons', 'root', 12, 1, 0, '1362830604', '2023-05-10', 1, 3000),
(121, 'VIN NERGBOURG', 15, 'Boissons', 'root', 12, 1, 15, '1362830604', '2023-05-10', 1, 0);

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
(30, '324', 'Chambre simple', '90', 1, '22'),
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
(29, 'SYLLA', 'RDC', 'KINSHASA', 'NGALIEMA', '0814176164', 'theboosterempire@gmail.com', 'Je suis Freelance ', '', '2023-05-09', '2023-05-14', '', '18', '5', 'CONGOLAISE', '324', 'Type d\'identité', '90', 'root', 12, '1309246805', '2023-05-09', 450);

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
(11, '', 0, '', 'DG', '', '', '123', 'root'),
(13, 'NZINGA NSANSI CHAIDA', 811390800, 'FEMME', 'Reception', 'kalamu, Q: kimbangu Av Lokelenge, NÂ° ', '1876330592', '1960', 'LOYOLA'),
(14, 'Mwelwa wessa Marthe', 817821910, 'FEMME', 'Reception', 'Mont-ngafula, Q. Lutendele nÂ° 14, Av Lukaya', '1881727628', '1980', 'Xavier'),
(15, 'Jean pascal Ntambwe', 823022468, 'HOMME', 'Reception', '', '2061216453', '2002', 'Lenge'),
(16, 'Okitanganda Esther', 0, 'FEMME', 'Reception', '', '708956516', '2018', 'Kitoga'),
(17, 'Atweka Dieu-merci', 0, 'HOMME', 'Reception', '', '1804708574', '1976', 'Emmanuel'),
(18, 'Lukiukilu Seraphine', 0, 'FEMME', 'Reception', '', '293538575', '1540', 'Bobadilla');

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
(2, '52486625', '315', 90, 'SYLLA', 'root', 12, 'chambres', '2023-05-10', 1),
(3, '52486625', 'Lavanda', 120, 'SYLLA', 'root', 12, 'chambres', '2023-05-10', 1),
(4, '52486625', '325', 90, 'SYLLA', 'root', 12, 'chambres', '2023-05-10', 1),
(5, '52486625', 'Trefle', 120, 'SYLLA', 'root', 12, 'chambres', '2023-05-10', 1),
(8, '1878110072', 'Salle Mayamba', 300, 'ABDOU', 'root', 12, 'salle', '2023-05-10', 1),
(9, '1878110072', 'Salle Metena', 350, 'ABDOU', 'root', 12, 'salle', '2023-05-10', 1);

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
(7, 'coca', 0, 'Boissons', 3000),
(8, 'VIN NERGBOURG', 15, 'Boissons', 0);

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
  `code_facture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id`, `client`, `entreprise`, `telephone`, `num_carte`, `type_carte`, `date_event`, `description_evenement`, `type_evenement`, `nominnation`, `nbr_personne`, `prix`, `salle`, `id_percepteur`, `percepteur`, `code_facture`) VALUES
(17, 'vodacom', 'Je suis Freelance ', '0814176164', '2222', 'Type d\'identité', '2023-05-09', '', 'reunion', 'Location espace par personne', '1', '5', '7', 12, 'root', '1909931643');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `caisse_pressing`
--
ALTER TABLE `caisse_pressing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT pour la table `caisse_restaurant`
--
ALTER TABLE `caisse_restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `personelles`
--
ALTER TABLE `personelles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `pressing`
--
ALTER TABLE `pressing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `profrorma`
--
ALTER TABLE `profrorma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `salles`
--
ALTER TABLE `salles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
