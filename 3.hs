num = 600851475143
-- num = 13195
-- num = 60085
factor n = [x | x <- [1..n], n `mod` x == 0]
--prime = [x | x <- [2..], factor x == [1, x]]
--ans3 = maximum [x | x <- (takeWhile (< num) prime), num `mod` x == 0]
--
-- prime = 2:[x | x <- [3..100], all (/= 0) (map (x `mod`) prime)]

-- sieve [] = []
-- sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]
-- primes = sieve [2..]
-- ans3 = maximum [x | x <- (takeWhile (< 100) primes), num `mod` x == 0]

-- isPrime n = factor n == [1, n]
-- ans3 = [x | x <- [2..num], and [num `mod` x == 0, isPrime x]]

-- f :: Fractional Int -> Fractional Int -> Fractional Int
-- f :: Int -> Int -> [Int]
f :: Integer -> Integer -> [Integer]
f 1 _ = []
f n m = if n `mod` m == 0 then m : (f (n `div` m) m) else f n (m+1)


