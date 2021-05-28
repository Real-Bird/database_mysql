select ename, e.deptno, dname
from emp e, dept d
where e.deptno = d.deptno;

select ename, e.deptno, dname
from emp e 
join dept d on e.deptno = d.deptno;

select ename, e.deptno, dname
from emp e
join dept d using(deptno);