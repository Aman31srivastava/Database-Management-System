select * from users;
create table students(
student_id int primary key auto_increment,
age int check (age >6 and age < 25  ));