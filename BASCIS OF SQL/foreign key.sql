create table orders(
order_id int primary key auto_increment,
cid int not null,
order_date datetime not null default current_timestamp,

constraint order_fk foreign key (cid) references customers(cid));

insert into orders values()