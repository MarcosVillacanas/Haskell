divide :: Float->(Int, Integer)
--divide x = (truncate x, truncate(x*100 - (truncate x)*100))
--returns an error because x*100 is real and second division element is integer
divide x = (truncate x, truncate(x*100 - fromInteger((truncate x)*100)))