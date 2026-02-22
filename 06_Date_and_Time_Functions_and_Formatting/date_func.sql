/* ============================================================================== 
   SQL Date and Time Functions 

   Date Formats in SQL:
   - 'YYYY-MM-dd' (e.g., '2024-06-01')

   Time Formats in SQL:
   - 'HH:mm:ss' (e.g., '14:30:00')

   Date & Time, is called a timestamp, and is represented as:
   - 'YYYY-MM-dd HH:mm:ss' (e.g., '2024-06-01 14:30:00')
=================================================================================
*/

-- GETDATE() - Returns the current date and time
SELECT GETDATE() AS current_datetime;

-- DATEADD() - Adds a specified number of units to a date
SELECT GETDATE() AS current_datetime,
       DATEADD(DAY, 7, GETDATE()) AS datetime_plus_7_days,
       DATEADD(MONTH, 1, GETDATE()) AS datetime_plus_1_month,
       DATEADD(YEAR, 1, GETDATE()) AS datetime_plus_1_year;

-- DATEDIFF() - Returns the difference between two dates in specified units
SELECT DATEDIFF(DAY, '2024-01-01', GETDATE()) AS days_since_start_of_year,
       DATEDIFF(MONTH, '2024-01-01', GETDATE()) AS months_since_start_of_year,
       DATEDIFF(YEAR, '2020-01-01', GETDATE()) AS years_since_2020;

-- Part Extraction - DATEPART(), DATENAME(), DATETRUNC(), YEAR(), MONTH(), DAY()
SELECT
    orderid,
    creationtime,
    -- DATETRUNC Examples
    DATETRUNC(year, creationtime AS Year_dt,
    DATETRUNC(day, creationtime) AS Day_dt,
    DATETRUNC(minute, creationtime) AS Minute_dt,
    -- DATENAME Examples
    DATENAME(month, creationtime) AS Month_dn,
    DATENAME(weekday, creationtime) AS Weekday_dn,
    DATENAME(day, creationtime) AS Day_dn,
    DATENAME(year, creationtime) AS Year_dn,
    -- DATEPART Examples
    DATEPART(year, creationtime) AS Year_dp,
    DATEPART(month, creationtime) AS Month_dp,
    DATEPART(day, creationtime) AS Day_dp,
    DATEPART(hour, creationtime) AS Hour_dp,
    DATEPART(quarter, creationtime) AS Quarter_dp,
    DATEPART(week, creationtime) AS Week_dp,
    YEAR(creationtime) AS Year,
    MONTH(creationtime) AS Month,
    DAY(creationtime) AS Day
FROM orders;