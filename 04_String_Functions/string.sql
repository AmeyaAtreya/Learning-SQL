use salesdb;

/* ============================================================================== 
   SQL String Functions- manipulation, transformation, and extraction of text data efficiently.
=================================================================================
*/

-- CONCAT(): Combines mutiple strings into one
SELECT 
    CONCAT(firstname, ' ', lastname) AS full_name
FROM customers;

-- LOWER() & UPPER(): Case Transformation
-- Convert the first name to lowercase
SELECT 
    LOWER(firstname) AS lower_case_name
FROM customers;

-- Convert the first name to uppercase
SELECT 
    UPPER(firstname) AS upper_case_name
FROM customers;

-- TRIM(): Removes leading and trailing spaces
SELECT 
	TRIM(firstname) 
FROM customers;

-- REPLACE(): Replace or Remove old value with new one
SELECT
'123-456-7890' AS phone,
REPLACE('123-456-7890', '-', '/') AS clean_phone;

-- LEN()/LENGTH()
SELECT LENGTH(firstname) from customers;

-- LEFT() & RIGHT() - Substring Extraction
SELECT 
    firstname,
    LEFT(firstname, 2) AS first_2_chars
FROM customers;

-- Retrieve the last two characters of each first name
SELECT 
    firstname,
    RIGHT(firstname, 2) AS last_2_chars
FROM customers;

-- SUBSTRING(): Retrieves part of string at a specified position
-- SYNTAX: SUBTRING(col_name,start,length)
-- Retrieve a list of customers' first names after removing the first character
SELECT 
    firstname,
    SUBSTRING(TRIM(firstname), 2, LENGTH(firstname)) AS trimmed_name
FROM customers	;