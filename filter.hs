filter :: ((a->Bool),[a]) -> [a]
filter (f,list) = foldl (\result listElem -> if (f listElem) then result ++ [listElem] else result) [] list