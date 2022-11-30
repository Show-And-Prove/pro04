create table board(
    seq number primary key,
    title varchar2(100) not null,
    content varchar2(1000) not null,
    nickname varchar2(20),
    regdate date default sysdate,
    visited number default 0
);

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
commit;
insert into member values('test1', '1234', '테스트', '1@1.com', '010-1111-1111', 'asdf', 'qwer', '12345', default, '10-10-10', default, default);

select * from member;

desc member;


-- 기존 member 테이블 이동
select * from member;

create table mem_dum as select * from member;

select * from mem_dum;
-- 


commit;
    



insert into board values(1, '더미글 제목1', '더미글 내용1', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '더미글 제목2', '더미글 내용2', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '더미글 제목3', '더미글 내용3', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '더미글 제목4', '더미글 내용4', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '더미글 제목5', '더미글 내용5', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '더미글 제목6', '더미글 내용6', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '더미글 제목7', '더미글 내용7', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '더미글 제목8', '더미글 내용8', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '더미글 제목9', '더미글 내용9', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '더미글 제목10', '더미글 내용10', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '더미글 제목11', '더미글 내용11', 'admin', default, default);

select * from board;

commit;

-- 파일 첨부가 가능한 자유게시판

create table free(
    bno number primary key,
    title varchar2(100) not null,
    content varchar2(1000) not null,
    regdate date default sysdate,
    id varchar2(20),
    visited number default 0
);

commit;

select * from free;

desc free;

select * from testpay;

select (cast(out_time as date)-cast(in_time as date))*60*24 from testpay where testno=1;



-- 최종 분단위 버림처리
select trunc((to_char((cast(out_time as date)-cast(in_time as date))*60*24)),-1) as min_time from testpay where testno=1;

-- trunc((to_char((cast(out_time as date)-cast(in_time as date))*60*24)),-1)

alter table testpay add money number default 0;

commit;

select * from testpay;

desc testpay;

--insert into testpay(money) values(trunc((to_char((cast(out_time as date)-cast(in_time as date))*60*24)),-1)*100);


alter table testpay add using_time varchar2(20) default null;

alter table testpay add 

commit;


--------

select * from parking;

drop table parking;

commit;

-- 정규화 전 최종

create table parking (
    parkno number primary key,
    car_num varchar2(30) not null,
    id varchar2(30) not null,
    in_time timestamp default sysdate,
    out_time timestamp default null,
    using_time NUMBER(10) default null,
    money NUMBER(10) default null
);

insert into parking values(1, '123가1234', 'admin', default, sysdate+1, default, default);

commit;

select * from parking;

update parking set using_time = trunc((to_number((cast(out_time as date)-cast(in_time as date))*60*24)),-1) where parkno=1;

update parking set money = (using_time * 100) where parkno=1;

alter table parking add paid varchar2(5) default 'N';



select * from parking;

update parking set paid = 'Y' where parkno=1;

select * from parking;





commit;

--



