-- FunctionsProducingLists.hs
--
-- CECS 342
-- Haskell vs C
--
-- Functions producing lists


module FunctionsProducingLists where

import Prelude hiding (map, filter, foldl, flip, reverse)
import Data.Char (toUpper)

-- Apply a function to each element in a list
-- map :: (a -> b) -> [a] -> [b]
map  f [] = []
map f (x:xs') = f x : map f xs'

-- Filter out all elements that have property p
-- filter :: (a -> bool) -> [a] -> [a]
filter p [] = []
filter p (x:xs') = if p x
		  then filter p xs'
                  else x : filter p xs'

-- Tail recursive fold with an accumulating parameter
foldl f z [] = z
foldl f z (x:xs') = foldl f (f z x) xs'
-- Intuitively foldl combines the elements from the left:
-- foldl (+) 0 [1, 2, 3] == ((0 + 1) + 2)

-- Flip the arguments of any 2-argument-function
flip f a b = f b a

-- Reversea a list
reverse :: [a] -> [a]
reverse = foldl (flip(:)) []
-- trace
-- foldl (flip(:)) [] [1, 2, 3]
-- == 3 : (2 : (1:[]))
