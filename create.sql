CREATE TABLE publisher (
       id integer primary key,
       name text NOT NULL,
       country text
       );

CREATE TABLE books (
       id integer primary key,
       title text,
       publisher serial references publisher(id)
       );

CREATE TABLE subjects (
       id integer primary key,
       name text
       );

CREATE TABLE books_subjects (
       book integer references books(id),
       subject serial references subjects(id)
       );