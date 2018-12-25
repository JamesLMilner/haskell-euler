-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


-- General thoughts; we don't need to check 1 and 20 as they're a given
-- if we're incrementing in 20s. also works backwards from 19 rather than 
-- forward from 2 because 2, 3 etc are more common factors than 19, 18
smallestDivisible i val = 
    if even val && i >= 2 && (val `rem` i == 0)
        then if i == 2
            then val 
        else smallestDivisible (i-1) val
    else smallestDivisible 19 (val+20)

answer = smallestDivisible 19 20
