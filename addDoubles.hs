addDoublesR :: [Int] -> Int
addDoublesR l = foldr(\listElem acum -> acum + listElem*2) 0 l		

addDoublesL :: [Int] -> Int
addDoublesL l = foldl(\acum listElem -> acum + listElem*2) 0 l