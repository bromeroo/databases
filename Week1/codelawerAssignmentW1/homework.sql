 
--   2. Create your database:
-- Create a database for the library based on the EDR diagram that we made today. Create the tables and populate them. You can choose to how extended your database will be but create at least 4 tables with 3 or 4 rows in each. Make sure that you use the correct data types (and that you use at least 3 different ones, eg: text, number, date). Keep in mind, a Library can have more than one copies of a book. There should be a mechanism to know if a copy is available or not.  (HINT: Use the sample databases you downloaded to help you)  Optional: Try to think what would be a good identifier (primary key) in each of your tables.

    
CREATE TABLE "Books" (  
  "BookID" int NOT NULL AUTO_INCREMENT,  
  "Author" nvarchar(50) NOT NULL DEFAULT "codelawer",  
  "Language" nvarchar(50) NOT NULL,  
  "Year" int NOT NULL,  
  "Copy" int NOT NULL,  
  "Description" text,  
  "BorrowDate" datetime,  
  "ReturnDate" datetime,  
  PRIMARY KEY ("BookID")  
);  
  
CREATE TABLE "Client" (
  "ClientID" int NOT NULL,
  "Name" nvarchar(50) NOT NULL,
  "Surname" nvarchar(50)NOT NULL,
  "Phone" nvarchar(10) NOT NULL,
  "BorrowDate" datetime,
  "ReturnDate" datetime,
  PRIMARY KEY ("ClientID")
);
  
CREATE TABLE "Borrow" (
  "BorrowID" int NOT NULL,
  "BookID" int,
  "ClientID" int,
  "Edition" int,
  "Copy" int,
  "BorrowDate" datetime,
  "ReturnDate" datetime,
  PRIMARY KEY ("BorrowID"),
  KEY "FK" ("BookID", "ClientID")
);



-- 3- Write queries to retrieve data that answers the following questions  
--  _Use world.sql db._
  
-- i- What are the names of the countries with population greater than 8 million  
  SELECT * from country where population >8000000  
-- ii- What are the names of the countries that have “land” in their names ?    
SELECT name from country where name like "%land%";  
-- iii- What are the names of the cities with population in between 500,000 and 1 million ?   
SELECT name from city where population between 500000 and 1000000;  
-- iv- What are the names of all the countries on the continent ‘Europe’ ?    
SELECT name from country where continent = "europe";  
-- v- List all the countries in the descending order based on their surface areas.  
SELECT * from country order by  surfacearea desc;    


-- _If you have time left and want more practice you can try these optional homework exercises:_  

-- **_1. Write queries that answer the following questions:_**  

-- i. What are the names of all the cities in the Netherlands?  
SELECT * from city where countrycode="NLD";  
-- ii. What's the population of Rotterdam?  
SELECT name, population from city where name="rotterdam";  
-- iii. What's the top 10 countries based on surface area?  
 SELECT * from country order by surfacearea desc limit 10;  
-- iv. What's the top 10 cities with the highest population?  
 SELECT * from city order by population desc limit 10;  
-- v. What's the population of the world ?  
SELECT count(*), sum(population) from country; 
