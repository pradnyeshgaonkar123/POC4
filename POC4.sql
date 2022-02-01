-- POC 4

create table author (
id int primary key,
name varchar(100)
);

insert into author values(1, "James Bond");
insert into author values(2, "Peter Parera");
insert into author values(3, "Sachin Patil");

select * from author;

create table post(
id int primary key,
name varchar(100),
authorid int,
foreign key (authorid) references author(id),
createdts datetime
);

insert into post values(1, "Hello Java", 3, "2022-01-01 10:11:12");
insert into post values(2, "Hello Sql", 1, "2021-01-01 11:12:14");
insert into post values(3, "Hello Python", 1, "2021-01-01 11:12:14");
insert into post values(4, "Hello SpringBoot", 1, "2021-01-01 11:12:14");

select * from post;


create table user (
id int primary key,
name varchar(100)
);

insert into user values(1, "Pradnyesh Gaonkar");
insert into user values(2, "Abdul Dsouza");

create table comment (
id int primary key,
content varchar(1000),
postid int,
foreign key (postid) references post(id),
createdts datetime,
userid int,
 foreign key (userid) references user(id)
);

insert into comment values(1, "1st comment Hello java", 1, "2022-10-01 11:11:12", 1);
insert into comment values(2, "2nd comment Hello java", 1, "2022-10-02 11:11:12", 2);
insert into comment values(3, "3rd comment Hello java", 1, "2022-10-03 11:11:12", 1);
insert into comment values(4, "4th comment Hello java", 1, "2022-10-04 11:11:12", 2);
insert into comment values(5, "5th comment Hello java", 1, "2022-10-04 11:11:12", 1);
insert into comment values(6, "6th comment Hello java", 1, "2022-10-04 11:11:12", 2);
insert into comment values(7, "7th comment Hello java", 1, "2022-10-04 11:11:12", 1);
insert into comment values(8, "8th comment Hello java", 1, "2022-10-07 11:11:12", 2);
insert into comment values(9, "9th comment Hello java", 1, "2022-10-07 11:11:12", 1);
insert into comment values(10, "10th comment Hello java", 1, "2022-10-07 11:11:12", 2);
insert into comment values(11, "11th comment Hello java", 1, "2022-10-08 11:11:12", 1);
insert into comment values(12, "12th comment Hello java", 1, "2022-10-08 11:11:12", 2);
insert into comment values(13, "13th comment Hello java", 1, "2022-10-08 11:11:12", 1);
insert into comment values(14, "14th comment Hello java", 1, "2022-10-08 11:11:12", 2);
insert into comment values(15, "15th comment Hello java", 1, "2022-10-09 11:11:12", 1);

insert into comment values(16, "1st comment Hello Sql", 2, "2022-10-01 11:11:12", 1);
insert into comment values(17, "2nd comment Hello Sql", 2, "2022-10-02 11:11:12", 2);
insert into comment values(18, "3rd comment Hello Sql", 2, "2022-10-03 11:11:12", 1);
insert into comment values(19, "4th comment Hello Sql", 2, "2022-10-04 11:11:12", 2);
insert into comment values(20, "5th comment Hello Sql", 2, "2022-10-04 11:11:12", 1);
insert into comment values(21, "6th comment Hello Sql", 2, "2022-10-04 11:11:12", 2);
insert into comment values(22, "7th comment Hello Sql", 2, "2022-10-04 11:11:12", 1);
insert into comment values(23, "8th comment Hello Sql", 2, "2022-10-07 11:11:12", 2);
insert into comment values(24, "9th comment Hello Sql", 2, "2022-10-07 11:11:12", 1);
insert into comment values(25, "10th comment Hello Sql", 2, "2022-10-07 11:11:12", 2);
insert into comment values(26, "11th comment Hello Sql", 2, "2022-10-08 11:11:12", 1);
insert into comment values(27, "2th comment Hello Sql", 2, "2022-10-08 11:11:12", 2);
insert into comment values(28, "13th comment Hello Sql", 2, "2022-10-08 11:11:12", 1);
insert into comment values(29, "14th comment Hello Sql", 2, "2022-10-08 11:11:12", 2);
insert into comment values(30, "15th comment Hello Sql", 2, "2022-10-09 11:11:12", 1);

insert into comment values(31, "1st comment Hello Python", 3, "2022-10-01 11:11:12", 1);
insert into comment values(32, "2nd comment Hello Python", 3, "2022-10-02 11:11:12", 2);
insert into comment values(33, "3rd comment Hello Python", 3, "2022-10-03 11:11:12", 1);
insert into comment values(34, "4th comment Hello Python", 3, "2022-10-04 11:11:12", 2);
insert into comment values(35, "5th comment Hello Python", 3, "2022-10-04 11:11:12", 1);
insert into comment values(36, "6th comment Hello Python", 3, "2022-10-04 11:11:12", 2);
insert into comment values(37, "7th comment Hello Python", 3, "2022-10-04 11:11:12", 1);
insert into comment values(38, "8th comment Hello Python", 3, "2022-10-07 11:11:12", 2);
insert into comment values(39, "9th comment Hello Python", 3, "2022-10-07 11:11:12", 1);
insert into comment values(40, "10th comment Hello Python", 3, "2022-10-07 11:11:12", 2);
insert into comment values(41, "11th comment Hello Python", 3, "2022-10-08 11:11:12", 1);
insert into comment values(42, "12th comment Hello Python", 3, "2022-10-08 11:11:12", 2);
insert into comment values(43, "13th comment Hello Python", 3, "2022-10-08 11:11:12", 1);
insert into comment values(44, "14th comment Hello Python", 3, "2022-10-08 11:11:12", 2);
insert into comment values(45, "15th comment Hello Python", 3, "2022-10-09 11:11:12", 1);

insert into comment values(46, "1st comment Hello SpringBoot", 4, "2022-10-01 11:11:12", 1);
insert into comment values(47, "2nd comment Hello SpringBoot", 4, "2022-10-02 11:11:12", 2);
insert into comment values(48, "3rd comment Hello SpringBoot", 4, "2022-10-03 11:11:12", 1);
insert into comment values(49, "4th comment Hello SpringBoot", 4, "2022-10-04 11:11:12", 2);
insert into comment values(50, "5th comment Hello SpringBoot", 4, "2022-10-04 11:11:12", 1);
insert into comment values(51, "6th comment Hello SpringBoot", 4, "2022-10-04 11:11:12", 2);
insert into comment values(52, "7th comment Hello SpringBoot", 4, "2022-10-04 11:11:12", 1);
insert into comment values(53, "8th comment Hello SpringBoot", 4, "2022-10-07 11:11:12", 2);
insert into comment values(54, "9th comment Hello SpringBoot", 4, "2022-10-07 11:11:12", 1);
insert into comment values(55, "10th comment Hello SpringBoot",4, "2022-10-07 11:11:12", 2);
insert into comment values(56, "11th comment Hello SpringBoot", 4, "2022-10-08 11:11:12", 1);
insert into comment values(57, "12th comment Hello SpringBoot", 4, "2022-10-08 11:11:12", 2);
insert into comment values(58, "13th comment Hello SpringBoot", 4, "2022-10-08 11:11:12", 1);
insert into comment values(59, "14th comment Hello SpringBoot", 4, "2022-10-08 11:11:12", 2);
insert into comment values(60, "15th comment Hello SpringBoot", 4, "2022-10-09 11:11:12", 1);


-- Query: Get list of Posts with latest 10 comments of each post authored by 'James Bond'

select c.postid as postid, p.name as post, a.name as author, content, rownum
from post p
left  join author a on a.id = p.authorid
left  join (select postid, id as commentid, content, 
		row_number() over (partition by postid order by id desc) as rownum
	from comment) c on p.id=c.postid 
where a.name="James Bond" and c.rownum <= 10;

