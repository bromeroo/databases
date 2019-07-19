DROP DATABASE IF EXISTS `travel`;
CREATE DATABASE travel;
use travel;
CREATE TABLE `client` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(35) NOT NULL DEFAULT '',
  `second_name` VARCHAR(35) NOT NULL DEFAULT '',
  `email` VARCHAR(255) NOT NULL DEFAULT '',
  `phone` VARCHAR(18) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);

CREATE TABLE `trip` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `location` VARCHAR(255) NOT NULL DEFAULT '',
  `description` TEXT NOT NULL,
  `person_per_trip` INT(11) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `date_option` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  `price` INT(11) NOT NULL DEFAULT 0,
  `trip_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT date_option_trip FOREIGN KEY (trip_id) REFERENCES trip(id)
);

CREATE TABLE `rsvp` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `client_id` INT(11) NOT NULL,
  `date_option_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT client FOREIGN KEY (client_id) REFERENCES client(id),
  CONSTRAINT rsvp_date_option FOREIGN KEY (date_option_id) REFERENCES date_option(id)
);
CREATE TABLE `payment` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `card` VARCHAR(11) NOT NULL DEFAULT '',
  `rsvp_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT payment_rsvp FOREIGN KEY (rsvp_id) REFERENCES rsvp(id)
);

CREATE TABLE `image` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `trip_id` INT(11) NOT NULL,
  `title` VARCHAR(35) NOT NULL DEFAULT '',
  `filename` VARCHAR(35) NOT NULL DEFAULT '',
  `description` VARCHAR(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  CONSTRAINT image_trip FOREIGN KEY (trip_id) REFERENCES trip(id)
);
CREATE TABLE `itinerary` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `trip_id` INT(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT itinerary_trip FOREIGN KEY (trip_id) REFERENCES trip(id)
);
CREATE TABLE `hotel` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `itinerary_id` INT(11) NOT NULL,
  `stars` INT(11) NOT NULL DEFAULT 0,
  `name` VARCHAR(255) NOT NULL DEFAULT '',
  `type_of_room` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  CONSTRAINT hotel_itinerary FOREIGN KEY (itinerary_id) REFERENCES itinerary(id)
);

INSERT INTO `client` VALUES (1, "Bea", "Johnson", "bea@hotmail.com", "+32494154311");
INSERT INTO `client` VALUES (2,"Bart", "Vernot", "bart@hotmail.com", "+32494141311");
INSERT INTO `client` VALUES (3,"Berry", "Johnson", "berry@hotmail.com", "+32444151311");
INSERT INTO `client` VALUES (4,"Bily", "John", "bily@hotmail.com", "+32494151411");
INSERT INTO `client` VALUES (5,"Barry", "Bloom", "barry@hotmail.com", "+32494451311");
INSERT INTO `client` VALUES (6,"Belle", "Doe", "belle@hotmail.com", "+32494154314");
INSERT INTO `client` VALUES (7,"Bianchi", "McGrill", "bianchi@hotmail.com", "+34494151311");
INSERT INTO `client` VALUES (8,"Bronte", "Downson", "bronte@hotmail.com", "+32494151311");
INSERT INTO `client` VALUES (9,"Bella", "Green", "bella@hotmail.com", "+32494451311");
INSERT INTO `client` VALUES (10,"Brian", "Maison", "brian@hotmail.com", "+32444151311");

INSERT INTO `trip` VALUES (1, "Santorini", "Santorini is one of the Cyclades islands in the Aegean Sea. It was devastated by a volcanic eruption in the 16th century BC, forever shaping its rugged landscape. The whitewashed, cubiform houses of its 2 principal towns, Fira and Oia, cling to cliffs above an underwater caldera (crater). They overlook the sea, small islands to the west and beaches made up of black, red and white lava pebbles.", 2);
INSERT INTO `trip` VALUES (2, "Alhambra", "The Alhambra is a palace and fortress complex located in Granada, Andalusia, Spain. It was originally constructed as a small fortress in AD 889 on the remains of Roman fortifications", 2);
INSERT INTO `trip` VALUES (3, "Milan", "Milan, a metropolis in Italy's northern Lombardy region, is a global capital of fashion and design. Home to the national stock exchange, it’s a financial hub also known for its high-end restaurants and shops. The Gothic Duomo di Milano cathedral and the Santa Maria delle Grazie convent, housing Leonardo da Vinci’s mural “The Last Supper,” testify to centuries of art and culture.", 2);
INSERT INTO `trip` VALUES (4, "Athens", "Athens is the capital of Greece. It was also at the heart of Ancient Greece, a powerful civilization and empire. The city is still dominated by 5th-century BC landmarks, including the Acropolis, a hilltop citadel topped with ancient buildings like the colonnaded Parthenon temple. The Acropolis Museum, along with the National Archaeological Museum, preserves sculptures, vases, jewelry and more from Ancient Greece.", 1);
INSERT INTO `trip` VALUES (5, "Taipei", "Taipei, the capital of Taiwan, is a modern metropolis with Japanese colonial lanes, busy shopping streets and contemporary buildings. The skyline is crowned by the 509m-tall, bamboo-shaped Taipei 101 skyscraper, with upscale shops at the base and a rapid elevator to an observatory near the top. Taipei is also known for its lively street-food scene and many night markets, including expansive Shilin market.",2);
INSERT INTO `trip` VALUES (6, "Shanghai", "Shanghai, on China’s central coast, is the country's biggest city and a global financial hub. Its heart is the Bund, a famed waterfront promenade lined with colonial-era buildings. Across the Huangpu River rises the Pudong district’s futuristic skyline, including 632m Shanghai Tower and the Oriental Pearl TV Tower, with distinctive pink spheres. Sprawling Yu Garden has traditional pavilions, towers and ponds.", 2);
INSERT INTO `trip` VALUES (7, "Georgetown", "George Town is the colorful, multicultural capital of the Malaysian island of Penang. Once an important Straits of Malacca trading hub, the city is known for its British colonial buildings, Chinese shophouses and mosques. Beyond the old town, George Town is a modern city with skyscrapers and shopping malls. Verdant Penang Hill, with hiking and a funicular railway, overlooks it all.", 1);
INSERT INTO `trip` VALUES (8,"Kuala Lumpur", "Kuala Lumpur is the capital of Malaysia. Its modern skyline is dominated by the 451m-tall Petronas Twin Towers, a pair of glass-and-steel-clad skyscrapers with Islamic motifs. The towers also offer a public skybridge and observation deck. The city is also home to British colonial-era landmarks such as the Kuala Lumpur Railway Station and the Sultan Abdul Samad Building.", 1);
INSERT INTO `trip` VALUES (9, "Pompeii", "Pompeii was an ancient Roman city near modern Naples in the Campania region of Italy, in the territory of the comune of Pompei. Pompeii, along with Herculaneum and many villas in the surrounding area, was buried under 4 to 6 m of volcanic ash and pumice in the eruption of Mount Vesuvius in AD 79", 1);
INSERT INTO `trip` VALUES (10, "Jeju Island", "Jeju province encompasses the South Korean island of Jeju in the Korea Strait. It's known for its beach resorts and volcanic landscape of craters and cavelike lava tubes. Hallasan Mountain, a dormant volcano, features hiking trails, a crater lake at the 1,950m summit and nearby Gwaneumsa Temple. The Geomunoreum Lava Tube System includes 7km-long Manjanggul Cave, created centuries ago when Hallasan was still active.", 1);

INSERT INTO `date_option` VALUES (1, "2019-09-01", "2019-09-11", 100, 1);
INSERT INTO `date_option` VALUES (2, "2019-09-11", "2019-09-21", 200, 1);
INSERT INTO `date_option` VALUES (3, "2019-09-21", "2019-10-01", 300, 1);
INSERT INTO `date_option` VALUES (4, "2019-09-01", "2019-09-11", 400, 2);
INSERT INTO `date_option` VALUES (5, "2019-08-01", "2019-08-11", 500, 2);
INSERT INTO `date_option` VALUES (6, "2019-09-01", "2019-09-08", 600, 3);
INSERT INTO `date_option` VALUES (7, "2019-09-08", "2019-09-11", 600, 3);
INSERT INTO `date_option` VALUES (8,"2019-09-01", "2019-09-18", 700, 4);
INSERT INTO `date_option` VALUES (9, "2019-09-01", "2019-09-04", 900, 5);
INSERT INTO `date_option` VALUES (10, "2019-09-01", "2019-09-05", 800, 6);

INSERT INTO `image` VALUES (1, 1, "Santorini", "santorini.jpg", "This is in Santorini");
INSERT INTO `image` VALUES (2, 2, "Alhambra", "Alhambra.jpg", "This is in Alhambra");
INSERT INTO `image` VALUES (3, 3, "Milan", "Milan.jpg", "This is in Milan");
INSERT INTO `image` VALUES (4, 4, "Athens", "Athens.jpg", "This is in Athens");
INSERT INTO `image` VALUES (5, 5, "Taipei", "Taipei.jpg", "This is in Taipei");
INSERT INTO `image` VALUES (6, 6, "Shanghai", "Shanghai.jpg", "This is in Shanghai");
INSERT INTO `image` VALUES (7, 6, "Shanghai", "Shanghai1.jpg", "This is in Shanghai");
INSERT INTO `image` VALUES (8,7, "Georgetown", "Georgetown.jpg", "This is in Georgetown");
INSERT INTO `image` VALUES (9, 9, "Pompeii", "Pompeii.jpg", "This is in Pompeii");
INSERT INTO `image` VALUES (10, 8, "Kuala Lumpur", "KualaLumpur.jpg", "This is in Kuala Lumpur");

INSERT INTO `itinerary` VALUES (1, 1, "Day 1 morning: Walking tour");
INSERT INTO `itinerary` VALUES (2, 1, "Day 2 noon: Hiking a vulcanic mountain");
INSERT INTO `itinerary` VALUES (3, 3, "Day 1 noon: Shopping time");
INSERT INTO `itinerary` VALUES (4, 4, "Day 1 noon: Visiting Acropolis");
INSERT INTO `itinerary` VALUES (5, 5, "Day 1 night: Visiting Ningxia night market");
INSERT INTO `itinerary` VALUES (6, 6, "Day 1 morning: Breakfast baozi");
INSERT INTO `itinerary` VALUES (7, 6, "Day 1 noon: Visiting The Bund");
INSERT INTO `itinerary` VALUES (8,7, "Day 1 all day: Visiting temples");
INSERT INTO `itinerary` VALUES (9, 9, "Day 1 morning: Breakfast");
INSERT INTO `itinerary` VALUES (10, 8, "Day 1 noon: Lunch nasi lemak");

INSERT INTO `hotel` VALUES (1, 1, 5,"Joystar", "Deluxe Room");
INSERT INTO `hotel` VALUES (2, 10, 5,"Mariott", "Suit Room");
INSERT INTO `hotel` VALUES (3, 3, 5,"Novotel", "Deluxe Room");
INSERT INTO `hotel` VALUES (4, 4, 5,"Ibis", "Twin");
INSERT INTO `hotel` VALUES (5, 5, 5,"Pullman", "Deluxe Room");
INSERT INTO `hotel` VALUES (6, 6, 5,"Hilton", "Deluxe Room");
INSERT INTO `hotel` VALUES (7, 6, 5,"Reyloff", "Deluxe Room");
INSERT INTO `hotel` VALUES (8,1, 5,"Pillows", "Twin");
INSERT INTO `hotel` VALUES (9, 9, 5,"Gueshouse Suji", "Twin");
INSERT INTO `hotel` VALUES (10, 8,5, "Hotel Marlon", "Deluxe Room");

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

INSERT INTO `payment` VALUES (1, "HSBC", 1);
INSERT INTO `payment` VALUES (2, "Hana Bank", 2);
INSERT INTO `payment` VALUES (3, "Bankcontact", 3);
INSERT INTO `payment` VALUES (4, "Klarna", 4);
INSERT INTO `payment` VALUES (5, "iDEal", 5);
INSERT INTO `payment` VALUES (6, "PayPal", 6);
INSERT INTO `payment` VALUES (7, "WePay", 6);
INSERT INTO `payment` VALUES (8, "ApplePay", 7);
INSERT INTO `payment` VALUES (9, "Bankcontact", 9);
INSERT INTO `payment` VALUES (10, "BNP Paribas", 8);
