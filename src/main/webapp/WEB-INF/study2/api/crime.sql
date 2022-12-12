show tables;

create table crime (
	idx int not null auto_increment primary key,
	year int,                  /* 범죄 발생년도 */
	police varchar(20),        /* (관할) 경찰서 */
	burglar int,           		 /* 강도 건수 */
	murder int, 	             /* 살인 건수 */
	theft int,                 /* 절도 건수 */    
	violence int               /* 폭력 건수 */  
);	

select * from crime order by year desc, police;

select year,police,sum(burglar) as totBurglar, sum(murder) as totmurder, sum(theft) as tottheft, sum(violence) as totviolence from crime group by year order by year desc, police;

select year,police,avg(burglar) as totBurglar, avg(murder) as totmurder, avg(theft) as tottheft, avg(violence) as totviolence from crime group by year order by year desc, police desc;