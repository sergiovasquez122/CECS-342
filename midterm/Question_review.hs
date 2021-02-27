module Question_review where

-- Which Haskell language feature is used where other languages would use NULL pointers?
-- 1. lazy evaluation
-- 2. type classes
-- 3. monads
-- 4. algebraic datatypes, in particular co-products
-- 4 is the correct answer

-- evaluate the following Haskell fold expressions:
-- foldl (-) 5 [1, 2, 3]
-- ((5 - 1) - 2) - 3
-- -1

-- Evaluate the following Haskell fold expression:
-- foldr (-) 0 [1, 2, 3]
-- 1 - (2 - (3 - 0))
-- 1 - (-1)
-- 2

-- Evaluate the following Haskell fold expression:
-- foldl (-) 0 [1, 2, 3]
--  ((0 - 3) - 2) - 1
-- ((-5) - 1)
-- -6

-- Evaluate the following Haskell fold expression:
-- foldl (+) 0 [1, 2, 3]
-- 6

-- Evaluate the following Haskell fold expression:
-- foldr (+) 0 [1, 2, 3]
-- 1 + (2 + (3 + 0))
-- 6

-- Evaluate the following Haskell fold expression:
-- foldr (+) 5 [1, 2, 3]
-- 1 + (2 + (3 + 5))
-- 11

-- Consider the following Haskell data type and function definitions:
-- data (a, b) = (a, b)
-- fst (a, _) = a
-- snd (_, b) = b
--
-- What kind of functions are fst and snd?
-- 1. setters
-- 2. injections
-- 3. projections
-- 4. methods
-- 5. bijections
-- 3 is the correct answer

-- What makes a recursive function definition tail recursive?
-- 1. the function has at most one argument
-- 2. the function has no side effects
-- 3. it contains exactly one recursive call and its return value is immediately returned by the calling function
-- 4. the function returns a Boolean
-- 5. the function has no local variables
-- 3 is the correct answer

-- which language feature is not a feature of Haskell?
-- 1. parameteric polymorphism
-- 2. tail recursion
-- 3. type inference
-- 4. mutable variables
-- 4 is the correct answer

-- what is the type of foldl from class
-- (b -> a -> b) -> b -> [a] -> b

-- Can foldl be implemented tail recursively and can foldr be implemented tail recursively
-- only foldl can implement tail recursively.

-- what is the type definition of the following function?
-- max a b = if a < b then a else b
-- max :: a -> b -> c
-- max :: a -> b -> a
-- max :: a -> a -> a
-- max :: (Ord a) => a -> a -> a
-- max :: (Ord a) => a -> a -> a is the correct answer

