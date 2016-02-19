module No001MagicSquare where

square :: [Int]
square = []

type ToNext = [Int] -> [Int]

appender :: Int -> ToNext
appender value = \base -> base ++ [value]

toNext = appender 1

check :: [Int] -> [Int]
check base = toNext base

main :: IO ()
main = putStrLn (show (check square))

