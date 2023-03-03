-- SQL excerises

-- get all records from employee
select * from "Employee"

-- populate https://raw.githubusercontent.com/lerocha/chinook-database/master/ChinookDatabase/DataSources/Chinook_PostgreSql.sql
-- get all records from employee with last name King

select * from "Employee" where "LastName" = 'King';

-- - Select all records from the Employee table where first name is Andrew and REPORTSTO is NULL.

select * from "Employee" where "FirstName" = 'Andrew' and "ReportsTo" is null

-- - Select all albums in Album table and sort result set in descending order by title.

select * from "Album" order by "Title" desc 

-- - Select first name from Customer and sort result set in ascending order by city

select "FirstName" from "Customer" order by "City"

-- Select all invoices with a billing address like “T%”

select * from "Invoice" where "BillingAddress"like 'T%'

-- - Select all invoices that have a total between 15 and 50

select * from "Invoice" where "Total" > 15 and "Total" < 50

-- Select all employees hired between 1st of June 2003 and 1st of March 2004

select * from "Employee" where "HireDate" > '2003-06-01' and "HireDate" < '2004-03-01'

-- Insert two new records into Genre table
insert into "Genre" values(777, 'madnessCore');
insert into "Genre" values(778, 'Eurobeat');
select * from "Genre";
-- - Insert two new records into Employee table
insert into "Employee" values(777, 'Dan', 'Dirty');
insert into "Employee" values(778, 'Chan', 'Austin');
select * from "Employee";
 --   - Insert two new records into Customer table
insert into "Customer" values(777, 'Dan', 'Dirty',1,2,3,4,5,6,7,8,'dirty@gmail');
insert into "Customer" values(779, 'Chan', 'Austin',1,2,3,4,5,6,7,8,'dirty@gmail');
select * from "Customer";
-- - Update Aaron Mitchell in Customer table to Robert Walter
update "Customer" set "FirstName"= 'Robert' where "FirstName"= 'Aaron';
update "Customer" set "LastName"= 'Walter' where "LastName"= 'Mitchell';
select * from "Customer";
--  - Update name of artist in the Artist table “Creedence Clearwater Revival” to “CCR”
update "Artist" set "Name" = 'CCR' where "Name" = 'Creedence Clearwater Revival'