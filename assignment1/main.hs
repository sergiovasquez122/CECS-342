import MSort
import QSort
main :: IO ()
main = do
    let theList = [4, 65, 2, -31, 0, 99, 2, 83, 287, 1]
    print (msort theList)
    print (qsort theList)