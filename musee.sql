-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 23 avr. 2021 à 17:54
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `musee`
--

-- --------------------------------------------------------

--
-- Structure de la table `bibliotheque`
--

DROP TABLE IF EXISTS `bibliotheque`;
CREATE TABLE IF NOT EXISTS `bibliotheque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_mus_id` int(11) NOT NULL,
  `isbn_id` int(11) NOT NULL,
  `date_achat` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4690D34D6D319670` (`num_mus_id`),
  KEY `IDX_4690D34DAFFF1118` (`isbn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bibliotheque`
--

INSERT INTO `bibliotheque` (`id`, `num_mus_id`, `isbn_id`, `date_achat`) VALUES
(1, 13, 5, '2015-01-01'),
(2, 15, 5, '2016-01-01');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200825151458', '2020-08-25 15:30:29', 3558),
('DoctrineMigrations\\Version20200826175756', '2020-08-26 17:59:09', 1290),
('DoctrineMigrations\\Version20200827035353', '2020-08-27 03:54:47', 1597),
('DoctrineMigrations\\Version20200827043746', '2020-08-27 04:38:33', 1779),
('DoctrineMigrations\\Version20200827063554', '2020-08-27 06:36:15', 1340),
('DoctrineMigrations\\Version20200827160040', '2020-08-27 16:01:49', 1941),
('DoctrineMigrations\\Version20200827202651', '2020-08-27 20:28:06', 2725),
('DoctrineMigrations\\Version20200828012618', '2020-08-28 01:26:57', 4722),
('DoctrineMigrations\\Version20200828024138', '2020-08-28 02:42:12', 2288),
('DoctrineMigrations\\Version20200828030230', '2020-08-28 03:02:52', 2007),
('DoctrineMigrations\\Version20200828030831', '2020-08-28 03:09:04', 2007),
('DoctrineMigrations\\Version20200828133259', '2020-08-28 13:33:18', 4519),
('DoctrineMigrations\\Version20200828152236', '2020-08-28 15:22:59', 4551),
('DoctrineMigrations\\Version20200829021702', '2020-08-29 02:17:47', 4508),
('DoctrineMigrations\\Version20200907161348', '2020-09-07 16:14:10', 2662),
('DoctrineMigrations\\Version20200907165928', '2020-09-07 17:00:11', 1996),
('DoctrineMigrations\\Version20200907170611', '2020-09-07 17:07:04', 2323);

-- --------------------------------------------------------

--
-- Structure de la table `moment`
--

DROP TABLE IF EXISTS `moment`;
CREATE TABLE IF NOT EXISTS `moment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `moment`
--

INSERT INTO `moment` (`id`, `jour`) VALUES
(6, '2017-05-07'),
(7, '2021-03-24'),
(8, '2016-01-01');

-- --------------------------------------------------------

--
-- Structure de la table `musee`
--

DROP TABLE IF EXISTS `musee`;
CREATE TABLE IF NOT EXISTS `musee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_pays_id` int(11) NOT NULL,
  `num_mus` int(11) NOT NULL,
  `nom_mus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nblivres` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8884C8739E4306D8` (`code_pays_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `musee`
--

INSERT INTO `musee` (`id`, `code_pays_id`, `num_mus`, `nom_mus`, `nblivres`) VALUES
(13, 18, 6, 'MONTE-CARLOS', 23),
(14, 21, 5, 'Gerce', 4),
(15, 15, 7, 'Marte', 10);

-- --------------------------------------------------------

--
-- Structure de la table `ouvrage`
--

DROP TABLE IF EXISTS `ouvrage`;
CREATE TABLE IF NOT EXISTS `ouvrage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_pays_id` int(11) NOT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_page` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_52A8CBD89E4306D8` (`code_pays_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ouvrage`
--

INSERT INTO `ouvrage` (`id`, `code_pays_id`, `isbn`, `nb_page`, `titre`) VALUES
(5, 18, '1234345', 23, 'LOUVE');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `nbhabitant` int(11) NOT NULL,
  `code_pays` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`nbhabitant`, `code_pays`, `id`) VALUES
(2, 'Senegal', 15),
(3, 'MAR', 18),
(422, 'Suisse', 21),
(9, 'Ben', 22);

-- --------------------------------------------------------

--
-- Structure de la table `referencer`
--

DROP TABLE IF EXISTS `referencer`;
CREATE TABLE IF NOT EXISTS `referencer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_site_id` int(11) NOT NULL,
  `isbn_id` int(11) NOT NULL,
  `numero_page` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E8191D0A3321D8E` (`nom_site_id`),
  KEY `IDX_E8191D0AAFFF1118` (`isbn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `referencer`
--

INSERT INTO `referencer` (`id`, `nom_site_id`, `isbn_id`, `numero_page`) VALUES
(2, 9, 5, 35);

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_pays_id` int(11) NOT NULL,
  `nom_site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anneedecouv` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_694309E49E4306D8` (`code_pays_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`id`, `code_pays_id`, `nom_site`, `anneedecouv`) VALUES
(9, 15, 'Mathyr', '2021-01-01');

-- --------------------------------------------------------

--
-- Structure de la table `visiter`
--

DROP TABLE IF EXISTS `visiter`;
CREATE TABLE IF NOT EXISTS `visiter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_mus_id` int(11) NOT NULL,
  `nbvisiteurs` int(11) NOT NULL,
  `jour_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_300A09156D319670` (`num_mus_id`),
  KEY `IDX_300A0915220C6AD0` (`jour_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bibliotheque`
--
ALTER TABLE `bibliotheque`
  ADD CONSTRAINT `FK_4690D34D6D319670` FOREIGN KEY (`num_mus_id`) REFERENCES `musee` (`id`),
  ADD CONSTRAINT `FK_4690D34DAFFF1118` FOREIGN KEY (`isbn_id`) REFERENCES `ouvrage` (`id`);

--
-- Contraintes pour la table `musee`
--
ALTER TABLE `musee`
  ADD CONSTRAINT `FK_8884C8739E4306D8` FOREIGN KEY (`code_pays_id`) REFERENCES `pays` (`id`);

--
-- Contraintes pour la table `ouvrage`
--
ALTER TABLE `ouvrage`
  ADD CONSTRAINT `FK_52A8CBD89E4306D8` FOREIGN KEY (`code_pays_id`) REFERENCES `pays` (`id`);

--
-- Contraintes pour la table `referencer`
--
ALTER TABLE `referencer`
  ADD CONSTRAINT `FK_E8191D0A3321D8E` FOREIGN KEY (`nom_site_id`) REFERENCES `site` (`id`),
  ADD CONSTRAINT `FK_E8191D0AAFFF1118` FOREIGN KEY (`isbn_id`) REFERENCES `ouvrage` (`id`);

--
-- Contraintes pour la table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E49E4306D8` FOREIGN KEY (`code_pays_id`) REFERENCES `pays` (`id`);

--
-- Contraintes pour la table `visiter`
--
ALTER TABLE `visiter`
  ADD CONSTRAINT `FK_300A0915220C6AD0` FOREIGN KEY (`jour_id`) REFERENCES `moment` (`id`),
  ADD CONSTRAINT `FK_300A09156D319670` FOREIGN KEY (`num_mus_id`) REFERENCES `musee` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
