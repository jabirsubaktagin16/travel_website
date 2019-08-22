-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Generation Time: Aug 22, 2019 at 12:45 PM
=======
-- Generation Time: Aug 22, 2019 at 01:17 PM
>>>>>>> 38f60f72630d61882902b0606807cde5f92f5d0e
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vromon_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `PlaceName` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Tag` varchar(100) NOT NULL,
  `DateTime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`ID`, `UserID`, `Title`, `PlaceName`, `Description`, `Tag`, `DateTime`) VALUES
(1, 2, 'Dhaka Tour', 'Shishu Park', 'I visited Shishu Park in Dhaka City and it was an amazing tour', 'park', '2019-08-22 17:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Description` text NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`ID`, `Name`, `Country`, `State`, `Description`, `Image`) VALUES
(1, 'Barisal', 'Bangladesh', NULL, '', 'images\\destination\\barishal.jpg'),
(2, 'Chittagong', 'Bangladesh', NULL, '', 'images\\destination\\chittagong.jpg'),
(3, 'Dhaka', 'Bangladesh', NULL, '', 'images\\destination\\dhaka.jpg'),
(4, 'Khulna', 'Bangladesh', NULL, '', 'images\\destination\\khulna.jpg'),
(5, 'Mymensingh', 'Bangladesh', NULL, '', 'images\\destination\\mymen.jpg'),
(6, 'Rajshahi', 'Bangladesh', NULL, '', 'images\\destination\\raj.jpg'),
(7, 'Rangpur', 'Bangladesh', NULL, '', 'images\\destination\\rangpur.jpg'),
(8, 'Sylhet', 'Bangladesh', NULL, '', 'images\\destination\\syl.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `ID` int(11) NOT NULL,
  `DestinationID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Title` varchar(700) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`ID`, `DestinationID`, `Name`, `Image`, `Title`, `Description`) VALUES
(1, 2, 'Bandarban', 'images\\district\\cover\\bandarban.jpg', '', 'Bandarban, is a district in South-Eastern Bangladesh, and a part of the Chittagong Division.It is one of the three hill districts of Bangladesh and a part of the Chittagong Hill Tracts.'),
(2, 2, 'Chittagong', 'images\\district\\cover\\chittagong.jpg', '', 'Chittagong, is a major coastal city and financial centre in southeastern Bangladesh.'),
(4, 8, 'Sylhet', 'images\\district\\cover\\sylhet.jpg', '', 'Sylhet, is a metropolitan city in northeastern Bangladesh. It is the administrative seat of Sylhet Division. The city is located on the right bank of the Surma River in northeastern Bengal.'),
(5, 2, 'Cox\'s Bazar', 'images\\district\\cover\\cox_bazar.jpg', '', 'Cox\'s Bazar is a city, fishing port, tourism centre and district headquarters in southeastern Bangladesh. The beach in Cox\'s Bazar is sandy and has a gentle slope; with an unbroken length of 120 km (75 mi).'),
(6, 2, 'Comilla', 'images\\district\\cover\\comilla.jpg', '', 'Comilla, officially known as Cumilla, is a city in the Chittagong Division of Bangladesh, located along the Dhaka-Chittagong Highway. It is the administrative centre of the Comilla District, part of the Chittagong Division.'),
(7, 3, 'Dhaka', 'images\\district\\cover\\dhaka.jpg', '', 'Dhaka, formerly known as Dacca, is the capital and largest city of Bangladesh. It is one of the largest and most densely populated cities in the world,'),
(8, 3, 'Gazipur', 'images\\district\\cover\\gazipur.jpg', '', 'Gazipur is a city in central Bangladesh. It is near the Dhaka.'),
(9, 8, 'Sree Mangal', 'images\\district\\cover\\sree_mangal.jpg', '', 'Srimangal is an Upazila of Maulvibazar District in the Sylhet Division of Bangladesh.'),
(10, 4, 'Khulna', 'images\\district\\cover\\khulna.jpg', '', 'Khulna is the third-largest city of Bangladesh. It is the administrative seat of Khulna District and Khulna Division. As of the 2011 census, the city has a population of 663,342. The encompassing Khulna metro area had an estimated population of 1.022 million as of 2014.'),
(11, 4, 'Jessore', 'images\\district\\cover\\jessore.jpg', '', 'Jessore, officially known as Jashore,is a city in south-western Bangladesh. Jashore town consists of 9 wards and 73 mahalls. Jessore municipality was established in 1864. It had a population of 201,796 at the 2011 census. '),
(12, 2, 'Rangamati', 'images\\district\\cover\\rangamati.jpg', '', 'Rangamati is the administrative headquarters of Rangamati Hill District in the Chittagong Hill Tracts of Bangladesh. It is also a capital city of Chittagong Hill Tracts. The district is administered by an office named as District Administration, Rangamati.'),
(13, 8, 'Sunamganj', 'images\\district\\cover\\sunamganj.jpg', '', 'Sunamganj is a district located in north-eastern Bangladesh within the Sylhet Division.');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `ID` int(11) NOT NULL,
  `DistrictID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Tag` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Location` text NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`ID`, `DistrictID`, `Name`, `Tag`, `Image`, `Location`, `Description`) VALUES
(1, 1, 'Nafakhum', 'Waterfall', 'images\\place\\bandarban\\nafakhum.jpg', 'The falls are located in a remote area two hours\' walking distance from Remakree bazar, Thanchi Upazila, Bandarban District. In the rainy season while water level increases, navigation by boat to Ngafakhong is about 20-25 minutes journey which can be hired from Remaikree estuary.', 'Nafakhum is one of the most beautiful waterfalls in Bangladesh and an excellent place to travel. Every traveler should have a tour plan to visit this beautiful tourism spot of Bandarban at least once and then they will feel to visit that travel spot again and again.'),
(2, 4, 'Jaflong', '', 'images\\place\\sylhet\\jaflong.jpg', 'It is located in Gowainghat Upazila of Sylhet District and situated at the border between Bangladesh and the Indian state of Meghalaya, overshadowed by subtropical mountains and rainforests. It is about 60 km from Sylhet town and takes two hours drive to reach there', 'Jaflong is a hill station and tourist destination in the Division of Sylhet, Bangladesh. It is known for its stone collections and is home of the Khasi tribe.'),
(3, 2, 'Port of Chittagong', 'Port', 'images\\place\\chittagong\\chittagong_port.jpg', 'Port of Chittagong is located in Port Internal Rd, Chittagong.', 'The Port of Chittagong is the busiest seaport on the coastline of the Bay of Bengal, and the second busiest in the overall region of countries dependent on the Bay of Bengal. According to Lloyd\'s, it ranked as the 71st busiest port in the world in 2017 Located in the Bangladeshi port city of Chittagong and on the banks of the Karnaphuli River, the port of Chittagong handles 90% of Bangladesh\'s export-import trade, and has been used by India, Nepal and Bhutan for transshipment.'),
(4, 1, 'Nilgiri Hill Resort', 'resort', 'images\\place\\bandarban\\Nilgiri.jpg', 'Nilgiri Hill Resort is located in Bandarban-Thanchi Road, Nilgiri, Bandarban.', 'Nilgiri is one of the tallest peaks and beautiful place in Bangladesh. Surrounded by beautiful hilly natural views and clouds most of the time. An esthetic place for enjoying serenity with ultimate relaxation away from city boredom.You will find yourself in the embrace of the clouds. Its located in Thansi Upozilla in Bandarban district which is lies 48 km away from the Bandarban town. There is beautiful resort in the top of the mountain maintained by Bandarban.	'),
(5, 1, 'Boga Lake', 'Lake', 'images\\place\\bandarban\\boga-lake.jpg', 'Bogakain Lake, also called Baga Lake or Boga Lake, is a lake located in Ruma Upazila in the hill district Bandarban.', 'Bogakain Lake, also called Baga Lake or Boga Lake, is a lake located in Ruma Upazila in the hill district Bandarban, Bangladesh. It is a natural sweet and deep water lake. Its height from sea level is nearly 1,246 feet (380 m). Geologists believe that it was created by collection of rain water in summer. The lake is irregular in shape. A team of geologists surveyed this lake in 1973. They found the lake\'s water to be too acidic for any form of life. By the year 1995, the lake\'s water became abundant with plants and fish.	'),
(6, 1, 'Keokradong', 'Peak,Hill', 'images\\place\\bandarban\\keokradong.jpg', 'Keokradong is located in Ruma, Bandarban.', 'Keokradong is a peak located in Bandarban, Bangladesh, with an elevation of 986 metres (3,235 ft).[2] Some sources claim it as the highest point of Bangladesh. On the top of Keokradong there is a small shelter and a signboard put up by Bangladesh Army proclaiming the elevation to be 967 metres (3,173 ft).'),
(7, 1, 'Nilachal', 'hill', 'images\\place\\bandarban\\nilachal.jpg', 'Nilachal is located in Bandarban-Thanchi Road, Bandarban, Bangladesh.', 'Nilachal is special for spectacular view from the hill apex and taking photos.It is the nearest tourist spot from Bandarban, situated at Tiger para. It stands 2000 feet above sea level and 5 kilometer away from the Bandarban town. Total glance of Bandarban town and a vast photographic hillside can be seen from here.	'),
(8, 1, 'Chimbuk Hill', 'hill', 'images\\place\\bandarban\\chimbuk.jpg', 'The location of Chimbuk hill, 26 kilometers from Bandarban district town.', 'Chimbuk Hill is one of the highest hills in Bangladesh is one of the more familiar spots in Bandarban. It is just 26 kilometers away from Bandarban Sadar. Chimbuk hill is approximately 2500 feet high above the sea level.'),
(9, 1, 'Golden Temple of Bandarban', 'mondir temple', 'images\\place\\bandarban\\shorno_mondir.jpg', 'Golden Temple is located close to Balaghata town in Bandarban city', 'The Buddha Dhatu Jadi (also known as the Bandarban Golden Temple) is located close to Balaghata town, in Bandarban City, in Bangladesh. Dhatu are the material remains of a holy person, and in this temple the relics belong to Buddha. It is the largest Theravada Buddhist temple in Bangladesh and has the second-largest Buddha statue in the country. The Bandaban Golden Temple belongs to the Theravada Buddhism order, which is practiced by the Marma indigenous people, a dominant ethnic group of Bandarban. It was built in 2000 in Arakanese architecture, an adoption of the South East Asia style.'),
(10, 1, 'Meghla Tourism Complex', 'parjatan', 'images\\place\\bandarban\\meghla-lake.jpg', 'Meghla Tourism Complex is located in Bandarban Hill area of Chittagong ', 'Meghla Tourism Complex is one of the most amazing tourist spots for tourists coming from all over the country. Meghla is a neighboring area of the Bandarban hill district council on the gateway of Bandarban; it is maintained by district administration. It is 4 km away from the town on the road to Keranihat, which has a mini-safari-park, a zoo, a place for boat journey, a hanging bridge and artificial lake at the bottom of the hills. It is a popular spot for tourists & often visited by many for pleasure.'),
(11, 2, 'Foy\'s Lake', 'lake park', 'images\\place\\chittagong\\Foys-Lake.jpg', 'Foy\'s Lake is a man-made lake in Chittagong, Bangladesh.', 'Foy\'s Lake is a man-made lake in Chittagong, Bangladesh. It was created in 1924 by constructing a dam across the stream that came down from the hills in the northern part of Chittagong. The purpose of creating an artificial lake was to provide water to the residents of railway colony. It was named after Mr Foy who was a Railway engineer and believed to materialize the project. Pahartali was basically a railway town with workshop, yard and shed. A good number of railway employees live there. Presently, a carriage workshop, diesel workshop, loco shed, laboratory, stores, electric workshop, school (established in 1924) are located. Concord groups gate to Foy\'s Lake, in the opposite direction of USTC. The area belongs to Railway. However, an amusement park, managed by the Concord Group, is located here.		'),
(12, 2, 'Chittagong War Cemetery', 'cemetery', 'images\\place\\chittagong\\cwc.jpg', 'Chittagong War Cemetery is located in the Mehdibag Golf Hill area of Chittagong.', 'The Chittagong Commonwealth War Cemetery or Chittagong War Cemetery is a Commonwealth War Graves Commission cemetery in Chittagong, Bangladesh. This cemetery was established to show the honor for the soldiers and others who died in World War II. The cemetery was created by the British Army, and there were originally about 400 burials. It is located at Dampara, 19 Badsha Mia Road, 22 kilometers north of the airport and 8 kilometers from the port.			'),
(13, 2, 'Patenga Sea Beach', 'sea beach', 'images\\place\\chittagong\\Patenga.jpeg', 'Patenga is a sea beach of the Bay of Bengal, located 14 kilometres south from the port city of Chittagong, Bangladesh.', 'Patenga is a sea beach of the Bay of Bengal, located 14 kilometres south from the port city of Chittagong, Bangladesh. It is near to the mouth of the Karnaphuli River. Patenga is a popular and renowned tourist spot. The beach is very close to the Bangladesh Naval Academy of the Bangladesh Navy and Shah Amanat International Airport.			'),
(15, 2, 'Chittagong University Campus', '', 'images\\place\\chittagong\\chittagong university.jpg', 'University of Chittagong is situated in Union of Hathazari Upazila, 22 kilometres north of Chittagong city of Bangladesh.', 'University of Chittagong is a public research university with multidisciplinary faculties situated across a 2110-acre hilly landmass in Fatehpur Union of Hathazari Upazila, 22 kilometres north of Chittagong city of Bangladesh. This university has the largest campus among Bangladeshi universities.			'),
(16, 2, 'Jamboree Park', 'park', 'images\\place\\chittagong\\	\r\njamboree_park_1.jpg', 'Jamboree Park is located at SM Morshed Road in Agrabad of Chittagong.', 'Jamboree Park is an urban park in Chittagong, Bangladesh. The park has decorated with near thousand lamps which offer a dazzling view at night. The park has 50,000 square feet (4,600 m2) water-body alongside 8,000 feet (2,400 m) walkway and compound road, internal master drain. The three feet high ground does not get submerged due to water-logging.			'),
(18, 2, 'Shrine of Bayazid Bostami', 'tomb', 'images\\place\\chittagong\\Tomb of Bayazid Bostami.jpg', 'The Shrine of Bayazid Bostami is a shrine in Chittagong, Bangladesh.', 'The Shrine of Bayazid Bostami is a shrine in Chittagong, Bangladesh. Bayazid Bostami was a famous Persian Sufi born in Bostam, Iran. Its shrine area as a complex consists of a tomb surrounded by a brick structure along with an old mosque and a large pond.		'),
(19, 2, 'Chandranath Hill', 'Hill', 'images\\place\\chittagong\\Chandranath-Hill-and-Mandir-Source-Photo-bucket1-1024x768.jpg', 'Chandranath hills on the east side of Sitakunda, Chittagong and the vast ocean in the west.', 'Chandranath Hills is the eastern part of the Himalayas separated from the Himalayas. This hill goes south and south-east of the Himalayas and crosses the Feni River through Assam and Tripura states of India and joins Chittagong. From the Feni river to the Chittagong city, it is about 70 kilometers long. Sitakunda Eco Park is built on the foothills of this hill.			'),
(21, 5, 'Cox\'s Bazar Sea Beach', 'sea beach', 'images\\place\\cox_bazar\\Cox_Bazar_sea_beach_01.jpg', 'Cox\'s Bazar Beach, located at Cox\'s Bazar, Bangladesh, is the longest natural sea beach in the world running 120 kilometres (75 mi).', 'Cox\'s Bazar Beach, located at Cox\'s Bazar, Bangladesh, is the longest natural sea beach in the world running 120 kilometres (75 mi). It is the top tourist destination of Bangladesh.			'),
(22, 5, 'Himchori Waterfall', 'waterfall', 'images\\place\\cox_bazar\\himchori.jpg', 'Himchori Waterfall is located in Cox\'s Bazar Marine Dr, Cox\'s Bazar.', 'Himchori Waterfall is the only cold water waterfall in Bangladesh, which is situated in Himchori town in Cox\'s Bazar. This town is located on the edge of hills, 12 km away from the city of Cox\'s Bazar. Many tourists come every day to enjoy the beauty of this waterfall and surroundings. There are hills on the one side of the marine drive and sea on the other side. This makes charming scenery of the place. If anyone comes to Cox\'s Bazar, he should visit the waterfall and the marine drive at least for one time, or he might miss the beauty of the place.			'),
(23, 5, 'Buddhist Temple of Ramu', 'temple', 'images\\place\\cox_bazar\\ramu.jpg', 'Ramu Temple is located at Ramu Upazila, in a typical Buddhist village located 16 kilometers away from Cox\'s Bazar.', 'Ramu is a nice place, and famous for a Buddhist temple. Its just around 14-20 kilometers apart from the main town of Cox\'s Bazar. The name of the temple is \"Rankut Bonasram Buddho Bihar\".			'),
(25, 5, 'Adinath Temple', 'temple', 'images\\place\\cox_bazar\\Adinath-Temple.jpg', 'Adinath Temple is located on the summit of Mainak Hill on Moheshkhali Island off the coast of Cox\'s Bazar, Bangladesh.', 'Adinath Temple, located on the summit of Mainak Hill on Maheshkhali Island off the coast of Cox\'s Bazar, Bangladesh, is dedicated to the Hindu God, Shiva, who is worshipped as Adinath. The temple is famous for the annual fair held at the foot of Mainak Hill in the month of Phalgun as per the Bengali calendar. The fair, which lasts 13 days, draws thousands of Hindus from across Bangladesh.			'),
(26, 5, 'Inani Beach', 'beach', 'images\\place\\cox_bazar\\inani-beach.jpg', 'Inani Beach is an 18-kilometre-long sea beach in Ukhia Upazila of Cox\'s Bazar District, Bangladesh.', 'Inani Beach is an 18-kilometre-long (11 mi) sea beach in Ukhia Upazila of Cox\'s Bazar District, Bangladesh. It has a lot of coral stones, which are very sharp. These coral stones look black and green, and they are found in summer or rainy seasons.			'),
(27, 7, 'Ahsan Manzil', '', 'images\\place\\dhaka\\ahsan manzil.jpg', 'Ahsan Manzil is situated at Kumartoli along the banks of the Buriganga River in Dhaka, Bangladesh.', 'Ahsan Manzil was the official residential palace and seat of the Nawab of Dhaka. The building is situated at Kumartoli along the banks of the Buriganga River in Dhaka, Bangladesh. Construction was started in 1859 and was completed in 1872. It was constructed in the Indo-Saracenic Revival architecture. It has been designated as a national museum.'),
(28, 7, 'Lalbagh Fort', '', 'images\\place\\dhaka\\lalbagh.jpg', 'Lalbagh Fort is an incomplete 17th century Mughal fort complex that stands before the Buriganga River in the southwestern part of Dhaka, Bangladesh. ', 'Lalbagh Fort (also Fort Aurangabad) is an incomplete 17th century Mughal fort complex that stands before the Buriganga River in the southwestern part of Dhaka, Bangladesh. The construction was started in 1678 AD by Mughal Subahdar Muhammad Azam Shah who was son of Emperor Aurangzeb and later emperor himself. His successor, Shaista Khan, did not continue the work, though he stayed in Dhaka up to 1688. The fort was never completed, and unoccupied for a long period of time. Much of the complex was built over and now sits across from modern buildings. 	'),
(29, 7, 'National Museum', '', 'images\\place\\dhaka\\national_museum.jpg', 'The Bangladesh National Museum, is the national museum of Bangladesh. It is situated in Shahbag at Dhaka City.', 'The Bangladesh National Museum , is the national museum of Bangladesh. The museum is well organized and displays have been housed chronologically in several departments like department of ethnography and decorative art, department of history and classical art, department of natural history, and department of contemporary and world civilization. The museum also has a rich conservation laboratory. Nalini Kanta Bhattasali served as the first curator of the museum during 1914â€“1947.		'),
(30, 7, 'Bangabandhu Sheikh Mujibur Rahman Novo Theatre', '', 'images\\place\\dhaka\\novo.jpg', 'Bangabandhu Sheikh Mujibur Rahman Novo Theatre is a planetarium on Bijoy Sharani Avenue of Tejgaon area in Dhaka, Bangladesh.', 'Bangabandhu Sheikh Mujibur Rahman Novo Theatre is a planetarium on Bijoy Sharani Avenue of Tejgaon area in Dhaka, Bangladesh. The Bangabandhu Sheikh Mujibur Rahman Novo Theatre opened to public on 25 September 2004. It was previously named Bhashani Novo Theatre. It was made autonomous by Bangabandhu Sheikh Mujibur Rahman Novo Theatre Bill 2010. The space center was commissioned by the Ministry of Science and Communication Technology of the Government of Bangladesh.		'),
(31, 7, 'National Martyr\'s Memorial', '', 'images\\place\\dhaka\\martyrs memorial.jpg', 'National Martyr\'s Memorial is situated in Nabinagar Dhaka - Aricha Hwy, Savar Union 1344.', 'National Martyr\'s Memorial is the national monument of Bangladesh, set up in the memory of those who died in the Bangladesh Liberation War of 1971, which brought independence and separated Bangladesh from Pakistan. The monument is located in Savar, about 35 km north-west of the capital, Dhaka. It was designed by Syed Mainul Hossain and built by Concord Group.		'),
(32, 7, 'National Parliament Building', '', 'images\\place\\dhaka\\parliament_house.png', 'Jatiya Sangsad Bhaban or National Parliament House, is the house of the Parliament of Bangladesh, located at Sher-e-Bangla Nagar in the Bangladeshi capital of Dhaka.', 'Jatiya Sangsad Bhaban or National Parliament House, is the house of the Parliament of Bangladesh, located at Sher-e-Bangla Nagar in the Bangladeshi capital of Dhaka. Designed by architect Louis Kahn, the complex is one of the largest legislative complexes in the world, comprising 200 acres (800,000 mÂ²). The building was featured prominently in the 2003 film My Architect, detailing the career and familial legacy of its architect, Louis Kahn. Robert McCarter, author of Louis I. Kahn, described the National Parliament of Bangladesh as one of the twentieth century\'s most significant buildings.	'),
(33, 7, 'The Curzon Hall', '', 'images\\place\\dhaka\\Curzon-Hall.jpg', 'The Curzon Hall is situated in University Street, Dhaka.', 'The Curzon Hall is a British Raj-era building and home of the Faculty of Sciences at the University of Dhaka. The building was originally intended to be a town hall and is named after Lord Curzon, the Viceroy of India who laid its foundation stone in 1904. Upon the establishment of Dacca University in 1921, it became the base of the university\'s science faculty.		'),
(34, 7, 'Bangladesh National Zoo', '', 'images\\place\\dhaka\\Bangladesh_national_zoo.jpg', 'Bangladesh National Zoo, is a zoo located in the Mirpur section of Dhaka, the capital city of Bangladesh.', 'Bangladesh National Zoo, is a zoo located in the Mirpur section of Dhaka, the capital city of Bangladesh. The zoo contains many native and non-native animals and wild life, and hosts about three million visitors each year. The name of zoo has been changed 5 February 2015 from Dhaka Zoo to Bangladesh National Zoo.			'),
(35, 7, 'National Botanic Garden of Bangladesh', '', 'images\\place\\dhaka\\botanical_garden.jpg', 'National Botanic Garden of Bangladesh is located at Mirpur in Dhaka, beside the Dhaka Zoo.', 'The National Botanic Garden of Bangladesh and the Bangladesh National Herbarium make up the largest plant conservation center in Bangladesh, with an area of around 84 hectares (210 acres). It is located at Mirpur in Dhaka, beside the Dhaka Zoo. It was established in 1961. It is one of the greatest botanic gardens of Bangladesh, a knowledge center for nature lovers and botanists and a tourist destination. The herbarium has a scientific collection of approximately 100,000 preserved specimens of plants.			'),
(36, 7, 'Liberation War Museum', '', 'images\\place\\dhaka\\Liberation_War_Museum.jpg', 'Liberation War Museum is situated in Plot F11 A/B, Agargaon, Civic Centre, Dhaka 1207.', 'The Liberation War Museum is a museum in Sher-e-Bangla Nagar, Dhaka, the capital of Bangladesh, which commemorates the Bangladesh Liberation War that led to the independence of Bangladesh from Pakistan.			'),
(37, 7, 'Hatir Jheel', '', 'images\\place\\dhaka\\hatirjheel.jpg', 'Hatirjheel is a lakefront in Dhaka, Bangladesh that has been transformed into a transportation medium for minimizing traffic congestion.', 'Hatirjheel is a lakefront in Dhaka, Bangladesh that has been transformed into a transportation medium for minimizing traffic congestion. The area was constructed under Bangladesh Army and the Special Works Organization (SWO). It is now a popular recreational spot for residents of Dhaka and is currently undergoing renovation.		'),
(38, 7, 'Suhrawardy Udyan', '', 'images\\place\\dhaka\\Swadhinata-Stambha-Suhrawardy-Udyan-.jpg', 'Suhrawardy Udyan is situated in Secretariate Road at Dhaka City.', 'Suhrawardy Udyan formerly known as Ramna Race Course ground is a national memorial located in Dhaka, Bangladesh. It is named after Huseyn Shaheed Suhrawardy. Originally it served as the military club of the British soldiers stationed in Dhaka. It was then called the Ramna Race Course and later Ramna Gymkhana. After the end of colonial rule, the place â€“ sometimes referred to as Dhaka Race Course â€“ was used for legal horse racing on Sundays.			'),
(39, 7, 'Star Mosque', 'Mosque', 'images\\place\\dhaka\\Tara-masjid.jpg', 'Star Mosque, is a mosque located in Armanitola area, Dhaka, Bangladesh. ', 'Star Mosque, is a mosque located in Armanitola area, Dhaka, Bangladesh. The mosque has ornate designs and is decorated with motifs of blue stars. It was built in the first half of the 19th century by Mirza Golam Pir (Mirza Ahmed Jan).'),
(40, 7, 'Jamuna Future Park', '', 'images\\place\\dhaka\\jamuna.jpg', 'Jamuna Future Park is situated in KA-244, Kuril, Progoti Shoroni, Dhaka.', 'Jamuna Future Park is a shopping mall in Dhaka, and the largest shopping mall in Bangladesh with a gross leasable area of 1,614,586 square feet (150,000 m2). It was inaugurated on 6 September 2013. Construction began in 2002, by Jamuna Builders Ltd., a subsidiary of the Jamuna Group and the exterior was completed in 2008.			'),
(41, 7, 'Basundhara City', '', 'images\\place\\dhaka\\bashundhara-city-shopping-mall.jpg', 'Basundhara City is situated in 3 No Tejturi Bazar, West, Panthapath, Dhaka.', 'Bashundhara City is a shopping mall in Dhaka, and the second largest shopping mall in Bangladesh. Opened to the public on 6 August 2004, the mall located in Panthapath, near Kawran Bazar. Bashundhara City is a 19 floor building complex covering an area of 191200 sqft comprising an 8 floor podium containing retail spaces, theme Park, cinemas, fitness club, swimming pool and food court with a 19-storey Corporate Office of Bashundhara Group.			'),
(42, 7, 'Rose Garden Palace', '', 'images\\place\\dhaka\\rose.jpg', 'Rose Garden Palace is situated on K.M. Das Lane in Tikatully of Old Dhaka, near the modern business district of Motijheel.', 'The Rose Garden Palace is a mansion and garden in Old Dhaka. Built in the late 19th century, it became birthplace of the Awami League in 1949, when East Bengali liberal and social democrats converged in Dhaka to form an alternative political force against the Muslim League in Pakistan.			'),
(43, 4, 'Bisanakandi', '', 'images\\place\\sylhet\\bisanakandi.jpg', '', 'Bisanakandi is a village in Rustompur Union in Gowainghat Upazila of Sylhet District in Bangladesh. In recent years there has been an influx of tourists to its river.		'),
(44, 4, 'Ratargul Swamp Forest', '', 'images\\place\\sylhet\\ratargul.jpg', '', 'Ratargul Swamp Forest is a freshwater swamp forest located in Gowain River, Fatehpur Union, Gowainghat, Sylhet, Bangladesh. It is the only swamp forest located in Bangladesh and one of the few freshwater swamp forest in the world. The forest is naturally conserved under the Department of Forestry, Govt. of Bangladesh.		'),
(45, 4, 'Tomb of Hazarat Shah Jalal (RA)', '', 'images\\place\\sylhet\\shahjalal.jpg', '', 'Hazrat Shah Jalal is a celebrated Sufi Muslim figure in Bengal. Jalalâ€™s name is associated with the Muslim movement into north-eastern Bengal and the spread of Islam in Bangladesh through Sufism, part of a long history of travel between the Middle East, Persia, Central Asia and South Asia. According to a tablet inscription found in Amber Khana, he arrived at Sylhet in 1303. Hazrat Shah Jalal Yameny (RA) also known as Hazrat Shah Jalal Muzarrad (RA) arrived at Kamrup, the place within the terrain of Sreehatta, currently known as Sylhet in the Hijri year 703 equivalent to 1303 AD. 360 Sufi-Darbesh came to Sylhet to help him in preaching Islam. When Hazrat Shah Jalal (Ra) came to preach Islam overwhelming majority of people were Hindus. After his death, he is buried at Dargah Mahallah, Sylhet. It is now the Tomb of Hazrat Shah Jalal.			'),
(46, 4, 'Lalakhal', '', 'images\\place\\sylhet\\lalakhal.jpg', '', 'Lalakhal is one of the most attractive tourist spots in Sylhet. Lalakhal is a wide canal located Sharee River near the Tamabil road. The river is not much deep and it is one of the sources of sand in Sylhet. The focal point of the canal is water. The water has a variety of colors blue, green, clear water at different points.		'),
(47, 4, 'SUST Campus', '', 'images\\place\\sylhet\\sust.jpg', '', 'Shahjalal University of Science and Technology also known as SUST is a public research university based in Sylhet, Bangladesh. It was founded as the first of eight science and technology universities of the country by the Government of Bangladesh according to a university act to give special importance in science and technology education. It is the Flagship University of the Science and Technology System of Bangladesh.		'),
(48, 6, 'Shalban Vihara', '', 'images\\place\\comilla\\shalbon_vihar.JPG', 'Shalban Vihara is an archaeological site in Mainamati, Comilla, Bangladesh.', 'Shalban vihara is an archaeological site in Mainamati, Cumilla, Bangladesh. The ruins are in the middle of the Lalmai hills ridge, and these are of a 7th-century Paharpur-style Buddhist viharas with 115 cells for monks. It operated through the 12th century. Excavations have revealed many archaeological artifacts dated to between the 7th and 12th centuries. Most of them are kept in the Mainamati Museum now.			'),
(49, 6, 'Mainamati War Cemetery', '', 'images\\place\\comilla\\war_cemetery.jpg', 'Mainamati War Cemetery is situated in the Comilla Cantonment area.', 'The Mainamati War Cemetery is a war cemetery and a memorial in Cumilla, Bangladesh, for Second World War graves from nearby areas during the Second World War. The cemetery contains 736 Commonwealth burials of the Second World War. It was established and maintained by the Commonwealth War Graves Commission (CWGC), to pay tribute to those who sacrificed their lives in World War II. It is situated in the Cumilla Cantonment area.			'),
(50, 6, 'BARD Comilla', '', 'images\\place\\comilla\\bard.jpg', 'BARD is situated in BARD Internal Rd, Comilla.', 'Bangladesh for Rural Development is an autonomous institution that strives for research and training of local people as well as practitioners on rural development. The academy is known for implementing the Comilla Model in the 1960s that has been internationally recognised as a model project for rural development in the developing countries. East Pakistan Academy for Rural Development was established in 1959 in Cumilla as EPARD under the initiative of Dr Akhtar Hameed Khan who became the institution\'s founder-Director. After the Bangladesh War of Independence, the institution was renamed to its present form. The academy is located at Kotbari, 10 km from Cumilla town. The campus is spread over a vast area that also hosts residences, conference rooms, mosque, library, a health clinic, sports complex, and other amenities.			'),
(51, 6, 'Dhormo Sagor', '', 'images\\place\\comilla\\Dharma-Sagor3.jpg', 'Dharma Sagar located in Shaheed Munshi Kabir Uddin Road just near to Comilla Zila School.', 'Dhormo Sagor is a large pond or dighi located in Comilla town with an area of 9.38 hectare. Maharaj Dharmamanikya of Tripura (1714-1732) dug this dighi to make water available to the local people. Initially, there was an island at the middle of the dighi. Comilla Stadium and Comilla Zilla School are now located on the eastern bank of the dighi. On the other hand, Comilla Municipal Park, Rani Kutir and kazi nazrul islam memorial hall are on the north and Rajdevi Maternity and a Childcare Centre are situated on the southeast of Dharmasagar. These historical marks made this dighi an attractive tourist spot. Migratory birds usually visit the spot during winter.			'),
(52, 6, 'Rupban Mura', '', 'images\\place\\comilla\\rupban_mura.jpg', 'Rupban Mura is situated in Kotbari, Comilla, Bangladesh.', 'Rupban Mura an important archaeological site of mainamati lying on a hillock just between the modern BARD and BDR establishments in the Kotbari area on the south of the Comilla-Kalirbazar road. Excavations have revealed here the remains of a remarkable semi-cruciform shrine of medium size (28.2m east - west, 28m north - south), together with a number of subsidiary structures, including an octagonal stupa and another one on a square base. A boundary wall within the oblong stupa courtyard encloses all these. Its regular entrance is on the east, facing the monastery entrance. Deep diggings have revealed three main periods of building and repairs and rebuilding, the earliest corresponding to c.6th-7th centuries AD. Very few remains of the latest period (10th-11th century AD) survive now in this very heavily disturbed site.			'),
(53, 6, 'Magic Paradise Park', '', 'images\\place\\comilla\\magic-paradise-park.jpg', 'Magic Paradise Park is situated at Comilla Kotbari near Comilla University.', 'Magic Paradise Park is one of most beautiful amusement park in bangladesh. The park is situated at Comilla Kotbari near Comilla University.			'),
(54, 8, 'Bangabandhu Sheikh Mujib Safari Park', '', 'images\\place\\gazipur\\bangabandhu_sheikh_mujib_safari_park.jpg', 'Bangabandhu Sheikh Mujib Safari Parkis located in Safari Park Rd, Sreepur, Gazipur.', 'Bangabandhu Sheikh Mujib Safari Park is a safari park in Gazipur, Bangladesh. It was inaugurated on 2013. The park is divided into 5 major sections. They are the Core Safari, Safari Kingdom, Biodiversity Park, Extensive Asian Safari Park and Bangabandhu Square. There are many animals at the Sheikh Mujib Safari Park, including: Tiger, Lion, Elephant, Zebra, Deer, Butterfly, Duck, Kangaroo, Gharial etc.'),
(55, 8, 'Bhawal National Park', '', 'images\\place\\gazipur\\1080px-A_Road_of_Bhawal_Nationa_Park,_Gazipur.jpg', 'Bhawal National Park is situated in Parzendropur Bus Stop, Dhaka - Mymensingh Hwy, Gazipur.', 'Bhawal National Park was established and maintained as a National Park in 1974; it was officially declared in 1982 under the Wildlife Act of 1974. By origin, it was the forest of Madhupur under the rule of Bhawal Estate. It is located in Gazipur, Dhaka Division of Bangladesh, approximately 40 km north of Dhaka city, only 20 km drive from Gazipur and 20 km from Kapasia. The core area of the park covers 940 hectares but extends to 5,022 ha of surrounding forest. Its purpose is to protect important habitats as well as to provide opportunities for recreation. It has been kept under IUCN Management Category V, as a protected landscape. The most common flora is the unique coppice sal forest. The area was noted for peacocks, tiger, leopard, black panther, elephant, clouded leopard and sambar deer. However much of the wildlife had disappeared and only a few species remain. Also, most of the forest has been denuded and is now occupied by forestry companies or displaced people.'),
(56, 8, 'Nuhash Palli', '', 'images\\place\\gazipur\\nuhash.jpg', 'Nuhash Palli is located in Nuhash Palli Rd, Pirozali, Gazipur.', 'In 1987, Humayun Ahmed a famous author in Bangladesh founded an estate, Nuhash Palli, named after his son Nuhash, near Pijulia village, 25 km from Gazipur City, in Gazipur District, which grew to cover 40 bigha (approximately 14 acres). He would spend much of his time at the estate when he was in Bangladesh. He formed a collection of statues there by local artist Asaduzzaman Khan and another of plants from around the world, particularly medicinal and fruit-bearing trees. Humayun Ahmed\'s grave is also situated here.'),
(57, 8, 'Bhawal Rajbari', '', 'images\\place\\gazipur\\vawal-rajbari-gazipur-21.jpg', 'Bhawal Rajbari is located at the Joydebpur of Gazipur district.', 'Bhawal Rajbari is located at the Joydebpur of Gazipur district. Bhawal Estate was a large zamindari estate in Bengal in modern-day Bangladesh. The area under the estate currently falls under the Gazipur District. The most famous capital of the Bhawal Estate was Choira Meah Bari, where zamindar Fazal Gazi lived. He was one of the Baro-Bhuyans (12th zamindars of Bengal).'),
(58, 8, 'IUT Campus', '', 'images\\place\\gazipur\\iut.jpg', 'Islamic University of Technology (IUT) is situated in Board Bazar, Dhaka- Mymensingh Highway, Gazipur.', 'Islamic University of Technology (IUT) is an international university in Bangladesh. It is one of the leading and prestigious engineering research institutions in Bangladesh. IUT is a subsidiary organ of Organisation of Islamic Cooperation (OIC). The university is directly run and funded by OIC. '),
(59, 4, 'Keane Bridge', '', 'images\\place\\sylhet\\keane.jpg', '', 'The Keane Bridge is a notable landmark of Sylhet city, Bangladesh. This bridge is called the gateway to Sylhet city.'),
(60, 9, 'Madhabpur Lake', '', 'images\\place\\sree_mangal\\madhabpur.jpg', '', 'Madhobpur Lake and Tea Estate is located in Kamalganj Upazila of Moulvibazar District. The pleasant natural Madhobpur Lake is surrounded by small hills (Tila). Most of the hills are planted with tea trees. The bank side of the lake is full of lotuses and lilies. The color of the lilies is bluish which adorns this place with a bluish sphere. The lake is surrounded by small hills.'),
(61, 9, 'Lawachara National Park', '', 'images\\place\\sree_mangal\\Lawachara.jpg', '', 'Lawachara National Park is a major national park and nature reserve in Bangladesh. The park is located at Kamalganj Upazila, Maulvi Bazar District in the northeastern region of the country. It is located within the 2,740 ha West Bhanugach Reserved Forest.'),
(62, 9, 'Madhabkunda Waterfall', 'waterfall', 'images\\place\\sree_mangal\\madhabkunda.jpg', '', 'Madhabkunda Waterfall and Eco Park is situated in Barlekha Upazila in Moulvibazar District of Sylhet Division. It is one of the largest waterfalls in Bangladesh. The waterfall is a popular tourist spot in Bangladesh. Big boulders, surrounding forest, and the adjoining streams attract many tourists for picnic parties and day trips. The 267 hectors Madhabkunda Eco Park (est. 2001) is located at Madhabkunda under Moulvibazar District. This area was declared as Eco Park with a view to conserve the Madhabkunda waterfall and surrounding biodiversity. The Madhabkunda Waterfall is the most attractive site of this Eco Park which is about 200 ft. (61 m) high. A section of \'Khasia\' tribe lives in the forest villages of this area. They are engaged in some agro-economic activities in the forestland.'),
(63, 9, 'Baikka Beel', '', 'images\\place\\sree_mangal\\baikka_beel.jpg', '', 'Baikka Beel is a large, shallow lake at the southern end of the wetland Hail Haor. It is located midway between Srimongol and Molvi Bazar. The haor, whose 4000 hectares swell to 14000 in monsoon, is vast, but Baikka Beel covers only 170 hectares. It was set up as a permanent wetland sanctuary in 2003. Fishing is banned in the beel and its healthy fish population encourages winter birds to congregate here every year. It is perhaps the closest thing to a real bird sanctuary in Bangladesh.'),
(64, 9, 'Rema-Kalenga Wildlife Sanctuary', '', 'images\\place\\sree_mangal\\rema.jpg', '', 'Rema-Kalenga Wildlife Sanctuary is a protected forest and wildlife sanctuary in Bangladesh. This is a dry and evergreen forest. It is located in the Chunarughat of Habiganj district. Rema-Kalenga Wildlife Sanctuary was established in 1982 and later expanded in 1996. Currently the wildlife sanctuary expands on an area of 1795.54 hectares as of 2009. This is one of the natural forests in Bangladesh that are still in good condition. However, indiscriminate theft of trees & deforestation pose threat on the sanctuary.'),
(65, 10, 'Khan Jahan Ali Bridge', '', 'images\\place\\khulna\\Khan-Jahan-Ali-Bridge.jpg', 'Khan Jahan Ali Bridge is a bridge over Rupsa River in Khulna.', 'Khan Jahan Ali Bridge is a bridge over Rupsa River in Khulna, Bangladesh and named after Khan Jahan Ali. The bridge is also known as Rupsa bridge.'),
(66, 10, 'Khulna Divisional Museum', '', 'images\\place\\khulna\\Khulna_Divisional_Museum_(01).jpg', 'Khulna Divisional Museum is situated in Shib Bari More, Khulna, Bangladesh', 'Khulna Divisional Museum is the only museum of Khulna City. It was established by Bangladesh Archaeological Department. It is the second largest museum in Bangladesh after Bangladesh National Museum by area. This museum is full of archaeological evidence, structures & photos of South Bengal.'),
(67, 10, 'Khulna University Campus', 'university', 'images\\place\\khulna\\Khulna-University-Image-1.jpg', 'Khulna University is situated at Gollamari, Khulna, Bangladesh, by the river Moyur, beside the Khulna-Satkhira highway.', 'Khulna University is a public university in Bangladesh. It is situated at Gollamari, Khulna, Bangladesh, by the river Moyur, beside the Khulna-Satkhira highway. The academic programs of Khulna University started on 31 August 1991 with 80 students in four disciplines. Khulna University has 29 disciplines under Eight schools and one institute. It is the only university in Bangladesh where student politics is not allowed. Students passing the Higher Secondary Certificate examination are very much interested in their admission in Khulna University for this politics-free environment.'),
(68, 10, 'Shahid Hadis Park', '', 'images\\place\\khulna\\hadis_park.jpg', 'Shaheed Hadis Park is a park situated on the western side of the Bangladesh Bank Khulna branch of Khulna City in Khulna district of Bangladesh,', 'Shaheed Hadis Park was established in 1884 after the establishment of Khulna municipality and municipality authorities named \'Khulna Municipality Park\' to entertain the people of the city. Later, during the mass upsurge of 21 February 1969, ayub anti-rallies were named after the police killed Shahid Sheikh Haddisur Rahman Babu.Shahid Hadis Park has created a new Shaheed Minar on the basis of central Shaheed Minar in Dhaka.'),
(69, 10, 'KUET Campus', 'university', 'images\\place\\khulna\\kuet.jpg', 'Khulna University of Engineering & Technology (KUET) is situated at Fulbarigate, the North-West part of the Khulna City.', 'Khulna University of Engineering & Technology commonly known as KUET, formerly BIT, Khulna, is a public engineering university of Bangladesh emphasizing education and research on engineering and technology. It is one of the best and prestigious engineering universities in Bangladesh. The versatile alumni of it, are contributing to the whole world. Many foreign university professors, engineers of Microsoft, Google, Oracle etc included in alumni.'),
(70, 11, 'Jess Garden Park', '', 'images\\place\\jessore\\Jess-Garden-02.jpg', '', 'Jess Garden Park is located in Jessore. This is the only amusement park listed in Jessore.'),
(71, 11, 'Michael Madhusudan Dutta Memorial House', '', 'images\\place\\jessore\\michael.jpg', '', 'Michael Madhusudan Dutt Memorial is located at Sagardari, Jessore. This is the only museum listed in Jessore.'),
(73, 12, 'Sajek Valley', '', 'images\\place\\rangamati\\sajek.jpg', 'Sajek Valley is an emerging tourist spot in Bangladesh situated among the hills of Kasalong range of mountains in Sajek union, Baghaichhari Upazila in Rangamati District.', 'Sajek Valley is an emerging tourist spot in Bangladesh situated among the hills of Kasalong range of mountains in Sajek union, Baghaichhari Upazila in Rangamati District. The valley is 1,800 feet above sea level. Sajek valley is known as the Queen of Hills & Roof of Rangamati.			'),
(74, 12, 'Shuvolong Waterfall', 'waterfall', 'images\\place\\rangamati\\shuvolong.jpg', 'Shuvolong Waterfall is a beautiful waterfall in Rangamati. This waterfall is just before the Shubholong Bazar.', 'Shuvolong Waterfall is a beautiful waterfall in Rangamati. The only available path to reach at the waterfall is through the lake. People visit there by boat. It is a famous place with the tourists for the waterfall, high hills and the natuarl surrounding it offers. This waterfall is just before the Shubholong Bazar. So that Shuvolong is easily accessible by speed boat or motor boats from Rangamati.			'),
(75, 12, 'Rajbana Vihara', '', 'images\\place\\rangamati\\rajban.jpg', 'Rajbana Vihara is the biggest Buddhist monestry in Bangladesh.', 'Rajbana Vihara is the biggest Buddhist monestry in Bangladesh.It is an international Buddhist monestry and a tourist spot also. It is at the south-east part of the country in Rangamati district which is hilly place full of natural beauty and cultural diversities surrounding with Kaptai lake.The Bana vihara was established at Rajbari area of Rangamati in 1976 under Royal patronization.From the beganing of the Bana vihara under the supervision of His Holiness Ven. Arahant Ariyasavaka Sadhanananda Mahathera who is also known as Banabhante means monk of the forest,the vihara quickly extends its activity of true Buddhiusm to the human being.			'),
(76, 12, 'Hanging Bridge', 'bridge', 'images\\place\\rangamati\\hang.jpg', 'Hanging Bridge(Jhulonto Bridge in Bengali)is the landmark icon of Rangamati.', 'There are some naturally exotic places located in this district which attracts traveler from different directions of country and abroad every year. Among these tourist places Hanging Bridge is more famous and attractive for its uniqueness. Architectural beauty and exotic natural view from this bridge is something very amazing for traveler.			'),
(77, 12, 'Kaptai Dam', '', 'images\\place\\rangamati\\kaptai_dam.jpg', 'Kaptai Dam is on the Karnaphuli River at Kaptai, 65 kilometres upstream from Chittagong in Rangamati District, Bangladesh.', 'Kaptai Dam is on the Karnaphuli River at Kaptai, 65 kilometres (40 mi) upstream from Chittagong in Rangamati District, Bangladesh. It is an earth-fill embankment dam with a reservoir (known as Kaptai Lake) water storage capacity of 6,477 million cubic metres (5,251,000 acreâ‹…ft). The primary purpose of the dam and reservoir was to generate hydroelectric power. Construction was completed in 1962. The generators in the 230 megawatts (310,000 hp) Karnafuli Hydroelectric Power Station were commissioned between 1962 and 1988. It is the only hydroelectric power station in Bangladesh.			'),
(78, 12, 'Kaptai National Park', '', 'images\\place\\rangamati\\kaptai-national-park.jpg', 'Kaptai National Park is a major national park of Bangladesh situated in Rangamati District.', 'Kaptai National Park is a major national park of Bangladesh situated in Rangamati District. It was established in 1999 and its area is 5,464.78 hectares(13,498.0 Acres). Prior to declaration of the national park it was Sitapahar Reserve. The original Sitapahar Reserve area was 14,448.0 acres.Out of this an area of 100 acres have been dereserved for the establishment of the industrial estate at Kaptai. It is about 57 kilometre from Chittagong city. It comprises with two Ranges namely Kaptai Range and Karnaphuli Range. Kaptai National park is being managed under CHT South Forest Division. It is historically important because of first time teak (Tectona grandis) plantation in Bangladesh was started from this area. Its forest type is mixed evergreen forest. In 2009 IPAC(Integrated Protected Area Co-management) project started its activities in this protected area.			'),
(79, 13, 'Tanguar Haor', '', 'images\\place\\sunamganj\\tanguar.jpg', '', 'Tanguar haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar haor including 46 villages within the haor is about 100 square kilometres (39 sq mi) of which 2,802.36 ha2 is wetland. It is the source of livelihood for more than 40,000 people. The Government of Bangladesh declared Tanguar haor as an Ecologically Critical Area in 1999 considering its critical condition as a result of overexploitation of its natural resources. In 2000, the hoar basin was declared a Ramsar site - wetland of international importance. With this declaration, the Government is committed to preserve its natural resources and has taken several steps for protection of this wetland. '),
(80, 13, 'Taker Ghat', '', 'images\\place\\sunamganj\\takerghat.jpg', '', 'Takerghat Hillocks small low hills. The Takerghat Hillocks are situated in the Sunamganj district and have a maximum elevation of about 22m above mean sea level. They consist of Palaeogene sediments belonging to the Tura and Sylhet Limestone formations.'),
(81, 13, 'Jainal Abedin Shimul Bagan', '', 'images\\place\\sunamganj\\shimul_bagan.jpg', '', 'Jaynal Abedin Shimul Bagan is situated Tahirpur, Sunamganj. \"Shimul Bagan\" is Bengali form of \"Bombax Garden\" . It appears like a field of Bombax that has been decorated by imaginary colors. This garden was built 14 years ago on 2400 decimals of land by a businessman named Jaynal Abedin, because of his personal desire. In spring, it catches the eyes of the tourists when the flowers bloom together in over 2000 trees.'),
(82, 7, 'Bangladesh Shilpakala Academy', '', 'images\\place\\dhaka\\shilpakala.jpg', 'Shilpakala Academy is situated in14, 3 Segun Bagicha Rd at Dhaka.', 'Bangladesh Shilpakala Academy (National Academy of Fine and Performing Arts) is the principal state-sponsored national cultural center of Bangladesh. It is the national academy of fine and performing arts. The academy was established through an act of Parliament in 1974 as a statutory organization under the Ministry of Cultural Affairs. But subsequently the Act of 1974 of Bangladesh Shilpakala Academy was amended through a new act of Parliament in 1989. The academy is headed by a Director General.'),
(83, 7, 'Dhakeshwari Temple', '', 'images\\place\\dhaka\\dhakeshwari.jpg', 'Dhakeshwari Temple is situated in Dhakeshwari Rd at Dhaka City', 'Dhakeshwari National Temple is a Hindu temple in Dhaka, Bangladesh. It is state-owned, giving it the distinction of being Bangladesh\'s \'National Temple\'. The name \"Dhakeshwari\" means \"Goddess of Dhaka\". Since the destruction of Ramna Kali Mandir in 1971 by the Pakistan Army during the Bangladesh Liberation War, the Dhakeshwari Temple has assumed status as the most important Hindu place of worship in Bangladesh. It is also the largest Hindu temple in Bangladesh. This temple is part of the famous Shakti Peethas in Indian Subcontinent. Here the gem of sati\'s crown had fallen.'),
(84, 7, 'Shaheed Minar', '', 'images\\place\\dhaka\\shaheed.jpg', 'The Shaheed Minar is situated in Dhaka Medical College.', 'The Shaheed Minar (\"Martyr Monument\") is a national monument in Dhaka, Bangladesh, established to commemorate those killed during the Bengali Language Movement demonstrations of 1952 in then East Pakistan.'),
(85, 7, 'Baitul Mukarram National Mosque', '', 'images\\place\\dhaka\\baitul.jpg', 'Baitul Mukarram Mosque is situated in Topkhana Road of Dhaka City.', 'Baitul Mukarram, also spelled as Baytul Mukarrom is the National Mosque of Bangladesh. Located at the center of Dhaka, capital of Bangladesh, the mosque was completed in 1968. It has a capacity of 40,000.'),
(86, 7, 'New Market,Dhaka', '', 'images\\place\\dhaka\\new_market.jpg', 'New Market is a commercial shopping market in north of Azimpur at Dhaka City.', 'New Market is a commercial shopping market in north of Azimpur, Dhaka. The market was set up 1954 as a shopping complex, to cater to the needs of the people from the residential areas of University of Dhaka, Azimpur and Dhanmondi. Construction began in 1952, on 35 acres of land during the tenure of Nurul Amin as the Chief Minister of East Bengal. Construction ended in 1954.'),
(87, 7, 'Ramna Park', '', 'images\\place\\dhaka\\ramna.jpg', 'Ramna Park is situated in Moulana Bhasani Rd at Dhaka City.', 'Ramna Park is a large park and recreation area situated at the heart of Dhaka, the capital city of Bangladesh. This park is one of the most beautiful areas in Dhaka with lots of trees and a lake near its center.'),
(88, 7, 'Shishu Park', '', 'images\\place\\dhaka\\shishu.jpg', 'Shishu Park is the only public sector children\'s amusement park in Shahbag, Dhaka, Bangladesh.', 'Shishu Park is the only public sector children\'s amusement park in Shahbag, Dhaka, Bangladesh. Established in 1979 on 15 acres (6.1 ha) of land, it is the first children\'s amusement park in Bangladesh. Established as a profit making venture by Bangladesh Parjatan Corporation, the government-owned tourism promotion agency in Bangladesh, it is maintained by Dhaka City Corporation as its only entertainment park since 1983.'),
(89, 7, 'Bangladesh Air Force Museum', '', 'images\\place\\dhaka\\baf_museum.jpg', 'Bangladesh Air Force Museum is situated in BAF Base Bashar at Dhaka City. ', 'Bangladesh Air Force (BAF) museum is set up to showcase its glorious past. Various artifacts including the helicopter and aircrafts used in liberation war are displayed here. The museum is located on the east side of the IDB Bhaban (building). In other words this museum is adjacent to old airport at Tejgaon which is a air force base now.'),
(90, 7, 'Gulshan Lake Park', '', 'images\\place\\dhaka\\gulshan.jpg', 'Gulshan Lake Park is situated in Gulshan Rd No 63 at Dhaka City.', 'The Gulshan Lake Park is one of the places where people of Dhaka city can visit to refresh their mind. It is situated in Gulshan which is an elite area of Dhaka. It is located in the middle of Gulshan and Banani and only five minutes walking distance in the north side from Gulshan Circle-2. This is one of the most beautiful lakes in Dhaka city. Especially at night, its beauty is increased more. '),
(91, 7, 'Chandrima Uddan', '', 'images\\place\\dhaka\\chandrima.jpg', 'Chandrima Uddan is a park situated across the road of the national parliament house, in Dhaka, Bangladesh.', 'Chandrima Uddan or Chandrima Udyan  also, Zia Uddan (after Ziaur Rahman) is a park situated across the road of the national parliament house, in Dhaka, Bangladesh. The park is notable for being the place where the former Bangladeshi President, Ziaur Rahman was buried. It is connected to the road with a bridge which runs over the Crescent Lake (from which the park derives its original name). According to a 2014 Dhaka Tribune article, \"Illegal establishments, drug addicts, hookers, muggers and petty criminals have robbed the park of most of its beauty.\"');
INSERT INTO `place` (`ID`, `DistrictID`, `Name`, `Tag`, `Image`, `Location`, `Description`) VALUES
(92, 7, 'Upside Down BD', '', 'images\\place\\dhaka\\upside.jpg', 'Upside Down BD is situated in 2, 6 Block #C, Lalmatia, Dhaka.', 'Have you ever wondered what the world would look like upside down? A relatively new museum in Dhaka gives Bangladeshis a glimpse. It is called Upside Down BD. It is closed in Monday and Remains open in other days from 2 pm to 10 pm.'),
(93, 7, 'Bengal Boi', '', 'images\\place\\dhaka\\bengal.jpg', 'Bengal Boi is situated in 1, 3 Block#D, Lalmatia, Dhaka.', 'Bengal Boi was introduced as a bookstore and community space on November 2017, to encourage readership, stimulate creativity, and ignite the love for learning. Bengal Boi offers a wide range of quality publications, both regional and international, for sale, as well as a library featuring a diverse collection of books, magazines, comics, novels, and graphic novels, free to access for all its visitors. The bookstore and community space also houses a café and a dedicated space for children. Bengal Boi regularly hosts music and poetry recitals, reading sessions for book clubs, book launches and film screenings.'),
(94, 2, 'Batali Hill', 'hill', 'images\\place\\chittagong\\batali.jpg', 'Batali Hill is situated in Tigarpus area of Chittagong, just 1 kilometer away from Zero Point in Chittagong city.', 'Batali Hill is the highest mountain in the city of Chittagong. Height is about 280 feet. The road of Batali Hill reached the road from Pihala Patha by the side of the Fahim Music in the north of Ispahani Bourse in the Lalkhan Bazar area of ??Chittagong city and behind the magistrate colony. This Battali Hill is again known as \'Jilpi Hills\'. The reason is that the road leading up the hill has climbed up like a scorpion-like pitch. As a result, there is a great feeling in the other side of the mountain peak. The highest peak is called the hundredth place. The entire Chittagong city is seen as the highest peak of Batali Hill.'),
(95, 2, 'Kattali Sea Beach', '', 'images\\place\\chittagong\\kattali.jpg', 'Kattali is situated in Chittagong city, Bangladesh.', 'Kattali has been turned into a tourist spot because of its Mangrove forest, sea beach and grazing land. Sometimes local people call it as ‘Sundarbans of Chittagong’ because those mangroves protect the sea shore from exceptionally large ocean wave. The beach is located at South Kattali. Some parks have been set up and being maintained to attract the tourists more and those are Niribili Nirupama, etc. Tourists can get the natural view of green bushes along with the railway. There is also a temple named ‘Hori Mandir’ situated in Kattali.'),
(99, 2, 'Sitakunda', '', 'images\\place\\chittagong\\sitakunda.JPG', 'Sitakunda is an Upazila of Chittagong district.', 'Sitakunda is an Upazila of Chittagong district which is one of the oldest regions of human habitation in Bangladesh. Sitakunda has 280 mosques, 8 mazars, 49 Hindu temples, 3 ashrams, 3 Buddhist temples and some amazing spots which can draw tourist\'s attraction such as Chandranath hill and Eco-park. Chandranath or Sitakunda peak is the highest peak in Chittagong District. The hill has zigzag paths surrounded by trees. The tourists can enjoy their mountaineering along with the natural view of numerous green trees and clouds. There are some low hill ranges as well. There are two waterfalls in the hills named Sahasradhara (thousand streams) and Suptadhara (hidden stream) and those have been being preserved. Sitakunda Botanical Garden and Eco Park, the first Eco-park was established here along with a Botanical Garden to facilitate new plantations and to attract tourists.'),
(100, 2, 'Horinmara Waterfall', 'waterfall', 'images\\place\\chittagong\\ananda.jpg', 'Horinmara Waterfall is situated near Choto Komoldoho Bazar of Mirsharai, Chittagong', 'Horinmara Waterfall (also known as Horinmara Kundo Waterfall) is one of the most amazing and beautiful waterfall which is located at Chittagong district. The waterfall is covered by numerous green bushes making it hard to get the full view of waterfall. The water falls downwards directly on a beautiful basin which contains cold green fresh water. It is sometimes risky to have shower under the waterfall due to the heavy flow. Horinmara is a Bengali term which means deer hunting. Once upon a time the area was abundant with a lot of wild deers and those deers used to drink water from the basin but local hunters took their lives. This is the reason behind naming of this place most probably.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `FirstName`, `LastName`, `Phone`, `Email`, `Password`) VALUES
(1, 'ASJ', '16', '01757', 'subaktagin.jabir16@gmail.com', '123456'),
(2, 'Arif', 'Ishan', '01989', 'arif.ishan05@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
<<<<<<< HEAD
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
=======
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
>>>>>>> 38f60f72630d61882902b0606807cde5f92f5d0e

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
