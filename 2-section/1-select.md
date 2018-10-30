## SELECT

retieves data from single table

```sql
SELECT
 column_1,
 column_2
 ...
FROM
 table_name;
```

### example 1

```sql
SELECT
 *
FROM
 customer;
```

### example 2

```sql
SELECT
 first_name,
 last_name,
 email
FROM
 customer;
```

### example 3

```sql
SELECT
 (first_name || ' ' || last_name) full_name,
 email
FROM
 customer;
```

