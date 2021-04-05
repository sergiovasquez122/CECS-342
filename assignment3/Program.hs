import Data.List (sortBy, sort)

-- Person data type
data Person = Person { name :: String, age :: Int } deriving (Show, Eq, Ord)

compare2 :: Person -> Person -> Ordering
compare2 (Person p1_name p1_age) (Person p2_name p2_age)
  | p1_age > p2_age   = LT  -- lesser than -- descending order
  | p1_age < p2_age   = GT  -- greater than -- descending order
  | p1_age == p2_age  = compare p1_name p2_name -- equal to -- alphabetical order

main = do
  -- list of numbers
  let numbers = [645.41, 37.59, 76.41, 5.31, -34.23, 1.11, 1.10, 23.46, 635.47, -876.32, 467.83, 62.25] 
  -- list of people and their age
  let people = [ Person "Hal" 20, Person "Susann" 31, Person "Dwight" 19, Person "Kassandra" 21, Person "Lawrence" 25, Person "Cindy" 22, Person "Cory" 27, Person "Mac" 19, Person "Romana" 27, Person "Doretha" 32, Person "Danna" 20, Person "Zara" 23, Person "Rosalyn" 26, Person "Risa" 24, Person "Benny" 28, Person "Juan" 33, Person "Natalie" 25 ] 

  putStrLn "Sorting numbers numerically in the ascending order: "
  -- sort by numbers
  print (sort numbers) 
  putStrLn " "

  putStrLn "Sorting people by name in the alphabetical (lexicographically) order: "
  -- mapM allows each element to be printed on a newline
  mapM_ print (sort people) -- sort by name
  putStrLn " "

  putStrLn "Sorting people by age in the descending order. If people have same age then sort by alphabetical (lexicographically) order: "
  mapM print (sortBy compare2 people) -- sort by age