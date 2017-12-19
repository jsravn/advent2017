module Day1
  ( day1
  ) where

import Data.Char

pairwise :: String -> [(Char, Char)]
pairwise str = zip infstr infstr'
  where
    infstr = cycle str
    infstr' =
      case infstr of
        s:ss -> ss
f :: (Char, Char) -> Integer -> Integer
f (a, b) acc
  | a == b = acc + toInteger (digitToInt a)
  | otherwise = acc

day1' :: String -> Integer
day1' s = foldr f 0 pws
  where
    pws = take (length s) (pairwise s)

day1 :: String -> String
day1 = show . day1'
