--用户表
drop table caruser;
create table CarUSER(
	cid number primary key,
	cname varchar2(20),
	cpwd varchar2(20),
	email varchar2(20),
	icon varchar2(40),
	tel varchar2(20),
	sex varchar2(2),
	addr varchar2(10),
	status number,
	regdate date
)
drop sequence seq_caruser
create sequence seq_cid start with 1


--题目表
drop table quiz;--
create table Quiz(
  qid number primary key,--主键
  question varchar2(200),--题目问题
  answer varchar2(100),--答案  用@符号拼接，正确答案在最后再拼接一次
  partid number,--章节id
  pic varchar2(20),--图片路径
  qtype varchar2(10) --题目类型  判断题，选择题
)
drop sequence seq_qid;
create sequence seq_qid start with 1;

--章节表
drop table Part;
create table part(
   	pid number primary key,--章节id
    pName varchar2(50)  --章节名
)

drop sequence seq_pid;
create sequence seq_pid start with 1;






select * from CARUSER

insert into CARUSER values(seq_cid.nextval,'lc','123456','','13i59189@163.com','','男','',1,sysdate);

commit
