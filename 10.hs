-- sieve [] = []
-- sieve (n:ns) = n : sieve [m | m <- ns, m `mod` n /= 0]
-- ans10 = sum $ sieve [2..(2*10^6 - 1)]
-- 
-- p=2:3:2#p;m#(a:b:x)=[n|n<-[a^2..b^2-2],gcd m n<2]++(m*b)#(b:x)
p = 2:3:2#p
	where m # (a:b:x) = 
		[n | n <- [a^2..b^2-2], gcd m n < 2] ++ (m * b) # (b:x)


