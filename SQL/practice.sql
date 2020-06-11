--이름이 F로 시작하는 사원의 이름과 사원번로를 가져온다.
SELECT
    ename, empno
FROM emp
where ename like 'F%';

--이름이 S로 끝나는 사원의 이름과 사원번호
SELECT
    ename, empno
FROM emp 
WHERE ename like '%S';
--이름에 A가 포함되어 있는 사원의 이름과 사원번호를 가져온다
SELECT
    ename, empno
FROM emp
WHERE ename like '%A%';

--이름이 두번째 글자가 A인 사원의 사원이름, 번호 
SELECT
    ename, empno
FROM emp
where ename like '_A%';

-- 이름이 4글자인 사원
SELECT
    ename, empno
FROM emp 
where ename like '____';

-- 사원 중에서 커미션을 받지 않는 사원의 사원번호, 이름, 커미션
SELECT
    empno, ename, comm
FROM emp
where comm is null;

-- 사원중 커미션을 받는 사원
SELECT
    empno, ename, comm
FROM emp
where comm is not null;

--회사 대표인 사람
SELECT
    empno, ename
FROM emp WHERE mgr is null;

SELECT
    empno, ename
FROM emp WHERE mgr is not null;

--정렬
-- 사원의 사원번호, 이름, 급여, 급여를 기준으로 오름차순 정렬
SELECT
    empno, ename, sal
FROM emp
ORDER by sal ASC;

-- 사원의 사원원번호, 이름, 급여, 급여를 기준으로 내림차순 정렬
SELECT
    empno, ename, sal
FROM emp
ORDER by sal desc;

-- 사원의 사원번호, 이름, 급여, 이름를 기준으로 오름차순 정렬
SELECT
    empno, ename, sal
FROM emp
ORDER by ename;

-- 사원의 사원번호, 이름, 입사일, 입사일를 기준으로 오름차순 정렬
SELECT
    empno, ename, hiredate
FROM emp
ORDER by hiredate;

-- 직무가 salesman인 사원의 사원번호, 이름, 입사일, 급여를 기준으로 오름차순 정렬
SELECT
    empno, ename, sal
FROM emp
WHERE job = 'SALESMAN'
ORDER BY sal;

--1981년에 입사한 사원을 사원번호, 사원이름, 입사일, 사원번호를 기준으로 냄림차순
SELECT
    empno, ename, hiredate
FROM emp
WHERE hiredate BETWEEN '1981/01/01' and '1981/12/31'
order by empno desc;

--  사원의 사원원번호, 이름, 커미션, 커미션을 기준으로 오름차순 정렬
SELECT
    empno, ename, comm
FROM emp
WHERE comm is not null
ORDER by comm;

-- 사원의 사원원번호, 이름, 커미션, 커미션을 기준으로 내림차순 정렬
SELECT
    empno, ename, comm
FROM emp
WHERE comm is not null
ORDER by comm desc;

-- 사원의 이름, 사원번호, 급여를 가져온다, 급여를 기준으로 내림차순 , 이름을 기준으로 내림 차순
SELECT
    empno, ename, sal
FROM emp
ORDER by sal desc, ename asc;