--
-- Table structure for table `highscores`
--

CREATE TABLE `highscores` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `playername` varchar(60) NOT NULL,
  `highscore` varchar(10) NOT NULL,
  `play_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `highscores`
--

INSERT INTO `highscores` (`id`, `user_id`, `playername`, `highscore`, `play_date`) VALUES
(36, 0, 'Mickey Mouse', '00500', '2016-10-14 14:00:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `highscores`
--
ALTER TABLE `highscores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `highscores`
--
ALTER TABLE `highscores`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
