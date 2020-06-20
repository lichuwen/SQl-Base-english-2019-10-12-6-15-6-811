CREATE DATABASE student_examination_sys;
create table student(
    id char(4) not null primary key,
    name char(20) not null,
    age int(4) not null,
    sex char(8) not null);

insert into student(id,name,age,sex) values('001','zhangsan',18,'male');
insert into student(id,name,age,sex) values('002','lisi',20,'female');

create table subject(
    id char(4) not null primary key,
    subject char(20) not null,
    teacher char(20) not null,
    description char(100));

insert into subject(id,subject,teacher,description) values('1001','Chinese','Mr.Wang','the exam is easy');
insert into subject(id,subject,teacher,description) values('1002','nath','Miss Liu','the exam is difficult');

create table score(
    id int(4) not null primary key auto_increment,
    student_id char(4) not null,
    subject_id char(4) not null,
    score double(5,2));

insert into score(id,student_id,subject_id,score) values(null,'001','1001',80);
insert into score(id,student_id,subject_id,score) values(null,'002','1002',60);
insert into score(id,student_id,subject_id,score) values(null,'001','1001',70);
insert into score(id,student_id,subject_id,score) values(null,'002','1002',60.5);
