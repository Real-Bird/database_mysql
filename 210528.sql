select ename, e.deptno, dname
from emp e, dept d
where e.deptno = d.deptno;

select ename, e.deptno, dname
from emp e 
join dept d on e.deptno = d.deptno;

select ename, e.deptno, dname
from emp e
join dept d using(deptno);

#급여가 3000에서 5000 사이의 사원이름과 부서명 출력
select ename, dname
from emp e, dept d
where d.deptno = e.deptno and sal between 3000 and 5000
order by sal;

SELECT ename, dname
FROM emp a, dept b
WHERE b.deptno = a.deptno AND sal BETWEEN 3000 AND 5000;

select *
from dept;

select *
from emp;

#부서명이 'ACCOUNTING'인 사원의 이름, 입사일, 부서번호, 부서명 출력
select ename, hiredate, e.deptno, dname
from emp e, dept d
where d.deptno = e.deptno and dname = 'ACCOUNTINg';

#커미션이 null이 아닌 사원의 이름, 입사일, 부서명을 출력
select ename, hiredate, dname, comm
from emp e, dept d
where d.deptno = e.deptno and comm is not null;

#부서명이 'ACCOUNTING'인 사원의 이름, 입사일, 부서번호, 부서명을 출력
select ename, hiredate, e.deptno, dname
from emp e, dept d
where e.deptno = d.deptno and dname = 'ACCOUNTING';

#사원번호, 부서번호, 부서명을 출력. 단, 사원이 근무하지 않는 부서명도 출력
select e.empno, d.deptno, d.dname
from emp e 
left join dept d on e.deptno=d.deptno;

#emp테이블과 dept테이블을 조인하여 부서번호, 부서명, 이름, 급여 출력
select d.deptno, d.dname, e.ename, e.sal
from emp e, dept d
where e.deptno = d.deptno;

#사원의 이름이 'ALLEN'인 사원의 이름과 부서명을 출력
select e.ename, d.dname
from emp e, dept d
where e.deptno = d.deptno and e.ename = 'ALLEN';

#모든 사원의 이름, 부서번호, 급여를 출력. 단, emp 테이블에 없는 부서도 출력
select e.ename, e.deptno, sal, dname
from emp e, dept d
where e.deptno = d.deptno;

select ename, e.deptno, sal, dname
from emp e
left join dept d
on e.deptno = d.deptno;

#사원의 이름과 급여, 급여 등급 출력
select ename, sal, grade
from emp e,salgrade s
where sal between losal and hisal;

