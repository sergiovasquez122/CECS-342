module Program where

import Data.List 
import Data.Ord

data Person = Person {
	name :: String ,
	age :: Int
} deriving (Show, Eq, Ord)

sortLexicographically :: [Person] -> [Person]
sortLexicographically = sortBy (\x y -> compare (name x) (name y))