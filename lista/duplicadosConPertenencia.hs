

--Eliminar duplicados con pertenencia


pc :: Int -> [Int] -> Bool
pc _ [] = False
pc x (y:ys)
    | x == y = True
    | otherwise = pc x ys





fDuplex :: [Int] -> [Int]
fDuplex [] = []
fDuplex (x:xs) 
    | pc x xs = fDuplex xs
    | otherwise = x: fDuplex xs
    






main :: IO()
main = do
    let lista = [1,2,3,4,4,5,6,2,1]
    print (fDuplex lista)
