--eliminar elemento

pp:: Int -> [Int]->[Int]
pp _ [] = []
pp x (y:ys)
    | x == y = pp x ys
    | otherwise = [y] ++ pp x ys





main :: IO ()
main = do
    let lista = [1,2,3,4,5,6,2]
    
    print( pp 2 lista)
