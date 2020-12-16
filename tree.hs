data Tree = AV | Node Int (Tree) (Tree) deriving (Show)

instance Eq Tree where
	(==) t1 t2 = same t1 t2

instance Num Tree where
	fromInteger n = Node (fromInteger(n)) AV AV
	abs t = abs(t)
	signum t = signum(t)
	negate t = negate(t)
	(+) t1 t2 = add t1 t2
	(*) t1 t2 = mult t1 t2
	
		
absolute:: Int -> Int
absolute t = if (t>=0) then t else -t

abs :: Tree -> Tree
abs AV = AV
abs (Node t lc rc) = Node (absolute(t)) (abs(lc)) (abs(rc))

sign :: Int -> Int
sign n 
	| n > 0 = 1
	| n < 0 = -1
	| otherwise = 0

signum :: Tree-> Tree
signum AV = AV
signum (Node t lc rc) = Node (sign(t)) (signum(lc)) (signum(rc))

negate :: Tree-> Tree
negate AV = AV
negate (Node t lc rc) = Node (negate(t)) (negate(lc)) (negate(rc))

add :: Tree -> Tree -> Tree
add AV AV = AV
add AV (Node t lc rc) = Node t (add AV lc) (add AV rc)
add (Node t lc rc) AV = Node t (add lc AV) (add rc AV)
add (Node t lc rc) (Node a2 lc2 rc2) = Node (t+a2) (add lc lc2) (add rc rc2)

mult :: Tree -> Tree -> Tree
mult AV AV = AV
mult AV (Node t lc rc) = Node 0 (mult AV lc) (mult AV rc)
mult (Node t lc rc) AV = Node 0 (mult lc AV) (mult rc AV)
mult (Node t lc rc) (Node a2 lc2 rc2) = Node (t*a2) (mult lc lc2) (mult rc rc2)

same :: Tree -> Tree -> Bool
same AV AV = True
same AV _ = False
same _ AV = False
same (Node t lc rc) (Node a2 lc2 rc2) = (t==a2) && (same lc lc2) && (same rc rc2)