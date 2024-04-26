# creategroupandrunregression
The `creategroupandrunregression` function automates the process of grouping data based on specified boundaries and running linear regressions on each group. Here's how it works:

1. ###Reading Data: The function reads a CSV file specified by the `file_path` parameter and extracts the columns specified by `Y_column` and `X_column`.

2. ###Grouping Data: It then divides the data into groups based on the boundaries provided in the `boundaries` parameter. Each group is defined by a range of indices within the data.

3. ###Running Regressions: For each group, the function fits a linear regression model using the Y and X variables. It stores the regression models and their summaries in lists.

4. ###Printing Results: Finally, the function prints the regression results for each group, including the regression coefficients, standard errors, t-values, and p-values.

By using this function, you can quickly analyze data that is organized into distinct groups and understand how the relationship between variables varies across these groups. It provides a convenient way to perform group-wise regression analysis without manual intervention, saving time and effort in data analysis tasks.
