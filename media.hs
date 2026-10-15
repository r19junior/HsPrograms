




contador :: [Double] -> Double
contador [] = 0
contador (x:xs) = 1 + contador xs


sumador :: [Double] -> Double 
sumador []  = 0 
sumador (x:xs) = x + sumador xs

media:: [Double] -> Double
media xs =  (sumador xs)/ (contador xs)



main :: IO()
main = do
    let lista = [10,20,30,40]
    
    print ( media lista)
