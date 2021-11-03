show databases;
use world;
show tables;
select * from city;
describe city;
create database sql_intro;
show databases;
create table emp_details (Name varchar(25) , Age int, sex char(1), doj date, city varchar(15), salary float);
show databases;
create database student_information;
show databases;
create table student_info(student_name varchar(25),class int , roll int , result float , section varchar(25),contact varchar(30));
show databases;
use student_information;
describe  student_info;
create table student_identification(father varchar(30) , mother varchar(20) , contact varchar(20), email varchar(40), permanent_address varchar(50));
describe student_identification;
show databases;
use sql_intro;
show tables; 
create table emp_info(emp_name varchar(10) , emp_contact varchar(11), emp_email varchar(30));
describe emp_info;
insert into emp_info values("Code XD" , "01322286" , "amin@gmail.com");
insert into emp_info values("Team Bravo" , "252211" , "sak_@code.out");
select * from emp_info;
create table emp_details (Name varchar(25) , Age int, sex char(1), doj date, city varchar(15), salary float);
describe  emp_details;
use sql_intro;
show tables;
select * from emp_info;
insert into emp_details values("sakib" , 23 , "M" , "1996-6-7" , "Dhaka" , 303300),
			("Ruhul Amin" , 26 , "M" , "1995-6-7" , "Rajshahi" , 18120),
			("codex" , 27 , "M" , "1997-6-7" , "Khulna" , 6000),
			("codyTTD" , 33 , "M" , "1855-6-7" , "Barisal" , 4000),
			("John" , 30 , "M" , "1999-6-7" , "Chittagong" , 5000000),
			("Smith" , 66 , "M" , "1996-4-7" , "Kumilla" , 700000),
			("samib" , 8 , "M" , "1922-3-7" , "potuakhali" , 30000),
			("pritom" , 22 , "M" , "1111-6-7" , "Shirajgong" , 200),
			("Tomcat" , 19 , "M" , "1211-6-7" , "feni" , 7000),
			("toohma" , 18 , "M" , "1965-6-7" , "Noakhali" , 25000),
			("Topu" , 25 , "M" , "1996-6-7" , "kumilla" , 66000),
			("Toki" , 26 , "M" , "1996-6-7" , "Rajshahi" , 33000),
			("Tjp" , 33 , "M" , "1986-6-7" , "Dhaka" , 10000),
			("Thomas" , 23 , "M" , "1976-6-7" , "Barisal" , 70000),
			("Toxiva" , 23 , "M" , "1996-6-7" , "Dhaka" , 303300),
			("Tolib" , 22 , "M" , "1996-6-7" , "Dhaka" , 303300);
            
select * from emp_details;
select distinct city from emp_details;
select distinct sex from emp_details;
select distinct Name from emp_details;
select distinct city from emp_details where age >=50;
select distinct city from emp_details where age between 20 and 60;
use sql_intro;
select count(Name) from emp_details;
select count(Name) as TotalEmployee from emp_details;
select distinct city as AllCityList  from emp_details;
select sum(salary) as totalSalary from emp_details;
select avg(salary) as averageSalary , sum(salary) as summationSalary , count(name) as totalEmployee from emp_details;
select name , sex , age , city from emp_details;
select * from emp_details where age >30;
select * from emp_details where city = 'Rajshahi' or city = 'Dhaka';
select * from emp_details where city in ('Rajshahi' , 'Dhaka');
select * from emp_details where sex in ('M','F');
select * from emp_details where city in ('Dhaka' , 'Rajshahi') and age > 30 and Name = 'Tjp';
select * from emp_details where age in (40,50) and sex = 'M' or name = 'Tjp';
select * from emp_details as EmployeeInformation;
select * from emp_details where doj between "1900-1-1" and "2020-1-1";
select * from emp_details where age>30 and doj between "1900-1-1" and "2020-1-1";
insert into emp_details values("Fahmida",20,"F","1585-11-1","Kumilla",55000);
select * from emp_details where sex = 'F';
select sum(salary) as sum_sal , avg(salary) as avg_sal , sex as EmpSex from emp_details  group by sex;
select * from emp_details group by city;
select count(city) as Employee , city from emp_details group by city;
select * from emp_details;
select * from emp_details where city = 'Dhaka';
select count(name) as Employee , city from emp_details group by city;
select * from emp_details order by city;
select * from emp_details order by age desc;
select (110 + 20) as summation;
select (111-12) as substruct;
select name as EmployeeName , length(name) lengthOfName  from emp_details;
select repeat('#',100) as hashInfo;
select upper(name) , age , city from emp_details;
select curdate();
select day(curdate());
select now();
select reverse(name) , age from emp_details;
select  replace(name, "Ruhul Amin" , "Mohammad Ruhul Amin") from emp_details;
select * from emp_details;
select trim(name) from emp_details;
select city , sum(salary) , count(city) as totalCity from emp_details  group by city; 

show tables;
create table employees(Emp_ID varchar(10),Emp_Name varchar(10),Age int , 
	Gender char(1), Doj date, Dept varchar(10), City varchar(10) , Salary float);

insert into employees values("101","Sakib",23,"M","1999-11-3", "IPE","Gazipur",30000),
							("102","Sajid",22,"M","1997-10-10", "CSE","Dhaka",45000),
							("103","Nusaiba",33,"F","1993-10-10", "CSE","Khulna",55000),
							("104","Abdul",44,"M","1995-10-10", "IPE","Barisal",66000),
							("105","Abul",76,"M","1996-10-10", "ME","Dhaka",40000),
							("106","Ruhul",27,"M","2001-10-10", "CSE","Gazipur",70000),
							("107","Aynun",1,"F","2020-10-10", "ME","Gazipur",22000),
							("108","Mariyam",1,"F","2020-10-10", "ME","Barisal",45000),
							("109","Ashraful",30,"M","2021-10-10", "EEE","Gazipur",20000),
							("110","Apon",20,"M","2021-10-10", "ETE","Dhaka",25000),
							("111","Kumfu",12,"F","1886-10-10", "ECE","Khulna",66000),
							("112","Panda",55,"F","1996-10-10", "ECE","Khulna",77000);
                            
select * from employees; 
select distinct dept from employees;
select sum(Salary) as TotalSalary , Gender from employees group by Gender;
select sum(Salary) as DeptWiseSalary , Dept from employees group by Dept;
select sum(Salary) as DistrictWiseSalary , city  from employees 
	where age >20
    group by city
    order by DistrictWiseSalary 
    desc;

select dept as Department , sum(Salary) as TotalSalary , avg(Salary) as averageSalary  from employees
	where age >=20
    group by Dept
    order by TotalSalary desc;
    
select dept as Department , round(avg(salary),3) as AvgSalary from employees 
	where age >= 20 
    group by Dept
    order by AvgSalary desc;
    
select * from employees;
select Dept ,count(emp_Name) as Employees from employees group by dept order by Employees desc;
select year(Doj) as JoinYear , count(Emp_ID) TotalEmployee from employees group by JoinYear;
select * from employees;
select Emp_Name , Gender , Age ,doj as DateOfJoin from employees having(year(DateOfJoin)>2020);
select sum(salary) as TotalSalary , round(avg(salary),1)  as AverageSalary , dept as Department
	from employees
	group by dept 
    having(avg(salary)>48000);    

select * from employees;
select Emp_Name , Age, Gender , year(doj) as Doj  from employees where age>20 having(Doj>1995) order by age desc;
show databases;
use sql_intro;
select sum(Age) as Age , dept from employees group by dept having(length(dept)>2) order by age desc;

select emp_name , age, gender ,doj from employees 
	where age > 30
	having (length(emp_name)>5)  order by age desc;

show databases;
use sql_intro;
show tables;
select * from employees;
create table sales (product_id int , sell_price float , quantity int, state varchar(20));
insert into sales values(121,320.0,3,'Dhaka'),
						(122,340.0,34,'Rajshahi'),
                        (123,420.0,332,'Khulna'),
                        (121,320.0,32,'Rajshahi'),
                        (123,720.0,31,'Dhaka'),
                        (122,420.0,34,'Khulna');
					
				select * from sales;
                
select product_id, sum(sell_price *quantity) as  revenue , state from sales 
	group by state order by revenue desc;

create table cost_product(product_id int, cost_price float);
insert into cost_product values(121,270.0),(123,270.0),(122,270.0);
select * from cost_product;
select c.product_id , sum((s.sell_price - c.cost_price) * s.quantity) from sales as s  
	inner join cost_product as c 
    where s.product_id = c.product_id 
    group by c.product_id;

show tables;
select * from sales;
select * from cost_product;

select c.product_id , sum((s.sell_price -c.cost_price) *s.quantity) 
	from sales as s
    inner join cost_product as c
    where s.product_id = c.product_id
    group by c.product_id;

select * from employees;
select count(emp_id) as employees , city from employees 
	group by city
    having(count(city)>2);

select city , sum(salary) as totalSalary from employees 
		group by city
        having(totalSalary>111000);

select count(emp_id) as totalEmployees , dept as Department from employees
	group by dept 
    having(totalEmployees>0)
    order by Department desc;

select dept as department,count(emp_id)as totalEmployees from employees
	where dept !='ME'
    group by dept
    having(count(department)>=2);

select dept as department , round(avg(salary),3) as avgSal from employees
	group by department
    having(avgSal>3000);

-- sqlJoin inner join
	-- select <field list> from table a 
	-- inner join table b 
	-- on a.key = b.key

create database sql_joins;
show databases;
use sql_joins;
create table cricket (cricket_id int auto_increment , name varchar(30) , primary key(cricket_id));
create table football(football_id int auto_increment , name varchar(30), primary key(football_id));
insert into cricket (name) 
	values('Ruhul'),('Sakib'),('Aynun'),('Sajid'),('Affan');
    select * from cricket;
insert into football (name) 
	values('Ruhul'),('Saad'),('Aynun'),('Sakhawat'),('Affan');
    select * from cricket;
    select * from football;
    
-- sqlJoin inner join
	-- select <field list> from table a 
	-- inner join table b 
	-- on a.key = b.key

select * from cricket inner join  football	
	on cricket.name = football.name;
    
select * from cricket as c inner join football as f
	on c.name = f.name;
    
-- create table football(football_id int auto_increment , name varchar(30), primary key(football_id));

create table basketball(basketball_id int auto_increment , name varchar(30) , primary key(basketball_id));
create table tabletenis(tabletenis_id int auto_increment , name varchar(30), 
contact varchar(11),address varchar(30), primary key(tabletenis_id));

insert into basketball(name)
	values("Sakib"),("Sajid"),("Aynun"),("Ruhul"),("Ashraful"),("Affan");
insert into tabletenis (name, contact, address)
	values("Sakib","01521433840","Dhaka"),
			("Ruhul","01322352864","Rajshahi"),
            ("Aynun","01715316183","Uttara");
	
select * from tabletenis;
select * from basketball as b inner join 
	tabletenis as t 
    on b.name = t.name;
select    contact , address , tabletenis_id from tabletenis
	as t 
    inner join basketball as b
    on 
    t.name = b.name;

select c.cricket_id , c.name , f.football_id , f.name 
	from cricket as c 
    inner join football as f
    on c.name = f.name;

select c.cricket_id , f.football_id , c.name , f.name
	from cricket as c
    inner join football as f
    on c.name = f.name;

-- select orderDate , ShipperID , c.CustomerID , c.CustomerName,c.ContactName from orders as o
-- 	inner join Customers as c
--     on o.CustomerID = c.CustomerID;

create table products(productCode varchar(20), productName varchar(20),
	productLine varchar(20), productScale varchar(20), productVendor varchar(20),
	productDescription varchar(20));

insert into products values("l-11011","Laptop","MotorCycle","1:20", "Synasis IT","Laptop HP i7"),
	("l-21011","Laptop","Cycle","1:30", "Ryans IT","Laptop Lenovo i7"),
    ("D-11011","Desktop","Car","2:20", "Desk IT","Desktop Intel i7"),
    ("D-33022","Desktop","MotorCycle","1:20", "Synasis IT","Desktop Salaron D"),
    ("P-11011","Printer","Truck","1:20", "Synasis IT","Color Printer"),
	("P-13011","Printer","Truck","1:20", "Ryans IT","black&white printer");

select * from products;
create table productlines(productLine varchar(20), textDescription varchar(20));
insert into productlines values("Cycle", "very slow"),
								("Truck", "Strong to take"),
                                ("MotorCycle", "very fast"),
                                ("Car","luxary");
select * from productlines;


select p.productCode , p.productName, p.productVendor , p.productLine ,
	pl.textDescription from products as p
    inner join productlines as pl
    on p.productLine = pl.productLine;
	
select p.productCode , p.productName, p.productVendor , p.productLine ,
	pl.textDescription from products as p
    inner join productlines as pl
    using(productline);

create table orders(orderNumber int , orderDate date , requiredDate date ,
		shippedDate date , status varchar(10), comments varchar(10), customerNumber int);

insert into orders values(101,"2021-10-2","2021-9-3","2021-10-1","Shipped","success",100),
(1010,"2021-10-2","2021-9-3","2021-10-1","Shipped","success",101),
(102,"2033-10-2","2019-9-3","2021-10-1","failed","failed",102),
(103,"2027-10-2","2018-9-3","2011-10-1","onship","processed",103),
(104,"2015-10-2","2016-9-3","2020-10-1","Shipped","success",104),
(105,"2014-10-2","2015-9-3","2024-10-1","failed","failed",105),
(106,"2013-10-2","2017-9-3","2013-10-1","Shipped","success",106),
(107,"2012-10-2","2023-9-3","2012-10-1","Shipped","success",107),
(108,"2022-10-2","2022-9-3","2011-10-1","onship","processed",108),
(109,"2011-10-2","2010-9-3","2010-10-1","onship","processed",109);
select * from orders;
drop table orders;
create table orderdetails(orderNumber int , productCode varchar(30),
	quantityOrder int , priceEach float , orderLineNumber int );

insert into orderdetails values(109, "Product_110$",30 , 32000, 4),
	(108, "l-21011",30 , 32000, 3),
    (107, "D-11011",30 , 32000, 2),
	(106, "D-33022",30 , 32000, 3),
    (105, "Product_110$",30 , 32000, 12),
    (104, "Product_110$",30 , 32000, 6),
    (103, "D-33023",30 , 32000, 12),
    (102, "Product_110$",30 , 32000, 11),
    (101, "Product_110$",30 , 32000, 8),
    (1010, "P-11011",30 , 32000, 7),
    (123, "P-13011",30 , 32000, 5);
drop table orderdetails;
select * from orderdetails;
select o.orderDate , o.requiredDate, o.status , o.customerNumber, o.comments , o.status ,
od.orderNumber , od.productCode, od.quantityOrder , od.priceEach, od.quantityOrder*od.priceEach as TotalCell   from orders 
	as o
    inner join orderdetails as od
    using(orderNumber);

select o.orderDate , o.requiredDate, o.status , o.customerNumber, o.comments , o.status ,
od.orderNumber , od.productCode, od.quantityOrder , od.priceEach, sum(od.quantityOrder*od.priceEach) as TotalCell   from orders 
	as o
    inner join orderdetails as od
    using(orderNumber)
    where status !='onship' 
    and status !='failed'
    group by status
    order by TotalCell desc;


select * from products;
select * from orders;
select * from orderdetails;
select o.orderNumber , o.customerNumber , o.status , 
	od.productCode , od.quantityOrder * od.priceEach as totalSell , p.productCode from orders as o
	inner join orderdetails as od 
    using (orderNumber) 
    inner join products as p
    using(productCode)
    -- where status !='failed'
--     and
--     status !='onship'
    group by status 
    order by totalSell desc;
    
-- select <field list> from table_a
-- 	left join table_b 
--     on a.commonKey = b.commonKey;

select * from orders;
select * from orderdetails;
-- inner join
select * from orders as o
	inner join orderdetails as od 
    using(orderNumber);

-- left join
select * from orders as o
	left join orderdetails as od 
    using(orderNumber);
    
    -- right join
select * from orders as o
	right join orderdetails as od 
    using(orderNumber);

-- select concat(m.lastname, ', ' ,m.firstname) as manager ,
-- 	concate(e.lastname, ' , ', e.firstname) as employee 
--     from manager as m
--     inner join employees as e
--     on m.employeeId = e.employeeId
--     order by joinDate desc;
--     

    
-- FULL Join
-- select <field list> from table_a as a
-- 	full outer join table_b as b
--     using(commonkey);

-- Example : 
		-- select c.customername , 
-- 		   o.ordernumber from customers as c left join
--         orders as o 
--         on c.customernumber  = o.customernumber
--         union 
--         select c.customername,
--         o.ordernumber from customers as c right join 
--         orders as o
--         on c.customernumber = o.customernumber;
-- tutorial at : 2:09:09  







	
	





















