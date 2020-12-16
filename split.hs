split :: [Int] -> ([Int],[Int])
split l = foldl(\(y,z) listElem -> if (listElem>=0) then (y++[listElem],z) else (y,z++[listElem])) ([],[]) l