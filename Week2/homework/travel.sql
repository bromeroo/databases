DROP TABLE IF EXISTS `travel`;
CREATE DATABASE travel;
CREATE TABLE `client` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(35) NOT NULL DEFAULT '',
  `second_name` VARCHAR(35) NOT NULL DEFAULT '',
  `email` VARCHAR(255) NOT NULL DEFAULT '',
  `phone` VARCHAR(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);
CREATE TABLE `rsvp` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `client_id` INT(11) NOT NULL DEFAULT '',
  `date_option_id` INT(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);
CREATE TABLE `payment` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `card` VARCHAR(11) NOT NULL DEFAULT '',
  `rsvp_id` INT(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);
CREATE TABLE `trip` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `location` VARCHAR(255) NOT NULL DEFAULT '',
  `description` TEXT NOT NULL DEFAULT '',
  `person_per_trip` INT(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);

CREATE TABLE `date_option` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `start_date` DATE NOT NULL DEFAULT '',
  `end_date` DATE NOT NULL DEFAULT '',
  `price` INT(11) NOT NULL DEFAULT '',
  `trip_id` INT(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);

CREATE TABLE `image` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `trip_id` INT(11) NOT NULL DEFAULT '',
  `title` VARCHAR(35) NOT NULL DEFAULT '',
  `filename` VARCHAR(35) NOT NULL DEFAULT '',
  `description` VARCHAR(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);
CREATE TABLE `itinerary` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `trip_id` INT(11) NOT NULL DEFAULT '',
  `description` text NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);
CREATE TABLE `hotel` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `itinerary_id` INT(11) NOT NULL DEFAULT '',
  `stars` INT(11) NOT NULL DEFAULT '0',
  `name` VARCHAR(255) NOT NULL DEFAULT '',
  `type_of_room` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);

INSERT INTO `client` VALUES (1,`Bea`, `Johnson`,`bea@hotmail.com`, `+32494154311`);
INSERT INTO `client` VALUES (2,`Bart`, `Vernot`,`bart@hotmail.com`, `+32494141311`);
INSERT INTO `client` VALUES (3,`Berry`, `Johnson`,`berry@hotmail.com`, `+32444151311`);
INSERT INTO `client` VALUES (4,`Bily`, `John`,`bily@hotmail.com`, `+32494151411`);
INSERT INTO `client` VALUES (5,`Barry`, `Bloom`,`barry@hotmail.com`, `+32494451311`);
INSERT INTO `client` VALUES (6,`Belle`, `Doe`,`belle@hotmail.com`, `+32494154314`);
INSERT INTO `client` VALUES (7,`Bianchi`, `McGrill`,`bianchi@hotmail.com`, `+34494151311`);
INSERT INTO `client` VALUES (8,`Bronte`, `Downson`,`bronte@hotmail.com`, `+32494151311`);
INSERT INTO `client` VALUES (9,`Bella`, `Green`,`bella@hotmail.com`, `+32494451311`);
INSERT INTO `client` VALUES (10,`Brian`, `Maison`,`brian@hotmail.com`, `+32444151311`);

INSERT INTO `rsvp` VALUES (1, 1, 1);
INSERT INTO `rsvp` VALUES (2, 2, 2);
INSERT INTO `rsvp` VALUES (3, 3, 2);
INSERT INTO `rsvp` VALUES (4, 4, 1);
INSERT INTO `rsvp` VALUES (5, 5, 2);
INSERT INTO `rsvp` VALUES (6, 6, 2);
INSERT INTO `rsvp` VALUES (7, 6, 1);
INSERT INTO `rsvp` VALUES (8,7, 1);
INSERT INTO `rsvp` VALUES (9, 9, 1);
INSERT INTO `rsvp` VALUES (10, 8, 3);

INSERT INTO `payment` VALUES (1, `HSBC`, 1);
INSERT INTO `payment` VALUES (2, `Hana Bank`, 2);
INSERT INTO `payment` VALUES (3, `Bankcontact`, 3);
INSERT INTO `payment` VALUES (4, `Klarna`, 4);
INSERT INTO `payment` VALUES (5, `iDEal`, 5);
INSERT INTO `payment` VALUES (6, `PayPal`, 6);
INSERT INTO `payment` VALUES (7, `WePay`, 6);
INSERT INTO `payment` VALUES (8 `ApplePay`, 7);
INSERT INTO `payment` VALUES (9, `Bankcontact`, 9);
INSERT INTO `payment` VALUES (10, `BNP Paribas`, 8);

INSERT INTO `trip` VALUES (1, `Santorini`, `Santorini is one of the Cyclades islands in the Aegean Sea. It was devastated by a volcanic eruption in the 16th century BC, forever shaping its rugged landscape. The whitewashed, cubiform houses of its 2 principal towns, Fira and Oia, cling to cliffs above an underwater caldera (crater). They overlook the sea, small islands to the west and beaches made up of black, red and white lava pebbles.`, 2);
INSERT INTO `trip` VALUES (2, `Alhambra`, `The Alhambra is a palace and fortress complex located in Granada, Andalusia, Spain. It was originally constructed as a small fortress in AD 889 on the remains of Roman fortifications`, 2);
INSERT INTO `trip` VALUES (3, `Milan`, `Milan, a metropolis in Italy's northern Lombardy region, is a global capital of fashion and design. Home to the national stock exchange, it’s a financial hub also known for its high-end restaurants and shops. The Gothic Duomo di Milano cathedral and the Santa Maria delle Grazie convent, housing Leonardo da Vinci’s mural “The Last Supper,” testify to centuries of art and culture.`, 2);
INSERT INTO `trip` VALUES (4, `Athens`, `Athens is the capital of Greece. It was also at the heart of Ancient Greece, a powerful civilization and empire. The city is still dominated by 5th-century BC landmarks, including the Acropolis, a hilltop citadel topped with ancient buildings like the colonnaded Parthenon temple. The Acropolis Museum, along with the National Archaeological Museum, preserves sculptures, vases, jewelry and more from Ancient Greece.`, 1);
INSERT INTO `trip` VALUES (5, `Taipei`, `Taipei, the capital of Taiwan, is a modern metropolis with Japanese colonial lanes, busy shopping streets and contemporary buildings. The skyline is crowned by the 509m-tall, bamboo-shaped Taipei 101 skyscraper, with upscale shops at the base and a rapid elevator to an observatory near the top. Taipei is also known for its lively street-food scene and many night markets, including expansive Shilin market.`,2);
INSERT INTO `trip` VALUES (6, `Shanghai`, `Shanghai, on China’s central coast, is the country's biggest city and a global financial hub. Its heart is the Bund, a famed waterfront promenade lined with colonial-era buildings. Across the Huangpu River rises the Pudong district’s futuristic skyline, including 632m Shanghai Tower and the Oriental Pearl TV Tower, with distinctive pink spheres. Sprawling Yu Garden has traditional pavilions, towers and ponds.`, 2);
INSERT INTO `trip` VALUES (7, `Georgetown`, `George Town is the colorful, multicultural capital of the Malaysian island of Penang. Once an important Straits of Malacca trading hub, the city is known for its British colonial buildings, Chinese shophouses and mosques. Beyond the old town, George Town is a modern city with skyscrapers and shopping malls. Verdant Penang Hill, with hiking and a funicular railway, overlooks it all.`, 1);
INSERT INTO `trip` VALUES (8,`Kuala Lumpur`, `Kuala Lumpur is the capital of Malaysia. Its modern skyline is dominated by the 451m-tall Petronas Twin Towers, a pair of glass-and-steel-clad skyscrapers with Islamic motifs. The towers also offer a public skybridge and observation deck. The city is also home to British colonial-era landmarks such as the Kuala Lumpur Railway Station and the Sultan Abdul Samad Building.`, 1);
INSERT INTO `trip` VALUES (9, `Pompeii`, `Pompeii was an ancient Roman city near modern Naples in the Campania region of Italy, in the territory of the comune of Pompei. Pompeii, along with Herculaneum and many villas in the surrounding area, was buried under 4 to 6 m of volcanic ash and pumice in the eruption of Mount Vesuvius in AD 79`, 1);
INSERT INTO `trip` VALUES (10, `Jeju Island`, `Jeju province encompasses the South Korean island of Jeju in the Korea Strait. It's known for its beach resorts and volcanic landscape of craters and cavelike lava tubes. Hallasan Mountain, a dormant volcano, features hiking trails, a crater lake at the 1,950m summit and nearby Gwaneumsa Temple. The Geomunoreum Lava Tube System includes 7km-long Manjanggul Cave, created centuries ago when Hallasan was still active.`, 1);

INSERT INTO `date_option` VALUES (1, 2019-09-01, 2019-09-01, 100, 1);
INSERT INTO `date_option` VALUES (2, 2019-09-01, 2019-09-01, 200, 1);
INSERT INTO `date_option` VALUES (3, 2019-09-01, 2019-09-01, 300, 1);
INSERT INTO `date_option` VALUES (4, 2019-09-01, 2019-09-01, 400, 2);
INSERT INTO `date_option` VALUES (5, 2019-09-01, 2019-09-01, 500, 2);
INSERT INTO `date_option` VALUES (6, 2019-09-01, 2019-09-01, 600, 3);
INSERT INTO `date_option` VALUES (7, 2019-09-01, 2019-09-01, 600, 3);
INSERT INTO `date_option` VALUES (8,2019-09-01, 2019-09-01, 700, 4);
INSERT INTO `date_option` VALUES (9, 2019-09-01, 2019-09-01, 900, 5);
INSERT INTO `date_option` VALUES (10, 2019-09-01, 2019-09-01, 800, 6);

INSERT INTO `image` VALUES (1, 1, `Santorini`, `santorini.jpg`, `This is in Santorini`);
INSERT INTO `image` VALUES (2, 2, `Santorini`, `santorini.jpg`, `This is in Santorini`);
INSERT INTO `image` VALUES (3, 3, `Santorini`, `santorini.jpg`, `This is in Santorini`);
INSERT INTO `image` VALUES (4, 4, `Santorini`, `santorini.jpg`, `This is in Santorini`);
INSERT INTO `image` VALUES (5, 5, `Santorini`, `santorini.jpg`, `This is in Santorini`);
INSERT INTO `image` VALUES (6, 6, `Santorini`, `santorini.jpg`, `This is in Santorini`);
INSERT INTO `image` VALUES (7, 6, `Santorini`, `santorini.jpg`, `This is in Santorini`);
INSERT INTO `image` VALUES (8,7, `Santorini`, `santorini.jpg`, `This is in Santorini`);
INSERT INTO `image` VALUES (9, 9, `Santorini`, `santorini.jpg`, `This is in Santorini`);
INSERT INTO `image` VALUES (10, 8, `Santorini`, `santorini.jpg`, `This is in Santorini`);

INSERT INTO `itinerary` VALUES (1, 1, `Day 1`);
INSERT INTO `itinerary` VALUES (2, 2, `Day 1`);
INSERT INTO `itinerary` VALUES (3, 3, `Day 1`);
INSERT INTO `itinerary` VALUES (4, 4, `Day 1`);
INSERT INTO `itinerary` VALUES (5, 5, `Day 1`);
INSERT INTO `itinerary` VALUES (6, 6, `Day 1`);
INSERT INTO `itinerary` VALUES (7, 6, `Day 1`);
INSERT INTO `itinerary` VALUES (8,7, `Day 1`);
INSERT INTO `itinerary` VALUES (9, 9, `Day 1`);
INSERT INTO `itinerary` VALUES (10, 8, `Day 1`);

INSERT INTO `hotel` VALUES (1, 1, 5,`Day 1`, `Deluxe Room`);
INSERT INTO `hotel` VALUES (2, 2, 5,`Day 1`, `Suit Room`);
INSERT INTO `hotel` VALUES (3, 3, 5,`Day 1`, `Deluxe Room`);
INSERT INTO `hotel` VALUES (4, 4, 5,`Day 1`, `Twin`);
INSERT INTO `hotel` VALUES (5, 5, 5,`Day 1`, `Deluxe Room`);
INSERT INTO `hotel` VALUES (6, 6, 5,`Day 1`, `Deluxe Room`);
INSERT INTO `hotel` VALUES (7, 6, 5,`Day 1`, `Deluxe Room`);
INSERT INTO `hotel` VALUES (8,7, 5,`Day 1`, `Twin`);
INSERT INTO `hotel` VALUES (9, 9, 5,`Day 1`, `Deluxe Room`);
INSERT INTO `hotel` VALUES (10, 8,5, `Day 1`, `Deluxe Room`);
