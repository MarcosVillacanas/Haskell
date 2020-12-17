orderedInsertion :: (Int,[Int]) -> [Int]
orderedInsertion (n,l) = result
	where (result, boolAux) = foldl(\(result,inserted) listElem -> if ((n>listElem)||inserted) then (result ++ [listElem], inserted) else (result ++ [n] ++ [listElem], True)) ([], False) l
