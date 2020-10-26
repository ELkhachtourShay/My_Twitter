-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 01 juil. 2020 à 10:34
-- Version du serveur :  5.7.26
-- Version de PHP : 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `common-database`
--

-- --------------------------------------------------------

--
-- Structure de la table `follow`
--

CREATE TABLE `follow` (
  `id_follower` int(12) NOT NULL,
  `id_followed` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `follow`
--

INSERT INTO `follow` (`id_follower`, `id_followed`) VALUES
(1, 6),
(6, 1),
(1, 2),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `like`
--

CREATE TABLE `like` (
  `id_tweet` int(12) NOT NULL,
  `id_user` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `like`
--

INSERT INTO `like` (`id_tweet`, `id_user`) VALUES
(18, 1),
(7, 1);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `id_expeditor` int(12) NOT NULL,
  `id_receiver` int(8) NOT NULL,
  `message_date` datetime NOT NULL,
  `content_message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `id_expeditor`, `id_receiver`, `message_date`, `content_message`) VALUES
(1, 6, 1, '2020-02-14 00:00:00', 'hey'),
(5, 1, 6, '2020-02-14 00:00:00', 'salut ! comment tu vas ?'),
(6, 6, 1, '2020-02-14 00:00:00', 'super et toi ?'),
(8, 1, 6, '2020-02-14 00:00:00', 'ça va, je suis à la plage :)'),
(9, 1, 6, '2020-02-14 00:00:00', 'plage.png');

-- --------------------------------------------------------

--
-- Structure de la table `tweet`
--

CREATE TABLE `tweet` (
  `id_autor` int(12) NOT NULL,
  `id_tweet` int(12) NOT NULL,
  `tweet_date` datetime NOT NULL,
  `content_tweet` varchar(140) NOT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `id_rep` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tweet`
--

INSERT INTO `tweet` (`id_autor`, `id_tweet`, `tweet_date`, `content_tweet`, `url_image`, `id_rep`) VALUES
(1, 1, '2020-02-17 11:08:21', 'heyy', 'couple_1.jpg', NULL),
(6, 2, '2020-02-17 11:08:46', 'salut tout le monde', NULL, NULL),
(6, 3, '2020-02-17 11:10:02', '#illu', 'illu2', NULL),
(1, 4, '2020-02-17 11:11:48', 'test', NULL, NULL),
(6, 5, '2020-02-17 11:13:13', '#wac', NULL, NULL),
(1, 6, '2020-02-17 11:14:59', 'okok', NULL, NULL),
(6, 7, '2020-02-17 11:24:33', '#wac', NULL, NULL),
(6, 8, '2020-02-17 11:24:42', '#wac', 'couple2.jpg', NULL),
(1, 9, '2020-02-17 11:32:11', '', NULL, NULL),
(1, 10, '2020-02-17 11:59:39', 'test', NULL, NULL),
(1, 11, '2020-02-17 12:01:24', 'oko', 'Capture du 2020-01-10 10-38-13.png', NULL),
(1, 12, '2020-02-17 12:15:35', 'testtt', 'couple1.jpg', NULL),
(1, 13, '2020-02-17 12:22:39', '#hey', NULL, NULL),
(1, 14, '2020-02-17 12:24:48', '@koum', NULL, NULL),
(1, 15, '2020-02-17 14:02:47', '@ko', NULL, NULL),
(1, 16, '2020-02-17 14:26:55', 'test', NULL, NULL),
(1, 17, '2020-02-17 14:27:10', 'test #okok @ko', 'blank.png', NULL),
(6, 18, '2020-02-17 14:43:07', 'super brunch du dimanche ! #sunnymorning', 'brunch.jpg', NULL),
(1, 19, '2020-06-29 21:59:48', 'heyy', NULL, NULL),
(1, 20, '2020-06-29 22:04:25', 'hey', NULL, 16);

-- --------------------------------------------------------

--
-- Structure de la table `tweet_tag`
--

CREATE TABLE `tweet_tag` (
  `id_member` int(12) NOT NULL,
  `hashtag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tweet_tag`
--

INSERT INTO `tweet_tag` (`id_member`, `hashtag`) VALUES
(1, '#waccc'),
(1, '#pangolin'),
(1, '#pangolin'),
(1, '#pangolin'),
(1, '#pangolin'),
(1, '#pangolin'),
(1, '#wac'),
(1, '#waccc'),
(1, '#waccc'),
(1, '#waccc'),
(1, '#waccc'),
(1, '#waccc'),
(1, '#wac'),
(1, '#wac'),
(1, '#wac'),
(1, '#wac'),
(1, '#waccc'),
(1, '#koum'),
(1, '#koum'),
(1, '#hashtag'),
(1, '#chaima'),
(1, '#waccc'),
(1, '#waccc'),
(1, '#hey'),
(1, '#hey'),
(1, '#wac'),
(1, '#wac'),
(1, '#hey'),
(1, '#hey'),
(1, '#lol'),
(1, '#hey'),
(1, '#lol'),
(1, '#hey'),
(1, '#lol'),
(1, '#hey'),
(1, '#lol'),
(1, '#koum'),
(1, '#koum'),
(1, '#wac'),
(1, '#wac'),
(1, '#wac'),
(1, '#waccc'),
(1, '#waccc'),
(1, '#waccc'),
(1, '#hashtag'),
(1, '#hashtag'),
(6, '#illu'),
(6, '#wac'),
(6, '#wac'),
(6, '#wac'),
(1, '#hey'),
(1, '#okok'),
(6, '#img');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(12) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `subscribe_date` date NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `bio` varchar(140) DEFAULT NULL,
  `theme` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `name`, `surname`, `pseudo`, `birthdate`, `email`, `password`, `subscribe_date`, `profile_picture`, `bio`, `theme`) VALUES
(1, 'Keita', 'Koumba', 'Koum', '1997-10-07', 'koum@meetic.com', 'a1d40a132e16e6e35f5ef7d93405683da0bcb1ba', '2020-02-11', 'illu4', 'voici mon profil tweet academie\n', 1),
(2, 'Test', 'okok', 'ok', '1995-12-07', 'okok@ok.com', 'a1d40a132e16e6e35f5ef7d93405683da0bcb1ba', '2020-02-11', 'blank.png', NULL, NULL),
(3, 'Test', 'okok', 'ok', '1995-12-07', 'okok@okk.com', 'a1d40a132e16e6e35f5ef7d93405683da0bcb1ba', '2020-02-11', NULL, NULL, NULL),
(4, 'Test', 'okok', 'ok', '1995-12-07', 'okok@ookk.com', '8afe057d1c26ec1834c4bf4b959b51f15f93cdd2', '2020-02-11', NULL, NULL, NULL),
(5, 'Test', 'okok', 'ok', '1995-12-07', 'okok@ookk.comm', '74b500f12a821e0aa3bceeb232b0c261aae89d42', '2020-02-11', NULL, NULL, NULL),
(6, 'Test', 'Messagerie', 'Mail', '1994-01-16', 'message@tweet.com', 'a1d40a132e16e6e35f5ef7d93405683da0bcb1ba', '2020-02-13', 'illu2', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tweet`
--
ALTER TABLE `tweet`
  ADD PRIMARY KEY (`id_tweet`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `tweet`
--
ALTER TABLE `tweet`
  MODIFY `id_tweet` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
