--- create table users
create table users (
  id serial primary key,
  email varchar not null unique
);

-- show generate series function
select generate_series(1, 10000);

-- use it to create some fake email addresses
select 'person' || num || '@yuana.id' 
from generate_series(1, 10000) as num;

-- insert into users
insert into users (email) 
select 'person' || num || '@yuana.id'
from generate_series(1, 10000) as num;

-- checkout table users
table users;

-- generate using random host
select 'person' || num || '@' || 
(case (random() * 2)::integer
    when 0 then 'gmail'
    when 1 then 'hotmail'
    when 2 then 'yahoo'
end) || '.com'
from generate_series(1, 10000) as num;
