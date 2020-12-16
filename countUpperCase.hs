countUpper :: [Char] -> Int
countUpper st = length (countUpper' st)

countUpper' :: [Char] -> [Char]
countUpper' st = [x | x <- st, isUpper x]