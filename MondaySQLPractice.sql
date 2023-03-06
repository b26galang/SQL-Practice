-- Joins

-- Create an inner join that joins customers and orders and specifies the name of the customer and the invoiceId
select "Customer"."FirstName", "Customer"."LastName", "Invoice"."InvoiceId" from "Customer"
join "Invoice" on "Customer"."CustomerId" = "Invoice"."CustomerId";

-- Create an outer join that joins the customer and invoice table, specifying the CustomerId, firstname, lastname, invoiceId, and total
select "Customer"."CustomerId", "Customer"."FirstName", "Customer"."LastName", "Invoice"."InvoiceId", "Invoice"."Total" from "Customer"
full outer join "Invoice" on "Customer"."CustomerId" = "Invoice"."CustomerId";

-- Create a right join that joins album and artist specifying artist name and title.
select "Artist"."Name" as artist_name, "Album"."Title" as album_title from "Artist" right join "Album" on "Artist"."ArtistId" = "Album"."ArtistId";

-- Create a cross join that joins album and artist and sorts by artist name in ascending order.
select * from "Artist" cross join "Album" order by "Name";

-- Perform a self-join on the employee table, joining on the reportsto column.
select * from "Employee" "Employee1" inner join "Employee" "Employee2" on "Employee1"."ReportsTo" = "Employee2"."ReportsTo" and "Employee1"."EmployeeId" != "Employee2"."EmployeeId";

-- Set Operators

-- Use a unionall to create a table that has the name of all employees and customers
select "FirstName", "LastName" from "Employee" union all select "FirstName", "LastName" from "Customer";