-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2019 at 09:30 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

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
-- Table structure for table `bandarban`
--

CREATE TABLE `bandarban` (
  `ID` int(11) NOT NULL,
  `placeName` varchar(100) NOT NULL,
  `placeImage` varchar(200) NOT NULL,
  `placeDetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bandarban`
--

INSERT INTO `bandarban` (`ID`, `placeName`, `placeImage`, `placeDetails`) VALUES
(1, 'Nafakhum', 'nafakhum.jpg', 'Nafakhum is one of the most beautiful waterfalls in Bangladesh and an excellent place to travel. Every traveler should have a tour plan to visit this beautiful tourism spot of Bandarban at least once and then they will feel to visit that travel spot again and again.			'),
(2, 'Nilgiri Hill Resort', 'Nilgiri.jpg', 'Nilgiri is one of the tallest peaks and beautiful place in Bangladesh. Surrounded by beautiful hilly natural views and clouds most of the time. An esthetic place for enjoying serenity with ultimate relaxation away from city boredom.You will find yourself in the embrace of the clouds. Its located in Thansi Upozilla in Bandarban district which is lies 48 km away from the Bandarban town. There is beautiful resort in the top of the mountain maintained by Bandarban.			'),
(3, 'Boga Lake', 'boga-lake.jpg', 'Bogakain Lake, also called Baga Lake or Boga Lake, is a lake located in Ruma Upazila in the hill district Bandarban, Bangladesh. It is a natural sweet and deep water lake. Its height from sea level is nearly 1,246 feet (380 m). Geologists believe that it was created by collection of rain water in summer. The lake is irregular in shape. A team of geologists surveyed this lake in 1973. They found the lake\'s water to be too acidic for any form of life. By the year 1995, the lake\'s water became abundant with plants and fish.			'),
(4, 'Keokradong', 'keokradong.jpg', 'Keokradong is a peak located in Bandarban, Bangladesh, with an elevation of 986 metres (3,235 ft).[2] Some sources claim it as the highest point of Bangladesh. On the top of Keokradong there is a small shelter and a signboard put up by Bangladesh Army proclaiming the elevation to be 967 metres (3,173 ft).			'),
(5, 'Nilachal', 'nilachal.jpg', 'Nilachal is special for spectacular view from the hill apex and taking photos.It is the nearest tourist spot from Bandarban, situated at Tiger para. It stands 2000 feet above sea level and 5 kilometer away from the Bandarban town. Total glance of Bandarban town and a vast photographic hillside can be seen from here.			'),
(6, 'Chimbuk Hill', 'chimbuk.jpg', 'Chimbuk Hill is one of the highest hills in Bangladesh is one of the more familiar spots in Bandarban. It is just 26 kilometers away from Bandarban Sadar. Chimbuk hill is approximately 2500 feet high above the sea level.			'),
(7, 'Bandarban Golden Temple', '960-e1468862303399.jpg', 'The Buddha Dhatu Jadi (also known as the Bandarban Golden Temple) is located close to Balaghata town, in Bandarban City, in Bangladesh. Dhatu are the material remains of a holy person, and in this temple the relics belong to Buddha. It is the largest Theravada Buddhist temple in Bangladesh and has the second-largest Buddha statue in the country. The Bandaban Golden Temple belongs to the Theravada Buddhism order, which is practiced by the Marma indigenous people, a dominant ethnic group of Bandarban. It was built in 2000 in Arakanese architecture, an adoption of the South East Asia style.			'),
(8, 'Meghla Parjatan Complex', 'meghla-lake.jpg', 'Meghla Parjatan Complex is one of the most amazing tourist spots for tourists coming from all over the country. Meghla is a neighboring area of the Bandarban hill district council on the gateway of Bandarban; it is maintained by district administration. It is 4 km away from the town on the road to Keranihat, which has a mini-safari-park, a zoo, a place for boat journey, a hanging bridge and artificial lake at the bottom of the hills. It is a popular spot for tourists & often visited by many for pleasure.			');

-- --------------------------------------------------------

--
-- Table structure for table `chittagong`
--

CREATE TABLE `chittagong` (
  `ID` int(11) NOT NULL,
  `placeName` varchar(100) NOT NULL,
  `placeImage` varchar(200) NOT NULL,
  `placeDetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chittagong`
--

INSERT INTO `chittagong` (`ID`, `placeName`, `placeImage`, `placeDetails`) VALUES
(1, 'Foy\'s Lake', 'Foys-Lake.jpg', 'Foy\'s Lake is a man-made lake in Chittagong, Bangladesh. It was created in 1924 by constructing a dam across the stream that came down from the hills in the northern part of Chittagong. The purpose of creating an artificial lake was to provide water to the residents of railway colony. It was named after Mr Foy who was a Railway engineer and believed to materialize the project. Pahartali was basically a railway town with workshop, yard and shed. A good number of railway employees live there. Presently, a carriage workshop, diesel workshop, loco shed, laboratory, stores, electric workshop, school (established in 1924) are located. Concord groups gate to Foy\'s Lake, in the opposite direction of USTC. The area belongs to Railway. However, an amusement park, managed by the Concord Group, is located here.		'),
(2, 'Chittagong War Cemetery', 'cwc.jpg', 'The Chittagong Commonwealth War Cemetery or Chittagong War Cemetery is a Commonwealth War Graves Commission cemetery in Chittagong, Bangladesh. This cemetery was established to show the honor for the soldiers and others who died in World War II. The cemetery was created by the British Army, and there were originally about 400 burials. It is located at Dampara, 19 Badsha Mia Road, 22 kilometers north of the airport and 8 kilometers from the port.			'),
(3, 'Port of Chittagong', 'chittagong-port-export-1531682575867.jpg', 'The Port of Chittagong is the busiest seaport on the coastline of the Bay of Bengal, and the second busiest in the overall region of countries dependent on the Bay of Bengal. According to Lloyd\'s, it ranked as the 71st busiest port in the world in 2017 Located in the Bangladeshi port city of Chittagong and on the banks of the Karnaphuli River, the port of Chittagong handles 90% of Bangladesh\'s export-import trade, and has been used by India, Nepal and Bhutan for transshipment. Congestion is a major challenge in Chittagong port. The port had a congestion rate of 84.3 hours between January and July in 2017.	'),
(4, 'Patenga Sea Beach', 'Patenga.jpeg', 'Patenga is a sea beach of the Bay of Bengal, located 14 kilometres south from the port city of Chittagong, Bangladesh. It is near to the mouth of the Karnaphuli River. Patenga is a popular and renowned tourist spot. The beach is very close to the Bangladesh Naval Academy of the Bangladesh Navy and Shah Amanat International Airport.			'),
(5, 'Banskhali Eco Park', 'sitakunda eco park.jpg', 'The Banskhali Eco-Park is a cluster of hills; which creates exceptionality and attraction to us. It is a fantastic place for recreational activities. This is perfect for group outing. The Eco Park was established in 2003 under a project of Bangladesh Government.  It covers total 1200 hectares area.		'),
(6, 'Chittagong University Campus', 'chittagong university.jpg', 'University of Chittagong is a public research university with multidisciplinary faculties situated across a 2110-acre hilly landmass in Fatehpur Union of Hathazari Upazila, 22 kilometres north of Chittagong city of Bangladesh. This university has the largest campus among Bangladeshi universities.			'),
(7, 'Ethnological Museum', 'Ethnological Museum.jpg', 'The Ethnological Museum of Chittagong is the only ethnological museum in Bangladesh and is located in Agrabad, Chittagong. The Museum contains displays featuring the history of Bangladesh\'s tribal people.			'),
(8, 'Shrine of Bayazid Bostami', 'Tomb of Bayazid Bostami.jpg', 'The Shrine of Bayazid Bostami is a shrine in Chittagong, Bangladesh. Bayazid Bostami was a famous Persian Sufi born in Bostam, Iran. Its shrine area as a complex consists of a tomb surrounded by a brick structure along with an old mosque and a large pond.		'),
(9, 'Jamboree Park', 'jamboree_park_1.jpg', 'Jamboree Park is an urban park in Chittagong, Bangladesh. The park has decorated with near thousand lamps which offer a dazzling view at night. The park has 50,000 square feet (4,600 m2) water-body alongside 8,000 feet (2,400 m) walkway and compound road, internal master drain. The three feet high ground does not get submerged due to water-logging.			'),
(10, 'Chandranath Hill', 'Chandranath-Hill-and-Mandir-Source-Photo-bucket1-1024x768.jpg', 'Chandranath Hills is the eastern part of the Himalayas separated from the Himalayas. This hill goes south and south-east of the Himalayas and crosses the Feni River through Assam and Tripura states of India and joins Chittagong. From the Feni river to the Chittagong city, it is about 70 kilometers long. Sitakunda Eco Park is built on the foothills of this hill.			'),
(11, 'Naval Sea Beach', 'neval-beach.jpg', 'It is a restricted sea beach, owned by Bangladesh Navy. Other then Navy selected guests and Chittagong boat club members can visit the place on selected days.			');

-- --------------------------------------------------------

--
-- Table structure for table `coxbazar`
--

CREATE TABLE `coxbazar` (
  `ID` int(11) NOT NULL,
  `placeName` varchar(100) NOT NULL,
  `placeImage` varchar(200) NOT NULL,
  `placeDetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coxbazar`
--

INSERT INTO `coxbazar` (`ID`, `placeName`, `placeImage`, `placeDetails`) VALUES
(1, 'Cox\'s Bazar Sea Beach', 'Cox_Bazar_sea_beach_01.jpg', 'Cox\'s Bazar Beach, located at Cox\'s Bazar, Bangladesh, is the longest natural sea beach in the world running 120 kilometres (75 mi). It is the top tourist destination of Bangladesh.			'),
(2, 'Himchori Waterfall', 'himchori.jpg', 'Himchori Waterfall is the only cold water waterfall in Bangladesh, which is situated in Himchori town in Cox\'s Bazar. This town is located on the edge of hills, 12 km away from the city of Cox\'s Bazar. Many tourists come every day to enjoy the beauty of this waterfall and surroundings. There are hills on the one side of the marine drive and sea on the other side. This makes charming scenery of the place. If anyone comes to Cox\'s Bazar, he should visit the waterfall and the marine drive at least for one time, or he might miss the beauty of the place.			'),
(3, 'Buddhist Temple of Ramu', 'ramu.jpg', 'Ramu is a nice place, and famous for a Buddhist temple. Its just around 14-20 kilometers apart from the main town of Cox\'s Bazar. The name of the temple is \"Rankut Bonasram Buddho Bihar\".			'),
(4, 'Himchori National Park', 'himchori_national_park.jpg', 'The Himchari National Park is a beautiful tropical rain forest, which is very near the town of Coxâ€™s Bazar, and which is protected and maintained for the people of Bangladesh and for visitors from abroad as well. The park has high forest, low forest and grasslands with a few trees. Some of the grasslands may be areas which were encroached upon before the Park was fully regulated.			'),
(5, 'Adinath Temple', 'Adinath-Temple.jpg', 'Adinath Temple, located on the summit of Mainak Hill on Maheshkhali Island off the coast of Cox\'s Bazar, Bangladesh, is dedicated to the Hindu God, Shiva, who is worshipped as Adinath. The temple is famous for the annual fair held at the foot of Mainak Hill in the month of Phalgun as per the Bengali calendar. The fair, which lasts 13 days, draws thousands of Hindus from across Bangladesh.			'),
(6, 'Inani Beach', 'inani-beach.jpg', 'Inani Beach is an 18-kilometre-long (11 mi) sea beach in Ukhia Upazila of Cox\'s Bazar District, Bangladesh. It has a lot of coral stones, which are very sharp. These coral stones look black and green, and they are found in summer or rainy seasons.			');

-- --------------------------------------------------------

--
-- Table structure for table `cumilla`
--

CREATE TABLE `cumilla` (
  `ID` int(11) NOT NULL,
  `placeName` varchar(100) NOT NULL,
  `placeImage` varchar(200) NOT NULL,
  `placeDetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cumilla`
--

INSERT INTO `cumilla` (`ID`, `placeName`, `placeImage`, `placeDetails`) VALUES
(1, 'Shalban Vihara', 'shalbon_vihar.JPG', 'Shalban vihara is an archaeological site in Mainamati, Cumilla, Bangladesh. The ruins are in the middle of the Lalmai hills ridge, and these are of a 7th-century Paharpur-style Buddhist viharas with 115 cells for monks. It operated through the 12th century. Excavations have revealed many archaeological artifacts dated to between the 7th and 12th centuries. Most of them are kept in the Mainamati Museum now.			'),
(2, 'Mainamati War Cemetery', 'war_cemetery.jpg', 'The Mainamati War Cemetery is a war cemetery and a memorial in Cumilla, Bangladesh, for Second World War graves from nearby areas during the Second World War. The cemetery contains 736 Commonwealth burials of the Second World War. It was established and maintained by the Commonwealth War Graves Commission (CWGC), to pay tribute to those who sacrificed their lives in World War II. It is situated in the Cumilla Cantonment area.			'),
(3, 'BARD Cumilla', 'bard.jpg', 'Bangladesh for Rural Development is an autonomous institution that strives for research and training of local people as well as practitioners on rural development. The academy is known for implementing the Comilla Model in the 1960s that has been internationally recognised as a model project for rural development in the developing countries. East Pakistan Academy for Rural Development was established in 1959 in Cumilla as EPARD under the initiative of Dr Akhtar Hameed Khan who became the institution\'s founder-Director. After the Bangladesh War of Independence, the institution was renamed to its present form. The academy is located at Kotbari, 10 km from Cumilla town. The campus is spread over a vast area that also hosts residences, conference rooms, mosque, library, a health clinic, sports complex, and other amenities.			'),
(4, 'Dhormo Sagor', 'Dharma-Sagor3.jpg', 'Dhormo Sagor is a large pond or dighi located in Comilla town with an area of 9.38 hectare. Maharaj Dharmamanikya of Tripura (1714-1732) dug this dighi to make water available to the local people. Initially, there was an island at the middle of the dighi. Comilla Stadium and Comilla Zilla School are now located on the eastern bank of the dighi. On the other hand, Comilla Municipal Park, Rani Kutir and kazi nazrul islam memorial hall are on the north and Rajdevi Maternity and a Childcare Centre are situated on the southeast of Dharmasagar. These historical marks made this dighi an attractive tourist spot. Migratory birds usually visit the spot during winter.			'),
(5, 'Rupban Mura', 'rupban_mura.jpg', 'Rupban Mura an important archaeological site of mainamati lying on a hillock just between the modern BARD and BDR establishments in the Kotbari area on the south of the Comilla-Kalirbazar road. Excavations have revealed here the remains of a remarkable semi-cruciform shrine of medium size (28.2m east - west, 28m north - south), together with a number of subsidiary structures, including an octagonal stupa and another one on a square base. A boundary wall within the oblong stupa courtyard encloses all these. Its regular entrance is on the east, facing the monastery entrance. Deep diggings have revealed three main periods of building and repairs and rebuilding, the earliest corresponding to c.6th-7th centuries AD. Very few remains of the latest period (10th-11th century AD) survive now in this very heavily disturbed site.			'),
(6, 'Magic Paradise Park', 'magic-paradise-park.jpg', 'Magic Paradise Park is one of most beautiful amusement park in bangladesh. The park is situated at Cumilla Kotbari near Cumilla University.			');

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
(8, 'Sylhet', 'Bangladesh', NULL, '', 'images\\destination\\syl.jpg'),
(9, 'Comilla', 'Bangladesh', NULL, 'Comilla, officially known as Cumilla, is a city in the Chittagong Division of Bangladesh, located along the Dhaka-Chittagong Highway. It is the administrative centre of the Comilla District, part of the Chittagong Division. Comilla is the second-largest city of eastern Bangladesh after Chittagong and is one of the three oldest cities in Bangladesh.', 'images\\destination\\demo.png');

-- --------------------------------------------------------

--
-- Table structure for table `dhaka`
--

CREATE TABLE `dhaka` (
  `ID` int(11) NOT NULL,
  `placeName` varchar(100) NOT NULL,
  `placeImage` varchar(200) NOT NULL,
  `placeDetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dhaka`
--

INSERT INTO `dhaka` (`ID`, `placeName`, `placeImage`, `placeDetails`) VALUES
(4, 'Lalbagh Fort', 'lalbagh.jpg', 'Lalbagh Fort (also Fort Aurangabad) is an incomplete 17th century Mughal fort complex that stands before the Buriganga River in the southwestern part of Dhaka, Bangladesh. The construction was started in 1678 AD by Mughal Subahdar Muhammad Azam Shah who was son of Emperor Aurangzeb and later emperor himself. His successor, Shaista Khan, did not continue the work, though he stayed in Dhaka up to 1688. The fort was never completed, and unoccupied for a long period of time. Much of the complex was built over and now sits across from modern buildings. 	'),
(5, 'Ahsan Manzil', 'ahsan manzil.jpg', 'Ahsan Manzil was the official residential palace and seat of the Nawab of Dhaka. The building is situated at Kumartoli along the banks of the Buriganga River in Dhaka, Bangladesh. Construction was started in 1859 and was completed in 1872. It was constructed in the Indo-Saracenic Revival architecture. It has been designated as a national museum.'),
(6, 'National Museum', 'national_museum.jpg', 'The Bangladesh National Museum , is the national museum of Bangladesh. The museum is well organized and displays have been housed chronologically in several departments like department of ethnography and decorative art, department of history and classical art, department of natural history, and department of contemporary and world civilization. The museum also has a rich conservation laboratory. Nalini Kanta Bhattasali served as the first curator of the museum during 1914â€“1947.		'),
(8, 'Bangabandhu Sheikh Mujibur Rahman Novo Theatre', 'novo.jpg', 'Bangabandhu Sheikh Mujibur Rahman Novo Theatre is a planetarium on Bijoy Sharani Avenue of Tejgaon area in Dhaka, Bangladesh. The Bangabandhu Sheikh Mujibur Rahman Novo Theatre opened to public on 25 September 2004. It was previously named Bhashani Novo Theatre. It was made autonomous by Bangabandhu Sheikh Mujibur Rahman Novo Theatre Bill 2010. The space center was commissioned by the Ministry of Science and Communication Technology of the Government of Bangladesh.		'),
(12, 'National Martyr\'s Memorial', 'martyrs memorial.jpg', 'National Martyr\'s Memorial is the national monument of Bangladesh, set up in the memory of those who died in the Bangladesh Liberation War of 1971, which brought independence and separated Bangladesh from Pakistan. The monument is located in Savar, about 35 km north-west of the capital, Dhaka. It was designed by Syed Mainul Hossain and built by Concord Group.		'),
(13, 'National Parliament House', 'parliament_house.png', 'Jatiya Sangsad Bhaban or National Parliament House, is the house of the Parliament of Bangladesh, located at Sher-e-Bangla Nagar in the Bangladeshi capital of Dhaka. Designed by architect Louis Kahn, the complex is one of the largest legislative complexes in the world, comprising 200 acres (800,000 mÂ²). The building was featured prominently in the 2003 film My Architect, detailing the career and familial legacy of its architect, Louis Kahn. Robert McCarter, author of Louis I. Kahn, described the National Parliament of Bangladesh as one of the twentieth century\'s most significant buildings.	'),
(14, 'The Curzon Hall', 'Curzon-Hall.jpg', 'The Curzon Hall is a British Raj-era building and home of the Faculty of Sciences at the University of Dhaka. The building was originally intended to be a town hall and is named after Lord Curzon, the Viceroy of India who laid its foundation stone in 1904. Upon the establishment of Dacca University in 1921, it became the base of the university\'s science faculty.		'),
(15, 'Bangladesh National Zoo', 'Bangladesh_national_zoo.jpg', 'Bangladesh National Zoo, is a zoo located in the Mirpur section of Dhaka, the capital city of Bangladesh. The zoo contains many native and non-native animals and wild life, and hosts about three million visitors each year. The name of zoo has been changed 5 February 2015 from Dhaka Zoo to Bangladesh National Zoo.			'),
(16, 'National Botanic Garden of Bangladesh', 'botanical_garden.jpg', 'The National Botanic Garden of Bangladesh and the Bangladesh National Herbarium make up the largest plant conservation center in Bangladesh, with an area of around 84 hectares (210 acres). It is located at Mirpur in Dhaka, beside the Dhaka Zoo. It was established in 1961. It is one of the greatest botanic gardens of Bangladesh, a knowledge center for nature lovers and botanists and a tourist destination. The herbarium has a scientific collection of approximately 100,000 preserved specimens of plants.			'),
(17, 'Liberation War Museum', 'Liberation_War_Museum.jpg', 'The Liberation War Museum is a museum in Sher-e-Bangla Nagar, Dhaka, the capital of Bangladesh, which commemorates the Bangladesh Liberation War that led to the independence of Bangladesh from Pakistan.			'),
(18, 'Hatir Jheel', 'hatirjheel.jpg', 'Hatirjheel is a lakefront in Dhaka, Bangladesh that has been transformed into a transportation medium for minimizing traffic congestion. The area was constructed under Bangladesh Army and the Special Works Organization (SWO). It is now a popular recreational spot for residents of Dhaka and is currently undergoing renovation.		'),
(19, 'Suhrawardy Udyan', 'Swadhinata-Stambha-Suhrawardy-Udyan-.jpg', 'Suhrawardy Udyan formerly known as Ramna Race Course ground is a national memorial located in Dhaka, Bangladesh. It is named after Huseyn Shaheed Suhrawardy. Originally it served as the military club of the British soldiers stationed in Dhaka. It was then called the Ramna Race Course and later Ramna Gymkhana. After the end of colonial rule, the place â€“ sometimes referred to as Dhaka Race Course â€“ was used for legal horse racing on Sundays.			'),
(20, 'Star Mosque', 'Tara-masjid.jpg', 'Star Mosque, is a mosque located in Armanitola area, Dhaka, Bangladesh. The mosque has ornate designs and is decorated with motifs of blue stars. It was built in the first half of the 19th century by Mirza Golam Pir (Mirza Ahmed Jan)			'),
(21, 'Jamuna Future Park', 'jamuna.jpg', 'Jamuna Future Park is a shopping mall in Dhaka, and the largest shopping mall in Bangladesh with a gross leasable area of 1,614,586 square feet (150,000 m2). It was inaugurated on 6 September 2013. Construction began in 2002, by Jamuna Builders Ltd., a subsidiary of the Jamuna Group and the exterior was completed in 2008.			'),
(22, 'Basundhara City', 'bashundhara-city-shopping-mall.jpg', 'Bashundhara City is a shopping mall in Dhaka, and the second largest shopping mall in Bangladesh. Opened to the public on 6 August 2004, the mall located in Panthapath, near Kawran Bazar. Bashundhara City is a 19 floor building complex covering an area of 191200 sqft comprising an 8 floor podium containing retail spaces, theme Park, cinemas, fitness club, swimming pool and food court with a 19-storey Corporate Office of Bashundhara Group.			'),
(23, 'Rose Garden Palace', 'rose.jpg', 'The Rose Garden Palace is a mansion and garden in Old Dhaka. Built in the late 19th century, it became birthplace of the Awami League in 1949, when East Bengali liberal and social democrats converged in Dhaka to form an alternative political force against the Muslim League in Pakistan.			');

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
(1, 2, 'Bandarban', 'images\\district\\cover\\bandarban.jpg', 'Bandarban, is a district in South-Eastern Bangladesh, and a part of the Chittagong Division.', 'Bandarban, is a district in South-Eastern Bangladesh, and a part of the Chittagong Division. It is one of the three hill districts of Bangladesh and a part of the Chittagong Hill Tracts, the others being Rangamati District and Khagrachhari District. Bandarban city is the headquarter of the Bandarban district. Bandarban district (4,479 km²) is not only the most remote district of the country, but also is the least populous (population 292,900). There is an army contingent at Bandarban Cantonment.\r\n\r\nBandarban town is the hometown of the Bohmong Chief (currently King, or Raja, U Cho Prue Marma) who is the head of the Bohmong Circle. Of the other hill districts, Rangamati is the Chakma Circle, headed by Raja Devasish Roy and Khagrachari is the Mong Circle, headed by Raja Sachingprue Marma. Bandarban is regarded as one of the most attractive travel destinations in Bangladesh. It also is the administrative headquarters of Bandarban district, which has turned into one of the most exotic tourist attractions in Bangladesh.');

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
(1, 1, 'Nafakhum', 'Waterfall', 'images\\place\\bandarban\\nafakhum.jpg', 'The falls are located in a remote area two hours\' walking distance from Remakree bazar, Thanchi Upazila, Bandarban District. In the rainy season while water level increases, navigation by boat to Ngafakhong is about 20-25 minutes journey which can be hired from Remaikree estuary.', 'Nafakhum is one of the most beautiful waterfalls in Bangladesh and an excellent place to travel. Every traveler should have a tour plan to visit this beautiful tourism spot of Bandarban at least once and then they will feel to visit that travel spot again and again.');

-- --------------------------------------------------------

--
-- Table structure for table `rangamati`
--

CREATE TABLE `rangamati` (
  `ID` int(11) NOT NULL,
  `placeName` varchar(100) NOT NULL,
  `placeImage` varchar(200) NOT NULL,
  `placeDetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rangamati`
--

INSERT INTO `rangamati` (`ID`, `placeName`, `placeImage`, `placeDetails`) VALUES
(1, 'Sajek Valley', 'sajek.jpg', 'Sajek Valley is an emerging tourist spot in Bangladesh situated among the hills of Kasalong range of mountains in Sajek union, Baghaichhari Upazila in Rangamati District. The valley is 1,800 feet above sea level. Sajek valley is known as the Queen of Hills & Roof of Rangamati.			'),
(2, 'Shuvolong Waterfall', 'shuvolong.jpg', 'Shuvolong Waterfall is a beautiful waterfall in Rangamati. The only available path to reach at the waterfall is through the lake. People visit there by boat. It is a famous place with the tourists for the waterfall, high hills and the natuarl surrounding it offers. This waterfall is just before the Shubholong Bazar. So that Shuvolong is easily accessible by speed boat or motor boats from Rangamati.			'),
(3, 'Rajbana Vihara', 'rajban.jpg', 'Rajbana Vihara is the biggest Buddhist monestry in Bangladesh.It is an international Buddhist monestry and a tourist spot also. It is at the south-east part of the country in Rangamati district which is hilly place full of natural beauty and cultural diversities surrounding with Kaptai lake.The Bana vihara was established at Rajbari area of Rangamati in 1976 under Royal patronization.From the beganing of the Bana vihara under the supervision of His Holiness Ven. Arahant Ariyasavaka Sadhanananda Mahathera who is also known as Banabhante means monk of the forest,the vihara quickly extends its activity of true Buddhiusm to the human being.			'),
(4, 'Hanging Bridge', 'hang.jpg', 'There are some naturally exotic places located in this district which attracts traveler from different directions of country and abroad every year. Among these tourist places Hanging Bridge is more famous and attractive for its uniqueness. Architectural beauty and exotic natural view from this bridge is something very amazing for traveler.			'),
(5, 'Kaptai Dam', 'kaptai_dam.jpg', 'Kaptai Dam is on the Karnaphuli River at Kaptai, 65 kilometres (40 mi) upstream from Chittagong in Rangamati District, Bangladesh. It is an earth-fill embankment dam with a reservoir (known as Kaptai Lake) water storage capacity of 6,477 million cubic metres (5,251,000 acreâ‹…ft). The primary purpose of the dam and reservoir was to generate hydroelectric power. Construction was completed in 1962. The generators in the 230 megawatts (310,000 hp) Karnafuli Hydroelectric Power Station were commissioned between 1962 and 1988. It is the only hydroelectric power station in Bangladesh.			'),
(6, 'Kaptai National Park', 'kaptai-national-park.jpg', 'Kaptai National Park is a major national park of Bangladesh situated in Rangamati District. It was established in 1999 and its area is 5,464.78 hectares(13,498.0 Acres). Prior to declaration of the national park it was Sitapahar Reserve. The original Sitapahar Reserve area was 14,448.0 acres.Out of this an area of 100 acres have been dereserved for the establishment of the industrial estate at Kaptai. It is about 57 kilometre from Chittagong city. It comprises with two Ranges namely Kaptai Range and Karnaphuli Range. Kaptai National park is being managed under CHT South Forest Division. It is historically important because of first time teak (Tectona grandis) plantation in Bangladesh was started from this area. Its forest type is mixed evergreen forest. In 2009 IPAC(Integrated Protected Area Co-management) project started its activities in this protected area.			');

-- --------------------------------------------------------

--
-- Table structure for table `sylhet`
--

CREATE TABLE `sylhet` (
  `ID` int(11) NOT NULL,
  `placeName` varchar(100) NOT NULL,
  `placeImage` varchar(200) NOT NULL,
  `placeDetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sylhet`
--

INSERT INTO `sylhet` (`ID`, `placeName`, `placeImage`, `placeDetails`) VALUES
(1, 'Bisanakandi', 'bisanakandi.jpg', 'Bisanakandi is a village in Rustompur Union in Gowainghat Upazila of Sylhet District in Bangladesh. In recent years there has been an influx of tourists to its river.		'),
(2, 'Jaflong', 'jaflong.jpg', 'Jaflong is a hill station and tourist destination in the Division of Sylhet, Bangladesh. It is located in Gowainghat Upazila of Sylhet District and situated at the border between Bangladesh and the Indian state of Meghalaya, overshadowed by subtropical mountains and rainforests. Jaflong is known for its stone collections and is home of the Khasi tribe.		'),
(3, 'Ratargul Swamp Forest', 'ratargul.jpg', 'Ratargul Swamp Forest is a freshwater swamp forest located in Gowain River, Fatehpur Union, Gowainghat, Sylhet, Bangladesh. It is the only swamp forest located in Bangladesh and one of the few freshwater swamp forest in the world. The forest is naturally conserved under the Department of Forestry, Govt. of Bangladesh.		'),
(4, 'Tomb of Hazarat Shah Jalal (RA)', 'shahjalal.jpg', 'Hazrat Shah Jalal is a celebrated Sufi Muslim figure in Bengal. Jalalâ€™s name is associated with the Muslim movement into north-eastern Bengal and the spread of Islam in Bangladesh through Sufism, part of a long history of travel between the Middle East, Persia, Central Asia and South Asia. According to a tablet inscription found in Amber Khana, he arrived at Sylhet in 1303. Hazrat Shah Jalal Yameny (RA) also known as Hazrat Shah Jalal Muzarrad (RA) arrived at Kamrup, the place within the terrain of Sreehatta, currently known as Sylhet in the Hijri year 703 equivalent to 1303 AD. 360 Sufi-Darbesh came to Sylhet to help him in preaching Islam. When Hazrat Shah Jalal (Ra) came to preach Islam overwhelming majority of people were Hindus. After his death, he is buried at Dargah Mahallah, Sylhet. It is now the Tomb of Hazrat Shah Jalal.			'),
(5, 'Lalakhal', 'lalakhal.jpg', 'Lalakhal is one of the most attractive tourist spots in Sylhet. Lalakhal is a wide canal located Sharee River near the Tamabil road. The river is not much deep and it is one of the sources of sand in Sylhet. The focal point of the canal is water. The water has a variety of colors blue, green, clear water at different points.		'),
(6, 'SUST Campus', 'sust.jpg', 'Shahjalal University of Science and Technology also known as SUST is a public research university based in Sylhet, Bangladesh. It was founded as the first of eight science and technology universities of the country by the Government of Bangladesh according to a university act to give special importance in science and technology education. It is the Flagship University of the Science and Technology System of Bangladesh.		');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bandarban`
--
ALTER TABLE `bandarban`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chittagong`
--
ALTER TABLE `chittagong`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `coxbazar`
--
ALTER TABLE `coxbazar`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cumilla`
--
ALTER TABLE `cumilla`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dhaka`
--
ALTER TABLE `dhaka`
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
-- Indexes for table `rangamati`
--
ALTER TABLE `rangamati`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sylhet`
--
ALTER TABLE `sylhet`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bandarban`
--
ALTER TABLE `bandarban`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chittagong`
--
ALTER TABLE `chittagong`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `coxbazar`
--
ALTER TABLE `coxbazar`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cumilla`
--
ALTER TABLE `cumilla`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dhaka`
--
ALTER TABLE `dhaka`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rangamati`
--
ALTER TABLE `rangamati`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sylhet`
--
ALTER TABLE `sylhet`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
