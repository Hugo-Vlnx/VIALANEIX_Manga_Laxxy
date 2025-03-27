-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 12:46
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `manga`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `Nom` varchar(50) NOT NULL,
  `Date_Naissance` varchar(20) NOT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`Nom`, `Date_Naissance`, `Id`) VALUES
('Vialaneix', '26/04/2006', 1),
('Kentarou Miura', 'Jul 11, 1966', 2),
('Hirohiko Arak', 'Jun 7, 1960', 3),
('Takehiko Inoue', 'Jan 12, 1967', 4),
('Eiichiro Oda', 'Jan 1, 1975', 5),
('Naoki Urasawa', 'Jan 2, 1960', 6);

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

CREATE TABLE `manga` (
  `Titre` varchar(100) NOT NULL,
  `Date_Publication` varchar(15) NOT NULL,
  `Id` int(11) NOT NULL,
  `Note` float NOT NULL,
  `Description` text NOT NULL,
  `Personnage_Id` int(11) NOT NULL,
  `Auteur_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`Titre`, `Date_Publication`, `Id`, `Note`, `Description`, `Personnage_Id`, `Auteur_Id`) VALUES
('le test', '01/01/01', 1, 2, 'test du test', 1, 1),
('Berserk', 'Aug 25, 1989', 2, 9.47, 'Guts, a former mercenary now known as the Black Swordsman, is out for revenge. After a tumultuous childhood, he finally finds someone he respects and believes he can trust, only to have everything fall apart when this person takes away everything important to Guts for the purpose of fulfilling his own desires. Now marked for death, Guts becomes condemned to a fate in which he is relentlessly pursued by demonic beings.\r\n\r\nSetting out on a dreadful quest riddled with misfortune, Guts, armed with a massive sword and monstrous strength, will let nothing stop him, not even death itself, until he is finally able to take the head of the one who stripped him—and his loved one—of their humanity.', 2, 2),
('JoJo no Kimyou na Bouken Part 7: Steel Ball Run', 'Jan 19, 2004', 3, 9.32, 'In the American Old West, the world\'s greatest race is about to begin. Thousands line up in San Diego to travel over six thousand kilometers for a chance to win the grand prize of fifty million dollars. With the era of the horse reaching its end, contestants are allowed to use any kind of vehicle they wish. Competitors will have to endure grueling conditions, traveling up to a hundred kilometers a day through uncharted wastelands. The Steel Ball Run is truly a one-of-a-kind event.\r\n\r\nThe youthful Johnny Joestar, a crippled former horse racer, has come to San Diego to watch the start of the race. There he encounters Gyro Zeppeli, a racer with two steel balls at his waist instead of a gun. Johnny witnesses Gyro using one of his steel balls to unleash a fantastical power, compelling a man to fire his gun at himself during a duel. In the midst of the action, Johnny happens to touch the steel ball and feels a power surging through his legs, allowing him to stand up for the first time in two years. Vowing to find the secret of the steel balls, Johnny decides to compete in the race, and so begins his bizarre adventure across America on the Steel Ball Run', 3, 3),
('Vagabond', 'Sep 3, 1998', 4, 9.27, 'In 16th-century Japan, Shinmen Takezou is a wild, rough young man in both his appearance and his actions. His aggressive nature has won him the collective reproach and fear of his village, leading him and his best friend, Matahachi Honiden, to run away in search of something grander than provincial life. The pair enlist in the Toyotomi army, yearning for glory—but when the Toyotomi suffer a crushing defeat at the hands of the Tokugawa Clan at the Battle of Sekigahara, the friends barely make it out alive.\r\n\r\nAfter the two are separated, Shinmen returns home on a self-appointed mission to notify the Hon\'iden family of Matahachi\'s survival. He instead finds himself a wanted criminal, framed for his friend\'s supposed murder based on his history of violence. Upon being captured, he is strung up on a tree and left to die. An itinerant monk, the distinguished Takuan Soho, takes pity on the \"devil child,\" secretly freeing Shinmen and christening him with a new name to avoid pursuit by the authorities: Musashi Miyamoto.\r\n\r\nVagabond is the fictitious retelling of the life of one of Japan\'s most renowned swordsmen, the \"Sword Saint\" Musashi Miyamoto—his rise from a swordsman with no desire other than to become \"Invincible Under the Heavens\" to an enlightened warrior who slowly learns of the importance of close friends, self-reflection, and life itself.', 6, 6),
('One piece', 'Jul 22, 1997', 5, 9.22, 'Gol D. Roger, a man referred to as the King of the Pirates, is set to be executed by the World Government. But just before his demise, he confirms the existence of a great treasure, One Piece, located somewhere within the vast ocean known as the Grand Line. Announcing that One Piece can be claimed by anyone worthy enough to reach it, the King of the Pirates is executed and the Great Age of Pirates begins.\r\n\r\nTwenty-two years later, a young man by the name of Monkey D. Luffy is ready to embark on his own adventure, searching for One Piece and striving to become the new King of the Pirates. Armed with just a straw hat, a small boat, and an elastic body, he sets out on a fantastic journey to gather his own crew and a worthy ship that will take them across the Grand Line to claim the greatest status on the high seas.', 7, 5),
('Monster', 'Dec 5, 1994', 6, 9.16, 'Kenzou Tenma, a renowned Japanese neurosurgeon working in post-war Germany, faces a difficult choice: to operate on Johan Liebert, an orphan boy on the verge of death, or on the mayor of Düsseldorf. In the end, Tenma decides to gamble his reputation by saving Johan, effectively leaving the mayor for dead.\r\n\r\nAs a consequence of his actions, hospital director Heinemann strips Tenma of his position, and Heinemann\'s daughter Eva breaks off their engagement. Disgraced and shunned by his colleagues, Tenma loses all hope of a successful career—that is, until the mysterious killing of Heinemann gives him another chance.\r\n\r\nNine years later, Tenma is the head of the surgical department and close to becoming the director himself. Although all seems well for him at first, he soon becomes entangled in a chain of gruesome murders that have taken place throughout Germany. The culprit is a monster—the same one that Tenma saved on that fateful day nine years ago', 11, 6);

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `Id` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`Id`, `Nom`, `Description`) VALUES
(1, 'personnage test', 'ceci est un test'),
(2, 'Guts', 'Guts is the protagonist of the story. He is a tall, muscular man with a huge sword called the Dragon Slayer, a prosthetic left forearm that has a magnetic grip which also conceals a cannon. Guts is a tragic hero; he is born as one who may be able to struggle against Causality, but seemingly unable to affect it on a large scale.'),
(3, 'Johnny Joestar', 'Johnny Joestar, also known as \"Joe Kid\" or \"JoJo\", was a racing prodigy. However, when waiting in line for a play, the girl he was with convinced him to cut to the front of the line and bribe the bouncers to throw out the youth in the front of the line, who had been waiting through the night. The youth shot Johnny, resulting in his being paralyzed from the waist down and sent to a hospital, where he was physically abused. Having lost all the friends and respect he had earned as a jockey, no one visited him during his stay in the hospital.'),
(6, 'Musashi Miyamoto', 'Miyamoto Musashi (1584 – 1645) or Shinmen Takezo (his birth name) at a very young age embarked on a journey to become the strongest samurai only after being exiled from his own village. Musashi is the son of a samurai family, whose father was one of the most renowned samurai across the nation. One of the foremost reasons that drives Musashi to excel in sword-fighting is his desire to overcome his father due to the harsh treatment Musashi received during his childhood because of his incapability of rebelling.'),
(7, 'Luffy Monkey D.', 'Luffy is the captain of the Straw Hat Pirates and is best friends with all of them and values them over all else. At first glance, Luffy does not appear to be very intelligent, often seeing things in a childish manner and can easily be amazed by the simplest things. However, because he views the world in a straightforward and simple manner, he is occasionally the only person who can see past the events and see what should be done.'),
(11, 'Johan Liebert', 'Johan Liebert is the namesake \"monster\" of the story and the mystery of his past is the focus of the plot. He has been called a monster, the next Adolf Hitler and even the devil himself. Johan Liebert was shot in the head at a young age but saved from death by Dr. Tenma. Because of this, he is very grateful to Dr. Tenma. He has spent portions of his life in different places under different aliases and possesses an extraordinary level of charisma and intelligence. He uses his gifts to cruelly manipulate and corrupt others, often with no apparent end other than to cause suffering and destruction. His original goal, as he stated when he was young, is to be the last one standing at the end of the world, although towards the end he decides upon a different fate. One of the themes of Monster is how individuals are capable of transforming into monsters; Johan often acts as both a direct and indirect catalyst for this transformation. Johan also shows strong attachment to his twin sister, Nina Fortner/Anna Liebert and refuses to leave her behind.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Auteur_Id` (`Auteur_Id`),
  ADD KEY `Personnage_Id` (`Personnage_Id`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `manga`
--
ALTER TABLE `manga`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `manga`
--
ALTER TABLE `manga`
  ADD CONSTRAINT `manga_ibfk_1` FOREIGN KEY (`Auteur_Id`) REFERENCES `auteur` (`Id`),
  ADD CONSTRAINT `manga_ibfk_2` FOREIGN KEY (`Personnage_Id`) REFERENCES `personnage` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
