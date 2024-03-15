	-- Function 
use tanaya;
select * from StudInfo;
	-- aggregate function
select max(Paid_fees) from StudInfo;
select min(Paid_fees) from StudInfo;
select sum(Paid_fees) from StudInfo;
select avg(Paid_fees) from StudInfo;
select count(Paid_fees) from StudInfo;

	-- group by
select count(id), department from StudInfo group by department;

	-- having
select count(id), department from StudInfo group by department having count(department)>2;

select * from StudInfo where marks not in(80);

select count(id),department from StudInfo where Marks not in(78) group by department;