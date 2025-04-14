create table books
(
    id               serial primary key ,
    title            varchar(60)                                            not null
        unique,
    author           varchar(60)                                            not null,
    description      text                                                   not null,
    publication_year integer                                                not null,
    page_quantity    integer                                                not null,
    price            numeric                                                not null
);

