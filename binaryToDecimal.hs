binarioDecimal :: String -> Int
binarioDecimal s = resultado where
	(result, maxPower) = foldr (\b (acum, pow) -> (acum + if b=='1' then (2^pow) else (0), pow +1)) (0,0) s