-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `compte_rendu`
--

DROP TABLE IF EXISTS `compte_rendu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compte_rendu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stage_id` int NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D39E69D22298D193` (`stage_id`),
  CONSTRAINT `FK_D39E69D22298D193` FOREIGN KEY (`stage_id`) REFERENCES `stage` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte_rendu`
--

LOCK TABLES `compte_rendu` WRITE;
/*!40000 ALTER TABLE `compte_rendu` DISABLE KEYS */;
INSERT INTO `compte_rendu` VALUES (1,1,'<div>En début de stage, j’avais une semaine pour comprendre les bases de <strong>Symfony</strong>, un framework PHP utilisé pour le développement d’applications web.&nbsp;<br><br></div><h1><strong>MAIS C\'EST QUOI SYMFONY ?</strong></h1><div>Symfony est un Framework PHP qui facilite le développement en proposant des outils préconstruits (gestion des routes, bases de données, formulaires, etc.) tout en respectant les bonnes pratiques. Il repose sur le modèle <strong>MVC</strong> (Modèle-Vue-Contrôleur), ce qui permet de structurer le code de manière claire et maintenable. <br><br> Grâce à sa <strong>documentation exhaustive</strong> et à sa <strong>fiabilité</strong>, Symfony est un Framework puissant et incontournable dans l’écosystème PHP. <br><br><br><strong>Outils utilisés pour la gestion du projet<br></strong><br></div><div>Pour mieux gérer le projet et communiquer efficacement avec mon tuteur et l’équipe IT, j’ai utilisé plusieurs outils professionnels :</div><ol><li><strong>Slack</strong>, un moyen de communication collaboratif contenant un logiciel de gestion de projets (application similaire : Teams)</li><li><strong>GitLab</strong>, combinant des outils de gestion de projets et de versionning, GitLab permet de collaborer sur du code et suivre les différentes tâches (application similaire : GitHub)</li><li><strong>Notion</strong>, un outil qui permet de collaborer en équipe, suivre des tâches et organiser des notes</li><li><strong>Monday</strong>, utilisé pour la gestion de projet, Monday permet un suivi clair et net sur les différentes tâches de chaque mission que les collaborateurs y travaillent, avec un système de Dead Line, il est très utile&nbsp;</li><li><strong>Miro</strong>, Logiciel similaire à Figma</li></ol><div><br></div><div>Afin de mieux comprendre comment fonctionne Symfony j\'ai suivi plusieurs étapes :</div><div><br>✔️Lire la documentation sur le <a href=\"https://symfony.com/doc/current/index.html\">site officiel&nbsp; </a>📖<br>✔️Comprendre comment fonctionnait il 💭<br>✔️Quels outils / packages utiliser et comment 🛠️<br>✔️M\'exercer en réalisant un blog 📜<br>✔️Créer un BackOffice pour gérer le site avec un système de hiérarchie de rôle ℹ️</div><div><br>&nbsp;J’ai réussi à accomplir les objectifs dans les délais, ce n\'était pas le meilleur des blogs, mais pour une découverte, un débutant et une semaine, je trouve ça pas mal !<br><br>Cette première expérience avec Symfony a été enrichissante et m\'a permis d’acquérir des bases solides pour la suite du stage .</div>','Découverte de Symfony et mise en pratique','decouverte-de-symfony-et-mise-en-pratique','symfony-logo-wine-67925d4e5c731952452132.png',38334),(2,1,'<p>Après une première semaine d’apprentissage de <strong>Symfony</strong>, j’ai eu l’opportunité d’appliquer mes nouvelles compétences en travaillant directement sur un projet en production. <br><br><strong>Objectif de la mission :</strong><br> L’objectif était <strong>d’intégrer une section présentant le \"Conseil d\'Administration\"</strong> sur la page <em>\"Qui sommes-nous ?\"</em> du site <a href=\"https://synergiefamily.com/qui-sommes-nous\"><strong>Synergie Family</strong></a> et de l’adapter au format <strong>responsive</strong> pour assurer un affichage optimal sur tous les appareils, plus communément appelé \"Mobile First\". <br><br> Toutes les informations et exigences concernant cette section m’ont été communiquées via <strong>Monday</strong>, un outil de gestion de projet.<br>&nbsp;<br>Pour réaliser cette tâche, j’ai suivi les étapes suivantes :<br><br></p><p>1️⃣ <strong>Analyse du code existant</strong> : Comprendre la structure du projet pour assurer une intégration cohérente.<br>2️⃣ <strong>Réutilisation et adaptation</strong> : J’ai repris une section similaire, demandée par le lead développeur, et l’ai adaptée pour qu’elle respecte l’apparence et les spécifications du site.<br>3️⃣ <strong>Implémentation et ajustements responsive</strong> :<br><br></p><ul><li>Utilisation de <strong>Flexbox</strong> pour organiser les éléments de manière fluide.</li><li>Application de <strong>media queries</strong> pour ajuster la mise en page en fonction des différentes tailles d’écran.</li><li>Vérification que les images et le texte s’adaptent correctement sur <strong>mobile</strong> et <strong>tablette</strong>, afin de garantir une expérience utilisateur optimale.</li></ul><p>Cette première mission sur un projet en production m’a permis d’approfondir ma compréhension de Symfony et d’appliquer des bonnes pratiques en développement web, notamment en matière d’intégration et de responsive design.</p><p><br>Concernant l\'aspect <strong>responsive</strong>, j\'ai appliqué des <strong>media queries</strong> pour ajuster la mise en page sur différents appareils. J\'ai utilisé <strong>Flexbox</strong> pour organiser les cartes de manière fluide, et j\'ai veillé à ce que les images et le texte s\'ajustent correctement sur mobile et tablette, afin de préserver l\'expérience utilisateur sur toutes les résolutions&nbsp;</p>','Modification dans un projet en prod','modification-dans-un-projet-en-prod-1','logo-synergie-family-67b1deeef1eb8846998583.png',17725),(3,1,'<p><strong>Big Mars</strong> est une application mobile visant à accompagner les jeunes dans leur insertion professionnelle grâce à un suivi personnalisé. Elle propose des parcours ludiques, des formations et des offres d’emploi adaptées aux profils et ambitions de chacun. <br><br> Face à un besoin en urgence, le prestataire a demandé la création d’une <strong>application web</strong>, et j’ai été chargé, avec l\'aide de mon tuteur, du <strong>développement et de la gestion du BackOffice</strong>.&nbsp;<br><br><br></p><p><strong>Mise en place du projet<br></strong><br></p><p>Une réunion avec l’équipe marketing a été organisée afin de définir la <strong>charte graphique</strong> et d’établir un <strong>planning précis</strong>. Une <strong>TODO List</strong> m’a été assignée pour structurer les tâches à accomplir :<br><br>✔️ <strong>Conception du modèle de données</strong> pour la gestion des événements et des formulaires d’inscription et de contacte.<br>✔️ <strong>Mise en place du projet sur Git</strong> pour assurer le suivi des versions.<br>✔️ <strong>Création des entités nécessaires</strong> et définition des relations en base de données.<br>✔️ <strong>Utilisation des assertions et de </strong><a href=\"https://symfony.com/doc/current/validation.html\"><strong>l’extension Gedmo</strong></a> pour la gestion efficace des contraintes et des timestamps.<br>✔️ <strong>Développement du BackOffice avec EasyAdmin</strong>, permettant :&nbsp;</p><ul><li>La gestion et l\'administration des événements,</li><li>La gestion des messages de contact,</li><li>La gestion des utilisateurs</li></ul><p><br><br></p><p><strong>Passage au Front-End<br></strong><br></p><p>Une fois le <strong>Template</strong> et la <strong>charte graphique</strong> validés par l’équipe marketing, et le <strong>Back-End terminé</strong>, j’ai commencé le développement du <strong>Front-End</strong>.<br><br></p><p>Afin d’améliorer l’expérience utilisateur, j’ai dû apprendre et intégrer de nouvelles technologies :</p><ul><li><strong>AJAX / jQuery</strong> : Permet d’apporter plus de dynamisme aux formulaires et d’optimiser les interactions sans recharger la page.</li><li><strong>Cleave.js</strong> : Une bibliothèque JavaScript utilisée pour <strong>formater les champs des formulaires</strong> (ex : numéros de téléphone, dates, montants, etc.).</li></ul><p><br><br></p><p><strong>Technologies utilisées :<br></strong><br>Pour ce projet voici les outils et leurs version utilisé :</p><ul><li><strong>PHP 8.3</strong></li><li><strong>Composer 2.1</strong> (gestionnaire de dépendence)</li><li><strong>Node 22.13</strong> (Evironnement d\'exécution js)</li><li><strong>Symfony 7 </strong>(Framework BackEnd)</li><li><strong>Tailwind 4.0</strong> (Framework CSS)</li><li><strong>Laragon 6.0</strong> (serveur local)</li></ul><p><br>Une fois le front et le back fais, le résultat de la V1 se trouve sur (lien bigmars) ou bigmars.test</p>','Développement du BackOffice pour Big Mars','developpement-du-backoffice-pour-big-mars','logo-bigmars-jaune-67a4c2b8b2321751880822.png',309868);
/*!40000 ALTER TABLE `compte_rendu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sujet` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20250122111115','2025-01-22 12:11:39',167),('DoctrineMigrations\\Version20250122112123','2025-01-22 12:21:38',23),('DoctrineMigrations\\Version20250122114115','2025-01-22 12:41:26',18),('DoctrineMigrations\\Version20250215011049','2025-02-15 02:10:51',95);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
INSERT INTO `messenger_messages` VALUES (1,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":5:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:167:\\\"http://portfolio.test/verify/email?expires=1737547939&signature=JJmMvutuccw78PNiSb%2FqU1zV8szitLhx8OhR8IOaZkY%3D&token=jdtbgO7e8yR5tvlvjFCSOP1A%2FIqWxID2aBRygKiBiXs%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:23:\\\"fifatest13014@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:24:\\\"Email registration rayan\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:15:\\\"rayan@gmail.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}i:4;N;}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}','[]','default','2025-01-22 11:12:20','2025-01-22 11:12:20',NULL);
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage`
--

DROP TABLE IF EXISTS `stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entreprise` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tuteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `debut` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `fin` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `telephone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_tuteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage`
--

LOCK TABLES `stage` WRITE;
/*!40000 ALTER TABLE `stage` DISABLE KEYS */;
INSERT INTO `stage` VALUES (1,'4 RUE BERTHELOT','Synergie Family','Baptiste Gauthier','Développeur Full Stack','2025-01-07 00:00:00','2025-03-14 00:00:00','04 91 79 85 36','baptistegautier@gmail.com','synergie-family','logo-synergie-family-67afe9e32ae01690723189.png',17725,'2025-02-15 02:12:03'),(2,'11 RUE FREDERIC JOLIOT CURIE','Plateforme Service Informatisation des Collèges','Sedan Rémi','Administrateur Système','2024-05-21 00:00:00','2024-06-21 00:00:00','08 06 00 01 40','sedanr@eduprovence.fr','plateforme-service-informatisation-des-colleges','bouches-du-rhone-13-logo-2015-svg-67b1ca411b8c1775595935.png',169510,'2025-02-16 12:21:37');
/*!40000 ALTER TABLE `stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'rayan@gmail.com','[\"ROLE_ADMIN\"]','$2y$13$UyzmbMOWsUrGD1Td3X7l1uv5.201yhS2pXjpu4jv1bbXYcxwUiKK6');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-13 11:37:12
