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
select *from CarUSER
drop sequence seq_cid;
create sequence seq_cid start with 1;
delete from CarUSER;

insert into CARUSER values(seq_cid.nextval,'lc','123456','15273423853@163.com','','','','',0,sysdate)

insert into caruser values(seq_cid.nextval,'hmm','a','2947432415@qq.com',null,'18274727632','女',null,0,to_date('2016-3-4','yyyy-MM-dd'));
insert into CARUSER values(seq_cid.nextval,'lc','123456','','13i59189@163.com','','男','',1,sysdate);

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
insert into quiz values (seq_qid.nextval,'对驾驶拼装机动车上路行驶的驾驶人，会受到下列哪种处罚？ ','A. 依法追究刑事责任@B. 处15日以下拘留@C. 吊销机动车行驶证@D. 处200以上2000元以下罚款@D',1,null,'选择题',100);
insert into quiz values (seq_qid.nextval,' 在这条公路上行驶的最高速度不能超过多少？ ','A. 60公里/小时@B. 110公里/小时@C. 100公里/小时@D. 90公里/小时@C',1,null,'选择题',200);
insert into quiz values (seq_qid.nextval,' 这个标志是何含义？  ','A. 单行路@B. 禁止直行@C. 只准直行@D. 直行车道@C',1,null,'选择题',300);
insert into quiz values (seq_qid.nextval,' 这一组交通警察手势是什么信号？ ','A. 左转弯待转信号@B. 左转弯信号@C. 减速慢行信号@D. 右转弯信号@A',1,null,'选择题',400);
insert into quiz values (seq_qid.nextval,' 湿滑路面制动过程中，发现车辆偏离方向，以下做法正确的是？ ','A. 连续轻踩轻放制动踏板@B. 任意踩制动踏板@C. 不要踩制动踏板@D. 用力踩制动踏板@C',1,null,'选择题',500);
insert into quiz values (seq_qid.nextval,' 驾驶机动车在道路上靠路边停车过程中如何使用灯光？   ','A. 变换使用远近光灯@B. 开启危险报警闪光灯@C. 不用指示灯提示@D. 提前开启右转向灯@D',1,null,'选择题',300);
insert into quiz values (seq_qid.nextval,'  在这种天气条件下行车如何使用灯光？   ','A. 使用近光灯@B. 使用雾灯@C. 使用远光灯@D. 不使用灯光@A',1,'../pics/quiz1.png','选择题',300);
select *from quiz;
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
insert into TestRecord values ( seq_testRecord_recid.val , ? , '科目一' ,'顺序练习' , to_date(sysdate,'yyyy-MM-dd') , ? ,?,null )
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

