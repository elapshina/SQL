1.SELECT * FROM Customers
WHERE City= "Berlin";
2.SELECT Customername, City  FROM Customers
WHERE Customerid=32;
3.SELECT * FROM Customers
WHERE City= "Berlin" AND PostalCode=12209;
4.SELECT CustomerName, City, Country FROM Customers
limit 3;
5.SELECT*FROM Customers WHERE City="Berlin" OR City="London";
6.SELECT CustomerName, Address, City FROM Customers ORDER BY City;
7.SELECT * FROM Customers ORDER BY Country, City;
8.SELECT * FROM Customers WHERE PostalCode="";
  SELECT * FROM Customers WHERE PostalCode IS NULL;
9.SELECT CustomerID, CustomerName, PostalCode FROM Customers WHERE PostalCode=NOT "";
SELECT CustomerID, CustomerName, PostalCode FROM Customers WHERE PostalCode IS NOT NULL;;
10.SELECT DISTINCT Country FROM Customers;
11.SELECT City FROM Customers
WHERE City LIKE "a%";
12.SELECT City FROM Customers
WHERE City LIKE "%a%" order BY City DESC;
13.SELECT City FROM Customers
WHERE City LIKE "a%b";
14.SELECT * FROM Customers
WHERE City NOT LIKE "a%" AND  Country not LIKE "Germany";
15.SELECT * FROM Customers
WHERE Country IN ("Norway", "France");
16.SELECT * FROM Customers
WHERE City IN ("Bern", "Berlin", "London") AND CustomerID BETWEEN 11 AND 29;
SELECT * FROM Customers WHERE City IN ("Bern", "Berlin", "London") AND (CustomerID > 10 AND CustomerID < 30);
17. UPDATE Customers SET City = "Minsk";
18. UPDATE Customers SET City = "Oslo" WHERE Country="Norwey";
19. UPDATE Customers SET City = "Minsk" AND Country="Belarus" WHERE CustomerID=32;
20. DELETE  FROM Customers WHERE Country="Norwey";