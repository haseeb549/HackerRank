Question:
P(R) represents a pattern drawn by Julia in R rows.

Solution:

DECLARE @i INT = 1;
WHILE @i < 21
BEGIN
    print (replicate('* ',@i))
    SET @i = @i + 1;
END;
