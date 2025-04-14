create table reviews
(
    id        serial
        primary key,
    title     varchar(30),
    text      text,
    published timestamp,
    book_id   integer
        constraint reviews_books_id_fk
            references books
);
