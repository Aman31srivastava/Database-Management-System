create table ticket(
ticket_id int primary key,
name varchar(255) not null,
travel_date datetime default current_timestamp );

insert into ticket values (0010,'ASHISH',current_timestamp());
SELECT * FROM ticket;

