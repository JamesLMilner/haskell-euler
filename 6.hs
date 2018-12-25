-- Find the difference between the sum of the squares of 
-- the first one hundred natural numbers and the square of the sum.

sumSqrs = sum [ x * x | x <- [1..100]]
sqrSums = sum [1..100] * sum [1..100]
answer = sqrSums - sumSqrs
