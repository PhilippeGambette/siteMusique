-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 31 mai 2020 à 00:33
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP :  7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `site_musique`
--

-- --------------------------------------------------------

--
-- Structure de la table `mu_artiste`
--

CREATE TABLE `mu_artiste` (
  `id` int(11) NOT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `biographie` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mu_artiste`
--

INSERT INTO `mu_artiste` (`id`, `prenom`, `nom`, `photo`, `biographie`) VALUES
(1, 'Jennifer', 'Lopez', 'https://fr.wikipedia.org/wiki/Jennifer_Lopez#/media/File:Jennifer_Lopez_at_GLAAD_Media_Awards.jpg', 'Jennifer Lopez, de son vrai nom Jennifer Lynn Lopez, née le 24 juillet 1969 à Castle Hill, dans le quartier du Bronx à New York, est une chanteuse, actrice, danseuse, productrice de musique, philanthrope et styliste américaine. Elle s’intéresse à l’industrie cinématographique après son rôle dans le film My Little Girl. Jennifer gagne ensuite en notoriété comme danseuse Fly Girl sur In Living Color en 1991. Elle reçoit son premier grand rôle dans le film Selena en 1997. Elle fait par la suite paraître son premier album studio, On the 6. Source : https://fr.wikipedia.org/wiki/Jennifer_Lopez'),
(2, 'Lady', 'Gaga', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Tony_Bennett_%26_Lady_GaGa%2C_Cheek_to_Cheek_Tour_06_edited.jpg/220px-Tony_Bennett_%26_Lady_GaGa%2C_Cheek_to_Cheek_Tour_06_edited.jpg', 'Stefani Germanotta, dite Lady Gaga, née le 28 mars 1986, à New York, aux États-Unis, est une autrice-compositrice-interprète américaine. Née et élevée à New York, elle étudie au couvent du Sacré-Cœur et fréquente brièvement la Tisch School of the Arts de l’université de New York avant de quitter le milieu scolaire pour se concentrer sur sa carrière musicale. Elle commence alors à se creuser une place sur la scène musicale rock du Lower East Side, et signe ensuite une entente chez Streamline Records vers la fin de 2007. Au cours de l’exécution de son contrat en tant qu’auteure-compositrice, ses capacités vocales sont remarquées par l’artiste Akon, qui la signe alors sur son label, Kon Live Distribution.'),
(3, 'Jessie', 'J', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Jessie_J_2%2C_2012.jpg/220px-Jessie_J_2%2C_2012.jpg', 'Jessica Ellen Cornish, plus connue sous le pseudonyme de Jessie J, née le 27 mars 19881 à Redbridge en Angleterre, est une autrice-compositrice-interprète britannique en contrat avec le label Lava Records (Universal Music Group). Plus connue à ses débuts pour avoir composé des chansons destinées à Rihanna, Justin Timberlake, Alicia Keys, ou encore Miley Cyrus, elle sort son premier single, Do It Like A Dude, en novembre 2010, qui atteint la 2e place des charts au Royaume-Uni, suivi de Price Tag, qui devient alors son premier numéro 1. En février 2011, elle reçoit le Critics Choice aux prestigieux Brit Awards, qui l’annonce comme l’une des artistes à surveiller. Justin Timberlake a déclaré qu’elle était « la meilleure chanteuse du monde à ce jour ». Source : https://fr.wikipedia.org/wiki/Jessie_J'),
(4, 'Sia', 'Furler', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Sia_at_Seattle.jpg/220px-Sia_at_Seattle.jpg', 'Sia Kate Isobelle Furler, dite Sia, née le 18 décembre 1975 à Adélaïde, est une autrice-compositrice-interprète australienne.\r\n\r\nElle débute au sein du groupe australien Crisp durant les années 1990 et mène ensuite une carrière solo. Sia a contribué à trois albums du groupe britannique Zero 7 et collabore également avec d’autres artistes. Source : https://fr.wikipedia.org/wiki/Sia_(chanteuse)'),
(5, 'Luis', 'Fonsi', 'https://fr.wikipedia.org/wiki/Luis_Fonsi#/media/File:Luis_Fonsi_2015_(cropped).JPG', 'Luis Fonsi, de son vrai nom Luis Alfonso Rodríguez López-Cepero, né le 15 avril 1978 à San Juan, Porto Rico, est un chanteur pop latino. Chanteur et compositeur, Luis Fonsi touche surtout un public latino-américain. Sa musique reprend différents styles : RnB, ballades romantiques ou encore pop rock. Source : https://fr.wikipedia.org/wiki/Luis_Fonsi'),
(6, 'Daddy', 'Yankee', 'https://fr.wikipedia.org/wiki/Daddy_Yankee#/media/File:DaddyYankee.jpg', 'Daddy Yankee, de son vrai nom Ramón Luis Ayala Rodriguez, né le 3 février 1977 á San Juan, est un chanteur, acteur, producteur de films, animateur de radio, et homme d\'affaires portoricain. Il devient mondialement célèbre en 2017 avec sa collaboration sur le tube planétaire Despacito de Luis Fonsi. Source : https://fr.wikipedia.org/wiki/Daddy_Yankee');

-- --------------------------------------------------------

--
-- Structure de la table `mu_chanson`
--

CREATE TABLE `mu_chanson` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prix` float NOT NULL DEFAULT 0.99,
  `id_auteur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mu_chanson`
--

INSERT INTO `mu_chanson` (`id`, `nom`, `prix`, `id_auteur`) VALUES
(1, 'Just Dance', 0.99, 2),
(2, 'LoveGame', 0.99, 2),
(3, 'Paparazzi', 0.99, 2),
(4, 'Beautiful, Dirty, Rich', 0.99, 2),
(5, 'Eh, Eh (Nothing Else I Can Say)', 0.99, 2),
(6, 'Poker Face', 0.99, 2),
(7, 'The Fame', 0.99, 2),
(8, 'Money Honey', 0.99, 2),
(9, 'Again Again', 0.99, 2),
(10, 'Boys Boys Boys', 0.99, 2),
(11, 'Brown Eyes', 0.99, 2),
(12, 'Summerboy', 0.99, 2),
(13, 'Still', 0.99, 1),
(14, 'Loving You', 0.99, 1),
(15, 'I’m Glad', 0.99, 1),
(16, 'The One', 0.99, 1),
(17, 'Dear Ben', 0.99, 1),
(18, 'All I Have feat. LL Cool J', 0.99, 1),
(19, 'Jenny from the Block feat. Styles And Jadakiss', 0.99, 1),
(20, 'Again', 0.99, 1),
(21, 'You Belong To Me', 0.99, 1),
(22, 'I’ve Been Thinkin', 0.99, 1),
(23, 'Baby I Love U !', 0.99, 1),
(24, 'The One version 2', 0.99, 1),
(25, 'I’m Gonna Be Alright trackmasters remix feat. Nas', 0.99, 1),
(26, 'If You Had My Love', 0.99, 1),
(27, 'Should’ve Never', 0.99, 1),
(28, 'Too Late', 0.99, 1),
(29, 'Feelin’ So Good', 0.99, 1),
(30, 'Let’s Get Loud', 0.99, 1),
(31, 'Could This Be Love', 0.99, 1),
(32, 'No me Ames (Duet with Marc Anthony) (Tropical Remix)', 0.99, 1),
(33, 'Waiting for Tonight', 0.99, 1),
(34, 'Open Off My Love', 0.99, 1),
(35, 'Promise Me You’ll Try', 0.99, 1),
(36, 'It’s Not That Serious', 0.99, 1),
(37, 'Talk About Us', 0.99, 1),
(38, 'No Me Ames (Duet with Marc Anthony) (Ballad Version)', 0.99, 1),
(39, 'Una Noche Mas', 0.99, 1),
(40, 'Baila', 0.99, 1),
(41, 'Do You Know Where You’re Going to (Theme From Mahogany)', 0.99, 1),
(42, 'Love Don’t Cost a Thing', 0.99, 1),
(43, 'I’m Real', 0.99, 1),
(44, 'Play', 0.99, 1),
(45, 'Walking on Sunshine', 0.99, 1),
(46, 'Ain’t It Funny', 0.99, 1),
(47, 'Cariño', 0.99, 1),
(48, 'Come Over', 0.99, 1),
(49, 'We Gotta Talk', 0.99, 1),
(50, 'That’s Not Me', 0.99, 1),
(51, 'Dance with Me', 0.99, 1),
(52, 'Secretly', 0.99, 1),
(53, 'I’m Gonna Be Alright', 0.99, 1),
(54, 'That’s the Way', 0.99, 1),
(55, 'Dame (Touch Me)', 0.99, 1),
(56, 'Si Ya Se Acabó', 0.99, 1),
(57, 'Chandelier', 0.99, 4),
(58, 'Big Girls Cry', 0.99, 4),
(59, 'Burn the Pages', 0.99, 4),
(60, 'Eye of the Needle', 0.99, 4),
(61, 'Hostage', 0.99, 4),
(62, 'Straight for the Knife', 0.99, 4),
(63, 'Fair Game', 0.99, 4),
(64, 'Elastic Heart', 0.99, 4),
(65, 'Free the Animal', 0.99, 4),
(66, 'Fire Meet Gasoline', 0.99, 4),
(67, 'Cellophane', 0.99, 4),
(68, 'Dressed in Black', 0.99, 4),
(69, 'It’s My Party', 0.99, 3),
(70, 'Thunder', 0.99, 3),
(71, 'Square One', 0.99, 3),
(72, 'Sexy Lady', 0.99, 3),
(73, 'Harder We Fall', 0.99, 3),
(74, 'Breathe', 0.99, 3),
(75, 'I Miss Her', 0.99, 3),
(76, 'Daydreamin’', 0.99, 3),
(77, 'Excuse My Rude', 0.99, 3),
(78, 'Wild', 0.99, 3),
(79, 'Gold', 0.99, 3),
(80, 'Conquer the World', 0.99, 3),
(81, 'Alive', 0.99, 3),
(82, 'Despacito', 0.99, 5);

-- --------------------------------------------------------

--
-- Structure de la table `mu_compose`
--

CREATE TABLE `mu_compose` (
  `id_chanson` int(11) NOT NULL,
  `id_regroupement` int(11) NOT NULL,
  `ordre` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mu_compose`
--

INSERT INTO `mu_compose` (`id_chanson`, `id_regroupement`, `ordre`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 2, 1),
(14, 2, 2),
(15, 2, 3),
(16, 2, 4),
(17, 2, 5),
(18, 2, 6),
(19, 2, 7),
(20, 2, 8),
(21, 2, 9),
(29, 3, 4),
(22, 2, 10),
(23, 2, 11),
(24, 2, 12),
(25, 2, 13),
(26, 3, 1),
(27, 3, 2),
(28, 3, 3),
(30, 3, 5),
(31, 3, 6),
(32, 3, 7),
(33, 3, 8),
(34, 3, 9),
(35, 3, 10),
(36, 3, 11),
(37, 3, 12),
(38, 3, 13),
(39, 3, 14),
(40, 3, 15),
(41, 3, 16),
(42, 4, 1),
(43, 4, 2),
(44, 4, 3),
(45, 4, 4),
(46, 4, 5),
(47, 4, 6),
(48, 4, 7),
(49, 4, 8),
(50, 4, 9),
(51, 4, 10),
(52, 4, 11),
(53, 4, 12),
(54, 4, 13),
(55, 4, 14),
(56, 4, 15),
(57, 5, 1),
(58, 5, 2),
(59, 5, 3),
(60, 5, 4),
(61, 5, 5),
(62, 5, 6),
(63, 5, 7),
(64, 5, 8),
(65, 5, 9),
(66, 5, 10),
(67, 5, 11),
(68, 5, 12),
(69, 6, 1),
(70, 6, 2),
(71, 6, 3),
(72, 6, 4),
(73, 6, 5),
(74, 6, 6),
(75, 6, 7),
(76, 6, 8),
(77, 6, 9),
(78, 6, 10),
(79, 6, 11),
(80, 6, 12),
(81, 6, 13),
(82, 7, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mu_newsletter`
--

CREATE TABLE `mu_newsletter` (
  `id` int(11) NOT NULL,
  `courriel` varchar(256) NOT NULL,
  `date_inscription` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mu_newsletter`
--

INSERT INTO `mu_newsletter` (`id`, `courriel`, `date_inscription`) VALUES
(1, 'philippe.gambette@u-pem.fr', '2020-05-30 22:32:44');

-- --------------------------------------------------------

--
-- Structure de la table `mu_regroupement`
--

CREATE TABLE `mu_regroupement` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `pochette` varchar(255) DEFAULT NULL,
  `annee` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `id_artiste` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mu_regroupement`
--

INSERT INTO `mu_regroupement` (`id`, `nom`, `pochette`, `annee`, `type`, `id_artiste`) VALUES
(1, 'The Fame', 'https://upload.wikimedia.org/wikipedia/en/d/dd/Lady_Gaga_%E2%80%93_The_Fame_album_cover.png', 2008, 'album', 2),
(2, 'This Is Me... Then', 'https://upload.wikimedia.org/wikipedia/en/b/be/This_Is_Me..._Then.png', 2002, 'album', 1),
(3, 'On the 6', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/5f/On_the_6_%28Jennifer_Lopez_album_-_cover_art%29.png/220px-On_the_6_%28Jennifer_Lopez_album_-_cover_art%29.png', 1999, 'album', 1),
(4, 'J.Lo', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/29/Jennifer_Lopez_-_J.Lo.png/220px-Jennifer_Lopez_-_J.Lo.png', 2001, 'album', 1),
(5, '1000 Forms of Fear', 'https://upload.wikimedia.org/wikipedia/en/b/b7/Sia_-_1000_Forms_of_Fear_%28Official_Album_Cover%29.png', 2014, 'album', 4),
(6, 'Alive', 'https://en.wikipedia.org/wiki/Alive_(Jessie_J_album)#/media/File:Jessie_J_Alive_(Official_album_cover).png', 2013, 'album', 3),
(7, 'Despacito', 'https://images-eu.ssl-images-amazon.com/images/I/619fzjO1rmL._SS500.jpg', 2017, 'album', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `mu_artiste`
--
ALTER TABLE `mu_artiste`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mu_chanson`
--
ALTER TABLE `mu_chanson`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mu_newsletter`
--
ALTER TABLE `mu_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mu_regroupement`
--
ALTER TABLE `mu_regroupement`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mu_artiste`
--
ALTER TABLE `mu_artiste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `mu_chanson`
--
ALTER TABLE `mu_chanson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT pour la table `mu_newsletter`
--
ALTER TABLE `mu_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `mu_regroupement`
--
ALTER TABLE `mu_regroupement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
