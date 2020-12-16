oddEven :: [Int] -> [[Int]]
oddEven lista = foldl (\([y,z]) x -> if odd x then [y++[x],z]
										else [y,z++[x]]) [[],[]] lista 	