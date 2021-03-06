/*注意，使用的是system进行操作*/
/*创建表空间和数据文件分为四步 */

/*第1步：创建临时表空间  */
create temporary tablespace car_temp 
tempfile 'F:\mygit\orcl\car_temp.dbf' --修改为某个路径，最后放到项目路径下，可以打包
size 50m  
autoextend on  
next 50m maxsize 20480m  
extent management local;  
 
/*第2步：创建数据表空间  */
create tablespace car_data  
logging  
datafile 'F:\mygit\orcl\car_data.dbf' --修改为某个路径，两个dbf应当放一个目录下
size 50m  
autoextend on  
next 50m maxsize 20480m  
extent management local;  
 
/*第3步：创建用户并指定表空间  */
create user car identified by a  
default tablespace car_data  
temporary tablespace car_temp;  
/*如果已创建car用户，修改用户的默认表空间*/ 
alter user car 
default tablespace car_data  
temporary tablespace car_temp;  

/*第4步：给用户授予权限  */
grant connect,resource,dba to car;
commit;



---------------------------------
---------------------------------


--用户表
drop table caruser;
create table CarUSER(
	cid number primary key,
	cname varchar2(20) unique,
	cpwd varchar2(20),
	email varchar2(20),
	icon varchar2(40),          --头像
	tel varchar2(20),
	sex varchar2(2),
	addr varchar2(10),			--地区，后期用来实现分地区考题
	status number,
	regdate date
);
select *from CarUSER;
drop sequence seq_cid;
update caruser set icon='images/car.jpg' where cname='lc'
create sequence seq_cid start with 1;
delete from CarUSER;

insert into CARUSER values(seq_cid.nextval,'lc','123456','15273423853@163.com','','','','',0,sysdate)

insert into caruser values(seq_cid.nextval,'hm','a','2947432415@qq.com',null,'18274727632','女',null,1,to_date('2016-3-4','yyyy-MM-dd'));
insert into CARUSER values(seq_cid.nextval,'lc','123456','13i59189@163.com','','','男','',1,sysdate);
insert into CARUSER values(seq_cid.nextval,'mm','123456','15273423853@163.com','','','','',1,sysdate)

delete from CARUSER;
select *from CARUSER
--题目表
drop table quiz;
create table quiz(
  qid number primary key,     --主键
  question varchar2(200),     --题目问题
  answer varchar2(100),       --答案  用@符号拼接，正确答案在最后再拼接一次
  pid number,                 --章节id
  pic varchar2(20),           --图片路径
  qtype varchar2(10),         --题目类型  判断题，选择题
  explain varchar2(200),	  --题目详解 题目的答案	
  errTotal number(12,0)       --错误总数
);
drop sequence seq_qid;
create sequence seq_qid start with 1;
insert into quiz values (seq_qid.nextval,'驾驶机动车在道路上违反道路交通安全法的行为，属于什么行为？','A. 违法行为@B. 违章行为@C. 过失行为@D. 违规行为@A',1,'../pics/quiz1.png','选择题','“违反道路交通安全法”，违反法律法规即为违法行为。官方已无违章/违规的说法。',100);
insert into quiz values (seq_qid.nextval,'机动车驾驶人违法驾驶造成重大交通事故构成犯罪的，依法追究什么责任？ ','A.刑事责任@B.经济责任@C.直接责任@D.民事责任@A',1,null,'选择题','《道路交通安全法》第一百零一条：违反道路交通安全法律、法规的规定，发生重大交通事故，构成犯罪的，依法追究刑事责任，并由公安机关交通管理部门吊销机动车驾驶证。',200);
insert into quiz values (seq_qid.nextval,' 机动车驾驶人造成事故后逃逸构成犯罪的，吊销驾驶证且多长时间不得重新取得驾驶证？  ','A.20年内@B.10年内@C.5年内@D. 终生@D',1,null,'选择题','《道路交通安全法》第一百零一条：造成交通事故后逃逸的，由公安机关交通管理部门吊销机动车驾驶证，且终生不得重新取得机动车驾驶证。',300);
insert into quiz values (seq_qid.nextval,' 驾驶机动车违反道路交通安全法律法规发生交通事故属于交通违章行为。 ','A. 正确@B.错误@A',1,null,'判断题','“违反道路交通安全法”，违反法律法规即为违法行为。现在官方已无违章/违规的说法。',400);
insert into quiz values (seq_qid.nextval,'  驾驶机动车在道路上违反道路通行规定应当接受相应的处罚。','A. 正确@B. 错误@A',1,null,'判断题','常识题，违反规定，就得接受相应的处罚。',500);
insert into quiz values (seq_qid.nextval,' 对未取得驾驶证驾驶机动车的，追究其法律责任。   ','A.正确@B. 错误@A',1,null,'判断题','《道路交通安全法》第九十九条：<br/>未取得机动车驾驶证、机动车驾驶证被吊销或者机动车驾驶证被暂扣期间驾驶机动车的，由公安机关交通管理部门处二百元以上二千元以下罚款，可以并处十五日以下拘留。',300);
insert into quiz values (seq_qid.nextval,'  对违法驾驶发生重大交通事故且构成犯罪的，不追究其刑事责任。','A.正确@B.错误@B',1,null,'判断题','《道路交通安全法》第一百零一条：违反道路交通安全法律、法规的规定，发生重大交通事故，构成犯罪的，依法追究刑事责任，并由公安机关交通管理部门吊销机动车驾驶证。',300);

select *from quiz;
delete from quiz where qid = 30;
--章节表
drop table part;
create table part(
    pid number primary key,   --章节id
    pName varchar2(50)        --章节名
)
drop sequence seq_pid;
create sequence seq_pid start with 1;
insert into part values (seq_pid.nextval,'第一章');
insert into part values (seq_pid.nextval,'第二章');
select * from part;





commit;




------------------
--管理员表carAdmin
drop table carAdmin;
create table carAdmin(
		aid number primary key ,
		aname varchar2(20) unique,
		apwd	varchar2(20),
		issuper number,          --1为超级管理员，0为普通管理员
		status number          --1正常，可以登录，0使用中，有人在使用无法登录
);
		
drop sequence seq_caradmin_aid;
create sequence seq_caradmin_aid start with 1001 increment by 1;
insert into carAdmin values ( seq_caradmin_aid.nextval , 'sa','a',1,1 );--super管理员
insert into carAdmin values ( seq_caradmin_aid.nextval , 'lc','a',1,1 );--super管理员
insert into carAdmin values ( seq_caradmin_aid.nextval , 'hmm','a',0,1 );--默认普通管理员
select * from carAdmin;
update caradmin set status=1 where aname='lc';
update caradmin set status=1 where aname='sa';

------------------
--测试成绩表TestRecord
drop table TestRecord;
create table TestRecord(
       recId int primary key,
       cid	int ,
            constraint testRecord_caruser_cid foreign key(cid) references caruser(cid),
       testType varchar2(20),               --科目1/4
       testKind varchar2(20),               --顺序练习| 随机练习| 章节练习| 专项练习| 难题练习//测试开始时生成题目的方式
       testDate date,                       --to_date(sysdate,'yyyy-MM-dd')
                                            --为了防止用户量庞大，用户测试数据过多，定期删除。一周两周或者一个月。
       errorCount int,                     	--错误总数//测试结束的时候，统计details表中的同一个recId下的条数可得
       qID varchar2(4000),                   --拼接错误题目使用@进行区分
       recTemp varchar2(50)
);
drop sequence seq_testRecord_recid ;
create sequence seq_testRecord_recid start with 10001 increment by 1 ;
--样例
--insert into TestRecord values ( seq_testRecord_recid.val , ? , '科目一' ,'顺序练习' , to_date(sysdate,'yyyy-MM-dd') , ? ,?,null );
insert into TestRecord values ( seq_testRecord_recid.nextval , ? , '科目一' ,'顺序练习' , to_date(sysdate,'yyyy-MM-dd') , ? ,?,null );

insert into TestRecord values ( seq_testRecord_recid.nextval , 1 , '科目一' ,'顺序练习' , sysdate, 1 ,'@2',null );
insert into TestRecord values ( seq_testRecord_recid.nextval , 1 , '科目四' ,'难题练习' , sysdate, 2 ,'@2@6',null );
insert into TestRecord values ( seq_testRecord_recid.nextval , 1 , '科目一' ,'顺序练习' , sysdate, 3 ,'@2@5@6',null );
insert into TestRecord values ( seq_testRecord_recid.nextval , 1 , '科目四' ,'难题练习' , sysdate, 4 ,'@2@6@7@4',null );
select * from testRecord;

select * from caruser;

-------------------
--个人的错误题库	SelfErrors
--把做过的错误题目集合起来，让用户可以多次做错题,不加在caruser表，方便调用
drop table SelfErrors ;
create table SelfErrors(
       cid	int,
       constraint SelfErrors_caruser_cid foreign key(cid) references caruser(cid),
       errorSave varchar2(4000),        --进行字符拼接。1,2,23,55   ,可以使用@或者,    
       save varchar2(4000)
);
insert into SelfErrors values(8,'','');
delete from SelfErrors;

select * from selferrors;

--去掉之前的comments表


insert into SelfErrors values(121,'','');
--样例   insert into SelfErrors values ( ?,? );	
select * from SelfErrors ;
select * from testRecord;
select * from carAdmin;
select * from CARUSER;
update SelfErrors  set errorSave=(errorSave||'@'||4) where cid=1

select * from (select qq*,rownum rn from (select * from quiz  order by errTotal) q )qqq  where qqq.rn<=100;
--查询前100个难题              
select *from(
select q.*,rownum rn from(select * from quiz  order by errTotal desc) q
) where rn<=100

select qq.* from
(select q.*,rownum rn from quiz q  order by errTotal desc) qq where 100>=rn;


--------------------
--------------------
--hong,9-10
--评论分析
drop table comments ;
create table comments(
	comId int primary key,
	cid	int,					--外键。
	qid	int,					--外键。
	comDate	date,				--考虑存完整时间包含时分秒，还是考虑存当天
	comContent varchar2(500),   --评论内容
	commentTemp varchar2(100)
);
drop sequence seq_comments_comId;
create sequence seq_comments_comId start with 100001 increment by 1;
--insert into comments values ( seq_comments_comId.nextval , ? , ? , sysdate , ? , '' );
insert into comments values ( seq_comments_comId.nextval , 1 , 1 , sysdate , '不错。很好' , '' );
insert into comments values ( seq_comments_comId.nextval , 1 , 2 , sysdate , '不爽啊。做错了。' , '' );
insert into comments values ( seq_comments_comId.nextval , 1 , 3 , sysdate , '好可惜。。这样都做错了' , '' );
select *from comments;

--发帖blog
drop table blog;
create table blog(
	bid int primary key ,
	cid	int ,
	bTitle	varchar2(50),		--标题
	bContent varchar2(1000),				--内容,blob可以存放最大长度4G
	bpics	varchar2(50),		--图片,存放帖子里的图片路径
	bDate	date,				--发帖时间,这里放完整时间。
	bPraise	int,				--点赞数			
	bTemp	varchar2(200)

);
--注意：bContent字段，暂时使用varchar2(1000),以后修改为blob。
--暂时存在bug
drop sequence seq_blog_bid;
create sequence seq_blog_bid start with 1001 increment by 1;
insert into blog values ( seq_blog_bid.nextval , ? , ? , ? , ? sysdate , 0 , '');

insert into blog values ( seq_blog_bid.nextval , 1 , '测试标题1' , '这是一个测试内容' , '', sysdate , 0 , '');
insert into blog values ( seq_blog_bid.nextval , 1 , '测试标题2' , '22这是一个测试内容' , '', sysdate , 0 , '');

select * from blog;


--发帖回复表
create table answer(
	ansId int primary key,
	bid int	,
	cid int ,
	ansContent	varchar2(200),	--回复内容
	ansDate date,				--回复时间
	andTemp	varchar2(100)		
);
drop sequence seq_answer_ansId;
create sequence seq_answer_ansId start with 1001 increment by 1;
insert into blog values ( seq_answer_ansId.nextval , ? , ? , ? , sysdate , 0 , '');

