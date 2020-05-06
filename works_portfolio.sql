-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 06 mai 2020 à 14:04
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `works_portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `techno`
--

DROP TABLE IF EXISTS `techno`;
CREATE TABLE IF NOT EXISTS `techno` (
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Description` varchar(10000) DEFAULT NULL,
  `Type` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `techno`
--

INSERT INTO `techno` (`Id`, `Name`, `Image`, `Description`, `Type`) VALUES
(1, 'html', 'html.png', NULL, 'language'),
(2, 'css', 'css.png', 'Il faut bien mettre en valeur le visuel du site quand meme.', 'language'),
(3, 'javascript', 'js.png', 'Et avec celui-ci JQUERY et les API qui vont avec :).', 'language'),
(4, 'php', 'php.png', 'Le côté back-end me passionne plus que le front :P.', 'language'),
(5, 'mysql', 'sql.png', 'Pour gérer les bases de données, c\'est très pratique!', 'language'),
(6, 'react', 'react.png', 'C\'est réactif XD.', 'framelib'),
(7, 'angular', 'angular.png', 'Très pratique aussi pour la fluidité du site.', 'framelib');

-- --------------------------------------------------------

--
-- Structure de la table `works`
--

DROP TABLE IF EXISTS `works`;
CREATE TABLE IF NOT EXISTS `works` (
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  `Title` varchar(1000) NOT NULL,
  `Description` varchar(10000) NOT NULL,
  `Screen` varchar(1000) NOT NULL,
  `Link` varchar(1000) DEFAULT NULL,
  `Name` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `works`
--

INSERT INTO `works` (`Id`, `Title`, `Description`, `Screen`, `Link`, `Name`) VALUES
(1, 'Blog', 'Un petit blog générique où l\'on peut poster tout et nimporte quoi. Il suffit d\'être connecté pour poster ou réagir aux posts et les noter.\r\nCe site à été programmé en PHP principalement.', 'blog.png', NULL, 'blog'),
(2, 'Streaming-world', 'Fan de mangas et d\'animes? Sur Streaming-world, retrouvez les épisodes de vos animes préférés et accédez à la boutique en ligne avec paiement sécurisé pour y voir figurines, accessoires, blu-ray et tomes disponibles ! En prime, une petite présentation du manga de votre choix à été faite dans la section artworks. N\'hésitez pas !\r\nCe site à été programmé avec le modèle MVC.\r\nLa partie artworks est un site de présentation des animes avec leur personnages principaux proposés en streaming. C\'est un peu comme un deuxième site intégré dans streaming-world.', 'streaming_world.png', 'https://github.com/GentlesDev/Streaming-World', 'streaming_world'),
(3, 'Computer Buying Pro', 'Vous avez besoin dacheter un ordinateur ou des composants de tour? Rendez-vous sur Computer Buying Pro ! Vous trouverez sur ce site des composants comme carte graphique, carte mère, processeur pour personnaliser votre ordinateur. Et si vous ne savez pas où vous diriger, ne vous inquiétez pas ! Nous vendons aussi des tours déjà montées avec leurs composants!\r\nCe site à été programmé avec le modèle MVC.', 'computer_b.png', 'https://github.com/ouss17/pcbp', 'cbp'),
(4, 'Tchat numérique', 'Un site de tchat à discussion en temps réel entre les utilisateurs. Un espace d\'offres d\'emploi est disponible pour les demandeurs d\'emploi.\r\nCe site à été programmé en PHP orienté objet et en utilisant des API.', 'tchat_num.png', 'https://github.com/GentlesDev/TchatNumerique', 'tchat'),
(5, 'Evil Hunter', 'Un mini jeu qui exploite les foncionnalités js et jquery. Menez votre personnage à la victoire en combattant des monstres la nuit pour survivre!', 'evil_hunter.png', 'https://github.com/ouss17/evil_hunter', 'evil-hun');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
