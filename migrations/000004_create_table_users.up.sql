create table users
(
    id              serial
        primary key,
    name            varchar(255) not null,
    email           varchar(255) not null
        constraint user_uc_email
            unique,
    hashed_password char(60)     not null,
    created         timestamp    not null
);