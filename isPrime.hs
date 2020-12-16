factors :: Int -> [Int]
factors n = [x | x <- [2..n-1], n `mod` x == 0]

isPrime :: Int -> Bool
isPrime n = length (factors n) == 0