

-- suma de filas
joinF :: [Int]-> [Int]
joinF [] = []
joinF (x:xs) = [x] ++ joinF xs


joinM :: [[Int]] -> [Int]
joinM [] = []
joinM (x1:xs) = joinF x1 ++ joinM xs


main :: IO()
main = do 
    let l = [[1,2,3],[4,5,6],[7,8,9]]
    
    
    print (joinM l)
