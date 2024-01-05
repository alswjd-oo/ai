create table card (
    cardNumber number(10) not null primary key,
    accountNumber number(12) not null,
    cardType varchar2(8),
    orderDate date,
    limitAmount number(10),
    paymentDate date
);
drop table card;

insert into card values(
    1001, 556677, '비자', sysdate, 5000, '2024/01/27'
);

insert into card values(
    1002, 556677, '비자', sysdate, 5000, '2024/01/27'
);

insert into card values(
    1003, 556679, 'master', sysdate, 10000, '2024/01/20'
);

insert into card values(
    1004, 556680, 'check', sysdate, null, null
);

insert into card values(
    1005, 556681, 'check', sysdate, null, null
);

select*from card;

-- 교재 121p 고객테이블, 구매테이블 구현
create table userTBL (
    userName varchar2(10) not null primary key,
    birthYear date not null,
    addr varchar2(10) not null,
    mobile varchar2(10)
);

drop table userTBL; --> 테이블 삭제하기

create table buyTBL (
    userName varchar2(10) not null primary key,
    prodName varchar2(20) not null,
    price number(10) not null,
    amount number(5) not null,
    constraint userName_fk foreign key(userName) references userTBL(userName)
);

drop table buyTBL;

insert into userTBL values ('이승기','87/12/10','서울','011-111-1111');
insert into userTBL values ('김경호','71/12/10','전남','019-333-3333');

insert into buyTBL values ('이승기','운동화',1000,1);
insert into buyTBL values ('김경호','노트북',10000,2);

-- 은행 부모, master, 주
create table bank(
    bankname varchar2(20) not null primary key,
    jijum varchar2(20) not null
);

insert into bank values('국민은행','강동지점');
insert into bank values('신한은행','강남지점');
insert into bank values('우리은행','송파지점');

-- 예금 계좌 자식, sub
create table deAcc(
    bankname varchar(20) not null primary key, --> 부모키와 동일한 자료형과 name을 가져야 한다
    acckind varchar(20),
    constraint bankname_fk foreign key(bankname) references bank(bankname)
    -- 형식: constaraint 외래키명 foreign key(대상 컬럼명) references 부모테이블명(대상 컬럼명)
);

insert into deAcc values('우리은행','일반계좌');
insert into deAcc values('신한은행','대출계좌');
insert into deAcc values('국민은행','증권계좌');
-- insert into deAcc values('카카오뱅크','일반계좌');

-- 고객 테이블
create table costom(
    cardNumber number(10) not null primary key,
    cName varchar2(20)
);

drop table costom;

-- 카드 케이블
create table cardTbl(
    cardNumber number(10) not null primary key,
    limitPrice number(10) not null,
    constraint cardNumber_fk foreign key(cardNumber) references costom(cardNumber)
);

insert into costom values(1234,'홍길동');
insert into costom values(1235, '이순신');
insert into costom values(1265, '김영지');

select*from costom;

insert into cardTbl values(1234,9000);
insert into cardTbl values(1235,3.000);
--insert into cardTbl values(1240,9000);
