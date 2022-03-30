-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 30 mars 2022 à 10:27
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `opening_times` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `description`, `address`, `zip_code`, `city`, `phone`, `opening_times`, `url_photo`) VALUES
(1, 'Alcazar', '\'L’ALCAZAR est un restaurant éthiopien qui propose des saveurs aussi bien orientales qu’africaines. Un pur brassage. Si tu veux découvrir des saveurs nouvelles et sortir des goûts classiques; l’Alcazar sera plus que satisfaisant. Avec son cadre moderne, il est parfait pour une sortie en petit groupe ou même professionnel.', '2 rue Mazarine', '75002', 'Paris', 165489732, 'Mardi - Samedi 12:00-14:30 - 19:00-23:30', NULL),
(2, 'Big Mamma', 'Navire amiral de la flotte Big Mamma, La Felicita concentre dans un espace franchement vaste, tout le talent et l\'âme de Big Mamma. Installé en face de Station F derrière la bibliothèque Mitterrand, on y retrouve un faste italien rare, avec des espaces aussi nombreux que beaux, dans un cadre baroque et végétal : l\'incontournable cocktail bar, un Biergarten, une trattoria pour les pâtes fraîches, une pizzeria pour les classiques, une tavola pour faire ses emplettes, un gelataria pour une glace, une boulangerie italienne, mais encore une caffeteria, un top bun pour les amateurs réfractaires de burger, un dancefloor et une bibliothèque. le voyage peut durer tout l\'après-midi, pour profiter des amis, découvrir les grands classiques de la maison.', '133 rue du Faubourg Saint Antoine,', '75002', 'Paris', 123546865, 'Lundi - Vendredi 12h00-14h30 - 18h45-22h45', NULL),
(3, 'Eugène Eugène', 'Dans une halle située face au marché couvert de Puteau , Immerge-toi dans une grande maison de campagne où convivialité et authenticité sont les maîtres-mots. Chez Eugène Eugène, tu découvrira une serre élégante, prolongée de deux terrasses ouvertes été comme hiver. Adossée à un jardin ouvrier où poussent fruits et légumes de saison. En cuisine, le chef met un point d\'honneur à vous proposer des plats généreux, faits maison et réalisés à partir de produits de qualité. Voici un très beau lieu de vie tendance', '38-40 Rue Eugène Eichenberger', '92800', 'Puteaux', 141384000, 'Lundi - Samedi 08:00 - 02:00', NULL),
(4, 'Dalmata', '\"*\"\"Are your Italian ? No, Napolitan\"\",*\r\n peut-on lire sur les T-shirts des pizzaïolos derrière le comptoir carrelé de blanc.\r\nSe déclinent en douze recettes : de la classique Margherita tomates-mozza à la Sweet Dream (ricotta, provola fumée et tomates confites), en passant par la Cheesy bourrée de fromages (mozza fior di latte, ricotta, provola fumée et gorgonzola) ou encore la Giana! (tomates-mozza et parmigiana di melanzane).\r\nSi votre feed Instagram est un peu faiblard, vous ne regretterez pas votre passage dans cette trattoria boostée aux néons rose fluo. Gros potentiel likes. Pas de réservation.', '8 rue Tiquetonne', '75002', 'Paris', 123248696, 'Dimanche - Jeudi  19:00 - 22:45, Vendredi - Samedi  19:00 - 23:00', NULL),
(5, 'Figuig', 'L\'équipe du Figuig t’accueille dans un cadre authentique et exotique pour te faire découvrir ses spécialités de cuisine marocaine. Situé à Paris 17, près de l\'Arc de Triomphe dans le quartier de Wagram, tu y trouvera à la carte des plats typique, couscous, tajine, brochettes, pastillas, dans un décor, des sons et des odeurs qui vous feront voyager au cœur du Maroc.', '9 rue Brey', '75003', 'Paris', 123545686, 'Lundi-Samedi - 19:00 - 22:30, Dimanche - 19:00 - 23:30', NULL),
(6, 'Galerie Match', 'Boutique de bubble tea. Galerie tea shop taïwanaise', '30 rue Chapon', '75003', 'Paris', 123545897, 'Lundi - Dimanche 12:00 - 18:00', NULL),
(7, 'Girafe', 'La Cité de l’architecture abrite désormais son restaurant nommé Girafe. \r\nLe décor s\'inspire des années 30 : banquettes claires, décor cosy et intime, bar en marbre, plantes tropicales… le dépaysement est assuré.\r\nCôté cuisine, le chef Benoît Dargère propose une cuisine à la fois simple et raffinée à base de poissons et autres produits de la mer. Le point fort ? La superbe terrasse qui permet aux plus chanceux de s’envoler au 7ème ciel et de dîner en tête-à-tête avec la tour Eiffel, sur le toit de la Cité de l’architecture.\r\nPlus qu’un simple restaurant signature, Girafe nous fait tutoyer les étoiles.', '1 place du Trocadero', '75005', 'Paris', 123546865, 'Lundi - Vendredi 19:00 - 02:00', NULL),
(8, 'HD Dinner', 'HD DINER te plongera dans l’univers 100% retro d’un véritable diner américain. Des bons burgers, du rocks des années 70 , un décors qui vintage . C’est l’endroit parfait pour passé un bon moment entre amis. Tout la semaine c’est un milkshake acheté un milkshake offert au HD dinner .', '25 boulevard des Italiens', '75006', 'Paris', 123547896, 'Lundi - Vendredi 09:00 - 00:00', NULL),
(9, 'JugaadMatsuhisa', 'A Jugaad , Le chef Manoj Sharma revisite la cuisine de toutes les régions d\'Indes, enrichit des plus belles innovations culinaires et méthodes de cuissons modernes. Inspirée d’ingrédients locaux et de saisons, les plats sont contemporains et savoureux.\r\nInstallé dans un ancien bistrot parisien entre bar classe, miroir vintage et moulures, la décoratrice **Marine Castanier** a vitaminé l’atmosphère à coups de touches pop et de couleurs, sans oublier deux fours tandoor aux reflets d’or qui trônent au milieu de la salle. Véritable show gastronomique, la cuisine ouverte vient parfaire la bonne ambiance.', '16 rue Favart,', '75006', 'Paris', 123548519, 'Mardi - Dimanche 18:00 - 23:00', NULL),
(10, 'La casbah', 'Situé dans le 11e arrondissement de Paris , rue de la Forge Royale, La Casbah est un restaurant, un bar et une boîte de nuit qui te plongera dans un univers magique dédié à la détente et à la fête. L\'entrée est majestueuse avec ses grandes portes en bois sculpté.\r\nCoté cuisine, le chef vous propose une sélection de mets, préparés selon la tradition marocaine. Ainsi raffinement et saveurs nouvelles se côtoient pour donner une cuisine originale alliant saveurs ancestrales et subtils mélanges d\'épices.', '20 rue de la Forge Royale', '75007', 'Paris', 123651566, 'Mardi - Samerdi 14h-1h00', NULL),
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

DROP TABLE IF EXISTS `restaurant_category`;
CREATE TABLE IF NOT EXISTS `restaurant_category` (
  `restaurant_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`restaurant_id`,`category_id`),
  KEY `IDX_26E9D72EB1E7706E` (`restaurant_id`),
  KEY `IDX_26E9D72E12469DE2` (`category_id`)
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

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `url_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `first_name`, `description`, `city`, `phone`, `url_photo`) VALUES
(19, 'ac@outlook.fr', '[\"ROLE_USER\"]', '$2y$13$fQJqHco92BRJeK/uMg9gH.Q63Hec0XTKbVB69b.o4q/GGhiL3BfZK', 'Dupoint', 'Lara', 'ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis gravida neque convallis a cras semper auctor neque vitae tempus quam pellentesque nec nam aliquam sem et tortor', 'Paris', 665489732, 'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=761&q=80'),
(20, 'non.lacinia@outlook.fr', '[\"ROLE_USER\"]', '$2y$13$FE1ENl7Oav6NwLoqPKJxEe0e39FwqQ.66HRZ8ZOJk2KJEzR1LysJO', 'Fartrant', 'Marrine', 'nisl purus in mollis nunc sed id semper risus in hendrerit gravida rutrum quisque non tellus orci ac auctor augue mauris augue neque gravida in fermentum et sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam', 'Paris', 623546865, 'https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
(21, 'neque.sed@yahoo.com', '[\"ROLE_USER\"]', '$2y$13$.tBIpjNvhuTIb45Dh8yDOetx5V1R6C5Uu92UHK2JMXJ4wr/u.YxxK', 'Closcart', 'Vivienne', 'et egestas quis ipsum suspendisse ultrices gravida dictum fusce ut placerat orci nulla pellentesque dignissim enim sit amet venenatis urna cursus eget nunc scelerisque viverra mauris in aliquam sem fringilla ut morbi tincidunt augue interdum velit euismod in pellentesque massa', 'Paris', 641384000, 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
(22, 'dolor@protonmail.net', '[\"ROLE_USER\"]', '$2y$13$GNEpGApdll1EYo3jgjcUC.T3n55DjtT09.Zl3IUm.RGKf/EhZi47S', 'Clayton', 'Valentine', 'nec ullamcorper sit amet risus nullam eget felis eget nunc lobortis mattis aliquam faucibus purus in massa tempor nec feugiat nisl pretium fusce id velit ut tortor pretium viverra suspendisse potenti nullam ac tortor vitae purus faucibus ornare suspendisse sed', 'Paris', 623248696, 'https://images.unsplash.com/photo-1628890923662-2cb23c2e0cfe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
(23, 'viverra.maecenas.iaculis@hotmail.fr', '[\"ROLE_USER\"]', '$2y$13$uCfPlKIOgfVLVc7B0H9ktOWOs3AmHw8rb8Z7pqF3AIUElp5WkT5g6', 'Peck', 'Riley', 'lacus viverra vitae congue eu consequat ac felis donec et odio pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc sed velit', 'Paris', 623545686, 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
(24, 'ristique.pellentesque@protonmail.com', '[\"ROLE_USER\"]', '$2y$13$QFqtZtEqmRS0BUHWC7hVweeHx.BsdXDZklV0WARQydaHGK5vJjg3.', 'Henderson', 'Philip', 'at quis risus sed vulputate odio ut enim blandit volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque in dictum non consectetur a erat nam at lectus urna duis convallis convallis tellus id interdum velit laoreet id donec ultrices tincidunt', 'Paris', 623545897, 'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
(25, 'aliquet.nec@aol.net', '[\"ROLE_USER\"]', '$2y$13$bh61EEll3pHgIFGTcS8UMewBijfAgoXSzM8sQFU8.RUkXBaYby6Ka', 'Alexander', 'Tanner', 'sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu augue ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem', 'Paris', 623546865, 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
(26, 'est.arcu@outlook.com', '[\"ROLE_USER\"]', '$2y$13$toime72NSOstrl9qhXpfQuADbaEBoMKlUFtkg0b1mthf6Kf.64HC2', 'Haley', 'Zahir', 'viverra accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu augue ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis gravida neque convallis a cras semper', 'Paris', 623547896, 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
(27, 'nullam@yahoo.com', '[\"ROLE_USER\"]', '$2y$13$QMKBmCX8qHfbu8IeX/h8ZeIEMNOx9igCkifRspUEO4ster3TU5uJK', 'Robertson', 'Joel', 'est velit egestas dui id ornare arcu odio ut sem nulla pharetra diam sit amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor elit sed vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien et', 'Paris', 623548519, 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
(28, 'sed@outlook.com', '[\"ROLE_USER\"]', '$2y$13$dcDdavko/fGCCvVDH5Gzg.sO2/oagNp/0F3EjEhxvPwNa7vLjIb7W', 'Avila', 'Heidi', 'volutpat sed cras ornare arcu dui vivamus arcu felis bibendum ut tristique et egestas quis ipsum suspendisse ultrices gravida dictum fusce ut placerat orci nulla pellentesque dignissim enim sit amet venenatis urna cursus eget nunc scelerisque viverra mauris in aliquam', 'Paris', 623651566, 'https://images.unsplash.com/photo-1477118476589-bff2c5c4cfbb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
(29, 'anne.bouaniche@protonmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$fQJqHco92BRJeK/uMg9gH.Q63Hec0XTKbVB69b.o4q/GGhiL3BfZK', 'Bouaniche', 'Anne', 'ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis gravida neque convallis a cras semper auctor neque vitae tempus quam pellentesque nec nam aliquam sem et tortor', 'Paris', 665489732, 'https://images.unsplash.com/photo-1592621385612-4d7129426394?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80');

-- --------------------------------------------------------

--
-- Structure de la table `user_restaurant`
--

DROP TABLE IF EXISTS `user_restaurant`;
CREATE TABLE IF NOT EXISTS `user_restaurant` (
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`restaurant_id`),
  KEY `IDX_4CF2D4D3A76ED395` (`user_id`),
  KEY `IDX_4CF2D4D3B1E7706E` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_restaurant`
--

INSERT INTO `user_restaurant` (`user_id`, `restaurant_id`) VALUES
(19, 17),
(19, 22);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
