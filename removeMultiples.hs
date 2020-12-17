removeMultiples :: (Int,[Int]) -> [Int]
removeMultiples (num, list) = foldr (\listElem result -> if ((listElem `mod` num) == 0) then result else listElem:result) [] list