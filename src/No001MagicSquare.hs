module No001MagicSquare where

--
base :: [Int]
base = [1 .. 9]
--
revFilter :: [Int] -> [Int] -> [Int]
revFilter [] source = source
revFilter (x : xs) source = revFilter xs (filter (/= x) source)
--
isCorresponding :: [Int] -> Int
isCorresponding square
  | (sq22 /= 5) = 0
  | (sq12 + sq13) /= (sq21 + sq31) = 0
  | (((sq11 + sq12 + sq13) == (sq21 + sq22 + sq23)) &&
    ((sq11 + sq12 + sq13) == (sq31 + sq32 + sq33)) &&
    ((sq11 + sq12 + sq13) == (sq13 + sq23 + sq33)) &&
    ((sq11 + sq12 + sq13) == (sq12 + sq22 + sq32)) &&
    ((sq11 + sq12 + sq13) == (sq11 + sq22 + sq33)) &&
    ((sq11 + sq12 + sq13) == (sq13 + sq22 + sq31))) = 1
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
derivation :: Int -> [Int] -> [Int] -> Int
derivation count (child : otherChildren) parentSqr
  | squareSize == 9 = (isCorresponding square) + count
  | otherChildren == [] = derivation count candidates square
  | otherwise = derivation (derivation count otherChildren parentSqr) candidates square
  where
    square = parentSqr ++ [child]
    squareSize = length (square)
    candidates = revFilter square base
