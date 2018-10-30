-- create users table
create table users (
  id integer primary key,
  email varchar not null,
  name varchar not null,
  password_digest varchar not null
);

-- insert to users table
insert into users values 
(1, 'jarjit@yuana.id', 'jarjit singh', 'b038d67b925dcca1946bc41b5a0ff805'),
(2, 'mail@yuana.id', 'mail bin mail', 'b83a886a5c437ccd9ac15473fd6f1788');

-- select using row_to_json(table)
-- 1
select row_to_json(users)
from users
where users.id = 1;

-- 2
select row_to_json(row(id, email, name)) 
from users 
where users.id = 1;

-- 3
select row_to_json(t)
from (
  select id, name, email
  from users
  where users.id = 1
) t;

-- create bookmarks table
create table bookmarks (
  id serial primary key,
  user_id integer not null references user,
  name varchar not null,
  url varchar not null
);

-- insert into bookmarks with references user_id in table users
insert into bookmarks (user_id, name, url) values
(1, 'Google', 'https://google.com'),
(1, 'Qiscus', 'https://qiscus.com'),
(2, 'Ajaro', 'https://ajaro.id'),
(2, 'Yuana', 'https://yuana.id');

-- check
table bookmarks;

-- create nested json 
select row_to_json(t)
from (
  select id, name, email, 
  (
    select json_agg(row_to_json(bookmarks))
    from bookmarks
    where user_id = users.id
  ) as bookmarks
  from users
  where users.id = 1
) t;

-- json array
select json_agg(row_to_json(t))
from (
  select id, name, email,
  (
    select json_agg(row_to_json(bookmarks))
    from bookmarks
    where user_id = users.id
  ) as bookmarks
  from users
) t;
