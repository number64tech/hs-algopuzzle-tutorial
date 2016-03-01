module No001MagicSquare where

--
base :: [Int]
base = [1 .. 9]
--
revFilter :: [Int] -> [Int] -> [Int]
revFilter (x : xs) source = revFilter xs (filter (/= x) source)
revFilter [] source = source
-- to generate brother node(s), or child(ren)
noder :: Int -> [Int] -> [Int] -> Int
noder count (child : otherChildren) parentSqr
  | squareSize == 9 = 1 + count
  | otherChildren == [] = noder count candidates square
  | otherwise = noder (noder count otherChildren parentSqr) candidates square
  where
    square = parentSqr ++ [child]
    squareSize = length (square)
    candidates = revFilter parentSqr base
