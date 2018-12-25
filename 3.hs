-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

ceilSqrt :: Int -> Int
ceilSqrt = ceiling . sqrt . fromIntegral

oddFactors n = [ x | x <- [1..ceilSqrt n], odd x, n `mod` x == 0 ]

largestPrimeFactor n =
    maximum [ x | x <- oddFactors n, length (oddFactors x) == 1] 
-- If the number of odd factors is one then it's prime :)
