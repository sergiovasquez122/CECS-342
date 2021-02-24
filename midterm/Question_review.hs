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

