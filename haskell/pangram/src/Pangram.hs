module Pangram (isPangram) where

import Data.Char

isPangram :: String -> Bool
isPangram text = all hasLetter ['a' .. 'z']
  where hasLetter l = any (== l) (map toLower text)
