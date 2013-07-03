ans4 = maximum [ x * y | x <- [100..999], y <- [x..999], reverse (f4 (x*y)) == f4 (x*y)]

f4 n | n == 0 = []
	| otherwise = n `mod` 10 : f4 (n `div` 10)



