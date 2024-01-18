create database quanlybanhang;
use quanlybanhang;
create table customer(
cid int primary key,
cname varchar(60),
cage int);

create table order1(
oid int primary key,
cid int,
odate date,
ototalprice int,
foreign key (cid) references customer(cid)
);

create table product(
pid int primary key,
pname varchar(60),
pprice int
);

create table orderdetail(
oid int,
pid int,
odqty varchar(60),
primary key(oid,pid),
foreign key (oid) references order1(oid),
foreign key (pid) references product(pid)
);
