module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n = if n <= 0 then Nothing else step 0 n

step :: Integer -> Integer -> Maybe Integer
step count n
  | n == 1     = Just count
  | even n     = step (count + 1) (n `div` 2)
  | otherwise  = step (count + 1) (3 * n + 1)
