-- By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

getFibSum n summed = do
    let fibn = (fib n)
    if fibn < 4000000
        then 
            if even fibn
                then getFibSum (n+1) (fibn + summed)
            else getFibSum (n+1) summed
    else summed
