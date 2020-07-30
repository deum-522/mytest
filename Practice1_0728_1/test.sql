create table membertest (
   id varchar2(20) primary key,
   name varchar2(20),
   email varchar2(30),
   password varchar2(20),
   address varchar2(60),
   status varchar2(20),
   class varchar2(20)
);

insert into MEMBERTEST values('id1','name1','email1','pw1','add1','st1','cls1');

select * from MEMBERTEST;