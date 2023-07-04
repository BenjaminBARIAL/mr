SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+02:00";

CREATE DATABASE IF NOT EXISTS `meches_rebelles` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `meches_rebelles`;

DROP TABLE IF EXISTS `administration`;
CREATE TABLE `administration` (
  `estAdmin` varchar(1) NOT NULL DEFAULT '0',
  `mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `administration` (`estAdmin`, `mail`) VALUES
('1', 'mechesmag@gmail.com'),
('1', 'benjamin.barial.pro@gmail.com');

DROP TABLE IF EXISTS `entreprise`;
CREATE TABLE `entreprise` (
  `id` int NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `forme_jur` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `capital` int DEFAULT NULL,
  `adresse` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `siret` varchar(14) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `entreprise` (`id`, `nom`, `forme_jur`, `capital`, `adresse`, `siret`, `tel`, `mail`) VALUES
(1, 'Mèches Rebelles', 'Entreprise Individuelle', 0, '4 rue de l\'Enclos Pierre Bilette 08130 la Sabotterie', '79787079700017', '0615395663', 'mechesmag@gmail.com');

DROP TABLE IF EXISTS `hebergeur`;
CREATE TABLE `hebergeur` (
  `id` int NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adresse` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `hebergeur` (`id`, `nom`, `tel`, `mail`, `adresse`) VALUES
(1, 'Benjamin BARIAL', '0649203803', 'benjamin.barial.pro@gmail.com', 'Rue du Stade 08130 Alland\'huy-Et-Sausseuil');

DROP TABLE IF EXISTS `ip`;
CREATE TABLE `ip` (
  `banIP` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `getIP` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chemin` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `collect` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `photo` (`id`, `nom`, `chemin`, `collect`) VALUES
(1, 'event', '/pictures/onglets/event.jpg', 'onglets'),
(2, 'horaires', '/pictures/onglets/horaires.jpg', 'onglets'),
(3, 'secteur', '/pictures/onglets/secteur.jpg', 'onglets'),
(4, 'galerie', '/pictures/onglets/galerie.jpg', 'onglets'),
(5, 'contact', '/pictures/onglets/contact.jpg', 'onglets'),
(6, 'mariage1', '/pictures/mariage/mariage1.jpg', 'mariage'),
(7, 'mariage2', '/pictures/mariage/mariage2.jpg', 'mariage'),
(8, 'accueil', '/pictures/onglets/accueil.jpg', 'onglets'),
(9, 'mariage3', '/pictures/mariage/mariage3.jpg', 'mariage'),
(10, 'mariage4', '/pictures/mariage/mariage4.jpg', 'mariage'),
(11, 'mariage5', '/pictures/mariage/mariage5.jpg', 'mariage'),
(12, 'mariage6', '/pictures/mariage/mariage6.jpg', 'mariage'),
(13, 'creation1', '/pictures/creation/1.jpg', 'creation'),
(14, 'creation2', '/pictures/creation/2.jpg', 'creation'),
(15, 'creation3', '/pictures/creation/3.jpg', 'creation'),
(16, 'creation4', '/pictures/creation/4.jpg', 'creation'),
(17, 'creation5', '/pictures/creation/5.jpg', 'creation'),
(18, 'creation6', '/pictures/creation/6.jpg', 'creation');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mail` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fonction` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `motdepasse` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `user` (`id`, `nom`, `prenom`, `tel`, `mail`, `fonction`, `motdepasse`) VALUES
(1, 'COKOWSKI', 'Magalie', '0615395663', 'mechesmag@gmail.com', 'chef', '$1$mechesma$2VvZ.XW4IhsbCqExw4oiP0'),
(2, 'BARIAL', 'Benjamin', '0649203803', 'benjamin.barial.pro@gmail.com', 'dev', '$1$benjamin$J6MDTG0NIC0YmASlrCFl6.');

ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `hebergeur`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `entreprise`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `hebergeur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `photo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;