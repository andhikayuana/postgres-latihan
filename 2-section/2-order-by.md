## ORDER BY

allows you to sort the rows returned from the `SELECT` statement in ascending or descending order based on the specified criteria.

```sql
SELECT
 column_1,
 column_2
FROM
 table_name
ORDER BY
 column_1 ASC,
 column_2 DESC;
```

### example 1

```sql
SELECT
 first_name,
 last_name
FROM
 customer
ORDER BY
 first_name ASC;
```

### example 2

```sql
SELECT
 first_name,
 last_name
FROM
 customer
ORDER BY
 last_name DESC;
```

## example 3

```sql
SELECT
 first_name,
 last_name
FROM
 customer
ORDER BY
 first_name ASC,
 last_name DESC;
```
