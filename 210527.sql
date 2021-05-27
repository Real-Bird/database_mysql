insert into member(num, NAME, addr)
VALUE(1, '스가', '일본');

DELETE FROM member
WHERE num = 1;

select *
from member;

select *
from emp;

select num, NAME, addr
from member
order by num DESC
limit 0, 2;

DESC dept;

select *
from dept;

insert into dept(deptno,dname,loc)
values (50, 'DEVELOPMENT', 'LOS ANGELES');

DESC emp;

insert into emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (8000, 'Lee', 'STUDENT', 7839, '2021-05-27', 500, 0, 60);

update emp
set ename = 'LEE', job = 'STUDENT'
where empno = 8000;

delete from emp
where empno = 8000;

select ename, job, hiredate, sal, deptno
from emp
where ename like '%I%'
order by sal DESC
limit 0, 10;