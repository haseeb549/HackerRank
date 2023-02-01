Question 

Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each 
non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands 
that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the 
result in order of descending age.


Solution :

SELECT a.id, b.age, a.coins_needed, a.power
FROM WANDS AS a
JOIN WANDS_PROPERTY AS b ON a.CODE = b.CODE
JOIN (SELECT age AS ag, MIN(coins_needed) AS mcn, power AS pw
FROM WANDS AS c
JOIN WANDS_PROPERTY AS d ON c.CODE = d.CODE
WHERE IS_EVIL = 0
GROUP BY power, age) AS Q ON b.age = ag AND a.coins_needed = mcn AND a.power = pw
ORDER BY a.power DESC, b.age DESC

