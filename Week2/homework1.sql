--from world.sql
--What is the name and the population of the most populated city in India?
select Name, Population from city where CountryCode = "IND" ORDER BY Population DESC limit 1;

--List the names of the countries having at least 3 cities with 3 million inhabitants.
select CountryCode from city where Population > 3000000 group by CountryCode having count(CountryCode) >= 3;

--What is the number of all the official languages? List the country name and their official languages.
select CountryCode, count(Language) from countrylanguage where isOfficial = "T" group by CountryCode;

--Find all the countries that have only one official language
select CountryCode, count(Language) from countrylanguage where isOfficial = "T" group by CountryCode having count(Language) = 1;

--Find which countries do not have a capital.
select Name, Capital from country where Capital is NULL;

--Which country has the lowest population?
select Name, Population from country order by Population asc limit 1;

--Make a list with all the languages spoken in Eastern Africa.
select country.Name, countrylanguage.Language from country left join countrylanguage on country.Code = countrylanguage.CountryCode where country.Region = "Eastern Africa";
