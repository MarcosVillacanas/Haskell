firstLast :: [Char] -> [Char]
firstLast st = a++st++" is: "++[head st]++" and the last one is: "++[last st]
	where a = "First letter among these chars "	