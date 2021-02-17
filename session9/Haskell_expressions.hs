-- CECS 342 "40 Haskell Expressions"
--  
-- Evaluate each of the following 40 Haskell expresssions.
-- then use ghci to verify the results.
x01 :: Integer
x01 = 1 + 2 -- Integer and evaluates to 3
x02 = (+) 1 2 -- Integer and evaluates to 3
x03 = (-) 1 2 -- Integer and evaluates to -1
x04 = flip (-) 1 2 -- Integer and evaluates to 1 
x05 = 1 : [] -- [Integer] and evaluates to [1]
x06 = head [1, 2] -- [Integer] and evaluates to [1]
x07 = tail [1, 2] -- [Integer] and evaluates to [2]
x08 = 1 < 2 -- Bool and evaluates to True
x09 = if 1 < 2 then "true" else "no" -- [Char] and evaluates to "true"
x10 = 'a' : "bc" -- [Char] and evaluates to "abc"
x11 = [1, 2] ++ [3, 4] -- [Integer] and evaluates to [1, 2, 3, 4]
x12 = "ab" ++ "cd" -- [Char] and evaluates to "abcd"
x13 = foldr (+) 0 [1, 2, 3] -- Integer and evaluates to 6
x14 = foldr (-) 0 [1, 2, 3] -- Integer and evaluates to (1 - (2 - (3 - 0))) = 2
x15 = foldl (+) 0 [1, 2, 3] -- Integer and evaluates to 6 
x16 = foldl (-) 0 [1, 2, 3] -- Integer and evaluates to ((0 - 1) - 2) - 3 = -1 - 2 - 3 = -6
x17 = foldr (-) 7 [1, 2, 3] -- Integer and evaluates to 1 - (2 - (3 - 7)) = -5
x18 = map (2 * ) [1 .. 10] -- [Integer] and evaluates to [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
x19  = [2 * x | x <- [1 .. 10]] -- [Integer] and evaluates to [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
x20 = take 3 [6, 5, 4, 3, 2, 1] -- [Integer] and evaluates to [6, 5, 4]
x21 = take 2 (map (2*) [3, 4, 5]) -- [Integer] and evaluates to [6, 8]
x22 = take 2 $ map (2*) [3, 4, 5] -- [Integer] and evaluates to [6, 8]
x23 = take 2 $ (2*) <$> [3, 4, 5] -- [Integer] and evaluates to [6, 8]
x24 = foldr (++) [] [[1], [], [5, 7]] -- [Integer] and evaluates to [1, 5, 7]
x25 = foldr (++) "" ["a", "", "bc"] -- [Char] and evaluates to "abc"
x26 = max 1 2 -- Integer and evaluates to 2
x27 = 1 `max` 2 -- Integer and evaluates to 2
x28 = maximum [1, 5, 3] -- Integer and evaluates to 5
x29 = flip (foldr (:)) "abc" "def" -- "abcdef"
x30 = foldl (flip(:)) [] [2, 4, 6] -- [6, 4, 2s]
x31 = sum [length s | s <- ["a", "b", "cd"]] -- Integer and evaluates to 4
x32 = fst (1, "abc") -- Integer and evaluates to 1
x33 = snd ([1, 2, 3], 'a') -- Integer and evaluates to 'a'
x34 = curry fst 1 2 -- Integer and evaluates to 1
x35 = uncurry (+) (1, 2) -- Integer and evaluates to 3
x36 = (\x -> 2 * x) 5 -- Integer and evaluates to 10
x37 = (\y -> y * y) 5 -- Integer and evaluates to 25
x38 = (\z -> 7) 5 -- Integer and evaluates to 7
x39 = (\x -> (\x -> x + 1)) 5 -- Integer and evaluates to 6
x40 = (\f -> f (f 0) ) (\x -> x + 1) -- Integer and evaluates to 2