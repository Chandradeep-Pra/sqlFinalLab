Use Practise

create table manufactureTable
(
	Mf_name varchar(20) primary key,
	City varchar(10),
	State varchar(20)
)
create table employeeTable
(
	EmployeeID int primary key,
	EmpName varchar(30),
	Phone int,
	Email nvarchar(50)
)
create table computerTable(
	SerialNo int primary key,
	Mf_name varchar(20)
		constraint fk_mfname
		foreign key(Mf_name)
		references manufactureTable(Mf_name),
	Model varchar(30),
	Weight int,
	EmployeeId int
		constraint fk_employeeId
		foreign key(EmployeeId)
		references employeeTable(EmployeeID)
)
insert into manufactureTable values()
insert into employeeTable values()
insert into computerTable values(1,'Asus','Tuff','5',101),
								(2,'Apple','MacBook Pro',6,102),
								(3,'Acer','Predator',10,103),
								(4,'Dell','Notebook',6,104)

-- Q1
select Mf_name from manufactureTable where State='South Dakota'
-- Q2
select avg(Weight) as Average from computerTable
-- Q3
select EmpName from employeeTable where Phone like '2%'
-- Q4
select serialNo from computerTable where Weight 

--Q7
