create sequence cust_seq 
	start with 100
	increment by 1
	minvalue 100
	maxvalue 10000
	nocycle;

create table cust (
	cust_num number(5) primary key,
	cust_name varchar2(50) not null,
	cust_age number(3) not null
);
commit

select * from cust;