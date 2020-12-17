addLast :: (Int,[Int]) -> [Int]
addLast (n,l) = foldr(\listElem result -> listElem:result) [n] l 