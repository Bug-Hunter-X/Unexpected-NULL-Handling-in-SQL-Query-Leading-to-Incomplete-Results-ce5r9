# Unexpected NULL Handling in SQL Query

This repository demonstrates a common yet subtle error in SQL queries involving `NULL` values. The query is designed to retrieve employees from the Sales department with salaries exceeding $100,000.  However, it fails to account for `NULL` values in the `department` or `salary` columns, leading to an incomplete result set.

The `bug.sql` file contains the erroneous query. The `bugSolution.sql` file provides a corrected version that handles `NULL` values appropriately.

This example highlights the importance of considering `NULL` values in SQL queries to ensure accurate and reliable data retrieval.