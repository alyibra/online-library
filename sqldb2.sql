-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Aug 07, 2025 at 02:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sqldb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BookID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Description` longtext NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `SoftCopyURL` varchar(255) DEFAULT NULL,
  `CreatedAt` datetime DEFAULT current_timestamp(),
  `stock` int(11) DEFAULT 0,
  `sales_count` int(11) DEFAULT 0,
  `CATALOG_NAME` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `Discount` decimal(5,2) DEFAULT 0.00,
  `DiscountedPrice` decimal(10,2) DEFAULT 0.00,
  `LastPrice` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookID`, `Title`, `Author`, `Description`, `Price`, `SoftCopyURL`, `CreatedAt`, `stock`, `sales_count`, `CATALOG_NAME`, `image`, `imageURL`, `Discount`, `DiscountedPrice`, `LastPrice`) VALUES
(2, 'Harry Potter and the Order of the Phoenix', 'J.K. Rowling', 'Hogwarts faces a tumultuous year as Ministry interference grows, Dumbledore’s credibility falters, and Lord Voldemort’s threat increases. Harry must juggle disturbing dreams, an oppressive new Defense Against the Dark Arts teacher, and the weight of prophecy that could change the wizarding world forever.', 6.50, NULL, '2024-12-15 02:18:25', 11, 0, 'Fantasy', NULL, '\\images\\harry potter.jpg', 25.00, 4.88, 6.50),
(3, 'Pride and Prejudice', 'Jane Austen', 'In Regency-era England, Elizabeth Bennet, a spirited young woman, navigates class, family expectations, and her own prejudices while sparring with the proud Mr. Darcy. Filled with witty dialogue, social commentary, and timeless romance, this literary classic reveals that first impressions can be deceiving.', 8.00, NULL, '2024-12-15 02:18:25', 28, 0, 'Fiction', NULL, '\\images\\Pride and Prejudice.jpg', 40.00, 4.80, 8.00),
(5, 'The Book Thief', 'Markus Zusak', 'Set in Nazi Germany, young Liesel Meminger finds solace in stealing books and sharing them with neighbors during bombing raids, as well as with the Jewish man hidden in her foster family’s basement. Narrated by Death itself, this poignant novel explores the power of words and their role in survival.', 6.00, NULL, '2024-12-15 02:18:25', 19, 0, 'Historical', NULL, '\\images\\The Book Thief.jpg', 0.00, 0.00, NULL),
(6, 'Twilight', 'Stephenie Meyer', 'Seventeen-year-old Bella Swan’s life changes forever when she moves to Forks, Washington, and encounters the enigmatic Edward Cullen—a vampire struggling between his immortal thirst and his growing love for her. This suspenseful and romantic saga explores forbidden love and its dangerous consequences.', 7.00, NULL, '2024-12-15 02:18:25', 56, 0, 'Fantasy', NULL, '\\images\\Twilight.jpg', 0.00, 0.00, NULL),
(7, 'Animal Farm', 'George Orwell', 'When the mistreated animals of Manor Farm overthrow their human owner, they aim to create a society of equality. However, as the pigs seize more power, a new tyranny emerges. George Orwell’s incisive allegory exposes the perils of corrupt leadership and the cyclical nature of oppression.', 5.00, NULL, '2024-12-15 02:18:25', 30, 0, 'Fiction', NULL, '\\images\\Animal Farm.jpg', 0.00, 0.00, NULL),
(8, 'The Chronicles of Narnia', 'C.S. Lewis', 'Travel to the enchanted world of Narnia, a realm populated by talking beasts, mythical creatures, and epic quests. C.S. Lewis’s celebrated series reveals timeless themes of courage, faith, and redemption, making it an enduring tale for readers of all ages.', 39.99, NULL, '2024-12-15 02:18:25', 24, 0, 'Classics', NULL, '\\images\\The Chronicles of Narnia.jpg', 0.00, 0.00, NULL),
(9, 'The Fault in Our Stars', 'John Green', 'Hazel Grace Lancaster, a sixteen-year-old cancer patient, reluctantly attends a support group where she meets Augustus Waters, an ex-basketball player and amputee. Their shared wit and love spark a journey both poignant and life-affirming, as they grapple with life, death, and what it means to truly live.', 9.99, NULL, '2024-12-15 02:18:25', 46, 0, 'Young Adult', NULL, '\\images\\The Fault in Our Stars.jpg', 0.00, 0.00, NULL),
(10, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Dorian Gray, a handsome and impressionable young man, wishes his portrait would bear the marks of age and sin rather than his own face. As he pursues a life of hedonism and moral corruption, the painting warps to reflect the darkness of his soul.', 7.00, NULL, '2024-12-15 02:18:25', 17, 0, 'Classics', NULL, NULL, 0.00, 7.00, NULL),
(11, 'The Giving Tree', 'Shel Silverstein', 'In this timeless tale, a tree gives everything it has to a boy who loves it—apples to sell, branches to build a house, and a trunk to make a boat—asking nothing in return. This tender story reflects on selflessness and the complexities of unconditional love.', 3.00, NULL, '2024-12-15 02:18:25', 49, 0, 'Children', NULL, '\\images\\The Giving Tree.jpg', 0.00, 0.00, NULL),
(12, 'Wuthering Heights', 'Emily Brontë', 'On the moors of Yorkshire stands Wuthering Heights, where foundling Heathcliff grows to love and torment Catherine Earnshaw. Their wild passion ignites jealousy and revenge, creating a tale of obsession and haunting that has captivated readers for generations.', 30.00, NULL, '2024-12-15 02:18:25', 20, 0, 'Fiction', NULL, '\\images\\Wuthering Heights.jpg', 0.00, 0.00, NULL),
(13, 'Gone with the Wind', 'Margaret Mitchell', 'Scarlett O’Hara is a headstrong Southern belle whose life of luxury collapses during the Civil War. Determined to save her family’s plantation, Tara, she clashes with polite society and the enigmatic Rhett Butler in this sweeping epic of love, survival, and transformation.', 20.00, NULL, '2024-12-15 02:18:25', 14, 0, 'Historical Fiction', NULL, '\\images\\Gone with the Wind.jpg', 0.00, 0.00, NULL),
(14, 'The Lightning Thief', 'Rick Riordan', 'Twelve-year-old Percy Jackson discovers he’s the demigod son of Poseidon and embarks on a quest to recover Zeus’s stolen lightning bolt. This fast-paced adventure brings Greek mythology to life, filled with battles, betrayals, and friendships.', 10.99, NULL, '2024-12-15 02:18:25', 45, 0, 'Fantasy', NULL, '\\images\\The Lightning Thief.jpg', 0.00, 0.00, NULL),
(15, 'The Perks of Being a Wallflower', 'Stephen Chbosky', 'Shy freshman Charlie navigates high school life, grappling with family secrets and forming bonds with Sam and Patrick, who open his world to music, love, and self-discovery. Stephen Chbosky’s novel is a raw, poignant tale of adolescence and the power of friendship.', 25.00, NULL, '2024-12-15 02:18:25', 19, 0, 'Young', NULL, '\\images\\The Perks of Being a Wallflower.jpg', 0.00, 0.00, NULL),
(16, 'Jane Eyre', 'Charlotte Brontë', 'Orphaned and mistreated, Jane Eyre becomes a governess at Thornfield Hall, where she falls in love with the enigmatic Mr. Rochester. Their romance faces trials as dark secrets emerge, testing Jane’s strength, independence, and values.', 33.00, NULL, '2024-12-15 02:18:25', 24, 0, 'Classics', NULL, '\\images\\Jane Eyre.jpg', 0.00, 0.00, NULL),
(17, 'The Little Prince', 'Antoine de Saint-Exupéry', 'In this timeless fable, a pilot stranded in the Sahara meets a prince from another planet. Their conversations explore love, responsibility, and human folly, offering profound lessons that resonate across generations.', 23.00, NULL, '2024-12-15 02:18:25', 29, 0, 'Classics', NULL, '\\images\\The Little Prince.jpg', 0.00, 0.00, NULL),
(18, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Nick Carraway becomes entangled in the life of Jay Gatsby, a wealthy yet enigmatic man yearning for his lost love, Daisy Buchanan. Set against the glamour of the Jazz Age, Fitzgerald’s novel unveils the emptiness of the American Dream.', 40.00, NULL, '2024-12-15 02:18:25', 34, 0, 'Fiction', NULL, '\\images\\The Great Gatsby.jpg', 0.00, 0.00, NULL),
(19, 'The Da Vinci Code', 'Dan Brown', 'Harvard symbologist Robert Langdon is drawn into a deadly mystery involving a secret society, religious symbols, and hidden codes in Da Vinci’s art. Partnered with cryptologist Sophie Neveu, he unravels secrets that could shake the foundation of history itself.', 20.00, NULL, '2024-12-15 02:18:25', 48, 0, 'Fiction', NULL, '\\images\\The da Vinci Code.jpg', 0.00, 0.00, NULL),
(20, 'Crime and Punishment', 'Fyodor Dostoevsky', 'Raskolnikov, a poverty-stricken ex-student, murders a pawnbroker, believing he’s above conventional morality. Wracked by guilt and paranoia, he struggles with the psychological torment of his crime. Dostoevsky’s masterpiece explores morality, conscience, and redemption.', 20.00, NULL, '2024-12-15 02:18:25', 23, 0, 'Fiction', NULL, '\\images\\Crime and Punishment.jpg', 0.00, 0.00, NULL),
(21, 'Divergent', 'Veronica Roth', 'In a dystopian Chicago, society is divided into factions. Tris Prior must navigate a world of danger and discovery, uncovering secrets that challenge her beliefs and her place in this fractured society—the beginning of an epic journey of bravery and self-discovery.', 37.00, NULL, '2024-12-15 02:18:25', 38, 0, 'Young Adult', NULL, '\\images\\Divergent.jpg', 0.00, 0.00, NULL),
(22, 'Book Lovers', 'Emily Henry', 'Nora Stephens, a literary agent who always gets her happy ending for clients, travels to Sunshine Falls for a getaway. But she keeps running into her brooding rival, Charlie Lastra. This witty romance by Emily Henry shows that real life isn’t always like the stories on the page.', 15.99, 'URL1', '2024-12-21 00:00:00', 98, 50, 'Romance', 'image1.jpg', '/images/Book Lovers.jpg', 0.00, 0.00, NULL),
(23, 'The Hating Game', 'Sally Thorne', 'Lucy Hutton and Joshua Templeman hate each other—or so they believe. As they vie for the same promotion, their rivalry deepens. Sally Thorne’s clever rom-com explores how the line between love and hate can be razor-thin.', 14.99, 'URL2', '2024-12-21 00:00:00', 77, 45, 'Romance', 'image2.jpg', '/images/The Hating Game.jpg', 0.00, 14.99, NULL),
(24, 'Happy Place', 'Emily Henry', 'Harriet and Wyn have broken up but pretend to still be together on a vacation with friends. This heartfelt novel explores love, friendship, and the tension between holding on to the past and taking a leap into the future.', 16.99, 'URL3', '2024-12-21 00:00:00', 68, 40, 'Romance', 'image3.jpg', '/images/Happy Place.jpg', 0.00, 0.00, NULL),
(25, 'Ugly Love', 'Colleen Hoover', 'Tate Collins and airline pilot Miles Archer strike a no-strings-attached arrangement, but emotions prove impossible to ignore. Colleen Hoover’s raw novel about opening up and overcoming the past will tug at your heart.', 14.49, 'URL4', '2024-12-21 00:00:00', 59, 30, 'Romance', 'image4.jpg', '/images/Ugly Love.jpg', 0.00, 0.00, NULL),
(26, 'The Selection', 'Kiera Cass', 'For thirty-five girls, The Selection offers a chance to escape their ordinary lives and compete for Prince Maxon’s heart. But for America Singer, it’s a battle between following her dreams and discovering what—and who—truly matters.', 12.99, 'URL5', '2024-12-21 00:00:00', 90, 35, 'Romance', 'image5.jpg', '/images/The Selection.jpg', 0.00, 0.00, NULL),
(27, 'Love and Other Words', 'Christina Lauren', 'Childhood friends Macy and Elliot reconnect years after a falling-out. Through tender flashbacks and present-day tension, this moving novel reveals how old wounds can heal if two hearts are willing to find their way back to each other.', 16.49, 'URL6', '2024-12-21 00:00:00', 84, 20, 'Romance', 'image6.jpg', '/images/Love and Other Words.jpg', 0.00, 0.00, NULL),
(28, 'The Crack at the Heart of Everything', 'Fiona Fenn', 'He accidentally cursed himself, unraveling a dystopian reality full of magic gone awry. As consequences spiral, one man must seek redemption in a world teetering between hope and despair.', 17.99, 'URL7', '2024-12-21 00:00:00', 68, 25, 'Dystopia', 'image7.jpg', '/images/The Crack at the Heart of Everything.jpg', 0.00, 0.00, NULL),
(29, 'We Called Them Giants', 'Kieron Gillen', 'In a world emptied of people, Lori awakens to giant creatures roaming silent streets. Equal parts eerie and introspective, this dystopian tale ponders human connection and the power of memory.', 19.49, 'URL8', '2024-12-21 00:00:00', 63, 15, 'Dystopia', 'image8.jpg', '/images/We Called Them Giants.jpg', 0.00, 0.00, NULL),
(30, 'The Legacy of Arniston House', 'T.L. Huchu', 'A dangerous cult craves a dark power hidden within Arniston House. Scholar Elaine must unravel centuries-old secrets or risk allowing ancient forces to consume her kingdom. A gothic fantasy brimming with intrigue and suspense.', 18.99, 'URL9', '2024-12-21 00:00:00', 54, 18, 'Dystopia', 'image9.jpg', '/images/The Legacy of Arniston House.jpg', 0.00, 0.00, NULL),
(31, 'House of Destiny: Zeit tötet immer', 'Marah Woolf', 'Averie believed she prevented catastrophe, only to discover time itself conspires against her. In this gripping tale of curses and loops, fate is both an ally and enemy, testing whether destiny can ever truly be undone.', 20.49, 'URL10', '2024-12-21 00:00:00', 50, 10, 'Dystopia', 'image10.jpg', '/images/House of Destiny.jpg', 0.00, 0.00, NULL),
(32, 'The Improvisers', 'Nicole Glover', 'In a land of illusions, conjurer Kit defies strict magical scripts by improvising spells. But as illusions shape reality, rebellious acts may trigger powerful forces that threaten an entire realm. A captivating blend of action and world-building.', 21.49, 'URL11', '2024-12-21 00:00:00', 60, 22, 'Action', 'image11.jpg', '/images/The Improvisers.jpg', 0.00, 0.00, NULL),
(33, 'To Die For', 'David Baldacci', 'FBI agent Alexandra Price unearths a massive conspiracy that puts her in mortal danger. This high-stakes thriller blends espionage, political intrigue, and relentless action, testing how far one will go in pursuit of truth.', 22.99, 'URL12', '2024-12-21 00:00:00', 72, 12, 'Action', 'image12.jpg', '/images/To Die For.jpg', 0.00, 0.00, NULL),
(34, 'Heist Royale', 'Kayvion Lewis', 'The high-stakes sequel to \'Thieves\' Gambit,\' where teen criminals gather for a global competition. Ember forms uneasy alliances to outwit old enemies and new threats. Trust is the ultimate gamble in this action-packed heist adventure.', 18.49, 'URL13', '2024-12-21 00:00:00', 70, 14, 'Action', 'image13.jpg', '/images/Heist Royale.jpg', 0.00, 18.49, 18.49),
(35, 'The Jewel of the Isle', 'Kerry Rea', 'Two homebodies, Beck and Mira, are thrust into a remote island survival challenge for a TV show. Between unexpected island legends and comedic mishaps, they must adapt fast—or discover the real treasure might be embracing the unknown.', 17.49, 'URL14', '2024-12-21 00:00:00', 60, 20, 'Action', 'image14.jpg', '/images/The Jewel of the Isle.jpg', 0.00, 0.00, NULL),
(36, 'Summit’s Edge', 'Sara Driscoll', 'FBI handler Meg Jennings and her K-9 partner head into the mountains to solve a missing person case, only to encounter deadly incidents that test the limits of teamwork and courage. A thrilling adventure high above the treeline.', 19.49, 'URL15', '2024-12-21 00:00:00', 85, 16, 'Action', 'image15.jpg', '/images/Summit’s Edge.jpg', 0.00, 0.00, NULL),
(37, 'Games Untold: An Inheritance Games Collection', 'Jennifer Lynn Barnes', 'Romance, luxury, and secrets abound in these connected stories set in the Inheritance Games world. A labyrinth of clues, high-stakes riddles, and unexpected alliances prove that in this realm, fortunes and hearts hang in the balance.', 23.99, 'URL16', '2024-12-21 00:00:00', 90, 18, 'Mystery', 'image16.jpg', '/images/Games Untold.jpg', 0.00, 0.00, NULL),
(38, 'The Teller of Small Fortunes', 'Julie Leong', 'A wandering fortune teller’s life changes when she meets a family cursed for generations. To free them—and herself—she must confront spirits, illusions, and her own past. A magical mystery weaving fate, redemption, and the smallest fortunes that can change everything.', 16.49, 'URL17', '2024-12-21 00:00:00', 69, 19, 'Mystery', 'image17.jpg', '/images/The Teller of Small Fortunes.jpg', 0.00, 16.49, NULL),
(39, 'The Lake of Lost Girls', 'Katherine Greene', 'Told in alternating timelines, this lakeside mystery weaves a teen’s search for missing classmates with the journal of a long-ago tragedy. Haunting revelations about friendship, guilt, and a supposed lake spirit collide in an eerie echo of the past.', 21.99, 'URL18', '2024-12-21 00:00:00', 73, 15, 'Mystery', 'image18.jpg', '/images/The Lake of Lost Girls.jpg', 0.00, 0.00, NULL),
(40, 'The Estate', 'Sarah Jost', 'Art historian Camille Leray investigates an isolated estate filled with cryptic artwork, hidden letters, and old family feuds. Sarah Jost’s evocative novel uncovers a mosaic of secrets, unearthing how art and inheritance entangle destinies long left undisturbed.', 20.49, 'URL19', '2024-12-21 00:00:00', 63, 12, 'Mystery', 'image19.jpg', '/images/The Estate.jpg', 0.00, 0.00, NULL),
(41, 'Guilt and Ginataan', 'Mia P. Manansala', 'Autumn in Shady Palms means cozy treats—until a cook-off judge is found dead. Amateur sleuth Lila Macapagal juggles Filipino comfort food, family drama, and a knack for uncovering evidence in this warm, witty culinary mystery.', 18.99, 'URL20', '2024-12-21 00:00:00', 59, 20, 'Mystery', 'image20.jpg', '/images/Guilt and Ginataan.jpg', 0.00, 0.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CartItemID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT 1,
  `Format` enum('softcopy','hardcopy') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CartItemID`, `UserID`, `BookID`, `Quantity`, `Format`) VALUES
(263, 1, 13, 1, 'hardcopy'),
(264, 1, 21, 1, 'hardcopy'),
(265, 12, 7, 1, 'hardcopy'),
(266, 12, 28, 1, 'hardcopy');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(10, 'habiba', 'habiba@gmail.com', 'sdvdsvfvfdsfv', '2025-01-09 00:24:22'),
(11, 'omar', 'omar@gmail.com', 'nndbdsh', '2025-01-09 10:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Address` text NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Status` varchar(20) DEFAULT 'Processing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `UserID`, `BookID`, `Quantity`, `Price`, `Address`, `Phone`, `Status`) VALUES
(4, 1, 39, 1, 21.99, '4', '4', 'Processing'),
(5, 1, 15, 1, 25.00, '4', '4', 'Processing'),
(6, 1, 27, 1, 16.49, 'm', '0', 'Processing'),
(7, 1, 24, 1, 16.99, 'm', '0', 'Processing'),
(8, 1, 19, 1, 20.00, 'ascdvfvd', '213515', 'Processing'),
(9, 1, 8, 1, 39.99, 'ascdvfvd', '213515', 'Processing'),
(10, 1, 2, 1, 6.50, 'ascdvfvd', '213515', 'Processing'),
(11, 1, 40, 1, 20.49, 'ascdvfvd', '213515', 'Processing'),
(12, 1, 28, 1, 17.99, 'rehab', '01227745412', 'Processing'),
(13, 1, 19, 1, 20.00, 'rehab', '01227745412', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Email`, `PasswordHash`, `isAdmin`) VALUES
(1, 'omar', 'omar@gmail.com', '$2b$10$80Y0oYj70hKRAnoZ6EZ6teH5zw4LcJl.gRPE2oOE1xBKq00hho1h2', 0),
(2, 'habiba', 'habiba@gmail.com', '$2b$10$XHmTyYNqWp10ssxQ66kBT.LkB3hiiuruqsg6Z.Du6dbj57vqpRqxq', 0),
(3, 'mohamed010948', 'mabdels1@asu.edu', '$2b$10$Gw3vUX8BO73aYkhdW20cVOtYmpsnywZ8tICeTTuxbOqWyd.BdfkKm', 0),
(8, '111', 'mabdels1@au.edu', '$2b$10$QU/yst8K4wyXC.NYSSOmEuPQ22t48wVjGWWrEdAgQzNiKJwzTlNPC', 0),
(9, 'salah', 'salah@gmail.com', '$2b$10$zodG3C3SMxelji0K9j7Hgewwne4ziD0627.0muZ2MjrnnHB2ELjPm', 1),
(10, 'ahmedsaleh', 'ahmedsaleh@gmail.com', '$2b$10$cPreJlbBfeE26rHOrzA10.H3tzYFGwJSDccdvTp5CFcejiKoDcum2', 0),
(11, 'omar', 'omawwr@gmail.com', '$2b$10$O6NDrZ0QQJQ7Bt9DvixD1.AR6cDEXelOzAw5K7DpxDoGfzkz7CSIS', 0),
(12, 'ahmed@gmail.com', 'ahmed@gmail.com', '$2b$10$yzX9R9RE2fhjVw8xoOQudu1fKCZZ7qKUOLCXi1oLbEDfG.hYdbMY.', 0),
(13, 'omar', 'omartt@gmail.com', '$2b$10$dZSWcEIYXun2qt8yJSHGNelE5lpQN3QfrRHTv/tuiV07RnZEPq.g.', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CartItemID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `BookID` (`BookID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `BookID` (`BookID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `BookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `CartItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
