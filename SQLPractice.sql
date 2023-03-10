-- Querying practice

select * from "Employee";
select * from "Employee" where "LastName" = 'King';
select * from "Employee" where "FirstName" = 'Andrew' and "ReportsTo" is NULL;
select * from "Album" order by "Title";
select "FirstName" from "Employee" order by "City"; 
select * from "Invoice" where "BillingAddress" like 'T%';
select * from "Invoice" where "Total" > 15 and "Total" < 50;
select * from "Employee" where "HireDate" > '2003-06-01' and "HireDate" < '2004-03-01';

-- Insert practice
insert into "Genre" values(26, 'Horror');
insert into "Genre" values(27, 'Thriller');
insert into "Employee" values(9, 'Scott', 'Michael', 'Regional Manager', 1, '1964-03-15 00:00:00.000', '2002-08-14 00:00:00.000', '1725 Slough Avenue', 'Scranton', 'PA', 'USA', '18505', '+1 (111) 111-1111' , '1(222) 222-2222', 'michaelscott@chinookcorp.com');
insert into "Employee" values(10, 'Angela', 'Martin', 'Senior Accountant', 9, '1974-02-11 00:00:00.000', '2002-08-14 00:00:00.000', '325 Brick St', 'Scranton', 'PA', 'USA', '18607', '+1 (333) 333-3333' , '1(444) 444-4444', 'angelamartin@chinookcorp.com');
insert into "Customer" values(60, 'Jim', 'Halpert', 'Dunder-Mifflin', 'Cedar Ave', 'Scranton', 'PA', 'USA', '18808', '+1 (555) 555-5555', '+1 (666) 666-6666', 'jimhalpert@gmail.com', 3);
insert into "Customer" values(61, 'Dwight', 'Schrute', 'Dunder-Mifflin', '13th Ave', 'Scranton', 'PA', 'USA', '18207', '+1 (777) 777-7777', '+1 (888) 888-8888', 'dwightschrute@gmail.com', 4);

-- Update practice
update "Customer" set "FirstName" = 'Robert', "LastName" = 'Walter' where "FirstName" = 'Aaron' and "LastName" = 'Mitchell'; 
update "Artist" set "Name" = 'CCR' where "Name" = 'Creedence Clearwater Revival';

