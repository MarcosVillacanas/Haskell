countOccurrences :: ([Char],Char) -> Int
countOccurrences (l,c) = length (countOccurrences' (l,c))

countOccurrences' :: ([Char],Char) -> [Char]
countOccurrences' (l,c) = [x | x <- l, x==c]