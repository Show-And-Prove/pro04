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
insert into member values('test1', '1234', '�׽�Ʈ', '1@1.com', '010-1111-1111', 'asdf', 'qwer', '12345', default, '10-10-10', default, default);

select * from member;

desc member;


-- ���� member ���̺� �̵�
select * from member;

create table mem_dum as select * from member;

select * from mem_dum;
-- 


commit;
    



insert into board values(1, '���̱� ����1', '���̱� ����1', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '���̱� ����2', '���̱� ����2', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '���̱� ����3', '���̱� ����3', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '���̱� ����4', '���̱� ����4', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '���̱� ����5', '���̱� ����5', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '���̱� ����6', '���̱� ����6', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '���̱� ����7', '���̱� ����7', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '���̱� ����8', '���̱� ����8', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '���̱� ����9', '���̱� ����9', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '���̱� ����10', '���̱� ����10', 'admin', default, default);
insert into board values((select nvl(max(seq),0)+1 from board), '���̱� ����11', '���̱� ����11', 'admin', default, default);

select * from board;

commit;

-- ���� ÷�ΰ� ������ �����Խ���

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



-- ���� �д��� ����ó��
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

-- ����ȭ �� ����

create table parking (
    parkno number primary key,
    car_num varchar2(30) not null,
    id varchar2(30) not null,
    in_time timestamp default sysdate,
    out_time timestamp default null,
    using_time NUMBER(10) default null,
    money NUMBER(10) default null
);

insert into parking values(1, '123��1234', 'admin', default, sysdate+1, default, default);

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



