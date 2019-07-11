create database library;
use library;

create table author(id_author int,name varchar(50),country varchar(50),born_in date,primary key(id_author));

create table book(id_author int,title varchar(50),ISBN int,primary key(ISBN));

create table copy(id_copy int,is_available enum('Y','N') not null,ISBN int,primary key(id_copy));

create table reservation(id_reservation int,id_borrower int  not null,id_copycopy int,due_date date not null,primary key(id_reservation));

create table borrower(id_borrower int  not null,name varchar(50),email text not null,primary key(id_borrower));

mysql> show tables;
+-------------------+
| Tables_in_library |
+-------------------+
| author            |
| book              |
| borrower          |
| copy              |
| reservation       |
+-------------------+
5 rows in set (0.00 sec)

mysql> insert into author value(1,'F.Scott Fitzgerald','USA','1896-09-24');
Query OK, 1 row affected (0.01 sec)

mysql> select * from author;
+-----------+--------------------+---------+------------+
| id_author | name               | country | born_in    |
+-----------+--------------------+---------+------------+
|         1 | F.Scott Fitzgerald | USA     | 1896-09-24 |
+-----------+--------------------+---------+------------+
1 row in set (0.00 sec)

mysql> insert into author value(2,'Nathaniel Hawthorne','USA','1804-07-04');
insert into author value(2,'Nathaniel Hawthorne','USA','1804-07-04');

mysql> insert into author value(3,'Elif Shafak','TUR','1971-10-25');
Query OK, 1 row affected (0.01 sec)

mysql> insert into author value(4,'Jacques Brel','BEL','1929-04-08');
Query OK, 1 row affected (0.01 sec)

mysql> select *from author;
+-----------+---------------------+---------+------------+
| id_author | name                | country | born_in    |
+-----------+---------------------+---------+------------+
|         1 | F.Scott Fitzgerald  | USA     | 1896-09-24 |
|         2 | Nathaniel Hawthorne | USA     | 1804-07-04 |
|         3 | Elif Shafak         | TUR     | 1971-10-25 |
|         4 | Jacques Brel        | BEL     | 1929-04-08 |
+-----------+---------------------+---------+------------+
4 rows in set (0.00 sec)

mysql> insert into book value(1,'The Great Gatsby',97860525);
Query OK, 1 row affected (0.01 sec)

mysql> insert into book value(2,'The Scarlet Letter',12345678);
Query OK, 1 row affected (0.00 sec)

mysql> insert into book value(3,'Forty Rules Of Love',56789438);
Query OK, 1 row affected (0.01 sec)

mysql> insert into book value(4,'L`Oeuvre Integrale',34561908);
Query OK, 1 row affected (0.01 sec)

mysql> select * from book;
+-----------+---------------------+----------+
| id_author | title               | ISBN     |
+-----------+---------------------+----------+
|         2 | The Scarlet Letter  | 12345678 |
|         4 | L`Oeuvre Integrale  | 34561908 |
|         3 | Forty Rules Of Love | 56789438 |
|         1 | The Great Gatsby    | 97860525 |
+-----------+---------------------+----------+
4 rows in set (0.00 sec)
mysql> insert into copy value(1,'Y',97860525);
Query OK, 1 row affected (0.01 sec)

mysql> insert into copy value(2,'Y',12345678);
Query OK, 1 row affected (0.01 sec)

mysql> insert into copy value(3,'N',56789438);
Query OK, 1 row affected (0.00 sec)

mysql> insert into copy value(4,'N',34561908);
Query OK, 1 row affected (0.01 sec)

mysql> select * from copy;
+---------+--------------+----------+
| id_copy | is_available | ISBN     |
+---------+--------------+----------+
|       1 | Y            | 97860525 |
|       2 | Y            | 12345678 |
|       3 | N            | 56789438 |
|       4 | N            | 34561908 |
+---------+--------------+----------+
4 rows in set (0.00 sec)

mysql> insert into reservation value(100,156,11,'2019-07-11');
Query OK, 1 row affected (0.01 sec)

mysql> insert into reservation value(101,157,12,'2019-07-12');
Query OK, 1 row affected (0.00 sec)

mysql> insert into reservation value(102,158,13,'2019-07-13');
Query OK, 1 row affected (0.01 sec)

mysql> insert into reservation value(103,159,14,'2019-07-13');
Query OK, 1 row affected (0.00 sec)

mysql> select * from reservation;
+----------------+-------------+-------------+------------+
| id_reservation | id_borrower | id_copycopy | due_date   |
+----------------+-------------+-------------+------------+
|            100 |         156 |          11 | 2019-07-11 |
|            101 |         157 |          12 | 2019-07-12 |
|            102 |         158 |          13 | 2019-07-13 |
|            103 |         159 |          14 | 2019-07-13 |
+----------------+-------------+-------------+------------+
4 rows in set (0.01 sec)


mysql> insert into borrower  value(156,'Nihan Akkose','fnakkose@hotmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into borrower  value(157,'Fazilet Kosure','faziletkosure1@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into borrower  value(158,'Linda Moggio','lindamoggio@hotmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into borrower  value(159,'Alfi Yusrina','alfiyusrina@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> select *from borrower;
+-------------+----------------+--------------------------+
| id_borrower | name           | email                    |
+-------------+----------------+--------------------------+
|         156 | Nihan Akkose   | fnakkose@hotmail.com     |
|         157 | Fazilet Kosure | faziletkosure1@gmail.com |
|         158 | Linda Moggio   | lindamoggio@hotmail.com  |
|         159 | Alfi Yusrina   | alfiyusrina@gmail.com    |
+-------------+----------------+--------------------------+
4 rows in set (0.00 sec)



