create table board(
    seq number primary key,
    title varchar2(100) not null,
    content varchar2(1000) not null,
    nickname varchar2(20),
    regdate date default sysdate,
    visited number default 0
);



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
