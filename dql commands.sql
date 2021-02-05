create database employee ;
show databases;
use employee;
create table employeesinfo (sno int, name varchar(20), age int, profession varchar(20), salary int);
show tables;
desc employeesinfo;
insert into employeesinfo values ( 1, 'Anup',22,'Data scientist', 50000),( 2, 'Harish',21,'Data scientist', 60000),( 3, 'Bhupal',22,'Data scientist', 60000),( 4, 'sai',24,'sowftware devoloper', 60000),( 5, 'Deva',22,'Associate engineer', 70000);
select * from employeesinfo;
select *from employeesinfo order  by age desc;
select min(salary) from employeesinfo ;
select min(salary)from employeesinfo group by profession;
select profession ,min(salary) from employeesinfo group by profession;
select count(sno), profession from employeesinfo group by profession;
select * from employeesinfo where profession ='Data scientist';
#how to join different tables 
select* from employeesinfo;
create table empinfo (experience int);
show tables;
insert into  empinfo values (1),(4),(2),(3),(6);
select * from empinfo;
select sno, name,experience from employeesinfo,empinfo;
select employeesinfo.sno, name,experience from employeesinfo,empinfo;
select a.sno, name,experience from employeesinfo a,empinfo;
select a.sno, a.name,b.experience from employeesinfo a,empinfo b;
select * from employeesinfo;
select * from empinfo;
select a.sno, a.name,b.experience from employeesinfo a, inner join empinfo b on a.sno = b.experience;
select a.sno, a.name,b.experience from employeesinfo a, left join empinfo b on a.sno = b.experience;
select a.sno, a.name,b.experience from employeesinfo a, right join empinfo b on a.sno = b.experience;
create table tnull (id integer not null,name varchar(15));
desc tnull;
insert into tnull values (1,'banu');
select * from tnull;
insert into tnull (name) values ('bama');



