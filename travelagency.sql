 create database travelAgency;
Query OK, 1 row affected (0.01 sec)
 use travelAgency;
Database changed
  create table Customer(CustomerId int not null primary key, Name varchar(50) not null, Surname varchar(50) not null,age int,gender varchar(20), Email text);
 create table package(PackageId int(15) not null primary key,CustomerId int(15),Country varchar(50),Cost int(10),Days int(2),Facility varchar(50), key fk(CustomerId));
 create table payment(PaymentId int(20) not null primary key,CustomerId int(15) not null,PDate date,CardNumber int(25),ExpiryDate date, key fk(CustomerId));
 create table Travel_Agency(AgencyId int(10) not null primary key,PackageId int(15) not null, fName varchar(20),lName varchar(20),PhoneNo int(50),Email text,key fk(PackageId));
 show tables;
+-------------------------+
| Tables_in_travelagency |
+-------------------------+
| customer                |
| package                 |
| payment                 |
| travel_agency           |           |
+-------------------------+
4 rows in set (0.00 sec)

insert into Customer Value(100, 'Fazilet','Kosure',35,'f','faziletkosure@gmail.com');
insert into Customer Value(101, 'Engin','Kosure',38,'m','enginkosure@gmail.com');
insert into Customer Value(4, 'Harun','Elmas',42,'m','harunelmas@gmail.com');
insert into Customer Value(102, 'Eren','Kosure',25,'m','erenkosure@gmail.com');
insert into Customer Value(103, 'Eva','Still',47,'f','evaelmas@gmail.com');
insert into Customer Value(104, 'Sara','Still',47,'f','sarastill@gmail.com');
insert into Customer Value(105, 'James','Stall',50,'m','jamesstall@gmail.com');
insert into Customer Value(106, 'Mike','Jhonsen',19,'m','mikejhonsen@gmail.com');
insert into Customer Value(107, 'Elizabth','Smith',23,'f','elizabth@gmail.com');
insert into Customer Value(108, 'Gerda','Jan',62,'f','gerdajan@gmail.com');

select *from customer;
+------------+----------+---------+------+--------+-------------------------+
| CustomerId | Name     | Surname | age  | gender | Email                   |
+------------+----------+---------+------+--------+-------------------------+
|          4 | Harun    | Elmas   |   42 | m      | harunelmas@gmail.com    |
|        100 | Fazilet  | Kosure  |   35 | f      | faziletkosure@gmail.com |
|        101 | Engin    | Kosure  |   38 | m      | enginkosure@gmail.com   |
|        102 | Eren     | Kosure  |   25 | m      | erenkosure@gmail.com    |
|        103 | Eva      | Still   |   47 | f      | evaelmas@gmail.com      |
|        104 | Sara     | Still   |   47 | f      | sarastill@gmail.com     |
|        105 | James    | Stall   |   50 | m      | jamesstall@gmail.com    |
|        106 | Mike     | Jhonsen |   19 | m      | mikejhonsen@gmail.com   |
|        107 | Elizabth | Smith   |   23 | f      | elizabth@gmail.com      |
|        108 | Gerda    | Jan     |   62 | f      | gerdajan@gmail.com      |
+------------+----------+---------+------+--------+-------------------------+
10 rows in set (0.00 sec)

 insert into package value(1, 100, "Spain", 7,700, "Hotel*****"),
->(2, 101, "Italy",5,850, "Hotel****"),
-> (3, 102, "Switzerland", 7, 2000, "Hotel****"),
-> (4, 103, "USA", 15, 5500, "Hotel***"),
-> (5, 4, "Prague", 6, 800, "Apart"),
-> (6, 104, "Norway", 10, 2500, "Hotel*****"),
-> (7, 101, "Switzerland", 5, 1500, "Hostel"),
->(8, 107, "Turkey",5,1000, "Hotel****"),
->  (9, 108, "France",3, 500, "Hotel****"),
->  (10, 106, "England",4, 750, "Hotel**");

 select *from package;
+-----------+------------+-------------+------+------+------------+
| PackageId | CustomerId | Country     | Cost | Days | Facility   |
+-----------+------------+-------------+------+------+------------+
|         1 |        100 | Spain       |    7 |  700 | Hotel***** |
|         2 |        101 | Italy       |    5 |  850 | Hotel****  |
|         3 |        102 | Switzerland |    7 | 2000 | Hotel****  |
|         4 |        103 | USA         |   15 | 5500 | Hotel***   |
|         5 |          4 | Prague      |    6 |  800 | Apart      |
|         6 |        104 | Norway      |   10 | 2500 | Hotel***** |
|         7 |        101 | Switzerland |    5 | 1500 | Hostel     |
|         8 |        107 | Turkey      |    5 | 1000 | Hotel****  |
|         9 |        108 | France      |    3 |  500 | Hotel****  |
|        10 |        106 | England     |    4 |  750 | Hotel**    |
+-----------+------------+-------------+------+------+------------+
10 rows in set (0.00 sec)

 insert into travel_agency value(10, 1, 'Davit', 'Stall', 054301254, 'davitstall@hotmail.com'),
->(11, 2, 'Nil', 'Gert',  054301234, 'nilgert@hotmail.com'),
-> (12, 3, 'Thomas', 'Jan',054312345, 'thomasjan@gmail.com'),
->  (13, 4, 'Anne', 'Smith', 094378945, 'annesmith@hotmail.com'),
->  (14, 5, 'Omer', 'Yildiz',031298765, 'omeryildiz@gmail.com'),
->  (15,6, 'Els', 'Bars', 097165412, 'elsbars@hotmail.com'),
->  (16, 7, 'Hust', 'Munck',045698712, 'hustmunck@gmail.com'),
-> (17, 8, 'Suzy', 'Horno', 054689721, 'suzyhorno@hotmail.com'),
->  (18, 9, 'Stephane', 'Vlack',054698732, 'stephanevlack@gmail.com'),

 select *from travel_agency;
+----------+-----------+----------+--------+----------+-------------------------+
| AgencyId | PackageId | fName    | lName  | PhoneNo  | Email                   |
+----------+-----------+----------+--------+----------+-------------------------+
|       10 |         1 | Davit    | Stall  | 54301254 | davitstall@hotmail.com  |
|       11 |         2 | Nil      | Gert   | 54301234 | nilgert@hotmail.com     |
|       12 |         3 | Thomas   | Jan    | 54312345 | thomasjan@gmail.com     |
|       13 |         4 | Anne     | Smith  | 94378945 | annesmith@hotmail.com   |
|       14 |         5 | Omer     | Yildiz | 31298765 | omeryildiz@gmail.com    |
|       15 |         6 | Els      | Bars   | 97165412 | elsbars@hotmail.com     |
|       16 |         7 | Hust     | Munck  | 45698712 | hustmunck@gmail.com     |
|       17 |         8 | Suzy     | Horno  | 54689721 | suzyhorno@hotmail.com   |
|       18 |         9 | Stephane | Vlack  | 54698732 | stephanevlack@gmail.com |
+----------+-----------+----------+--------+----------+-------------------------+
9 rows in set (0.00 sec)

insert into payment value(150,100,'2019-04-25',32165498,'2025-11-03'),
    -> (160,101,'2019-05-07',78945612,'2024-10-15'),
    -> (170,4,'2019-06-15',65432198,'2022-12-01'),
    -> (180,106,'2019-05-20',12345678,'2023-12-29');
 select *from payment;
+-----------+------------+------------+------------+------------+
| PaymentId | CustomerId | PDate      | CardNumber | ExpiryDate |
+-----------+------------+------------+------------+------------+
|       150 |        100 | 2019-04-25 |   32165498 | 2025-11-03 |
|       160 |        101 | 2019-05-07 |   78945612 | 2024-10-15 |
|       170 |          4 | 2019-06-15 |   65432198 | 2022-12-01 |
|       180 |        106 | 2019-05-20 |   12345678 | 2023-12-29 |
+-----------+------------+------------+------------+------------+
4 rows in set (0.00 sec)

THE QUERIES  (using JOINS)
1)the date and names of the paying customers
select name,PDate from customer inner join payment on customer.customerId=payment.customerId ;
+---------+------------+
| name    | PDate      |
+---------+------------+
| Fazilet | 2019-04-25 |
| Engin   | 2019-05-07 |
| Harun   | 2019-06-15 |
| Mike    | 2019-05-20 |
+---------+------------+

2)the names of the female customers, their age and which package they have chosen and accommodation facilities

 select name,age, country,facility from customer inner join package on customer.customerId=package.customerId where gender='f';
+----------+------+---------+------------+
| name     | age  | country | facility   |
+----------+------+---------+------------+
| Fazilet  |   35 | Spain   | Hotel***** |
| Eva      |   47 | USA     | Hotel***   |
| Sara     |   47 | Norway  | Hotel***** |
| Elizabth |   23 | Turkey  | Hotel****  |
| Gerda    |   62 | France  | Hotel****  |
+----------+------+---------+------------+
5 rows in set (0.00 sec)
4 rows in set (0.00 sec)

3)the names of all those responsible for the packages, the list of phone numbers and e-mail addresses.

select country, fname,phoneno,email from package inner join travel_agency on package.packageId=travel_agency.packageId;
+-------------+----------+----------+-------------------------+
| country     | fname    | phoneno  | email                   |
+-------------+----------+----------+-------------------------+
| Spain       | Davit    | 54301254 | davitstall@hotmail.com  |
| Italy       | Nil      | 54301234 | nilgert@hotmail.com     |
| Switzerland | Thomas   | 54312345 | thomasjan@gmail.com     |
| USA         | Anne     | 94378945 | annesmith@hotmail.com   |
| Prague      | Omer     | 31298765 | omeryildiz@gmail.com    |
| Norway      | Els      | 97165412 | elsbars@hotmail.com     |
| Switzerland | Hust     | 45698712 | hustmunck@gmail.com     |
| Turkey      | Suzy     | 54689721 | suzyhorno@hotmail.com   |
| France      | Stephane | 54698732 | stephanevlack@gmail.com |
+-------------+----------+----------+-------------------------+
9 rows in set (0.00 sec)

4) select count(*) from package;
+----------+
| count(*) |
+----------+
|       10 |
+----------+
1 row in set (0.00 sec)






