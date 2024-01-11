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
    1001, 556677, '����', sysdate, 5000, '2024/01/27'
);

insert into card values(
    1002, 556677, '����', sysdate, 5000, '2024/01/27'
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

-- ���� 121p �����̺�, �������̺� ����
create table userTBL (
    userName varchar2(10) not null primary key,
    birthYear date not null,
    addr varchar2(10) not null,
    mobile varchar2(10)
);

drop table userTBL; --> ���̺� �����ϱ�

create table buyTBL (
    userName varchar2(10) not null primary key,
    prodName varchar2(20) not null,
    price number(10) not null,
    amount number(5) not null,
    constraint userName_fk foreign key(userName) references userTBL(userName)
);

drop table buyTBL;

insert into userTBL values ('�̽±�','87/12/10','����','011-111-1111');
insert into userTBL values ('���ȣ','71/12/10','����','019-333-3333');

insert into buyTBL values ('�̽±�','�ȭ',1000,1);
insert into buyTBL values ('���ȣ','��Ʈ��',10000,2);

-- ���� �θ�, master, ��
create table bank(
    bankname varchar2(20) not null primary key,
    jijum varchar2(20) not null
);

insert into bank values('��������','��������');
insert into bank values('��������','��������');
insert into bank values('�츮����','��������');

-- ���� ���� �ڽ�, sub
create table deAcc(
    bankname varchar(20) not null primary key, --> �θ�Ű�� ������ �ڷ����� name�� ������ �Ѵ�
    acckind varchar(20),
    constraint bankname_fk foreign key(bankname) references bank(bankname)
    -- ����: constaraint �ܷ�Ű�� foreign key(��� �÷���) references �θ����̺��(��� �÷���)
);

insert into deAcc values('�츮����','�Ϲݰ���');
insert into deAcc values('��������','�������');
insert into deAcc values('��������','���ǰ���');
-- insert into deAcc values('īī����ũ','�Ϲݰ���');

-- �� ���̺�
create table costom(
    cardNumber number(10) not null primary key,
    cName varchar2(20)
);

drop table costom;

-- ī�� ���̺�
create table cardTbl(
    cardNumber number(10) not null primary key,
    limitPrice number(10) not null,
    constraint cardNumber_fk foreign key(cardNumber) references costom(cardNumber)
);

insert into costom values(1234,'ȫ�浿');
insert into costom values(1235, '�̼���');
insert into costom values(1265, '�迵��');

select*from costom;

insert into cardTbl values(1234,9000);
insert into cardTbl values(1235,3.000);
--insert into cardTbl values(1240,9000);
