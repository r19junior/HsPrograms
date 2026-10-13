
--Insertar en lista odenada


listInsert :: Int -> [Int]-> [Int]
listInsert x [] = [x]
listInsert x (y:ys) 
    | x<y = [x]++[y] ++ ys
    | otherwise = y: listInsert x ys
    






main :: IO()
main = do
    let lista = [1,3,5,7,9]
    print (listInsert 2 lista)
    
