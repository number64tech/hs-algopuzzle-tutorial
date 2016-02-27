module No001MagicSquare where

--
checkEstablished :: [Int] -> Maybe Boolean
checkEstablished square let size = (length square)
  | (size < 5) = Nothing
  | (size = 6) = false
  | otherwise = true

isEstablished :: Boolean
isEstablished = checkEstablished [1,2,3,4,5,6,]

main :: IO ()
main = putStrLn (show isEstablished)
