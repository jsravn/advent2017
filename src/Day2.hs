module Day2
  ( day2p1
  , day2p2
  ) where

import           Data.Foldable
import           Data.Maybe
import           Safe.Foldable

toMatrix :: String -> [[Integer]]
toMatrix = map g . lines
  where
    g = map read . words

-- Part 1
---------
day2p1' :: [[Integer]] -> Integer
day2p1' = foldr f 0
  where
    f xs acc = acc + maximumDef 0 xs - minimumDef 0 xs

day2p1 :: String -> Integer
day2p1 = day2p1' . toMatrix

-- Part 2
---------
pairwiseShift :: Int -> [a] -> [(a, a)]
pairwiseShift n str = zip infstr infstr'
  where
    infstr = cycle str
    infstr' = drop n infstr

findEvenlyDivPair :: [(Integer, Integer)] -> Integer
findEvenlyDivPair xs = fromMaybe 0 f
  where
    f = uncurry quot <$> find isEvenDiv xs
    isEvenDiv (a, b) = mod a b == 0

evenlyDiv :: [Integer] -> Integer
evenlyDiv xs = findEvenlyDivPair l
  where
    len = length xs
    l = concatMap (take len . flip pairwiseShift xs) [1 .. len - 1]

day2p2' :: [[Integer]] -> Integer
day2p2' = foldr f 0
  where
    f xs acc = evenlyDiv xs + acc

day2p2 :: String -> Integer
day2p2 = day2p2' . toMatrix
