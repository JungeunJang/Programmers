--�̸��� F�� �����ϴ� ����� �̸��� ������θ� �����´�.
SELECT
    ename, empno
FROM emp
where ename like 'F%';

--�̸��� S�� ������ ����� �̸��� �����ȣ
SELECT
    ename, empno
FROM emp 
WHERE ename like '%S';
--�̸��� A�� ���ԵǾ� �ִ� ����� �̸��� �����ȣ�� �����´�
SELECT
    ename, empno
FROM emp
WHERE ename like '%A%';

--�̸��� �ι�° ���ڰ� A�� ����� ����̸�, ��ȣ 
SELECT
    ename, empno
FROM emp
where ename like '_A%';

-- �̸��� 4������ ���
SELECT
    ename, empno
FROM emp 
where ename like '____';

-- ��� �߿��� Ŀ�̼��� ���� �ʴ� ����� �����ȣ, �̸�, Ŀ�̼�
SELECT
    empno, ename, comm
FROM emp
where comm is null;

-- ����� Ŀ�̼��� �޴� ���
SELECT
    empno, ename, comm
FROM emp
where comm is not null;

--ȸ�� ��ǥ�� ���
SELECT
    empno, ename
FROM emp WHERE mgr is null;

SELECT
    empno, ename
FROM emp WHERE mgr is not null;

--����
-- ����� �����ȣ, �̸�, �޿�, �޿��� �������� �������� ����
SELECT
    empno, ename, sal
FROM emp
ORDER by sal ASC;

-- ����� �������ȣ, �̸�, �޿�, �޿��� �������� �������� ����
SELECT
    empno, ename, sal
FROM emp
ORDER by sal desc;

-- ����� �����ȣ, �̸�, �޿�, �̸��� �������� �������� ����
SELECT
    empno, ename, sal
FROM emp
ORDER by ename;

-- ����� �����ȣ, �̸�, �Ի���, �Ի��ϸ� �������� �������� ����
SELECT
    empno, ename, hiredate
FROM emp
ORDER by hiredate;

-- ������ salesman�� ����� �����ȣ, �̸�, �Ի���, �޿��� �������� �������� ����
SELECT
    empno, ename, sal
FROM emp
WHERE job = 'SALESMAN'
ORDER BY sal;

--1981�⿡ �Ի��� ����� �����ȣ, ����̸�, �Ի���, �����ȣ�� �������� ��������
SELECT
    empno, ename, hiredate
FROM emp
WHERE hiredate BETWEEN '1981/01/01' and '1981/12/31'
order by empno desc;

--  ����� �������ȣ, �̸�, Ŀ�̼�, Ŀ�̼��� �������� �������� ����
SELECT
    empno, ename, comm
FROM emp
WHERE comm is not null
ORDER by comm;

-- ����� �������ȣ, �̸�, Ŀ�̼�, Ŀ�̼��� �������� �������� ����
SELECT
    empno, ename, comm
FROM emp
WHERE comm is not null
ORDER by comm desc;

-- ����� �̸�, �����ȣ, �޿��� �����´�, �޿��� �������� �������� , �̸��� �������� ���� ����
SELECT
    empno, ename, sal
FROM emp
ORDER by sal desc, ename asc;