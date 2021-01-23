qsort :: Ord a => [a] -> [a] -- quick sort a list in haskell
qsort [] = [] -- quicksort on the empty list is the empty list
qsort (x:[]) = [x] -- quicksort on an one element list is already sorted
qsort (x:xs) = -- the case where we have at least 2 elements
	left ++ [x] ++ right -- concatenate the followed followed by the pivot followed by the rhs since lhs <= x < rhs
		where left = qsort (filter (<= x) xs) -- construct the lhs by using the elements <= the pivot
		      right = qsort (filter (> x) xs) -- construct the rhs by using the elements > the pivot
