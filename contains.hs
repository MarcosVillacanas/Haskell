contains :: (Int,[Int]) -> Bool
contains (number,lista) = foldr (\listElem bool -> (listElem == number) || bool) False lista