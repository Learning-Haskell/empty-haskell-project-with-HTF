{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.TestMyReverse (htf_thisModulesTests) where

import Test.Framework
import My.MyReverse

-- Some HUnit tests
test_nonEmpty = do assertEqual [1] (myReverse [1])
                   assertEqual [3,2,1] (myReverse [1,2,3])

test_empty = assertEqual ([] :: [Int]) (myReverse [])


-- some QuickQueck tests
prop_reverse :: [Int] -> Bool
prop_reverse xs = xs == (myReverse (myReverse xs))

prop_reverseReplay =
  withQCArgs (\a -> a { replay = read "Just (1007994632 40688,3)" })
  prop_reverse


-- main for adhoc execution of test
main = htfMain htf_thisModulesTests
