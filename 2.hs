fibonacci :: Int->Int
fibonacci 0 = 1
fibonacci 1 = 2
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

ans2 = sum [x | x <- (takeWhile (< 4*10^6) (map fibonacci [1..])), even x]

-- liosk.blog103.fc2.com/blog-entry-138.html
ans2' = sum [x | x <- takeWhile (< 4000000) fib, even x]
	where fib = 1:2:[x + y | (x,y) <- zip fib (tail fib)]

