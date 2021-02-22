-- FunctionsConsumingLists.hs
--
-- CECS 342
-- Haskell vs C
--
-- Functions consuming lists

module FunctionsConsumingLists where

import Prelude hiding (head, tail,sum, product, length, foldr)

-- List syntax in Haskell:
list1 = [1, 2, 3] -- syntactic sugar
list2 = 1 : 2 : 3 : [] -- unsugared
list3 = 1 : (2 : (3 : [])) -- even more unsugared

-- Strings are just lists of characters:
list4 = "This is a list of characters" -- list4 :: [Char]

-- Some simple functions on lists
-- using pattern matching to deconstruct lists:
head [] = error "Can't get head of empty list"
head (x:_) = x -- get the first element of list

tail [] = error "Can't get the tail of empty list"
tail (_:xs') = xs' -- get the list without the first element

-- Some recursive functions on lists:
sum [] = 0
sum (x:xs') = x + sum xs'

product [] = 1
product (x:xs') = x * product xs'

length [] = 0
length (_:xs') = 1 + length xs'
-- Above functions using accumulator idiom
sum_accum xs = helper xs 0
	where 
		helper [] acc = acc
                helper (x:xs') acc = helper (xs') (acc + x)

product_accum xs = helper xs 1
	where helper[] acc = acc
              helper (x:xs') acc = helper (xs') (x * acc)

length_accum xs = helper xs 0
	where helper [] acc = acc
              helper (_:xs') acc = helper xs' (1 + acc)

-- The above functions all share the same recursion pattern
foldr f z [] = z -- base case return accumulator
foldr f z (x:xs') = x `f` (foldr f z xs')
-- Intuitively foldr combines elements from the right:
-- foldr (+) 0 [1, 2, 3]
-- == foldr (+) 0 (1 : (2 : (3 : [])))
-- ==           1 + (2 + (3 + 0))

-- Thus we can define them in terms for foldr:
sum' = foldr (+) 0
product' = foldr (*) 1
-- foldr (*) 1 [1, 2, 3]
-- == foldr (*) 1 (1 : (2 : (3: [])))
-- == 1 * (2 * (3 * 1))
length'  = foldr (\a b -> 1 + b) 0
-- foldr (\a b -> 1 + b) 0 [1, 2, 3,]
-- foldr (\a b -> 1 + b) 0 1 : (2 : (3 : []))
-- == 1 + (1 + (1 + 0))

-- (+) :: (Num a) => a -> a -> a
-- (+ 1) :: (Num a) => a -> a