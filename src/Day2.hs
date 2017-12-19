module Day2
  ( day2p1
  ) where

day2p1' :: [[Integer]] -> Integer
day2p1' = foldr f 0
  where f xs acc = acc + maximum xs - minimum xs

day2p1 :: String -> Integer
day2p1 = day2p1' . f
  where
    f = map g . lines
    g = map read . words
