-- ���� ������ ������ ���̽��� ���̺��� ��ȸ
select * from dept;

-- ���ϴ� ���̺� ������ ��ȸ�Ѵ� 
desc bonus;

-- �μ��� ��� ������ �����´�
select * from dept;
 
-- ����� ��� ������ �����´�
select * from emp;

-- ����� �̸��� �����ȣ�� �����´�.
select ename, empno from emp;

-- ����� �̸��� �����ȣ, ����, �޿��� �����´�
select ename, empno, job, sal from emp;

-- �μ���ȣ�� �μ��̸��� �����´�.
SELECT
    deptno, dname
FROM dept;

-- �� ������� �޿��װ� �޿��࿡�� 1000�� ���� ��, 200�� �� ��, 2�� ���� ��, 2�� ���� ��
SELECT
    sal, sal+1000, sal -200, sal *2, sal /2
FROM emp;

-- �� ����� �޿���, Ŀ�̼�, �޿�+Ŀ�̼�
SELECT
    sal, nvl(comm,0), sal+nvl(comm, 0)
FROM emp;

-- ������� �̸��� ������ ���� ������� �����´�. 
-- 000 ����� ��� ������ XXX�Դϴ�. 
SELECT
    ename, job
FROM emp;

SELECT
    ename|| '����� ��� ������ ' || job || '�Դϴ�.'
FROM emp;

-- ������� �ٹ��ϰ� �ִ� �ٹ��μ��� ��ȣ�� �����´�. 
SELECT
    distinct(deptno)
FROM emp;

-- �ٹ� �μ��� 10���� ������� �����ȣ, �̸�, �ٹ��μ��� �����´�
select empno, ename from emp where deptno = 10;

-- �ٹ� �μ� ��ȣ�� 10���� �ƴ� ������� �����ȣ, �̸�, �ٹ� �μ��� �����´�. 
SELECT
    empno, ename, deptno
FROM emp where deptno <> 10; 

-- �޿��� 1500�̻��� ������� �����ȣ. �̸�, �޿��� �����´�. 
SELECT
    empno, ename,sal
FROM emp where sal >= 1500;

--�̸��� scott�� ����� �����ȣ, �̸�, ����, �޿��� �����´�
select empno, ename, job, sal from emp where ename = 'SCOTT';

--������ salesmam�� ����� �����ȣ. �̸�. ����
SELECT
    empno, ename, job
FROM emp
where job = 'SALESMAN' ; 

-- ������ clerk�� �ƴ� ����� �����ȣ, �̸�, ������ �������� 
SELECT
    empno, ename, job
FROM emp where job <> 'CLERK';

-- 1982�� 1�� 1�� ���Ŀ� �Ի��� ����� �����ȣ, �̸�, �Ի����� �����´�
SELECT
    empno, ename, hiredate
FROM emp where hiredate >= '1982/01/01';