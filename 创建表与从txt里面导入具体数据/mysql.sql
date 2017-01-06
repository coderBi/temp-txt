/*创建产品表
create table product(pro_id int auto_increment comment '商品id',
	pro_name varchar(50) comment '商品名称', protype_id int comment '商品类型id', 
	price float comment '价格', pinpai varchar(10) comment '品牌',
	chandi varchar(10) comment '产地',primary key(pro_id));*/
#创建用户信息表
create table user(id int auto_increment primary key, name varchar(10) unique key, password varchar(50),age int(5),xueli varchar(10),fav set('排球','篮球','地球'),zhuceTime timestamp);