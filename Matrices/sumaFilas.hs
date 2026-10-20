

-- suma de filas
sum1 :: [Int]-> Int
sum1 [] = 0
sum1 (x:xs) = x + sum1 xs


sumarFilas :: [[Int]] -> [Int]
sumarFilas [] = []
sumarFilas (x1:xs) =  sum1 x1 : sumarFilas xs


main :: IO()
main = do 
    let l = [[1,2,3],[4,5,6],[7,8,9]]
    
    
    print (sumarFilas l)
