-- AlgebraicDataTypes.hs
--
-- CECS 342
-- Haskell Vs C
--
-- Algebraic Data Types
module AlgebraicDataTypes where

import Data.Foldable 
---------------
-- (1) Co-Product (disjuction, enumeration)
---------------
data Gender = Female | Male deriving (Show, Eq)

isMale :: Gender -> Bool
isMale Male = True
isMale _ = False

isFemale g = case g of
	       Female -> True
               otherwise -> False

------------------
-- (2) Product (Conjuction, tuple, struct)
------------------
data Person = Person String Int Gender deriving (Show, Eq)

name :: Person -> String
name (Person n _ _) = n

age :: Person -> Int
age (Person _ a _) = a

gender :: Person -> Gender
gender (Person _ _ g) = g
