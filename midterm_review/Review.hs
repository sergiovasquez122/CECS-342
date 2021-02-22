module Review where

-- 1. In Haskell the list [1, 2, 3] is just syntatic sugar for 
-- a. 1 : (2 : 3)
-- b. 1 : (2 : (3 : []))
-- c. (1 : 2) : 3
-- d. (([] : 1) : 2) : 3
-- b is the correct answer

-- 2. Evaluate foldr (+) 0 [1, 2, 3]
-- a. 0
-- b. 2
-- c. 4
-- d. 6
-- d is the correct answer

-- Evaluate the following expresssion
-- 3. foldr (-) 0 [1, 2, 3]
--  1 - (2 - (3 - 0))
--  1 - (-1)
--  2

-- Which of the follwoing two Haskell functions are tail recursive?
-- foldr
-- foldl
-- -none-
-- -both-
-- foldl is the correct answer

-- evaluate the following expression
-- map (: "") "hi!"
-- ["h", "i", "!"]

-- What's the type of the concatenation operator ++
--  (++) :: [a] -> [a] -> [a]

-- How would you add an element x to a list xs in Haskell?
-- x : xs

-- What language feature is used in Haskell to create lists?
-- the data construcgtors ":" and "[]"

-- Which of the following could be the type of a sort function in Haskell?
-- sort :: Ord a => [a] -> [a]

-- Which kind o recursion is an important concept in functional programming
-- a. head recursion
-- b. neck recursion
-- c. arm recursion
-- d. leg recursion
-- e. tail recursion
-- e is the correct answer

-- What does it mean that Haskell is a pure functional programming language?
-- The evaluation of expressions has no side-effects

-- Which technique can be used to transform a recursive funciton into an equivalent tail recursive function?
-- accumulating parameters

-- 4. In the Haskell function definition
-- product [] = 1
-- product (x:xs) = x * product xs
-- we used an example of
-- a. list concatentation
-- b. pattern matching
-- c. incorrect syntax
-- d. tail recursion
---  b is the correct answer

-- 5. Which Haskell language feature is used where other languages would use NULL
-- a. lazy evaluation
-- b. monads
-- c. algebraic data types, in particular co-products
-- d. type classes
-- c is the correct answer

-- 6. what makes a recursive function definition tail recursive?
-- a. the function has at most one argument
-- b. the function has no local variables
-- c. there's exactly one recursive call and its return value is immediately returned by the calling function
-- d. the function returning a Boolean
-- c is the correct answer

-- 7. Consider the Haskell function definition
-- const x _= x
-- evaluate 
--  const (1+) 10 100
-- 101

-- 8. Consider the Haskell function definition
-- const x _ = x
-- what is the type of const?
-- a. const :: a -> b -> c
-- b. const :: a -> b -> a
-- c. const :: a -> b -> b
-- d. const :: a -> a -> b
-- e. const :: b -> b -> a
-- b is the correct answer

-- 9.  Consider the Haskell function definition
-- const x _ = x
-- evaluate the Haskell expression
-- foldr (const (1+)) 0 [1, 2, 3]
--  3 is the correct answer

-- 10. What does the function foldr (++) [] do?
-- a. concatenate two list
-- b. flatten a list of lists
-- c. reverse a list
-- d. count the elements of a list
-- e. nothing
-- b is the correct answer

-- 11. What does the following evaluate to 
-- foldr (+) 0 [1, 2, 3]
-- 1 + (2 + (3 + 0))
-- 6

-- 12. What does the following evaluate to 
-- foldr (-) 0 [1, 2, 3]
-- 1 - (2 - (3 - 0))
-- 1 - (-1)
-- 2

-- 13. What does the following evaluate to 
-- foldr (-) 7 [1, 2, 3]
-- 1 - (2 - (3 - 7))
-- 1 - (2 - (-4))
-- 1 - (6)
-- -5

-- 14. What does the following evaluate to 
-- foldr (:) [] [1, 2, 3]
-- 1 : (2 : (3 : []))
-- [1, 2, 3]

-- 15. What does the following evaluate to 
-- foldl (-) 7 [1, 2, 3]
-- ((7 - 1) - 2) - 3
-- 1

-- 16. What does the following evaluate to 
-- foldl (flip (:)) [] [1, 2, 3]
-- 3 : (2 : (1 :[]))
-- [3, 2, 1]