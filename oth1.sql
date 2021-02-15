-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2021 at 08:11 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oth1`
--

-- --------------------------------------------------------

--
-- Table structure for table `hints`
--

CREATE TABLE `hints` (
  `id` int(11) NOT NULL,
  `hint` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `qno` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`qno`, `image`) VALUES
(1, 'localhost/oth1-1819-back/images/1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `questiongiver`
--

CREATE TABLE `questiongiver` (
  `qno` int(11) NOT NULL,
  `info` varchar(500) NOT NULL,
  `trust` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questiongiver`
--

INSERT INTO `questiongiver` (`qno`, `info`, `trust`) VALUES
(1, 'question 1', 1),
(2, 'question 2', 0),
(3, 'ogaboga', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `type` int(10) NOT NULL DEFAULT 0,
  `ques` varchar(5000) NOT NULL,
  `ans` varchar(100) NOT NULL,
  `next` int(10) NOT NULL,
  `qno` int(11) NOT NULL,
  `checkno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `type`, `ques`, `ans`, `next`, `qno`, `checkno`) VALUES
(1, 2, 'Welcome, brave warrior. We have been expecting you.\r\n<br>\r\n“You look in the mirror\r\n<br>\r\nAnd you don\'t like what you see\r\n<br>\r\nThe demons in your head won\'t let you sleep” \r\n', 'ok', 2, 0, 0),
(2, 5, 'localhost/oth1-1819-back/images/1.jpg', 'ok', 3, 0, 0),
(3, 2, '“How i wish to be the one to rule and mould everything the way i want. Such power, it is all that I crave for.” <br> “The insatiable desire for power and its corrupting influence have been dominant over all the warriors and obviously this one isn’t strong enough to be victorious .” <br> “AHAHAHA! So this little twig is here in hopes of marching all the way to defeat the devil you say?” <br> Watching this helpless soul trying to win with all /they have/ will be a feast for the eyes to devour. <br> “It will only be fitting to support the winning hand. Waiting to see where our benefit lies will be wise.” <br> “I say, why do we bother at all? As long as our work is getting done without us moving a muscle.” <br>        “The sheer chaos!! Must ensure absolute annihilation and be done with it!!!  ” <br> “Calm down everyone. We have a long way ahead……...And here comes our companion”', 'ok', 4, 0, 0),
(4, 2, 'We finally meet. I know everything about you, even the things you don’t. I’ll be guiding you along this challenging path that you have chosen to follow. ', 'ok', 5, 0, 0),
(5, 5, 'localhost/oth1-1819-back/images/4.png', 'ok', 6, 0, 0),
(6, 2, 'A long time ago, a great curse prevailed over the land. The epitome of evil, it parched the land, deprived it of every drop of water, dried the leaves till they were bone dry. The trees stood like needles, bare and devoid of all greens. Life was snuffed out, from every place where the curse raised its evil head. The beast was the container of this evil. Empires crumbled before it. Standing cities were reduced to ashes. The beast was defeated by having his seven guardsmen separated from him, and finally imprisoned him after the Battle of the Valley of Death. But now, he plans to escape, and unleash chaos upon this world again. You must help me defeat him, for if the beast prevails, all will be lost in his reign.', 'ok', 7, 0, 0),
(7, 5, 'localhost/oth1-1819-back/images/5.jpg', 'ok', 8, 0, 0),
(8, 2, 'Only someone extraordinary can defeat the mighty fearsome beast. You will be facing a trial round consisting of five levels specially made to test your caliber. If you fail to cross any level, you shall start anew. Complete the 5 challenges and prove your worth. I assure you that I wont spare even a single second in taking you on a journey. Beware, it can either make or mar your life. \r\n<br>\r\nYou will be granted with some coinage on each level. Accept this reward for it will help you along the way to pay for your blunders.\r\n', 'ok', 9, 0, 0),
(9, 5, 'localhost/oth1-1819-back/images/4.jpg', 'ok', 10, 0, 0),
(10, 2, 'The quest begins now. Conquer the challenges put forth and defeat the beast to save us all! ', 'ok', 11, 0, 0),
(11, 5, 'localhost/oth1-1819-back/images/6.png', 'ok', 13, 0, 0),
(12, 0, '------------', '', 0, 0, 0),
(13, 0, 'This is APT - 1 text!', 'ans', 14, 1, 0),
(14, 0, 'This is APT - 2 text!', 'ans', 15, 2, 0),
(15, 0, 'This is APT - 3 text!', 'ans', 16, 3, 0),
(16, 0, 'This is APT - 4 text!', 'ans', 17, 4, 0),
(17, 0, 'This is APT - 5 text!', 'ans', 19, 5, 0),
(18, 0, '-----------', '', 0, 0, 0),
(19, 2, ' Is that gratification i sense in you? You haven’t achieved anything great yet. This was just the beginning. In front of you lies an ocean of challenges. It has its own pirates and treasures.  <br> The choice is yours.', 'ok', 250, 0, 0),
(20, 5, 'localhost/oth1-1819-back/images/7.1.png', 'ok', 21, 0, 0),
(21, 2, 'My journey ends here. Remember the pirates I was talking about? They are none other than the Beast’s guardsmen waiting for his arrival. They all are veterans. You will have to confront them but you are not strong enough to defeat them. Identify yourself as the Beast’s friend. They are bound to welcome his friends, so they will cause you no harm. But in order to pass each guardsman, you will have to answer two questions posed by them. If you get the first one correct, they will make the second one easier. You will be forced to retreat if you get the second question wrong. But if you get the first one wrong, bribe them to get your answer. Corrupt them with all the coinage you got, and you will find your way through.   <br> But remember, if they get the slightest hint of why you really are here, youll end up dead. So be sharp my friend. Godspeed. ', 'ok', 22, 0, 0),
(22, 5, 'localhost/oth1-1819-back/images/4.jpg', 'ok', 24, 0, 0),
(23, 0, '----------', 'ok', 0, 0, 0),
(24, 0, 'question 6', 'ans', 25, 0, 0),
(25, 0, 'This is branch-comps - para2 text!', 'ok', 26, 0, 0),
(26, 0, 'question 7', 'ans', 27, 0, 0),
(27, 0, 'This is branch-comps - para3 text!', 'ok', 28, 0, 0),
(28, 0, 'question 8', 'ans', 29, 0, 0),
(29, 0, 'This is branch-comps - para4 text!', 'ok', 30, 0, 0),
(30, 0, 'question 9', 'ans', 31, 0, 0),
(31, 0, 'This is branch-comps - para5 text!', 'ok', 32, 0, 0),
(32, 0, 'question 10', 'ans', 33, 0, 0),
(33, 0, 'This is branch-comps - para6 text!', 'ok', 34, 0, 0),
(34, 0, 'question 11', 'ans', 35, 0, 0),
(35, 2, 'Your actions have wounded me and made me weak. I can\'t go on anymore. Only you can defeat the Evil now. <br> We don\'t have time. I must sacrifice myself to pass on the remnant of powers to you', 'ok', 36, 0, 0),
(36, 5, 'localhost/oth1-1819-back/images/13.png', 'ok', 37, 0, 0),
(37, 2, 'The weight lies on you to defeat the Evil! ', 'ok', 38, 0, 0),
(38, 0, 'question 12', 'ok', 40, 0, 0),
(39, 0, '', 'A', 0, 0, 0),
(40, 5, 'localhost/oth1-1819-back/images/14.jpg', 'A', 41, 0, 0),
(41, 0, ') Finally, the moment I was waiting for, altast i am free! HAHAHA. Look at you! This confusion on your visage. You haven’t the faintest idea of whats going on or what you just did, do you?\r\nAhhhh, allow me to make it simple for you, you imbecile.  I corrupted that mindless guide and made him my little puppet. I suspected that that wouldn’t work. But you my friend, you are the undefeated champion amongst all these clowns! You were fooled by your own self! You were the one who broke me free! And you are going to watch the world burn. This is your doing. But first, let me tell you how. This is the least I can do to return the favour. You and that foolish guide and all those 7 who you thought were your friends, were inside the mind of that arrogant guard. AHAHA He thought he could imprison this legend inside a metal box and save the world. Little did he know!<br> \r\nThose 7 you met were my devotees. The seven deadly sins;\r\npride, envy, lust, gluttony, sloth, greed and wrath. And everytime you answered a question thinking you were closing in to kill the beast, you were right. But you missed a pertinent detail, he was the guardian of the prison confining me.And your every correct answer freed one of the sins and finally, ME! A LIVING APOCALYPSE! The destruction you just saw is the beginning of how I will make this hell of a place, my own empire! I will obliterate everything that will stand in my way, STARTING WITH YOU!\r\n', 'A', 42, 0, 0),
(42, 0, ' How unfortunate, for our paths have crossed yet again. Now you shall listen to me closely. You are the lone reason for its revival, but you are no match for the Evil.', 'A', 43, 0, 0),
(43, 5, 'localhost/oth1-1819-back/images/15.png', 'A', 44, 0, 0),
(44, 0, '“My sole purpose is to guard the prison with all I have.” hahaha. I now recall everything that it does, the sheer power it holds. Crafty little solitaire. It has dawned upon you, overseeing every breath you take, every word you say. And it will remain for as long as the evil is free', 'A', 45, 0, 0),
(45, 5, 'localhost/oth1-1819-back/images/16-a-1.png', 'A', 46, 0, 0),
(46, 0, 'Stifle, for that’s the only way to be victorious', 'A', 47, 0, 0),
(47, 0, 'Confused but trusting his words, you proceed to grip your neck like the beast said. You find something chained around your neck. A gem resting elegantly on a pendant.', 'A', 48, 0, 0),
(48, 5, 'localhost/oth1-1819-back/images/16-a.png', 'A', 49, 0, 0),
(49, 0, 'You frantically hold it out towards the Evil hoping for it to work its magic.', 'A', 50, 0, 0),
(50, 5, 'localhost/oth1-1819-back/images/16-a-2.png', 'A', 51, 0, 0),
(51, 0, '“Your sole purpose is to guard the prison with all you have.” <br> “What have I done.” <br> “Your sole is to guard the prison with all you have.” <br> “This is all because of me.” <br> “Your sole purpose is to guard the prison with all you have.” <br> “M-my only purpose is to guard the prison with all I have.” <br> Evil: “This cant be happening again! NOOOO!” <br> “My only purpose is to guard the prison with all I have.”\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'A', 52, 0, 0),
(52, 0, 'Evil: “YOU ARE NOT AWARE OF THE POWER I POSSESS!!!!” <br> You see a prison in front of you. You try to recall everything that happened but fail to do so. <br> Evil: LET ME OUT OF HERE!\r\n\r\n\r\n', 'A', 53, 0, 0),
(53, 0, 'As you go near the cage, you see a peculiar necklace lying next to him shining so bright its almost blinding.You fail to recall absolutely anything. In the midst of this utter confusion, your conscience speaks to you. <br> ”My sole purpose is to guard the prison with all I have.”\r\n\r\n', 'A', 54, 0, 0),
(54, 0, 'MUAHAHAHAHAHAHAHA. After years of being held hostage, after years of feeling weak and after years of planning, praying and hoping for this very moment MUAHAHAHAHA, I feel ALIVE! It\'s so sad that you came this far from where you were, this close to where the treasure lies and yet you lost. One wrong answer and you helped me gain all of my strength back! Now, it\'s time for you to go away. YOU need to go away for your purpose was only to free me. *Kills*. *black screen* *game over* \r\n\r\n', 'A', 55, 0, 0),
(55, 5, 'localhost/oth1-1819-back/images/16-b.png', 'A', 0, 0, 0),
(56, 5, 'localhost/oth1-1819-back/images/4.jpg', '', 57, 0, 0),
(57, 0, 'This is branch-extc - para1 text!', 'ok', 58, 0, 0),
(58, 0, 'This is branch-extc - 1 text!', 'ok', 59, 0, 0),
(59, 0, 'This is branch-extc - para2 text!', 'ok', 60, 0, 0),
(60, 0, 'This is branch-extc - 2 text!', 'ok', 61, 0, 0),
(61, 0, 'This is branch-extc - para3 text!', 'ok', 62, 0, 0),
(62, 0, 'This is branch-extc - 3 text!', 'ok', 63, 0, 0),
(63, 0, 'This is branch-extc - para4 text!', 'ok', 64, 0, 0),
(64, 0, 'This is branch-extc - 4 text!', 'ok', 65, 0, 0),
(65, 0, 'This is branch-extc - para5 text!', 'ok', 66, 0, 0),
(66, 0, 'This is branch-extc - 5 text!', 'ok', 67, 0, 0),
(67, 0, 'This is branch-extc - para6 text!', 'ok', 68, 0, 0),
(68, 0, 'This is branch-extc - 6 text!', 'ok', 69, 0, 0),
(69, 2, 'Your actions have wounded me and made me weak. I can\'t go on anymore. Only you can defeat the Evil now. <br> We don\'t have time. I must sacrifice myself to pass on the remnant of powers to you', 'ok', 70, 0, 0),
(70, 5, 'localhost/oth1-1819-back/images/13.png', 'ok', 71, 0, 0),
(71, 2, 'The weight lies on you to defeat the Evil! ', 'ok', 72, 0, 0),
(72, 0, 'This is branch-extc - 7 text!', 'ok', 40, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `split`
--

CREATE TABLE `split` (
  `id` int(11) NOT NULL,
  `split_id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `next_quest` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `split`
--

INSERT INTO `split` (`id`, `split_id`, `text`, `next_quest`, `image`) VALUES
(1, 8, 'Command Programming (CMPN)', 9, 'https://ieeevesit.org/oth17/virus.svg'),
(2, 8, 'Electronics and Telecommunications (EXTC)', 13, 'https://ieeevesit.org/oth17/wifi.svg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `cur_ques` int(11) NOT NULL DEFAULT 0,
  `class` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `completed` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL DEFAULT 'blank',
  `path_choosen` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `visited_satan` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `user_id`, `nickname`, `cur_ques`, `class`, `mobile`, `points`, `completed`, `name`, `path_choosen`, `timestamp`, `visited_satan`) VALUES
('2018.abhijit.thikekar@ves.ac.in', 'google-oauth2|105433689313729912881', '2018.abhijit.thikekar', 14, 'D12A', 8899889900, 44, 1, 'ABHIJIT THIKEKAR', 0, '2021-02-15 18:17:56', 0),
('2018.aditya.mohan@ves.ac.in', 'google-oauth2|106728491902866631234', '2018.aditya.mohan', 0, 'D13', 999999999999999, 0, 1, 'Aditya Mohan', 0, '2021-02-11 18:29:39', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hints`
--
ALTER TABLE `hints`
  ADD KEY `foreign_hint` (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD KEY `foreign_key` (`qno`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `split`
--
ALTER TABLE `split`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `split`
--
ALTER TABLE `split`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hints`
--
ALTER TABLE `hints`
  ADD CONSTRAINT `foreign_hint` FOREIGN KEY (`id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `foreign_key` FOREIGN KEY (`qno`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
