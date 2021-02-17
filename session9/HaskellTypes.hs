import Data.List(sort)

t01 = 0 -- Integer
t02 = (+) -- Integer -> Integer -> Bool
t03 = (==) -- (Eq a) :: a -> a -> Bool
t04 = (<=) -- (Ord a) :: a -> a -> Bool
t05 = 'a' -- Char
t06 = "text" -- [Char]
t07 = [1, 2, 3] -- [Integer]
t08 = [] -- [a]
t09 = (:) -- a -> [a] -> [a]
t10 = [[], [0]] -- [[Integer]]
t11 = ('a', 2) -- (Char, Integer)
t12 = ('a', "bc") -- (Char, [Char])
t13 = fst -- (a, b) -> a
t14 = flip -- (a -> b -> c) -> (b -> a -> c)
t15 = flip (:) -- [a] -> a -> [a]
t16 = head -- [a] -> a
t17 = tail -- [a] -> [a]
t18 = (++) -- [a] -> [a] -> [a]
t19 = map -- (a -> b) -> [a] -> [b]
t20 = foldr -- (a -> b -> b) -> b -> [a] -> b
t21 = foldl --  (b -> a -> b) -> b -> [a] -> b
t22 = foldr (+) 0 -- (Integer a) :: [a] -> a
t23 = foldr (++) [] -- [[a]] -> [a]
t24 = sum -- Integer a :: [a] -> a
t25 = product -- Integer a :: [a] -> a
t26 = filter -- (a -> Bool) -> [a] -> [a]
t27 = max -- (Ord a) -> a -> a -> a
t28 = maximum -- (Ord a) :: [a] -> a
t29 = sort -- (ord a) :: [a] -> [a]
t30 = ($) -- ( a -> b) -> a -> b
t31 = \f x -> x -- a -> b -> b
t32 = \f x -> f x -- (t1 -> t2) -> t1 -> t2
t33 = \f x -> f (f x) -- (t -> t) -> t -> t
t34 = (.) -- (b -> c) -> (a -> b) -> a -> c
t35 = curry -- ((a -> b) -> c) -> a -> b -> c
t36 = uncurry -- (a -> b -> c) -> (a, b) -> c
t37 = foldl (flip(:)) [] -- [a] -> [a]
t38 = flip (foldr (:)) -- [a] -> [a]
t39 = [2 * x | x <- [1 .. 10]] -- [Integer]
t40 = map (2 *) [1 .. 10] -- [Integer]