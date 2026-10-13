--Palindromo

invertir ::[Int] -> [Int] -> [Int]
invertir [] a= a
invertir (x:xs) a = invertir xs (x :a)


pp:: [Int]-> String
pp xs
    | xs == invertir xs [] = "Es palindromo"
    | otherwise = "No es palindromo"


main :: IO ()
main = do
    let lista = [10,20,30,20 , 10]
    
    print( pp lista)
