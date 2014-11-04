-- My/MyReverse.hs

module My.MyReverse (myReverse) where

myReverse :: [a] -> [a]
myReverse []     = []
myReverse [x]    = [x]
myReverse (x:xs) = myReverse xs
