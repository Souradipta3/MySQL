create database startersql;

use startersql;

create table users(
id int auto_increment primary key,
name varchar(100) not null,
email varchar(100) unique not null,
gender enum('male', 'female', 'other'),
dob date,
created_at timestamp default current_timestamp
);

select * from users;

drop database startersql;

select name, email from users;

rename table users to customers;
rename table customers to users;

alter table users add column is_active boolean default true;
alter table users drop column is_active;
alter table users modify column name varchar(200);
alter table users modify column email varchar(100) first;
alter table users modify column gender enum('male','female','other') after dob;

insert into users values
('raj3113@gmail.com', '1', 'Raj Saha', '2003-11-03', 'male', default);
insert into users (name,email,gender,dob) values
('Babu Saha', 'babu3@gmail.com', 'male', '2004-08-15');
insert into users (name,email,gender,dob) values
('Sanku Saha', 'sanku9@gmail.com', 'male', -- '1972-11-09'),
('Banku Saha', 'banku21@gmail.com', 'male', '1975-04-21'),
('Sibu Saha', 'shibu41@gmail.com', 'male', '1941-03-15');

-- Creating Table
CREATE TABLE users1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Inserting Data 
INSERT INTO users1 (name, email, gender, date_of_birth, salary) VALUES
('Aarav', 'aarav@example.com', 'Male', '1995-05-14', 65000.00),
('Ananya', 'ananya@example.com', 'Female', '1990-11-23', 72000.00),
('Raj', 'raj@example.com', 'Male', '1988-02-17', 58000.00),
('Sneha', 'sneha@example.com', 'Female', '2000-08-09', 50000.00),
('Farhan', 'farhan@example.com', 'Male', '1993-12-30', 61000.00),
('Priyanka', 'priyanka@example.com', 'Female', '1985-07-12', 84000.00),
('Aisha', 'aisha@example.com', 'Female', '1997-03-25', 56000.00),
('Aditya', 'aditya@example.com', 'Male', '1992-06-17', 69000.00),
('Meera', 'meera@example.com', 'Female', '1989-09-05', 77000.00),
('Ishaan', 'ishaan@example.com', 'Male', '2001-10-02', 45000.00),
('Tanvi', 'tanvi@example.com', 'Female', '1994-04-18', 62000.00),
('Rohan', 'rohan@example.com', 'Male', '1986-12-01', 75000.00),
('Zoya', 'zoya@example.com', 'Female', '1998-01-15', 54000.00),
('Karan', 'karan@example.com', 'Male', '1990-08-22', 68000.00),
('Nikita', 'nikita@example.com', 'Female', '1987-03-10', 71000.00),
('Manav', 'manav@example.com', 'Male', '1996-11-29', 61000.00),
('Divya', 'divya@example.com', 'Female', '1991-02-28', 57000.00),
('Harshit', 'harshit@example.com', 'Male', '1993-09-09', 65000.00),
('Ritika', 'ritika@example.com', 'Female', '1999-05-05', 52000.00),
('Imran', 'imran@example.com', 'Male', '1995-07-30', 63000.00),
('Juhi', 'juhi@example.com', 'Female', '1992-10-14', 59000.00),
('Tushar', 'tushar@example.com', 'Male', '1990-01-08', 73000.00),
('Lata', 'lata@example.com', 'Female', '1984-11-11', 78000.00),
('Yash', 'yash@example.com', 'Male', '1997-06-06', 64000.00),
('Fatima', 'fatima@example.com', 'Female', '1993-03-03', 55000.00);  
select * from users1;
drop table users1;

 -- Quering data
select * from users1 where gender='Female';
select * from users1 where gender!='Female';
select * from users1 where gender='Other';
select * from users1 where id<=15;
select * from users1 where salary>=50000;
select * from users1 where date_of_birth<'1995-01-01';
select * from users1 where email is null;
select * from users1 where name is not null;
select * from users1 where salary between '30000' and '60000';
select * from users1 where gender in('Male', 'Female');
select * from users1 where gender='Female' and salary>50000;
select * from users1 where gender='Male' or salary>70000;
select * from users1 order by date_of_birth asc;
select * from users1 order by salary desc;
select * from users1 limit 10;
select * from users1 limit 5 offset 2;
select * from users1 where name like'R%';
select * from users1 where name like '%a';
select * from users1 where name like '%y%';
select * from users1 where name like '_a%';

update users1 set salary=100000, email='raj3113@gmail.com' where id=3;
update users1 set name='Aisha Khan' where email='aisha@example.com';
update users1 set salary=salary+10000 where salary<60000;

delete from users1 where salary<65000;
delete from users1 where id=15;
delete from users1; -- will delete all data from the users1 table

-- Functions
select count(*) from users1;
select count(*) from users1 where gender='Male';
select count(*) from users1 where salary>70000;
select min(salary) as Min_salary, max(salary) as Max_salary from users1;
select sum(salary) from users1;
select avg(salary) from users1;
select gender, avg(salary), sum(salary) from users1 group by gender;
select name, length(name) as nme_len from users1;
select id, upper(name) as upper from users1;
select id, lower(name) as lower from users1;
select id, upper(name) as upper, concat(lower(name),'3113') as username from users1;
select id, name, day(date_of_birth) as dob, month(date_of_birth) as mob, year(date_of_birth) as yob from users1;
select id, name, now() as time from users1;
select name, datediff(curdate(),date_of_birth) as days from users1;
select name, timestampdiff(year, date_of_birth, curdate()) as age from users1;
select name, salary, round(salary) as rounded, floor(salary) as floored, ceil(salary) as ceiled from users1;
select id, mod(id,2) as remainder from users1;
select name, gender, if(gender='Female', 'Yes', 'No') as is_female from users1;

-- Autocommit and Transactions
set autocommit=0; -- autocommit turned off
update users1 set salary = 70000 where id=6;
-- Both of these two commnads (rollback and commit) are only used when autocommit is turned off
rollback; -- if there is any mistake in updating the data then it can be undo by uisng rollback
commit; -- if there is no mistake in updating the data then it can be finalized using commit command
set autocommit=1; -- autocommit turned on

-- Foreign Key
create table addresses(
id int auto_increment primary key,
user_id int,
street varchar(200),
city varchar(100),
state varchar(100),
pincode varchar(10),
constraint fk_user foreign key (user_id) references users1(id) on delete cascade
);
insert into addresses (user_id, street, city, state, pincode) values
(1, '221B MG Road', 'Mumbai', 'Maharashtra', '400001'),
(22, '14 Park Street', 'Kolkata', 'West Bengal', '700016'),
(3, '32 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(24, '5 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(5, '17 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
(6, '55 Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
(7, '88 Connaught Place', 'Delhi', 'Delhi', '110001'),
(8, '10 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
(9, '23 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
(10, '45 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
(11, '67 Ashoka Road', 'Delhi', 'Delhi', '110001'),
(12, '89 MG Road', 'Pune', 'Maharashtra', '411001'),
(13, '12 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
(14, '34 Park Street', 'Kolkata', 'West Bengal', '700016'),
(15, '56 Connaught Place', 'Delhi', 'Delhi', '110001'),
(16, '78 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
(17, '90 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
(18, '11 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(19, '33 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(20, '22 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001');
select * from addresses;
drop table addresses;

-- Joins
select users1.name, addresses.city from users1 inner join addresses on users1.id = addresses.user_id;
select addresses.user_id, users1.name, addresses.state, addresses.pincode from users1 inner join addresses on users1.id = addresses.user_id;
select users1.name, addresses.city from users1 left join addresses on users1.id = addresses.user_id;
select addresses.user_id, users1.name, addresses.state, addresses.pincode from users1 left join addresses on users1.id = addresses.user_id;
select users1.name, addresses.city from users1 right join addresses on users1.id = addresses.user_id;
select users1.name, users1.gender, addresses.state, addresses.pincode from users1 right join addresses on users1.id = addresses.user_id;

-- Union and Union all
create table admin (
id int primary key,
 name varchar(100),
 email varchar(100),
 gender enum('Male', 'Female', 'Other'),
 date_of_birth date,
 salary int
);
insert into admin (id, name, email, gender, date_of_birth, salary) values
(101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
(102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
(103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
(104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);
select * from admin;
drop table admin;
select name from users1 union select name from admin;
select email, name from users1 union select email, name from admin;
select name from users1 union all select name from admin;
select name, salary from users1 union all select name, salary from admin;
select name, 'User' as role from users1 union select name, 'Admin' as role from admin;
select name, salary from users1 union all select name, salary from admin order by salary desc;
select name, date_of_birth from users1 union select name, date_of_birth from admin order by date_of_birth asc;
 
 -- Self join
alter table users1 add column referred_by_id int;
update users1 set referred_by_id = 1 where id in (2,3,13,14,15,16,18,20);
update users1 set referred_by_id = 2 where id in (1,4,5,6,8,10,11);
update users1 set referred_by_id = 3 where id in  (7,9,12,17,19,21,22,23,24,25);
select a.id, a.name as user_name, b.name as referred_by_name from users1 a inner join users1 b on a.referred_by_id=b.id;

-- Views
create view high_salary_users as select * from users1 where salary>70000;
select * from high_salary_users;
update users1 set salary=65000 where id=15;
select name, email, date_of_birth from high_salary_users;
drop view high_salary_users;

-- Indexes
create index idx_email on users1(email);
select * from users1 where email="raj@example.com";
create index idx_gender_salary on users1(gender,salary);
select * from users1 where gender='Female' and salary>70000;
show indexes from users1;
drop index idx_email on users1;
drop index idx_gender_salary on users1;

-- Subqueries
select * from users1 where salary> (select avg(salary) from users1);
select * from users1 where referred_by_id in (select id from users1 where salary> (select avg(salary) from users1));
select name, salary, (select avg(salary) from users1) as average_salary from users1;

-- Group by and Having
select gender, avg(salary) from users1 group by gender;
select gender, avg(salary) as average_salary, count(*) as count from users1 group by gender;
select gender, avg(salary) as average_salary, count(*) as count from users1 group by gender having avg(salary)>60000;
select gender, avg(salary) as average_salary, count(*) as count from users1 where id between '5' and '15' group by gender having avg(salary)>60000;
select referred_by_id, count(*) as total_referred from users1 where referred_by_id is not null group by referred_by_id having count(*)>1;
select gender, avg(salary), count(*) from users1 group by gender with rollup;


-- Procedures
delimiter $$
create procedure select_users()
begin
	select * from users1;
end $$
delimiter ;
call select_users();
drop procedure select_users;
delimiter $$
create procedure new_users(
in n_name varchar(100),
in n_email varchar(100),
in n_gender enum('Male','Female','Other'),
in n_dob date,
in n_salary int
)
begin
	insert into users1(name, email, gender, date_of_birth, salary) values(n_name, n_email, n_gender, n_dob, n_salary);
	select * from users1;
end $$
delimiter ;
call new_users('John','john@example.com','Male', '1990-07-21', 74000);
call new_users('Peter','peter@example.com','Male', '1995-09-10', 64000);
call new_users('Rossy','rossy@example.com','Female', '1999-04-17', 86000);
show procedure status where db='startersql';
drop procedure new_users;

-- Triggers
create table user_log (
id int auto_increment primary key,
user_id int,
name varchar(100),
created_on timestamp default current_timestamp
);
delimiter $$
create trigger after_user_insert after insert on users1 for each row
begin
	insert into user_log (user_id, name)
    values(new.id, new.name);
end $$
delimiter ;
insert into users1 (name,email,gender,date_of_birth,salary) values
('Rishav', 'rishav@example.com', 'Male', '1998-04-04', 59000);
('Juliet', 'juliet@example.com', 'Female', '1998-04-04', 59000);
select * from user_log;
drop trigger after_user_insert;

truncate table users;
truncate table addresses;
truncate table admin;
truncate table users1;
truncate table user_log;
