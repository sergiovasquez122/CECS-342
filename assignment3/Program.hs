module Program where

import Data.List

data Person = Person {
	name :: String,
	age :: Int
} deriving (Show, Eq)

sortLexicographically :: (Person p) => [p] -> [p]
sortLexicographically xs = sortBy a -> a -> Ordering xs  
