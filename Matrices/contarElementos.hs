

--Contador de elementos

contar :: [Int ] -> Int
contar x = length x


contarFilas :: [[Int]] -> [Int]
contarFilas [] = []
contarFilas (x:xs) = contar x : contarFilas xs


main :: IO()
main = do 
    let l = [[1,2],[3,4,1,2],[5,6],[7,8]]
    
    
    print ( contarFilas l)
