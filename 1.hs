-- Find the sum of all the multiples of 3 or 5 below 1000.
multiples = sum [ if x `mod` 3 == 0 || x `mod` 5 == 0 then x else 0 | x <- [1..999]] 
