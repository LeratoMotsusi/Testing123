------------------------------------------------------------------------------------
--CURRENT DATES & TIMES
------------------------------------------------------------------------------------

SELECT CURRENT_DATE(); --- Todays date only
SELECT CURRENT_TIMESTAMP(); --- Timestamp
SELECT NOW();--- Timestamp

------------------------------------------------------------------------------------
--TIME ZONE CONVERSIONS
------------------------------------------------------------------------------------

SELECT FROM_UTC_TIMESTAMP ('2026-06-10 20:00:00', 'Africa/Johannesburg'); ---Converting from UTC to a specific timezone
SELECT FROM_UTC_TIMESTAMP ('2026-06-22 20:00:00', 'America/New_York'); ---Converting from UTC to a New York timezone
SELECT FROM_UTC_TIMESTAMP ('2026-06-30 20:00:00', 'Africa/Lagos');---Converting from UTC to a Lagos timezone
---SELECT CURRENT_TIMESTAMP (AT TIMEZONE 'Africa/Johannesburg'); ----- TBI


------------------------------------------------------------------------------------
--EXTRACTING DATE PARTS - For easier analysis of data points in the date column
------------------------------------------------------------------------------------

SELECT YEAR('2026-06-10') AS Year,
       MONTH('2026-06-10') AS Month,
       DAY('2026-06-10') AS Day,
       MONTHNAME('2026-06-10') AS Month_name,
       DAYNAME('2026-06-10') AS Day_name,
       MINUTE('2026-06-10 20:30:00') AS Minute,
       SECOND('2026-06-10 20:30:45') AS Second,
       DAYOFWEEK('2026-10-13') AS Leratos_birthday,
       DAYOFYEAR('2026-10-13') AS Day_of_year,
       WEEKOFYEAR('2026-10-13') AS Week_of_Year,
       QUARTER('2026-10-13') AS Quarter_of_Year;




SELECT `Product Category`,
        `Total Amount`,
        Gender,
        Date,
        YEAR(Date) AS Year, --- New column added to enhance your table for analysis
        MONTH(Date) AS Month,
       DAY(Date) AS Day,
       MONTHNAME(Date) AS Month_name,
       DAYNAME(Date) AS Day_name
FROM brightlearn.data.retail_sales;






SELECT EXTRACT (YEAR FROM '2026-06-10') AS Year,
        EXTRACT (MONTH FROM '2026-06-10') AS Month,
        EXTRACT (DOW FROM '2026-10-13') AS Dow; --- Day of week






















