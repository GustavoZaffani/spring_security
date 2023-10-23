create table user_profile
(
    profile_id uuid not null,
    user_id    uuid not null,
    constraint pk_user_profile primary key (profile_id, user_id),
    constraint fk_user_profile_profile_id foreign key (profile_id) references profile,
    constraint fK_user_profile_user_id foreign key (user_id) references "user"
);
