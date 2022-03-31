create database motel_room_management;
use motel_room_management;

create table room
(
    id      int(11) not null auto_increment,
    status  bool    not null,
    address varchar(255),
    primary key (id)
);

create table role
(
    role_id int(11)      not null auto_increment,
    name    varchar(255) not null,
    type    varchar(255) not null,
    primary key (role_id)
);

create table user
(
    id       int(11)      not null auto_increment,
    email    varchar(255) not null,
    username varchar(255) not null,
    password varchar(255) not null,
    phone    varchar(11)  not null,
    address  varchar(255),
    roomId   int(11)      not null,
    roleId   int(11)      not null,
    primary key (id),
    foreign key (roomId) references room (id),
    foreign key (roleId) references role (role_id)
);