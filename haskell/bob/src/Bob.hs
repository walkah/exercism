module Bob (responseFor) where

import           Data.Char (isLower, isSpace, isUpper)
import           Data.List (dropWhileEnd)

responseFor :: String -> String
responseFor xs
  | isSilent xs = "Fine. Be that way!"
  | isQuestion xs && isYelling xs = "Calm down, I know what I'm doing!"
  | isQuestion xs = "Sure."
  | isYelling xs = "Whoa, chill out!"
  | otherwise = "Whatever."

isQuestion :: String -> Bool
isQuestion s =  (last (dropWhileEnd isSpace s)) == '?'

isYelling :: String -> Bool
isYelling s = (any isUpper s) && not (any isLower s)

isSilent :: String -> Bool
isSilent = all isSpace
