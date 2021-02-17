-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2021 at 11:00 AM
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
  `hint` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hints`
--

INSERT INTO `hints` (`id`, `hint`) VALUES
(25, 'The computer is a type of a character generator'),
(27, 'A mathematical curve'),
(29, 'I loved Cleopatra'),
(31, 'solve it using recursion method'),
(33, 'Organizing data'),
(35, 'seq access of data in tape has some limitations so order must be defined in such a way that MRT can be obtained'),
(37, 'fingertips is the standard 101/102-key PC keyboard. Use permutations and combinational logic and enqueue '),
(58, 'I can feel the change in entropy and I am exploited for it. My friends all think they are better than I am and they are not wrong. '),
(60, 'I like playing with the output motion. They go higher and higher like on a rollercoaster'),
(62, ' I am the changer of destiny. The energies come to me in one form and leave in another.'),
(64, ' I am an energy expander. I work in bearing identifying practices and test apparatus.'),
(66, 'A type of bridge circuit'),
(68, 'Too expensive but gets the job done with ease.'),
(70, 'It is a hardware description language.');

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
  `info` varchar(1000) NOT NULL,
  `trust` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questiongiver`
--

INSERT INTO `questiongiver` (`qno`, `info`, `trust`) VALUES
(6, 'Hello, My great powerful self is here to give you your hint for the question! ', 1),
(7, 'Did I hear that you trusted Pride’s hint? If that is the case then you better trust mine as well.\r\n', 1),
(8, 'I am here to give your next hint. I am happy and content with my life and do not wish anything in return', 0),
(9, 'I am steaming with fury as stand here waiting to give you your next hint', 1),
(10, 'DUMMY hint', 0),
(11, ' I have your hint ready with me, but i hope I get something in return for I do not do anything that does not advantage me, I love power I love money, and above all I am hungry for them both.\r\n', 1),
(12, 'dummy hint q 12', 0),
(13, 'How unfortunate, for our paths have crossed yet again. Now you shall listen to me closely. You are the lone reason for its revival, but you are no match for the Evil. <br>\r\n“My sole purpose is to guard the prison with all I have.” hahaha. I now recall everything that it does, the sheer power it holds. Crafty little solitaire. It has dawned upon you, overseeing every breath you take, every word you say. And it will remain for as long as the evil is free. Stifle, for that’s the only way to be victorious.\r\n', 1);

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
(1, 2, '“You look in the mirror\r\n<br>\r\nAnd you do not like what you see\r\n<br>\r\nThe demons in your head wont let you sleep” \r\n', 'ok', 2, 0, 0),
(2, 5, 'localhost/oth1-1819-back/images/1.jpg', 'ok', 3, 0, 0),
(3, 2, '“How i wish to be the one to rule and mould everything the way i want. Such power, it is all that I crave for.” <br> “The insatiable desire for power and its corrupting influence have been dominant over all the warriors and obviously this one isn’t strong enough to be victorious .” <br> “AHAHAHA! So this little twig is here in hopes of marching all the way to defeat the devil you say?” <br> Watching this helpless soul trying to win with all /they have/ will be a feast for the eyes to devour. <br> “It will only be fitting to support the winning hand. Waiting to see where our benefit lies will be wise.” <br> “I say, why do we bother at all? As long as our work is getting done without us moving a muscle.” <br>        “The sheer chaos!! Must ensure absolute annihilation and be done with it!!!  ” <br> “Calm down everyone. We have a long way ahead……...And here comes our companion”', 'ok', 4, 0, 0),
(4, 5, 'localhost/oth1-1819-back/images/4.png', 'ok', 5, 0, 0),
(5, 2, 'We finally meet. I know everything about you, even the things you don’t. I’ll be guiding you along this challenging path that you have chosen to follow.<br> A long time ago, a great curse prevailed over the land. There was annihilation everywhere where the curse raised its evil head. The beast was the container of this evil. Empires crumbled before it. Standing cities were reduced to ashes. The beast was defeated by having his seven guardsmen separated from him, and finally imprisoned him after the Battle of the Valley of Death. But now, he plans to escape, and unleash chaos upon this world again. You must help me defeat him, for if the beast prevails, all will be lost in his reign. ', 'ok', 6, 0, 0),
(6, 5, 'localhost/oth1-1819-back/images/5.jpg', 'ok', 7, 0, 0),
(7, 2, 'Only someone extraordinary can defeat the mighty fearsome beast. You will be facing a trial round consisting of five levels specially made to test your caliber. If you fail to cross any level, you shall start anew. Complete the 5 challenges and prove your worth.The journey I’m taking you on, will either make or mar your life. <br>\r\nYou will be granted with some potion on each level. Accept this reward for it will help you along the way to pay for your blunders. \r\n', 'ok', 8, 0, 0),
(8, 5, 'localhost/oth1-1819-back/images/4.jpg', 'ok', 9, 0, 0),
(9, 2, 'The quest begins now. Conquer the challenges put forth and defeat the beast to save us all! ', 'ok', 10, 0, 0),
(10, 5, 'localhost/oth1-1819-back/images/6.png', 'ok', 12, 0, 0),
(11, 2, '----------', 'ok', 0, 0, 0),
(12, 0, ' Mondays are longer than Sundays. Sundays are shorter than Wednesdays. Fridays are\r\nshorter than Saturdays, which are in turn shorter than Mondays. Thursdays are shorter than\r\nSaturdays. Tuesdays are longer than Saturdays. Fridays and Thursdays are both longer\r\nthan Wednesdays.If Mondays are interchanged with Sundays, Tuesdays are interchanged with Saturdays and Wednesdays are interchanged with Fridays,which of the options is TRUE? <br>\r\nA.Mondays are the shortest days of the week. <br>\r\nB.Tuesdays could be as long as Fridays. <br>\r\nC.Sundays are the longest days of the week. <br>\r\nD.Sundays are as long as Thursdays.\r\n', 'a', 13, 1, 0),
(13, 0, 'In a book exchange 3 students Raju, Shyam and Amir, bring one book each. When they meet, they swap their books in such a way that no one gets back what they had brought with them. The books are Book A, Book B and Book C. <br>\r\nShyam says: I gave my book to the one who gave away Book A.\r\nRaju says:I received my book from the one who gave book to the one who gave away Book A. <br>\r\nAmir says: I got the book I always wanted! <br>\r\nRaju says: But Amir, you had to give away your Book C. <br>\r\nHere are some statements:\r\n1.  Amir gets Book A <br>\r\n2. Shyam gets Book B <br>\r\n3. Shyam gets Book C <br>\r\n4. Raju gets Book B\r\nChoose the correct option: <br>\r\n<br>\r\nA. Statements 1 and 2 are correct. <br>\r\nB. Statements 1,3 and 4 are correct. <br>\r\nC. Only statement 1 is correct.<br>\r\nD. Only statement 3 is correct.\r\n', 'b', 14, 2, 0),
(14, 0, 'Jeremy, manager of a football team was found dead in the warehouse outside the stadium. The detectives called in the suspects that were present that day with him and started the investigation. Name of the culprits and their jersey number: A (61), B (32), C (79), D (48) were called. The detectives later got an anonymous note which said: “I cannot be at the centre of this, but i wanted the culprits to be caught.” The back of the note had this written on it: <br>\r\n\r\n  1)  [(23646.5 * 4) + (181305 * 5)]2  <br>\r\n\r\n  2)  x2 + 2*x*(x-1) + (x-1)2 = 25 <br>\r\n       y= 8-x<br>\r\n       [20 + y(y+1) + (y+4)]8<br>\r\n\r\nThe detectives detained the culprits. But who?<br>\r\n<br>\r\nOPTIONS:<br>\r\na) C , D<br>\r\nb) C , A<br>\r\nc) A , D<br>\r\nd) B , D', 'c', 15, 3, 0),
(15, 0, ' A team of rogue scientists working on illegal weapons are on the run. The police have discovered that they leave behind a clue for the people who wanna join them. Four clues were discovered at different locations, three of which were 9 4 8 2 3 1 5 9, 6 1 5 7 11 4 12 13 7 and 16 7 36 16 which meant DOCKYARD, WAREHOUSE and TENT respectively.The last clue found at the campsite was 16 5 1 25 36 - [1110011]2 Police are sure that if they find where the last clue indicated, they can ambush the rogues. <br>\r\nHelp them by using the clue!<br>\r\n<br>\r\n\r\nOPTIONS:<br>\r\na)TRUCK-132<br>\r\nb) TRIBE-214<br>\r\nc) TRAIN-115<br>\r\nd) TRONE-145', 'd', 16, 4, 0),
(16, 0, 'Orange was found dead at the electrical and Red reported the scene. The suspects were Red, White and Black. The team found “ca-” written on the wall near the body. Red claimed he was at the medical, Black claimed he was at the control room and white claimed he was at the oxygen. Red said he went to comms before coming to the electrical which was confirmed by others and didn’t see White and Black at their respective places. If the scene was reported immediately, who was the culprit if the rooms are linked as such:<br>\r\nStorage-Electrical-Reactor-Medical-Cafe-Oxygen-Control<br> Room-Comms-Storage<br>\r\n<br>\r\nOPTIONS:<br>\r\na) Black<br>\r\nb) White<br>\r\nc) Red<br>\r\nd) Pink', 'e', 17, 5, 0),
(17, 5, 'localhost/oth1-1819-back/images/6.png', 'ok', 18, 0, 0),
(18, 2, ' Is that gratification i sense in you? You haven’t achieved anything great yet. This was just the beginning. In front of you lies an ocean of challenges. It has its own pirates and treasures. \r\n<br>\r\nThe choice is yours. <br> \r\n\r\nMy journey ends here. Remember the pirates I was talking about? They are none other than the Beast’s guardsmen waiting for his arrival. Being separated from each other, they have lost their strength to free the beast. Disguise yourself as their friend and misguide them. Make them believe that you are here to rescue the beast. Each of them will help you to find the chant word. It lies above their ability to use the chant words, so make sure to make them believe that you are their only hope. <br>', 'ok', 19, 0, 0),
(19, 5, 'localhost/oth1-1819-back/images/7.1.png', 'ok', 20, 0, 0),
(20, 2, 'In order to find a chant word, you will have to cross two hurdles. If you manage to successfully overcome the first one, the second one will be a breeze. You will be forced to retreat if you fail to overcome the second one. In case you find it difficult to conquer the first one, use the potion. But use it wisely, for that\'s your only answer when you run out of ways throughout this journey.\r\n<br>\r\nRemember, if they get the slightest hint of why you really are here, you\'ll end up dead. So be sharp my friend. Godspeed. <br>\r\n', 'ok', 21, 0, 0),
(21, 5, 'localhost/oth1-1819-back/images/4.jpg', 'ok', 24, 0, 0),
(22, 2, '---------', 'ok', 0, 0, 0),
(23, 2, '----------', 'ok', 0, 0, 0),
(24, 2, 'Ohhh, so you are that brave warrior everyone’s talking about huh! You think you’ll be able to find the chant word and use it when I, out of all, could not? I have tried everything that was in my hands….EVERYTHING. I wonder what difference you will be able to make. Let’s see if you can find the word and make it out of here, alive.\r\n', 'ok', 25, 0, 0),
(25, 0, 'Rahul finds a mysterious computer that generates a random character. The computer makes this character by generating 5 random pairs of numbers and an operation for each of those. <br>\r\nRahul wants to take control of this computer and use it in his own project. So, he tries to hack into the computer. After a lot of tries he gets the following \r\nmessage on the screen :<br>\r\nHacker Detected !<br>\r\nSelf-Destruct: Activated<br>\r\nEnter the character formed to escape self-destruct sequence -<br>\r\n(i)    30 * 15<br>\r\n(ii)   31 XOR  7<br>\r\n(iii)  24/2<br>\r\n(iv)   20-14<br>\r\n(v)    4 +26\r\n', 's', 26, 6, 0),
(26, 2, 'Hmm, so somehow, the ability to save the beast has been taken away from me, and handed over to you? I have been stuck in this hell hole waiting for you to come and rescue. What makes you so special?', 'ok', 27, 0, 0),
(27, 0, 'I am a representation of an equation solved a million times over. My past is responsible for my future. I look like a bug but<br>\r\n	I am inorganic. Weather patterns, stock market price variations and galaxy clusters have all proven to be like me in nature.<br>\r\n	Here is a poem about me to help you out :<br>\r\n<br>\r\n		I was born in New York<br>\r\n  	  	I am never ending<br>\r\n   	 	I am full of myself<br>\r\n    		Call me narcissistic<br>\r\n    		But my uses are artistic<br>\r\n    		What am I ?', 'fractal', 28, 7, 0),
(28, 2, ' I want my powers back. I WANT THEM BACK! But turns out, no one but you can pull us out of this mess. You have no idea how much it stirs me up. Do what you are here to do so that i can go back to becoming the paragon and bring back the beast. Hurry.', 'ok', 29, 0, 0),
(29, 0, 'A boy was in a room escape game set in the medieval period . When he reached the last room he found out that he had to enter a password into a terminal to open the final door.<br>\r\n	After searching he found a book with the word Vignere written on its cover. He opened the book. Inside it the following was written: Decode this and you may move ahead.My answer will lead you to the next cipher. The encrypted text is: NSDLKSXJEJKWZL and the key is what you need to get out of this room.<br>\r\n	After a while he found an old-looking note lying on the floor that said :<br>\r\n	Only the worthy shalt passeth this cubiculo<br>\r\n	solveth this cipher of the greatest ruler and thee may passeth - <br>\r\n	Encrypted text : Append a question mark to the end of the answer of the previous cipher to obtain the encrypted text <br>\r\n', 'you as well brutus?', 30, 8, 0),
(30, 2, 'WHY IS IT SUPPOSED TO BE LIKE THIS. YOU KNOW WHAT RESPONSIBILITY LIES ON YOUR SHOULDERS? FIND THE WORD, AND GET ME OUT OF HERE. YOU BETTER BE ABLE TO DO IT QUICKLY OR THIS WILL BE THE END OF YOU.\r\n', 'ok', 31, 0, 0),
(31, 0, 'South Africa has a coal mine of 4*4 matrix .It consists of  very large positive values that results in a huge amount of coal consumption .In order to extract coal ,a person needs to move 1 step towards right hand side (right_up , right_down ,right ).What is the utmost amount of coal a person can extract ? <br>     \r\nGiven : {  { 91234 ,23456, 14561, 48435 },<br>\r\n                 { 20002 , 29993 , 42398 , 14902 },<br>\r\n                 { 58923 , 88450 , 65782 , 32678 } <br>\r\n                 { 78654 , 62345 , 13456 , 34562 }   }\r\n', '267448', 32, 9, 0),
(32, 2, 'Ah, Now that you are here, hear me out!! The most of what I eat or drink goes to create a desire for more and MORE! But this place is not fulfilling my cravings, feels like hell to me...i need to get out of here in any condition!!!! HELP ME!!!\r\n', 'ok', 33, 0, 0),
(33, 0, 'I am a process that breaks down the huge complex tables into a smaller ones that takes place within itself .I am designed to protect your data and make it more comfortable by eliminating 2 factors . Guess who I am ?? ', 'normalization', 34, 10, 0),
(34, 2, 'OH WELCOME! I can picture myself winning already!! And, of course, getting all of my powers back,too. What are you doing here now?!!! I WANT ALL THE POWERS, Go rescue me so that I can get them back, GO!', 'ok', 35, 0, 0),
(35, 0, 'Aditya sent his little brother Ameya a brand new audio cassette recorder from New York. Ameya was given few cassette tape [ ] and records [ ] of many different volumes as a surprise gift on his birthday. But as soon as he tries to play song 4th song from tape ,it was unable to play the song directly. So in order to help Ameya ,you have to add volumes on tapes for reducing retrieval time .what is minimal retrieval time (MRT) so that data gets restored in it is entirely ?? <br>\r\nInput <br>                           \r\nTapes [ ]  = { 60 , 30 , 180 } <br>\r\nRecords [ ] = { 30 , 5 , 10 , 27 , 35 , 52 , 69 , 120 }  \r\n<br>\r\n(Enter floor value of the answer)\r\n', '20', 36, 11, 0),
(36, 2, 'Oh you are finally here. I have been waiting for you. Good i did not make any efforts, you’ll figure it out for me anyway. All you need to do is find the chant word and use it to set me free and together we’ll save the beast. But I think you already know that haha. Get to work quickly!', 'ok', 37, 0, 0),
(37, 0, 'An entrepreneur, Mike, wants to establish a newly built restaurant in the name \"FRUITILICIOUS\". In how many variations can Mike, arrange letters of the word FRUITILICIOUS where \"C\" must always come before \"F\" and \"F\" must always come before \"T\"?<br>\r\n<br>\r\nMike changes the digits of the obtained value to their corresponding symbols found on his fingertips <br>\r\n<br>\r\nMike later arranges the symbols of the obtained value in a structure in such a way that the customers waiting outside for the restaurant to open, in a systematic manner. What is the 3rd element(symbol) that is entered into the structure when inserted from right to left?\r\n', '^', 38, 12, 0),
(38, 2, 'Your actions have wounded me and made me weak. I cannot go on anymore. Only you can defeat the Evil now. <br> We do not have time. I must sacrifice myself to pass on the remnant of powers to you. The weight lies on you to defeat the Evil!', 'ok', 39, 0, 0),
(39, 5, 'localhost/oth1-1819-back/images/13.png', 'ok', 42, 0, 0),
(40, 2, ' ', 'ok', 38, 0, 0),
(41, 2, '', 'ok', 0, 0, 0),
(42, 5, 'localhost/oth1-1819-back/images/14.jpg', 'ok', 43, 0, 0),
(43, 2, 'Finally, the moment I was waiting for, altast i am free! HAHAHA. Look at you! This confusion on your visage. You haven’t the faintest idea of what is going on or what you just did, do you?<br> Ahhhh, allow me to make it simple for you, you imbecile.  I corrupted that mindless guide and made him my little puppet. I suspected that that wouldn’t work. But you my friend, you are the undefeated champion amongst all these clowns! You were fooled by your own self! You were the one who broke me free! And you are going to watch the world burn. This is your doing. But first, let me tell you how. This is the least I can do to return the favour. You and that foolish guide and all those 7 who you thought were your friends, were inside the mind of that arrogant guard. AHAHA He thought he could imprison this legend inside a metal box and save the world. Little did he know!', 'ok', 44, 0, 0),
(44, 2, 'Those 7 you met were my devotees. The seven deadly sins; pride, envy, lust, gluttony, sloth, greed and wrath. And everytime you answered a question thinking you were closing in to kill the beast, you were right. But you missed a pertinent detail, he was the guardian of the prison confining me.And your every correct answer freed one of the sins and finally, ME! A LIVING APOCALYPSE! The destruction you just saw is the beginning of how I will make this hell of a place, my own empire! I will obliterate everything that will stand in my way, STARTING WITH YOU!', 'ok', 45, 0, 0),
(45, 5, 'localhost/oth1-1819-back/images/15.png', 'ok', 46, 0, 0),
(46, 0, 'QUESTION 13', 'a', 250, 13, 0),
(47, 2, 'Confused but trusting his words, you proceed to grip your neck like the beast said. You find something chained around your neck. A gem resting elegantly on a pendant. You frantically hold it out towards the Evil hoping for it to work its magic. <br> You hear a voice at the back of your mind, almost as if that necklace is talking to you.', 'ok', 44, 0, 0),
(48, 5, 'localhost/oth1-1819-back/images/16-a-1.png', 'ok', 46, 0, 0),
(49, 2, '“Your sole purpose is to guard the prison with all you have.”<br> “What have I done.”<br> “Your sole purpose is to guard the prison with all you have.”<br> “This is all because of me.”<br> “Your sole purpose is to guard the prison with all you have.”<br> “M-my only purpose is to guard the prison with all I have.”<br> Evil: “This cannot be happening again! NOOOO!”<br> “My only purpose is to guard the prison with all I have.”', 'ok', 47, 0, 0),
(50, 5, 'localhost/oth1-1819-back/images/16-a-2.png', 'ok', 51, 0, 0),
(51, 2, '“YOU ARE NOT AWARE OF THE POWER I POSSESS!!!!” <br> You see a prison in front of you. You try to recall everything that happened but fail to do so. LET ME OUT OF HERE!<br> < As you go near the cage, you see a peculiar necklace lying next to him shining so bright it is almost blinding.You fail to recall absolutely anything. In the midst of this utter confusion, your conscience speaks to you. ><br> ”My sole purpose is to guard the prison with all I have.”', 'ok', 48, 0, 0),
(52, 2, ' MUAHAHAHAHAHAHAHA. After years of being held hostage, after years of feeling weak and after years of planning, praying and hoping for this very moment MUAHAHAHAHA, I feel ALIVE! It is so sad that you came this far from where you were, this close to where the treasure lies and yet you lost. One wrong answer and you helped me gain all of my strength back! Now, it is time for you to go away. YOU need to go away for your purpose was only to free me. *Kills*. *black screen* *game over*', 'A', 49, 0, 0),
(53, 5, 'localhost/oth1-1819-back/images/16-b.png', 'A', 0, 0, 0),
(54, 5, 'localhost/oth1-1819-back/images/7.1.png', 'ok', 57, 0, 0),
(55, 2, 'In order to find a chant word, you will have to cross two hurdles. If you manage to successfully overcome the first one, the second one will be a breeze. You will be forced to retreat if you fail to overcome the second one. In case you find it difficult to conquer the first one, use the potion. But use it wisely, for that is your only answer when you run out of ways throughout this journey.\r\n<br>\r\nRemember, if they get the slightest hint of why you really are here, you will end up dead. So be sharp my friend. Godspeed. <br>\r\n', 'ok', 21, 0, 0),
(56, 5, 'localhost/oth1-1819-back/images/4.jpg', 'ok', 60, 0, 0),
(57, 2, 'Ohhh, so you are that brave warrior everyone’s talking about huh! You think you’ll be able to find the chant word and use it when I, out of all, could not? I have tried everything that was in my hands….EVERYTHING. I wonder what difference you will be able to make. Let’s see if you can find the word and make it out of here, alive.\r\n', 'ok', 25, 0, 0),
(58, 0, 'I am an itty-bitty wee lad. I am very aware of my surroundings. I have a dynamic personality. My fickle defiance is what makes me special. I am omniform. People say my personality is problematic.', 'thermistor', 58, 6, 0),
(59, 2, 'Hmm, so somehow, the ability to save the beast has been taken away from me, and handed over to you? I have been stuck in this hell hole waiting for you to come and rescue. What makes you so special?', 'ok', 27, 0, 0),
(60, 0, ' I am very fast. I keep a check on potential. My stations are synonymous and I am a fast processor. I am calm even if the warmth changes around me. I am very silent. ', 'mosfet', 60, 7, 0),
(61, 2, ' I want my powers back. I WANT THEM BACK! But turns out, no one but you can pull us out of this mess. You have no idea how much it stirs me up. Do what you are here to do so that i can go back to becoming the paragon and bring back the beast. Hurry.', 'ok', 29, 0, 0),
(62, 0, 'I am the quantifier of tautness in the one that ferries the converted chemical energy. The variation in pressure results in the conversion of opposition. When the tautness occurs on a road in my area, the pressure increases largely. When the road has lots of traffic, the road broadens and when there is less traffic, the road narrows. I am very low maintenance. I live a long, long life. Who am I?', 'strain gauge', 62, 8, 0),
(63, 2, 'WHY IS IT SUPPOSED TO BE LIKE THIS. YOU KNOW WHAT RESPONSIBILITY LIES ON YOUR SHOULDERS? FIND THE WORD, AND GET ME OUT OF HERE. YOU BETTER BE ABLE TO DO IT QUICKLY OR THIS WILL BE THE END OF YOU.\r\n', 'ok', 31, 0, 0),
(64, 0, 'I am responsible for transforming extreme values. The entire signal dances on my command. I have an organ that makes the force flow in just one direction. One of my other organs is capable of hoarding chemical energy. I am used as a safety measure in energy roller coasters.', 'clamper circuit', 64, 9, 0),
(65, 2, 'Ah, Now that you are here, hear me out!! The most of what I eat or drink goes to create a desire for more and MORE! But this place is not fulfilling my cravings, feels like hell to me...i need to get out of here in any condition!!!! HELP ME!!!\r\n', 'ok', 33, 0, 0),
(66, 0, 'I am a kind of a link or a support. I have 4 hands such that any one of my hands is connected to any other two hands. Out of these 4 hands, two are purely resistive. The 3rd hand works like a high pass filter whereas the 4th hand works like a low pass filter. Who am I? ', 'wien bridge', 66, 10, 0),
(67, 2, 'OH WELCOME! I can picture myself winning already!! And, of course, getting all of my powers back,too. What are you doing here now?!!! I WANT ALL THE POWERS, Go rescue me so that I can get them back, GO!', 'ok', 0, 0, 0),
(68, 0, 'I was launched 3 years back but still viable for doing the most heavy tasks which the latest models do not support.I am an integral part of a computer system.I run on more than 5000 central parts.Who am I?', 'rtx 8000 quadro gpu', 68, 11, 0),
(69, 2, 'Oh you are finally here. I have been waiting for you. Good i did not make any efforts, you’ll figure it out for me anyway. All you need to do is find the chant word and use it to set me free and together we’ll save the beast. But I think you already know that haha. Get to work quickly!', 'ok', 40, 0, 0),
(70, 0, 'One of my many functions is coded below. Decode it and guess who am I?<br>\r\n<br>\r\n.. -. ....... -- . --..-- ....... .- ....... -.. . ... .. --. -. ....... -.-. --- -. ... .. ... - ... ....... .- - ....... .- ....... -- <br>.. -. .. -- ..- -- ....... --- ..-. ....... .- -. ....... . -. - .. - -.-- ....... .-- .... .. -.-. .... ....... -.. . ... -.-. <br>.-. .. -... . ... ....... - .... . ....... .. -. - . .-. ..-. .- -.-. . ....... .- -. -.. ....... .- -. ....... .- .-. -.-. .... .. <br>- . -.-. - ..- .-. . ....... .-- .... .. -.-. .... ....... -.-. --- -. - .- .. -. ... ....... - .... . ....... .- -.-. - ..- .- <br>.-.. ....... .. -- .--. .-.. . -- . -. - .- - .. --- -.', 'vhdl', 40, 12, 0),
(71, 2, '----------', 'ok', 69, 0, 0);

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
('2018.abhijit.thikekar@ves.ac.in', 'google-oauth2|105433689313729912881', '2018.abhijit.thikekar', 5, 'D14A', 8797897899, 0, 1, 'ABHIJIT THIKEKAR', 0, '2021-02-17 09:55:46', 0),
('2018.aditya.mohan@ves.ac.in', 'google-oauth2|106728491902866631234', '2018.aditya.mohan', 25, 'D13', 999999999999999, 91, 1, 'Aditya Mohan', 0, '2021-02-16 20:19:05', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hints`
--
ALTER TABLE `hints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD KEY `foreign_key` (`qno`);

--
-- Indexes for table `questiongiver`
--
ALTER TABLE `questiongiver`
  ADD PRIMARY KEY (`qno`);

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
  ADD CONSTRAINT `hints_ibfk_1` FOREIGN KEY (`id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `foreign_key` FOREIGN KEY (`qno`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
