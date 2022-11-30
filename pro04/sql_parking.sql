create table parking (
    parkno number primary key,
    carnum varchar2(30) not null,
    intime TIMESTAMP default sysdate,
    outtime TIMESTAMP
);

select * from parking;

alter table parking add id varchar2(20) not null;

commit;

alter table parking add foreign key(id) REFERENCES member(id);

commit;

-- 공지사항
create table board(
    seq number primary key,
    title varchar2(100) not null,
    content varchar2(1000) not null,
    nickname varchar2(20),
    regdate date default sysdate,
    visited number default 0
);

-- 회원
create table member(
    id varchar2(20) primary key,
    pw varchar2(300) not null,
    name varchar2(50),
    email varchar2(100) not null,
    tel varchar2(20) not null,
    addr1 varchar2(200),
    addr2 varchar2(100),
    postcode varchar2(10),
    regdate date default sysdate,
    birth date,
    pt int default 100,
    visited int default 0
);

-- 파일 첨부가 가능한 자유게시판

create table free(
    bno number primary key,
    title varchar2(100) not null,
    content varchar2(1000) not null,
    regdate date default sysdate,
    id varchar2(20),
    visited number default 0
);



create table testpay (
    testno number primary key,
    in_time timestamp,
    out_time timestamp
);

select (sysdate(YYYY-MM-DD HH:MI:SS) - in_time(YYYY-MM-DD HH:MI:SS)) * 24 * 60 as pay from testpay;


select trunc((sysdate - in_time)*24*60, -1) as min from testpay where testno=1; 

select (sysdate - (sysdate-1))*24*60 as min from dual;

-- select to_char(out_time - in_time)*24*60 from testpay where testno=1;

select to_char((to_date(out_time)-to_date(in_time))*24*60) from testpay where testno=1;

SELECT TO_DATE(TO_CHAR(out_time,'YYYYMMDD'),'YYYYMMDD') - TO_DATE(TO_CHAR(in_time,'YYYYMMDD'),'YYYYMMDD')*24*60 FROM testpay where testno=1;

-- select to_char(to_date(out_time - in_time)*24*60) from testpay where testno=1;




select * from testpay;
--2시간 7분 127분

select sysdate from dual;

select to_char(sysdate - (sysdate-1))*24*60 from dual;

select to_char(to_date(out_time, 'YYYY-MM-DD HH24:MI:SS')-to_date(in_time, 'YYYY-MM-DD HH24:MI:SS'))*24*6 from testpay where testno=1;

select to_char(to_date(out_time) - to_date(in_time))*24*6 from testpay where testno=1;

select to_char(sysdate - (sysdate-1)) from dual;
