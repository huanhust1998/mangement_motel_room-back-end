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

insert into role values (1, "admin", "ADMIN"),(2, "user", "USER"),(3,"customer","CUSTOMER");
insert into room values (101, 1, "Đỗ Đức Dục"),(102, 1, "Đỗ Đức Dục"),(201, 1, "Đỗ Đức Dục"),(202, 1, "Đỗ Đức Dục")
                      ,(301, 1, "Đỗ Đức Dục"),(302, 1, "Đỗ Đức Dục"),(401, 1, "Đỗ Đức Dục"),(402, 1, "Đỗ Đức Dục");
insert into user values (1,"huanhust1998@gmail.com", "Dylan", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 101,1),
                        (2,"huanhuan1998huan@gmail.com", "huan", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Hà Nam", 101,1),
                        (3,"admin@gmail.com", "admin", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 102,2),
                        (4,"becky@gmail.com", "becky", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 102,2),
                        (5,"milk@gmail.com", "milk", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 201,2),
                        (6,"kun1998@gmail.com", "kun", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 201,2),
                        (7,"hanbin1995@gmail.com", "hanbin", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 202,2),
                        (8,"nguyenanhtu@gmail.com", "anhtu", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 202,2),
                        (9,"ninhduclinh@gmail.com", "duclinh", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 301,2),
                        (10,"taduythuc@gmail.com", "Duythuc", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 301,2),
                        (11,"trinhtonkien@gmail.com", "tonkien", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 302,2),
                        (12,"nguyenxuanloc@gmail.com", "xuanloc", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 302,2),
                        (13,"ninhtrunganh@gmail.com", "trunganh", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 401,2),
                        (14,"ninhxuanlap@gmail.com", "xuanlap", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 401,2),
                        (15,"ninhhalinh@gmail.com", "halinh", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 402,2),
                        (16,"ninhxuanphat@gmail.com", "xuanphat", "$2a$10$/.e2pZJ3UHQtRReCR5jHd.twa/c1OyQ0TzbMVi6MzCl3VZgUSEnnK", "0376382684","Nam Định", 402,2)

