decimalBinary :: Int -> [Int]
decimalBinary x = decimalBinary' (x, [])

decimalBinary' :: (Int, [Int]) -> [Int]
decimalBinary' (0, l) = l
decimalBinary' (x, l) = if (x `mod` 2 == 0) then (decimalBinary' (x `div` 2, 0:l)) else (decimalBinary' (x `div` 2, 1:l))	