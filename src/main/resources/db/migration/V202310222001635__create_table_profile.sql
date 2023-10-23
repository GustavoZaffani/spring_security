create table profile
(
    id          uuid not null,
    code        varchar(255),
    description varchar(255),
    constraint pk_profile primary key (id)
);
