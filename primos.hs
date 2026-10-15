



verificar:: Int -> Int -> Bool
verificar x i 
    | x < 2 = False
    | i == x = True
    | x `mod` i == 0 = False
    | otherwise = verificar x (i+1)



verificarPrimo :: Int -> Bool
verificarPrimo n = verificar n 2



primos:: Int -> [Int]
primos n = filter verificarPrimo [2..n]


main :: IO()
main = do
    print(primos 13)
