show tables;

create table chat(
	idx int not null auto_increment primary key, /* 채팅 내용 고유번호 */    
	nickName varchar(20) not null,          /* 별명 */      
	content varchar(200) not null,          /* 채팅 내용 */
	cDate datetime not null default now(),  /* 채팅 올린 날짜 */
	avatar char(1) not null default '1'     /* 아바타 */
);

insert into chat values (default, '홍방군', '안녕', default, default);

select * from chat order by idx desc;