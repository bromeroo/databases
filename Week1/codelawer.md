- `show databases;`
- `use [database name]`
- `show tables`
- `select * from [table name]`
- `show columns from [table name]` === `describe [table name]`
- `SELECT * FROM [table name] WHERE [column name] = '***';`
- `SELECT COUNT(*) / SUM(column name) / AVG(column name) / MAX(column name) / MIN(column name) FROM [table name];`

**INNER JOIN ...ON (Multiple Tables)**  
`SELECT  [table name1].columnname, [table name2].columnname`<br> 
`FROM [table name1]`<br> 
`INNER JOIN [table name2]`<br> 
`ON [tablename1].columnname = [tablename2].columnname;`


   <h1>Homework</h1>  
   <h2>2. Create your database:</h2>  
Create a database for the library based on the EDR diagram that we made today. Create the tables and populate them. You can choose to how extended your database will be but create at least 4 tables with 3 or 4 rows in each. Make sure that you use the correct data types (and that you use at least 3 different ones, eg: text, number, date). Keep in mind, a Library can have more than one copies of a book. There should be a mechanism to know if a copy is available or not.  (HINT: Use the sample databases you downloaded to help you)  Optional: Try to think what would be a good identifier (primary key) in each of your tables.

**_Solution_**


   
 <h2>3- Write queries to retrieve data that answers the following questions:</h2>  
 _Use world.sql db._
  
i- What are the names of the countries with population greater than 8 million  
  `select * from country where population >8000000`  
ii- What are the names of the countries that have “land” in their names ?    
`select name from country where name like "%land%";`  
iii- What are the names of the cities with population in between 500,000 and 1 million ?   
`select name from city where population between 500000 and 1000000;`  
iv- What are the names of all the countries on the continent ‘Europe’ ?    
`select name from country where continent = "europe";`  
v- List all the countries in the descending order based on their surface areas.  
`select * from country order by  surfacearea desc;`    


_If you have time left and want more practice you can try these optional homework exercises:_  

**_1. Write queries that answer the following questions:_**  

i. What are the names of all the cities in the Netherlands?  
`select * from city where countrycode="NLD";`  
ii. What's the population of Rotterdam?  
`select name, population from city where name="rotterdam";`  
iii. What's the top 10 countries based on surface area?  
` select * from country order by surfacearea desc limit 10;`  
iv. What's the top 10 cities with the highest population?  
` select * from city order by population desc limit 10;`  
v. What's the population of the world ?  
`select count(*), sum(population) from country;`  
