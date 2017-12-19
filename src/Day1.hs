module Day1
  ( day1p1
  , day1p2
  ) where

import           Data.Char

pairwiseShift :: Int -> String -> [(Char, Char)]
pairwiseShift n str = zip infstr infstr'
  where
    infstr = cycle str
    infstr' = drop n infstr

-- Part 1
---------
f :: (Char, Char) -> Integer -> Integer
f (a, b) acc
  | a == b = acc + toInteger (digitToInt a)
  | otherwise = acc

day1p1' :: String -> Integer
day1p1' s = foldr f 0 pws
  where
    pws = take (length s) (pairwiseShift 1 s)

day1p1 :: String -> String
day1p1 = show . day1p1'

-- Part 2
---------

day1p2' :: String -> Integer
day1p2' s = foldr f 0 pws
  where
    pws = take l (pairwiseShift (l `div` 2) s)
    l = length s

day1p2 :: String -> String
day1p2 = show . day1p2'
