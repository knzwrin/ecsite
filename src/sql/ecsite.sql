drop database if exists ecsite_db;

create database if not exists ecsite_db;
use ecsite\db;

drop table if exists user_info;

create table user_info(
user_id int not null primary key auto_increment,
user_name varchar(16),
password varchar(16),
address varchar(50),
tell varchar(16),
email varchar(50),
insert_date datetime,
update_date datetime
);

drop table if exists item_info

create table item_info(
item_id int not null primary key auto_increment,
item_name varchar(30),
item_price int,
item_stock int,
item_img varchar(50),
item_detail varchar(255),
category_id int not null unique,
category_word varchar(255),
insert_date datetime,
update_date datetime
);

drop table if exists cart_info;

create table cart_info(
item_id int not null primary key auto_increment,
user_name varchar(16),
item_name varchar(30),
total_price int,
count int,
insert_date datetime
);





create table buy_item_info(
id int not null primary key auto_increment,
user_name varchar(16)
item_name varchar(50),
total_price int,
count int,
pay varchar(30),
insert_date datetime,
delete_date datetime
);


INSERT INTO item_info_transaction(item_name, item_price, item_stock) VALUES("ノートBook", 100, 50),("ボールPen",120,50),("シャープpen",80,50);
INSERT INTO login_user_transaction(login_id, login_pass, user_name) VALUES("internous", "internous01", "test"),("kanazawa","kanazawa01","rein");