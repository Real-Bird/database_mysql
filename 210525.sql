CREATE table member(
num INT PRIMARY KEY,
NAME VARCHAR(50),
addr VARCHAR(50)
);

DESC member;

INSERT INTO member(num, NAME, addr) VALUES(1, '김개똥', '서울');

INSERT INTO member(num, NAME) VALUES (2, '이말똥');

INSERT INTO member VALUES(3, '박소똥', '횡성');

SELECT num,NAME,addr
FROM member;

SELECT *
FROM member;

DELETE FROM member
WHERE num = 2;

UPDATE member
SET NAME = '박닭똥', addr = '양양'
WHERE num = 3;

SELECT *
FROM emp;

SELECT *
FROM dept;

#emp 테이블에서 사원번호, 사원이름, 직업을 출력.
select empno, ename, job
from emp;

#emp 테이블에서 사원번호, 급여, 부서번호를 출력.
#단, 급여가 많은 순서대로 정렬.
select empno, sal, deptno
from emp
order by sal desc;

#emp 테이블에서 사원번호, 급여, 입사일을 출력.
#단, 급여가 적은 순서대로 정렬.
select empno, sal, hiredate
from emp
order by sal asc;

#emp 테이블에서 직업, 급여를 출력.
#단, 직업은 오름차순으로 정렬하되, 직업이 같으면 급여를 내림차순으로 정렬.
select job, sal
from emp
order by job asc, sal DESC;

#Alias
SELECT empno "사원 번호", ename "사원 이름"
FROM emp;

#원래 급여와 10% 상승한 급여 출력
SELECT sal origin, round(sal*1.1,0) "10% up"
FROM emp
WHERE deptno = 10;

#급여가 3000 이상인 모든 직원 정보 출력
SELECT *
FROM emp
WHERE sal >= 3000
ORDER BY sal DESC;

#부서번호가 30이 아닌 사원이름과 부서번호 출력 ver.1
SELECT ename, deptno
FROM emp
WHERE deptno <> 30
ORDER BY deptno ASC;

#부서번호가 30이 아닌 사원이름과 부서번호 출력 ver.2
SELECT ename, deptno
FROM emp
WHERE deptno != 30
ORDER BY deptno ASC;

#부서번호가 10번이고 급여가 3000이상인 사원들의 이름과 급여 출력
SELECT ename, sal
FROM emp
WHERE deptno = 10 AND sal >= 3000
ORDER BY sal DESC;

#직업이 salesman 이거나 manager인 사원의 사원번호와 부서번호 출력
#scan을 두 번함.
SELECT empno, deptno, job
FROM emp
WHERE job = 'SALESMAN' OR job = 'MANAGER'
ORDER BY job ASC;

#OR를 사용하지 않기 위해 AND로 변경한 경우
SELECT empno, deptno, job
FROM emp
WHERE job != 'ANALYST' AND job != 'CLERK' AND job != 'PRESIDENT'
ORDER BY deptno ASC;

#부서번호가 10번이거나 20번인 사원의 사원번호와 이름, 부서번호 출력
SELECT empno, ename, deptno
FROM emp
WHERE deptno = 10 OR deptno = 20;

#IN 연산자 사용
SELECT empno, ename, deptno
FROM emp
WHERE deptno IN (10, 20);

#AND로 변경
SELECT empno, ename, deptno
FROM emp
WHERE deptno <> 30 AND deptno <> 40;

#급여가 1000과 2000 사이인 사원들의 사원번호, 이름, 급여를 출력
SELECT empno, ename, sal
FROM emp
WHERE sal >= 1000 AND sal <= 2000;

#BETWEEN 사용
SELECT empno, ename, sal
FROM emp
WHERE sal BETWEEN 1000 AND 2000;

#사원이름이 'FORD'와 'SCOTT' 사이인 사원번호와 이름 출력
SELECT empno, ename
FROM emp
WHERE ename BETWEEN 'FORD' AND 'SCOTT'
ORDER BY ename ASC;

#문자도 비교 연산자 가능
SELECT empno, ename
FROM emp
WHERE ename >= 'FORD' AND ename <= 'SCOTT'
ORDER BY ename ASC;

#사원이름이 'J'로 시작하는 사원의 사원이름과 부서번호를 출력
SELECT ename,deptno
FROM emp
WHERE ename LIKE 'J%';

#사원이름 중에 'M'를 포함하는 사원의 사원이름과 부서번호를 출력
SELECT ename, deptno
FROM emp
WHERE ename LIKE '%M%';

#사원이름 중 두 번째 글자가 'A'인 사원의 사원이름, 급여, 입사일 출력
SELECT ename, sal, hiredate
FROM emp
WHERE ename LIKE '_A%';

#사원이름이 'ES'로 끝나는 사원의 이름, 급여, 입사일을 출력
SELECT ename, sal, hiredate
FROM emp
WHERE ename LIKE '%ES';

#입사연도가 1981년인 사원들의 입사일과 사원번호 출력
SELECT hiredate, empno
FROM emp
WHERE hiredate LIKE '1981%';

#커미션이 null인 사원의 사원이름과 커미션을 출력
SELECT ename, comm
FROM emp
WHERE comm IS NULL;

#커미션이 null이 아닌 사원의 사원이름과 커미션을 출력
SELECT ename, comm
FROM emp
WHERE comm IS NOT NULL;

#CONCAT(칼럼명, '문자열') => 문자열 연결
SELECT CONCAT(ename, '님') NAME
FROM emp;

#LOWER(칼럼명 or '문자열') => 대문자를 소문자로 변경
SELECT LOWER(ename) NAME
FROM emp;

#UPPER(칼럼명 or '문자열') => 소문자를 대문자로 변경
SELECT UPPER('hello');

#LPAD('문자열' or 숫자, 전체 자릿수, '남은 자리를 채울 문자')
#왼쪽에 채움
SELECT empno, LPAD(empno, 10, '0') "LPAD"
FROM emp;

#LENGTH('문자열' or 숫자) => 문자열의 길이를 byte로 반환
SELECT LENGTH('국어');

#LEFT('문자열', 자릿수) => 문자열의 왼쪽부터 자리수만큼 자름
#RIGHT('문자열', 자릿수) => 문자열의 오른쪽부터 자리수만큼 자름
#SUBSTRING('문자열', 시작 자리, 자릿수) => 문자열의 시작자리부터
#자리수만큼 자름
SELECT ename, LEFT(ename,3), RIGHT(ename, 3), SUBSTRING(ename, 2, 3)
FROM emp;

#FORMAT("처리할 숫자", 자릿수) => 반환값은 문자열
SELECT FORMAT(12345.123456, 2);

SELECT CONCAT(ename, 'a','b','c')
FROM emp;

#NVL(null, '대입값') => null일 때 대입값으로 변경
SELECT ename, comm, nvl(comm, 0)
FROM emp;

SELECT ABS(-10);

SELECT CEIL(3.141592);

SELECT FLOOR(3.141592);

SELECT ROUND(3.141592, 2);

SELECT MOD(10, 3);

SELECT TRUNCATE(3.141592, 3);

#현재     년월일,    시분초, 연원일 시분초
SELECT CURDATE(), CURTIME(), NOW();

#특정 날짜에 일정 시각 후 계산
SELECT ADDDATE(NOW(), INTERVAL 2 DAY);

#특정 날자에 일정 시각 전 계산
SELECT SUBDATE(NOW(), INTERVAL 2 DAY);

#두 날짜 사이의 일수 계산
SELECT DATEDIFF('2021-05-25', '2021-04-29');

#두 날짜 사이를 시분초로 계산
SELECT TIMESTAMPDIFF(hour, '2021-04-29', '2021-05-25');

SELECT hiredate, DATE_FORMAT(hiredate, '%y/%m/%d %H:%i:%s')
FROM emp;