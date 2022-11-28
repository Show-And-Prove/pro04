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




