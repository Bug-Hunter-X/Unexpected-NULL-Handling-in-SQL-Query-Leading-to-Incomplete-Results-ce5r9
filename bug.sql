```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might seem correct, but it can lead to unexpected results if there are employees in the `employees` table with `NULL` values in the `department` or `salary` columns.

When comparing `NULL` to any value (including `'Sales'` or `100000`), the result is always `UNKNOWN`, not `TRUE` or `FALSE`. This is a fundamental aspect of how `NULL` values work in SQL.  Because of this, rows with `NULL` values in either the `department` or `salary` columns will be excluded from the results, even if the other columns satisfy the conditions. This could lead to an incomplete set of results, which is a subtle error difficult to identify.