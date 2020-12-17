mirrorListL :: [Int] -> [Int]
mirrorListL = foldl(\result listElem -> listElem:result) []

mirrorListR :: [Int] -> [Int]
mirrorListR = foldr(\listElem result -> result ++ [listElem]) []