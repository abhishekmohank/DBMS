mysql> create database COMPANY;
ERROR 1007 (HY000): Cant create database 'company'; database exists
mysql> use COMPANY;
Database changed
 create table EMPLOYEE(
 SSN char(3) NOT NULL PRIMARY KEY,
 Name varchar(255),
 Address varchar(255),
 Sex varchar(5),
 Salary integer,
 SuperSSN char(4),
 DNo integer
 );

Query OK, 0 rows affected (0.03 sec)

mysql> describe EMPLOYEE;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| SSN      | char(3)      | NO   | PRI | NULL    |       |
| Name     | varchar(255) | YES  |     | NULL    |       |
| Address  | varchar(255) | YES  |     | NULL    |       |
| Sex      | varchar(5)   | YES  |     | NULL    |       |
| Salary   | int          | YES  |     | NULL    |       |
| SuperSSN | char(4)      | YES  |     | NULL    |       |
| DNo      | int          | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
7 rows in set (0.04 sec)

mysql> create table DEPARTMENT(
 Dno integer,
 DName varchar(255),
 ..
 ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '..' at line 4
mysql> create table DEPARTMENT(
 DNo integer NOT NULL PRIMARY KEY,
 DName varchar(255),
 MgrSSN char(4),
 MgrStartDate date
 );
Query OK, 0 rows affected (0.05 sec)

mysql> describe DEPAERTMENT;
ERROR 1146 (42S02): Table 'company.depaertment' doesnt exist
mysql> describe DEPARTMENT;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| DNo          | int          | NO   | PRI | NULL    |       |
| DName        | varchar(255) | YES  |     | NULL    |       |
| MgrSSN       | char(4)      | YES  |     | NULL    |       |
| MgrStartDate | date         | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table DEPARTMENT(
     ll.3.
     ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.3.' at line 2
mysql> create table DLOCATION(
     DNi integer NOT NULL PRIMARY KEY,
     ..;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '..' at line 3
mysql> create table DLOCATION(
     DNi integer NOT NULL PRIMARY KEY,
     ..
     ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '..' at line 3
mysql> create table DLOCATION(
     DNo integer NOT NULL PRIMARY KEY,
     Dloc varchar(255)
     );
Query OK, 0 rows affected (0.05 sec)

mysql> describe DLOCATION;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| DNo   | int          | NO   | PRI | NULL    |       |
| Dloc  | varchar(255) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> create table PROJECT(
     Pno char(3) NOT NULL PRIMARY KEY,
     PName varchar(255),
     Plocation varchar(255),
     Dno integer
     );
Query OK, 0 rows affected (0.05 sec)

mysql> describe project;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| Pno       | char(3)      | NO   | PRI | NULL    |       |
| PName     | varchar(255) | YES  |     | NULL    |       |
| Plocation | varchar(255) | YES  |     | NULL    |       |
| Dno       | int          | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table WORKS_ON(
     SSN char(3) NOT NULL PRIMARY KEY,
     Pno char(3),
     Hours integer
     );
Query OK, 0 rows affected (0.02 sec)

mysql> describe WORKS_ON;
+-------+---------+------+-----+---------+-------+
| Field | Type    | Null | Key | Default | Extra |
+-------+---------+------+-----+---------+-------+
| SSN   | char(3) | NO   | PRI | NULL    |       |
| Pno   | char(3) | YES  |     | NULL    |       |
| Hours | int     | YES  |     | NULL    |       |
+-------+---------+------+-----+---------+-------+
3 rows in set (0.00 sec)


mysql> alter table EMPLOYEE add Age integer;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe EMPLOYEE;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| SSN      | char(3)      | NO   | PRI | NULL    |       |
| Name     | varchar(255) | YES  |     | NULL    |       |
| Address  | varchar(255) | YES  |     | NULL    |       |
| Sex      | varchar(5)   | YES  |     | NULL    |       |
| Salary   | int          | YES  |     | NULL    |       |
| SuperSSN | char(4)      | YES  |     | NULL    |       |
| DNo      | int          | YES  |     | NULL    |       |
| Age      | int          | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> drop table PROJECT;
Query OK, 0 rows affected (0.02 sec)

mysql> describe PROJECT;
ERROR 1146 (42S02): Table 'company.project' doesnt exist
mysql> truncate table WORKS_ON;
Query OK, 0 rows affected (0.02 sec)

mysql> describe DEPARTMENT;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| DNo          | int          | NO   | PRI | NULL    |       |
| DName        | varchar(255) | YES  |     | NULL    |       |
| MgrSSN       | char(4)      | YES  |     | NULL    |       |
| MgrStartDate | date         | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into employee values ('e10','abisk','kasargod','M',25000,'s10',3,28);
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee values ('e11','nobel','kasargod','M',45000,'s10',3,64);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values ('e13','unnirk','kozhikod','F',55000,'s12',4,11);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values ('e23','Anuj','chenaiF',5000,'e13',5,55);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values ('e26','vats','kannurM',25000,'e13',2,59);
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+-----+--------+----------+------+--------+----------+------+------+
| SSN | Name   | Address  | Sex  | Salary | SuperSSN | DNo  | Age  |
+-----+--------+----------+------+--------+----------+------+------+
| e10 | abhisk | kasargod | M    |  25000 | s10      |    3 |   28 |
| e11 | nobel  | kasargod | M    |  45000 | s10      |    3 |   64 |
| e13 | unnirk | kozhikod | F    |  55000 | s12      |    4 |   11 |
| e23 | Anuj   | chenai   | F    |   5000 | e13      |    5 |   55 |
| e26 | vats   | kannur   | M    |  25000 | e13      |    2 |   59 |
+-----+--------+----------+------+--------+----------+------+------+
5 rows in set (0.00 sec)

mysql> describe works_on;
+-------+---------+------+-----+---------+-------+
| Field | Type    | Null | Key | Default | Extra |
+-------+---------+------+-----+---------+-------+
| SSN   | char(3) | NO   | PRI | NULL    |       |
| Pno   | char(3) | YES  |     | NULL    |       |
| Hours | int     | YES  |     | NULL    |       |
+-------+---------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into works_on values('e26','213',13);
Query OK, 1 row affected (0.02 sec)

mysql> insert into works_on values('e10','213',13);
Query OK, 1 row affected (0.00 sec)

mysql> insert into works_on values('e11','333',10);
Query OK, 1 row affected (0.01 sec)

mysql> insert into works_on values('e23','1333',60);
ERROR 1406 (22001): Data too long for column 'Pno' at row 1
mysql> insert into works_on values('e23','133',60);;
Query OK, 1 row affected (0.01 sec)

ERROR:
No query specified

mysql> insert into works_on values('e2','133',60);
Query OK, 1 row affected (0.00 sec)

mysql> insert into works_on values('e13','133',60);
Query OK, 1 row affected (0.01 sec)

mysql> insert into department values(1,'Research','s10','2001-11-02');
Query OK, 1 row affected (0.01 sec)

mysql> insert into department values(2,'HR','s12','2005-03-11');
Query OK, 1 row affected (0.00 sec)

mysql> insert into department values(3,'Reachers','s13','2011-11-15');
Query OK, 1 row affected (0.01 sec)

mysql> insert into department values(4,'Tech','e12','2012-11-14');
Query OK, 1 row affected (0.01 sec)

mysql> insert into department values(5,'Stock','s09','2018-11-08');
Query OK, 1 row affected (0.01 sec)

mysql> select * from depaertment;
ERROR 1146 (42S02): Table 'company.depaertment' doesnt exist

mysql> select * from department;
+-----+----------+--------+--------------+
| DNo | DName    | MgrSSN | MgrStartDate |
+-----+----------+--------+--------------+
|   1 | Research | s10    | 2001-11-02   |
|   2 | HR       | s12    | 2005-03-11   |
|   3 | Reachers | s13    | 2011-11-15   |
|   4 | Tech     | e12    | 2012-11-14   |
|   5 | Stock    | s09    | 2018-11-08   |
+-----+----------+--------+--------------+
5 rows in set (0.00 sec)

mysql> select * from works_on;
+-----+------+-------+
| SSN | Pno  | Hours |
+-----+------+-------+
| e10 | 213  |    13 |
| e11 | 333  |    10 |
| e13 | 133  |    60 |
| e2  | 133  |    60 |
| e23 | 133  |    60 |
| e26 | 213  |    13 |
+-----+------+-------+
6 rows in set (0.00 sec)

mysql> describe dlocation;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| DNo   | int          | NO   | PRI | NULL    |       |
| Dloc  | varchar(255) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into dlocation values(1,'kasargod');
Query OK, 1 row affected (0.04 sec)

mysql> insert into dlocation values(2,'kasargod');
Query OK, 1 row affected (0.01 sec)

mysql> insert into dlocation values(3,'kasargod');
Query OK, 1 row affected (0.01 sec)

mysql> insert into dlocation values(4,'Ekm');
Query OK, 1 row affected (0.04 sec)

mysql> insert into dlocation values(5,'kasargod');
Query OK, 1 row affected (0.01 sec)

mysql> select * from dlocation;
+-----+----------+
| DNo | Dloc     |
+-----+----------+
|   1 | kasargod  |
|   2 | kasargod  |
|   3 | kasargod  |
|   4 | chenai    |
|   5 | kasargod  |
+-----+----------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+-----+--------+----------+------+--------+----------+------+------+
| SSN | Name   | Address  | Sex  | Salary | SuperSSN | DNo  | Age  |
+-----+--------+----------+------+--------+----------+------+------+
| e10 | abhisk  | kasargod | M    |  25000 | s10      |    3 |   28 |
| e11 | nobel  | kasargod  | M    |  45000 | s10      |    3 |   64 |
| e13 | unnirk | kozhikod  | F    |  55000 | s12      |    4 |   11 |
| e23 | Anuj   | chenai    | F    |   5000 | e13      |    5 |   55 |
| e26 | vats   | kannur    | M    |  25000 | e13      |    2 |   59 |
+-----+--------+----------+------+--------+----------+------+------+
5 rows in set (0.00 sec)

mysql> update employee set Salary = 25000 where SSN = 'e11';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+-----+--------+----------+------+--------+----------+------+------+
| SSN | Name   | Address  | Sex  | Salary | SuperSSN | DNo  | Age  |
+-----+--------+----------+------+--------+----------+------+------+
| e10 | abhisk | kasargod | M    |  25000 | s10      |    3 |   28 |
| e11 | nobel  | kasargod | M    |  25000 | s10      |    3 |   64 |
| e13 | unnirk | kozhikod | F    |  55000 | s12      |    4 |   11 |
| e23 | Anuj   | chenai   | F    |   5000 | e13      |    5 |   55 |
| e26 | vats   | kannur   | M    |  25000 | e13      |    2 |   59 |
+-----+--------+----------+------+--------+----------+------+------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+-----+--------+----------+------+--------+----------+------+------+
| SSN | Name   | Address  | Sex  | Salary | SuperSSN | DNo  | Age  |
+-----+--------+----------+------+--------+----------+------+------+
| e10 | abisk  | kasargod | M    |  25000 | s10      |    3 |   28 |
| e11 | nobel  | kasargod | M    |  25000 | s10      |    3 |   64 |
| e13 | unnirk | kozhikod | F    |  55000 | s12      |    4 |   11 |
| e23 | Anuj   | chenai   | F    |   5000 | e13      |    5 |   55 |
| e26 | vats   | kannur   | M    |  25000 | e13      |    2 |   59 |
+-----+--------+----------+------+--------+----------+------+------+
5 rows in set (0.00 sec)

mysql> delete from employee where SSN = 'e23';
Query OK, 1 row affected (0.00 sec)

mysql> select * from employee;
+-----+--------+----------+------+--------+----------+------+------+
| SSN | Name   | Address  | Sex  | Salary | SuperSSN | DNo  | Age  |
+-----+--------+----------+------+--------+----------+------+------+
| e10 | abisk  | kasargod | M    |  25000 | s10      |    3 |   28 |
| e11 | nobel  | kasargod | M    |  25000 | s10      |    3 |   64 |
| e13 | unnirk | kozhikod | F    |  55000 | s12      |    4 |   11 |
| e26 | vats   | kannur   | M    |  25000 | e13      |    2 |   59 |
+-----+--------+----------+------+--------+----------+------+------+
4 rows in set (0.00 sec)

mysql> create user User1 identified by 'password';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select on employee to User1;
Query OK, 0 rows affected (0.01 sec)

mysql> show grants for User1;
+-----------------------------------------------------+
| Grants for User1@%                                  |
+-----------------------------------------------------+
| GRANT USAGE ON *.* TO `User1`@`%`                   |
| GRANT SELECT ON `company`.`employee` TO `User1`@`%` |
+-----------------------------------------------------+
2 rows in set (0.00 sec)

mysql> revoke select on employee from User1;
Query OK, 0 rows affected (0.01 sec)

mysql> show grants for User1;
+-----------------------------------+
| Grants for User1@%                |
+-----------------------------------+
| GRANT USAGE ON *.* TO `User1`@`%` |
+-----------------------------------+
1 row in set (0.00 sec)


mysql>mysql> select name from employee where name like "%a_";
+-------+
| name  |
+-------+
| anuja |
+-------+
1 row in set (0.00 sec)

mysql> select Sex,count(Sex) from employee group by Sex;
+------+------------+
| Sex  | count(Sex) |
+------+------------+
| M    |          4 |
| F    |          1 |
+------+------------+
2 rows in set (0.01 sec)

mysql> select avg(Salary) from employee where  Sex = "F" ;
+-------------+
| avg(Salary) |
+-------------+
|  55000.0000 |
+-------------+
1 row in set (0.00 sec)

mysql> select sum(Salary) from employee where  Sex = "M" ;
+-------------+
| sum(Salary) |
+-------------+
|      225000 |
+-------------+
1 row in set (0.00 sec)

mysql> select max(Salary),min(Salary) from employee where  Sex = "M" ;
+-------------+-------------+
| max(Salary) | min(Salary) |
+-------------+-------------+
|      125000 |       25000 |
+-------------+-------------+
1 row in set (0.00 sec)

mysql> select * from employee where salary between 25000 and 50000;
+-----+-------+----------+------+--------+----------+------+------+
| SSN | Name  | Address  | Sex  | Salary | SuperSSN | DNo  | Age  |
+-----+-------+----------+------+--------+----------+------+------+
| e10 | abisk | kasargod | M    |  25000 | s10      |    3 |   28 |
| e11 | nobel | kasargod | M    |  25000 | s10      |    3 |   64 |
| e15 | anuja | kasargod | M    |  25000 | s10      |    3 |   28 |
| e26 | vats  | kannur   | M    |  25000 | e13      |    2 |   59 |
+-----+-------+----------+------+--------+----------+------+------+
4 rows in set (0.00 sec)

mysql> select name from employee where salary = 30000 or salary = 40000 or salary = 50000;
+------+
| name |
+------+
| ramu |
+------+
1 row in set (0.00 sec)


mysql> select * from employee;
+-----+--------+----------+------+--------+----------+------+------+
| SSN | Name   | Address  | Sex  | Salary | SuperSSN | DNo  | Age  |
+-----+--------+----------+------+--------+----------+------+------+
| e10 | abisk  | kasargod | M    |  25000 | s10      |    3 |   28 |
| e11 | nobel  | kasargod | M    |  25000 | s10      |    3 |   64 |
| e13 | unnirk | kozhikod | F    |  55000 | s12      |    4 |   11 |
| e15 | anuja  | kasargod | M    |  25000 | s10      |    3 |   28 |
| e26 | vats   | kannur   | M    |  25000 | e13      |    2 |   59 |
| e41 | ram    | kasargod | M    |  30000 | s11      |    4 |   45 |
| e45 | raj    | kasargod | M    | 125000 | s11      |    4 |   45 |
+-----+--------+----------+------+--------+----------+------+------+
7 rows in set (0.00 sec)

mysql> update employee set salary = salary + 0.25* salary where Address = 'kasargod';
Query OK, 4 rows affected (0.04 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> select * from employee;
+-----+--------+----------+------+--------+----------+------+------+
| SSN | Name   | Address  | Sex  | Salary | SuperSSN | DNo  | Age  |
+-----+--------+----------+------+--------+----------+------+------+
| e10 | abisk  | kasargod | M    |  31250 | s10      |    3 |   28 |
| e11 | nobel  | kasargod | M    |  25000 | s10      |    3 |   64 |
| e13 | unnirk | kozhikod | F    |  55000 | s12      |    4 |   11 |
| e15 | anuja  | kasargod | M    |  31250 | s10      |    3 |   28 |
| e26 | vats   | kannur   | M    |  25000 | e13      |    2 |   59 |
| e41 | ram    | kasargod | M    |  37500 | s11      |    4 |   45 |
| e45 | raj    | kasargod | M    | 156250 | s11      |    4 |   45 |
+-----+--------+----------+------+--------+----------+------+------+
7 rows in set (0.00 sec)

mysql> select name,Dloc from employee,dlocation,works_on where dlocation.Dno = employee.Dno and works_on.SSN = employee.SSN and Hours > 5;
+--------+---------+
| name   | Dloc    |
+--------+---------+
| abisk  | kasargod |
| nobel  | kasargod |
| unnirk | chenai   |
| vats   | kasargod |
+--------+---------+
4 rows in set (0.01 sec)

mysql> select Dloc,Pno from employee,works_on,dlocation
    -> where works_on.SSN = employee.SSN and
    -> dlocation.Dno = employee.Dno and works_on.Hours is NOT NULL;
+---------+------+
| Dloc    | Pno  |
+---------+------+
| kasargod | 213  |
| kasargod | 333  |
| chenai   | 133  |
| kasargod | 213  |
+---------+------+
4 rows in set (0.00 sec)

mysql> select Name,Hours from employee,works_on,dlocation
    -> where works_on.SSN = employee.SSN and
    -> dlocation.Dno = employee.Dno and dlocation.Dloc is NOT NULL;
+--------+-------+
| Name   | Hours |
+--------+-------+
| abisk  |    13 |
| nobel  |    10 |
| unnirk |    60 |
| vats   |    13 |
+--------+-------+
4 rows in set (0.01 sec)

mysql> select works_on.Pno,employee.Name,dlocation.Dloc,employee.Dno,employee.SSN,works_on.hours from employee,works_on,dlocation
    -> where works_on.SSN = employee.SSN and
    -> dlocation.Dno = employee.Dno ;
+------+--------+---------+------+-----+-------+
| Pno  | Name   | Dloc    | Dno  | SSN | hours |
+------+--------+---------+------+-----+-------+
| 213  | abisk  | kasargod |    3 | e10 |    13 |
| 333  | nobel  | kasargod |    3 | e11 |    10 |
| 133  | unnirk | chenai   |    4 | e13 |    60 |
| 213  | vats   | kasargod |    2 | e26 |    13 |
+------+--------+---------+------+-----+-------+
4 rows in set (0.00 sec)