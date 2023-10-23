
    create table profile (
        id uuid not null,
        code varchar(255),
        description varchar(255),
        primary key (id)
    );

    create table profile_resource (
        profile_id uuid not null,
        resource_id uuid not null,
        primary key (profile_id, resource_id)
    );

    create table resource (
        id uuid not null,
        description varchar(255),
        identifier varchar(255) unique,
        label varchar(255),
        primary key (id)
    );

    create table user (
        id uuid not null,
        email varchar(100),
        name varchar(100),
        password varchar(255),
        username varchar(255),
        primary key (id)
    );

    create table user_profile (
        profile_id uuid not null,
        user_id uuid not null,
        primary key (profile_id, user_id)
    );

    alter table if exists profile_resource 
       add constraint FKo39q9so8vj54r0m52j8o55a7l 
       foreign key (resource_id) 
       references resource;

    alter table if exists profile_resource 
       add constraint FKn8qfru2lg8xya4xvbi87exgil 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FKqfbftbxicceqbmvj87g9be2qn 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FK6kwj5lk78pnhwor4pgosvb51r 
       foreign key (user_id) 
       references user;

    create table profile (
        id uuid not null,
        code varchar(255),
        description varchar(255),
        primary key (id)
    );

    create table profile_resource (
        profile_id uuid not null,
        resource_id uuid not null,
        primary key (profile_id, resource_id)
    );

    create table resource (
        id uuid not null,
        description varchar(255),
        identifier varchar(255) unique,
        label varchar(255),
        primary key (id)
    );

    create table user (
        id uuid not null,
        email varchar(100),
        name varchar(100),
        password varchar(255),
        username varchar(255),
        primary key (id)
    );

    create table user_profile (
        profile_id uuid not null,
        user_id uuid not null,
        primary key (profile_id, user_id)
    );

    alter table if exists profile_resource 
       add constraint FKo39q9so8vj54r0m52j8o55a7l 
       foreign key (resource_id) 
       references resource;

    alter table if exists profile_resource 
       add constraint FKn8qfru2lg8xya4xvbi87exgil 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FKqfbftbxicceqbmvj87g9be2qn 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FK6kwj5lk78pnhwor4pgosvb51r 
       foreign key (user_id) 
       references user;

    create table profile (
        id uuid not null,
        code varchar(255),
        description varchar(255),
        primary key (id)
    );

    create table profile_resource (
        profile_id uuid not null,
        resource_id uuid not null,
        primary key (profile_id, resource_id)
    );

    create table resource (
        id uuid not null,
        description varchar(255),
        identifier varchar(255) unique,
        label varchar(255),
        primary key (id)
    );

    create table user (
        id uuid not null,
        email varchar(100),
        name varchar(100),
        password varchar(255),
        username varchar(255),
        primary key (id)
    );

    create table user_profile (
        profile_id uuid not null,
        user_id uuid not null,
        primary key (profile_id, user_id)
    );

    alter table if exists profile_resource 
       add constraint FKo39q9so8vj54r0m52j8o55a7l 
       foreign key (resource_id) 
       references resource;

    alter table if exists profile_resource 
       add constraint FKn8qfru2lg8xya4xvbi87exgil 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FKqfbftbxicceqbmvj87g9be2qn 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FK6kwj5lk78pnhwor4pgosvb51r 
       foreign key (user_id) 
       references user;

    create table profile (
        id uuid not null,
        code varchar(255),
        description varchar(255),
        primary key (id)
    );

    create table profile_resource (
        profile_id uuid not null,
        resource_id uuid not null,
        primary key (profile_id, resource_id)
    );

    create table resource (
        id uuid not null,
        description varchar(255),
        identifier varchar(255) unique,
        label varchar(255),
        primary key (id)
    );

    create table user (
        id uuid not null,
        email varchar(100),
        name varchar(100),
        password varchar(255),
        username varchar(255),
        primary key (id)
    );

    create table user_profile (
        profile_id uuid not null,
        user_id uuid not null,
        primary key (profile_id, user_id)
    );

    alter table if exists profile_resource 
       add constraint FKo39q9so8vj54r0m52j8o55a7l 
       foreign key (resource_id) 
       references resource;

    alter table if exists profile_resource 
       add constraint FKn8qfru2lg8xya4xvbi87exgil 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FKqfbftbxicceqbmvj87g9be2qn 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FK6kwj5lk78pnhwor4pgosvb51r 
       foreign key (user_id) 
       references user;

    create table profile (
        id uuid not null,
        code varchar(255),
        description varchar(255),
        primary key (id)
    );

    create table profile_resource (
        profile_id uuid not null,
        resource_id uuid not null,
        primary key (profile_id, resource_id)
    );

    create table resource (
        id uuid not null,
        description varchar(255),
        identifier varchar(255) unique,
        label varchar(255),
        primary key (id)
    );

    create table user (
        id uuid not null,
        email varchar(100),
        name varchar(100),
        password varchar(255),
        username varchar(255),
        primary key (id)
    );

    create table user_profile (
        profile_id uuid not null,
        user_id uuid not null,
        primary key (profile_id, user_id)
    );

    alter table if exists profile_resource 
       add constraint FKo39q9so8vj54r0m52j8o55a7l 
       foreign key (resource_id) 
       references resource;

    alter table if exists profile_resource 
       add constraint FKn8qfru2lg8xya4xvbi87exgil 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FKqfbftbxicceqbmvj87g9be2qn 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FK6kwj5lk78pnhwor4pgosvb51r 
       foreign key (user_id) 
       references user;

    create table profile (
        id uuid not null,
        code varchar(255),
        description varchar(255),
        primary key (id)
    );

    create table profile_resource (
        profile_id uuid not null,
        resource_id uuid not null,
        primary key (profile_id, resource_id)
    );

    create table resource (
        id uuid not null,
        description varchar(255),
        identifier varchar(255) unique,
        label varchar(255),
        primary key (id)
    );

    create table user (
        id uuid not null,
        email varchar(100),
        name varchar(100),
        password varchar(255),
        username varchar(255),
        primary key (id)
    );

    create table user_profile (
        profile_id uuid not null,
        user_id uuid not null,
        primary key (profile_id, user_id)
    );

    alter table if exists profile_resource 
       add constraint FKo39q9so8vj54r0m52j8o55a7l 
       foreign key (resource_id) 
       references resource;

    alter table if exists profile_resource 
       add constraint FKn8qfru2lg8xya4xvbi87exgil 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FKqfbftbxicceqbmvj87g9be2qn 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FK6kwj5lk78pnhwor4pgosvb51r 
       foreign key (user_id) 
       references user;

    create table profile (
        id uuid not null,
        code varchar(255),
        description varchar(255),
        primary key (id)
    );

    create table profile_resource (
        profile_id uuid not null,
        resource_id uuid not null,
        primary key (profile_id, resource_id)
    );

    create table resource (
        id uuid not null,
        description varchar(255),
        identifier varchar(255) unique,
        label varchar(255),
        primary key (id)
    );

    create table user (
        id uuid not null,
        email varchar(100),
        name varchar(100),
        password varchar(255),
        username varchar(255),
        primary key (id)
    );

    create table user_profile (
        profile_id uuid not null,
        user_id uuid not null,
        primary key (profile_id, user_id)
    );

    alter table if exists profile_resource 
       add constraint FKo39q9so8vj54r0m52j8o55a7l 
       foreign key (resource_id) 
       references resource;

    alter table if exists profile_resource 
       add constraint FKn8qfru2lg8xya4xvbi87exgil 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FKqfbftbxicceqbmvj87g9be2qn 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FK6kwj5lk78pnhwor4pgosvb51r 
       foreign key (user_id) 
       references user;

    create table profile (
        id uuid not null,
        code varchar(255),
        description varchar(255),
        primary key (id)
    );

    create table profile_resource (
        profile_id uuid not null,
        resource_id uuid not null,
        primary key (profile_id, resource_id)
    );

    create table resource (
        id uuid not null,
        description varchar(255),
        identifier varchar(255) unique,
        label varchar(255),
        primary key (id)
    );

    create table user (
        id uuid not null,
        email varchar(100),
        name varchar(100),
        password varchar(255),
        username varchar(255),
        primary key (id)
    );

    create table user_profile (
        profile_id uuid not null,
        user_id uuid not null,
        primary key (profile_id, user_id)
    );

    alter table if exists profile_resource 
       add constraint FKo39q9so8vj54r0m52j8o55a7l 
       foreign key (resource_id) 
       references resource;

    alter table if exists profile_resource 
       add constraint FKn8qfru2lg8xya4xvbi87exgil 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FKqfbftbxicceqbmvj87g9be2qn 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FK6kwj5lk78pnhwor4pgosvb51r 
       foreign key (user_id) 
       references user;

    create table profile (
        id uuid not null,
        code varchar(255),
        description varchar(255),
        primary key (id)
    );

    create table profile_resource (
        profile_id uuid not null,
        resource_id uuid not null,
        primary key (profile_id, resource_id)
    );

    create table resource (
        id uuid not null,
        description varchar(255),
        identifier varchar(255) unique,
        label varchar(255),
        primary key (id)
    );

    create table user (
        id uuid not null,
        email varchar(100),
        name varchar(100),
        password varchar(255),
        username varchar(255),
        primary key (id)
    );

    create table user_profile (
        profile_id uuid not null,
        user_id uuid not null,
        primary key (profile_id, user_id)
    );

    alter table if exists profile_resource 
       add constraint FKo39q9so8vj54r0m52j8o55a7l 
       foreign key (resource_id) 
       references resource;

    alter table if exists profile_resource 
       add constraint FKn8qfru2lg8xya4xvbi87exgil 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FKqfbftbxicceqbmvj87g9be2qn 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FK6kwj5lk78pnhwor4pgosvb51r 
       foreign key (user_id) 
       references user;

    create table profile (
        id uuid not null,
        code varchar(255),
        description varchar(255),
        primary key (id)
    );

    create table profile_resource (
        profile_id uuid not null,
        resource_id uuid not null,
        primary key (profile_id, resource_id)
    );

    create table resource (
        id uuid not null,
        description varchar(255),
        identifier varchar(255) unique,
        label varchar(255),
        primary key (id)
    );

    create table user (
        id uuid not null,
        email varchar(100),
        name varchar(100),
        password varchar(255),
        username varchar(255),
        primary key (id)
    );

    create table user_profile (
        profile_id uuid not null,
        user_id uuid not null,
        primary key (profile_id, user_id)
    );

    alter table if exists profile_resource 
       add constraint FKo39q9so8vj54r0m52j8o55a7l 
       foreign key (resource_id) 
       references resource;

    alter table if exists profile_resource 
       add constraint FKn8qfru2lg8xya4xvbi87exgil 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FKqfbftbxicceqbmvj87g9be2qn 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FK6kwj5lk78pnhwor4pgosvb51r 
       foreign key (user_id) 
       references user;

    create table profile (
        id uuid not null,
        code varchar(255),
        description varchar(255),
        primary key (id)
    );

    create table profile_resource (
        profile_id uuid not null,
        resource_id uuid not null,
        primary key (profile_id, resource_id)
    );

    create table resource (
        id uuid not null,
        description varchar(255),
        identifier varchar(255) unique,
        label varchar(255),
        primary key (id)
    );

    create table "user" (
        id uuid not null,
        email varchar(100),
        name varchar(100),
        password varchar(255),
        username varchar(255),
        primary key (id)
    );

    create table user_profile (
        profile_id uuid not null,
        user_id uuid not null,
        primary key (profile_id, user_id)
    );

    alter table if exists profile_resource 
       add constraint FKo39q9so8vj54r0m52j8o55a7l 
       foreign key (resource_id) 
       references resource;

    alter table if exists profile_resource 
       add constraint FKn8qfru2lg8xya4xvbi87exgil 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FKqfbftbxicceqbmvj87g9be2qn 
       foreign key (profile_id) 
       references profile;

    alter table if exists user_profile 
       add constraint FKqcd5nmg7d7ement27tt9sf3bi 
       foreign key (user_id) 
       references "user";
