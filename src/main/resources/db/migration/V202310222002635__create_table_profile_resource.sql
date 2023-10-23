create table profile_resource
(
    profile_id  uuid not null,
    resource_id uuid not null,
    constraint pk_profile_resource primary key (profile_id, resource_id),
    constraint fk_profile_resource_resource_id foreign key (resource_id) references resource,
    constraint fk_profile_resource_profile_id foreign key (profile_id) references profile
);
