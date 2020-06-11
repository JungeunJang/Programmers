-- 현재 접속한 데이터 베이스의 테이블을 조회
select * from dept;

-- 원하는 테이블 구조를 조회한다 
desc bonus;

-- 부서의 모든 정보를 가져온다
select * from dept;
 
-- 사원의 모든 정보를 가져온다
select * from emp;

-- 사원의 이름과 사원본호를 가져온다.
select ename, empno from emp;

-- 사원의 이름과 사원번호, 직무, 급여를 가져온다
select ename, empno, job, sal from emp;

-- 부서번호와 부서이름을 가져온다.
SELECT
    deptno, dname
FROM dept;

-- 각 사원들의 급여액과 급여약에서 1000을 더한 값, 200을 뺀 값, 2를 곱한 값, 2로 나눈 값
SELECT
    sal, sal+1000, sal -200, sal *2, sal /2
FROM emp;

-- 각 사원의 급여액, 커미션, 급여+커미션
SELECT
    sal, nvl(comm,0), sal+nvl(comm, 0)
FROM emp;

-- 사원들의 이름과 직무를 다음 양식으로 가져온다. 
-- 000 사원의 담당 직무는 XXX입니다. 
SELECT
    ename, job
FROM emp;

SELECT
    ename|| '사원의 담당 직무는 ' || job || '입니다.'
FROM emp;

-- 사원들이 근무하고 있는 근무부서의 번호를 가져온다. 
SELECT
    distinct(deptno)
FROM emp;

-- 근무 부서가 10번인 사원들의 사원번호, 이름, 근무부서를 가져온다
select empno, ename from emp where deptno = 10;

-- 근무 부서 번호가 10번이 아닌 사원들의 사원번호, 이름, 근무 부서를 가져온다. 
SELECT
    empno, ename, deptno
FROM emp where deptno <> 10; 

-- 급여가 1500이상인 사원들의 사원번호. 이름, 급여를 가져온다. 
SELECT
    empno, ename,sal
FROM emp where sal >= 1500;

--이릉이 scott인 사원의 사원번호, 이름, 직무, 급여를 가져온다
select empno, ename, job, sal from emp where ename = 'SCOTT';

--직무가 salesmam인 사원의 사원번호. 이름. 직무
SELECT
    empno, ename, job
FROM emp
where job = 'SALESMAN' ; 

-- 직무가 clerk이 아닌 사원의 사원번호, 이름, 직무를 가져오기 
SELECT
    empno, ename, job
FROM emp where job <> 'CLERK';

-- 1982년 1월 1일 이후에 입사한 사원의 사원번호, 이름, 입사일을 가져온다
SELECT
    empno, ename, hiredate
FROM emp where hiredate >= '1982/01/01';