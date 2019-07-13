
select Name from country where Population>8000000;
select Name from country where Name LIKE "%land%";
select Name from city where Population between 500000 and 1000000;
select Name from country where Continent="Europe";
select Name from country order by SurfaceArea desc;
select Name from city where CountryCode="NLD";
select Population from city where Name="Rotterdam";
select Name from country order by SurfaceArea desc limit 10;
select Name from country order by Population desc limit 10;
select sum(Population) from country;
