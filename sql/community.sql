create database community;
use community;

create table permission(
  pid bigint auto_increment primary key,
  name varchar(100)
);

create table user_role (
  uid bigint,
  rid bigint,
  constraint pk_users_roles primary key(uid, rid)
);

create table role_permission(
rid bigint,
pid bigint,
constraint pk_users_roles primary key(rid, pid)
);

create table role(
rid bigint not null auto_increment primary key,
name varchar(100)
);

create table user(
uid	bigint not null auto_increment primary key,
name varchar(10) not null,
sex	varchar(4) not null check(sex in('男','女')),
age	int not null check(age>=0),
grade varchar(10) not null,
major varchar(10) not null,
wechat_number varchar(20) not null,
cell_number varchar(20) not null,
mail varchar(50) not null,
password varchar(255) not null
-- foreign key(uid) references role(rid)
);

create table repair(
reid bigint not null auto_increment primary key,
from_id	bigint not null,
to_id	bigint not null,
re_title text not null,
-- 0 编程问题 1 软件问题 2 硬件问题 
re_type tinyint not null check(re_type in (0,1,2)),
re_describe text not null,
-- 0 Todo 1 In Progress  2 Completed
re_status tinyint not null check(re_status in (0,1,2)),
re_start_time datetime,
re_end_time datetime,
foreign key(from_id) references user(uid),
foreign key(to_id) references user(uid)
);

create table message(
mid bigint not null auto_increment primary key,
from_id bigint not null,
to_id bigint not null,
content text not null,
message_sendtime datetime not null,
foreign key(from_id) references user(uid),
foreign key(to_id) references user(uid)
);

create table task(
tid bigint not null auto_increment primary key,
from_id bigint not null,
to_id bigint not null,
content text not null,
task_sendtime datetime not null,
task_start_time datetime,
task_end_time datetime,
foreign key(from_id) references user(uid),
foreign key(to_id) references user(uid)
);

insert into 
	user(uid,name,sex,age,grade,major,wechat_number,cell_number,mail,password)
    values
    (1,'merry','女',18,'18级','计算机科学','13326561256','13326561256','13326561256@qq.com','e10adc3949ba59abbe56e057f20f883e'),
    (2,'jack','女',18,'18级','计算机科学','13326561256','13326561256','13326561256@qq.com','e10adc3949ba59abbe56e057f20f883e'),
    (3,'mike','女',18,'18级','计算机科学','13326561256','13326561256','13326561256@qq.com','e10adc3949ba59abbe56e057f20f883e'),
    (4,'coco','女',18,'18级','计算机科学','13326561256','13326561256','13326561256@qq.com','e10adc3949ba59abbe56e057f20f883e'),
    (5,'会员1','女',18,'18级','计算机科学','13326561256','13326561256','13326561256@qq.com','e10adc3949ba59abbe56e057f20f883e'),
    (6,'会员2','女',18,'18级','计算机科学','13326561256','13326561256','13326561256@qq.com','e10adc3949ba59abbe56e057f20f883e');


insert into 
	permission(pid,name)
    values
    (1,'login'),
    (2,'closeNotices'),
    (3,'sendNotices'),
    (4,'sendTasks');

insert into
	role(rid,name)
    values
    (1,'admin'),
    (2,'member'),
    (3,'secretary'),
    (4,'minister'),
    (5,'president');
    
insert into 
	user_role(uid,rid)
    values
    (1,2),
    (2,3),
    (3,4),
    (4,5),
    (5,2),
    (6,2);


insert into 
	role_permission(rid,pid)
    values
    (1,1),
    (1,2),
    (1,3),
    (1,4),
    (2,1),
    (2,2),
    (3,1),
    (3,2),
    (3,3),
    (4,1),
    (4,2),
    (4,3),
    (4,4),
    (5,1),
    (5,2),
    (5,3),
    (5,4);
    

insert into 
	repair(reid,from_id,to_id,re_title,re_type,re_describe,re_status,re_start_time,re_end_time)
    values
    (1,5,3,"电脑死机",2,"就是突然一下就死机了",0,"2020-1-10",null),
    (2,5,3,"电脑自动开机了",2,"就是突然一下就开机了",0,"2020-1-9",null)
	
    

    

    
