-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2025 at 03:01 AM
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
-- Database: `revento_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_uuid` binary(16) NOT NULL,
  `event_id` int(11) NOT NULL,
  `booking_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date_time` datetime NOT NULL,
  `location` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `event_photo` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `subcategory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `title`, `description`, `date_time`, `location`, `category`, `event_photo`, `price`, `created_at`, `subcategory`) VALUES
(16, 'Raw Fest (21 Feb) + Camping', 'Raw Escapes’ Festive Days bring together music, creativity, and community in a lively outdoor setting. Participants can enjoy live performances by world-class artists, inspiring workshops that promote movement, mindfulness, and creativity, and a curated marketplace featuring unique local and global crafts, wellness products, and artisanal goods.\r\n\r\nDesigned as a family-friendly experience, Festive Days offer the perfect space to connect, learn, and celebrate through diverse social activities, delicious food, and an uplifting atmosphere.\r\n\r\nMore than just a festival, it’s a journey of self-discovery, meaningful connections, and unforgettable moments.\r\n\r\nIncluded\r\nMusical and Interactive ExperiencesTransportationFacilitiesbathrooms', '2025-04-21 14:09:00', 'riyadh', 'things-to-do', 'raw_fest__21_feb____camping/1739877019_Screenshot_4.png', 138.00, '2025-02-18 11:10:19', 'things-to-do'),
(17, 'Doos Karting', 'The best go-karting experience in The largest multi-level circuit in the world.', '2025-04-30 16:11:00', 'riyadh', 'things-to-do', 'doos_karting/1739877106_Screenshot_5.png', 130.00, '2025-02-18 11:11:46', 'families'),
(18, 'Asfar Night', 'A captivating musical night by the artist Abdul Majeed Abdullah, celebrating Founding Day. This evening takes us on a journey with authentic melodies and enchanting music featuring a selection of distinguished national and classic songs. The name Asfar Night was chosen in tribute to the journeys that were an essential part of our ancestors’ lives.', '2025-03-25 16:12:00', 'riyadh', 'concerts', 'asfar_night/1739877241_Screenshot_6.png', 200.00, '2025-02-18 11:14:01', 'things-to-do'),
(19, 'FIBA Asia Cup Qualifiers - Saudi Arabia National Team VS Palestine National Team', 'The last game of FIBA Asia cup qualifiers window three between Saudi National Team and Palestine National Team', '2025-04-08 17:15:00', 'jeddah', 'sports', 'fiba_asia_cup_qualifiers_-_saudi_arabia_national_team_vs_palestine_national_team/1739877318_Screenshot_7.png', 10.00, '2025-02-18 11:15:18', 'solo, families'),
(20, 'Strong Ties', 'In celebration of Saudi Founding Day and the presence of international artist Ann Hamilton, immerse yourself in an interactive artistic experience that captures the essence of unity and community across three centuries. Become an integral part of crafting a vibrant national tapestry that symbolizes strength, prosperity, and togetherness.', '2025-03-05 19:16:00', 'riyadh', 'theater', 'strong_ties/1739877429_Screenshot_8.png', 3.00, '2025-02-18 11:17:09', 'families, solo'),
(21, 'Sadiq the poet Night', 'A group of Arab stars gather in a historical night that is different in all its details to sing with words crafted in gold\r\nA night in which every lover of words and melody celebrates His Highness Prince Abdulrahman bin Musaed\r\nA night of Sadiq the poet\r\nDon&#039;t miss historical moments that will not be repeated on this night', '2025-04-23 20:18:00', 'riyadh', 'concerts', 'sadiq_the_poet_night/1739877504_Screenshot_9.png', 250.00, '2025-02-18 11:18:24', 'couples, solo'),
(22, 'Memory of the land', 'Embark on a journey through time and explore the chronological history of the First and Second Saudi States up to the present day through unique time stations. Discover the key events that shaped the nation&#039;s history and sparked the dawn of the Kingdom of Saudi Arabia.\r\nThe festival also offers a variety of exceptional experiences, including musical performances, performing arts, theater, and a dedicated kids&#039; area.\r\n????️ Book your tickets now and enjoy unique experiences that honor our ancient history!', '2025-04-08 19:22:00', 'riyadh', 'theater', 'memory_of_the_land/1739877572_Screenshot_10.png', 5.00, '2025-02-18 11:19:32', 'families'),
(23, 'Al Kholood vs Al Khaleej - Roshn Saudi League Match Week 23', 'Al Kholood vs Al Khaleej - Roshn Saudi League Match Week 23', '2025-04-21 19:20:00', 'dammam', 'sports', 'al_kholood_vs_al_khaleej_-_roshn_saudi_league_match_week_23/1739877664_Screenshot_11.png', 12.00, '2025-02-18 11:21:04', 'things-to-do, solo'),
(24, 'Al Ettifaq vs Al Fayha - Roshn Saudi League Match Week 26', 'Al Ettifq vs Al Fayha - Roshn Saudi League Match Week 26', '2025-05-20 17:21:00', 'dammam', 'sports', 'al_ettifaq_vs_al_fayha_-_roshn_saudi_league_match_week_25/1739877705_Screenshot_12.png', 10.00, '2025-02-18 11:21:45', 'things-to-do, solo'),
(25, 'Riyadh Comedy Tour - Al Yasmin Night this Wednesday with Comedy Pod', 'Stand up comedy show hosted by Ibraheem with the comedians: Nasser Bamashmous, Saad Alshatti, and Sary Alkhaled presented by Comedy Pod at Bulseye in Al Yasmin.\r\nBig thanks to the Riyadh Tour sponsor, Klasse malt beverage! ????', '2025-03-19 18:24:00', 'riyadh', 'things-to-do', 'riyadh_comedy_tour_-_al_yasmin_night_this_wednesday_with_comedy_pod/1739877805_Screenshot_13.png', 45.00, '2025-02-18 11:23:25', 'things-to-do, families'),
(26, 'Summerdan - Jeddah', 'Join us for a vibrant three-day family event in Jeddah, celebrating the spirit of Ramadan and summer! \r\n\r\nThis exciting festival offers a blend of shopping, food, and fun for all ages, featuring a wide range of accessories, clothing, and seasonal items. Enjoy delicious food, discover unique Ramadan and summer-themed products, and immerse yourself in a lively musical atmosphere, all while honoring the Founding Day celebrations. \r\n\r\nIt’s the perfect way to enjoy the best of both seasons with your loved ones!', '2025-05-09 14:23:00', 'jeddah', 'things-to-do', 'summerdan_-_jeddah/1739877894_Screenshot_14.png', 45.00, '2025-02-18 11:24:54', 'families, ladies'),
(28, 'Saudi Founding Day Musical Event', 'Join us in celebrating Founding Day in Arar city with a special musical concert by the artist Burhan. Enjoy a night full of joy and heritage in an unforgettable evening \r\n\r\nTickets are required for all ages.', '2025-05-08 17:58:00', 'khobar', 'concerts', 'saudi_founding_day_musical_event/1740174993_Screenshot_4.png', 10.00, '2025-02-21 21:56:33', 'things-to-do, solo'),
(29, 'Laylat Al-Asfar', 'A magical musical night featuring the artist Majid Al-Muhandis in celebration of Founding Day. This enchanting evening will take us on a journey through authentic, melodious tunes, showcasing a selection of patriotic songs and distinctive classical pieces.\r\n\r\nThe event has been named “Laylat Al-Asfar” (The Night of Journeys) in tribute to the travels that were an essential part of our ancestors’ lives.\r\n\r\nBook your ticket now!', '2025-03-11 15:07:00', 'jeddah', 'concerts', 'laylat_al-asfar/1740175504_Screenshot_5.png', 200.00, '2025-02-21 22:05:04', 'things-to-do, couples'),
(31, 'Al-Srraya', 'oin us in a magical festival that takes you on an extraordinary journey through time, where the stars guide you to discover the stories of the founding journey and its historical landmarks, bridging the past, present, and future. Immerse yourself in a mesmerizing interactive experience featuring visual, auditory, and sensory displays designed for all ages. \r\nBook your ticket now and be part of this unforgettable event!', '2025-03-31 19:15:00', 'riyadh', 'things-to-do', 'al-srraya/1740176013_Screenshot_7.png', 20.00, '2025-02-21 22:13:33', 'families, things-to-do'),
(32, 'The Al-Manqiah Experience', 'An interactive experience combining theoretical and physical challenges aimed at training participants to become knights of Al-Manqiah. Success depends on earning points by engaging in both individual and group challenges in a competitive environment that fosters team spirit and a sense of belonging.', '2025-04-24 18:16:00', 'riyadh', 'things-to-do', 'the_al-manqiah_experience/1740176068_Screenshot_8.png', 20.00, '2025-02-21 22:14:28', 'things-to-do, families'),
(33, 'A Land Restored Experience', 'About\r\nAn interactive journey that takes participants through a unique time machine to explore key milestones in the life of Imam Turki bin Abdullah. Over 45 to 60 minutes, participants move through three different zones, interact with characters, face challenges, and experience reenactments that creatively depict his stories.', '2025-04-03 16:14:00', 'riyadh', 'things-to-do', 'a_land_restored_experience/1740176125_Screenshot_9.png', 25.00, '2025-02-21 22:15:25', 'solo, kids'),
(34, 'Yoga sound healing and painting', 'oin us for a unique and immersive experience that blends yoga, sound healing, and acrylic painting, designed to inspire creativity and inner reflection.\r\n\r\nEvent Details: Date: Wednesday, February 26 Time: 5:00 PM – 8:30 PM Location: Pink Moon Begin with a gentle yoga', '2025-04-12 17:16:00', 'riyadh', 'things-to-do', 'yoga_sound_healing_and_painting/1740176178_Screenshot_10.png', 278.00, '2025-02-21 22:16:18', 'solo, ladies'),
(35, 'SMAR', 'Smar offers a one-of-a-kind experience nestled in a stunning mountain setting. With beautifully designed spaces and an open, natural environment, this destination brings architecture and nature together for an unforgettable experience.\r\n\r\nAtmosphere &amp; Ambiance', '2025-03-31 18:16:00', 'riyadh', 'things-to-do', 'smar/1740176239_Screenshot_11.png', 40.00, '2025-02-21 22:17:19', 'couples, things-to-do'),
(36, 'Hakawi: A Starry Night in Al-Amariya&#039;s Valleys', 'Escape to the enchanting valleys of Al-Amariya and immerse yourself in the Hakawi heritage experience, where nature meets tranquility. Picture yourself relaxing under the stars in an open-air setting, surrounded by lush greenery and peaceful valleys.', '2025-04-13 19:23:00', 'riyadh', 'things-to-do', 'hakawi__a_starry_night_in_al-amariya__039_s_valleys/1740176313_Screenshot_12.png', 29.00, '2025-02-21 22:18:33', 'families, things-to-do'),
(37, 'Edge of the World Keshta via Manjour Trail', 'Discover the magic of Saudi Arabia’s breathtaking landscapes on an unforgettable adventure along the Manjour Trail leading to the iconic Edge of the World, a must-see destination for Riyadh travelers. This unique route offers a blend of natural beauty and ancient history, making it one of the top activities in Riyadh for nature lovers and adventure seekers', '2025-03-08 15:20:00', 'riyadh', 'things-to-do', 'edge_of_the_world_keshta_via_manjour_trail/1740176367_Screenshot_13.png', 978.00, '2025-02-21 22:19:27', 'solo, things-to-do'),
(38, 'Leisure trips daily', 'Bayada trips is a daily program that visits various locations in the Bayada Islands, where you can enjoy snorkeling with a variety of sea life and corals. All trips include a snorkeling instructor to guide you on your journey.', '2025-03-06 17:23:00', 'jeddah', 'things-to-do', 'leisure_trips_daily/1740176424_Screenshot_14.png', 100.00, '2025-02-21 22:20:24', 'solo, things-to-do'),
(39, 'The Dockx Shabanah', 'Join us at The DockX Red Sea Mall for Shaabanah, a spectacular 2-day celebration to kick off the pre-Ramadan season! From playing games to savoring delicious meals and enjoying live entertainment, Shaabanah promises an unforgettable experience for families and young adults alike. Date: 25th and 26th February 2025 Time: 7:00 PM', '2025-03-03 17:25:00', 'jeddah', 'things-to-do', 'the_dockx_shabanah/1740176477_Screenshot_15.png', 180.00, '2025-02-21 22:21:17', 'things-to-do, families'),
(40, 'Dior Café', 'Dior Café, where coffee and luxury blend seamlessly, offering an elegant ambiance and a design that embodies Dior’s timeless legacy. Guests can come 1 hour prior to their reservation and enjoy an exclusive tour of the venue before being seated, with table reservations limited to one hour.', '2025-03-19 16:28:00', 'riyadh', 'restaurants', 'dior_caf__/1740176795_Screenshot_16.png', 300.00, '2025-02-21 22:26:35', 'couples, solo'),
(41, 'Madeo', 'Madeo Ristorante is a fine dining establishment, serving Italian cuisine for over 35 years. The menu features Tuscan dishes, pairing the freshest local ingredients with premium European elements to culminate in an unparalleled flavor experience.', '2025-07-15 16:30:00', 'jeddah', 'restaurants', 'madeo/1740176860_Screenshot_17.png', 50.00, '2025-02-21 22:27:40', 'couples, solo'),
(44, 'Spago', 'pago is the flagship restaurant of celebrity chef Wolfgang Puck. Best known for serving iconic Southern California cuisine and for its exceptional level of service, earning Spago Beverly Hills two Michelin stars. A seasonal, modern menu that takes each guest on a culinary adventure through a new eclectic fusion of dishes mixed with American, Asian and Italian influences.', '2025-06-12 01:29:00', 'riyadh', 'restaurants', 'spago/1740177017_Screenshot_21.png', 55.00, '2025-02-21 22:30:17', 'couples, things-to-do'),
(45, 'Berenjak Pop-up', 'Discover the vibrant flavors of Persia at Berenjak, now bringing its renowned culinary experience to Riyadh at Via Riyadh. Immerse yourself in a reimagined menu crafted with seasonal produce, inspired by the bustling kabab houses of Tehran. Savor signature dishes infused with fragrant spices and fresh herbs, designed for sharing and celebrating togetherness.', '2025-07-18 01:30:00', 'riyadh', 'restaurants', 'berenjak_pop-up/1740177052_Screenshot_22.png', 100.00, '2025-02-21 22:30:52', 'ladies, solo'),
(46, 'Al Ittihad vs Al Hilal - Roshn Saudi League Season Round 21', 'Al-Ittihad fans are returning to the #Tigers_Stronghold, standing behind their team as always! ????????????', '2025-02-28 19:34:00', 'jeddah', 'football', 'al_ittihad_vs_al_hilal_-_roshn_saudi_league_season_round_21/1740177322_Screenshot_4.png', 50.00, '2025-02-21 22:35:22', 'things-to-do, solo'),
(47, 'Al Ahli vs Al Qadsiah - Roshn Saudi League Round 22', 'Book your seat now for the exciting Al Ahli vs Al Qadsiah match for Roshn Saudi League Round 22. \r\n\r\nDon’t miss out on this thrilling event! Secure your tickets on Revento', '2025-03-19 18:36:00', 'jeddah', 'football', 'al_ahli_vs_al_qadsiah_-_roshn_saudi_league_round_22/1740177441_Screenshot_5.png', 13.00, '2025-02-21 22:37:21', 'things-to-do, families'),
(48, 'Al Orobah vs Al Nassr - Roshn Saudi League Match Week 23', 'Al Orobah vs Al Nassr - Roshn Saudi League Match Week 23', '2025-06-12 03:38:00', 'dammam', 'football', 'al_orobah_vs_al_nassr_-_roshn_saudi_league_match_week_23/1740177526_Screenshot_6.png', 35.00, '2025-02-21 22:38:46', 'things-to-do, solo'),
(49, 'Al Raed vs Al Ettifaq - Roshn Saudi League Match Week 23', 'Al Raed vs Al Ettifaq - Roshn Saudi League Match Week 23', '2025-04-22 17:42:00', 'dammam', 'football', 'al_raed_vs_al_ettifaq_-_roshn_saudi_league_match_week_23/1740177597_Screenshot_7.png', 10.00, '2025-02-21 22:39:57', 'things-to-do, families'),
(50, 'Al Shabab vs Damac - Roshn Saudi League Match Week 23', 'Al Shabab vs Damac - Roshn Saudi League Match Week 23', '2025-03-18 06:40:00', 'riyadh', 'football', 'al_shabab_vs_damac_-_roshn_saudi_league_match_week_23/1740177668_Screenshot_8.png', 18.00, '2025-02-21 22:41:08', 'things-to-do, solo'),
(51, 'Al Kholood vs Al Khaleej - Roshn Saudi League Match Week 23', 'Al Kholood vs Al Khaleej - Roshn Saudi League Match Week 23', '2025-05-01 16:45:00', 'riyadh', 'football', 'al_kholood_vs_al_khaleej_-_roshn_saudi_league_match_week_23/1740177738_Screenshot_9.png', 11.00, '2025-02-21 22:42:18', 'things-to-do, solo'),
(52, 'Seasonal packages - Al Shabab Club', 'Get your seasonal tickets for All Al Shabab matches in Roshn Saudi League', '2025-03-20 17:42:00', 'riyadh', 'football', 'seasonal_packages_-_al_shabab_club/1740177785_Screenshot_10.png', 240.00, '2025-02-21 22:43:05', 'solo, families'),
(53, 'Saudi Cup 2025 - General Admission', 'General Admission at Saudi Cup provides trackside views, access to Grandstand outdoor seating, plus free live entertainment across the Obaiya enclosure which features fashion, culture, heritage, art exhibitions, family activities, live music and walk-in restaurants by the Ministry of Culture. On each day', '2025-03-01 15:46:00', 'riyadh', 'sports', 'saudi_cup_2025_-_general_admission/1740177910_Screenshot_11.png', 112.00, '2025-02-21 22:45:10', 'things-to-do, families'),
(54, 'An Experience Like No Other', 'Every Thursday, Friday and Saturday until 15 March\r\nKing AbdulAziz Racecourse, Riyadh', '2025-08-09 17:46:00', 'riyadh', 'sports', 'an_experience_like_no_other/1740178004_Screenshot_12.png', 126.00, '2025-02-21 22:46:44', 'things-to-do, solo'),
(55, 'Al Awwal Park Tours', 'Step into the world of champions with our exclusive Stadium Tours at Alawwal Park, the iconic home of Al Nassr FC. This guided experience offers football fans and sports enthusiasts a unique opportunity to explore behind the scenes of one of Riyadh’s most renowned stadiums.', '2025-06-12 16:50:00', 'riyadh', 'sports', 'al_awwal_park_tours/1740178047_Screenshot_14.png', 50.00, '2025-02-21 22:47:27', 'things-to-do, solo'),
(56, 'Discover the Ultimate Multi-Sports Camp in Riyadh', 'Give your child an exciting and active experience with Elite Sports’ Multi-Sports Camp in Riyadh—where sports, fun, and learning come together in perfect harmony! Designed for children aged 4 to 14', '2025-04-23 17:47:00', 'riyadh', 'sports', 'discover_the_ultimate_multi-sports_camp_in_riyadh/1740178111_Screenshot_13.png', 496.00, '2025-02-21 22:48:31', 'kids, families'),
(58, 'Riyadh Racing Season Race Night', 'A race night at King Abdulaziz Racecourse is an evening like no other. The jewel in the crown of Saudi racing, this sophisticated venue features picturesque viewing', '2025-07-15 19:54:00', 'riyadh', 'sports', 'riyadh_racing_season_race_night/1740178308_Screenshot_15.png', 26.00, '2025-02-21 22:51:48', 'things-to-do, families'),
(59, 'Adaptability - Ceramics Exhibition', 'The &quot;&#039;Adaptability&quot;&#039; exhibition highlights the innovative approaches artists and designers use to redefine ceramics today. Moving beyond traditional kiln-fired techniques, it showcases the material&#039;s versatility and its expanding role in contemporary art.', '2025-05-06 17:54:00', 'riyadh', 'theater', 'adaptability_-_ceramics_exhibition/1740178521_Screenshot_4.png', 20.00, '2025-02-21 22:55:21', 'things-to-do, solo'),
(60, 'English Stand Up Comedy Show Wednesday - Comedy Pod', 'A two-hour standup comedy night in English with a bunch of local professional comedians live at Comedy Po', '2025-07-11 16:56:00', 'jeddah', 'theater', 'english_stand_up_comedy_show_wednesday_-_comedy_pod/1740178574_Screenshot_5.png', 65.00, '2025-02-21 22:56:14', 'things-to-do, solo'),
(61, 'Stand Up Comedy Show This weekend - Comedy Pod', 'A legendary stand-up show presented by a number of local and Arab comedy stars at Comedy Pod', '2025-03-19 16:56:00', 'khobar', 'theater', 'stand_up_comedy_show_this_weekend_-_comedy_pod/1740178620_Screenshot_6.png', 75.00, '2025-02-21 22:57:00', 'things-to-do, solo'),
(62, 'Very Sary Night - Stand Up Comedy Show This Saturday at Comedy Pod', 'dwad', '2025-04-05 16:57:00', 'dammam', 'theater', 'very_sary_night_-_stand_up_comedy_show_this_saturday_at_comedy_pod/1740178664_Screenshot_7.png', 75.00, '2025-02-21 22:57:44', 'things-to-do, solo'),
(63, 'One Mic Comedy Shows', 'Get ready for an epic comedy weekend! Join us for &quot;Broken Phone&quot; on Thursday and the unforgettable &quot;One Mic Special&quot; on Friday.', '2025-04-08 18:07:00', 'riyadh', 'theater', 'one_mic_comedy_shows/1740179299_Screenshot_8.png', 115.00, '2025-02-21 23:08:19', 'things-to-do, solo'),
(64, 'MDLBEAST - Balad Social Thursday', 'Let’s get Social.\r\nCheck into our little soiree made for Jeddah&#039;s music heads every weekend, now in the lobby of the Red Sea Palace Hotel in the heart of al-Balad.', '2025-07-18 18:11:00', 'riyadh', 'concerts', 'mdlbeast_-_balad_social_thursday/1740179472_Screenshot_9.png', 115.00, '2025-02-21 23:11:12', 'things-to-do, solo');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` binary(16) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `fullname`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(140, 0xf457d913acaa45c3a5c8e561e4692579, 'admin', 'admin', 'admin@admin.com', '$2y$10$qD5wNVqTbMJn.WeGHQc0uO8rhranlhkQROI5uvE2q/ks1v3vuTSvm', 'admin', '2025-02-23 01:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL,
  `user_uuid` binary(16) NOT NULL,
  `category` varchar(100) NOT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `user_uuid`, `category`, `subcategory`, `city`) VALUES
(244, 0xf457d913acaa45c3a5c8e561e4692579, 'Football', 'Solo Activities', 'Riyadh'),
(245, 0xf457d913acaa45c3a5c8e561e4692579, 'Things to Do', 'Unspecified', 'Riyadh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `fk_bookings_user` (`user_uuid`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_preferences` (`user_uuid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `user_preferences`
--
ALTER TABLE `user_preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_uuid`) REFERENCES `users` (`uuid`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_bookings_user` FOREIGN KEY (`user_uuid`) REFERENCES `users` (`uuid`) ON DELETE CASCADE;

--
-- Constraints for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD CONSTRAINT `fk_user_preferences` FOREIGN KEY (`user_uuid`) REFERENCES `users` (`uuid`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_preferences_ibfk_1` FOREIGN KEY (`user_uuid`) REFERENCES `users` (`uuid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
