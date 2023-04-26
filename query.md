# query 1
This query joins the Country_Table and Indicators_Table tables on the CountryCode column and selects the Region, Year, Value, and IndicatorCode columns from the Indicators_Table. The WHERE clause filters the data to include only the indicators related to clean water access in urban and rural populations, and the Year between 2000 and 2020.

The query uses conditional aggregation to calculate the total number of people in urban and rural areas with access to clean water in each region and year. The SUM function is used with a CASE statement to count the number of people in urban and rural areas with access to clean water for each region and year.

Finally, the results are grouped by region and year and sorted in ascending order by region and year. This allows us to see the trends in clean water access in urban and rural populations in different regions over time.

# query 2
A
This query will return the area of arable land (Value) for all countries (CountryCode) and all years (Year).
B
This query will return the percentage of children (ages 5-14) who are employed in agriculture (Value) for all countries (CountryCode) and all years (Year) between 2000 and 2010, as well as the country's income group (IncomeGroup) and region (Region).

We can then analyze the data to see if there is any correlation between changes in arable land and child employment in agriculture within a certain income group or region. Note that correlation does not necessarily imply causation, so we should be careful when drawing conclusions from the data.

# query 3

This query selects data for each country in the East Asia & Pacific region where data is available for both the area of arable land and child employment in agriculture. The output includes the country name, year, arable land area per person, and the percentage of children ages 7-14 who are employed in agriculture. The results are ordered by country name and year.

To answer the second part of the question, would need to analyze the results to see if there is any correlation between changes in the area of arable land and child employment in agriculture. We could use statistical analysis tools to do this, or we could simply look for patterns in the data.