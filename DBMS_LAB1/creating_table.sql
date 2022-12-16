mysql> create database abisk;
Query OK, 1 row affected (0.05 sec)

mysql> create table
    -> product master
    -> ^C
mysql> create table
    -> productmaster values(
    -> ^C
mysql> create table product_master(
    -> salesman_no integer,
    -> salesman_name varchar(20),
    -> adress_1 varchar(20),
    -> adress_2 varchar(20),
    -> city varchar(20),
    -> pincode integer,
    -> state varchar(20)
    -> );
ERROR 1046 (3D000): No database selected
mysql> use abisk;
Database changed
mysql> create table product_master(
    -> salesman_no integer,
    -> salesman_name varchar(20),
    -> adress_1 varchar(20),
    -> adress_2 varchar(20),
    -> city varchar(20),
    -> pincode integer,
    -> state varchar(20)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> insert into abisk
    -> values (1, "akshay" , "thrissur" , "ernakulam" , "thrissur" , 68001 , "kerala" );
ERROR 1146 (42S02): Table 'abisk.abisk' doesn't exist
mysql> insert into product_master
    -> values (1, "akshay" , "thrissur" , "ernakulam" , "thrissur" , 68001 , "kerala" );
Query OK, 1 row affected (0.04 sec)

mysql> insert into product_master
    -> values (1, "nobel" , "waynad" , "ernakulam" , "idduki" , 293949 , "kerala" );
Query OK, 1 row affected (0.05 sec)

mysql> values (1, "nobel" , "waynad" , "ernakulam" , "idduki" , 293949 , "kerala" );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(1, "nobel" , "waynad" , "ernakulam" , "idduki" , 293949 , "kerala" )' at line 1
mysql> update product_master
    -> set salesman_no=2
    -> where salesman_name = nobel
    -> ;
ERROR 1054 (42S22): Unknown column 'nobel' in 'where clause'
mysql> update product_master
    -> set salesman_no=2
    -> where salesman_name = "nobel";
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from product_master;
+-------------+---------------+----------+-----------+----------+---------+--------+
| salesman_no | salesman_name | adress_1 | adress_2  | city     | pincode | state  |
+-------------+---------------+----------+-----------+----------+---------+--------+
|           1 | akshay        | thrissur | ernakulam | thrissur |   68001 | kerala |
|           2 | nobel         | waynad   | ernakulam | idduki   |  293949 | kerala |
+-------------+---------------+----------+-----------+----------+---------+--------+
2 rows in set (0.00 sec)

mysql> insert into product_master
    -> values (1, "nobel" , "waynad" , "ernakulam" , "idduki" , 293949 , "kerala" );
Query OK, 1 row affected (0.00 sec)

mysql>
mysql> alter table product_master
    -> delete[row]
    -> where salesman_no = 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'delete[row]
where salesman_no = 2' at line 2
mysql> insert into product_master
    -> values (3, "abhisheky" , "kannur" , "ernakulam" , "kasargod" , 671310 , "kerala" );
Query OK, 1 row affected (0.05 sec)

mysql> select * from product_master;
+-------------+---------------+----------+-----------+----------+---------+--------+
| salesman_no | salesman_name | adress_1 | adress_2  | city     | pincode | state  |
+-------------+---------------+----------+-----------+----------+---------+--------+
|           1 | akshay        | thrissur | ernakulam | thrissur |   68001 | kerala |
|           2 | nobel         | waynad   | ernakulam | idduki   |  293949 | kerala |
|           1 | nobel         | waynad   | ernakulam | idduki   |  293949 | kerala |
|           3 | abhisheky     | kannur   | ernakulam | kasargod |  671310 | kerala |
+-------------+---------------+----------+-----------+----------+---------+--------+
4 rows in set (0.00 sec)

mysql> delete from product_master
    -> where salesman_name = "nobel";
Query OK, 2 rows affected (0.04 sec)

mysql> select * from product_master;
+-------------+---------------+----------+-----------+----------+---------+--------+
| salesman_no | salesman_name | adress_1 | adress_2  | city     | pincode | state  |
+-------------+---------------+----------+-----------+----------+---------+--------+
|           1 | akshay        | thrissur | ernakulam | thrissur |   68001 | kerala |
|           3 | abhisheky     | kannur   | ernakulam | kasargod |  671310 | kerala |
+-------------+---------------+----------+-----------+----------+---------+--------+
2 rows in set (0.00 sec)

mysql> insert into product_master
    -> values (2, "nobel" , "waynad" , "ernakulam" , "idduki" , 293949 , "kerala" );
Query OK, 1 row affected (0.05 sec)

mysql> select * from product_master;
+-------------+---------------+----------+-----------+----------+---------+--------+
| salesman_no | salesman_name | adress_1 | adress_2  | city     | pincode | state  |
+-------------+---------------+----------+-----------+----------+---------+--------+
|           1 | akshay        | thrissur | ernakulam | thrissur |   68001 | kerala |
|           3 | abhisheky     | kannur   | ernakulam | kasargod |  671310 | kerala |
|           2 | nobel         | waynad   | ernakulam | idduki   |  293949 | kerala |
+-------------+---------------+----------+-----------+----------+---------+--------+
3 rows in set (0.00 sec)

mysql> slect * from product_name
    -> order by salesman_no;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect * from product_name
order by salesman_no' at line 1
mysql> select * from product_master;
+-------------+---------------+----------+-----------+----------+---------+--------+
| salesman_no | salesman_name | adress_1 | adress_2  | city     | pincode | state  |
+-------------+---------------+----------+-----------+----------+---------+--------+
|           1 | akshay        | thrissur | ernakulam | thrissur |   68001 | kerala |
|           3 | abhisheky     | kannur   | ernakulam | kasargod |  671310 | kerala |
|           2 | nobel         | waynad   | ernakulam | idduki   |  293949 | kerala |
+-------------+---------------+----------+-----------+----------+---------+--------+
3 rows in set (0.00 sec)

mysql> select * from product_master
    -> order by salesman_no;
+-------------+---------------+----------+-----------+----------+---------+--------+
| salesman_no | salesman_name | adress_1 | adress_2  | city     | pincode | state  |
+-------------+---------------+----------+-----------+----------+---------+--------+
|           1 | akshay        | thrissur | ernakulam | thrissur |   68001 | kerala |
|           2 | nobel         | waynad   | ernakulam | idduki   |  293949 | kerala |
|           3 | abhisheky     | kannur   | ernakulam | kasargod |  671310 | kerala |
+-------------+---------------+----------+-----------+----------+---------+--------+
3 rows in set (0.00 sec)

mysql> update product_master
    -> set salesman_name = "abhishek"
    -> where salesman_no = 3;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from product_master;
+-------------+---------------+----------+-----------+----------+---------+--------+
| salesman_no | salesman_name | adress_1 | adress_2  | city     | pincode | state  |
+-------------+---------------+----------+-----------+----------+---------+--------+
|           1 | akshay        | thrissur | ernakulam | thrissur |   68001 | kerala |
|           3 | abhishek      | kannur   | ernakulam | kasargod |  671310 | kerala |
|           2 | nobel         | waynad   | ernakulam | idduki   |  293949 | kerala |
+-------------+---------------+----------+-----------+----------+---------+--------+
3 rows in set (0.00 sec)

mysql> select * from product_master
    -> order by salesman_no;
+-------------+---------------+----------+-----------+----------+---------+--------+
| salesman_no | salesman_name | adress_1 | adress_2  | city     | pincode | state  |
+-------------+---------------+----------+-----------+----------+---------+--------+
|           1 | akshay        | thrissur | ernakulam | thrissur |   68001 | kerala |
|           2 | nobel         | waynad   | ernakulam | idduki   |  293949 | kerala |
|           3 | abhishek      | kannur   | ernakulam | kasargod |  671310 | kerala |
+-------------+---------------+----------+-----------+----------+---------+--------+
3 rows in set (0.00 sec)

mysql> create tabe aku;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'tabe aku' at line 1
mysql> create tabe aku(aks integer);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'tabe aku(aks integer)' at line 1
mysql> create table aku(aks integer);
Query OK, 0 rows affected (0.01 sec)

mysql> desc aku;
+-------+------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra |
+-------+------+------+-----+---------+-------+
| aks   | int  | YES  |     | NULL    |       |
+-------+------+------+-----+---------+-------+
1 row in set (0.01 sec)

mysql> shoe tables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'shoe tables' at line 1
mysql> show tables;
+-----------------+
| Tables_in_abisk |
+-----------------+
| aku             |
| product_master  |
+-----------------+
2 rows in set (0.05 sec)

mysql> drop aku;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'aku' at line 1
mysql> delete aku;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> drop table aku ;
Query OK, 0 rows affected (0.02 sec)

mysql> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> show tables;
+-----------------+
| Tables_in_abisk |
+-----------------+
| product_master  |
+-----------------+
1 row in set (0.00 sec)