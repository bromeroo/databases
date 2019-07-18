1. What is the name and the population of the most populated city in India?

 select name,population from city where population=(select max(population)from city);
+-----------------+------------+
| name            | population |
+-----------------+------------+
| Mumbai (Bombay) |   10500000 |
+-----------------+------------+
1 row in set (0.01 sec)

2. List the names of the countries having at least 3 cities with 3 million inhabitants.
  SELECT country.Name, COUNT(*) AS cityCount FROM country inner join city on country.code=city.countrycode WHERE city.population>=3000000 group by country.Name having cityCount>=3;
+-------+-----------+
| Name  | cityCount |
+-------+-----------+
| India |         4 |
| China |         9 |
+-------+-----------+
2 rows in set (0.00 sec)


3.a)What is the number of all the official languages? 
select count(distinct language) from countrylanguage where isOfficial='t';
+--------------------------+
| count(distinct language) |
+--------------------------+
|                      102 |
+--------------------------+
1 row in set (0.00 sec)

b)want the name of the country and the number of official languages (not the names of the languages)
select  count(*), name from country INNER JOIN countrylanguage ON  code = countrycode where isofficial="T" Group by language;
+----------+------------------------+
| count(*) | name                   |
+----------+------------------------+
|        4 | Aruba                  |
|        1 | Afghanistan            |
|        1 | Afghanistan            |
|       44 | Anguilla               |
|        1 | Albania                |
|        1 | Andorra                |
|        1 | Netherlands Antilles   |
|       22 | United Arab Emirates   |
|       20 | Argentina              |
|        1 | Armenia                |
|        2 | American Samoa         |
|        6 | Austria                |
|        1 | Azerbaijan             |
|       18 | Burundi                |
|        1 | Burundi                |
|        1 | Bangladesh             |
|        1 | Bulgaria               |
|        3 | Bosnia and Herzegovina |
|        1 | Belarus                |
|        3 | Belarus                |
|        2 | Bolivia                |
|        2 | Bolivia                |
|        6 | Brazil                 |
|        4 | Brunei                 |
|        1 | Bhutan                 |
|        4 | Switzerland            |
|        1 | Switzerland            |
|        2 | China                  |
|        1 | Cook Islands           |
|        1 | Comoros                |
|        2 | Cyprus                 |
|        2 | Cyprus                 |
|        1 | Czech Republic         |
|        3 | Denmark                |
|        1 | Eritrea                |
|        1 | Estonia                |
|        1 | Finland                |
|        2 | Finland                |
|        1 | Fiji Islands           |
|        1 | Faroe Islands          |
|        1 | Georgia                |
|        1 | Greenland              |
|        1 | Guam                   |
|        1 | Hungary                |
|        1 | India                  |
|        1 | Ireland                |
|        1 | Iran                   |
|        1 | Iceland                |
|        1 | Israel                 |
|        1 | Japan                  |
|        1 | Kazakstan              |
|        1 | Kyrgyzstan             |
|        1 | Cambodia               |
|        1 | Kiribati               |
|        2 | South Korea            |
|        1 | Laos                   |
|        1 | Sri Lanka              |
|        2 | Sri Lanka              |
|        1 | Lesotho                |
|        1 | Lithuania              |
|        1 | Luxembourg             |
|        1 | Latvia                 |
|        2 | Moldova                |
|        1 | Madagascar             |
|        1 | Maldives               |
|        1 | Marshall Islands       |
|        1 | Macedonia              |
|        1 | Malta                  |
|        1 | Myanmar                |
|        1 | Mongolia               |
|        1 | Malawi                 |
|        2 | Norway                 |
|        1 | Nepal                  |
|        1 | Nauru                  |
|        1 | Pakistan               |
|        1 | Philippines            |
|        1 | Palau                  |
|        1 | Poland                 |
|        1 | Paraguay               |
|        1 | Romania                |
|        1 | Rwanda                 |
|        1 | Senegal                |
|        1 | Somalia                |
|        1 | Slovakia               |
|        1 | Slovenia               |
|        1 | Swaziland              |
|        1 | Togo                   |
|        1 | Togo                   |
|        1 | Thailand               |
|        1 | Tajikistan             |
|        1 | Turkmenistan           |
|        1 | Tonga                  |
|        1 | Tuvalu                 |
|        1 | Taiwan                 |
|        1 | Tanzania               |
|        1 | Ukraine                |
|        1 | Uzbekistan             |
|        1 | Vietnam                |
|        1 | Vanuatu                |
|        1 | South Africa           |
|        1 | South Africa           |
|        1 | South Africa           |
+----------+------------------------+
102 rows in set (0.00 sec)

c)List the country name and their official languages.
select name, language from country INNER JOIN countrylanguage  ON  code = countrycode where isofficial="T";
+--------------------------------------+------------------+
| name                                 | language         |
+--------------------------------------+------------------+
| Aruba                                | Dutch            |
| Afghanistan                          | Dari             |
| Afghanistan                          | Pashto           |
| Anguilla                             | English          |
| Albania                              | Albaniana        |
| Andorra                              | Catalan          |
| Netherlands Antilles                 | Dutch            |
| Netherlands Antilles                 | Papiamento       |
| United Arab Emirates                 | Arabic           |
| Argentina                            | Spanish          |
| Armenia                              | Armenian         |
| American Samoa                       | English          |
| American Samoa                       | Samoan           |
| Antigua and Barbuda                  | English          |
| Australia                            | English          |
| Austria                              | German           |
| Azerbaijan                           | Azerbaijani      |
| Burundi                              | French           |
| Burundi                              | Kirundi          |
| Belgium                              | Dutch            |
| Belgium                              | French           |
| Belgium                              | German           |
| Bangladesh                           | Bengali          |
| Bulgaria                             | Bulgariana       |
| Bahrain                              | Arabic           |
| Bosnia and Herzegovina               | Serbo-Croatian   |
| Belarus                              | Belorussian      |
| Belarus                              | Russian          |
| Belize                               | English          |
| Bermuda                              | English          |
| Bolivia                              | Aimará           |
| Bolivia                              | Ket?ua           |
| Bolivia                              | Spanish          |
| Brazil                               | Portuguese       |
| Barbados                             | English          |
| Brunei                               | Malay            |
| Bhutan                               | Dzongkha         |
| Canada                               | English          |
| Canada                               | French           |
| Cocos (Keeling) Islands              | English          |
| Switzerland                          | French           |
| Switzerland                          | German           |
| Switzerland                          | Italian          |
| Switzerland                          | Romansh          |
| Chile                                | Spanish          |
| China                                | Chinese          |
| Cook Islands                         | Maori            |
| Colombia                             | Spanish          |
| Comoros                              | Comorian         |
| Cape Verde                           | Portuguese       |
| Costa Rica                           | Spanish          |
| Cuba                                 | Spanish          |
| Christmas Island                     | English          |
| Cayman Islands                       | English          |
| Cyprus                               | Greek            |
| Cyprus                               | Turkish          |
| Czech Republic                       | Czech            |
| Germany                              | German           |
| Djibouti                             | Arabic           |
| Denmark                              | Danish           |
| Dominican Republic                   | Spanish          |
| Algeria                              | Arabic           |
| Ecuador                              | Spanish          |
| Egypt                                | Arabic           |
| Eritrea                              | Tigrinja         |
| Western Sahara                       | Arabic           |
| Spain                                | Spanish          |
| Estonia                              | Estonian         |
| Finland                              | Finnish          |
| Finland                              | Swedish          |
| Fiji Islands                         | Fijian           |
| Falkland Islands                     | English          |
| France                               | French           |
| Faroe Islands                        | Danish           |
| Faroe Islands                        | Faroese          |
| United Kingdom                       | English          |
| Georgia                              | Georgiana        |
| Gibraltar                            | English          |
| Guadeloupe                           | French           |
| Guinea-Bissau                        | Portuguese       |
| Greece                               | Greek            |
| Greenland                            | Danish           |
| Greenland                            | Greenlandic      |
| Guatemala                            | Spanish          |
| Guam                                 | Chamorro         |
| Guam                                 | English          |
| Hong Kong                            | English          |
| Honduras                             | Spanish          |
| Croatia                              | Serbo-Croatian   |
| Haiti                                | French           |
| Hungary                              | Hungarian        |
| Indonesia                            | Malay            |
| India                                | Hindi            |
| Ireland                              | English          |
| Ireland                              | Irish            |
| Iran                                 | Persian          |
| Iraq                                 | Arabic           |
| Iceland                              | Icelandic        |
| Israel                               | Arabic           |
| Israel                               | Hebrew           |
| Italy                                | Italian          |
| Jordan                               | Arabic           |
| Japan                                | Japanese         |
| Kazakstan                            | Kazakh           |
| Kyrgyzstan                           | Kirgiz           |
| Kyrgyzstan                           | Russian          |
| Cambodia                             | Khmer            |
| Kiribati                             | Kiribati         |
| Saint Kitts and Nevis                | English          |
| South Korea                          | Korean           |
| Kuwait                               | Arabic           |
| Laos                                 | Lao              |
| Lebanon                              | Arabic           |
| Libyan Arab Jamahiriya               | Arabic           |
| Saint Lucia                          | English          |
| Liechtenstein                        | German           |
| Sri Lanka                            | Singali          |
| Sri Lanka                            | Tamil            |
| Lesotho                              | English          |
| Lesotho                              | Sotho            |
| Lithuania                            | Lithuanian       |
| Luxembourg                           | French           |
| Luxembourg                           | German           |
| Luxembourg                           | Luxembourgish    |
| Latvia                               | Latvian          |
| Macao                                | Portuguese       |
| Morocco                              | Arabic           |
| Monaco                               | French           |
| Moldova                              | Romanian         |
| Madagascar                           | French           |
| Madagascar                           | Malagasy         |
| Maldives                             | Dhivehi          |
| Mexico                               | Spanish          |
| Marshall Islands                     | English          |
| Marshall Islands                     | Marshallese      |
| Macedonia                            | Macedonian       |
| Malta                                | English          |
| Malta                                | Maltese          |
| Myanmar                              | Burmese          |
| Mongolia                             | Mongolian        |
| Northern Mariana Islands             | English          |
| Montserrat                           | English          |
| Martinique                           | French           |
| Malawi                               | Chichewa         |
| Malaysia                             | Malay            |
| Mayotte                              | French           |
| New Caledonia                        | French           |
| Norfolk Island                       | English          |
| Nicaragua                            | Spanish          |
| Niue                                 | English          |
| Netherlands                          | Dutch            |
| Norway                               | Norwegian        |
| Nepal                                | Nepali           |
| Nauru                                | English          |
| Nauru                                | Nauru            |
| New Zealand                          | English          |
| Oman                                 | Arabic           |
| Pakistan                             | Urdu             |
| Panama                               | Spanish          |
| Peru                                 | Aimará           |
| Peru                                 | Ket?ua           |
| Peru                                 | Spanish          |
| Philippines                          | Pilipino         |
| Palau                                | English          |
| Palau                                | Palau            |
| Poland                               | Polish           |
| Puerto Rico                          | Spanish          |
| North Korea                          | Korean           |
| Portugal                             | Portuguese       |
| Paraguay                             | Guaraní          |
| Paraguay                             | Spanish          |
| French Polynesia                     | French           |
| Qatar                                | Arabic           |
| Romania                              | Romani           |
| Romania                              | Romanian         |
| Russian Federation                   | Russian          |
| Rwanda                               | French           |
| Rwanda                               | Rwanda           |
| Saudi Arabia                         | Arabic           |
| Sudan                                | Arabic           |
| Senegal                              | Wolof            |
| Singapore                            | Chinese          |
| Singapore                            | Malay            |
| Singapore                            | Tamil            |
| Saint Helena                         | English          |
| Svalbard and Jan Mayen               | Norwegian        |
| El Salvador                          | Spanish          |
| San Marino                           | Italian          |
| Somalia                              | Arabic           |
| Somalia                              | Somali           |
| Saint Pierre and Miquelon            | French           |
| Slovakia                             | Slovak           |
| Slovenia                             | Slovene          |
| Sweden                               | Swedish          |
| Swaziland                            | Swazi            |
| Seychelles                           | English          |
| Seychelles                           | French           |
| Syria                                | Arabic           |
| Turks and Caicos Islands             | English          |
| Chad                                 | Arabic           |
| Togo                                 | Ewe              |
| Togo                                 | Kabyé            |
| Thailand                             | Thai             |
| Tajikistan                           | Tadzhik          |
| Tokelau                              | English          |
| Turkmenistan                         | Turkmenian       |
| East Timor                           | Portuguese       |
| Tonga                                | English          |
| Tonga                                | Tongan           |
| Tunisia                              | Arabic           |
| Turkey                               | Turkish          |
| Tuvalu                               | English          |
| Tuvalu                               | Tuvalu           |
| Taiwan                               | Mandarin Chinese |
| Tanzania                             | Swahili          |
| Ukraine                              | Ukrainian        |
| United States Minor Outlying Islands | English          |
| Uruguay                              | Spanish          |
| United States                        | English          |
| Uzbekistan                           | Uzbek            |
| Holy See (Vatican City State)        | Italian          |
| Saint Vincent and the Grenadines     | English          |
| Venezuela                            | Spanish          |
| Virgin Islands, British              | English          |
| Virgin Islands, U.S.                 | English          |
| Vietnam                              | Vietnamese       |
| Vanuatu                              | Bislama          |
| Vanuatu                              | English          |
| Vanuatu                              | French           |
| Samoa                                | English          |
| Samoa                                | Samoan           |
| Yemen                                | Arabic           |
| Yugoslavia                           | Serbo-Croatian   |
| South Africa                         | Afrikaans        |
| South Africa                         | English          |
| South Africa                         | Xhosa            |
| South Africa                         | Zulu             |
| Zimbabwe                             | English          |
+--------------------------------------+------------------+
238 rows in set (0.01 sec)

4. Find all the countries that have only one official language
select name from country INNER JOIN countrylanguage ON  code = countrycode where isofficial="T" Group by name having count(*)=1;
+--------------------------------------+
| name                                 |
+--------------------------------------+
| Aruba                                |
| Anguilla                             |
| Albania                              |
| Andorra                              |
| United Arab Emirates                 |
| Argentina                            |
| Armenia                              |
| Antigua and Barbuda                  |
| Australia                            |
| Austria                              |
| Azerbaijan                           |
| Bangladesh                           |
| Bulgaria                             |
| Bahrain                              |
| Bosnia and Herzegovina               |
| Belize                               |
| Bermuda                              |
| Brazil                               |
| Barbados                             |
| Brunei                               |
| Bhutan                               |
| Cocos (Keeling) Islands              |
| Chile                                |
| China                                |
| Cook Islands                         |
| Colombia                             |
| Comoros                              |
| Cape Verde                           |
| Costa Rica                           |
| Cuba                                 |
| Christmas Island                     |
| Cayman Islands                       |
| Czech Republic                       |
| Germany                              |
| Djibouti                             |
| Denmark                              |
| Dominican Republic                   |
| Algeria                              |
| Ecuador                              |
| Egypt                                |
| Eritrea                              |
| Western Sahara                       |
| Spain                                |
| Estonia                              |
| Fiji Islands                         |
| Falkland Islands                     |
| France                               |
| United Kingdom                       |
| Georgia                              |
| Gibraltar                            |
| Guadeloupe                           |
| Guinea-Bissau                        |
| Greece                               |
| Guatemala                            |
| Hong Kong                            |
| Honduras                             |
| Croatia                              |
| Haiti                                |
| Hungary                              |
| Indonesia                            |
| India                                |
| Iran                                 |
| Iraq                                 |
| Iceland                              |
| Italy                                |
| Jordan                               |
| Japan                                |
| Kazakstan                            |
| Cambodia                             |
| Kiribati                             |
| Saint Kitts and Nevis                |
| South Korea                          |
| Kuwait                               |
| Laos                                 |
| Lebanon                              |
| Libyan Arab Jamahiriya               |
| Saint Lucia                          |
| Liechtenstein                        |
| Lithuania                            |
| Latvia                               |
| Macao                                |
| Morocco                              |
| Monaco                               |
| Moldova                              |
| Maldives                             |
| Mexico                               |
| Macedonia                            |
| Myanmar                              |
| Mongolia                             |
| Northern Mariana Islands             |
| Montserrat                           |
| Martinique                           |
| Malawi                               |
| Malaysia                             |
| Mayotte                              |
| New Caledonia                        |
| Norfolk Island                       |
| Nicaragua                            |
| Niue                                 |
| Netherlands                          |
| Norway                               |
| Nepal                                |
| New Zealand                          |
| Oman                                 |
| Pakistan                             |
| Panama                               |
| Philippines                          |
| Poland                               |
| Puerto Rico                          |
| North Korea                          |
| Portugal                             |
| French Polynesia                     |
| Qatar                                |
| Russian Federation                   |
| Saudi Arabia                         |
| Sudan                                |
| Senegal                              |
| Saint Helena                         |
| Svalbard and Jan Mayen               |
| El Salvador                          |
| San Marino                           |
| Saint Pierre and Miquelon            |
| Slovakia                             |
| Slovenia                             |
| Sweden                               |
| Swaziland                            |
| Syria                                |
| Turks and Caicos Islands             |
| Chad                                 |
| Thailand                             |
| Tajikistan                           |
| Tokelau                              |
| Turkmenistan                         |
| East Timor                           |
| Tunisia                              |
| Turkey                               |
| Taiwan                               |
| Tanzania                             |
| Ukraine                              |
| United States Minor Outlying Islands |
| Uruguay                              |
| United States                        |
| Uzbekistan                           |
| Holy See (Vatican City State)        |
| Saint Vincent and the Grenadines     |
| Venezuela                            |
| Virgin Islands, British              |
| Virgin Islands, U.S.                 |
| Vietnam                              |
| Yemen                                |
| Yugoslavia                           |
| Zimbabwe                             |
+--------------------------------------+
152 rows in set (0.00 sec)


5. Find which countries do not have a capital.
 select name,capital from country where capital is null;
+----------------------------------------------+---------+
| name                                         | capital |
+----------------------------------------------+---------+
| Antarctica                                   |    NULL |
| French Southern territories                  |    NULL |
| Bouvet Island                                |    NULL |
| Heard Island and McDonald Islands            |    NULL |
| British Indian Ocean Territory               |    NULL |
| South Georgia and the South Sandwich Islands |    NULL |
| United States Minor Outlying Islands         |    NULL |
+----------------------------------------------+---------+

6. Which country has the lowest population?
 select name from country where population=(select min(population)from country);
+----------------------------------------------+
| name                                         |
+----------------------------------------------+
| Antarctica                                   |
| French Southern territories                  |
| Bouvet Island                                |
| Heard Island and McDonald Islands            |
| British Indian Ocean Territory               |
| South Georgia and the South Sandwich Islands |
| United States Minor Outlying Islands         |
+----------------------------------------------+

7. Make a list with all the languages spoken in Eastern Africa.
 select language from country inner join countrylanguage on code=countrycode where region='eastern africa' group by language;
OR
select distinct language from country inner join countrylanguage on code=countrycode where region='eastern africa';
+--------------------+
| language           |
+--------------------+
| French             |
| Kirundi            |
| Swahili            |
| Comorian           |
| Comorian-Arabic    |
| Comorian-French    |
| Comorian-madagassi |
| Comorian-Swahili   |
| Afar               |
| Arabic             |
| Somali             |
| Bilin              |
| Hadareb            |
| Saho               |
| Tigre              |
| Tigrinja           |
| Amhara             |
| Gurage             |
| Oromo              |
| Sidamo             |
| Walaita            |
| Gusii              |
| Kalenjin           |
| Kamba              |
| Kikuyu             |
| Luhya              |
| Luo                |
| Masai              |
| Meru               |
| Nyika              |
| Turkana            |
| Malagasy           |
| Chuabo             |
| Lomwe              |
| Makua              |
| Marendje           |
| Nyanja             |
| Ronga              |
| Sena               |
| Shona              |
| Tsonga             |
| Tswa               |
| Bhojpuri           |
| Creole French      |
| Hindi              |
| Marathi            |
| Tamil              |
| Chichewa           |
| Ngoni              |
| Yao                |
| Mahoré             |
| Chinese            |
| Rwanda             |
| English            |
| Seselwa            |
| Chaga and Pare     |
| Gogo               |
| Ha                 |
| Haya               |
| Hehet              |
| Luguru             |
| Makonde            |
| Nyakusa            |
| Nyamwesi           |
| Shambala           |
| Acholi             |
| Ganda              |
| Gisu               |
| Kiga               |
| Lango              |
| Lugbara            |
| Nkole              |
| Soga               |
| Teso               |
| Bemba              |
| Chewa              |
| Lozi               |
| Nsenga             |
| Tongan             |
| Ndebele            |
+--------------------+
80 rows in set (0.00 sec)

IMDB
8. Find the minimum and the maximum age of the actors per gender.
select gender, max(age),min(age) from actors group by gender;
+--------+----------+----------+
| gender | max(age) | min(age) |
+--------+----------+----------+
| m      |       82 |       42 |
| f      |       70 |       28 |
+--------+----------+----------+
2 rows in set (0.00 sec)

9. Find how many actors are in their 20’s, 30’s, 40’s, 50’s etc (grouped by decade).
select count(*),floor(age/10)*10 from actors group by floor(age/10)*10;
+----------+------------------+
| count(*) | floor(age/10)*10 |
+----------+------------------+
|        3 |               50 |
|        1 |               40 |
|        2 |               70 |
|        1 |               20 |
|        1 |               30 |
|        1 |               80 |
+----------+------------------+
6 rows in set (0.01 sec)

10. Add a column to the films table for storing the duration (runtime) or each film.
 ALTER TABLE films ADD duration time;
Query OK, 0 rows affected (0.07 sec)

select *from films;
+-----+------------------+-------------------+------+--------+----------+
| mid | title            | director          | year | rating | duration |
+-----+------------------+-------------------+------+--------+----------+
|   1 | Predator         | John McTiernan    | 1987 |      9 | NULL     |
|   2 | Troy             | Wolfgang Petersen | 2004 |      8 | NULL     |
|   3 | Hunger Games     | Gary Ross         | 2012 |      7 | NULL     |
|   4 | Kramer vs Kramer | Robert Benton     | 1970 |      8 | NULL     |
|   5 | Colossal         | Nacho Vigalondo   | 2016 |      6 | NULL     |
|   6 | Fight Club       | David Fincher     | 1999 |      9 | NULL     |
|   7 | Seven            | David Fincher     | 1995 |      8 | NULL     |
|   8 | Zodiac           | David Fincher     | 2007 |      7 | NULL     |
|   9 | The Human Stain  | Robert Benton     | 2003 |      6 | NULL     |
+-----+------------------+-------------------+------+--------+----------+
9 rows in set (0.00 sec)

desc films;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| mid      | int(11)     | NO   | PRI | NULL    | auto_increment |
| title    | varchar(50) | YES  |     | NULL    |                |
| director | varchar(50) | YES  |     | NULL    |                |
| year     | int(4)      | YES  |     | NULL    |                |
| rating   | int(11)     | YES  |     | NULL    |                |
| duration | time        | YES  |     | NULL    |                |
+----------+-------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)


11. Alter the data type of column age to INT.
 ALTER TABLE actors MODIFY age INT(9);
Query OK, 9 rows affected (0.16 sec)

desc actors;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| aid       | int(11)     | NO   | PRI | NULL    | auto_increment |
| fname     | varchar(50) | YES  |     | NULL    |                |
| lname     | varchar(50) | YES  |     | NULL    |                |
| biography | text        | YES  |     | NULL    |                |
| age       | int(9)      | YES  |     | NULL    |                |
| gender    | varchar(1)  | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
6 rows in set (0.02 sec)

12. Print the names and biographies of the actors in this format “ANNE HATHAWAY BIO: 1 golden globe”
 select concat (upper(fname),' ', upper(lname),' ', 'BIO:',' ', biography) from actors;
+--------------------------------------------------------------------+
| concat (upper(fname),' ', upper(lname),' ', 'BIO:',' ', biography) |
+--------------------------------------------------------------------+
| BRAD PITT BIO: lot of adopted children                             |
| ORLANDO BLOOM BIO: Cool guy                                        |
| ARNOLD SCHWARTZENEGGER BIO: body builder                           |
| JENNIFER LAWRENCE BIO: 100 most influential people                 |
| ANNE HATHAWAY BIO: BIO: 1 golden globe                             |
| MERYL STREEP BIO: 31 Golden globe nominations                      |
| JENNIFER ANISTON BIO: Played in friends                            |
| HELENA BONHAM CARTER BIO: Wife of Tim Burton                       |
| MORGAN FREEMAN BIO: Narrator voice in every movie                  |
+--------------------------------------------------------------------+
9 rows in set (0.00 sec)

13. Delete the column biography from actors.

alter table actors drop biography;
Query OK, 0 rows affected (0.30 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from actors;
+-----+----------+-----------------+------+--------+
| aid | fname    | lname           | age  | gender |
+-----+----------+-----------------+------+--------+
|   1 | Brad     | Pitt            |   55 | m      |
|   2 | Orlando  | Bloom           |   42 | m      |
|   3 | Arnold   | Schwartzenegger |   71 | m      |
|   4 | Jennifer | Lawrence        |   28 | f      |
|   5 | ANNE     | HATHAWAY        |   36 | f      |
|   6 | Meryl    | Streep          |   70 | f      |
|   7 | Jennifer | Aniston         |   50 | f      |
|   8 | Helena   | Bonham Carter   |   53 | f      |
|   9 | Morgan   | Freeman         |   82 | m      |
+-----+----------+-----------------+------+--------+
9 rows in set (0.00 sec)


