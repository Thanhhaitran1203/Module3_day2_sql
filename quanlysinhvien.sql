create database quanlysinhvien;
use quanlysinhvien;
create table class(classid int not null primary key auto_increment, 
classname varchar(60) not null,
startdate datetime not null,
status bit
);
create table student(
studentid int not null primary key auto_increment,
studentname varchar(60) not null,
address varchar(20),
phone varchar(20),
status bit,
classid int not null
);
create table subject(sunid int not null auto_increment primary key,
submane varchar(30) not null,
credit tinyint not null default 1,
status bit default 1,
check (credit >= 1)
);
create table mark(
markid int not null primary key auto_increment,
subid int not null unique,
studentid int not null unique,
mark float default 0 check(mark between 0 and 100),
examtimes tinyint default 1
);