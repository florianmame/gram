-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 16 mars 2022 à 13:07
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gram_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Africain'),
(2, 'Américain'),
(3, 'Asiatique'),
(4, 'Français'),
(5, 'Indien'),
(6, 'Italien'),
(7, 'Libanais'),
(8, 'Polonais'),
(9, 'Végétarien');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220309142928', '2022-03-09 14:29:58', 89),
('DoctrineMigrations\\Version20220309143343', '2022-03-09 14:34:05', 87),
('DoctrineMigrations\\Version20220309143904', '2022-03-09 14:39:26', 75),
('DoctrineMigrations\\Version20220309144201', '2022-03-09 14:42:10', 70),
('DoctrineMigrations\\Version20220309144244', '2022-03-09 14:42:53', 68),
('DoctrineMigrations\\Version20220309150030', '2022-03-09 15:00:45', 143),
('DoctrineMigrations\\Version20220309152315', '2022-03-09 15:23:28', 45),
('DoctrineMigrations\\Version20220309152640', '2022-03-09 15:26:51', 136),
('DoctrineMigrations\\Version20220310132235', '2022-03-10 13:23:08', 104),
('DoctrineMigrations\\Version20220310132557', '2022-03-10 13:26:08', 91);

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `opening_times` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `description`, `address`, `zip_code`, `city`, `phone`, `opening_times`, `url_photo`) VALUES
(1, 'Alcazar', NULL, '2 rue Mazarine', '75002', 'Paris', 165489732, 'Mardi - Samedi 12:00-14:30 - 19:00-23:30', NULL),
(2, 'Big Mamma', NULL, '133 rue du Faubourg Saint Antoine,', '75002', 'Paris', 123546865, 'Lundi - Vendredi 12h00-14h30 - 18h45-22h45', NULL),
(3, 'Eugène Eugène', NULL, '38-40 Rue Eugène Eichenberger', '92800', 'Puteaux', 141384000, 'Lundi - Samedi 08:00 - 02:00', NULL),
(4, 'Dalmata', NULL, '8 rue Tiquetonne', '75002', 'Paris', 123248696, 'Dimanche - Jeudi  19:00 - 22:45, Vendredi - Samedi  19:00 - 23:00', NULL),
(5, 'Figuig', NULL, '9 rue Brey', '75003', 'Paris', 123545686, 'Lundi-Samedi - 19:00 - 22:30, Dimanche - 19:00 - 23:30', NULL),
(6, 'Galerie Match', NULL, '30 rue Chapon', '75003', 'Paris', 123545897, 'Lundi - Dimanche 12:00 - 18:00', NULL),
(7, 'Girafe', NULL, '1 place du Trocadero', '75005', 'Paris', 123546865, 'Lundi - Vendredi 19:00 - 02:00', NULL),
(8, 'HD Dinner', NULL, '25 boulevard des Italiens', '75006', 'Paris', 123547896, 'Lundi - Vendredi 09:00 - 00:00', NULL),
(9, 'JugaadMatsuhisa', NULL, '16 rue Favart,', '75006', 'Paris', 123548519, 'Mardi - Dimanche 18:00 - 23:00', NULL),
(10, 'La casbah', NULL, '20 rue de la Forge Royale', '75007', 'Paris', 123651566, 'Mardi - Samerdi 14h-1h00', NULL),
(11, 'Le baranaan', NULL, '7 rue du Faubourg Saint Martin', '75008', 'Paris', 123946865, 'Lundi - Samedi 18:00 - 00:00', NULL),
(12, 'Le Paradis du fruit George V', NULL, 'Avenue Georges 5', '75008', 'Paris', 123986805, 'Mardi - Dimanche 11:00 - 02:00', NULL),
(13, 'Mama Jackson', NULL, '258 Boulevard Voltaire', '75011', 'Paris', 125386964, 'Mardi - Dimanche 19h-23h', NULL),
(14, 'Matsuhisa', NULL, '37 avenue Hoche', '75011', 'Paris', 125546895, 'Mardi - Samedi 19:00 - 00:00', NULL),
(15, 'Mon square', NULL, '31 rue Saint Dominique', '75011', 'Paris', 125586927, 'Lundi - Vendredi - 08:00 - 00:00, Samedi- Dimanche 10:00 - 00:00', NULL),
(16, 'Monsieur Bleu', NULL, '20 avenue de New York Palais de Tokyo', '75011', 'Paris', 125586927, 'Lundi - Vendredi 19:00 - 02:00', NULL),
(17, 'PNY Le Marais', NULL, '1 Rue Perrée 7', '75011', 'Paris', 125756582, 'Lundi - Vendredi  18:00 - 23:00, Samedi - Dimanche 12:00 - 23:00', NULL),
(18, 'PNY Oberkampf', NULL, '96 rue Oberkampf', '75011', 'Paris', 125789654, 'Lundi - Vendredi 18:00 - 23:00, Samedi - Dimanche  12:00 - 23:00', NULL),
(19, 'Sadelle\'s', NULL, '49 rue Pierre Charron', '75011', 'Paris', 125863257, 'Lundi - Vendredi 10:00 - 19:00', NULL),
(20, 'Sinople', NULL, '4 B rue Saint Sauveur', '75013', 'Paris', 135162548, 'Mercredi - Vendredi  18:00 - 23:00, Samedi - 12:00 - 15:00,  Dimanche - 11:30 - 16:00', NULL),
(21, 'Street Bangkok', NULL, '13 rue de la Roquette Street Bastille', '75013', 'Paris', 135624578, 'Mardi - Dimanche 12:00 - 23:00', NULL),
(22, 'Sushilicious', NULL, '15 cours Berriat,', '75014', 'Paris', 135684973, 'Lundi - Vendredi 18:00 - 22:30', NULL),
(23, 'Yoru', NULL, '62 rue de la Roquette', '75015', 'Paris', 156824595, 'Mardi - Dimanche 19h-23h', NULL),
(24, 'Buck Reed ?', NULL, '33 rue de la République', '75016', 'Paris', 165823476, 'Mardi - Dimanche 18h-00h', NULL),
(25, 'Deed Dred ?', NULL, '34 avenue de champ de Mars', '75016', 'Paris', 184688535, 'Lundi - Samedi 14h-23h', NULL),
(26, 'Chez Zeyna ( no logo)', NULL, '25 rue du Tolbiac', '75017', 'Paris', 185546849, 'Dimanche - Vendredi 15h-00h', NULL),
(27, 'Libertalia', NULL, '14 rue de Babiliot', '75017', 'Paris', 185979354, 'Samedi - Jeudi 14h-00h', NULL),
(28, 'Mazurka', NULL, '55 avenue de la', '75017', 'Paris', 195863546, 'Lundi - Vendredi 13h-00h', NULL),
(29, 'Kalinka', NULL, '10 rue Doudeauville', '75018', 'Paris', 196384759, 'Dimanche - Samedi 14h-23h', NULL),
(30, 'Mama Africa', NULL, '244 Bd de la Villette', '75019', 'Paris', 198364765, 'Lundi - Dimanche 16h-23h', NULL),
(31, 'Djaam', NULL, '187 Rue du Faubourg Saint-Martin', '75019', 'Paris', 198463780, 'Lundi - Samedi 14h-23h', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `restaurant_category`
--

CREATE TABLE `restaurant_category` (
  `restaurant_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `restaurant_category`
--

INSERT INTO `restaurant_category` (`restaurant_id`, `category_id`) VALUES
(1, 9),
(2, 6),
(3, 4),
(4, 6),
(5, 7),
(6, 3),
(7, 9),
(8, 2),
(9, 5),
(10, 7),
(11, 5),
(12, 4),
(13, 2),
(14, 3),
(15, 4),
(16, 4),
(17, 2),
(18, 2),
(19, 2),
(20, 4),
(21, 3),
(22, 3),
(23, 3),
(24, 2),
(25, 4),
(26, 1),
(27, 6),
(28, 8),
(29, 8),
(30, 1),
(31, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `url_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `first_name`, `description`, `city`, `phone`, `url_photo`) VALUES
(1, 'ac@outlook.fr', '[\"ROLE_USER\"]', '123456', 'Dupoint', 'Lara', NULL, 'Paris', 665489732, NULL),
(2, 'non.lacinia@outlook.fr', '[\"ROLE_USER\"]', '123456', 'Fartrant', 'Marrine', NULL, 'Paris', 623546865, NULL),
(3, 'neque.sed@yahoo.com', '[\"ROLE_USER\"]', '123456', 'Closcart', 'Vivienne', NULL, 'Paris', 641384000, NULL),
(4, 'dolor@protonmail.net', '[\"ROLE_USER\"]', '123456', 'Clayton', 'Valentine', NULL, 'Paris', 623248696, NULL),
(5, 'viverra.maecenas.iaculis@hotmail.fr', '[\"ROLE_USER\"]', '123456', 'Peck', 'Riley', NULL, 'Paris', 623545686, NULL),
(6, 'ristique.pellentesque@protonmail.com', '[\"ROLE_USER\"]', '123456', 'Henderson', 'Philip', NULL, 'Paris', 623545897, NULL),
(7, 'aliquet.nec@aol.net', '[\"ROLE_USER\"]', '123456', 'Alexander', 'Tanner', NULL, 'Paris', 623546865, NULL),
(8, 'est.arcu@outlook.com', '[\"ROLE_USER\"]', '123456', 'Haley', 'Zahir', NULL, 'Paris', 623547896, NULL),
(9, 'nullam@yahoo.com', '[\"ROLE_USER\"]', '123456', 'Robertson', 'Joel', NULL, 'Paris', 623548519, NULL),
(10, 'sed@outlook.com', '[\"ROLE_USER\"]', '123456', 'Avila', 'Heidi', NULL, 'Paris', 623651566, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_restaurant`
--

CREATE TABLE `user_restaurant` (
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_restaurant`
--

INSERT INTO `user_restaurant` (`user_id`, `restaurant_id`) VALUES
(10, 3),
(10, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `restaurant_category`
--
ALTER TABLE `restaurant_category`
  ADD PRIMARY KEY (`restaurant_id`,`category_id`),
  ADD KEY `IDX_26E9D72EB1E7706E` (`restaurant_id`),
  ADD KEY `IDX_26E9D72E12469DE2` (`category_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_restaurant`
--
ALTER TABLE `user_restaurant`
  ADD PRIMARY KEY (`user_id`,`restaurant_id`),
  ADD KEY `IDX_4CF2D4D3A76ED395` (`user_id`),
  ADD KEY `IDX_4CF2D4D3B1E7706E` (`restaurant_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `restaurant_category`
--
ALTER TABLE `restaurant_category`
  ADD CONSTRAINT `FK_26E9D72E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_26E9D72EB1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_restaurant`
--
ALTER TABLE `user_restaurant`
  ADD CONSTRAINT `FK_4CF2D4D3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4CF2D4D3B1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
