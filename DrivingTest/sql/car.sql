--用户表
drop table caruser;
create table CarUSER(
	cid number primary key,
	cname varchar2(20),
	cpwd varchar2(20),
	email varchar2(20),
	icon varchar2(40),          --头像
	tel varchar2(20),
	sex varchar2(2),
	addr varchar2(10),			--地区，后期用来实现分地区考题
	status number,
	regdate date
);
select *from CarUSER
drop sequence seq_cid;
create sequence seq_cid start with 1;
select * from caruser

--题目表
drop table quiz;
create table quiz(
  qid number primary key,     --主键
  question varchar2(200),     --题目问题
  answer varchar2(100),       --答案  用@符号拼接，正确答案在最后再拼接一次
  pid number,                 --章节id
  pic varchar2(20),           --图片路径
  qtype varchar2(10),         --题目类型  判断题，选择题
  
  errTotal number(12,0)       --错误总数
);
drop sequence seq_qid;
create sequence seq_qid start with 1;

--章节表
drop table part;
create table part(
    pid number primary key,   --章节id
    pName varchar2(50)        --章节名
)
drop sequence seq_pid;
create sequence seq_pid start with 1;






select * from CARUSER;

insert into CARUSER values(seq_cid.nextval,'lc','123456','','13i59189@163.com','','男','',1,sysdate);

commit;


insert into CARUSER values(seq_cid.nextval,'lcssa','12','124','','','','',0,sysdate);

------------------
--管理员表carAdmin
drop table carAdmin;
create table carAdmin(
		aid int primary key ,
		aname varchar2(20),
		apwassword	varchar2(20),
		super int,          --只能使用1或0代表是否
				
		status varchar2(10) --使用SA，正常，注销，使用中
);
		
drop sequence seq_caradmin_aid;
create sequence seq_caradmin_aid start with 1001 increment by 1;
insert into carAdmin values ( seq_caradmin_aid.nextval , "sa" , "a" , 1 , "SA" );--super管理员
insert into carAdmin values ( seq_caradmin_aid.nextval , "admin" , "a" , 0 , "正常" );--默认普通管理员
--insert into carAdmin values ( seq_caradmin_aid.nextval , ? , ? , ? , "正常" );//添加管理员模板
select * from carAdmin;


------------------
--测试成绩表TestRecord
drop table TestRecord;
create table TestRecord(
       recId int pirmary key,
       cid	int 
            constraint testRecord_caruser_cid foreign cid references caruser(cid),
       testType varchar2(20),               --科目1/4
       testKind varchar2(20),               --顺序练习| 随机练习| 章节练习| 专项练习| 难题练习//测试开始时生成题目的方式
       testDate data,                       --to_date(sysdate,'yyyy-MM-dd')
                                            --为了防止用户量庞大，用户测试数据过多，定期删除。一周两周或者一个月。
       errorCount int,                     	--错误总数//测试结束的时候，统计details表中的同一个recId下的条数可得
       qID varchar2(5000),                   --拼接错误题目使用@进行区分
       recTemp varchar2(50)
);
drop sequence seq_testRecord_recid ;
create sequence seq_testRecord_recid start with 10001 increment by 1 ;
--样例
--insert into TestRecord values ( seq_testRecord_recid.val , ? , '科目一' ,'顺序练习' , to_date(sysdate,'yyyy-MM-dd') , ? ,?,null );
select * from testRecord;


-------------------
--个人的错误题库	SelfErrors
--把做过的错误题目集合起来，让用户可以多次做错题,不加在caruser表，方便调用
drop table SelfErrors ;
create table SelfErrors(
       cid	int 
            constraint SelfErrors_caruser_cid foreign cid references caruser(cid),
       qID varchar2(5000)          --进行字符拼接。1,2,23,55   ,可以使用@或者,     
);
--样例   insert into SelfErrors values ( ?,? );			
select * form SelfErrors ;
select * from testRecord;
select * from carAdmin;
select * from CARUSER;



