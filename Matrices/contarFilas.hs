

--Contador

contarFilas :: [[Int]] -> Int
contarFilas m = length m


main :: IO()
main = do 
    let l = [[1,2],[3,4],[5,6],[7,8]]
    
    
    print ( contarFilas l)
