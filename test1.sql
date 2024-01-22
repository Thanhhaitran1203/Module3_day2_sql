create database quanlyhocvien;
use quanlyhocvien;
create table classes(id int primary key,name varchar(60),language varchar(50), descriptino varchar(100));
create table address(id int primary key,address varchar(100));
create table students(id int primary key,
fullname varchar(60),
address_id int,age int,phone int unique,
classes_id int,
foreign key (address_id) references address(id),
foreign key (classes_id) references classes(id));
create table course(id int primary key,name varchar(60),description varchar(100));
create table point(id int,course_id int,student_id int,point enum("0","1","2","3","5","6","7","8","9","10"),
foreign key (course_id) references course(id),
foreign key (student_id) references students(id));

insert into address values(1,"HN");
insert into address values(2,"DN");
insert into address values(3,"SG");
insert into address values(4,"Hue");
insert into address values(5,"HP");

insert into classes values (1,"C1023H1-JV","java","hoc Java");
insert into classes values (2,"C623H1-PHP","PHP","hoc php");
insert into classes values (3,"C723H1-C","C","hoc C");
insert into classes values (4,"C823H1-Angular","Angular","hoc Angular");
insert into classes values (5,"C923H1-Python","Python","hoc Python");
select * from address;

insert into students values (1, 'Nguyễn Văn A',1,18,0123456,1);
insert into students values (2, 'Nguyễn Văn B',2,21,0998856,2);
insert into students values (3, 'Nguyễn C',3,22,4423456,3);
insert into students values (4, 'Nguyễn Thị D',4,20,01477456,4);
insert into students values (5, 'Nguyễn Xuân E',5,19,0663456,5);
insert into students values (6, 'F',1,19,06611456,1);
insert into students values (7, 'G',2,19,0663456556,2);
insert into students values (8, 'H',3,19,0663456447,3);
insert into students values (9, 'K',4,19,066345654,4);
insert into students values (10, 'I',5,19,066345691,5);

insert into course values(1,"Java","học Java");
insert into course values(2,"C","học C");
insert into course values(3,"PHP","học PHP");
insert into course values(4,"Angular","học Angular");
insert into course values(5,"Python","học Python");

insert into point values(1,1,1,"7");
insert into point values(2,2,2,"8");
insert into point values(3,5,3,"6");
insert into point values(4,2,5,"4");
insert into point values(5,4,9,"8");
insert into point values(6,3,7,"9");
insert into point values(7,3,6,"6");
insert into point values(8,5,9,"1");
insert into point values(9,1,7,"2");
insert into point values(10,4,5,"7");
insert into point values(11,1,3,"8");
insert into point values(12,4,10,"10");
insert into point values(13,2,8,"9");
insert into point values(14,3,4,"6");
insert into point values(15,5,6,"4");


select * from students;
select * from students where fullname like "Nguyễn%";
select * from students where fullname like "%A";
select * from students where age between 15 and 18;
select * from students where id = 7 or id = 5;

select classes_id,count(classes_id) as "soluong" from students group by classes_id;

select address_id,count(address_id) as "so luong" from students group by address_id;

select  course_id,avg(point) as "diem tb" from point p join course c on p.course_id = c.id group by course_id;

select * from students inner join address on students.address_id = address.id;

use quanlyhocvien;