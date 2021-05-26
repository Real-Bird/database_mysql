#부서번호와 급여가 1000 이상인 사원들의 부서별 평균 급여의 반올림 값을 부서번호 내림차순 정렬 출력
select DEPTNO, round(avg(sal))
from emp
where sal >= 1000
group by DEPTNO
ORDER by DEPTNO desc;

#부서번호와 급여가 2000 이상인 사원들의 부서별 평균 급여의 반올림 값을 구하고, 평균 급여의 반올림으로 오름차순 정렬 출력
select DEPTNO, round(avg(sal)) salavg
from emp
where sal >= 2000
group by DEPTNO
order by salavg;

#부서별 같은 업무(job)를 하는 사람의 인원수를 구해서 부서번호, 업무(job), 인원수를 부서번호에 대해서 오름차순 정렬 출력
select DEPTNO, job, count(job) persons
from emp
group by deptno,job
ORDER by DEPTNO;

#부서번호와 급여가 1000 이상인 사원들의 부서별 평균 급여를 출력
#단, 부서별 평균급여가 2000이상인 부서만 출력
select DEPTNO, round(avg(sal)) salavg
from emp
where sal >= 1000
group by DEPTNO
having salavg >= 2000;

select EMPNO, ename
from emp
order by EMPNO desc
limit 0, 5; /*mariaDB에만 있는 기능 limit 시작인덱스(0부터), length*/

DESC member;

INSERT INTO member(num, NAME, addr)
VALUES (10, '바이든', '미국');

SELECT *
FROM member;

UPDATE member
SET NAME = '박뱀똥', addr = '속초'
WHERE num = 3;