--1. Show all fields and all lines
select * from students;
--2. Show all students in a table
select name as students from students;
--3. Show only user IDs
select id from students;
--4. Show only username
select name from students;
--5. Show only user emails
select email from students;
--6. Show username and email address
select name, email from students;
--7. Show id, name, email and creation date of users
select id, name, email, created_on from students;
--8. Show users whose password is 12333
select * from students where password = '12333';
--9. Show users who were created 2021-03-26 00:00:00
select * from students where created_on='2021-03-26 00:00:00';
--10. Show users with 'Anna' in their first name
 select * from students where name like '%Anna%';
--11. Show users with 8 at the end of their name
 select * from students where name like '%8';
--12. Show users where the letter 'a' is in the name in
select * from students where name like '%a%';
--13. Show users who were created 2021-07-12 00:00:00
select * from students where created_on='2021-07-12 00:00:00';
--14. Show users who were created on 2021-07-12 00:00:00 and have password 1m313
select * from students where created_on='2021-07-12 00:00:00' and password='1m313';
--15. Show users who were created on 2021-07-12 00:00:00 and have Andrey in their username
select * from students where created_on='2021-07-12 00:00:00' and name like '%Andrey%';
--16. Show users who were created on 2021-07-12 00:00:00 and have the number 8 in their name
select * from students where created_on='2021-07-12 00:00:00' and name like '%8%';
--17. Show users whose id is 110
select * from students where id=110;
--18. Show users whose id is 153
select * from students where id=153;
--19. Show users whose id is greater than 140
select * from students where id > 140;
--20. Show users whose id is less than 130
select * from students where id<130;
--21. Show users whose id is less than 127 or greater than 188
select * from students where id<127 or id>188;
--22. Show users whose id is less than or equal to 137
select * from students where id<=137;
--23. Show users whose id is greater than or equal to 137
select * from students where id>=137;
--24. Show users whose id is greater than 180 but less than 190
select * from students where id>180 and id<190;
--25. Show users with id from 180 to 190
select * from students where id between 180 and 190;
--26. Show users whose password is 12333, 1m313, 123313
select * from students where password in ('12333','1m313','123313');
--27. Show users where created_on 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from students where created_on in('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
--28. Show min ID
select min(id) from students;
--29. Show max ID.
select max(id) from students;
--30. Show number of users
select count(name) from students;
--31. Show user id, name, user creation date. Sort in ascending order by the date the user was added.
select id, name, email, created_on from students order by created_on;
--32. Show user id, name, user creation date. Sort in descending order by the date the user was added.
select id, name, email, created_on from students order by created_on desc;
