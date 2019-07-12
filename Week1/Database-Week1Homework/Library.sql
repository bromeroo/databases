
 create database Library;
 create table Author(Name varchar(50) not null, Country varchar(50), Born_in date not null, ID_author int,primary key(ID_author));
create table Book(Title varchar(50), ISBN int, ID_author int,primary key(ISBN));
create table Copies(Is_Available BOOLEAN, ISBN int, ID_copy int,primary key(ID_copy));
create table Reservation(ID_reservation int, ID_borrower int not null, Due_Date date not null,primary key(ID_reservation));
create table Borrower(ID_borrower int not null, Name varchar(50) not null, email text,primary key(ID_borrower));
show tables;
+--------------------+
| Tables_in_library |
+--------------------+
| author             |
| book               |
| borrower           |
| copies             |             |
| reservation        |
+--------------------+
insert into Book value("Deep River","12354687"," 1212");
insert into Book value("Hamlet","123542187"," 1312");
insert into Book value("Lolita","1479542187"," 1412");
select *from Book;
+------------+------------+-----------+
| Title      | ISBN       | ID_author |
+------------+------------+-----------+
| Deep River |   12354687 |      1212 |
| Hamlet     |  123542187 |      1312 |
| Lolita     | 1479542187 |      1412 |
+------------+------------+-----------+
insert into Author value("Karl","USA","1944-12-24",1);
insert into Author value("William","USA","1564-04-26",2);
insert into Author value("Vladimir","France","1932-08-25",3);
select *from author;
+----------+---------+------------+-----------+
| Name     | Country | Born_in    | ID_author |
+----------+---------+------------+-----------+
| Karl     | USA     | 1944-12-24 |         1 |
| William  | USA     | 1564-04-26 |         2 |
| Vladimir | France  | 1932-08-25 |         3 |
+----------+---------+------------+-----------+
insert into Copies value(1,'12354687',1);
insert into Copies value(0,"123542187",2);
insert into Copies value(1,"1479542187",3);
select *from copies;
+--------------+------------+---------+
| Is_Available | ISBN       | ID_copy |
+--------------+------------+---------+
|            1 |   12354687 |       1 |
|            0 |  123542187 |       2 |
|            1 | 1479542187 |       3 |
+--------------+------------+---------+
insert into Reservation value(1,1,'2019-07-15');
insert into Reservation value(2,2,'2019-07-25');
insert into Reservation value(3,3,'2019-08-25');
select *from reservation;
+----------------+-------------+------------+
| ID_reservation | ID_borrower | Due_Date   |
+----------------+-------------+------------+
|              1 |           1 | 2019-07-15 |
|              2 |           2 | 2019-07-25 |
|              3 |           3 | 2019-08-25 |
+----------------+-------------+------------+
insert into Borrower value(1,'Jef','jefk@gmail.com');
insert into Borrower value(2,'Sara','sarahy@gmail.com');
insert into Borrower value(3,'Elizbeth','elizbeth@gmail.com');
select *from borrower;
+-------------+----------+--------------------+
| ID_borrower | Name     | email              |
+-------------+----------+--------------------+
|           1 | Jef      | jefk@gmail.com     |
|           2 | Sara     | sarahy@gmail.com   |
|           3 | Elizbeth | elizbeth@gmail.com |
+-------------+----------+--------------------+
