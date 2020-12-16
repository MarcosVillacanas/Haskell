areSorted :: (Int, Int, Int) -> Bool
areSorted (x,y,z) = if ((z>=y)&&(y>=x)) then True else False

sorting :: (Int, Int, Int) -> (Int, Int, Int)
sorting (x,y,z) = 
					if (x>=y) then
						if (y>=z) then
							(x,y,z)
						else if ((x>=z)&&(z>=y)) then
							(x,z,y)
						else
							(z,x,y)
					else
						if (x>=z) then
							(y,x,z)
						else if ((y>=z)&&(z>=x)) then
							(y,z,x)
						else
							(z,x,y)		