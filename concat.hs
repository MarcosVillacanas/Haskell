concat :: [[Int]] -> [Int]
concat l = [x | y <- l, x <- y]		