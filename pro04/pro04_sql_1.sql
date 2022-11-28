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




