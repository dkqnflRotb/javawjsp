show tables;

select * from sungjuk;

desc sungjuk;

create table jusorok (
	idx int not null auto_increment primary key,
	mid varchar(20) not null,                   /* 아이디 */
	pwd varchar(20) not null,                   /* 비밀번호 */
	name varchar(20) not null,									/* 성명 */
	point int default 100,											/* 방문포인트 */
	lastDate datetime default now()							/* 최종방문날짜 */
);

desc jusorok;

insert into jusorok values (default, 'admin', '1234', '관리자', default, default);
insert into jusorok values (default, 'abcd', '1234', 'abcd', default, default);
insert into jusorok values (default, 'ranada', '1234', '가나다', default, default);
insert into jusorok values (default, 'rlaehdaud', '1234', '김동명', default, default);
insert into jusorok values (default, 'green', '1234', '그린', default, default);

select* from jusorok;
