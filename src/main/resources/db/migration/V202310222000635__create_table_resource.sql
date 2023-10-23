create table resource
(
    id          uuid not null,
    description varchar(255),
    identifier  varchar(255) unique,
    label       varchar(255),
    constraint pk_resource primary key (id)
);
