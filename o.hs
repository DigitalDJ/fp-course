x :: Integer
x = 5

f :: Integer -> Integer
f q = q + 10

g :: Integer -> Integer -> Integer
g a b = (a + b) * 2

h =
  \a b -> (a + b) * 2

i :: (Integer -> Integer) -> Integer
i q = q 99

pie :: Integer
pie = 3

data Shape = Circle Integer | Rectangle Integer Integer | Square Integer
  deriving (Show)

instance Eq Shape where
  -- Shape -> Shape -> Bool
  (==) (Circle x) (Circle y) = x == y
  Circle x == Circle y = x  == y
  Square x == Square y = x == y
  Rectangle a b == Rectangle c d = (a == c) && (b == d)
  Rectangle a b == Square x = (a == x) && (b == x)
  _ == _ = False

perimeter :: Shape -> Integer
perimeter (Circle r) = 2 * pie * r
perimeter (Rectangle w h) = (w + h) * 2  
perimeter (Square s) = (4 * s) 

class Eqq x where
  (.==) :: x -> x -> Bool