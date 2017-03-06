# CTquiz

```mysql
create table Employee(EmpNo int, Ename varchar(20),Job varchar(20),MGR varchar(20),Hiredate date, Salary decimal, DeptNo int, primary key(EmpNo));
```

```mysql
create table Department(DeptNo int, Dname varchar(20),Location varchar(20),primary key(DeptNo));
```

```mysql
insert into Employee values(111,'Rahul','Software Developer', 'Mayur', '2001-10-10',20000,01);
```

```mysql
insert into Employee values(112,'Meghal','Software Developer', 'Mayur', '2001
```

```mysql
mysql> insert into Employee values(113,'Amit','Software Developer', 'Mayur', '2001
```

```
Query OK, 1 row affected (0.05 sec)
```

```mysql
mysql> insert into Employee values(121,'Mangesh','Web Developer', 'Raj', '2001-10-10',20000,
```

```
Query OK, 1 row affected (0.05 sec)
```

```mysql
mysql> insert into Employee values(122,'Nitin','Web Developer', 'Raj', '2001-10-10',20000,02);
```

```
Query OK, 1 row affected (0.06 sec)
```

```mysql
mysql> insert into Employee values(123,'Sagar','Web Developer', 'Raj', '2001-10-10',20000,02);
```

```mysql
select * from Employee;
```

```
+-------+---------+--------------------+-------+------------+--------+--------+
| EmpNo | Ename   | Job                | MGR   | Hiredate   | Salary | DeptNo |
+-------+---------+--------------------+-------+------------+--------+--------+
|   111 | Rahul   | Software Developer | Mayur | 2001-10-10 |  20000 |      1 |
|   112 | Meghal  | Software Developer | Mayur | 2001-10-10 |  20000 |      1 |
|   113 | Amit    | Software Developer | Mayur | 2001-10-10 |  20000 |      1 |
|   121 | Mangesh | Web Developer      | Raj   | 2001-10-10 |  20000 |      2 |
|   122 | Nitin   | Web Developer      | Raj   | 2001-10-10 |  20000 |      2 |
|   123 | Sagar   | Web Developer      | Raj   | 2001-10-10 |  20000 |      2 |
+-------+---------+--------------------+-------+------------+--------+--------+
6 rows in set (0.00 sec)
```

```mysql
insert into Department values(01,'Application Devp','Pune');
```

```
Query OK, 1 row affected (0.06 sec)
```

```mysql
insert into Department values(02,'Workstation Devp','Mumbai');
```

```
Query OK, 1 row affected (0.03 sec)
```

```mysql
insert into Department values(03,'Database Devp','Bangalore');
```

```
Query OK, 1 row affected (0.05 sec)
```

```mysql
 select * from Department;
```

```
+--------+------------------+-----------+
| DeptNo | Dname            | Location  |
+--------+------------------+-----------+
|      1 | Application Devp | Pune      |
|      2 | Workstation Devp | Mumbai    |
|      3 | Database Devp    | Bangalore |
+--------+------------------+-----------+
```


```mysql
select m.Dname as Department,count(*) as NumberOfEmployee from Employee t,Department m where t.DeptNo = m.DeptNo group by t.DeptNo,m.Dname;
```

```
+------------------+------------------+
| Department       | NumberOfEmployee |
+------------------+------------------+
| Application Devp |                3 |
| Workstation Devp |                3 |
+------------------+------------------+
2 rows in set (0.00 sec)

```


