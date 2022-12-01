show tables;

create table board (
	-- 게시글의 고유번호
	idx int  not null auto_increment,
	-- 게시글 올린사람의 닉네임
	nickName varchar(20) not null,
	-- 게시글의 글 제목
	title    varchar(100) not null,
	-- 글쓴이의 메일주소(회원가입시에 필수 입력처리 되어있다.)
	email    varchar(50), 
	-- 글쓴이의 홈페이지(블로그)주소
	homePage varchar(50),
	-- 글 내용
	content  text not null,
	-- 글 올린 날짜
	wDate    datetime default now(),
	-- 글 올린이의 접속 IP
	hostIp   varchar(50) not null,
	-- 글 조회수 
	readNum  int default 0,
	-- '좋아요' 클릑 횟수 누적하기
	good int default 0,
	-- 회원 아이디(내가 올린 게시글 전체 조회 시 사용
	mid      varchar(20) not null,
	primary key(idx)
);

desc board;

insert into board values (default,'관리맨','게시판 서비스를 시작합니다.','rlaehdaud42@naver.com','naver.com','이곳은 게시판입니다.',default,'192.168.50.145',default,default,'admin');

select * from board;

/* 날짜 처리 연습 */
-- now() : 오늘 날짜와 시간을 보여준다.
select now();    

-- year() : '년도' 출력
select year(now());

-- month() :  '월' 출력
select month(now());

-- day() : '일' 출력
select day(now());

-- date(now()): 년-월-일
select date(now());  

-- 요일 : 0(월요일), 1(화요일), 2(수), 3(목), 4(금), 5(토), 6(일)
select weekday(now());

-- 요일 : 1(일), 2(월), 3(화), 4(수), 5(목), 6(금), 7(토)
select dayofweek(now());

-- hour() : 시간 
select hour(now());

-- minute() : 분
select minute(now());

-- second() : 초
select second(now());

select year('2022-12-1');
select idx, year(wDate) from board;
select idx, day(wDate) as 날짜 from board;
select idx, wDate, weekday(wDate) from board;


/* 날짜 연산 */
-- date_add(date, interval 값 type)
select date_add(now(), interval 1 day);   -- 오늘 날짜보다 +1일 출력
select date_add(now(), interval -1 day);   -- 오늘 날짜보다 -1일 출력
select date_add(now(), interval 10 day_hour); -- 오늘 날짜보다 +10시간 출력
select date_add(now(), interval -10 day_hour); -- 오늘 날짜보다 -10시간 출력

-- date_sub(date, interval 값 type)
select date_sub(now(), interval 1 day);   -- 오늘 날짜보다 -1일 출력
select date_sub(now(), interval -1 day);   -- 오늘 날짜보다 +1일 출력

select idx, wDate from board;
-- date_format(날짜, '양식기호')
-- 년도(2자리) : %y, 년도(4자리): %Y,  월:%m, 월(영문): %M, 일 :%d, 시(12시간제): %h, 시(24시간제): %H, 분: %i, 초: %s
select idx, date_format(wDate, '%y-%M-%d') from board;  -- %m 월을 숫자 출력
select idx, date_format(wDate, '%y-%m-%d') from board;  -- %M 월을 영문 출력
select idx, date_format(wDate, '%Y-%m-%d') from board;  -- %M 월을 영문 출력
select idx, date_format(wDate, '%h-%i-%s') from board;  
select idx, date_format(wDate, '%H-%i-%s') from board;  

-- 현재부터 한달전의 날짜
select date_add(now(), interval-1 month);

-- 하루전 체크
select date_add(now(), interval -1 day);
select date_add(now(), interval -1 day), wDate from board;

-- 날짜차이 계산 : DATEDIFF(시작 날짜, 마지막 날짜)
select datediff('2022-11-30', '2022-12-01');
select datediff(now(), '2022-11-30');
select idx, wDate, datediff(now(), wDate) from board;
select idx, wDate, datediff(now(), wDate) as day_diff from board;

-- DB에 없는 필드를 vo에 넣어준다 DAO로 ㄲㄲ
select *, datediff(now(), wDate) as day_diff from board;

select timestampdiff(hour, now(), '2022-11-30');
select timestampdiff(hour, '2022-11-30', now());


