insert into memberA values ('kkt','1111','김기태','kkt@gmail.com','010-1111-2222',sysdate);
insert into memberA values ('admin','1234','관리자','admin@gmail.com','010-2222-2222',sysdate);
select * from memberA;

select boarda:
select * from boarda where rownum between 1 and 10 order by no desc;
--select * from boarda where rownum between ? and ? order by no desc;
--pstmt.setInt(1, startNum);
--pstmt.setInt(2, endNum);

select no, title, content, author, resdate from (select rownum rn, no, title, content, author, resdate 
from boarda order by rn desc) t1 where t1.rn between 11 and 20;

--select no, title, content, author, resdate from
--(select rownum rn, no, title, content, author, resdate from boarda order by no desc) t1 where t1.rn between ? and ?;
--pstmt.setInt(1, startNum);
--pstmt.setInt(2, endNum);
--pageCount = (amount % 10==0) ? (amount / 10) : (amount / 10) + 1;
--startNum = curPage *10 -9;
--endNum = curPage * 10;


--글 상세보기
select a.no no, a title tit, a.content con, b.name nm, to char(a.resdate, 'yyyy-MM-dd') res from boarda a inner join memberb b on a.author=b.id where a.no=1
--select a.no no, a.title tit, a.content con, b.name nm, a.resdate res from boarda a inner join memberb b on a.author=b.id where a.no=?
--pstmt.setInt(1,no);

