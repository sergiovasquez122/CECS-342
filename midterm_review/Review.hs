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
