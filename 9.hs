ans9 = [(round $ a*b*(sqrt (a^2+b^2)), a, b) | a <- [1..1000], b <- [a..1000], a + b + sqrt (a^2+b^2) == 1000]

