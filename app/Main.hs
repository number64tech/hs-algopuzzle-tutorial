import Debug.Trace
import No001MagicSquare

main :: IO ()

-- No001MagicSquare
-- division count children parent

-- A correct pattern
--main = putStrLn (show (derivation 0 [2] [8, 3, 4, 1, 5, 9, 6, 7]))

-- 0
--main = putStrLn (show (derivation 0 [1, 3, 4, 5, 6, 7, 8, 9] [2]))
-- 1
--main = putStrLn (show (derivation 0 [1, 2, 3, 5, 6, 7, 8, 9] [4]))
-- 1
--main = putStrLn (show (derivation 0 [1, 2, 3, 4, 5, 7, 8, 9] [6]))
-- 2
main = putStrLn (show (derivation 0 [1, 2, 3, 4, 5, 6, 7, 9] [8]))




--


-- No002NQueen
