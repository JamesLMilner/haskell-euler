-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10 001st prime number?
ceilSqrt :: Int -> Int
ceilSqrt = ceiling . sqrt . fromIntegral
isPrime n = length [ x | x <- [1..(ceilSqrt n)], n `mod` x == 0 ] == 1

getPrime x n = do
    let prime = isPrime x
    if prime && n == 10000
        then x
    else if prime
        then getPrime (x+1) (n+1)
    else 
        getPrime (x+1) n

answer = getPrime 0 0
