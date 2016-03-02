module No001MagicSquare where

--
base :: [Int]
base = [1 .. 9]
--
revFilter :: [Int] -> [Int] -> [Int]
revFilter (x : xs) source = revFilter xs (filter (/= x) source)
revFilter [] source = source
--
isCorresponding :: [Int] -> Int
isCorresponding square
  | (sq12 + sq13) /= (sq21 + sq31) = 0
  | (sq13 + sq23) /= (sq31 + sq32) = 0
  | (sq11 + sq12) /= (sq23 + sq33) = 0
  | ((sq11 + sq12 + sq13)  == (sq11 + sq22 + sq33)) && ((sq11 + sq33) == (sq13 + sq31)) = 1
  | otherwise = 0
  where
    sq11 = square !! 0
    sq12 = square !! 1
    sq13 = square !! 2
    sq21 = square !! 3
    sq22 = square !! 4
    sq23 = square !! 5
    sq31 = square !! 6
    sq32 = square !! 7
    sq33 = square !! 8
-- to generate brother node(s), or child(ren)
noder :: Int -> [Int] -> [Int] -> Int
noder count (child : otherChildren) parentSqr
  | squareSize == 9 = (isCorresponding square) + count
  | otherChildren == [] = noder count candidates square
  | otherwise = noder (noder count otherChildren parentSqr) candidates square
  where
    square = parentSqr ++ [child]
    squareSize = length (square)
    candidates = revFilter parentSqr base
