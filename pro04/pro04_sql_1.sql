create table board(
    seq number primary key,
    title varchar2(100) not null,
    content varchar2(1000) not null,
    nickname varchar2(20),
    regdate date default sysdate,
    visited number default 0
);



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
