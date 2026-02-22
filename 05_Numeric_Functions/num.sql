/* ============================================================================== 
   SQL Numeric Functions
=================================================================================
*/

-- Absolute Value
SELECT 
    -10 AS original_number,
    ABS(-10) AS absolute_value_negative,
    ABS(10) AS absolute_value_positive;

-- Ceiling and Floor
SELECT 
    3.7 AS original_number,
    CEILING(3.7) AS ceiling_value,
    FLOOR(3.7) AS floor_value;

-- Power and Square Root
SELECT 
    4 AS base,
    2 AS exponent,
    POWER(4, 2) AS power_result,
    SQRT(16) AS square_root_result;

-- Rounding
SELECT 
    3.14159 AS original_number,
    ROUND(3.14159, 2) AS rounded_value,
    ROUND(3.14159, 0) AS rounded_to_integer;