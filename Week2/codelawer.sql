--World

-- 1. What is the name and the population of the most populated city in India?
select name, max(population)
from city as asas
where countrycode = "IND"
order by population desc;

-- 2. List the names of the countries having at least 3 cities with 3 million inhabitants.
select country.name, count(*)
from country inner join city on code=countrycode
where city.population>=3000000
group by country.name
having count(*)>3;

-- 3. What is the number of all the official languages? List the country name and their official languages.
select count(*), language, name
from country INNER JOIN countrylanguage ON  code = countrycode
where isofficial="T"
Group by name;

-- 4. Find all the countries that have only one official language
select *
from countrylanguage
group by countrycode
having count(*)=1;

-- 5. Find which countries do not have a capital.
select *
from country
where capital is null;

-- 6. Which country has the lowest population?
select name, min(population)
from country
group by name
having min(population) = 0;

-- 7. Make a list with all the languages spoken in Eastern Africa.
select language
from country inner join countrylanguage on code = countrycode
where region = "Eastern Africa";



--IMDB

--8. Find the minimum and the maximum age of the actors per gender.
select min(age), gender, max(age), gender
from actors
group by gender;

--9. Find how many actors are in their 20’s, 30’s, 40’s, 50’s etc (grouped by decade).------------------------------????
select age, count(*)
from actors
group by age
having age like "5%";

--
select count(*)
from actors
where age like "5%";


--10. Add a column to the films table for storing the duration (runtime) or each film.
alter table films add column duration int default 0;

-- 11. Alter the data type of column age to INT
--alter table [table name] change [column name] [field, type, null, key, default, extra];
alter table actors change age age int;

--12. Print the names and biographies of the actors in this format “ANNE HATHAWAY BIO: 1 golden globe”
select concat (UPPER(fname)," ", UPPER(lname), " ", "BIO:"," ", biography) as newColumnName
from actors;

-- 13. Delete the column biography from films.
alter table actors drop biography;
