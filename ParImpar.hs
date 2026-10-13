

-- Identificador de numero impar
process :: Int -> String
process x = do
    if x `mod` 2 == 0
        then do 
            show x ++ " -> Numero impar"
        else do
           show x ++ " -> Numero par"


main :: IO()
main = do
    n <- readLn 
    putStrLn(process n)
