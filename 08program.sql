use sqldb;
select*from usertbl;
select*from buytbl;

-- union all: 중복된 것 허용해서 출력
select userid, name from usertbl 
union all 
select userid, prodName from buytbl;

-- union: 중복된 건 제외하고 출력
select userid, name from usertbl 
union 
select userid, prodName from buytbl;

-- 요구사항: 이름, 전화번호로 주소록을 만들기 단, 전화번호가 없는 사람은 제외
select name from usertbl where mobile1 is null;

select name, mobile1, mobile2 from usertbl 
	where name not in (select name from usertbl where mobile1 is null);
    
-- SQL 구문을 프로그래밍처럼 만들 수 있다
drop procedure if exists ifProc;

-- 스토어드 프로시저
delimiter $$
create procedure ifProc()
begin
	declare var1 int;
	set var1 = 100;
    if var1 = 100 then
		select '100입니다';
	else 
		select '아닙니다';
	end if;
end $$
delimiter ;
call ifProc();

drop procedure if exists ifProc2;
use employees;

select*from employees;

delimiter $$
create procedure ifProc2()
begin 
	declare hireDate date; -- > 변수 선언 변수명 자료형
	declare curdate date;
    declare days int;
    
    select hire_date into hiredate
		from employees.employees
        where emp_no = 1003;
	
    set curDate = current_date();
    set days = datediff(curdate, hiredate);
    
    if (days/365) >= 5 then 
			select concat('입사한 지 ', days, '일이나 지났습니다. 축하합니다!');
	else
			select '입사한 지 ' + days + '일 밖에 안되었네요. 열심히 일하세요.';
	end if;
end $$
delimiter ;
call ifProc2();

-- 288p
drop procedure if exists ifProc3;
delimiter $$
create procedure ifProc3()
begin
	declare point int;
    declare credit char(1);
    set point = 77;
    
    if point >= 90 then 
			set credit = 'A';
	elseif point >= 80 then
			set credit = 'B';
	elseif point >= 70 then
			set credit = 'C';
	elseif point >= 60 then
			set credit = 'D';
	else	
			set credit = 'F';
	end if;
    select concat('취득점수==>', point), concat('학점==>', credit);
end $$
delimiter ;
call ifProc3();

-- 289p
drop procedure if exists caseProc;
delimiter $$
create procedure caseProc()
begin
	declare point int;
    declare credit char(1);
    set point = 77;
    
    case 
			when point >= 90 then
					set credit = 'A';
			when point >= 80 then
					set credit = 'B';
			when point >= 70 then 
					set credit = 'C';
			when point >= 60 then 
					set credit = 'D';
			else 
					set credit = 'F';
	end case;
    select concat('취득점수==>', point), concat('학점==>', credit);
end $$
delimiter ;
call caseProc();
			

