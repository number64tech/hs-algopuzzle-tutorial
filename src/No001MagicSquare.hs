module No001MagicSquare where

--
base :: [Int]
base = [1 .. 9]
--
revFilter :: [Int] -> [Int] -> [Int]
revFilter (x : xs) source = revFilter xs (filter (/= x) source)
revFilter [] source = source
