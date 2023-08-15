-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 12:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advance_java`
--
CREATE DATABASE IF NOT EXISTS `advance_java` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `advance_java`;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `ID` int(10) NOT NULL,
  `F_Name` varchar(20) NOT NULL,
  `L_Name` varchar(20) NOT NULL,
  `Age` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`ID`, `F_Name`, `L_Name`, `Age`) VALUES
(1, 'Ram', 'Pal', 45),
(2, 'ikbal', 'hossain', 52),
(3, 'kiton', 'Pal', 12),
(5, 'sun', 'mondak', 52),
(6, 'rubel', 'sk', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `assignment_no_1`
--
CREATE DATABASE IF NOT EXISTS `assignment_no_1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `assignment_no_1`;

-- --------------------------------------------------------

--
-- Table structure for table `client_master`
--

CREATE TABLE `client_master` (
  `client_no` varchar(6) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address1` varchar(30) DEFAULT NULL,
  `address2` varchar(30) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `pin_code` int(6) DEFAULT NULL,
  `bal_due` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_master`
--

INSERT INTO `client_master` (`client_no`, `name`, `address1`, `address2`, `city`, `state`, `pin_code`, `bal_due`) VALUES
('1', 'Ivan', NULL, NULL, 'Bombay', 'Maharashtra', 400054, 15000),
('2', 'Vandana', NULL, NULL, 'Madras', 'Tamilnadu', 780001, 0),
('3', 'Pramada', NULL, NULL, 'Bombay', 'Maharashtra', 400057, 5000),
('4', 'Basu', NULL, NULL, 'Bombay', 'Maharashtra', 400056, 0),
('5', 'Ravi', NULL, NULL, 'Delhi', '', 100001, 2000),
('6', 'Rukmini', NULL, NULL, 'Bombay', 'Maharashtra', 400050, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `Product_no` varchar(12) NOT NULL,
  `Description` varchar(20) DEFAULT NULL,
  `Profit_percent` int(20) DEFAULT NULL,
  `Unit_measure` varchar(150) DEFAULT NULL,
  `Qty_on_hand` int(20) DEFAULT NULL,
  `Reoder_lvl` int(20) DEFAULT NULL,
  `Sell_price` int(20) DEFAULT NULL,
  `Cost_price` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`Product_no`, `Description`, `Profit_percent`, `Unit_measure`, `Qty_on_hand`, `Reoder_lvl`, `Sell_price`, `Cost_price`) VALUES
('P00001', '1.44floppies', 5, 'piece', 100, 20, 525, 500),
('P03453', 'Monitors', 6, 'piece', 10, 3, 12000, 11200),
('P06734', 'Mouse', 5, 'piece', 20, 5, 1050, 500),
('P07865', '1.22floppies', 5, 'piece', 100, 20, 525, 500),
('P07868', 'Keyboards', 2, 'piece', 10, 3, 3150, 3050),
('P07885', 'Cd Drive', 3, 'piece', 10, 3, 5250, 5100),
('P07965', '540 HDD', 4, 'piece', 10, 3, 8400, 8000),
('P07975', '1.44 Drive', 5, 'piece', 10, 3, 1050, 1000),
('P08865', '1.22 Drive', 5, 'piece', 2, 2, 1050, 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_master`
--
ALTER TABLE `client_master`
  ADD PRIMARY KEY (`client_no`);

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`Product_no`);
--
-- Database: `book_store`
--
CREATE DATABASE IF NOT EXISTS `book_store` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `book_store`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` int(4) NOT NULL,
  `b_nm` varchar(60) NOT NULL,
  `b_subcat` varchar(25) NOT NULL,
  `b_desc` longtext NOT NULL,
  `b_publisher` varchar(40) NOT NULL,
  `b_edition` varchar(20) NOT NULL,
  `b_isbn` varchar(10) NOT NULL,
  `b_page` int(5) NOT NULL,
  `b_price` int(5) NOT NULL,
  `b_img` longtext NOT NULL,
  `b_pdf` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `b_nm`, `b_subcat`, `b_desc`, `b_publisher`, `b_edition`, `b_isbn`, `b_page`, `b_price`, `b_img`, `b_pdf`) VALUES
(1, 'A Dictionary of Architecture ', '1', 'Containing over 5,000 entries from Aalto to ziggurat, this is the most comprehensive and up-to-date dictionary of architecture in paperback. Beautifully illustrated and written in a clear and concise style, it is an invaluable work of reference for both students of architecture and the general reader, as well as professional architects. Covers all periods of Western architectural history, from ancient times to the present day Concise biographies of leading architects, from Brunelleschi and Imhotep to Le Corbusier and Richard Rogers Over 250 illustrations specially drawn for this volume', 'THE BOOK SHOP', '2007', '89564636 ', 200, 500, 'upload_image/ARC9.jpg', 'upload_ebook/arc.txt'),
(2, 'Elephant Kingdom : Sculptures from Indian Architecture ', '1', 'Elephants occupy a special place in the life and art of India. Since ancient times, they have been treasured and pampered as the ultimate beasts of burden, venerated as the vehicles of gods and kings and even worshipped in their own right. Their legendary attributes of strength, intelligence, nobility and longevity are eulogized in myth, epic and popular literature. In the figural and decorative arts, elephants provide an enduring fascination. Elephant Kingdom traces the myriad stories and symbolisms behind India\'s much-loved animal, through its depictions in architectural sculpture. At the heart of the study is a collection of over 60 colour photographs from a diversity of antique settings-many of them in remote parts of the subcontinent. At centuries-old temples, monasteries, forts and palaces, elephants flank ceremonial entrances, enrich columns and capitals, form balustrades to stairways or stand as enigmatic sentinels of vast courtyards. Some are legendary characters in tales of dreams and salvation; others enact scenes from a faithfully observed natural history. Some transport kings and heroes into battle and the hunt; others are celestial messengers of rain, fertility and good fortune. From monumental freestanding sculptures to finely-worked narrative friezes, the warmth and energy of these depictions bear testimony to the achievements of countless anonymous artisans. ', 'Vikramjit Ram', '2006', '81-88204-6', 250, 1000, 'upload_image/ARC8.jpg', 'upload_ebook/arc2.txt'),
(3, 'Close to Events-Works of Bikash Bhattacharjee', '2', 'Launching his creative career in the late ?50s, Bikash Bhattacharjee stood out among his contemporaries by making hard-edged chiseled realism the core appeal of his canvases when realism or naturalism of every shade was considered a retrograde trend. Bikash?s strengths were his exceptional technical mastery and his power to charge the tangible appearance of the surface with the reality of the depth beneath. He was admired not merely for the near-illusionist evocation of realistic details, but for the obvious or subtle distortions in his imagery as a key to their complex multi-layered meanings. His realistic idiom is fascinatingly robust and compulsive, laced with rich irony, strong-veined allegory and lush visual metaphors. His portrait-based images enact the artist?s own experience of our time with all its dark social and moral tones and textures. Close to Events: Works of Bikash Bhattacharjee deals with Bikash?s early life in an old North Calcutta locality, the urban social ambience that shaped his creative personality and explores why he chose to remain ?close to events? and free from the dominant trends in post-Independence Indian art. It also analyses the technical and stylistic development of art with detailed exposition of some of the themes and subjects in the major series of his paintings. ', 'Manasij Majumder', '2008', '978818973', 250, 2000, 'upload_image/ART6.JPG', 'upload_ebook/art1.docx'),
(4, 'A Social History of Indian Architecture ', '1', 'Studies in Indian architecture have been confined to those exploring the building techniques of palaces, temples, and tombs. Little attention has traditionally been paid by scholars to the patterns and influences involved in the making of domestic residences, market places, inns, community halls, courts, and other \'lesser\' buildings. The result is the emergence of a very partial picture of what constitutes architecture in India. This volume se eks to overcome this inadequacy by examining the geographical, historical, and functional aspects of architecture in India. Looking beyond the point of view of dynasties, periods or religions, the book traces the various social and historical developments in the field. Following a multi-disciplinary approach that emphasizes sociological aspects, the volume examines in detail, settlement patterns, the architecture of individual houses and chaityas, as also structural materials used for their construction, in addition to those of palaces, funerary monuments, temples, mosques, and monasteries. While examining the planning and design orientation of peoples and architectural techniques across India, the volume pays special attention to that of western India especially Gujarat and Rajasthan. The author also addresses rural and urban patterns of setlement and the linkages between the two. He explains regional and period-specific phenomena, while also quoting from ancient accounts of towns. These vary from the typical urban and rural houses to the Muslim aristocratic residences and Rajput palaces. Based on extensive fieldwork, the author also documents family histories, lifestyles and usage of space to provide a comprehensive social history of Indian architecture. Complemented by over eighty figures including photographs, plans, and detailed diagrams, this book will interest scholars of architecture, history, sociology, and the informed lay reader', 'V.S. Pramar ', '2007', '87558769 ', 300, 1000, 'upload_image/ARC10.jpg', 'upload_ebook/arc3.txt'),
(5, 'YOGIS, DESTINY & THE WHEEL OF TIME ', '5', 'Contents: Dedication; Acknowledgements; About the author; Preface; Preface to the 2nd edition; 1. That great guru; 2. Profile of a guru\'s life; 3. Prabhu bejoy Krishna Goswami; 4. I meet my guru; 5. Awakened kundalini; 6. Astrological instruction; 7. Pre-destination: The negative side; 8. Rokadia Hanuman Baba; 9. My Jyotish guru-1; 10. My Jyotish guru-2; 11. Pre-destination & divine bliss; 12. Nagari Das Baba; 13. Ranga Avadhoot; 14. Religion of yogis; 15. Caution & warning; 16. Ecstasies spring from fire-1; 17. Ecstasies spring from fire-2; 18. Ecstasies spring from fire-3; 19. Ecstasies spring from fire-4; 20. Ecstasies spring from fire-5; 21. Ecstasies spring from fire-6; 22. The seers; 23. Astrology, when it is an illumination; 24. Memory glows; 25. Why astrology at all?; 26. Poetical guidance; 27. Bliss & confusion; Index.', 'K.N. Rao', '2005', '2589697 ', 285, 300, 'upload_image/ASTRO1.jpg', 'upload_ebook/ASTR1.doc'),
(6, 'You Deserve, We Conserve A Biotechnological Approach to Wild', '3', 'There is a tremendous wealth of mega-biodiversity in the world. But the very existence of this wealth is under threat due to habitat destruction, pushing animals towards inbreeding depression and thereby paving way for their extinction. This has made essential human intervention and assisted reproductive technologies. Thus, the issues of conservation of wildlife and biodiversity have become the need of the hour, especially in terms of policy making at the government level. You deserve, We Conserve: A Biotechnological Approach to Wildlife Conservation contains 16 articles by scientists engaged in research on the conservation of wildlife, role of reproductive technologies and modern approaches being followed in wildlife conservation. It also deals with various techniques used in field conditions such as chemical capture, molecular genetics, ultrasonography, cryopreservation, wildlife forensics, etc. The present book will be of special interest to professionals engaged in forest and environment related activities, particularly wildlife conservationists, students pursuing their career in veterinary discipline of wild animals and policy makers. It will also be useful for nature enthusiasts, who have an interest in wildlif', 'M W Pandit / S Shivaji', '2006', '9788189866', 160, 659, 'upload_image/forest.jpg', 'upload_ebook/forest.docx'),
(7, 'Visual Basic 2005', '17', '\'VB connectivity\'', 'Pearson', '2009', 'VB111', 350, 120, 'upload_image/comp8.jpg', 'upload_ebook/read.pdf'),
(8, 'Java & Xml', '17', '\'Complete Reference\'', 'TATA Mcgerw Hill', '2010', 'JJ123', 1800, 500, 'upload_image/comp9.jpg', 'upload_ebook/java.pdf'),
(9, 'Microsoft Windows Powershell Step By Step', '29', '\'Learn Microsoft Windows PowerShell step by step with hands-on instruction from a leading Microsoft scripting trainer. This guide features self-paced labs, timesaving tips, and dozens of sample scripts', 'Wilson', '2006', '9788120332', 755, 295, 'upload_image/comp6.jpg', 'upload_ebook/wave.doc'),
(10, 'C# Programming', '17', '\'C# is platform independent,includes namespace,garbage collection,automatic memory management', 'Pearson', '1999', 'c#abd', 450, 300, 'upload_image/1861004877.jpg', 'upload_ebook/intro_C#.pdf'),
(11, 'Java Server Programming', '17', '\'jsp uses  html tags and run on java platform\'', 'BPB Prakashan', '2000', 'jsp123', 1800, 560, 'upload_image/1861004656.jpg', 'upload_ebook/Java_2_5th-www.netbks.com.pdf'),
(12, 'Programming with Perl', '17', 'Perl is programming langauge which is not comfortable to handle.', 'Wrox', '1995', 'perl123', 560, 450, 'upload_image/0596000278.jpg', 'upload_ebook/perl.docx'),
(13, 'HTML for world wide web', '19', 'html uses tags,it\'\'s  not case sensitive,work with own html tagswhich must be enclosed.', 'Elizabeth', '2005', 'htmlabc12', 560, 400, 'upload_image/0201354934.jpg', 'upload_ebook/html.pdf'),
(14, 'ASP Server Pages 3.0', '17', 'Active server pages uses xml files ,it run on internet explorer or other browser..', 'Microsoft', '1995', 'asp123', 1150, 950, 'upload_image/1861003382.jpg', 'upload_ebook/asp.doc'),
(15, 'Perl and CGI', '17', 'CGI for graphics purpose', 'Pearson', '1999', 'pc2343', 450, 300, 'upload_image/020135358X.gif', 'upload_ebook/perl1.pdf'),
(16, 'A Biological Survey for the Nation', '27', 'The National Biological Survey will produce the map we need to avoid the\\r\\neconomic and environmental \"train wrecks\" we see scattered across the country.\\r\\nNBS will provide the scientific knowledge America needs to balance the\\r\\ncompatible goals of ecosystem protection and economic progress', 'National Research Council', '1994', '0-309-5860', 224, 450, 'upload_image/biology.gif', 'upload_ebook/g.pdf'),
(17, 'Book of Tea', '23', 'The Philosophy of Tea is not mere aestheticism in the ordinary acceptance of the term, for it expresses conjointly with ethics and religion our whole point of view about man and nature. It is hygiene, for it enforces cleanliness.It represents the true spirit of Eastern democracy by making all its votaries aristocrats in taste. (from \"The Book of Tea\")', 'Kakuzo Okakura', '2008', 'tea1', 80, 100, 'upload_image/bookoftea.jpg', 'upload_ebook/tea.docx'),
(18, 'Coffee : Scrumptious Drinks', '23', 'Every day, millions search for The Perfect Cup of Coffee in caf s, diners, and kitchens around the world. Here, coffee guru Betty Rosbottom offers easy-to-follow recipes guaranteed to please \\r\\nanyone who takes delight in sampling, sipping, and serving exquisite coffee concoctions.', 'Chronicle Books', '2007', 'cofee1', 96, 100, 'upload_image/cofee.jpg', 'upload_ebook/cofee.docx'),
(19, 'Stone Soup', '24', 'A hungry traveler tricks a little old lady into cooking him soup starting with a stone.', 'Marcia Brown', '1970', 'soup45', 120, 350, 'upload_image/stonesoup.jpg', 'upload_ebook/soup.docx'),
(20, 'Pasta Perfection', '22', 'This new series will help you get back into the kitchen and experience the fun of creating sensationalmouth-watering meals thought he simplicity of easy-to-read, step-by-step ...', 'Belina Jeffer', '2004', 'p12', 80, 100, 'upload_image/pasta1.jpg', 'upload_ebook/pasta1.docx'),
(21, 'Bhartiya Vynjano ka khajana', '25', 'Vyanjan made by Sanjeev kapoor,he makes very sweet and delicious dishes', 'Sanjeev Kapoor', '2009', 'vya12', 120, 350, 'upload_image/bhartiya.jpg', 'upload_ebook/Vyanjan.docx'),
(22, 'Descriptious du Cafeier', '23', 'millions search for The Perfect Cup of Coffee in caf s, diners, and kitchens around the world. Here, coffee guru Betty Rosbottom offers easy-to-follow recipes guaranteed to please anyone who takes delight in sampling, sipping, and serving exquisite coffee concoctions.', 'International resource institute', '1996', 'caffee2', 96, 100, 'upload_image/cofee2.jpg', 'upload_ebook/Coffee1.docx'),
(23, 'Your Income-Tax 2010', '8', 'A guide to income tax returns provides information on the most recent tax legislation, tax-filing tips, advice on how to reduce tax liabilities, helpful financial advice, and sample tax forms, worksheets,', 'J K Lasser Institute', '2009', 'it-3433', 848, 1000, 'upload_image/tax1.jpg', 'upload_ebook/Income Tax.pptx'),
(24, 'Your Income-Tax Professional Edition', '8', 'Provides information about filing requirements, exemptions, income, deductions, tax credits, shelters, and tax law.', 'J K Lasser Institute', '2009', 'it-121', 1024, 120, 'upload_image/tax2.jpg', 'upload_ebook/itax2.pptx'),
(25, 'J K Lesser\'s Tax Savings in your Pocket', '8', '*  Save more for your child education now!\r\n   * Increase your retirement savings\r\n   * New deductions, tax breaks, and planning tips', 'John Wiley and Sons', '2002', 'it-122', 212, 300, 'upload_image/tax3.jpg', 'upload_ebook/Saving.pptx'),
(26, 'On Liberty', '8', 'the liberal tradition, revered for his defense of liberal principles and expansive personal liberty.', 'Princeton University Press', '2001', 'li-11', 264, 300, 'upload_image/li1.jpg', 'upload_ebook/lib1.docx'),
(27, 'On Liberty in Focus', '8', 'his book gathers together for the first time J.S. Mill\'\'s On Liberty and a selection of importantessays by the eminent scholars Isaiah Berlin, Alan Ryan, John Rees C.L. Ten\'', 'John Stuart Mill', '2002', 'li-22', 296, 350, 'upload_image/li2.jpg', 'upload_ebook/lib2.docx'),
(28, 'Debugging Microsoft .NET 2.0 Applications', '17', 'Get hands-on instruction for using the tools in Microsoft Visual Studio? 2005 to debug, tune, and test applications. This guide features practical advice and code samples for developers at all levels from a leading authority on improving code. Traditionally, tools for performance tuning, testing applications, and debugging code have been expensive, hard to learn, and difficult to use. While previous versions of Microsoft Visual Studio? have included debuggers and other code-improvement tools, Visual Studio 2005 presents developers with robust and useful tools and processes to help ensure top-quality code. In this guide, an expert on improving code, John Robbins, steps back from the expert-level information that characterized his previous debugging books to present hands-on, practical advice for working developers on how to use the debugging, testing, and tuning features in Visual Studio 2005', 'John Robbins (Wintellect)', '2006', 'net-1', 464, 699, 'upload_image/comp2.jpg', 'upload_ebook/net2005.docx'),
(29, 'The Mad, Mad World of Cricket', '4', 'The funny side of the gentleman?s game?captured by a master cartoonist In India cricket is more than a game; it is a national obsession. And with a World Cup always around the corner, there is no better way to prepare for the excitement of seeing the men in blue in action than with renowned cartoonist Sudhir Dar?s creations.', 'Sudhir Dar', '2005', '0143101846', 96, 125, 'upload_image/c1.jpg', 'upload_ebook/cricket1.pptx'),
(30, 'Dream Team India: The Best World Cup Squad Ever !', '4', 'Are you one of those who just knows India will win the match the moment the game starts? Do you drown yourself in cricket and cricket-related trivia every four years and dream of seeing India win the World Cup? If the answer is ?yes? to any of the above, here is the team that will bring home the Cup for you. ', 'Book shop', '2007', '014333015', 147, 200, 'upload_image/c2.jpg', 'upload_ebook/cricket2.docx'),
(31, 'HOW TO PREPARE FOR QUANTITATIVE APTITUDE FOR CAT', '33', 'More than 3000 questions categorised into three levels of difficulty - LOD1, LOD2 and LOD3 * Notes emphasising relative importance of topics in the CAT, at appropriate places in the book * Short-cut methods to aid faster solutions to problems * Five practice CAT tests (actual CAT questions based on memory)', 'Arun Sharma', '2006', '0070483493', 310, 325, 'upload_image/COMPETITIVE8.jpg', 'upload_ebook/cat1.docx'),
(32, 'Physics', '26', 'Get all you need to know with Super Reviews! Each Super Review is packed with in-depth, student-friendly topic reviews that fully explain everything about the subject.', 'Unknown', '1995', '08', 1000, 495, 'upload_image/p2.jpg', 'upload_ebook/pysics1.pptx'),
(33, 'Thermal Physics', '26', 'The book presents a lucid and systematic exposition of the fundamental principles of Thermal Physics.', 'S.C.Garg', '2001', '0074601342', 412, 163, 'upload_image/p6.jpg', 'upload_ebook/thermal.pptx'),
(34, 'The Rough Guide to the Earth?', '2', 'From the opening and closing of oceans over millions of years to the overnight reshaping of landscapes by volcanoes, the Earth beneath our feet is constantly changing. The Rough Guide to the Earth explores all aspects of our dynamic planet, from the planet?s origins and evolution and the seasons and tides to melting ice caps, glaciers and climate change. Featuring many spectacular images and helpful diagrams, this Rough Guide provides a fascinating and accessible introduction to Earth science.', 'Martin Ince', '2006', '1843535890', 320, 650, 'upload_image/ART3.JPG', 'upload_ebook/Earth science.pptx'),
(35, 'A TEXTBOOK OF COST AND MANAGEMENT ACCOUNTING 8th ed.', '6', ' Student friendly and examination oriented approach # Innovative, comprehensive and systematic presentation of the subject matter # Use of diagrams and exhibits to help students understand concepts easily and clearly # Around 500 solved problems and illustrations with working notes # Solved and unsolved practical questions from various university and professional examinations like BCom, MCom, CA, CS, ICWA, etc. # Objective type questions and select theory questions # Ideal for self study.', 'M N ARORA', '2006', '812910945', 400, 395, 'upload_image/busi7.jpg', 'upload_ebook/cost_a_c.pptx'),
(36, 'Computer Networks, 4th Ed', '20', '(38, \'Computer Networks, 4th Ed\', \'46\', \'updated, this classic bestseller, now in its fourth edition, reflects the newest and most important networking technologies with a special emphasis on wireless networking. The material on wireless networks includes detailed coverage of 802.11, wireless local loops, 2G and 3G cellular networks, BluetoothTM, WAP, i-mode, and others. It prepares students to work with wireless technologies in networks of all sizes-both local and wide area networks. There is also lots of new material on applications, including the Web, Internet radio, voice over IP, and video on demand. Finally, an entirely new chapter is devoted exclusively to security to help students deal with one of the most crucial topics in networking today. Despite a large amount of material added on wireless networks, fixed networks have not been ignored-topics covered include ADLS, Internet over cable, gigabit Ethernet, peer-to-peer networks, NAT, and MPLS. Each chapter follows a consistent approach. The author first presents the key principles-underlying hardware at the physical layer up through the top-level application layer-and then illustrates them utilizing real-world examples drawn from the Internet and wireless networks, all in Tanenbaum\'\'s classic entertaining style.', 'ANDREW S.TANENBAUM', '2007', '8120321758', 912, 325, 'upload_image/comp7.jpg', 'upload_ebook/SLIP and PPP.docx'),
(37, 'Investing for Beginners', '6', 'Investment Risks and Rewards: How to overcome the fear of investment risk and how taking a few risks can reap long-term benefits. Your Starting Point: How to assess your investment goals. Diversification: How to allocate your money among various investment avenues for safety, steady income and capital growth. How to Pick Stocks: How to use fundamental indicators of value to pick good stocks. Investing in Bonds: Why you need bonds in your portfolio and which bonds to choose. Mutual Funds Primer: What they are and how to select the ones that suit your needs. Disinvesting: How to figure out when it\'\'s time to get out of an investment. Keeping in Touch: How to understand financial information. Keeping Track of Your Investments: Simple record-keeping tricks.', 'Kathy Kristof', '2006', '8170944821', 140, 195, 'upload_image/business.jpg', 'upload_ebook/Investment.docx'),
(38, 'Games Lawyers need to Play - Moot Court Problems ', '8', 'The Raj Anand Moot Court Competition was initiated in 1998 with its focus centrally on Intellectual Property law. Over the years the scope of the Competition has widened though Intellectual Property remains the core area. One of its primary aims is to sharpen the skills of ?mooting? among aspiring lawyers. Games Lawyers Need to Play brings together the Problems and ten of the finest Memorials of the Competition. Each chapter deals with a specific year beginning with 2004 and going back to 1998. The problems deal with various aspects of Intellectual Property but are ?out of ordinary?, to enable participants to combine good quality research with creativity and originality. The book has a foreword by Judge Michael Fysh, QC, SC. The Introduction is written by Pravin Anand.', 'Raj Anand Moot Court Competition ', '2006', '818028025X', 424, 595, 'upload_image/lawyer.jpg', 'upload_ebook/lawyer.doc'),
(39, 'An ABC of Indian Culture : A Personal Padayatra of Half a Ce', '2', 'An authentic interpretation of over 400 Indian concepts and practices derived from a personal exploration of India over a period of 50 years. Arranged alphabetically, these range from key traditional ones such as \'dharma\' to more contemporary ones such as \'secularism\' and \'democracy\' to popular ones such as Indian films! \'Padayatra\' is a journey on foot and each selected concept and practice is treated as a stepping-stone in a journey to understanding what India is all about. Descriptions are based on personal experience maturing over half a century, and written in cultural essays that present the essence of the Indian tradition. Malformations of the tradition are explained but without polemics. The book is a sensitive, cultured and sophisticated introduction to India for an intelligent and serious readership, and will be invaluable also as a handy reference text for libraries, cultural exchange agencies, business orientation courses especially for those anticipating an extended interaction with India, and the like.', 'Peggy Holroyde', '2005', '818820417X', 480, 595, 'upload_image/cul1.jpg', 'upload_ebook/culture1.docx'),
(40, 'HOW TO PREPARE FOR THE CAT, 2/E ', '33', 'More than 3000 questions categorised into three levels of difficulty - LOD1, LOD2 and LOD3 * Notes emphasising relative importance of topics in the CAT, at appropriate places in the book * Short-cut methods to aid faster solutions to problems * Five practice CAT tests (actual CAT questions based on memory)', 'MUNEER, MUHAMED', '2006', '0070528462', 380, 499, 'upload_image/CAT.jpg', 'upload_ebook/cat2.docx'),
(41, 'Safe and Simple Steps to Fruitful Meditation', '10', 'Meditation has been widely accepted as a tested method to reduce mental tensions and achieve inner peace and tranquillity, leading to spiritual growth. In this book, various techniques are presented in an easy step-by-step manner, starting with simple techniques that can be practised for just a few minutes', 'Dr. N. K. Srinivasan', '2003', '8122308910', 150, 80, 'upload_image/yoga1.jpg', 'upload_ebook/yoga1.docx'),
(42, 'STATISTICS FOR BUSINESS AND ECONOMICS', '7', 'This book covers various aspects of the field of statistics in 20 chapters, making each topic relevant and useful. A unique feature of this book is the inclusion of databases to be utilized by computers and software statistical packages. Contents - Introduction ? Statistical Terms and Concepts ? Data Collection ? Data Presentation ? Data Characteristics: Descriptive Measures ? Basic Concepts of Probability ? Probability Distribution ? Sampling Distribution ? Statistical Inference: Estimation ? Hypothesis Testing I ? Hypothesis Testing II ? Hypothesis Testing III ? Hypothesis Testing IV (Comparing Several Proportions Chi Square Test) ? Hypothesis Testing V(Comparing Several Population Means) One-Way Analysis of Variance (ANOVA) ? Regression and Correlation Analysis ? Multiple Regression ? Non-Parametric Statistics ? Time Series Analysis ? Statistical Decision Making ? Statistical Quality.', 'J S CHANDAN ', '2007', '8125904182', 212, 372, 'upload_image/9062999.jpg', 'upload_ebook/maths.doc'),
(43, 'Himalayan Vignettes : The Garhwal and Sikkim Treks', '14', 'In the 1950s Himalayan trekking was not as popular as it is now. The network of roads deep into the Himalayas did not exist and the hills were more pristine and undeveloped.', 'Kekoo Naoroji ', '2004', '8188204234', 300, 2000, 'upload_image/1445.jpg', 'upload_ebook/track1.txt'),
(44, 'Insight Guide Iceland', '9', 'A travel series unlike any other, Insight Guides go beyond the sights and into reality.', 'Perrottet, Tony (Edt)', '0887291767', '0887291767', 300, 935, 'upload_image/t2.jpg', 'upload_ebook/tour1.txt'),
(45, 'SPIDER MAN', '16', 'second 100 issues as May Mayday Parker learns that she can\'t escape her great responsibilities! Featuring the original Hobgoblin, the Black Tarantula and more! Plus: the saga of Spider-Girl! Collects Amazing Spider-Girl #0-6. ', 'Marvel Comics ', '2001', '0785123415', 160, 606, 'upload_image/comic1.jpg', 'upload_ebook/spider.doc'),
(46, 'The Missing ', '15', 'The woman missing for five years. The Crime Scene Investigator who finds her. And the serial killer who wants them both dead? When Boston CSI Darby McCormick finds a raving and emaciated woman hiding at the scene of a violent kidnap, she runs a DNA search to identify the Jane Doe. The result confirms that the woman was abducted five years earlier and has somehow managed to escape from the dungeon in which she?s been caged. With a teenage couple also missing and the Jane Doe seriously ill, the clock is ticking for Darby as she hunts for the dungeon before anyone else disappears or dies. And when the FBI takes over the investigation, it becomes clear that a sadistic serial killer has been on the prowl for decades ? and is poised to strike again at any moment. A killer with links to horrors that Darby has desperately tried to bury in her past?\r\n\r\n', 'Chris Mooning ', '2006', '0141030852', 416, 240, 'upload_image/fic1.jpg', 'upload_ebook/fiction1.docx'),
(47, 'Bhagavata Purana ', '11', 'Even after he has composed the awesome Mahabharata, the Maharishi Vyasa finds no peace.', 'Ramesh Menon ', '2004', '8129109956', 1500, 995, 'upload_image/re7.jpg', 'upload_ebook/bagvad.txt'),
(48, 'Bill and Dave: How Hewlett and Packard Built the World`s Gre', '12', 'This is not a history of the Hewlett-Packard Company, or a book of business theory, or a definitive biography of William Hewlett and David Packard. I have chosen to write this book this way because of the desperate need the business world has right now for an archetype of enlightened management, enduring quality, and perpetual innovation. It is not enough to simply tell the story of Hewlett, Packard and their company. What are needed are the why? and the how?? The most momentous first meeting in modern business history took place in the unlikely setting of a bench beside a football field, between two Stanford University students in pads and helmets. A few years later, in 1938, Bill Hewlett and Dave Packard were working in a small garage in Palo Alto, California, building their first product, an audio oscillator. It was the start not only of a legendary company but also of an entire way of life in Silicon Valley?and, ultimately, of our modern digital age. Acclaimed journalist Michael S. Malone is the first to get the full story, based on unlimited and exclusive access to corporate and private archives, along with hundreds of employee interviews. He draws on new material to show how some of the most influential products of our time were invented and how a culture of innovation led HP to unparalleled success for decades. Malone also shows what was really behind the groundbreaking management philosophy??the HP way??that put people ahead of products or profits. Bill and Dave, at its heart, is a character study of two amazing men who revealed their character in how they structured their business, in the men and women they hired, and, most of all, in the power they entrusted to even the lowliest HP employee. Their story is something of a miracle?one from which we can never stop learning.', 'Michael S. Malone ', '2005', '0143102397', 345, 500, 'upload_image/MANAGEMENT2.jpg', 'upload_ebook/mgmt1.pptx'),
(49, 'PAKISTAN`S DRIFT INTO EXTREMISM', '13', 'The book studies the rise of religious extremism in pakistan and analyses its connection to the pakistani army policies and fluctuating US - Pakistani Relationship. It is a book which readers as well as students of Political Science and history will enjoy thoroughly.', 'Hassan Abbas ', '2001', '8182741580', 350, 600, 'upload_image/terr2.jpg', 'upload_ebook/terror1.txt'),
(50, 'Learning SQL on SQL Server 2005 : The Simplest Way', '18', 'Anyone who interacts with today?s modern databases needs to know SQL (Structured Query Language), the standard language for generating, manipulating, and retrieving database information. In recent years, the dramatic rise in the popularity of relational databases and multiuser databases has fueled a healthy demand for application devel?opers and others who can write SQL code efficiently and correctly. If you?re new to databases or need a SQL refresher, Learning SQL on SQL Server 2005 is an ideal step-by-step introduction to this database query tool, with everything you need for programming SQL using Microsoft?s SQL Server 2005?one of the most powerful and popular database engines used today. Plenty of books explain database theory. This guide lets you apply the theory as you learn SQL. You don?t need prior database knowledge, or even prior computer knowledge. Based on a popular university-level course designed by authors Sikha Saha Bagui and Richard Walsh Earp, Learning SQL on SQL Server 2005 starts with very simple SQL concepts, and slowly builds into more complex query development. Every topic, concept, and idea comes with examples of code and output, along with exercises to help you gain proficiency in SQL and SQL Server 2005. With this book, you?ll learn: * Beginning SQL commands, such as how and where to type an SQL query, and how to create, populate, alter, and delete tables * How to customize SQL Server 2005?s settings and about SQL Server 2005?s functions * About joins, a common database mechanism for combining tables * Query development, the use of views and other derived structures, and simple set operations * Subqueries, aggregate functions, and correlated subqueries, as well as indexes and constraints that can be added to tables in SQL Server 2005 Whether you?re a self-learner who has access to the new Microsoft database, working on SQL Server with access at your company, or a computer science student or MIS student, Learning SQL on SQL Server 2005 will get you up to speed on SQL in no time.\r\n\r\n', 'Sikha Saha Bagui, Richard Walsh Earp ', '2005', '9788184040', 360, 350, 'upload_image/comp10.jpg', 'upload_ebook/sql1.docx');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(4) NOT NULL,
  `cat_nm` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_nm`) VALUES
(1, 'Architecture'),
(2, 'Art And Culture'),
(3, 'Forest'),
(4, 'Sports'),
(5, 'Astrology'),
(6, 'Business'),
(7, 'Economics'),
(8, 'Low Books'),
(9, 'Tourism'),
(10, 'Yoga'),
(11, 'Religion'),
(12, 'Management'),
(13, 'Terrorism'),
(14, 'Tracking'),
(15, 'Fiction'),
(16, 'Comics'),
(17, 'Computer'),
(18, 'Cooking'),
(19, 'Science'),
(20, 'Compititive Exam'),
(21, 'tess');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `con_id` int(4) NOT NULL,
  `con_nm` varchar(25) NOT NULL,
  `con_email` varchar(35) NOT NULL,
  `con_query` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `con_nm`, `con_email`, `con_query`) VALUES
(1, 'Hiren', 'hiru@gmail.com', 'English Novels...'),
(2, 'Shital', 'shital@yahoo.com', 'Are you send me medical books?'),
(3, 'Manali', 'manali@yahoo.com', 'Java Complete Reference is available?'),
(4, 'Rina', 'rina@gmail.com', 'Artificial Intelligence');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

CREATE TABLE `shipping_details` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `address` text NOT NULL,
  `postal_code` bigint(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `f_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_details`
--

INSERT INTO `shipping_details` (`id`, `name`, `address`, `postal_code`, `city`, `state`, `phone`, `f_id`) VALUES
(1, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897, 'sanjeev'),
(2, 'sanjeev kumar', ' 141 delhi', 110009, 'delhi', 'delhi', 9015501897, 'sanjeev'),
(3, 'sk moinuddin', 'Vill-Baramuria ,P.S-Galsi, P.O-Chakmuria', 713406, 'Baroda', 'Gujarat', 9775355853, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `subcat_id` int(4) NOT NULL,
  `parent_id` int(4) NOT NULL,
  `subcat_nm` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`subcat_id`, `parent_id`, `subcat_nm`) VALUES
(1, 1, 'Architecture'),
(2, 2, 'Art And Culture'),
(3, 3, 'Forest'),
(4, 4, 'Sports'),
(5, 5, 'Astrology'),
(6, 6, 'Business'),
(7, 7, 'Economics'),
(8, 8, 'Low Books'),
(9, 9, 'Tourism'),
(10, 10, 'Yoga'),
(11, 11, 'Religion'),
(12, 12, 'Management'),
(13, 13, 'Terrorism'),
(14, 14, 'Tracking'),
(15, 15, 'Fiction'),
(16, 16, 'Comics'),
(17, 17, 'Programming'),
(18, 17, 'Database'),
(19, 17, 'Web-Design'),
(20, 17, 'Networking'),
(22, 18, 'Pasta'),
(23, 18, 'Tea - Coffee'),
(24, 18, 'Soup - Sauce'),
(25, 18, 'Vegetarian Item'),
(26, 19, 'Physics'),
(27, 19, 'Biology'),
(28, 19, 'Medical'),
(29, 17, 'O.S.'),
(33, 20, 'CAT'),
(31, 20, 'GMAT'),
(32, 20, 'MBA'),
(34, 20, 'BBA'),
(35, 21, 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(4) NOT NULL,
  `u_fnm` varchar(35) NOT NULL,
  `u_unm` varchar(25) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_gender` varchar(7) NOT NULL,
  `u_email` varchar(35) NOT NULL,
  `u_contact` varchar(12) NOT NULL,
  `u_city` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_fnm`, `u_unm`, `u_pwd`, `u_gender`, `u_email`, `u_contact`, `u_city`) VALUES
(1, 'Hiren Bhaliya', 'Hiren', 'hiru', 'Male', 'hiru@gmail.com', '9925136522', 'Rajkot'),
(2, 'Shital', 'shital', 'shital', 'Female', 'shital@yahoo.com', '9985689856', 'Rajkot'),
(3, 'Lina', 'Lina123', '123', 'Female', 'lina123@gmail.com', '9456325663', 'Amreli'),
(4, 'admin', 'admin', 'admin123', 'Female', 'admin@gmail.com', '9859632561', 'Rajkot'),
(5, 'Kaushik', 'Darcy', '160160160', 'Male', 'darcy@gmail.com', '9016388880', 'Rajkot'),
(6, 'sanjeev', 'kumar', 'sanjeev', 'Male', 'sanjeevtech2@gmail.com', '9015501897', 'Ahmedabad'),
(7, 'Sk Moinuddin', 'Sk Moinuddin', '1234', 'Male', 'skmoin@gmail.com', '9775355852', 'Bhavnagar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `b_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `con_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `subcat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `join`
--
CREATE DATABASE IF NOT EXISTS `join` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `join`;

-- --------------------------------------------------------

--
-- Table structure for table `empdetails`
--

CREATE TABLE `empdetails` (
  `Employee_ID` int(20) DEFAULT NULL,
  `Employee_Name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empdetails`
--

INSERT INTO `empdetails` (`Employee_ID`, `Employee_Name`) VALUES
(1, 'JOHN'),
(2, 'Samantha'),
(3, 'Hakuna'),
(4, 'silky'),
(5, 'Ram'),
(6, 'Arpit'),
(7, 'Lily'),
(8, 'Sita'),
(9, 'Farah'),
(10, 'Jerry');

-- --------------------------------------------------------

--
-- Table structure for table `empsalary`
--

CREATE TABLE `empsalary` (
  `Employee_ID` int(10) DEFAULT NULL,
  `Employee_Name` varchar(30) DEFAULT NULL,
  `Employee_Salary` bigint(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empsalary`
--

INSERT INTO `empsalary` (`Employee_ID`, `Employee_Name`, `Employee_Salary`) VALUES
(1, 'John', 50000),
(2, 'Samanta', 120000),
(3, 'Hakuna', 75000),
(4, 'Silky', 25000),
(5, 'Ram', 150000),
(6, 'Arpit', 80000),
(11, 'Rose', 90000),
(12, 'Sakshi', 45000),
(13, 'Jack', 250000);
--
-- Database: `moinuddin`
--
CREATE DATABASE IF NOT EXISTS `moinuddin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `moinuddin`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_name` varchar(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `address` varchar(20) NOT NULL,
  `contact_no` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_name`, `age`, `address`, `contact_no`) VALUES
('sanket', 21, '', 12345),
('amin', 22, '', 2589),
('ikbal', 25, '', 78456),
('rubel', 20, '', 90642);

-- --------------------------------------------------------

--
-- Table structure for table `empolyee`
--

CREATE TABLE `empolyee` (
  `e_id` varchar(10) NOT NULL,
  `e_name` varchar(20) NOT NULL,
  `address` varchar(30) DEFAULT NULL,
  `contact_no` int(15) DEFAULT NULL,
  `salary` int(15) DEFAULT NULL,
  `d_no` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `roll_no` int(9) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `contact_no` int(12) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `percentage` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`roll_no`, `name`, `address`, `contact_no`, `age`, `percentage`) VALUES
(1, 'Moinuddin', 'Burdwan', 2147483647, 21, '88%'),
(1, 'Aminur', 'Murshidabad', 2147483647, 22, '82%'),
(3, 'sanket', 'Hooghly', 90646785, 23, '88%'),
(4, 'ikbal', 'Burdwan1', 7856, 20, '80%');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empolyee`
--
ALTER TABLE `empolyee`
  ADD PRIMARY KEY (`e_id`);
--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `mytable1`
--

CREATE TABLE `mytable1` (
  `id` int(4) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(44) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mytable1`
--
ALTER TABLE `mytable1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mytable1`
--
ALTER TABLE `mytable1`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"join\",\"table\":\"empdetails\"},{\"db\":\"join\",\"table\":\"empsalary\"},{\"db\":\"advance_java\",\"table\":\"registration\"},{\"db\":\"assignment_no_1\",\"table\":\"product_master\"},{\"db\":\"assignment_no_1\",\"table\":\"client_master\"},{\"db\":\"mca_b\",\"table\":\"registration\"},{\"db\":\"university\",\"table\":\"master\"},{\"db\":\"university\",\"table\":\"teacher\"},{\"db\":\"university\",\"table\":\"department\"},{\"db\":\"moinuddin\",\"table\":\"student\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-04-28 20:36:47', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `resume`
--
CREATE DATABASE IF NOT EXISTS `resume` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `resume`;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`email`) VALUES
('skmoinuddin2k@gmail.com'),
('smnvcdg@gmail.com'),
('skmoinuddin2k@gmail.com'),
('skmoinuddin2k@gmail.com'),
('smnvcdg@gmail.com'),
('subhajitsingha145@gmal.com'),
('skmoinuddin2k@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `email`, `mobile`) VALUES
('moinggi', 'skkhhgmoi', '2553698'),
('Sk Mahmudul Hassan', 'skmoinuddin2k@gmail.com', '9654785236'),
('Moinuddin', 'skmoinuddin2k@gmail.com', '9064629116'),
('joinal', 'aminurislamm4@gmail.com', '987456332');
--
-- Database: `shopping`
--
CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopping`;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `email`, `phone`, `password`) VALUES
('nirmol', 'mofis@gmail.com', '57845256', '85632'),
('mohig', 'mohig@gmail.com', '57845256', '85632');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`email`);
--
-- Database: `student`
--
CREATE DATABASE IF NOT EXISTS `student` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student`;

-- --------------------------------------------------------

--
-- Table structure for table `stu1`
--

CREATE TABLE `stu1` (
  `name` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  `age` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stu1`
--

INSERT INTO `stu1` (`name`, `id`, `age`) VALUES
('moin', '011', 22),
('rakesh', '02', 52);

-- --------------------------------------------------------

--
-- Table structure for table `stu_2`
--

CREATE TABLE `stu_2` (
  `Name` varchar(20) DEFAULT NULL,
  `Contact` bigint(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Password` varchar(24) DEFAULT NULL,
  `Skill` varchar(21) DEFAULT NULL,
  `City` varchar(22) DEFAULT NULL,
  `Gender` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stu_2`
--

INSERT INTO `stu_2` (`Name`, `Contact`, `Address`, `Email`, `Password`, `Skill`, `City`, `Gender`) VALUES
('Sk Moinuddin', 9064629116, 'Gt road vill- Baramu', 'skmoinuddin2k@gmail.com', '258369', 'php', 'Kolkata', 'M'),
('Sanket Mal', 9163888869, 'Vill-Madhusudhanpur,', 'sanketmal2k@gmail.com', '78521', 'java,C++', 'Delhi', 'M'),
('Md Aminur', 9163888856, 'Murshidabad', 'mdaminur@gmail.com', '124563', 'php', 'select', ''),
('Md Aminur', 9163888856, 'Murshidabad', 'mdaminur@gmail.com', '124563', 'php', 'select', ''),
('Ashif Ikbal', 9163888856, 'Burdwan', 'ashifikbal@gmail.com', '78596', 'java', 'Kolkata', 'M'),
('Rakesh Ranjan', 6985696323, 'Jharkhand', 'rakeshranjan@gmail.com', '456321', 'C++', 'Delhi', 'M');
--
-- Database: `university`
--
CREATE DATABASE IF NOT EXISTS `university` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `university`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `d_no` int(2) NOT NULL,
  `d_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`d_no`, `d_name`) VALUES
(1, 'mca'),
(2, 'mtech'),
(3, 'css'),
(4, 'BT');

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `Product_No` varchar(10) DEFAULT NULL,
  `Description` varchar(20) DEFAULT NULL,
  `Profit_Percent` int(20) DEFAULT NULL,
  `Unit_Measure` varchar(20) DEFAULT NULL,
  `Oty_On_Hand` bigint(25) DEFAULT NULL,
  `Recoder_Lvl` bigint(20) DEFAULT NULL,
  `Sell_Price` bigint(20) DEFAULT NULL,
  `Cost_Price` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`Product_No`, `Description`, `Profit_Percent`, `Unit_Measure`, `Oty_On_Hand`, `Recoder_Lvl`, `Sell_Price`, `Cost_Price`) VALUES
('P00001', 'T_SHIRT', 5, 'PIECE', 200, 50, 350, 250),
('P0345', 'SHIRTS', 6, 'PIECE', 150, 50, 500, 350),
('P06734', 'COTTON JEANS', 5, 'PIECE', 100, 20, 600, 450),
('P07865', 'JEANS', 5, 'PIECE', 100, 20, 750, 500),
('P07868', 'TROUSERS', 2, 'PIECE', 150, 20, 850, 550),
('P07885', 'PULL OVERS', 3, 'PIECE', 80, 30, 700, 450),
('P07965', 'DENIM SHIRTS', 4, 'PIECE', 100, 40, 350, 250),
('P07975', 'LYCRA TOPS', 5, 'PIECE', 70, 30, 300, 175),
('P08865', 'SHIRTS', 5, 'PIECE', 75, 30, 450, 300);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` int(2) NOT NULL,
  `t_name` varchar(20) DEFAULT NULL,
  `dept_no` int(2) DEFAULT NULL,
  `salary` bigint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `t_name`, `dept_no`, `salary`) VALUES
(1, 'Moinudddin', 1, 80000),
(2, 'sanket', 2, 40000),
(3, 'aminur', 3, 70000),
(4, 'ikbal', 4, 60000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`d_no`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `dept_no` (`dept_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`dept_no`) REFERENCES `department` (`d_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
