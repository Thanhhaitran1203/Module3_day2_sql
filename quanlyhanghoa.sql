create database quanlyhanghoa;
use quanlyhanghoa;
create table nhacungcap(
manhacc int primary key,
tennhacc varchar(60),
diachi varchar(100),
sdt varchar(20));

create table vattu(
mavtu int primary key,
tenvtu varchar(60));

create table dondathang(
sodh int primary key,
ngaydh date,
manhacc int,
mavtu int,
foreign key (manhacc) references nhacungcap(manhacc),
foreign key (mavtu) references vattu(mavtu)
);

create table phieuxat(
sopx int primary key,
ngayxuat date,
dgxuat int,
slxuat int,
mavtu int,
foreign key(mavtu) references vattu(mavtu));

create table phieunhap(
sopn int primary key,
ngaynhap date,
dgnhao int,
slphap int,
mavtu int,
foreign key(mavtu) references vattu(mavtu));