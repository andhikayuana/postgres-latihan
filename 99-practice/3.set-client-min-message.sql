-- seting client_min_messages
set client_min_messages to NOTICE

-- to test
do $$ 
begin 
  raise notice 'hai'; 
end $$;

-- please see @link : https://www.postgresql.org/docs/9.5/static/runtime-config-logging.html
