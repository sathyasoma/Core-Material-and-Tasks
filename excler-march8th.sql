
show databases;

create database marchexlr;

use marchexlr;

/*------DDL: create ,alter(add,rename,drop,modify), rename,drop,truncate----------*/

create table employee(empid int(10),empname varchar(255),empsal decimal(5,2));

describe employee;
describe emp;

show tables;

alter table employee add column empadd varchar(40);
alter table employee rename column empsal to employeesalary;
alter table employee modify column empadd varchar(80);
alter table employee drop column empadd;


rename table employee to emp;
drop table emp;
drop table employee1;

/* -----------------DML:::insert,update,delete-------------------*/

insert into employee values(123,'devasena',789.90);
insert into employee values(124,'kattapa',189.90);

insert into employee values 
(745,'kalakey',189.90),
(965,'mahishmathi',389.90),
(128,'kuntala',689.90),
(412,'ballaladeva',789.90),
(128,'tamanna',989.90);

insert into employee(empid,empname) values(129,'kalki');
insert into employee values(129,'kalki',null);

update employee set empname='keerthi' where empid=128;
update employee set empsal=289.78 where empid=128;

delete from employee where empid=965;

select empid,empname,empsal from employee;
select empid from employee;
select empid,empname from employee;
select * from employee;

/*--------------------dcl----------*/

create role kalki_mv;

grant update,delete,select  on marchexlr.* to 'kalki_mv';

create user 'rohi' identified by 'rohi123' default role 'kalki_mv'; 

revoke update,delete,select on marchexlr.* from 'kalki_mv';

/*--------------------tcl----*/

set autocommit=0;


insert into employee values(100,'sathya',789.90);
insert into employee values(101,'soma',189.90);
insert into employee values(102,'prakash',789.90);
insert into employee values(103,'soma',189.90);

commit;


select * from employee;
delete from employee where empid=103;
rollback;

truncate table employee;


CREATE TABLE STUDENT(STUDID INT,STUDNAME VARCHAR(20),STUDMARKS INT);

INSERT INTO STUDENT VALUES(123,'SATHYA',78);

SELECT * FROM STUDENT;

show tables;
/*----------------------------------------------Constraints--------------------------------------------------------*/
/*----not null,check,unique,primary key,default,forign key----------*/

/*--------------Not Null Constraint---------------*/
create table emp(empid int not null,empname varchar(20),empsal int);
describe emp;
insert into emp values(123,'bahubali',90000);
insert into emp values(678,'kalki',null);
insert into emp values(null,'kalki',6555);
insert into emp(empname,empsal) values('prabhas',8888);
insert into emp values(123,'devasena',85522);

select * from emp;
delete from emp;

/*-----------------Alter Level Check Contraint-----------------------*/
alter table emp add constraint check(empsal<20000);

insert into emp values(123,'deva',90000);

/*------Unique,Not null, Check constraint----------------------------*/
create table emp1(empid int unique, empname varchar(20) not null, empsal int  check(empsal<2000));
describe emp1;
select * from emp1;

insert into emp1 values(344,'kalki',890);
insert into emp1 values(345,'kalki',790);

/*-------Primary key,default,not null----------*/
create table emp2(empid int primary key,empname varchar(30) not null,empsal int default 30000);
select * from emp2;
insert into emp2(empid,empname) values(64,'tarun');
insert into emp2(empid,empname) values(785,'mahesh');
insert into emp2(empid,empname) values(124,'prakash');
insert into emp2(empid,empname) values(78,'soma');

drop table employee;

show tables;
/*-------------------Foreign Key Constraint----------------------------*/
/*--parent---departmnet*/

create table department(deptid int primary key auto_increment,deptname varchar(30),deptloc varchar(30));
insert into department(deptname,deptloc) values('dev','hyd');
insert into department(deptname,deptloc) values('admin','bnglr');
insert into department(deptname,deptloc) values('tech','klkta');
insert into department(deptname,deptloc) values('db','delhi');

select * from department;

/*----createing child-----*/

create table employee(empid int,empname varchar(30),empsal int,deptid int,foreign key(deptid) references department(deptid));

insert into employee values(1,'kattapa',97463,1);
insert into employee values(2,'bahubali',252663,3);
insert into employee values(3,'kalaki',9474,2);
insert into employee values(4,'sathya',9474,1);
select * from employee;

delete from employee where empname='sathya';
delete from employee where empname='bahubali';

/*-----------Composite primary key --------------------------------*/
create table emp3(empid int,empname varchar(20),empadd varchar(30),empsal int, primary key(empid,empname));


/*=======================================JOINS==================================*/


show tables;

drop table emp;


CREATE TABLE emp (
  empno decimal(4,0) NOT NULL,
  ename varchar(10) default NULL,
  job varchar(9) default NULL,
  mgr decimal(4,0) default NULL,
  hiredate date default NULL,
  sal decimal(7,2) default NULL,
  comm decimal(7,2) default NULL,
  deptno decimal(2,0) default NULL
);


desc emp;

CREATE TABLE dept (
  deptno decimal(2,0) default NULL,
  dname varchar(14) default NULL,
  loc varchar(13) default NULL
);

desc dept;

INSERT INTO emp VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO emp VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO emp VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO emp VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO emp VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO emp VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO emp VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO emp VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO emp VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO emp VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO emp VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO emp VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');

INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
INSERT INTO dept VALUES ('30','SALES','CHICAGO');
INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');


select * from emp;
select * from dept;


select empno,ename,job,sal,dname,loc from emp,dept; /*cross join*/

/*equi join */

select e.empno,e.ename,e.job,e.deptno,d.deptno,d.loc,d.dname from emp e  join dept d  where e.deptno=d.deptno;

/*left join */

select e.empno,e.ename,e.job,e.deptno,d.deptno,d.loc,d.dname from emp e  left join dept d  on e.deptno=d.deptno;

/*right join */
select e.empno,e.ename,e.job,e.deptno,d.deptno,d.loc,d.dname from emp e  right join dept d  on e.deptno=d.deptno;

/*---functions----*/
select max(sal) from emp;
select min(sal) from emp;
select avg(sal) from emp;
select count(sal) from emp;
select sum(sal) from emp;












/*-----------------------------*/
create database welexclr;
use welexclr;

/*----Create :creatig tables---*/
create table customer(cusid int(10),cusname varchar(30),cusprice int);
/*--describe the table---*/
describe customer;
/*ALTER--->add,rename,drop,modify*/
alter table customer add column cusadd varchar(30);
alter table customer rename column cusprice to cuspay;
alter table customer modify column cusname varchar(60);
alter table customer drop column cuspay;

/*Rename:  reame the table name*/
rename table customer to custo;
describe custo;

/*DROP TABLE: DROPING TABLE WITH STRUCTIRE FROM DB*/
 drop table custo;
 /*Truncate: will delete records from table permantly*/
 truncate table custo;

/*--select : selecting or fetching data from table */
select * from customer;
/*--------------DML: Insert ,Update,Delete--------------*/

insert into customer values(12,'bahubali,',9000);

insert into customer values
(13,'devasena,',765),
(19,'marian,',2789),
(14,'shambala,',1783),
(18,'ashwaddama,',9863);

/*---Update: update single record from the given table ----*/
update  customer set cusname='bujji' where cusid=12;

/*Delete:--deleting single,or multiplrrecords.........*/

delete from customer; /*Entire table data is deleted */
delete from customer where cusid=13;

/*-----Commit,rollback----------*/

set autocommit=0;

insert into customer values(17,'bahubali,',8000);

commit;

select * from customer;

delete from customer where cusid=17;

rollback;

/*--DCL:GRNAT,REVOKE:-->create user */

grant select,update,delete on  welexclr.* to   'keerthi';
revoke select,update,delete on  welexclr.* from   'keerthi';

/*-------------Constraints------------*/

/*not null,unique,check,default,primary key,forign key*/

create table emp(empid int primary key,empname varchar(30) unique,empsal int(10) check(empsal>3000),empadd varchar(30) default('hyd'));

insert into emp values(100,'satyabama',89999,'hyd');

select * from emp;


select * from emp1;
select * from dept;
/*-----------Composite keys----------------*/
create table emp1
(
empid int,
empname varchar(30),
empsal int(10) check(empsal>3000),
empadd varchar(30) default('hyd'),
unique(empid,empname));

insert into emp1 values(123,'devasena',4899,'london');
insert into emp1 values(123,'sathya',4899,'london');

/*-------------order by clause------------*/
select * from emp;
select * from dept;

select * from emp order by ename;
select * from emp order by ename desc;
select * from emp order by ename asc;
select ename,job,mgr,sal from emp order by 2;

/*-------------group by clause------------*/

select deptno,sum(sal) from emp  group by deptno;
select deptno,job,sum(sal) from emp  group by deptno,job;
/*------------- having clause------------*/
select deptno,sum(sal) tsal from emp  group by deptno having  sum(sal)>3000;

/*---------------Like operator-----*/
select * from emp;

select * from emp where ename like 's%';
select * from emp where ename like 's%';
select * from emp where ename like '_l%';
select * from emp where ename like '__a%';
select * from emp where job like 'm%';
select * from emp where job like '_a%';





