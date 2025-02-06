{-# LANGUAGE FlexibleContexts #-}

module Main where

import Data.List (sort, sortBy, compare)

main :: IO ()
main = do
  print $ sort [1,3,2]
  print $ sort ["c","a","b"]
  print $ sortBy compareTuples [(1, "a"), (3, "c"), (2, "b")]

compareTuples :: (Ord a, Ord b) => (a, b) -> (a, b) -> Ordering
compareTuples (a1, b1) (a2, b2) = compare a1 a2
--In this example we sort by the first element of the tuple, change to b1 and b2 if you want to sort by the second element
--For a more complex sorting logic, a custom comparison function can be defined.
