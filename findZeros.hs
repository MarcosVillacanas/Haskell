findZeros :: [Int] -> Int
findZeros l = if (last l == 0) then count + 1 else count
	where (count, prevZero) = foldl(\(count,prevZero) listElem -> if (listElem==0) then (count,True) 
									else (if (prevZero) then (count+1,False) else (count,False))) (0,False) l