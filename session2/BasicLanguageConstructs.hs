-- BasicLanguageConstructs.hs
-- CECS 342
-- Haskell vs C
--
-- BasicLanguage Constructs
module BasicLanguageConstructs where

-- Variables
-- Haskell uses algorithm called type inference to infers all types
seven = 7 -- Num p => p 
-- seven = 8 error, variables in haskell can't be changed. Immutable
sq123 = let x = 123 in x * x -- defined variable x with local scope 

sq321 = x * x where x = 321

-- Functions
-- Syntatic sugar is syntax designed to make things easier to read or to express but can defined in terms of constructs already in the language
twice1 n = 2 * n -- syntatic sugar, sweetened
twice2 = \n -> 2 * n -- lambda-expression, unsweetened

twice3 = (2*) -- section, partial application on infix operators
twice4 = (*) 2 -- unsugared

average1 :: Float -> Float -> Float
average1 a b = (a + b) / 2
average2 a = \b -> (a + b) / 2
average3 = \a -> \b -> (a + b) / 2
average4 = \a b -> (a + b) / 2

h = average1 2

average5 :: (Float, Float) -> Float
average5(a, b) = (a + b) / 2

-- Conditionals
signum1 n = if n < 0 then -1
            else if n > 0 then 1
            else               0

-- Piece-wise functions with guards
signum2 n | n < 0 = -1
          | n > 0 = 1
	  | otherwise = 0

-- Recursion

-- Factorial with if-then-else
-- non-tail recursive
factorial1 n = if n == 0 then 1 else n * factorial1 (n - 1)

-- Factorial with pattern matching
-- non-tail recursive
factorial2 0 = 1
factorial2 n = n * factorial2 (n - 1)

-- Factorial with accumulating parameter
-- Tail recursive version
factorial3 n = fact_acc n 1
	where
		fast_acc 0 f = f
                fact_acc n f = fact_acc (n - 1) (n * f)
-- Factorial with a list of a range of numbers
factorial4 n = product [1..n]

-- Naive fibonacci numbers
-- T(n) = T(n - 1) + T(n - 2)
-- T(n) = O(2**n)
fib1 0 = 0
fib1 1 = 1
fib1 n = fib1(n - 1) + fib1(n - 2)

-- Fibonacci numbers with two accumulating parameters
-- T(n) = O(n)
fib2 n = fib_acc n 0 1
	where
		fib_acc 0 a _ = a
		fib_acc n a b = fib_acc (n - 1) b (a + b)
