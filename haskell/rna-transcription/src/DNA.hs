module DNA (toRNA) where

toRNA :: String -> Either Char String
toRNA xs = traverse fromDNA xs

fromDNA :: Char -> Either Char Char
fromDNA c
  | c == 'G' = Right 'C'
  | c == 'C' = Right 'G'
  | c == 'T' = Right 'A'
  | c == 'A' = Right 'U'
  | otherwise = Left c
