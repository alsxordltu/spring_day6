create table Tuser
(user_id varchar2(20) primary key,
 Pass varchar2(20) not null
);

create table tcomment
(Comment_no number primary key,
 User_id varchar2(20) not null,
 Content varchar2(500) not null
);

alter table tcomment add constraint tcomment_tuser_fk
foreign key(user_id) references tuser(user_id);
 
create sequence seq_comment;

