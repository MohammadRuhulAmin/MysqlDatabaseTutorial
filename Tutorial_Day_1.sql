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



















