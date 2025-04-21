/* selecting all data from students*/

select * from students;

/* addin new column to table*/
alter table students add column Name varchar(255) not null;
/* describing the structure of the data */
desc students;

/* insertion of the data into the table */
insert into students values(1,19,'Aman'),(2,18,'Dikshant');
select * from students;

/* adding after some particular coulmn */
alter table students add column branch varchar(255) not null after name;
desc students;
alter table students add column phone varchar(255) not null after branch, add column Pass varchar(255) not null after phone;
desc students;
select * from students;


/* usage of update in the mysql */
update  students set branch='cse' where student_id=1;
update students set branch ='eee'  where student_id=2;
select * from students;
update  students set phone=1234567891 where student_id=1;
update students set phone =1234567898  where student_id=2;
select * from students;
