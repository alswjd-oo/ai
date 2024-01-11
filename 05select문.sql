use sqldb;
select*from usertbl;
select*from buytbl;

-- userId 'BBK' 'JKW'
select*from usertbl where userid in ('BBK', 'JKW');

-- 김씨 성을 가진 사람 검색
select*from usertbl where name like '김%';

-- 김경호의 키보다 큰 사람은?
-- 1단계 김경호 키는?
select height from usertbl where name = '김경호';
-- 2단계 조건 찾기
select*from usertbl where height >= 177 ;
-- 동시 작성
select*from usertbl where height >= (select height from usertbl where name = '김경호');

-- 은지원보다 나이가 어린 사람
select*from usertbl where birthYear > (select birthYear from usertbl where name = '은지원');

-- 노트북의 분류랑 똑같은 거 찾기
select userId, prodName, groupName from buytbl where groupName = (select groupName from buytbl where prodName = '노트북'); 

-- 김범수가 산 물건
select prodName from buytbl where userId = (select userId from usertbl where name = '김범수'); 

-- 서울에 사는 사람
select*from usertbl where addr = '서울';
-- 서울에 사는 사람의 키보다 작은 키를 가진 사람
-- any(최솟값보다 큰 것, 또는) 
select*from usertbl where height <= any (select height from usertbl where addr = '서울'); 
-- all(그리고)
select*from usertbl where height <= all (select height from usertbl where addr = '서울'); 
-- some
select*from usertbl where height <= some (select height from usertbl where addr = '서울'); 

-- 운동화를 산 사람의 이름
select name from usertbl where userId = any (select userId from buytbl where prodName = '운동화'); 

-- 키가 제일 큰 사람 3명
select*from usertbl order by height desc limit 3;

-- 나이가 제일 많은 사람 5명
select*from usertbl order by birthYear limit 5; 

-- usertbl과 동일한 테이블 만들기
create table usertbl2 (select*from usertbl);
select*from usertbl2;

-- 테이블 만들기 서울에 있는 사람
create table usertblSeoul (select*from usertbl where addr = '서울');
select*from usertblSeoul;

-- 키가 175 ~ 180 사이인 사람만 
create table usertblHeight (select userId, name, height from usertbl where height >=175 and height <=180); -- where height between 175 and 180
select*from usertblHeight;
-- 단, 제외조건(pk, fk)는 만들어지지 않는다.

-- group by 절
select userid, sum(amount), avg(amount), max(amount), std(amount), var_samp(amount) from buytbl group by userid;

-- 총 구매액이 300 이상인 사람의 사용자명, 총구매액 구하기
select userid, sum(price) from buytbl group by userid having sum(price) >=300;

-- 경품 대상인 사람을 테이블 만들기, userid, mobile1, mobile2, addr
create table eventtbl 
(select userid, mobile1, mobile2, addr from usertbl 
where userid = any (select userid from buytbl group by userid having sum(price) >=300)
);

select*from eventtbl;

-- groupName 그룹핑 하기
select groupName from buytbl group by groupName;

-- 가장 높은 groupName, prodName, amount, price 만들기
-- 1단계
select groupName from buytbl group by groupName having max(price) >= (select max(price) from buytbl);
-- 2단계
create table if not exists maxgroup (select groupName, prodName, amount, price from buytbl 
where groupName = (select groupName from buytbl group by groupName having max(price) >= (select max(price) from buytbl)));  

select*from maxgroup;

-- rollup 중간합계
select num, groupName, sum(price) from buytbl group by groupName, num with rollup;

select*from buytbl order by groupName;

--  게시판에서 게시글 번호 경우에 자동번호가 넘버링
-- 학번 부여 자동부여 되게 
drop table testtbl;
create table if not exists testtbl 
(id int auto_increment primary key, -- auto_increment는 int형, primary key/unique 이용
userName char(3),
age int );

insert into testtbl values (Null, '지민', 25);
insert into testtbl (userName, age) values ('유나', 22);
insert into testtbl values (Null, '유정', 21);

select*from testtbl;

alter table testtbl auto_increment=100;
insert into testtbl values (Null, '지수', 25);

-- 학번 240101 시작
alter table testtbl auto_increment=240101;
insert into testtbl values (Null, '유경', 21);
insert into testtbl values (Null, '유겸', 21);

-- 증가치를 1씩이 아니라 3씩 증가하게 만들기
set @@auto_increment_increment =3;
 insert into testtbl values (Null, '이경', 21);
 insert into testtbl values (Null, '이정', 21);

select*from testtbl;

use employees;
select*from employees.employees;
	     -- 데이터 베이스명.테이블명

select*from employees;
insert into employees values (1003, '05/01/01', '정', '현희', 'F', '20/10/05');
insert into employees values (1004, '05/01/01', '박', '현희', 'M', '20/10/05');
insert into employees values (1005, '05/01/01', '이', '현희', 'F', '20/10/05');
insert into employees values (1006, '05/01/01', '김', '현희', 'M', '20/10/05');

-- sqldb 사용하러 가기
use sqldb;

-- insert문인데 select문을 이용해서 삽입하기
create table testtbl2 (id int, fname varchar(50), lname varchar(50));

-- employees에 emp_no, frist_Name, last_Name 넣기
insert into testtbl2 
	select emp_no, first_name, last_name from employees.employees;
    
select*from testtbl2;

select*from buytbl order by price desc;

create table copybuytbl (select*from buytbl);

select*from copybuytbl order by price desc limit 3;

-- 수량 상위 3개 삭제하기
delete from copybuytbl order by price desc limit 3;

select*from copybuytbl;

-- 수량 하위 2개 삭제하기
delete from copybuytbl order by amount limit 2;

select*from copybuytbl;

--
select*from copybuytbl where prodName='운동화';
update copybuytbl set price = 60 where num = 2;