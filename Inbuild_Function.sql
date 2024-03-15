		-- String
	-- lower case
select lower('tanAYa');
select lower('TANAYA');
	-- upper case
select upper('itvedant');
select upper('ItVedant');
	-- concat
select concat('Welcome to ITVedant',' Thane');
	-- replace
select replace('Welcome to ITVedant Thane','Thane','Anderi');
	-- lenght
select length('My name is Tanaya');
select length('      abc     ');
	-- trim
select length(trim('      abc     '));
	-- ltrim
select length(ltrim('     abc     '));
	-- rtrim
select length(rtrim('     abc     '));    
	-- substing
select substring('My name is Tanaya',1,2);
select substring('My name is Tanaya',12);

select * from StudInfo;
select upper(department),Name from StudInfo;
select upper(department),upper(Name) from StudInfo;

		-- Math
	-- abs
select abs(-11);
select abs(-1.11);
	-- ceil
select ceil(12.34);
select ceil(12.0);
select ceil(12.5);
select ceil(12.1);

	-- round
select round(12.1);
select round(12.4);
select round(12.49);
select round(12.5);

	-- truncate
select truncate(12.111111,3);

	-- mode
select mod(10,4);

	-- floor
select floor(10/4);

	-- pow
select pow(2,2);
select pow(10,2);

	-- sqrt
select sqrt(10);
select sqrt(9);

	-- apply on table
use tanaya;
select * from StudInfo;
select Department,Name ,round(Marks) from StudInfo;
select Department,Name,truncate(marks,10) from StudInfo;
select Department,Name,mod(Marks,10) from StudInfo;
select Department,Name,sqrt(Marks) from StudInfo where id=10;
select Department,Name,sqrt(Marks) from StudInfo;

		-- Date
	-- current date
select curdate();

	-- current date & time
select now();

	-- system date & time
select sysdate();

	-- last day of month
select last_day(curdate());
select last_day('2024-03-14');

	-- diffrence between Two dates
select datediff('2024-04-20','2024-03-14');
	-- date format
select date_format(curdate(),'%d-%c-%Y');
select date_format(curdate(),'%d-%c-%y');
select date_format(curdate(),'%D-%M-%y');
select date_format(curdate(),'%D-%m-%y');
select date_format(curdate(),'%D-%b-%y');
select date_format(curdate(),'%a,%D-%b-%y');
select date_format(curdate(),'%W,%D-%b-%y');

	-- date time
select date_format(now(),'%W,%D-%b-%Y,%h:%i:%s');