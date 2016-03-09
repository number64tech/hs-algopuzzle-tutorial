import Debug.Trace
import No001MagicSquare

main :: IO ()

-- No001MagicSquare
--main = putStrLn (show (derivation 0 [2] [8, 3, 4, 1, 5, 9, 6, 7]))
main = putStrLn (show (derivation 0 [1 .. 9] []))

-- No002NQueen
