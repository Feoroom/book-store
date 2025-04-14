create table sessions
(
    token  char(43)  not null
        primary key,
    data   bytea     not null,
    expiry timestamp not null
);

create index sessions_expiry_idx
    on sessions (expiry);