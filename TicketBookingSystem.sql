create database PayrollManagement;
use PayrollManagement;

create table employee(
employee_id varchar(10) primary key,
first_name varchar(30),
last_name varchar(30),
Date_of_birth date,
gender varchar(10),
email varchar(50),
phone_number varchar(15),
address varchar(50),
position varchar(30),
joining_date date,
termination_date date
);

insert into employee values
('e1','Santhiya','Nataraj','2002-08-18','Female','santhiya3@gmail.com','9988776655','Dindigul','frontend developer','2024-08-10',null),
('e2','Sandhiya','Veerasamy','2002-07-02','Female','sandhiya1@gmail.com','9888573600','Dindigul','backend developer','2024-06-15',null),
('e3','Vinothini','Ramasamy','2003-07-13','Female','vinothini7@gmail.com','8988776600','Dindigul','software engineer','2024-06-15',null),
('e4','Raja','Ram','2000-09-19','Male','raja45@gmail.com','9911223344','Trichy','web designer','2025-07-08',null),
('e5','Chandru','sadayapasamy','1999-05-27','Male','chandru8@gmail.com','5908706650','Erode','Tester','2024-12-02',null),
('e6','Roshini','Manikandan','2002-10-08','Female','roshini9@gmail.com','9907862071','Coimbatore','software engineer','2024-07-04',null),
('e7','Sanjay','Nataraj','2001-05-09','Male','sanjay77@gmail.com','9943772655','Banglore','web designer','2025-02-20',null),
('e8','Saran','Murugan','1998-04-12','Male','saranmurugan@gmail.com','8534279100','Delhi','software engineer','2024-05-24',null),
('e9','Abimathi','Thirumoorthi','2002-06-13','Female','Abimathi1@gmail.com','9007834210','Mumbai','prompt engineer','2024-11-03',null),
('e10','Arun','Kumar','2003-03-13','Male','arun8@gmail.com','8009567890','Hyderabad','frontend developer','2025-01-09',null);

create table payroll(
payroll_id varchar(10) primary key,
employee_id varchar(10),
payperiod_startdate date,
payperiod_enddate date,
basic_salary int,
overtime_pay int,
deductions int,
net_salary int
);

insert into payroll values
('p1','e3','2024-12-15','2025-02-15',10000,3000,6000,7000),
('p2','e4','2025-07-08','2026-01-08',15000,4000,5000,14000),
('p3','e3','2025-11-13','2025-12-13',12000,3000,4000,11000),
('p4','e2','2024-06-15','2025-06-15',11000,5000,3000,13000),
('p5','e1','2024-08-10','2025-06-10',16000,3000,7000,12000),
('p6','e5','2025-07-08','2025-05-08',13000,2000,2000,13000),
('p7','e10','2025-01-09','2025-12-09',14000,3000,4000,15000),
('p8','e8','2024-05-24','2026-05-24',18000,1000,2000,19000),
('p9','e7','2025-02-20','2025-12-20',19000,3000,2000,20000),
('p10','e6','2024-07-04','2025-07-04',20000,5000,6000,19000);

create table tax(
tax_id varchar(10) primary key,
employee_id varchar(10),
tax_year year,
taxable_income int,
tax_amount int
);

insert into tax values
('t1','e2','2024',10000,2000),
('t2','e1','2024',15000,3000),
('t3','e3','2024',8000,1000),
('t4','e8','2024',17000,4000),
('t5','e3','2025',11000,2200),
('t6','e2','2026',9000,1000),
('t7','e4','2025',14000,2500),
('t8','e9','2024',30000,12000),
('t9','e5','2025',12000,2300),
('t10','e7','2025',18000,5000);

create table financial_record(
record_id varchar(10) primary key,
employee_id varchar(10),
record_date date,
description varchar(50),
amount int,
record_type varchar(25)
);

insert into financial_record values
('r1','e4','2025-08-08','income',15000,'income'),
('r2','e3','2025-01-15','tax payment',1000,'tax payment'),
('r3','e1','2025-05-10','expense',4000,'expense'),
('r4','e5','2025-04-08','expense',5000,'expense'),
('r5','e7','2025-03-20','tax payment',5000,'tax payment'),
('r6','e3','2025-11-13','income',12000,'income'),
('r7','e6','2024-12-12','expense',2000,'expense'),
('r8','e8','2024-05-24','income',19000,'income'),
('r9','e2','2025-05-15','tax payment',1000,'tax payment'),
('r10','e10','2025-11-09','expense',6000,'expense');


alter table payroll add constraint foreign key(employee_id) references employee(employee_id);
alter table tax add constraint foreign key(employee_id) references employee(employee_id);
alter table financial_record add constraint foreign key(employee_id) references employee(employee_id);