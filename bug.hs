{-# LANGUAGE FlexibleContexts #-}

module Main where

import Data.List (sort)

main :: IO ()
main = do
  print $ sort [1,3,2] -- this works fine
  print $ sort ["c","a","b"] -- this also works fine
  print $ sort [(1, "a"), (3, "c"), (2, "b")] -- this will fail

