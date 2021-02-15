module MSort where
msort :: Ord a => [a] -> [a] -- merge sort a list in Haskell
msort [] = [] -- Empty list is sorted
msort [x] = [x] -- list with single element is sorted
msort xs = merge (msort lhs) (msort rhs) -- We recursively sort the lhs and rhs then merge them to have a sorted array
    where merge xs [] = xs -- rhs fully used, return the lhs side
          merge [] ys = ys -- lhs full used, return the rhs side
          merge (x:xs') (y:ys') = if x < y -- both sides have atleast one element but smaller one on new list and then call the function again with the new lists
                                 then x : merge xs' (y:ys') -- x was smaller cons it to list and then call merge with smaller xs' and ys' being the same size as the original call                               
							     else y : merge (x:xs') ys' -- y was smaller cons it to list and then call merge with 
          lhs = take (length xs `div` 2) xs -- lhs will get the n/2 elements starting from the front and going to the middle
          rhs = drop (length xs `div` 2) xs -- rhs will get the n/2 elements starting from the middle + 1 and going to the end