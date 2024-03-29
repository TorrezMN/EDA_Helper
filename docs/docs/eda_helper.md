Module milanesas.eda_helper
===========================

Functions
---------

    
`explode_pie(pie_size)`
:   Generates a list of values to explode slices of a pie chart.
    
    Creates a list of random values between 0.01 and 0.05, suitable for
    visually exploding slices of a pie chart. The number of values in the
    list is determined by the `pie_size` argument.
    
    Args:
        pie_size: An integer representing the number of slices in the pie chart.
    
    Returns:
        A list of floating-point values between 0.01 and 0.05, with a length
        equal to `pie_size`.
    
    Example:
        >>> import pandas as pd
        >>> imp_df = pd.DataFrame({'A': [10, 20, 30]})
        >>> explode_values = explode_pie(imp_df.size)
        >>> print(explode_values)  # Example output: [0.03546542, 0.01237543, 0.04892357]

    
`get_column_uniques(df, col)`
:   Prints unique values in a DataFrame column, handling semicolon-separated lists.
    
    Prints the unique values found within a specified column of a DataFrame.
    Treats semicolon-separated values within cells as individual elements.
    
    Args:
        df (pandas.DataFrame): The DataFrame to analyze.
        col (str): The name of the column to extract unique values from.
    
    Example:
        >>> import pandas as pd
        >>> df = pd.DataFrame({'exp_en_IT': ['A;B;C', 'A;B', 'D']})
        >>> print_column_uniques(df, "exp_en_IT")
        {'A', 'B', 'C', 'D'}

    
`get_normal_uniques_col_count(df, col)`
:   Counts occurrences of unique values (including those within semicolon-separated lists), normalizing counts by row count.
    
    Calculates the count of each unique value within a specified column of a DataFrame,
    handling cases where cells contain multiple values separated by semicolons. Normalizes
    the counts by dividing them by the total number of rows in the DataFrame.
    
    Args:
        df (pandas.DataFrame): The input DataFrame.
        col (str): The name of the column to analyze.
    
    Returns:
        dict: A dictionary where keys represent unique values from the column and values
            represent their normalized counts (fraction of total rows).
    
    Example:
        >>> import pandas as pd
        >>> df = pd.DataFrame({'educacion': ['A;B', 'A', 'A;C', 'B']})
        >>> normalized_counts = get_normal_uniques_col_count(df, "educacion")
        >>> print(normalized_counts)
        {'A': 0.75, 'B': 0.5, 'C': 0.25}

    
`get_percentage(value)`
:   Formats a value as a percentage string.
    
    Converts a numerical value into a percentage representation, rounded to the
    nearest integer, and returns it as a formatted string with a percentage sign.
    
    Args:
        value (float): The numerical value to convert to a percentage.
    
    Returns:
        str: The formatted percentage string (e.g., "42%").
    
    Example:
        >>> percentage_string = get_percentage(0.4235)
        >>> print(percentage_string)  # Output: "42%"

    
`get_uniques_col_count(df, col)`
:   Counts occurrences of unique values (including those within semicolon-separated lists).
    
    Calculates the count of each unique value within a specified column of a DataFrame,
    handling cases where cells contain multiple values separated by semicolons.
    
    Args:
        df (pandas.DataFrame): The input DataFrame.
        col (str): The name of the column to analyze.
    
    Returns:
        dict: A dictionary where keys represent unique values from the column and values
            represent their counts.
    
    Example:
        >>> import pandas as pd
        >>> df = pd.DataFrame({'educacion': ['A;B', 'A', 'A;C', 'B']})
        >>> counts = get_uniques_col_count(df, "educacion")
        >>> print(counts)
        {'A': 3, 'B': 2, 'C': 1}

    
`make_custom_horizontal_bar(df, col, titulo, x_label, y_label, legend)`
:   Creates a horizontal bar chart from a pre-formatted DataFrame.
    
    Generates a horizontal bar chart from a DataFrame that's already been prepared
    with specific column names ("Category" for categories and "count" for values).
    
    Args:
        df (pandas.DataFrame): The input DataFrame, containing a 'Category' column
                                and a 'count' column.
        col (str): Unused in this function, but kept for consistency with other
                    charting functions.
        titulo (str): The title of the chart.
        x_label (str): The label for the x-axis.
        y_label (str): The label for the y-axis.
        legend (bool): True to display a legend, False to hide it.
    
    Example:
        >>> import pandas as pd
        >>> df = pd.DataFrame({'Category': ['A', 'B', 'A', 'C'], 'count': [4, 2, 3, 1]})
        >>> make_custom_horizontal_bar(df, "col", "Carreras o especialidades", "Total", "Carreras / Especialidades", False)

    
`make_dataframe(df, col, cat_col, count_col)`
:   

    
`make_df(df, col, x_label, y_label)`
:   Creates a DataFrame counting occurrences of unique values (including those within semicolon-separated lists).
    
    Constructs a new DataFrame that tallies the number of occurrences of each unique
    value within a specified column of a given DataFrame. Handles cases where cells
    contain multiple values separated by semicolons.
    
    Args:
        df (pandas.DataFrame): The input DataFrame.
        col (str): The name of the column to analyze.
        x_label (str): The label for the column containing unique values in the output DataFrame.
        y_label (str): The label for the column containing counts in the output DataFrame.
    
    Returns:
        pandas.DataFrame: A new DataFrame with two columns:
            - x_label: Contains the unique values from the specified column.
            - y_label: Contains the counts of those values.
    
    Example:
        >>> import pandas as pd
        >>> df = pd.DataFrame({'educacion': ['A;B', 'A', 'C;B', 'D']})
        >>> new_df = make_df(df, "educacion", "categories", "count")
        >>> print(new_df)
       categories  count
        0          A      2
        1          B      2
        2          C      1
        3          D      1

    
`make_horizontal_bar(df, col, titulo, x_label, y_label, legend)`
:   Creates a horizontal bar chart for a specified column in a DataFrame.
    
    Generates a horizontal bar chart that visualizes the counts of unique values
    within a given column of a DataFrame.
    
    Args:
        df (pandas.DataFrame): The input DataFrame.
        col (str): The name of the column to visualize.
        titulo (str): The title of the chart.
        x_label (str): The label for the x-axis.
        y_label (str): The label for the y-axis.
        legend (bool): True to display a legend, False to hide it.
    
    Example:
        >>> import pandas as pd
        >>> df = pd.DataFrame({'carr_especialidades': ['A', 'B', 'A', 'C', 'B']})
        >>> make_horizontal_bar(df, "carr_especialidades", "Carreras o especialidades", "Total", "Carreras / Especialidades", False)

    
`make_horizontal_grouped_chart(df, g1, g2, col, labels, config)`
:   Creates a horizontal grouped bar chart comparing values between two groups.
    
    Generates a horizontal bar chart with two sets of bars, one for each group
    (g1 and g2), comparing their counts for unique values in a specified column.
    Labels, title, and other chart elements are customized using a configuration
    dictionary.
    
    Args:
        df (pandas.DataFrame): The DataFrame containing the data.
        g1 (pandas.DataFrame): A subset of the DataFrame representing the first group.
        g2 (pandas.DataFrame): A subset of the DataFrame representing the second group.
        col (str): The name of the column to compare values for.
        labels (list): A list of unique values from the column to use as labels.
        config (dict): A configuration dictionary with keys:
            - title (str): The title of the chart.
            - c1_label (str): The label for the first group's bars.
            - c2_label (str): The label for the second group's bars.
            - xlabel (str): The label for the x-axis.
            - ylabel (str): The label for the y-axis.
    
    Raises:
        ValueError: If the specified column does not exist in the DataFrame.
    
    Example:
        >>> import pandas as pd
        >>> df = pd.DataFrame({'exp_en_IT': ['A', 'B', 'A', 'C', 'B'], 'gender': ['MAN', 'WOMAN', 'MAN', 'MAN', 'WOMAN']})
        >>> gen = df.groupby('gender')
        >>> group_config = {
        ...     'title': "exp_en_IT by Gender",
        ...     'c1_label': "MAN",
        ...     'c2_label': "WOMAN",
        ...     'xlabel': "Count",
        ...     'ylabel': "exp_en_IT level"
        ... }
        >>> make_horizontal_grouped_chart(df, gen.get_group("MAN"), gen.get_group("WOMAN"), "exp_en_IT", df["exp_en_IT"].unique(), group_config)

    
`make_normalized_df(df, col)`
:   Creates a DataFrame with normalized counts of unique values, handling semicolon-separated lists.
    
    Constructs a new DataFrame that displays the percentage of occurrences for each unique
    value within a specified column of a given DataFrame. Values in cells can be separated
    by semicolons, and each unique value within a semicolon-separated list is counted
    separately.
    
    Args:
        df (pandas.DataFrame): The input DataFrame.
        col (str): The name of the column to analyze.
    
    Returns:
        pandas.DataFrame: A new DataFrame with two columns:
            - categories: Contains the unique values from the specified column.
            - total count: Contains the percentage of occurrences for each unique value.
    
    Example:
        >>> import pandas as pd
        >>> df = pd.DataFrame({'imp_ed_formal': ['A;B', 'A', 'C;B', 'A;B']})
        >>> normalized_counts = make_normalized_df(df, "imp_ed_formal")
        >>> print(normalized_counts)
              total count
        categories
        A           50.0
        B           50.0
        C           25.0

    
`make_vertical_grouped_chart(df, g1, g2, col, labels, config)`
:   Creates a vertical grouped bar chart comparing values between two groups.
    
    Generates a vertical bar chart with two sets of bars, one for each group
    (g1 and g2), comparing their counts for unique values in a specified column.
    Labels, title, and other chart elements are customized using a configuration
    dictionary.
    
    Args:
        df (pandas.DataFrame): The DataFrame containing the data.
        g1 (pandas.DataFrame): A subset of the DataFrame representing the first group.
        g2 (pandas.DataFrame): A subset of the DataFrame representing the second group.
        col (str): The name of the column to compare values for.
        labels (list): A list of unique values from the column to use as labels.
        config (dict): A configuration dictionary with keys:
            - title (str): The title of the chart.
            - c1_label (str): The label for the first group's bars.
            - c2_label (str): The label for the second group's bars.
            - xlabel (str): The label for the x-axis.
            - ylabel (str): The label for the y-axis.
    
    Raises:
        ValueError: If the specified column does not exist in the DataFrame.
    
    Example:
        >>> import pandas as pd
        >>> df = pd.DataFrame({'edad_actual': [25, 30, 30, 25, 35], 'gender': ['MAN', 'WOMAN', 'MAN', 'MAN', 'WOMAN']})
        >>> gen = df.groupby('gender')
        >>> group_config = {
        ...     'title': "edad_actual by Gender",
        ...     'c1_label': "Hombres",
        ...     'c2_label': "Mujeres",
        ...     'xlabel': "edad_actual level",
        ...     'ylabel': "Count"
        ... }
        >>> make_vertical_grouped_chart(df, gen.get_group("MAN"), gen.get_group("WOMAN"), "edad_actual", df["edad_actual"].unique(), group_config)

    
`percentage_to_normal(val)`
:   Formats a Series of percentage values with rounding and percentage sign.
    
    Converts a Series of values to percentages, rounds them to one decimal place,
    and adds a percentage sign. The output is formatted as a string.
    
    Args:
        val (pandas.Series): A Series containing numerical values.
    
    Returns:
        pandas.Series: A Series with the same index as the input, but containing
        formatted percentage strings.
    
    Example:
        >>> import pandas as pd
        >>> s = pd.Series([0.1234, 0.5678, 0.9012])
        >>> formatted_percentages = percentage_to_normal(s)
        >>> print(formatted_percentages)
        0    12.3 %
        1    56.8 %
        2    90.1 %
        dtype: object

    
`print_column_uniques(df, col)`
:   

    
`random_hex()`
:   

    
`replace_column_content(df, col, repl)`
:   Replaces values in a DataFrame column using a replacement dictionary.
    
    Modifies a DataFrame column in-place by replacing values based on a
    provided dictionary. The replacement dictionary maps original values to
    their desired replacements. Regular expressions can be used for flexible
    matching.
    
    Args:
        df (pandas.DataFrame): The DataFrame to modify.
        col (str): The name of the column to modify.
        repl (dict): A dictionary containing replacement mappings, where keys
            represent original values and values represent their replacements.
    
    Raises:
        ValueError: If the specified column does not exist in the DataFrame.
    
    Example:
        >>> import pandas as pd
        >>> df = pd.DataFrame({'genero': ['HOMBRE', 'MUJER', 'NO COMPARTO']})
        >>> gen_repl = {
        ...     "HOMBRE": "MAN",
        ...     "MUJER": "WOMAN",
        ...     "NO COMPARTO": "DONT SHARE",
        ... }
        >>> replace_column_content(df, "genero", gen_repl)
        >>> print(df)  # Output:
                       genero
        0                 MAN
        1              WOMAN
        2       DONT SHARE