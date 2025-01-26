```sql
SELECT * FROM employees WHERE (department = 'Sales' OR department IS NULL) AND (salary > 100000 OR salary IS NULL);
```
This solution explicitly checks for `NULL` values using `IS NULL` or `IS NOT NULL` in conjunction with the other comparison operations. Using `OR` allows for including rows where either `department` or `salary` is `NULL`, provided other condition is met.

Alternatively, the `COALESCE` function could be used to replace `NULL` values with a default value before the comparison:
```sql
SELECT * FROM employees WHERE COALESCE(department, '') = 'Sales' AND COALESCE(salary, 0) > 100000;
```
This solution replaces `NULL` values in the `department` column with an empty string and `NULL` values in the `salary` column with 0 before performing the comparison. The choice between `IS NULL` and `COALESCE` depends on the specific requirements and interpretation of `NULL` within the application context.