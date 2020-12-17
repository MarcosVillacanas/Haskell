nHigher :: (Int,[Int]) -> [Int]
nHigher (n,l) = drop (length(l)-n) (mergeSort(l))

mergeSort :: [Int] -> [Int]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort x = merge (mergeSort (take (length (x) `div` 2) x)) (mergeSort (drop (length (x) `div` 2) x))

merge :: [Int] -> [Int] -> [Int]
merge x [] = x
merge [] x = x
merge (x1:xs) (y:ys) = if (x1>y) then y:(merge (x1:xs) ys) else x1:(merge (y:ys) xs)