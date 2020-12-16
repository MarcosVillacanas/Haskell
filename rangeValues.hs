rangeValues :: Int -> [Char]	
rangeValues x
	| (x>20) = a++" higher than 20"	
	| (x<10) = a++" lower than 10"	
	| otherwise = a++" highen than 10 and lower than 20"	
	where a = "The number is "