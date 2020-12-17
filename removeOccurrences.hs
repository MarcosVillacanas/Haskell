removeOccurrencesR :: (Int,[Int]) -> [Int]
removeOccurrencesR (n,l) = foldr(\listElem result -> if (listElem == n) then result else listElem:result ) [] l

removeOccurrencesL :: (Int,[Int]) -> [Int]
removeOccurrencesL (n,l) = foldl(\result listElem -> if (listElem==n) then result else result++[listElem]) [] l