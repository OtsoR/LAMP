xubuntu@xubuntu:~$ mariadb -u testi -p
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 51
Server version: 10.1.34-MariaDB-0ubuntu0.18.04.1 Ubuntu 18.04

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use otso;
Database changed
MariaDB [otso]> CREATE TABLE hattu(id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(1024));
Query OK, 0 rows affected (0.01 sec)

MariaDB [otso]> INSERT INTO hats(name) VALUES ('Lippis');
ERROR 1146 (42S02): Table 'otso.hats' doesn't exist
MariaDB [otso]> INSERT INTO hattu(name) VALUES ('Lippis');
Query OK, 1 row affected (0.01 sec)

MariaDB [otso]> INSERT INTO hattu(name) VALUES ('Lakki');
Query OK, 1 row affected (0.00 sec)

MariaDB [otso]> INSERT INTO hattu(name) VALUES ('pipo');
Query OK, 1 row affected (0.00 sec)

MariaDB [otso]> INSERT INTO hattu(name) VALUES ('vieteri');
Query OK, 1 row affected (0.00 sec)

MariaDB [otso]> Select * from hattu;
+----+---------+
| id | name    |
+----+---------+
|  1 | Lippis  |
|  2 | Lakki   |
|  3 | pipo    |
|  4 | vieteri |
+----+---------+
4 rows in set (0.00 sec)



--------------------------------------------------------------------------

MariaDB [(none)]> CREATE database otso;


MariaDB [(none)]> GRANT ALL ON otso.* TO testi@localhost IDENTIFIED BY 'mariadb';

