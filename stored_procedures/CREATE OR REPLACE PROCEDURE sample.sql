
CREATE DATABASE DEV_SP;

USE SCHEMA DEV_SP.PUBLIC;
CREATE OR REPLACE PROCEDURE get_current_Date(input_param VARCHAR)
RETURNS TABLE (result_column date)
LANGUAGE SQL
AS
$$
DECLARE 
    res resultset;
BEGIN
    res := (SELECT CURRENT_DATE() AS result_column);
    RETURN TABLE(res);
END 
$$;

CALL get_current_Date('test');


SELECT CURRENT_DATE();