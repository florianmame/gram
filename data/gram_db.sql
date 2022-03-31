-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 31 mars 2022 à 21:14
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `description`, `address`, `zip_code`, `city`, `phone`, `opening_times`, `url_photo`) VALUES
(1, 'Alcazar', '\'L’ALCAZAR est un restaurant éthiopien qui propose des saveurs aussi bien orientales qu’africaines. Un pur brassage. Si tu veux découvrir des saveurs nouvelles et sortir des goûts classiques; l’Alcazar sera plus que satisfaisant. Avec son cadre moderne, il est parfait pour une sortie en petit groupe ou même professionnel.', '2 rue Mazarine', '75002', 'Paris', 165489732, 'Mardi - Samedi 12:00-14:30 - 19:00-23:30', 'https://imgs.search.brave.com/8mD9-NKlPK5CNdzBxJKtula1GmGNd6AkVU0A74Sepbc/rs:fit:753:502:1/g:ce/aHR0cHM6Ly93d3cu/d2UtaGVhcnQuY29t/L3VwbG9hZC1pbWFn/ZXMvYWxjYXphcnBh/cmlzMi5qcGc'),
(2, 'Big Mamma', 'Navire amiral de la flotte Big Mamma, La Felicita concentre dans un espace franchement vaste, tout le talent et l\'âme de Big Mamma. Installé en face de Station F derrière la bibliothèque Mitterrand, on y retrouve un faste italien rare, avec des espaces aussi nombreux que beaux, dans un cadre baroque et végétal : l\'incontournable cocktail bar, un Biergarten, une trattoria pour les pâtes fraîches, une pizzeria pour les classiques, une tavola pour faire ses emplettes, un gelataria pour une glace, une boulangerie italienne, mais encore une caffeteria, un top bun pour les amateurs réfractaires de burger, un dancefloor et une bibliothèque. le voyage peut durer tout l\'après-midi, pour profiter des amis, découvrir les grands classiques de la maison.', '133 rue du Faubourg Saint Antoine,', '75002', 'Paris', 123546865, 'Lundi - Vendredi 12h00-14h30 - 18h45-22h45', 'https://imgs.search.brave.com/2c6L9SBkbo8IHDLd7JaFLhRjpw7lFshr3LCrTDW4YIM/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9oaXBw/YXJpcy5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMTgvMDYv/aGlwLXBhcmlzLWJs/b2ctYWxpLXBvc3Rt/YS1kc2NfMDMzMC5q/cGc'),
(3, 'Eugène Eugène', 'Dans une halle située face au marché couvert de Puteau , Immerge-toi dans une grande maison de campagne où convivialité et authenticité sont les maîtres-mots. Chez Eugène Eugène, tu découvrira une serre élégante, prolongée de deux terrasses ouvertes été comme hiver. Adossée à un jardin ouvrier où poussent fruits et légumes de saison. En cuisine, le chef met un point d\'honneur à vous proposer des plats généreux, faits maison et réalisés à partir de produits de qualité. Voici un très beau lieu de vie tendance', '38-40 Rue Eugène Eichenberger', '92800', 'Puteaux', 141384000, 'Lundi - Samedi 08:00 - 02:00', 'https://imgs.search.brave.com/gCSw6OEOQEzdQcvAAXMU0kfwwC15wA3DBbWOL9JMojU/rs:fit:736:368:1/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vNzM2/eC9jNi82ZS81NS9j/NjZlNTVhNjI5OTkz/NTBhYWNjOWQwMGMw/ZjBlMDBjYi0tcGV0/aXQtY29pbi1wYXJh/ZGlzLmpwZw'),
(4, 'Dalmata', '\"*\"\"Are your Italian ? No, Napolitan\"\",*\r\n peut-on lire sur les T-shirts des pizzaïolos derrière le comptoir carrelé de blanc.\r\nSe déclinent en douze recettes : de la classique Margherita tomates-mozza à la Sweet Dream (ricotta, provola fumée et tomates confites), en passant par la Cheesy bourrée de fromages (mozza fior di latte, ricotta, provola fumée et gorgonzola) ou encore la Giana! (tomates-mozza et parmigiana di melanzane).\r\nSi votre feed Instagram est un peu faiblard, vous ne regretterez pas votre passage dans cette trattoria boostée aux néons rose fluo. Gros potentiel likes. Pas de réservation.', '8 rue Tiquetonne', '75002', 'Paris', 123248696, 'Dimanche - Jeudi  19:00 - 22:45, Vendredi - Samedi  19:00 - 23:00', 'https://imgs.search.brave.com/5jrampksppcbEyf_IRcbeItktVG2GlEevsH6BGOKpf0/rs:fit:800:599:1/g:ce/aHR0cHM6Ly9mci5u/ZXd0YWJsZS5jb20v/dXBsb2Fkcy9tZWRp/YXMvcmVzdGF1cmFu/dHMvaW1hZ2VzL2xh/cmdlLzM5MTYtcGhv/dG8yLmpwZz92PTE1/MjAyNjkwMDg1ZjE0/OWRiYzk4YzIw'),
(5, 'Figuig', 'L\'équipe du Figuig t’accueille dans un cadre authentique et exotique pour te faire découvrir ses spécialités de cuisine marocaine. Situé à Paris 17, près de l\'Arc de Triomphe dans le quartier de Wagram, tu y trouvera à la carte des plats typique, couscous, tajine, brochettes, pastillas, dans un décor, des sons et des odeurs qui vous feront voyager au cœur du Maroc.', '9 rue Brey', '75003', 'Paris', 123545686, 'Lundi-Samedi - 19:00 - 22:30, Dimanche - 19:00 - 23:30', 'https://res.cloudinary.com/tf-lab/image/upload/w_600,h_337,c_fill,g_auto:subject,q_auto,f_auto/restaurant/cfbe7c28-21aa-40ab-9df2-e5a7207ea364/d4ad8380-0fc0-4f89-a6ea-573105e6e075.jpg'),
(6, 'Galerie Match', 'Boutique de bubble tea. Galerie tea shop taïwanaise', '30 rue Chapon', '75003', 'Paris', 123545897, 'Lundi - Dimanche 12:00 - 18:00', 'https://lh3.googleusercontent.com/places/AAcXr8rrOKEbdus0PaSnfuv17vQMa-EEryW3eNl1lcQPgb9LcET1jJy-ZE0lqt428RJhTJ5cMlAgR3_89ZU0aW7cueceQrGwb4tpVSM=s1600-w640'),
(7, 'Girafe', 'La Cité de l’architecture abrite désormais son restaurant nommé Girafe. \r\nLe décor s\'inspire des années 30 : banquettes claires, décor cosy et intime, bar en marbre, plantes tropicales… le dépaysement est assuré.\r\nCôté cuisine, le chef Benoît Dargère propose une cuisine à la fois simple et raffinée à base de poissons et autres produits de la mer. Le point fort ? La superbe terrasse qui permet aux plus chanceux de s’envoler au 7ème ciel et de dîner en tête-à-tête avec la tour Eiffel, sur le toit de la Cité de l’architecture.\r\nPlus qu’un simple restaurant signature, Girafe nous fait tutoyer les étoiles.', '1 place du Trocadero', '75005', 'Paris', 123546865, 'Lundi - Vendredi 19:00 - 02:00', 'https://imgs.search.brave.com/ElmAxlG4mPVk1JcAmUEUeqaTRzghBb11nRm-237qwhk/rs:fit:960:640:1/g:ce/aHR0cHM6Ly93d3cu/bWlsa2RlY29yYXRp/b24uY29tL3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDE4LzExL2dp/cmFmZS1jcmVkaXQt/YWRyaWVuLWRpcmFu/ZC0xLmpwZw'),
(8, 'HD Dinner', 'HD DINER te plongera dans l’univers 100% retro d’un véritable diner américain. Des bons burgers, du rocks des années 70 , un décors qui vintage . C’est l’endroit parfait pour passé un bon moment entre amis. Tout la semaine c’est un milkshake acheté un milkshake offert au HD dinner .', '25 boulevard des Italiens', '75006', 'Paris', 123547896, 'Lundi - Vendredi 09:00 - 00:00', 'https://imgs.search.brave.com/5uvRQf-BDg16qNBhxFLInC69I-cn5UtdiKrrMwBenbo/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2IyL2M3/L2RiL2IyYzdkYjBl/ZmNkODhmMjNjMGFm/MGVhOTUzNjc5NTY5/LmpwZw'),
(9, 'JugaadMatsuhisa', 'A Jugaad , Le chef Manoj Sharma revisite la cuisine de toutes les régions d\'Indes, enrichit des plus belles innovations culinaires et méthodes de cuissons modernes. Inspirée d’ingrédients locaux et de saisons, les plats sont contemporains et savoureux.\r\nInstallé dans un ancien bistrot parisien entre bar classe, miroir vintage et moulures, la décoratrice **Marine Castanier** a vitaminé l’atmosphère à coups de touches pop et de couleurs, sans oublier deux fours tandoor aux reflets d’or qui trônent au milieu de la salle. Véritable show gastronomique, la cuisine ouverte vient parfaire la bonne ambiance.', '16 rue Favart,', '75006', 'Paris', 123548519, 'Mardi - Dimanche 18:00 - 23:00', 'https://imgs.search.brave.com/XqEMc-UJ2yDEd4xM2DQTLcGhacV-szPxuqSZl1f5ars/rs:fit:1025:1200:1/g:ce/aHR0cHM6Ly93d3cu/YmllbmZhaXRzcG91/cm5vdXMuY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDIxLzA2/L0p1Z2FhZC1Kb2Fu/bi1QYWktMS0xMDI1/eDE1MzYuanBn'),
(10, 'La casbah', 'Situé dans le 11e arrondissement de Paris , rue de la Forge Royale, La Casbah est un restaurant, un bar et une boîte de nuit qui te plongera dans un univers magique dédié à la détente et à la fête. L\'entrée est majestueuse avec ses grandes portes en bois sculpté.\r\nCoté cuisine, le chef vous propose une sélection de mets, préparés selon la tradition marocaine. Ainsi raffinement et saveurs nouvelles se côtoient pour donner une cuisine originale alliant saveurs ancestrales et subtils mélanges d\'épices.', '20 rue de la Forge Royale', '75007', 'Paris', 123651566, 'Mardi - Samerdi 14h-1h00', 'https://imgs.search.brave.com/YeWB6REVC_yn4_cQkaQVNjXhzHi3SwJSdN_8y1btCd4/rs:fit:700:467:1/g:ce/aHR0cHM6Ly9raXNz/bXljaGVmLmNvbS93/cC1jb250ZW50L3Vw/bG9hZHMvMjAyMC8w/MS9OSTRBMjc2Ny5q/cGc'),
(11, 'Le baranaan', 'Caché derrière une porte dissimulé au fond d\'un petit restaurant indien, un petit passage aux odeurs de patchouli vous mènera à Baranaan Street Food & Cocktail Bar. Embarquez pour un joli voyage à bord du train indien de la prohibition au 7 rue Faubourg Saint Martin dans le Xe arrondissement.', '7 rue du Faubourg Saint Martin', '75008', 'Paris', 123946865, 'Lundi - Samedi 18:00 - 00:00', 'https://imgs.search.brave.com/yngNdqPrxWLFkPP9Sw8_msbIjCITxwq0PT2Js1aDt-I/rs:fit:640:400:1/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vNzM2/eC8wYy9lZS82YS8w/Y2VlNmE5ZmM0YmVi/ZDM4OGNjNDZiOTZi/YWE3MTlhMS5qcGc'),
(12, 'Le Paradis du fruit George V', 'C’est l\'endroit idéal pour manger léger et sain.\r\nDans ce restaurant au décor contemporain chic signé Philippe Starck,\r\non vient pour déguster d\'abord un apéritif parmi une large sélection de savoureux cocktails aux fruits frais, puis pour goûter d\'extravagantes salades composées, et finir sur de superbes desserts à base de fruits.\r\nCette belle et bonne adresse est un endroit très fréquenté par les amateurs gourmands.', 'Avenue Georges 5', '75008', 'Paris', 123986805, 'Mardi - Dimanche 11:00 - 02:00', 'https://imgs.search.brave.com/VkmrTQQcboHwNXSFNGG0NJHetuYcS3wPWfVvj3K5Nek/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/bGVwYXJhZGlzZHVm/cnVpdC5mci93cC1j/b250ZW50L3VwbG9h/ZHMvMjAyMC8xMC9u/b3MtcmVzdGF1cmFu/dHMtMDQuanBn'),
(13, 'Mama Jackson', 'La SoulFood ou en français la cuisine de l\'âme, est le nom définissant les mets typiques Afro-Américains.\r\nElle tient son nom de la générosité de sa cuisine qui remplit les coeurs, \r\nElle amène une atmosphere agréable, reposante et familiale, et aucune personne dégustant cette cuisine ne peut y échaper !\r\nConnue des stars Américaine ce lieux vous réserves quelque surprise.', '258 Boulevard Voltaire', '75011', 'Paris', 125386964, 'Mardi - Dimanche 19h-23h', 'https://media-cdn.tripadvisor.com/media/photo-p/0e/62/c9/ce/mama-s-plate.jpg'),
(14, 'Matsuhisa', 'Nobu à Paris, c\'est évidemment une expérience, renforcée par le cadre extraordinaire du Royal Monceau. Du raffinement, de l\'étonnement, de la séduction, toujours, dans cette cuisine fusionnante certes un peu datée (Jean-Luc Delarue et la rue Marbeuf, c\'était il y a vingt ans...) mais le lieu a de quoi redonner un brin de magie au riz croustillant et thon épicé, aux sashimis et tacos, au tartare au caviar, au tiradito ou au ceviche de homard sur cette passerelle naturelle entre Pérou et Japon.', '37 avenue Hoche', '75011', 'Paris', 125546895, 'Mardi - Samedi 19:00 - 00:00', 'https://imgs.search.brave.com/aW7TXIzdPf2DH0oszYBuhe4vrWdBwLFgJ_0rFGI6I5U/rs:fit:1200:652:1/g:ce/aHR0cHM6Ly9nbG9z/ZS5mci93cC1jb250/ZW50L3VwbG9hZHMv/MjAxOS8wMy9yb3lh/bC1tb25jZWF1LU1h/dHN1aGlzYS1QYXJp/cy1yZXN0by0wMi5q/cGc'),
(15, 'Mon square', 'Ex collaborateur des frères Costes et fort de cette riche expérience, Quentin de Fleuriau a décidé de se mettre à son compte et a ouvert ”Mon Square”, brasserie chic et colorée\r\n installé dans le secteur des boutiques coutures 7ème arrondissement de Paris.\r\n\r\nla maison décline une combinaison de plusieurs espaces hauts en couleur avec un bar surmonté d’une cage en laiton doré, une Kiss Room pleine de charme tapissée de miroirs et des salles à manger avec des murs parés de fresques végétales : extra !\r\n\r\nAu menu de cette brasserie hors du commun, on retrouve, bien évidemment, les grands classiques du genre allant de l’incontournable filet sauce au poivre, au traditionnel tartare de bœuf au couteau, en passant par le fameux poulet rôti.', '31 rue Saint Dominique', '75011', 'Paris', 125586927, 'Lundi - Vendredi - 08:00 - 00:00, Samedi- Dimanche 10:00 - 00:00', 'https://imgs.search.brave.com/dIInUCiSj5pwjLnNdgIQrWy3sGkFzYpq23eLLb2QHi4/rs:fit:980:716:1/g:ce/aHR0cHM6Ly9kZWNv/cnJlcG9ydC5jb20v/aW1hZ2VzLzIwLzEx/L20tMmVucHp6a21t/cmUuanBn'),
(16, 'Monsieur Bleu', 'Situé dans l’aile ouest du Palais de Tokyo, aux abords des quais et face à la Tour Eiffel, Monsieur Bleu retrouve sa place dans l’architecture d’origine rénovée, comme s’il avait toujours habité cet espace.\r\n\r\nIl se mue en restaurant et devient l’adresse qui convient aussi bien aux dîners entre amis, aux déjeuners en famille, aux rencontres entre artistes, aux repas d’affaires, qu’aux nuits agitées.', '20 avenue de New York Palais de Tokyo', '75011', 'Paris', 125586927, 'Lundi - Vendredi 19:00 - 02:00', 'https://imgs.search.brave.com/A8dCkHBfCJeKDgewii0qSIMtwHCL2IbAs7SCgA5_hpU/rs:fit:550:343:1/g:ce/aHR0cHM6Ly9tZWRp/YS1jZG4udHJpcGFk/dmlzb3IuY29tL21l/ZGlhL3Bob3RvLXMv/MGMvNDYvZDEvYWYv/cGhvdG8wanBnLmpw/Zw'),
(17, 'PNY Le Marais', 'Si t’es proche du Carreau du Temple, viens dans ce fast food et commande des Burgers cuits à la perfection. Si tu vas au Paris New York, essaye les brioches fascinantes. Selon les opinions des invités, les serveurs proposent un vin délicieux ici ou si t’es plus dans le soft tu peux apprécier  un milk shake immense dans ce lieu. ', '1 Rue Perrée 7', '75011', 'Paris', 125756582, 'Lundi - Vendredi  18:00 - 23:00, Samedi - Dimanche 12:00 - 23:00', 'https://imgs.search.brave.com/J9ujbDzd-Kq0yS2g0U1-xBl2-1FIHZsZ-UMJiH967R4/rs:fit:753:565:1/g:ce/aHR0cHM6Ly93d3cu/d2UtaGVhcnQuY29t/L3VwbG9hZC1pbWFn/ZXMvcG55bWFyYWlz/cGFyaXMxMi5qcGc\r\n'),
(18, 'PNY Oberkampf', 'Si t’es proche d\'Oberkampf, viens dans ce fast food et commande des Burgers cuits à la perfection. Si tu vas au Paris New York, essaye les brioches fascinantes. Selon les opinions des invités, les serveurs proposent un vin délicieux ici ou si t’es plus dans le soft tu peux apprécier  un milk shake immense dans ce lieu. ', '96 rue Oberkampf', '75011', 'Paris', 125789654, 'Lundi - Vendredi 18:00 - 23:00, Samedi - Dimanche  12:00 - 23:00', 'https://images.squarespace-cdn.com/content/v1/54a2cf6ae4b09ca9ce7134cb/1618926416128-K2Q8OOCMUP05JZNXDLDN/pny_oberkampf_adresse.jpg?format=1000w'),
(19, 'Sadelle\'s', 'Se trouvant dans la Boutique “Kith”, ce mythique temple new-yorkais de la mode et des sneakers accueille au rez-de-chaussée de son flagship parisien une autre enseigne iconique de Big Apple : Sadelle’s donc, le must en matière de brunch dans la ville américaine.\r\n\r\nAu coeur de l’ancien Hôtel Pershing Hall, Tu pourras t’émerveiller face à un mur végétal signé du célèbre Botaniste Patrick Blanc et marcher sur un sol en damier pour accéder à de splendides tables parées de marbre blanc. À l’heure du Brunch, c’est sous une immense verrière baignée de lumière que l’occasion vous sera donnée de goûter aux classiques de Sadelle’s, de ses indétrônables Bagels, à ses savoureux oeufs Bénédicte en passant par le caviar de chez Petrossian.', '49 rue Pierre Charron', '75011', 'Paris', 125863257, 'Lundi - Vendredi 10:00 - 19:00', 'https://imgs.search.brave.com/SkufnJ1JfnaKxmm-n4JESmy5w5xn9iKWuuWZBlRcl4Q/rs:fit:900:600:1/g:ce/aHR0cHM6Ly92aWFj/b21pdC5uZXQvd3At/Y29udGVudC91cGxv/YWRzLzIwMjEvMDIv/a2l0aC1wYXJpcy1m/bGFnc2hpcC0wNi5q/cGc'),
(20, 'Sinople', 'C\'est le nouveau restaurant gastronomique du club de sport Klay, situé rue Saint-Sauveur (2e). En misant tout sur une carte équilibrée et pleine de saveur, Sinople nous offre une parenthèse gourmande et vitaminée, dans le splendide cadre d\'un jardin d\'hiver.', '4 B rue Saint Sauveur', '75013', 'Paris', 135162548, 'Mercredi - Vendredi  18:00 - 23:00, Samedi - 12:00 - 15:00,  Dimanche - 11:30 - 16:00', 'https://www.doitinparis.com/files/2015/bar_resto/thumbs-1180x525/sinople.jpg'),
(21, 'Street Bangkok', 'On a compté (deux fois), aujourd’hui STREET Bangkok, c’est 8 restaurants à Paris, 150 salariés dont 50 cuisiniers thaï, et une grande cuisine à Ivry où tout nos plats, nos sauces et nos bouillons sont élaborés par nos chefs. (Et juste ici un petit géranium)', '13 rue de la Roquette Street Bastille', '75013', 'Paris', 135624578, 'Mardi - Dimanche 12:00 - 23:00', 'https://imgs.search.brave.com/U8cdPuchMxiXlDL9ppim4viH7UBCPG8k9I7EiGVfgnw/rs:fit:800:600:1/g:ce/aHR0cHM6Ly9mci5u/ZXd0YWJsZS5jb20v/dXBsb2Fkcy9tZWRp/YXMvcmVzdGF1cmFu/dHMvaW1hZ2VzL2xh/cmdlLzQwMjItcGhv/dG8xLmpwZz92PTE1/NDgwODYyODk1ZWYx/MTM0NzgzMjk1'),
(22, 'Sushilicious', 'Le meilleur des restaurants japonais situé au coeur de Paris ! Pour manger dans une ambiance japonaise et participer à une cérémonie de thé, c\'est parfait. C\'est un restaurant idéal pour une sortie familiale, en couple et même tout.e seul.e.', '15 cours Berriat,', '75014', 'Paris', 135684973, 'Lundi - Vendredi 18:00 - 22:30', 'https://www.wonderbox.fr/wondermedias/sys_master/productmedias/h21/hc8/918298-560x373.jpg'),
(23, 'Yoru', 'Le Yoru est un restaurant coréen dans lequel vous pourrez goûter au fameux kimchi. Ilvous propose un cadre idyllique qui vous fera vraiment plaisir si vous aimez la culture coréenne de manière générale. Vous pouvez réserver via leur site et par téléphone.', '62 rue de la Roquette', '75015', 'Paris', 156824595, 'Mardi - Dimanche 19h-23h', 'https://imgs.search.brave.com/tXJMauZZrpoHFy_PxUj15J1k-0hFMBrQopUGeE_QlyQ/rs:fit:960:1200:1/g:ce/aHR0cHM6Ly9wYnMu/dHdpbWcuY29tL21l/ZGlhL0VoT0NmMHdY/Y0FVcEl1ZC5qcGc'),
(24, 'Buck Reed', 'La carte annonce une cuisine de tradition américaine avec, selon la saison, la soupe de chou fleur, le velouté de petits pois à la menthe, la tarte fine aux tomates de Sicile, le bourguignon de joue de boeuf, la blanquette de veau, la pintade fermière aux morilles, la daube de joue de veau, le risotto au thon et aux oignons nouveaux, ou l\'osso buco.', '33 rue de la République', '75016', 'Paris', 165823476, 'Mardi - Dimanche 18h-00h', 'https://media-cdn.tripadvisor.com/media/photo-s/0d/a9/9d/fe/salon-saint-antoine.jpg'),
(25, 'Deed Dred', 'Le restaurant Reed a été ouvert en avril 2011 par Catherine Reed, une cuisinière franco-canadienne.', '34 avenue de champ de Mars', '75016', 'Paris', 184688535, 'Lundi - Samedi 14h-23h', 'http://restaurants-paris.fr/assets/img/75/70940-612.jpg'),
(26, 'Chez Zeynab', 'Envie de manger de l\'africain épicé ?  Chez Zeynab vous comblera. Dans un cadre traditionnel vous allez pouvoir grammer vos thieb et pastels. Très réputé, pour son cadre, si vous souhaitez vous y rendre nous vous recommandons d\'y aller à l\'heure de midi. Autrement, la réservation est fortement recommandée. Elle se fait via leur site.', '25 rue du Tolbiac', '75017', 'Paris', 185546849, 'Dimanche - Vendredi 15h-00h', 'https://scontent-cdg2-1.xx.fbcdn.net/v/t1.18169-9/12226968_1195929980421879_9109071698499543968_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=973b4a&_nc_ohc=ldcdlsvWhjAAX8xdlw-&_nc_ht=scontent-cdg2-1.xx&oh=00_AT9iv7ZoFViAIQyRAilg0sQeR4LGMDzOjhG0zcrn1yqx8w&oe=626B6985'),
(27, 'Libertalia', 'Le Libertalia est un ancien Bunker militaire complètement réaménagé. Aujourd\'hui, ses décorateurs en ont fait un espace chic et convivial, grâce à ses nombreux espaces (terrasse de 1.200m2, restaurant, piano-bar, scène de concert, et club Lounge), sa cuisine créative qui associe terroir et fraîcheur, et sa programmation artistique riche et variée.', '14 rue de Babiliot', '75017', 'Paris', 185979354, 'Samedi - Jeudi 14h-00h', 'https://res.cloudinary.com/tf-lab/image/upload/w_600,h_337,c_fill,g_auto:subject,q_auto,f_auto/restaurant/764daeb9-b216-4701-b283-c4e4bfc4b670/7aea93ab-3064-44b5-b2f6-7e0e1af2a3a1.jpg'),
(28, 'Mazurka', '\"Niché à Montmartre, véritable petit village au coeur de Paris, la Mazurka est certainement le restaurant polonais le plus accueillant et folklorique parisien. Un folklore authentique, tout droit venu de Pologne.\r\n\r\nEn cuisine, les spécialités slaves t’emmèneront sur les traces d\'une gastronomie riche.\"', '55 avenue de la', '75017', 'Paris', 195863546, 'Lundi - Vendredi 13h-00h', 'https://media-cdn.tripadvisor.com/media/photo-s/05/f4/d2/a1/le-restaurant.jpg'),
(29, 'Kalinka', 'Restaurant cosy à l\'ambiance chaleureuse avec mezzanine servant du borscht, des ravioles et d\'autres spécialités d\'Europe de l\'Est.', '10 rue Doudeauville', '75018', 'Paris', 196384759, 'Dimanche - Samedi 14h-23h', 'https://media-cdn.tripadvisor.com/media/photo-p/1c/30/35/a5/photo1jpg.jpg'),
(30, 'Mama Africa', 'Restaurant MAMA AFRICA Paris : Restaurant rénové avec le design AFRO-FUTURISTE, accueil encore plus chaleureux. Les cuisines africaines raffinées par excellence chez MACKENZY: Nouveaux Décors, nouvelles ambiances...', '244 Bd de la Villette', '75019', 'Paris', 198364765, 'Lundi - Dimanche 16h-23h', 'https://res.cloudinary.com/tf-lab/image/upload/w_600,h_337,c_fill,g_auto:subject,q_auto,f_auto/restaurant/596c96a9-a516-486c-adcc-d54ce6e5bae5/5010481e-9701-4474-84da-ad7cda4f1bfa.jpg'),
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(29, 'anne.bouaniche@protonmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$fQJqHco92BRJeK/uMg9gH.Q63Hec0XTKbVB69b.o4q/GGhiL3BfZK', 'Bouaniche', 'Anne', 'ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis gravida neque convallis a cras semper auctor neque vitae tempus quam pellentesque nec nam aliquam sem et tortor', 'Paris', 665489732, 'https://images.unsplash.com/photo-1592621385612-4d7129426394?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
(30, 'mogangoflorian@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$WOT263W1NwLxfiWbK8cFIemSA1a1Af.QXPDA/s9pD.QLsOG/VKTw6', 'Mogango', 'Florian', NULL, 'Paris', 102030405, NULL);

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
(19, 22),
(29, 2),
(29, 4),
(29, 6),
(29, 7),
(29, 17),
(29, 23);

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
