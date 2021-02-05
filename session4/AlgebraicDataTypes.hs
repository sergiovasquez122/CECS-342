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

isFemale g = case g of -- pattern matching is sugared version of this
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

-- Declare an order on person (by name)
instance Ord Person where
	p <= q = name p <= name q

-- A list of some of some people
somePeople = [Person "Alice" 19 Female, Person "Bob" 20 Male, Person "Carol" 17 Female, Person "Dave" 30 Male]
