
--
-- Table structure for table `trivia_questions`
--

CREATE TABLE `trivia_questions` (
  `id` int(11) NOT NULL,
  `q_num` int(4) NOT NULL,
  `question` text COLLATE latin1_german2_ci NOT NULL,
  `answer1` char(100) COLLATE latin1_german2_ci NOT NULL,
  `answer2` char(100) COLLATE latin1_german2_ci NOT NULL,
  `answer3` char(100) COLLATE latin1_german2_ci NOT NULL,
  `answer4` char(100) COLLATE latin1_german2_ci NOT NULL,
  `correct` int(1) NOT NULL,
  `category` varchar(60) COLLATE latin1_german2_ci NOT NULL,
  `play_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `day_of_year` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `trivia_questions`
--

INSERT INTO `trivia_questions` (`id`, `q_num`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct`, `category`, `play_date`, `day_of_year`) VALUES
(1, 0, 'What actor from the movie "Dead Poets Society" plays Dr. James Wilson on the TV show "House"?', 'Ethan Hawke', 'Dylan Kussman', 'Robert Sean Leonard', 'James Waterston', 3, 'movie', '0000-00-00 00:00:00', -1),
(2, 0, 'Who played Ferris Bueller in "Ferris Bueller\'s Day off"?', 'Tom Hanks', 'Matthew Broderick', 'Alan Ruck', 'Tom Cruise', 2, 'movie', '0000-00-00 00:00:00', -1),
(3, 1, 'A coach with a checkered past and a local drunk train a small town high school basketball team to become a top contender for the championship. What is the name of the movie?', 'Heroes', 'Friday Night Lights', 'Blue Chips', 'Hoosiers', 4, 'movie', '2016-10-01 00:00:00', 274),
(4, 2, 'What actor provided the voice for Darth Vader for the movie Star Wars(1977)?', 'David Prowse', 'James Earl Jones', 'John Paul Jones', 'Sean Connery', 2, 'movie', '2016-10-01 00:00:00', 274),
(5, 3, 'A talented pool hustler has stayed out of the game for years, must go back to his old ways when his little brother gets involved with his enemy, the very man who held him back from greatness. Name this movie?', 'The Color of Money', 'Matchstick Men', 'Poolhall Junkies', 'The Hustler', 3, 'movie', '2016-10-01 00:00:00', 274),
(6, 4, 'What actor portrayed Frodo Baggins in the "Lord of the Rings" trilogy? ', 'Elijah Wood', 'John Rhys-Davies', 'Ian Mckellen', 'Sean Astin', 1, 'movie', '2016-10-01 00:00:00', 274),
(7, 5, 'Who portrayed the Joker in "The Dark Knight (2008)"?', 'Christan Bale', 'Aaron Eckhart', 'Michael Caine', 'Heath Ledger', 4, 'movie', '2016-10-01 00:00:00', 274),
(8, 6, 'Who was the actor portrayed Gimli in the "Lord of the Rings" trilogy?\r', 'Elijah Wood', 'John Rhys-Davis', 'Ian McKellan', 'Sean Astin', 2, 'movie', '2016-10-01 00:00:00', 274),
(9, 7, 'Who played Jor-El in "Superman (1978)"?\r', 'Glenn Ford', 'Ned Beatty', 'Christopher Reed', 'Marlon Brando', 4, 'movie', '2016-10-01 00:00:00', 274),
(10, 8, 'Actor Dustin Huffman was a roommate of what other famous actors?\r\n', 'Robert Duvall and Gene Hackman', 'Robert Duvall and Clint Eastwood', 'Robert Redford and Paul Newman', 'Paul Newman and Clint Eastwood', 1, 'movie', '2016-10-01 00:00:00', 274),
(11, 9, 'Who Played George M. Cohan in the movie "Yankee Doodle Dandy"?\r', 'James Stewart', 'Fred Astaire', 'James Cagney', 'Gene Kelly', 3, 'movie', '2016-10-01 00:00:00', 274),
(12, 10, 'Who were the two main actors in the movie "Casablanca"?\r', 'Humphrey Bogart and Audrey Hepburn', 'Humphrey Bogart and Lauren Bacall', 'Humphrey Bogart and Katharine Hepburn', 'Humphrey Bogart and Ingrid Bergman', 4, 'movie', '2016-10-01 00:00:00', 274),
(13, 1, 'Who starred in the 1954 version of Sabrina?\r', 'Humphrey Bogart and Audrey Hepburn', 'Harrison Ford and Julia Ormond', 'Humphrey Bogart and Lauren Bacall', 'Humphrey Bogart and Katharine Hepburn', 1, 'movie', '2016-10-02 00:00:00', 275),
(14, 2, 'Who starred in the 1995 version of Sabrina?', 'Harrison Ford and Julia Ormond', 'Bill Murray and Julia Ormond', 'Tom Hanks and Julia Ormond', 'Humphrey Bogart and Audrey Hepburn', 1, 'movie', '2016-10-02 00:00:00', 275),
(15, 3, 'What was Gary Sinise Character\'s name in "Forrest Gump"?\r\n', 'LT. John Taylor', 'LT. Mike Taylor', 'LT. Tony Taylor', 'LT. Dan Taylor', 4, 'movie', '2016-10-02 00:00:00', 275),
(16, 4, 'Rand Peltzer is warned by the shop\'s owner that three rules must be obeyed by a Mogwai Owner: 1)Keep it away from bright light, 2) Don\'t get any water on it, 3) and never ever feed it after midnight. What is the name of the movie?\r\n', 'Cujo', 'Gremlins', 'Short Circuit', 'The Thing', 2, 'movie', '2016-10-02 00:00:00', 275),
(17, 5, '"You Maniacs! You blew it up! Ah, damn you! God damn you all to hell! " What movie did this famous line come from?', 'Planet of the Apes (1968)', 'The Day After Tomorrow', 'The Matrix', 'Soylent Green', 1, 'movie', '2016-10-02 00:00:00', 275),
(18, 6, 'What movie did Charlton Heston win an Oscar for Best Actor?', 'Soylent Green', 'Planet of the Apes', 'Ben-Hur', 'The Ten Commandments', 3, 'movie', '2016-10-02 00:00:00', 275),
(19, 7, 'Clint Eastwood\'s first Academy Awards came from what movie?', 'Gran Torino', 'Unforgiven', 'Pale Rider', 'Hang \'Em High', 2, 'movie', '2016-10-02 00:00:00', 275),
(20, 8, 'Which famous movie actress was known for fruit-laden hats\r', 'Jennifer Lopez', 'Penelope Cruz', 'Carmen Miranda', 'Salma Hayek', 3, 'movie', '2016-10-02 00:00:00', 275),
(21, 9, 'Who is William Abbott and Louis Francis Cristillo better known as?\r\n', 'Martin and Lewis', 'Laurel andHardy', 'Abbott and Costello', 'Conwayand Korman', 3, 'movie', '2016-10-02 00:00:00', 275),
(22, 10, 'What movie did Dennis Hopper make his debut in?\r', 'Rebel Without a Cause', 'True Grit', 'Speed', 'Easy Rider', 1, 'movie', '2016-10-02 00:00:00', 275),
(23, 1, 'Joel had all the normal teenage fantasies...cars, girls, money. Then his parents left for a week, and all his fantasies came true. What is the name of that movie?\r', 'Top Gun', 'Risky Business', 'Hackers', 'The Karate Kid', 2, 'movie', '2016-10-03 00:00:00', 276),
(24, 2, 'Who protrayed Mr. Kesuke Miyagi in "The Karate Kid"?', 'Pat Morita', 'Raph Macchio', 'George Takei', 'Masi Oka', 1, 'movie', '2016-10-03 00:00:00', 276),
(25, 3, 'A young boy is arrested for writing a computer virus and is banned from using a computer until his 18th Birthday. What is the name of the movie?', 'The Net', 'Hackers', 'War Games', 'Code Breakers', 2, 'movie', '2016-10-03 00:00:00', 276),
(26, 4, 'What movie did the following come from? "Ray, people will come Ray. They\'ll come to Iowa for reasons they can\'t even fathom. They\'ll turn up your driveway not knowing for sure why they\'re doing it..." (Hint: Stars Kevin Costner)\r\n', 'The Natural', 'Field Of Dreams', 'Eight Men Out', 'Pride of the Yankees', 2, 'movie', '2016-10-03 00:00:00', 276),
(27, 5, 'Chevy Chase, Rodney Dangerfield, Ted Knight and Bill Murray where all in this great comedy about golf?\r', 'Tin Cup', 'Caddyshack', 'Caddyshack 2', 'The Legend of Bagger Vance', 2, 'movie', '2016-10-03 00:00:00', 276),
(28, 6, 'Chuck Nolan is stranded on an island and makes a Wilson volleyball his companion. What is the name of this movie?', 'Castaway', 'The Island', 'Cast Away', 'Stranded', 3, 'movie', '2016-10-03 00:00:00', 276),
(29, 7, 'This movie stars Kevin Costener, Rene Russo, Don Johnson, and Cheech Marin and was about a washed up golf pro trying to steal his rival\'s girlfriend. Name the movie?', 'Happy Gilmore', 'Follow the Sun', 'The Legend of Bagger Vance', 'Tin Cup', 4, 'movie', '2016-10-03 00:00:00', 276),
(30, 8, 'Follow the Sun was about what real life golf pro?', 'Bobby Jones', 'Ben Hogan', 'Arnold Palmer', 'Jack Nicklaus', 2, 'movie', '2016-10-03 00:00:00', 276),
(31, 9, 'What actor was born Marion Robert Morrison?', 'John Wayne', 'Glenn Ford', 'Marlon Brando', 'Clint Eastwood', 1, 'movie', '2016-10-03 00:00:00', 276),
(32, 10, 'George Peppard starred with what actress in the movie "Breakfast at Tiffany\'s (1961)"?', 'Jane Fonda', 'Katharine Hepburn', 'Audrey Hepburn', 'Claudette Colbert', 3, 'movie', '2016-10-03 00:00:00', 276),
(33, 1, 'The President of the United States crashes into Manhattan, now a giant max. security prison and convicted bank robber is sent in for a rescue. ', 'Escape from New York (1981)', 'Nighthawks', 'Hero at Large', 'Fort Apache the Bronx (1981)', 1, 'movie', '2016-10-04 00:00:00', 277),
(34, 2, 'An alien (played by Jeff Bridges) takes the form of a young widow\'s husband and kidnaps her so she can drive him from Wisconsin to Arizona. Name the movie?', 'Close Encounters of the Third Kind', 'E.T.: The Extra-Terrestrial', 'Starman', 'Starperson', 3, 'movie', '2016-10-04 00:00:00', 277),
(35, 3, 'This movie in 1972 was Directed by Francis Ford Coppola and was about about the mob?', 'Goodfellas', 'Scareface', 'The Godfather', 'The Godfather Part II', 3, 'movie', '2016-10-04 00:00:00', 277),
(36, 4, 'Who played Elliot in E.T.: The Extra-Terrestrial?', 'C. Thomas Howell', 'Matt Dillion', 'Henry Thomas', 'Patrick Swayze', 3, 'movie', '2016-10-04 00:00:00', 277),
(37, 5, 'Who played Ponyboy Curtis in the movie "The Outsiders"?', 'C. Thomas Howell', 'Matt Dillion', 'Henry Thomas', 'Patrick Swayze', 1, 'movie', '2016-10-04 00:00:00', 277),
(38, 6, 'What was Patrick Swayze last movie before his untimely death?', 'Power Blue', 'Road House', 'Dirty Dancing', 'Ghost', 1, 'movie', '2016-10-04 00:00:00', 277),
(39, 7, 'A troubled teenager is plagued by visions of a large bunny rabbit that manipulates him to commit a series of crimes, after narrowly escaping a bizarre accident?', 'Edward Scissorhands', 'Donnie Darko', 'Donnie Brasco', 'Flatliners', 2, 'movie', '2016-10-04 00:00:00', 277),
(40, 8, 'What movie had these great actors/actresses: Kevin Bacon, Lori Singer, John Lithgrow, Dianne West, Chris Penn and Sarah Jessica Parker?', 'Girls Just Want to Have Fun', 'Footloose', 'Night of the Comet', 'Dirty Dancing', 2, 'movie', '2016-10-04 00:00:00', 277),
(41, 9, 'Bob Barker has a fight with Adam Sandler in what movie?\r', 'Big Daddy', 'The Waterboy', 'Happy Gilmore', 'Mr. Deeds', 3, 'movie', '2016-10-04 00:00:00', 277),
(42, 10, 'A high-school boy follows an up-and-coming rock band for Rolling Stone Magazine. What is the name of the movie?', 'Almost Famous', 'Fool\'s Gold', '200 Cigarettes', 'This is Spinal Tap', 1, 'movie', '2016-10-04 00:00:00', 277),
(43, 1, 'Who directed the movie "Stand by Me"?', 'Penny Marshall', 'Rob Reiner', 'Ron Howard', 'Stephen King', 2, 'movie', '2016-10-05 00:00:00', 278),
(44, 2, '"Stand By Me" was based on the novel "The Body" which was written by?', 'Rob Reiner', 'Ron Howard', 'Stephen King', 'Abe Kobo', 3, 'movie', '2016-10-05 00:00:00', 278),
(45, 3, 'Name the top two stars of "The Shawshank Redemption"?', 'Tom Cruise and Morgan Freeman', 'Tim Robbins and Denzel Washington', 'Morgan Freeman and Denzel Washington', 'Tim Robbins and Morgan Freeman', 4, 'movie', '2016-10-05 00:00:00', 278),
(46, 4, 'Mortimer Duke and Randolph Duke make a $1.00 bet in what movie?', 'Harry and the Hendersons', 'Trading Places', 'Coming to America', 'Cocoon', 2, 'movie', '2016-10-05 00:00:00', 278),
(47, 5, 'Who starred in "The Long, Long Trailer"?', 'Katharine Hepburn and Humphrey Bogart', 'Cary Grant and Rosalind Russell', 'Desi Arnaz and Lucille Ball', 'Cary Grant and Lucille Ball', 3, 'movie', '2016-10-05 00:00:00', 278),
(48, 6, 'What famous movie shows a shower scene where Marion Crane(Janet Leigh) gets stabbed to death?', 'Psycho', 'Friday the 13th', 'A Nightmare on Elm Street', 'Halloween', 1, 'movie', '2016-10-05 00:00:00', 278),
(49, 7, 'Who directed Cocoon?', 'Penny Marshall', 'Rob Reiner', 'Ron Howard', 'Henry Wrinkler', 3, 'movie', '2016-10-05 00:00:00', 278),
(50, 8, 'Most of the World\'s population is wiped out on Earth, leaving two Valley Girls to fight the evil types who survive. Name the movie?', 'Armageddon', 'War of the Worlds', 'Deep Impact', 'Night of the Comet', 4, 'movie', '2016-10-05 00:00:00', 278),
(51, 9, 'What famous actor played halfback for Florida State University, only to be injured in the first game of the season? (This ended his NFL dream)\r', 'Adam Sandler', 'Burt Reynolds', 'Tom Selleck', 'Clint Eastwood', 2, 'movie', '2016-10-05 00:00:00', 278),
(52, 10, 'Cary Grant, Victor McLaglen, Douglas Fairbanks Jr. and Sam Jaffe starred in what movie?\r\n', 'The Longest Day', 'Gunga Din', 'Wizard of Oz', 'Gone With the Wind', 2, 'movie', '2016-10-05 00:00:00', 278),
(53, 1, 'Sheb Wooley portrayed Cletus in the movie "Hoosiers", but is better known for this novelty song?\r\n', 'Alley-Oop', 'The Purple People Eater', 'Witch Doctor', 'Monster Mash', 2, 'movie', '2016-10-06 00:00:00', 279),
(54, 2, 'The Mummy and The Mummy Returns two main stars are?\r', 'Tom Hanks and Rachel Weisz', 'Harrison Ford and Rachel Weisz', 'Tom Hanks and Meg Ryan', 'Brendan Fraser and Rachel Weisz', 4, 'movie', '2016-10-06 00:00:00', 279),
(55, 3, 'Who has won the most Oscars for Best Actress?\r', 'Meryl Streep', 'Katharine Hepburn', 'Audrey Hepburn', 'Jane Fonda', 2, 'movie', '2016-10-06 00:00:00', 279),
(56, 4, 'Jane Russell appeared as Calamity Jane with Bob Hope in what Movie?\r\n', 'The PaleFace', 'True Grit', 'Palerider', 'The Man Who Shot Liberty Valance', 1, 'movie', '2016-10-06 00:00:00', 279),
(57, 5, 'Who were the first two astronauts to walk on the moon?', 'Neil Armstrong and Edwin Aldrin, Jr.', 'Michael Collins and Neil Armstrong', 'Edwin  Aldrin, Jr. and Clint Eastwood', 'Alan L. Bean and Charles Conrad, Jr.', 1, 'space', '2016-10-06 00:00:00', 279),
(58, 6, 'What was the date that Neil Armstrong walk on the moon?', 'August 28, 1973', 'March 1, 1967', 'July 20, 1969', 'June 20, 1980', 3, 'space', '2016-10-06 00:00:00', 279),
(59, 7, 'What does NASA stand for?', 'North American Space Agency', 'National Aeronautics and Space Administration', 'New Age Stuff Administration', 'National Association of Solar Area', 2, 'space', '2016-10-06 00:00:00', 279),
(60, 8, 'Where did th Mercury, Gemini and Apollo spacecraft land when they returned to Earth?', 'Roswell, NM', 'Florida', 'Pacific or Atlantic', 'Michigan', 3, 'space', '2016-10-06 00:00:00', 279),
(61, 9, 'Who was the first American woman in space?', 'Sally Munster', 'Sally Walk', 'Sally Ride', 'Valentina Vladimirovna Tereshkova', 3, 'space', '2016-10-06 00:00:00', 279),
(62, 10, 'Who was the only original Mercury 7 astronaut to walk on the Moon?', 'Alan B. Shepard, Jr.', 'Walter M. Schirra', 'John Glenn', 'Virgil I. \'Gus\' Grissom', 1, 'space', '2016-10-06 00:00:00', 279),
(63, 1, 'Who was the first man in space?', 'Alan B. Shepard, Jr.', 'John Glenn', 'Yuri A. Gagarin', 'Neil Alden Armstrong', 3, 'space', '2016-10-07 00:00:00', 280),
(64, 2, 'Who was the first American to orbit the Earth?', 'Alan B. Shepard, Jr.', 'John Glenn', 'Yuri A. Gagarin', 'Neil Alden Armstrong', 2, 'space', '2016-10-07 00:00:00', 280),
(65, 3, 'Who was the first American in space?', 'Alan B. Shepard, Jr.', 'John Glenn', 'Yuri A. Gagarin', 'Neil Alden Armstrong', 1, 'space', '2016-10-07 00:00:00', 280),
(66, 4, 'Who was the second person to walk on the Moon?', 'Alan B. Shepard, Jr.', 'Edwin \'Buzz\' Aldrin, Jr.', 'Neil Armstrong', 'Edward Higgins White II', 2, 'space', '2016-10-07 00:00:00', 280),
(67, 5, 'Who was the first person to break the sound barrier in an aircraft?', 'Capt. Charles E. Yeager', 'Neil Armstrong', 'John Glenn', 'Alan L. Nean', 1, 'space', '2016-10-07 00:00:00', 280),
(68, 6, 'What Space Shuttle was the first to be launched into space?', 'Challenger', 'Discovery', 'Columbia', 'Atlantis', 3, 'space', '2016-10-07 00:00:00', 280),
(69, 7, 'How many people have walked on the moon?', '17', '10', '16', '12', 4, 'space', '2016-10-07 00:00:00', 280),
(70, 8, 'What happened to the Space Shuttle Challenger on January 28, 1986?', 'Shuttle was destroyed during re-entry', 'Shuttle exploded after 73 second of flight', 'Shuttle was first launched!', 'Repaired the Hubble Telescope', 2, 'space', '2016-10-07 00:00:00', 280),
(71, 9, 'Who was the first American to walk in space?', 'Ed White', 'Alan B. Shepard, Jr.', 'John Glenn', 'Neil Armstrong', 1, 'space', '2016-10-07 00:00:00', 280),
(72, 10, 'Who was the first person to walk in space?', 'Aleksei Leonov', 'Ed White', 'Yuri A. Gagarin', 'John Glenn', 1, 'space', '2016-10-07 00:00:00', 280),
(73, 1, 'Who so far is America\'a Oldest Astronaut?', 'Scott Carpentar', 'Gordon Cooper', 'John Glenn', 'Alan B. Shepard, Jr.', 3, 'space', '2016-10-08 00:00:00', 281),
(74, 2, 'Viking Mission to Mars was composed of how many spacecraft?', '1', '4', '3', '2', 4, 'space', '2016-10-08 00:00:00', 281),
(75, 3, 'What were the name of the two rovers of the Mars Exploration Rover Mission (MER)?', 'Enterprise and Columbia', 'Spirit and Opportunity', 'Ghost and Spirit', 'Enterprise and Opportunity', 2, 'space', '2016-10-08 00:00:00', 281),
(76, 4, 'Who was supposed to walk on the moon on the Apollo 13 mission to the moon, but didn\'t because of an incident?', 'Jim Lovell and Jack Swigert', 'Jim Lovell and Fred Haise', 'Jack Swigert and Ken Mattingly', 'Jim Lovell and Ken Mattingly', 2, 'space', '2016-10-08 00:00:00', 281),
(77, 5, 'What was the first United States space station called?\r', 'MIR', 'Skylab', 'Death Star', 'Moonraker', 2, 'space', '2016-10-08 00:00:00', 281),
(78, 6, 'What was the United States first space tragedy?', 'Challenger', 'Columbia', 'Apollo 1', 'Hindenburg', 3, 'space', '2016-10-08 00:00:00', 281),
(79, 7, 'What was the first space probe to leave the solar system?', 'Voyager 2', 'Voyager 1', 'Viking 1', 'Mariner 3', 2, 'space', '2016-10-08 00:00:00', 281),
(80, 8, 'How many moon landings have there been?', '6', '12', '8', '14', 1, 'space', '2016-10-08 00:00:00', 281),
(81, 9, 'Who designed the Saturn V rocket that propelled man to the moon?', 'Albert Einstein', 'John F. Kennedy', 'Wernher von Braun', 'Bill Gates', 3, 'space', '2016-10-08 00:00:00', 281),
(82, 10, 'What Apollo mission was the last to land on the moon?', 'Apollo 16', 'Apollo 13', 'Apollo 15', 'Apollo 17', 4, 'space', '2016-10-08 00:00:00', 281),
(83, 1, 'What are Saturn\'s rings made of?', 'The rings are made of dust particles.', 'The rings are made of chunks of water ice.', 'The rings are made of milkyways.', 'The rings are made up of gas.', 2, 'space', '2016-10-09 00:00:00', 282),
(84, 2, 'What is the name of the next generation United States spacecraft this is going to take humans to Mars?', 'Apollo', 'Mecury', 'Aries', 'Orion', 4, 'space', '2016-10-09 00:00:00', 282),
(85, 3, 'How many planets in our solar system?', '7', '8', '9', '6', 2, 'space', '2016-10-09 00:00:00', 282),
(86, 4, 'What planet is 3rd from the sun?', 'Venus', 'Mars', 'Earth', 'Saturn', 3, 'space', '2016-10-09 00:00:00', 282),
(87, 5, 'What four inner solar system planets fall under the category of terrestrial planets?', 'Saturn, Mars, Jupiter, Uranus', 'Mercury, Venus, Earth, and Mars', 'Earth, Mars, Saturn, Neptune', 'Jupiter, Saturn, Mars, Venus', 2, 'space', '2016-10-09 00:00:00', 282),
(88, 6, 'What two planets are considered gas giants (composed mainly of hydrogen and helium)?', 'Jupiter and Saturn', 'Uranus and Neptune', 'Mercury and Mars', 'Venus and Mars', 1, 'space', '2016-10-09 00:00:00', 282),
(89, 7, 'What two planets are considered ice giants (containing many elements greater than hydrogen and helium)?', 'Jupiter and Saturn', 'Uranus and Neptune', 'Mercury and Mars', 'Venus and Mars', 2, 'space', '2016-10-09 00:00:00', 282),
(90, 8, 'What are the eight planets in our solar system?', 'Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus and Pluto', 'Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus and Makemake', 'Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus and Neptune', 'Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus and Ceres', 3, 'space', '2016-10-09 00:00:00', 282),
(91, 9, 'What planet was demoted from planetary status and is now considered a dwarf planet?', 'Pluto', 'Ceres', 'MakeMake', 'Neptune', 1, 'space', '2016-10-09 00:00:00', 282),
(92, 10, 'What is the closet galaxy to our Milky Way? ', 'Draco Dwarf', 'Andromeda', 'Ursa Minor Dwarf', 'Canis Major Dwarf', 2, 'space', '2016-10-09 00:00:00', 282),
(93, 1, 'How many moons does Mars have?', '1', '2', '3', '4', 2, 'space', '2016-10-10 00:00:00', 283),
(94, 2, 'What are the two moons of Mars called?', 'Phobos and Deimos', 'Dione and Phobos', 'Enceladus and Dione', 'Kari and Dione', 1, 'space', '2016-10-10 00:00:00', 283),
(95, 3, 'How does a day last on Mercury?', '24 Hours', 'Approximately as long as 59 days on earth', '1 earth year', '2 days', 2, 'space', '2016-10-10 00:00:00', 283),
(96, 4, 'Who is the Astronaut that hit 2 golfballs on the moon?', 'Neil Armstrong', 'Buzz Aldrin', 'Buzz Lightyear', 'Alan B. Shepard', 4, 'space', '2016-10-10 00:00:00', 283),
(97, 5, 'What is the giant red spot on Jupiter?', 'A land mass', 'A gigantic storm that has been raging for hundred of years', 'There is no red spot on Jupiter', 'Scientists still haven&#39;t determined what the red spot is', 2, 'space', '2016-10-10 00:00:00', 283),
(98, 6, 'What was the first spacecraft to visit the planet Venus?', 'Pioneer Venus', 'Magellan', 'Marineer 2', 'Marineer 1', 3, 'space', '2016-10-10 00:00:00', 283),
(99, 7, 'This planet is the sixth planet from the Sun and the second largest in the Solar System, after Jupiter. It is a gas giant with an average radius about nine times that of Earth.', 'Mars', 'Saturn', 'Neptune', 'Venus', 2, 'space', '2016-10-10 00:00:00', 283),
(100, 8, 'What is the interplanetary space probe that study the planet Pluto, its moons and the Kuiper belt?', 'Voyager 1', 'New Horizons', 'Voyager 2', 'Marineer 1', 2, 'space', '2016-10-10 00:00:00', 283),
(101, 9, 'What was the first U.S. Satellite called?', 'Spuknit 1', 'Spuknit 2', 'Explorer 1', 'Exhibition 1', 3, 'space', '2016-10-10 00:00:00', 283),
(102, 10, 'This planet is known as the wandering star and is the 4th brightest object in the sky? (after the Sun, Venus and the Moon) ', 'Neptune', 'Saturn', 'Jupiter', 'Mercury', 3, 'space', '2016-10-10 00:00:00', 283);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trivia_questions`
--
ALTER TABLE `trivia_questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trivia_questions`
--
ALTER TABLE `trivia_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
