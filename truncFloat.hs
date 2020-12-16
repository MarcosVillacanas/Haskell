truncFloat :: Float -> (Int,Int)
truncFloat	x = (fromInteger(truncate x), fromInteger(truncate(x*100)) - fromInteger((truncate x)*100) )