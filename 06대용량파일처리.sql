-- 1단계: 데이터베이스 만들기
create database moviedb;
-- 2단계: 데이터베이스 사용
use moviedb;
-- 3단계: 테이블 만들기
create table movietbl (	
	movie_id int,
    movie_title varchar(20),
    movie_director varchar(20),
    movie_star varchar(20),
    movie_script longtext,
    movie_film longblob
);
-- 4단계: 행을 삽입
insert into movietbl values 
(1, '쇤들러리스트', '스필버그', '리암니슨', load_file('D:/ai/temp/movies/Schindler.txt'),load_file('D:/ai/temp/movies/Schindler.mp4'));
-- 5단계: select문으로 검색
select*from movietbl;
-- longtext, longblob가 null이 나오는 이유 
-- > 용량이 모자라서
show variables like 'max_allowed_packet';
-- > 경로가 잘못되서
show variables like 'secure_file_priv';
-- 환경설정하기
