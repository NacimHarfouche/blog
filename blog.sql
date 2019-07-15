-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 15 juil. 2019 à 15:58
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
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `author`
--

INSERT INTO `author` (`id`, `firstName`, `lastName`) VALUES
(1, 'Nacim le fantastique', 'Harfouche'),
(2, 'Arnaud', 'Roch'),
(3, 'Kevin', 'Didier');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Moto'),
(2, 'Escalade'),
(4, 'Game');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `creationTimeStamp` datetime NOT NULL,
  `post_id` smallint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `pseudo`, `content`, `creationTimeStamp`, `post_id`) VALUES
(1, 'test', 'ceci est un test', '2019-02-25 14:03:40', 1),
(2, 'moncul', 'super nue', '2019-02-25 14:12:28', 1),
(5, 'user2', 'la danse test2', '2019-02-25 14:36:40', 1),
(6, 'user3', 'test danse', '2019-02-25 14:41:59', 2),
(7, 'user4', 'test intel', '2019-02-25 14:42:10', 3),
(8, 'user5', 'test intel2', '2019-02-25 14:43:20', 3),
(9, 'garance', 'salut', '2019-02-26 11:32:53', 1),
(10, 'user4', 'hello', '2019-02-26 13:52:25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `creationTimeStamp` datetime NOT NULL,
  `author_id` tinyint(3) NOT NULL,
  `category_id` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `creationTimeStamp`, `author_id`, `category_id`) VALUES
(1, 'la fonte des iceberg1', 'test\r\n', '2019-02-25 00:00:00', 1, 1),
(2, 'danse des canards', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel nisl in orci vestibulum lobortis ut a sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam sodales gravida viverra. Vivamus sit amet lacinia sem, ac ultricies libero. Donec finibus tincidunt pharetra. Fusce cursus nisl odio, eu vestibulum leo consectetur vel. Donec et odio ligula.', '2019-02-25 00:00:00', 1, 1),
(5, 'l\'intelligence artificielle ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel nisl in orci vestibulum lobortis ut a sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam sodales gravida viverra. Vivamus sit amet lacinia sem, ac ultricies libero. Donec finibus tincidunt pharetra. Fusce cursus nisl odio, eu vestibulum leo consectetur vel. Donec et odio ligula.\r\n\r\n', '2019-02-26 00:00:00', 1, 1),
(10, 'Patern', 'patern test', '2019-02-27 11:58:24', 1, 1),
(11, 'Corse', 'test', '2019-02-27 11:58:42', 1, 1),
(12, 'yellow', 'it\'s yellow', '2019-02-27 11:59:05', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `status`) VALUES
(2, 'admin', 'theAdmin', 'test@test.fr', 'admin', 0),
(7, 'user', 'theUser', 'user@user.fr', 'user', 1),
(8, 'user2', 'theUser', 'user2@user.fr', 'user', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
