[The Reservation ERD](https://www.lucidchart.com/documents/edit/027d5efe-830d-433d-92a9-6d9efac0a90b/0)


Create database Reservation_ERD;

show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| Reservation_ERD    |
| class4             |
| hyf_musicians2     |
| imdb               |
| library            |
| mysql              |
| performance_schema |
| reservation        |
| sys                |
| world              |
+--------------------+
11 rows in set (0.01 sec)

use Reservation_ERD;
Database changed

mysql> CREATE TABLE `Packages` (
    ->   `Package_ID` INT(20),
    ->   `Reservation_ID` INT(20),
    ->   `Country` VARCHAR(30),
    ->   `Number of Days` INT (2),
    ->   `Cost` INT(5),
    ->   `Facility` VARCHAR(30),
    ->   PRIMARY KEY (`Package_ID`),
    ->   KEY `FK` (`Reservation_ID`)
    -> );


mysql> CREATE TABLE `Reservation` (
    ->   `Reservation_ID` INT(20),
    ->   `Customer_ID` VARCHAR(15),
    ->   `Start _date` DATE,
    ->   `End _date` DATE,
    ->   `Reservation_Date` DATETIME,
    ->   PRIMARY KEY (`Reservation_ID`),
    ->   KEY `FK` (`Customer_ID`)
    -> );

    
   CREATE TABLE `Customer` (
    ->   `Customer_ID` VARCHAR(15),
    ->   `Name` VARCHAR(15),
    ->   `Last_Name` VARCHAR(20),
    ->   `Date _of_Birth` DATE,
    ->   `Telephone` VARCHAR(15),
    ->   `email` TEXT,
    ->   `Adress` VARCHAR(50),
    ->   PRIMARY KEY (`Customer_ID`)
    -> );
    
    CREATE TABLE `Travel_Clerk` (
  `Travel _Clerk _ID` INT(20),
  `Package_ID` INT(20),
  `Name` VARCHAR(15),
  `LName` VARCHAR(20),
  `Telephone` VARCHAR(15),
  `email` TEXT,
  PRIMARY KEY (`Travel _Clerk _ID`),
  KEY `FK` (`Package_ID`)
);

CREATE TABLE `Payment` (
    ->   `Payment_ID` INT(20),
    ->   `Customer_ID` VARCHAR(15),
    ->   `Payment_Date` DATE,
    ->   `Deposit` INT(15),
    ->   `Name _on _the Card` VARCHAR(30),
    ->   `Card_Number` INT(20),
    ->   `Expiry_Date` DATE,
    ->   PRIMARY KEY (`Payment_ID`),
    ->   KEY `FK` (`Customer_ID`)
    -> );



   show tables;
+---------------------------+
| Tables_in_Reservation_ERD |
+---------------------------+
| Customer                  |
| Packages                  |
| Payment                   |
| Reservation               |
| Travel_Clerk              |
+---------------------------+


describe Packages;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| Package_ID     | int(20)     | NO   | PRI | NULL    |       |
| Reservation_ID | int(20)     | YES  | MUL | NULL    |       |
| Country        | varchar(30) | YES  |     | NULL    |       |
| Number of Days | int(2)      | YES  |     | NULL    |       |
| Cost           | int(5)      | YES  |     | NULL    |       |
| Facility       | varchar(30) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+


insert into Packages values(1, 100, "France", 5, 500, "Hotel****"),
(2, 200, "Spain", 7, 850, "Hotel***"),
(3, 300, "Italy", 10, 1000, "Apart"),
(4, 400, "Germany", 3, 250, "Hotel**"),
(5, 500, "Turkey", 5, 500, "Hotel****"),
(6, 600, "England", 3, 750, "Hotel**"),
(7, 700, "Crotia", 4, 900, "Hotel*****"),
(8, 800, "USA", 10, 2500, "Hotel***"),
(9, 900, "Greece", 5, 1500, "Hotel****"),
(10, 101, "Switzerland", 6, 2000, "Hostel");

select * from Packages;                                                                                                                                      +------------+----------------+-------------+----------------+------+------------+
| Package_ID | Reservation_ID | Country     | Number of Days | Cost | Facility   |
+------------+----------------+-------------+----------------+------+------------+
|          1 |            100 | France      |              5 |  500 | Hotel****  |
|          2 |            200 | Spain       |              7 |  850 | Hotel***   |
|          3 |            300 | Italy       |             10 | 1000 | Apart      |
|          4 |            400 | Germany     |              3 |  250 | Hotel**    |
|          5 |            500 | Turkey      |              5 |  500 | Hotel****  |
|          6 |            600 | England     |              3 |  750 | Hotel**    |
|          7 |            700 | Crotia      |              4 |  900 | Hotel***** |
|          8 |            800 | USA         |             10 | 2500 | Hotel***   |
|          9 |            900 | Greece      |              5 | 1500 | Hotel****  |
|         10 |            101 | Switzerland |              6 | 2000 | Hostel     |
+------------+----------------+-------------+----------------+------+------------+
10 rows in set (0.00 sec)


insert into Reservation values(100, 1570,'2019-08-10','2019-08-15','2019-04-20'),
(200,1571, '2019-07-05','2019-07-12','2019-01-20'),
(300, 1572,'2019-06-19','2019-06-24','2019-02-21'),
(400, 1573,'2019-08-05','2019-08-08','2019-05-20'),
(500, 1574, '2019-06-20', '2019-06-25', '2019-05-02'),
(600, 1575, '2019-08-13', '2019-08-16', '2019-05-13'),
(700, 1576, '2019-07-12','2019-07-16', '2019-04-12'),
(800, 1577, '2019-07-24','2019-08-02', '2019-02-11'),
(900, 1578, '2019-09-03', '2019-09-08', '2019-03-05'),
(101, 1579, '2019-06-23', '2019-06-29', '2019-04-11');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select * from Reservation;
+----------------+-------------+------------+------------+---------------------+
| Reservation_ID | Customer_ID | Start date | End date   | Reservation Date    |
+----------------+-------------+------------+------------+---------------------+
|            100 | 1570        | 2019-08-10 | 2019-08-15 | 2019-04-20 00:00:00 |
|            101 | 1579        | 2019-06-23 | 2019-06-29 | 2019-04-11 00:00:00 |
|            200 | 1571        | 2019-07-05 | 2019-07-12 | 2019-01-20 00:00:00 |
|            300 | 1572        | 2019-06-19 | 2019-06-24 | 2019-02-21 00:00:00 |
|            400 | 1573        | 2019-08-05 | 2019-08-08 | 2019-05-20 00:00:00 |
|            500 | 1574        | 2019-06-20 | 2019-06-25 | 2019-05-02 00:00:00 |
|            600 | 1575        | 2019-08-13 | 2019-08-16 | 2019-05-13 00:00:00 |
|            700 | 1576        | 2019-07-12 | 2019-07-16 | 2019-04-12 00:00:00 |
|            800 | 1577        | 2019-07-24 | 2019-08-02 | 2019-02-11 00:00:00 |
|            900 | 1578        | 2019-09-03 | 2019-09-08 | 2019-03-05 00:00:00 |
+----------------+-------------+------------+------------+---------------------+
10 rows in set (0.00 sec)

insert into Travel_Clerk values(10, 1, 'Jan', 'Smith', 054901234, 'jansmith@hotmail.com'),
(11, 2, 'Ely', 'Johnson', 054901233, 'elyjohnson@hotmail.com'),
(12, 3, 'Matt', 'Thomas',032325476, 'mattthomas@gmail.com'),
(13, 3, 'Gavin', 'Alert', 054989233, 'gavinalert@hotmail.com'),
(14, 4, 'Metin', 'Akkose',032325412, 'metinakkose@gmail.com'),
(15, 5, 'Josef', 'Dansk', 054989221, 'josejdansk@hotmail.com'),
(16, 6, 'Ali', 'Merck',032326712, 'alimerck@gmail.com'),
(17, 7, 'Mary', 'Allerso', 054129221, 'maryallerso@hotmail.com'),
(18, 8, 'Linda', 'Radley',032326579, 'lindaradley@gmail.com'),
(19, 9, 'Chantal', 'Jeff', 045678934, 'chantaljeff@gmail.com);

select * from Travel_Clerk;
+-------------------+------------+---------+---------+-----------+-------------------------+
| Travel _Clerk _ID | Package_ID | Name    | LName   | Telephone | email                   |
+-------------------+------------+---------+---------+-----------+-------------------------+
|                10 |          1 | Jan     | Smith   | 54901234  | jansmith@hotmail.com    |
|                11 |          2 | Ely     | Johnson | 54901233  | elyjohnson@hotmail.com  |
|                12 |          3 | Matt    | Thomas  | 32325476  | mattthomas@gmail.com    |
|                13 |          3 | Gavin   | Alert   | 54989233  | gavinalert@hotmail.com  |
|                14 |          4 | Metin   | Akkose  | 32325412  | metinakkose@gmail.com   |
|                15 |          5 | Josef   | Dansk   | 54989221  | josejdansk@hotmail.com  |
|                16 |          6 | Ali     | Merck   | 32326712  | alimerck@gmail.com      |
|                17 |          7 | Mary    | Allerso | 54129221  | maryallerso@hotmail.com |
|                18 |          8 | Linda   | Radley  | 32326579  | lindaradley@gmail.com   |
|                19 |          9 | Chantal | Jeff    | 45678934  | chantaljeff@gmail.com   |
+-------------------+------------+---------+---------+-----------+-------------------------+
10 rows in set (0.00 sec)


insert into Customer values(1570, 'Aydin', 'Akkose', '1973-09-22',0489123243,'aydinakkose@hotmail.com', 'Sintannastraat,3,Aalst'),
(1571, 'Jennifer', 'Ross','1978-08-12', 0986123456, 'jenniferross@gmail.com', 'Tanglelaan,22,Brugge'),
(1572, 'Jeff', 'DeWulf', '1970-08-22',0489233243,'jeffdewulf@hotmail.com', 'Kamiliestraat,3,Antwerpen'),
(1573, 'Veronique', 'Hanne','1979-09-12', 0986123123, 'veroniquehanne@gmail.com', 'Tanglelaan,22,Brugge'),
(1574, 'Machteld', 'Claes', '1980-08-29',0484563243,'machteldclaes@hotmail.com', 'Jagersdreff,3,Uccle'),
(1575, 'Tielke', 'Richardson','1979-12-21', 0987234567, 'tielkerichardson', 'Capellestreet,7,London'),
(1576, 'Yasmine', 'Kool', '1967-06-21',0488763243,'yasminekool@hotmail.com', 'Jackson Avenue,3,New York'),
(1577, 'Lamprini', 'Adams','1989-11-21', 0123234567, 'lampriniadams', 'Sintjozefstraat,7,Mechelen'),
(1578, 'Elizabeth', 'Election', '1960-06-29',0488789243,'Elizabethelection@hotmail.com', 'Jackleenlaan,32,Brussel'),
(1579, 'Alfi', 'Alter','1981-12-21', 0122344567, 'alfialter@gmail.com', 'Vrijheidstraat,7,Turnhout');

select * from Customer;
+-------------+-----------+------------+----------------+-----------+-------------------------------+----------------------------+
| Customer_ID | Name      | Last_Name  | Date _of_Birth | Telephone | email                         | Adress                     |
+-------------+-----------+------------+----------------+-----------+-------------------------------+----------------------------+
| 1570        | Aydin     | Akkose     | 1973-09-22     | 489123243 | aydinakkose@hotmail.com       | Sintannastraat,3,Aalst     |
| 1571        | Jennifer  | Ross       | 1978-08-12     | 986123456 | jenniferross@gmail.com        | Tanglelaan,22,Brugge       |
| 1572        | Jeff      | DeWulf     | 1970-08-22     | 489233243 | jeffdewulf@hotmail.com        | Kamiliestraat,3,Antwerpen  |
| 1573        | Veronique | Hanne      | 1979-09-12     | 986123123 | veroniquehanne@gmail.com      | Tanglelaan,22,Brugge       |
| 1574        | Machteld  | Claes      | 1980-08-29     | 484563243 | machteldclaes@hotmail.com     | Jagersdreff,3,Uccle        |
| 1575        | Tielke    | Richardson | 1979-12-21     | 987234567 | tielkerichardson              | Capellestreet,7,London     |
| 1576        | Yasmine   | Kool       | 1967-06-21     | 488763243 | yasminekool@hotmail.com       | Jackson Avenue,3,New York  |
| 1577        | Lamprini  | Adams      | 1989-11-21     | 123234567 | lampriniadams                 | Sintjozefstraat,7,Mechelen |
| 1578        | Elizabeth | Election   | 1960-06-29     | 488789243 | Elizabethelection@hotmail.com | Jackleenlaan,32,Brussel    |
| 1579        | Alfi      | Alter      | 1981-12-21     | 122344567 | alfialter@gmail.com           | Vrijheidstraat,7,Turnhout  |
+-------------+-----------+------------+----------------+-----------+-------------------------------+----------------------------+
10 rows in set (0.01 sec)



insert into Payment values(1050, 1570, '2019-05-12', 200,'Aydin Akkose',1234567890, '2024-12-11'),
(1060, 1573, '2019-05-08', 100,'Veronique Hanne',2134563510, '2022-11-09'),
(1080, 1576, '2019-05-10', 300,'Yasmine Kool',9876563510, '2023-12-08');

select * from Payment;
+------------+-------------+--------------+---------+--------------------+-------------+-------------+
| Payment_ID | Customer_ID | Payment_Date | Deposit | Name _on _the Card | Card_Number | Expiry_Date |
+------------+-------------+--------------+---------+--------------------+-------------+-------------+
|       1050 | 1570        | 2019-05-12   |     200 | Aydin Akkose       |  1234567890 | 2024-12-11  |
|       1060 | 1573        | 2019-05-08   |     100 | Veronique Hanne    |  2134563510 | 2022-11-09  |
|       1080 | 1576        | 2019-05-10   |     300 | Yasmine Kool       |   987656351 | 2023-12-08  |
+------------+-------------+--------------+---------+--------------------+-------------+-------------+
3 rows in set (0.00 sec)

select Name, Last_Name from Customer where Adress like '%Brugge%';
+-----------+-----------+
| Name      | Last_Name |
+-----------+-----------+
| Jennifer  | Ross      |
| Veronique | Hanne     |
+-----------+-----------+
2 rows in set (0.01 sec)

select max(cost) from Packages;
+-----------+
| max(cost) |
+-----------+
|      2500 |
+-----------+

select Name,Last_Name,Adress from Customer where Customer_Id = 1578;
+-----------+-----------+-------------------------+
| Name      | Last_Name | Adress                  |
+-----------+-----------+-------------------------+
| Elizabeth | Election  | Jackleenlaan,32,Brussel |
+-----------+-----------+-------------------------+
1 row in set (0.00 sec)

select country, cost from Packages where Cost >= 1500;
+-------------+------+
| country     | cost |
+-------------+------+
| USA         | 2500 |
| Greece      | 1500 |
| Switzerland | 2000 |
+-------------+------+
3 rows in set (0.01 sec)




