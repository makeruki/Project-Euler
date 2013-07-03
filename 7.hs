sieve [] = []
sieve (x:xs) = x:sieve [y | y <- xs, y `mod` x /= 0]

ans7 = sieve [2..] !! 10000

