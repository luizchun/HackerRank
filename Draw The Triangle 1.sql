/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).
*/


DECLARE @cnt INT = 20;
DECLARE @STR AS VARCHAR(50) = '* * * * * * * * * * * * * * * * * * * *';

WHILE @cnt != 0
BEGIN
   SELECT SUBSTRING(@STR, 1, @cnt*2) AS Result;
   SET @cnt = @cnt - 1;
END;
