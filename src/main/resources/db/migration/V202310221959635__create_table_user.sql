create table "user"
(
    id       uuid not null,
    email    varchar(100),
    name     varchar(100),
    password varchar(255),
    username varchar(255),
    constraint pk_user primary key (id)
);
