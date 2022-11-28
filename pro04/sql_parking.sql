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

-- ��������
create table board(
    seq number primary key,
    title varchar2(100) not null,
    content varchar2(1000) not null,
    nickname varchar2(20),
    regdate date default sysdate,
    visited number default 0
);

-- ȸ��
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

-- ���� ÷�ΰ� ������ �����Խ���

create table free(
    bno number primary key,
    title varchar2(100) not null,
    content varchar2(1000) not null,
    regdate date default sysdate,
    id varchar2(20),
    visited number default 0
);

