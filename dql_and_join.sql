create database emp;

create table employees(
e_id int  primary key not null,
ename varchar(20) not null,
dept varchar(20) not null,
salary int 
);

select *
from employees;



insert into employees values(
101,'kunal','sales',7000)
-- aggregate function ----
-- min,max,sum,avg,count

clauses                 syntax                        purpose

select    |'column name' or aggregate function |5 projects the column given in the que
from      |'table name' one or more            |1 takes all records
where     | condition                          |2.filter records satisfying the condition
group by  | 'column name'                      |3.create groups of the records and gives a summary record
having    | condition                          |4.filter groups satisfying the condition
order by  |'column name'                       |6.orders records
limit     |  number                            |7.shows number of records specified as a number



select *
from employees;

select count(e_id) as no_employee, sum(salary) as total_salary,avg(salary) as avg_sal
from employees;

select count(distinct dept)
from employees;----4
select *
from employees;

calculate departmentwise salary

select dept,sum(salary)
from employees
group by dept
order by dept;

select *
from employees
order by dept;
select dept,sum(salary)
from employees
where dept <> 'sales'
group by dept
having sum(salary) > 5000
;

select dept,sum(salary)
from employees
group by dept
;
-- department wise max salary
select dept,max(salary)
from employees
group by dept;
-- show me highest paid department
select dept,sum(salary) as total_sal
from employees
group by dept
order by total_sal desc
limit 1;



select *
from (select dept,sum(salary) as total_sal
from employees
group by dept) as dep_sal;

select od.*,quantityOrdered*priceEach as lineTotal
from orderDetails od;
select od.*,quantityOrdered*priceEach as lineTotal,sum(quantityOrdered*priceEach)
from orderDetails od
group by orderNumber;


select *
from employees;
create table employees(
e_id int  primary key not null,
ename varchar(20) not null,
dept varchar(20) not null,
dept_city varchar(20) not null,
dept_phone varchar(10) not null,
salary int
);
SET SQL_SAFE_UPDATES = 0;
delete 
from employees
where True;

truncate table employees;
select *
from employees;
drop table employees;

-- update table employees
-- where e_id = 103

update 
 employees
set dept_city ='mumbai' ,dept_phone ='0000'
where e_id = 103;


create table dept(
dname varchar(20) primary key,
d_city varchar(20) not null,
d_phone varchar(20) not null)

select *
from dept;
create table employees(
e_id int  primary key not null,
ename varchar(20) not null,
dept varchar(20) not null,
salary int
);
select *
from employees;

select *
from dept;
--  'hr'
select dept
from employees
where e_id =101;

 
select d_city
from dept
where dname = (select dept
from employees
where e_id =101);


select *
from employees;

select *
from dept;


select *
from employees ,dept
where dept = dname;

select *
from employees
inner join dept
on dept =dname
;


create table employees_self(
e_id int  primary key not null,
ename varchar(20) not null,
dept varchar(20) not null,
salary int,
reports_to int ,
foreign key (reports_to) references employees_self(e_id)
on delete set null on update cascade
);


INSERT INTO `emp`.`employees_self` (`e_id`, `ename`, `dept`, `salary`) VALUES ('101', 'kunal', 'hr', '7000');
INSERT INTO `emp`.`employees_self` (`e_id`, `ename`, `dept`, `salary`, `reports_to`) VALUES ('102', 'sachin', 'hr', '5000', '101');
INSERT INTO `emp`.`employees_self` (`e_id`, `ename`, `dept`, `salary`, `reports_to`) VALUES ('103', 'mayur', 'sales', '4000', '101');
INSERT INTO `emp`.`employees_self` (`e_id`, `ename`, `dept`, `salary`, `reports_to`) VALUES ('104', 'suresh', 'sales', '3000', '103');
INSERT INTO `emp`.`employees_self` (`e_id`, `ename`, `dept`, `salary`, `reports_to`) VALUES ('105', 'pratik ', 'research', '2000', null);
INSERT INTO `emp`.`employees_self` (`e_id`, `ename`, `dept`, `salary`, `reports_to`) VALUES ('106', 'mandar ', 'manu', '1000', '101');


ALTER TABLE `emp`.`employees` 
CHANGE COLUMN `dept` `dept` VARCHAR(20) NULL ;

insert into employees values(107,'ashish',null,3500);
-- inner join
-- left join
-- right join
-- self join
-- outer join

select *
from employees;
select *
from dept;

select *
from employees e,dept as d;

-- inner join

select e.*,d.d_city,d.d_phone
from employees as e,dept as d
where e.dept = d.dname;


select *
from employees e 
inner join dept d
on e.dept = d.dname 
;
-- left join 
select *
from employees e
left join dept d
on e.dept = d.dname;

-- right join
select *
from employees e
right join dept d
on e.dept = d.dname;

-- outer join 
-- left join + right join
-- IN LIKE
-- UNION AND UNION ALL


select *
from employees e
left join dept d
on e.dept = d.dname
UNION 
select *
from employees e
right join dept d
on e.dept = d.dname;


create table duplicates(
dname varchar(20),
d_city varchar(20)  null
);
-- To remove duplicates
select *
from duplicates
union
select *
from duplicates
where 1 = 0;

      --       SubQuery
      -- independent
      -- dependent

-- give me details of highly paid employee



-- give me details of the employees working in pune

select *
from employees
where salary = (
            select max(salary)
            from employees
				);
                
-- count of employees having salary greater than 7000
select count(salary)
from employees
where salary > 3500;

select *
from employees e1
where 1 = (
	select count( distinct salary)
	from employees e2
	where e2.salary > e1.salary
    )
    ;



select dname
from dept
where d_city like 'pune';

select *
from employees
where dept in (
	select dname
	from dept
	where d_city like 'pune'
    )
    
    



-- give me details of the employee getting second highest salary or third highest salary
select *
from employees
order by salary desc
limit 1;


-- give me details of the employee getting second highest salary or third highest salary
select *
from employees e1
where (
		select count(distinct salary) 
        from employees e2 
        where e2.salary > e1.salary
        )  = 2;
        
        
        
SELECT ename, salary
FROM employees A
WHERE 2 = (SELECT count(distinct salary) 
             FROM employees B 
             WHERE B.salary > A.salary)   ;
             
select count(distinct salary) 
from employees e2 
where e2.salary > 3500;

with second_highest as (SELECT *
FROM employees A
WHERE 2 = (SELECT count(distinct salary) 
             FROM employees B 
             WHERE B.salary > A.salary)   
             )
             select *
             from second_highest sh
             inner join dept d
             on sh.dept = d.dname;
             
 select *
 from employees oe
 where salary = (select max(salary)
 from employees ie
 where oe.dept = ie.dept);
 
with cte as(
select *
from employees oe
where salary = (select avg(salary)
from employees ie
where oe.dept = ie.dept))
select cte.*,d.d_city
from cte 
inner join dept d
on cte.dept = d.dname;
 
with hs as (
select dept,max(salary) as max_sal
from employees
where dept is not null
group by dept) 
select *
from employees es
inner join hs
on hs.dept = es.dept and es.salary = hs.max_sal;
 



select *
from employees
       e1
e_id   ename   dept  salary
101   kunal   hr     7000    --        hr max salary 7000
103   mayur   sales  7000    --         sales max salary  7000
105   pratik  reseacr  2000    --      research max salary  2000
107   ashih   manu   3500      --      manu max salary 3500

select *
from employees e1
where e1.salary = (
	select max(salary) as max_salary
	from employees
	where dept like e1.dept
    )
    
    
    
temporary table ------derived table

select *
from employees  

dept    | max_sal     -->dhs
hr        7000
sales     7000
researech 2000
manu      3500


with dhs as
(select dept ,max(salary) as max_sal
from employees
group by dept)
select *
from employees as e ,dhs
where e.dept = dhs.dept and e.salary = dhs.max_sal

with sachin_tab as
(select *
from employees
where ename ='sachin')
select *
from sachin_tab
