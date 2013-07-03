f5 n m  | n == 1 = [] 
		| n `mod` m == 0 = m : f5 (n `div` m) m 
		| otherwise = f5 n (m+1)

count n ns = length [x | x <- ns, n == x]

nss = [f5 m 2 | m <- [2..20]]
-- ans5 = [zip n (maximum $ count n l) | n <- [2..20], l <- ls5]
-- nss2 = [count n ns | n <- [2..20], ns <- nss]
nss2 21 = []
nss2 m = maximum [count m ns | ns <- nss] : nss2 (m+1)
tuple5 = zip [2..20] $ nss2 2

ans5 = product [(fst t) ^ (snd t) | t <- tuple5]
