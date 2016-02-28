module No001MagicSquare where

--
checkEstablished :: [Int] -> Maybe Bool
checkEstablished square
  | (sqsize < 5) = Nothing
  | (sqsize == 6) = Just False
  | otherwise = Just True
  where
    sqsize = (length square)

isEstablished :: Maybe Bool
isEstablished = checkEstablished [1,2,3,4,5,6,7]

main :: IO ()
main = putStrLn (show isEstablished)
