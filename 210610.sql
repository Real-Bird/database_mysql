CREATE TABLE notice(
n_num INT PRIMARY KEY,
n_writer VARCHAR(30) NOT NULL,
n_title VARCHAR(300) NOT NULL,
n_content VARCHAR(10000) NOT NULL,
#n_hit INT NOT NULL, #조회수
#n_status CHAR(1) NOT NULL, # y->정상글, n->삭제글
#n_flag CHAR(1) NOT NULL, # 1->공지글, 2->일반글
#n_order SMALLINT, #공지글 오더링 여부
#n_ip VARCHAR(50) NOT NULL,
n_regdate DATETIME NOT NULL
);

INSERT INTO notice(n_num, n_writer, n_title, 
n_content, n_regdate)
VALUES(23, '작성자2', '제목2', 'content2', NOW());

SELECT n_num, n_writer, n_title, n_content, n_regdate
FROM notice
ORDER BY n_regdate DESC
LIMIT 0, 10;

UPDATE notice
SET n_writer = '작성자3', n_title = '제목3', n_content = '내용3'
WHERE n_num = 2;

DELETE FROM notice
WHERE n_num = 1;

SELECT COUNT(n_num)
FROM notice;

SELECT n_num
FROM notice
ORDER BY n_regdate DESC;

DELETE FROM notice;

SELECT ifnull(MAX(n_num)+1, 1)
FROM notice;

SELECT n_num, n_writer, n_title, n_content, date_format(n_regdate, '%Y/%m/%d %h:%i')
FROM notice
WHERE n_num = 2;

CREATE TABLE customer(
c_num INT PRIMARY KEY,
c_email VARCHAR(128) UNIQUE,
c_pwd CHAR(41) NOT NULL,
c_name VARCHAR(20) NOT NULL,
c_status CHAR(1) NOT NULL, #1이면 가입, 2면 탈퇴
c_regdate DATETIME NOT NULL
);

INSERT INTO customer(c_num, c_email, c_pwd, c_name, c_status, c_regdate)
VALUES (1, 'marbil815@gmail.com', PASSWORD('1234'), '김진영', '1',NOW());

UPDATE customer
SET c_name = '김진영1', c_prw = PASSWORD('0987'), c_status = '2'
WHERE c_num = 1; 

SELECT c_num, c_email, c_pwd, c_name, c_status, 
DATE_FORMAT(c_regdate, '%Y/%m/%d')
from customer
order by c_regdate desc
limit 0, 10;

SELECT c_num, c_email, c_pwd, c_name, c_status, 
DATE_FORMAT(c_regdate, '%Y/%m/%d')
from customer
WHERE c_num = 1;

SELECT c_email
FROM customer
WHERE c_email = 'marbil815@gmail.com';

SELECT ifnull(MAX(c_num)+1,1)
FROM customer;

DELETE FROM customer;

SELECT MAX(c_num)+1
FROM customer;

SELECT c_num, c_email, c_pwd, c_name, c_status, 
DATE_FORMAT(c_regdate, '%Y/%m/%d')
from customer
WHERE c_email = 'marbil815@gmail.com'
AND c_pwd = PASSWORD('1234');

SELECT *
FROM customer;