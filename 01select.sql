select*from emp;
select*from student;
select*from dept;
select dname from dept;

select empno, ename, sal, job from emp;

/*������ �ּ�*/
-- ���� �ּ�
-- stu_id, stu_name, sex Į�� �˻��ϱ�
select stu_id, stu_name, sex from student;

-- ��� ������: ���� Į��(��)�� �� �� �ִ�.
select empno, ename, sal, sal*12, job from emp;
-- Į���� (as) ��Ī -> as ��������
select empno as �����ȣ, ename as �����, sal as �޿�, sal*12 as ����, sal*12*0.33 as ������, job as ���� from emp;
select empno �����ȣ, ename �����, sal �޿�, sal*12 ����, sal*12*0.33 ������, job ���� from emp;

select*from salgrade;
-- �������: hisal + 1000, losal + 1500
select grade, losal, losal + 1500, hisal, hisal + 1000 from salgrade;
-- ��Ī(��Ī) ���̱�
select grade ���, losal �����ݾ�, losal + 1500 �λ������ݾ�, hisal �ִ�ݾ�, hisal + 1000 �λ��ִ�ݾ� from salgrade;

-- null: 0(x), �����(x), ��Ȯ��, �� �� ���� �ǹ�, � ������ �𸥴�, ������ �� �� ����
select*from emp;

-- comm ���ʽ��� + 100�� ����
select comm, comm + 100 from emp; --> null�� Į���� ������ �ȵ�
select comm, nvl(comm, 0)+100 "�� �� ��" from emp; --> null�̸� 0���� null�� �ƴϸ� comm ������

-- ���ڿ� ����
select ename || '�� ������' || job || '�Դϴ�' ���� from emp;

select*from student;
-- ex)�������� ���̴� 24�Դϴ�
select stu_name || '�� ���̴�' || age || '�Դϴ�' ���� from student;

select cou_id from student;

-- ��ü �ڽ��� �����ΰ���? (�ߺ� �����ϱ�)
select distinct cou_id from student;

select*from emp;
-- �μ���(deptno) ������? (�ߺ� �����ϱ�)
select distinct deptno from emp;

-- �μ����� 20�� ����� ����
select*from emp where deptno = 20;

-- job�� ����� �͸� ����
select *from emp where job = '���';

-- job�� ����̰ų� ������ �͸� ����
select*from emp where job = '���' or job='����';

-- sal�� 400�̻��� ����� ����ȣ, �̸�, �޿� ����
select empno �����ȣ, ename �̸�, sal �޿� from emp where sal>=400;

-- sal�� 400�̻��̰� ������ ����� ����ȣ, �̸�, ����, �޿� ����
select empno �����ȣ, ename �̸�, job ����, sal �޿� from emp where sal>=400 and job='����';

-- hiredate �Ի����� 2005/01/01 ������ �Ի��� ��� ����
select*from emp where hiredate < '05/01/01';

-- hiredate �Ի����� 2005/01/01 ���Ŀ� �Ի��� ��� ����
select*from emp where hiredate > '05/01/01';

-- hiredate �Ի����� 2005/01/01 ~ 2007/12/31 ���̿� �Ի��� ��� ����
select*from emp where '05/01/01' <= hiredate and hiredate <='07/12/31';

-- �̾� ���� ���� �����
select*from emp where ename like '��%'; --> like �����ϴ�

-- �̾� �� �Ǵ� �־� ���� ���� �����
select*from emp where ename like '��%' or ename like '��%';

-- �̾� ���� �ƴ� �����
select*from emp where not ename like '��%'; 

-- �̸��� �߰� �۾��� '��'�� ���
select*from emp where ename like'%��%'; --> % ������ ����

-- in ~�ȿ�
-- job�� ����̰ų� �����̰ų� ������ ��� ����
select*from emp where job='���' or job='����' or job='����';
select*from emp where job in ('���', '����', '����');

-- between ���ۼ� and ����: ���ۼ�-���� ����
-- 300<=sal<=600 ������ ��� ����
select*from emp where sal between 300 and 600;

-- hiredate �Ի����� 2005/01/01 ~ 2007/12/31 ���̿� �Ի��� ��� ����
select*from emp where hiredate between '05/01/01' and '07/12/31';

-- mgr �������� 1010 ~ 1020 ������ ��� ����
select*from emp where mgr between 1010 and 1020;

-- comm�� null�� ��� ����
select*from emp where comm is null;

-- �̸� ������������ ����ϱ�
select*from emp order by ename asc; --> asc ���� ����

-- �޿� ������������ ����ϱ�
select*from emp order by sal desc; --> desc ��������

-- �μ� ��ȣ ������������ ����ϱ�
select*from emp order by empno;

-- ���� ������������ ����ϱ�
select*from emp order by job desc;

-- �μ� ��ȣ �������� ���� �����ϸ� �����ȣ ������� ����ϱ�
select*from emp order by deptno, empno; 

-- �μ� ��ȣ �������� ���� �����ϸ� �޿� �������� ����ϱ�
select*from emp order by deptno, sal desc; 

-- ������ �����̰ų� ������ ����� ���� ������������ ����ϱ�
select*from emp where job in('����', '����') order by job; --> ���� ���� 

-- deptno�� 10�̰ų� 30�� ����� mgr ��������, deptno ������������ ����ϱ�
select*from emp where deptno in (10,30) order by mgr, deptno;

-- ������
select*from group_star
union
select*from single_star;

-- ������: �ߺ� ��� ���
select*from group_star
union all
select*from single_star;

-- ������
select*from group_star
intersect
select*from single_star;

-- ������: �׷� Ȱ���� �ϰ� �ִ� ��� ���
select*from group_star
minus
select*from single_star;

-- ������: �ַ� Ȱ���� �ϰ� �ִ� ��� ���
select*from single_star
minus
select*from group_star;

select*from emp;
-- �޿��� 300 ������ ����� �����ȣ, ����̸�, �޿��� ����ϱ�
select empno, ename, sal from emp where sal<=300;
-- �̸��� ����ȣ�� ����� �����ȣ, �����, �޿��� ����ϱ�
select empno, ename, sal from emp where ename='����ȣ';
-- �޿��� 250�̰ų� 300�̰ų� 500�� ������� �����ȣ�� ������ �޿��� ����ϱ�
select empno, ename, sal from emp where sal in (250, 300, 500);
-- �޿��� 250�� 300�� 500�� �ƴ� ����� ����ϱ�
select*from emp where not sal in(250, 300, 500);
-- �̸��� '��'���� �����ϴ� ����� �̸� �߿� '��'�� �����ϴ� ����� �����ȣ�� ����̸� ����ϱ�
select empno, ename from emp where ename like '%��%' or ename like '��%';
-- ����ڰ� ���� ����� ����ϱ�
select*from emp where mgr is null;
-- �μ���ȣ�� ���� ������� ����ϵ� ���� �μ� ���� ����� ����� ��� �Ի��� �� ���� ������ ������� ����ϱ�
select*from emp order by deptno, hiredate;