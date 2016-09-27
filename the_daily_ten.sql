--
-- Table structure for table `the_daily_ten`
--

CREATE TABLE `the_daily_ten` (
  `id` int(11) NOT NULL,
  `q_num` int(11) NOT NULL,
  `question` text,
  `answer1` char(100) DEFAULT NULL,
  `answer2` char(100) DEFAULT NULL,
  `answer3` char(100) DEFAULT NULL,
  `answer4` char(100) DEFAULT NULL,
  `correct` int(1) DEFAULT NULL,
  `play_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `the_daily_ten`
--

INSERT INTO `the_daily_ten` (`id`, `q_num`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct`, `play_date`) VALUES
(961, 1, 'Who protrayed Mr. Kesuke Miyagi in "The Karate Kid"?', 'Pat Morita', 'Raph Macchio', 'George Takei', 'Masi Oka', 1, '2016-09-26 00:00:00'),
(962, 2, 'A young boy is arrested for writing a computer virus and is banned from using a computer until his 18th Birthday. What is the name of the movie?', 'The Net', 'Hackers', 'War Games', 'Code Breakers', 2, '2016-09-26 00:00:00'),
(963, 3, 'What was Patrick Swayze last movie before his untimely death?', 'Power Blue', 'Road House', 'Dirty Dancing', 'Ghost', 1, '2016-09-26 00:00:00'),
(964, 4, 'Who played Elliot in E.T.: The Extra-Terrestrial?', 'C. Thomas Howell', 'Matt Dillion', 'Henry Thomas', 'Patrick Swayze', 3, '2016-09-26 00:00:00'),
(965, 5, 'A talented pool hustler has stayed out of the game for years, must go back to his old ways when his little brother gets involved with his enemy, the very man who held him back from greatness. Name this movie?', 'The Color of Money', 'Matchstick Men', 'Poolhall Junkies', 'The Hustler', 3, '2016-09-26 00:00:00'),
(966, 6, 'What movie did Dennis Hopper make his debut in?\r', 'Rebel Without a Cause', 'True Grit', 'Speed', 'Easy Rider', 1, '2016-09-26 00:00:00'),
(967, 7, 'Who starred in "The Long, Long Trailer"?', 'Katharine Hepburn and Humphrey Bogart', 'Cary Grant and Rosalind Russell', 'Desi Arnaz and Lucille Ball', 'Cary Grant and Lucille Ball', 3, '2016-09-26 00:00:00'),
(968, 8, 'What was Gary Sinise Character\'s name in "Forrest Gump"?\r\n', 'LT. John Taylor', 'LT. Mike Taylor', 'LT. Tony Taylor', 'LT. Dan Taylor', 4, '2016-09-26 00:00:00'),
(969, 9, 'The Mummy and The Mummy Returns two main stars are?\r', 'Tom Hanks and Rachel Weisz', 'Harrison Ford and Rachel Weisz', 'Tom Hanks and Meg Ryan', 'Brendan Fraser and Rachel Weisz', 4, '2016-09-26 00:00:00'),
(970, 10, 'Who was the actor portrayed Gimli in the "Lord of the Rings" trilogy?\r', 'Elijah Wood', 'John Rhys-Davis', 'Ian McKellan', 'Sean Astin', 2, '2016-09-26 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `the_daily_ten`
--
ALTER TABLE `the_daily_ten`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `the_daily_ten`
--
ALTER TABLE `the_daily_ten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=971;
