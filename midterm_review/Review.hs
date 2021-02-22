module Review where

-- 1. In Haskell the list [1, 2, 3] is just syntatic sugar for 
-- a. 1 : (2 : 3)
-- b. 1 : (2 : (3 : []))
-- c. (1 : 2) : 3
-- d. (([] : 1) : 2) : 3
-- b is the correct answer

-- 2. Evaluate foldr (+) 0 [1, 2, 3]
-- 1 : (2 : (3 : 0))
-- 1 + (2 + (3 + 0))
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

-- Which of the following two Haskell functions are tail recursive?
-- foldr (non-tail recursive function)
-- foldl (tail recursive function), foldl could be made in terms of foldr but not other way
-- -none-
-- -both-
-- foldl is the correct answer

-- evaluate the following expression
-- map (: "") "hi!"
-- ["h", "i", "!"]
-- 'h' : ('i' : ('!' : ''))
-- 'h' (: "") ('i' (: "") ('!' (: "") ''))
--  'h' : ('i' : ['!'])
-- ['h', 'i', '!']

-- What's the type of the concatenation operator ++
--  (++) :: [a] -> [a] -> [a]

-- How would you add an element x to a list xs in Haskell?
-- x : xs

-- What language feature is used in Haskell to create lists?
-- the data constructor ":" and "[]"

-- Which of the following could be the type of a sort function in Haskell?
-- sort :: Ord a => [a] -> [a]
-- sort :: a => [a] -> [a] wrong
-- sort :: Ord a => [a] -> [b] wrong

-- Which kind o recursion is an important concept in functional programming
-- a. head recursion
-- b. neck recursion
-- c. arm recursion
-- d. leg recursion
-- e. tail recursion
-- e is the correct answer

-- What does it mean that Haskell is a pure functional programming language?
-- The evaluation of expressions has no side-effects

-- Which technique can be used to transform a recursive function into an equivalent tail recursive function?
-- accumulating parameters
-- product [] base = base
-- product (x:xs) current = product xs (current * x)
-- non-tail
-- product [] = 1
-- product (x:xs) = x * product xs
-- x * x' * x'' * x''' * x''''

-- 4. In the Haskell function definition
-- product [] = 1
-- product (x:xs) = x * product xs
-- we used an example of
-- a. list concatentation (wrong) 
-- b. pattern matching (right)
-- c. incorrect syntax (wrong)
-- d. tail recursion (wrong)
---  b is the correct answer

-- 5. Which Haskell language feature is used where other languages would use NULL
-- a. lazy evaluation (wrong)
-- b. monads (wrong)
-- c. algebraic data types, in particular co-products NULL | NOT NULL
-- d. type classes (wrong)
-- c is the correct answer

-- 6. what makes a recursive function definition tail recursive?
-- a. the function has at most one argument
-- b. the function has no local variables
-- c. there's exactly one recursive call and its return value is immediately returned by the calling function
-- d. the function returning a Boolean
-- c is the correct answer

-- 7. Consider the Haskell function definition
-- const x _ = x
-- evaluate 
-- const (1+) 10 100
-- 101

-- example of wildcard
-- length [] = 0
-- length (_:xs) = 1 + length xs

-- 8. Consider the Haskell function definition
-- const x _ = x
-- what is the type of const?
-- a. const :: a -> b -> c
-- b. const :: a -> b -> a (perfect)
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
-- a. concatenate two list(wrong)
-- b. flatten a list of lists
-- c. reverse a list(wrong)
-- d. count the elements of a list(wrong)
-- e. nothing(wrong)
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