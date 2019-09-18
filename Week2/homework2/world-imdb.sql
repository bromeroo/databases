Homework 1 (More Queries)
WORLD:
use world;
show tables;
+-----------------+
| Tables_in_world |
+-----------------+
| city            |
| country         |
| countrylanguage |
+-----------------+


1.What is the name and the population of the most populated city in India?

select name, population from city where population = (select max(population) from city);
+-----------------+------------+
| name            | population |
+-----------------+------------+
| Mumbai (Bombay) |   10500000 |
+-----------------+------------+
1 row in set (0.01 sec)

2.List the names of the countries having at least 3 cities with 3 million inhabitants.

 SELECT countrycode, count(countrycode) as 'number_of_cities' from city where population>=3000000 
 GROUP BY countrycode HAVING number_of_cities>3;
+-------------+------------------+
| countrycode | number_of_cities |
+-------------+------------------+
| CHN         |                9 |
| IND         |                4 |
+-------------+------------------+

3.What is the number of all the official languages? List the country name and their official languages.

select count(distinct language) from countrylanguage;
+--------------------------+
| count(distinct language) |
+--------------------------+
|                      457 |
+--------------------------+

select count(distinct language) from countrylanguage  where isOfficial = 'T';
+--------------------------+
| count(distinct language) |
+--------------------------+
|                      102 |
+--------------------------+

select name, language from country INNER JOIN countrylanguage ON  code = countrycode where isofficial="T" ;
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
|
238 rows in set (0.01 sec)

select  count(*), language, name from country INNER JOIN countrylanguage ON  code = countrycode where isofficial="T" Group by name;
+----------+------------------+--------------------------------------+
| count(*) | language         | name                                 |
+----------+------------------+--------------------------------------+
|        2 | Dari             | Afghanistan                          |
|        1 | Albaniana        | Albania                              |
|        1 | Arabic           | Algeria                              |
|        2 | English          | American Samoa                       |
|        1 | Catalan          | Andorra                              |
|        1 | English          | Anguilla                             |
|        1 | English          | Antigua and Barbuda                  |
|        1 | Spanish          | Argentina                            |
|        1 | Armenian         | Armenia                              |
|        1 | Dutch            | Aruba                                |
|        1 | English          | Australia                            |
|        1 | German           | Austria                              |
|        1 | Azerbaijani      | Azerbaijan                           |
|        1 | Arabic           | Bahrain                              |
|        1 | Bengali          | Bangladesh                           |
|        1 | English          | Barbados                             |
|        2 | Belorussian      | Belarus                              |
|        3 | Dutch            | Belgium                              |
|        1 | English          | Belize                               |
+
190 rows in set (0.01 sec)

4.Find all the countries that have only one official language

select count(*), countryCode, name, isOfficial from countrylanguage join country on countryCode = Code  where isOfficial = 'T' group by countryCode having count(*)=1;
+----------+-------------+--------------------------------------+------------+
| count(*) | countryCode | name                                 | isOfficial |
+----------+-------------+--------------------------------------+------------+
|        1 | ABW         | Aruba                                | T          |
|        1 | AIA         | Anguilla                             | T          |
|        1 | ALB         | Albania                              | T          |
|        1 | AND         | Andorra                              | T          |
|        1 | ARE         | United Arab Emirates                 | T          |
|        1 | ARG         | Argentina                            | T          |
|        1 | ARM         | Armenia                              | T          |
|        1 | ATG         | Antigua and Barbuda                  | T          |
|        1 | AUS         | Australia                            | T          |
|        1 | AUT         | Austria                              | T          |
|        1 | AZE         | Azerbaijan                           | T          |
|        1 | BGD         | Bangladesh                           | T          |
|        1 | BGR         | Bulgaria                             | T          |
|        1 | BHR         | Bahrain                              | T          |
|        1 | BIH         | Bosnia and Herzegovina               | T          |

152 rows in set (0.01 sec)

5.Find which countries do not have a capital.

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
7 rows in set (0.00 sec)


6.Which country has the lowest population?

select name, min(population) from country;
+-------+-----------------+
| name  | min(population) |
+-------+-----------------+
| Aruba |               0 |
+-------+-----------------+
1 row in set (0.00 sec)

7.Make a list with all the languages spoken in Eastern Africa.

select distinct language  from countrylanguage join country on countryCode = Code  where region = 'Eastern Africa';
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

80 rows in set (0.00 sec)







IMDB
8.Find the minimum and the maximum age of the actors per gender.

 select min(age),max(age), gender from actors group by gender;
+----------+----------+--------+
| min(age) | max(age) | gender |
+----------+----------+--------+
|       28 |       70 | f      |
|       42 |       82 | m      |
+----------+----------+--------+
2 rows in set (0.00 sec)

9.Find how many actors are in their 20’s, 30’s, 40’s, 50’s etc (grouped by decade).

select count(age), floor(age/10)*10 as 'Age group' from actors group by floor(age/10)*10;
+------------+-----------+
| count(age) | Age group |
+------------+-----------+
|          1 |        20 |
|          1 |        30 |
|          1 |        40 |
|          3 |        50 |
|          2 |        70 |
|          1 |        80 |
+------------+-----------+
6 rows in set (0.04 sec)


10.Add a column to the films table for storing the duration (runtime) or each film.

describe films;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| mid      | int(11)     | NO   | PRI | NULL    | auto_increment |
| title    | varchar(50) | YES  |     | NULL    |                |
| director | varchar(50) | YES  |     | NULL    |                |
| year     | int(4)      | YES  |     | NULL    |                |
| rating   | int(11)     | YES  |     | NULL    |                |
+----------+-------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

ALTER TABLE films ADD duration TIME;
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

 describe films;
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

11.Alter the data type of column age to INT.

describe actors;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| aid       | int(11)     | NO   | PRI | NULL    | auto_increment |
| fname     | varchar(50) | YES  |     | NULL    |                |
| lname     | varchar(50) | YES  |     | NULL    |                |
| biography | text        | YES  |     | NULL    |                |
| age       | tinyint(2)  | YES  |     | NULL    |                |
| gender    | varchar(1)  | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

ALTER TABLE actors MODIFY age INT;
Query OK, 9 rows affected (0.09 sec)
Records: 9  Duplicates: 0  Warnings: 0

describe actors;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| aid       | int(11)     | NO   | PRI | NULL    | auto_increment |
| fname     | varchar(50) | YES  |     | NULL    |                |
| lname     | varchar(50) | YES  |     | NULL    |                |
| biography | text        | YES  |     | NULL    |                |
| age       | int(11)     | YES  |     | NULL    |                |
| gender    | varchar(1)  | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)


12.Print the names and biographies of the actors in this format “ANNE HATHAWAY BIO: 1 golden globe”

select concat(upper(fname), ' ', upper(lname),' ','BIO',':',' ',  biography) from actors;
+-----------------------------------------------------------------------+
| concat(upper(fname), ' ', upper(lname),' ','BIO',':',' ',  biography) |
+-----------------------------------------------------------------------+
| BRAD PITT BIO: lot of adopted children                                |
| ORLANDO BLOOM BIO: Cool guy                                           |
| ARNOLD SCHWARTZENEGGER BIO: body builder                              |
| JENNIFER LAWRENCE BIO: 100 most influential people                    |
| ANNE HATHAWAY BIO: 1 golden globe                                     |
| MERYL STREEP BIO: 31 Golden globe nominations                         |
| JENNIFER ANISTON BIO: Played in friends                               |
| HELENA BONHAM CARTER BIO: Wife of Tim Burton                          |
| MORGAN FREEMAN BIO: Narrator voice in every movie                     |
+-----------------------------------------------------------------------+
9 rows in set (0.00 sec)

13.Delete the column biography from films.

alter table actors drop biography;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

describe actors;
+--------+-------------+------+-----+---------+----------------+
| Field  | Type        | Null | Key | Default | Extra          |
+--------+-------------+------+-----+---------+----------------+
| aid    | int(11)     | NO   | PRI | NULL    | auto_increment |
| fname  | varchar(50) | YES  |     | NULL    |                |
| lname  | varchar(50) | YES  |     | NULL    |                |
| age    | int(11)     | YES  |     | NULL    |                |
| gender | varchar(1)  | YES  |     | NULL    |                |
+--------+-------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)





