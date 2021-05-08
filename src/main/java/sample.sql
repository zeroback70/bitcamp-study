
-- member 테이블 예제 데이터 삽입
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (1, 'aaa', password('1111'), 'aaa@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (2, 'bbb', password('1111'), 'bbb@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (3, 'ccc', password('1111'), 'ccc@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (4, 'ddd', password('1111'), 'ddd@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (5, 'eee', password('1111'), 'eee@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (6, 'fff', password('1111'), 'fff@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (7, 'ggg', password('1111'), 'ggg@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (8, 'hhh', password('1111'), 'hhh@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (9, 'iii', password('1111'), 'iii@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '0', '1');
insert into member(mno, mname, mpwd, memail, mbirth, mtel, mgender, mphoto, mstatus, mpow, mcnt)
values (10, 'jjj', password('1111'), 'jjj@test.com', '2020-01-01', '01012345678', '0', 'aaa.jpg', '0', '1', '1');


-- 게시판 카테고리 타입 테이블 예제 데이터 삽입
insert into b_type(b_tno, b_ttitle)
values ('1', '꿀팁게시판');

insert into b_type(b_tno, b_ttitle)
values ('2', '자유게시판');

insert into b_type(b_tno, b_ttitle)
values ('3', '세컨핸즈샵');


-- 꿀팁게시판 테이블 예제 데이터 삽입
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('1', '1', '1', '꿀팁1', '내용1', '1', '2020-1-1');
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('2', '1', '2', '꿀팁2', '내용2', '1', '2020-1-1');
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('3', '1', '3', '꿀팁3', '내용3', '1', '2020-1-1');

-- 자유게시판 테이블 예제 데이터 삽입
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('4', '2', '4', '자유1', '내용1', '1', '2020-1-1');
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('5', '2', '5', '자유2', '내용2', '1', '2020-1-1');
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('6', '2', '6', '자유3', '내용3', '1', '2020-1-1');

-- 세컨핸즈게시판 테이블 예제 데이터 삽입
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('7', '3', '7', '세컨1', '내용1', '1', '2020-1-1');
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('8', '3', '8', '세컨2', '내용2', '1', '2020-1-1');
insert into board(bno, b_tno, mno, btitle, bcontent, bcount, bdate)
values ('9', '3', '9', '세컨3', '내용3', '1', '2020-1-1');


-- 클럽 테이블 예제 데이터 삽입
insert into club(cno, mno, carrive, ctheme, ctitle, ccontent, csdt, cedt, ctotal)
values ('1', '1', '부산', '1박2일', '치맥', '바다에서 먹읍시다', '2020-1-1', '2020-1-2', 5);
insert into club(cno, mno, carrive, ctheme, ctitle, ccontent, csdt, cedt, ctotal)
values ('2', '2', '서울', '당일치기', '치맥', '바다에서 먹읍시다', '2020-1-1', '2020-1-2', 5);
insert into club(cno, mno, carrive, ctheme, ctitle, ccontent, csdt, cedt, ctotal)
values ('3', '3', '대구', '3박4일', '치맥', '바다에서 먹읍시다', '2020-1-1', '2020-1-2', 5);
insert into club(cno, mno, carrive, ctheme, ctitle, ccontent, csdt, cedt, ctotal)
values ('4', '4', '대전', '저녁', '치맥', '바다에서 먹읍시다', '2020-1-1', '2020-1-2', 5);
insert into club(cno, mno, carrive, ctheme, ctitle, ccontent, csdt, cedt, ctotal)
values ('5', '5', '경주', '점심', '치맥', '바다에서 먹읍시다', '2020-1-1', '2020-1-2', 5);







