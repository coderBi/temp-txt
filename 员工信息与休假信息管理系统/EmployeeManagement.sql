#建立员工表
create table em_employee(id int auto_increment not null comment '主键id,也是员工编号', name varchar(20) not null comment '员工姓名', gender_id tinyint unsigned not null comment '员工性别id', department_id int not null comment '所在部门id', level_id tinyint not null comment '职位级别', primary key(id)) engine=innodb default charset=utf8;

#创建部门表
create table em_department(id int auto_increment not null comment '部门id', name varchar(20) not null comment '部门名称', descripe text comment '部门介绍', primary key(id), unique key(name)) engine=innodb default charset=utf8;

#创建性别表
create table em_gender(id tinyint auto_increment not null comment '性别id', name varchar(10) not null comment '性别名称', primary key(id))engine=innodb default charset=utf8;

#创建工资表
create table em_salary(id int auto_increment not null comment '工资表id', number int not null comment '实际工资数据', primary key(id)) engine=innodb default charset=utf8;

#创建职位表
create table em_level(id int auto_increment not null comment '职位id', name varchar(20) not null comment '职位名称', primary key(id))engine=innodb default charset=utf8;

#插入数据到雇员职位表
insert into em_level(name) values('经理'),('技术人员'),('销售人员'),('销售经理');

#创建请假信息表
create table em_week_day(id int auto_increment not null comment '主键id', week_day_used int unsigned not null comment '生病没工作的天数', week_day_most int unsigned not null comment '生病可以不工作的最大天数', holiday_used int unsigned not null comment '员工已经带薪休假的天数', holiday_most int unsigned not null comment '员工可以带薪休假的最大天数', primary key(id))engine=innodb default charset=utf8;