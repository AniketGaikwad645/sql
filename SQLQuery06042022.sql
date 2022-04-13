
--rank,dense_rank,row_number---


select * from mam;
select *,ROW_NUMBER() over (order by salary desc) as new_row from mam;
select *,rank() over (order by salary desc) as new_rank from emp;
select *,dense_rank() over (order by salary desc) as new_rank from emp;

select *,ROW_NUMBER() over (order by salary desc) as new_row from mam,rank() over (order by salary desc) as new_rank from emp,dense_rank() over (order by salary desc) as new_rank from emp;


with new_table1 as
(select *,dense_rank() over (order by salary desc) as new_rank from emp)
select * from new_table1 where new_rank='2';


with aniket as
(select *,dense_rank() over (order by salary desc) as new_rank from emp)
select * from aniket where new_rank='2';

with aniket as
(select *,dense_rank() over (order by salary asc) as new_rank from emp)
select * from aniket where new_rank='2';


---partition by ---

with gaikwad as---salary will be arrange ascending then dipartment vise will be sorted then rank 1 will show
(select *,dense_rank() over (partition by city order by salary asc) as new_rank from emp)
select * from gaikwad where new_rank='1';

----group by use when aggrigate function is to be used  also row get reduce also how many time repete does not matter 

select * from emp;
select city,max(age) from emp group by city;



create table over_Test(EMPID int, FirstName varchar(20),Gender varchar(2),salary int)

 insert into over_Test values(1,'Mohini','F',1000)
 insert into over_Test values(2,'Rohit','M',2000)
 insert into over_Test values(3,'Amit','M',4000)
 insert into over_Test values(4,'Sonal','F',5000)
 insert into over_Test values(5,'Minal','F',6000)
 insert into over_Test values(6,'Amar','M',3600)
 insert into over_Test values(7,'Shital','F',4500)
 insert into over_Test values(8,'Sohil','M',6000)
 insert into over_Test values(9,'praveen','F',9000)
 insert into over_Test values(10,'Mithali','F',9000)
 insert into over_Test values(11,'seema','F',9000)
 insert into over_Test values(12,'meena','F',10000)
 select * from over_Test

 select top 3 salary from over_test order by gender;

 select gender,max(salary) from over_test group by gender;

 select * from over_test order by gender;


 select *,DENSE_RANK() over (order by gender) as newbee from over_test;
 

 ---sql function
 --1.upper
 select upper('city');

 select *,upper(firstname) as uppercase from over_test ;

--- 2 lower
select lower('city');

 select *,lower(firstname) as uppercase from over_test ;

 --3 substring
 ---x
 ---y
 ---12345
 ---abcde
 select substring('abcdef',2,2);

 select *, substring (FirstName,2,2) from over_Test;


 --4 length

 select len('abcdef');

 select *,len(firstname) from over_test;

 --5.reverse

 select REVERSE('abcdef');
 select reverse (firstname) from over_Test;

 --6.replicate
 --create duplicate values

 select REPLICATE('city',4);
  select replicate (firstname,4) from over_Test;


  --7.replace

  select replace('scodeen','e','t');
    select replace('scodeen','een','t');