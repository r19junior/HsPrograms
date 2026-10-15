

contar :: [Double] -> Int 
contar [] = 0
contar (x:xs) = 1 + contar xs

obtener  :: [Double] -> Int -> Double
obtener (x:xs) n 
    | n == 0 = x
    | otherwise = obtener xs (n-1)

mediana :: [Double] -> Double
mediana [] = error "Vacio"
mediana (x:xs) 
   | n `mod` 2 == 1 = obtener lista (n `div` 2)
   | otherwise = (a +b)/2 
   where
       lista = ordenar (x:xs)
       n = contar lista
       a = obtener lista (n `div` 2 - 1)
       b = obtener lista (n `div` 2)
       

insertar :: Double -> [Double] -> [Double]
insertar x [] = [x]
insertar x (y:ys) 
    | x <= y = x:y:ys
    | otherwise = y: insertar x ys


ordenar :: [Double] -> [Double]
ordenar [] = []
ordenar (x:xs) = insertar x (ordenar xs)



main::IO()
main = do
    let n = [1,4,5,2,3,7]
    print ( mediana n)
