
Create Table A (Aid int, Name varchar(20))
Create Table B (Bid int, Name varchar(20),Aid int)

insert Into A values(1,'Sam')
insert Into A values(2,'tom')
insert Into A values(3,'harry')
insert Into A values(4,'katich')
insert Into A values(5,'kate')


insert Into B values(11,'harry',3)
insert Into B values(12,'katich',4)
insert Into B values(13,'kate',5)
insert Into B values(14,'mate',6)
insert Into B values(15,'sat',7)


Create Table C (Cid int, Name varchar(20),Bid int)
insert Into C values(21,'harry',13)
insert Into C values(22,'katich',14)
insert Into C values(23,'kate',15)
insert Into C values(24,'mate',16)
insert Into C values(25,'sat',17)

select * from A;
select * from B;
select * from B;

select * from a join  b on a.aid=b.aid;--innr join

select a.aid,a.name,b.bid from a join  b on a.aid=b.aid;--innr join


select a.aid,b.name from a join b on a.name=b.name;

select * from a left join  b on a.aid=b.aid;--left outer join

select * from a right join  b on a.aid=b.aid;--right outer join


select * from a full join  b on a.aid=b.aid;--full join


select * from a join b on a.aid=b.aid join c on b.bid=c.bid;--three table join

select * from a full join b on a.aid=b.aid full join c on b.bid=c.bid;--three table full join