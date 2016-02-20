module No001MagicSquare where

calc :: (Int, Int, Int, Int, Int, Int, Int, Int, Int) -> Bool
calc (a, b, c, d, e, f, g, h, i) = (a + d + g) == (b + e + h)

main :: IO()
main = putStrLn (show "atom test test")
