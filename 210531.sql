DESC member;

ALTER TABLE member RENAME member1;

CREATE TABLE dept2(
deptno INT PRIMARY KEY,
dname VARCHAR(15) UNIQUE DEFAULT '영업부',
loc CHAR(1) NOT NULL CHECK(loc IN('1','2')));

INSERT INTO dept2(deptno, dname, loc)
VALUES(10, '총무부', '1');

INSERT INTO dept2(deptno, dname, loc)
VALUES(10, '총무부', '1'); #primary key error

INSERT INTO dept2(deptno, dname, loc)
VALUES(null, '총무부', '1'); #primary key error

INSERT INTO dept2(deptno, dname, loc)
VALUES(20, '총무부', '1'); #unique key error

INSERT INTO dept2(deptno, loc)
VALUES(30, '1'); #default
INSERT INTO dept2(deptno, loc)
VALUES(30, '1'); #unique key error

INSERT INTO dept2(deptno, dname, loc)
VALUES(40, '총무부2', null); #not null

INSERT INTO dept2(deptno, dname, loc)
VALUES(40, '총무부2', '3'); #check error

SELECT deptno, dname, loc
FROM dept2;

CREATE TABLE dept3(
deptno TINYINT PRIMARY KEY,
dname VARCHAR(15) NOT NULL);

CREATE TABLE emp3(
empno SMALLINT PRIMARY KEY,
ename VARCHAR(15) NOT NULL,
deptno TINYINT,
FOREIGN KEY(deptno) REFERENCES dept3(deptno));

DESC dept3;
desc emp3;

INSERT INTO dept3(deptno, dname) VALUES(10, '개발');
INSERT INTO dept3(deptno, dname) VALUES(20, '영업');

INSERT INTO emp3(empno, ename, deptno) VALUES(1, 'kim1', 10);
INSERT INTO emp3(empno, ename, deptno) VALUES(2, 'kim2', 20);
INSERT INTO emp3(empno, ename, deptno) VALUES(3, 'kim3', 30);
INSERT INTO emp3(empno, ename, deptno) VALUES(4, 'kim4', NULL);

SELECT *
FROM information_schema.table_constraints;

CREATE TABLE tset(
num INT
);

ALTER TABLE tset ADD(NAME VARCHAR(15));
ALTER TABLE tset MODIFY NAME VARCHAR(20);
ALTER TABLE tset CHANGE NAME myname VARCHAR(25);
ALTER TABLE tset DROP myname;

CREATE TABLE dept4(
deptno TINYINT,
dname VARCHAR(14),
loc VARCHAR(13)
);

INSERT INTO dept4 SELECT * FROM dept;

SELECT * FROM dept4;

CREATE TABLE dept5 AS SELECT * FROM dept;

SELECT * FROM dept5;

CREATE TABLE dept6 AS SELECT * FROM dept WHERE 1=2;

SELECT * FROM dept6;