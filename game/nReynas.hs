contar :: [Int] -> Int
contar [] = 0
contar (x:xs) = 1 + contar xs

verificar :: Int -> Int -> [Int] -> Bool
verificar _ _ [] = True
verificar x i (y:ys)
    | x == y = False
    | abs (x-y) == i = False
    | otherwise = verificar x (i+1) ys

insertar :: Int -> [Int] -> [Int]
insertar x xs = x:xs

probar :: Int -> [Int] -> [Int] -> [[Int]]
probar _ [] _ = []
probar n (x:xs) reinas
    | verificar x 1 reinas = resolver n (insertar x reinas) ++ probar n xs reinas
    | otherwise = probar n xs reinas

resolver :: Int -> [Int] -> [[Int]]
resolver n reinas
    | contar reinas == n = [reverse reinas]
    | otherwise = probar n [1..n] reinas

nReinas :: Int -> [[Int]]
nReinas n
    | n <= 0 = []
    | otherwise = resolver n []


dibujarFila :: Int -> Int -> Int -> String
dibujarFila n reina columna
    | columna > n = ""
    | columna == reina = "O " ++ dibujarFila n reina (columna+1)
    | otherwise = ". " ++ dibujarFila n reina (columna+1)


dibujarTablero :: Int -> [Int] -> IO ()
dibujarTablero _ [] = return ()
dibujarTablero n (x:xs) = do
    putStrLn (dibujarFila n x 1)
    dibujarTablero n xs

mostrarPosiciones :: Int -> [Int] -> IO ()
mostrarPosiciones _ [] = return ()
mostrarPosiciones fila (x:xs) = do
    putStrLn ("Fila " ++ show fila ++ " - Columna " ++ show x)
    mostrarPosiciones (fila+1) xs

mostrarSoluciones :: Int -> [[Int]] -> IO ()
mostrarSoluciones _ [] = return ()
mostrarSoluciones i (x:xs) = do
    putStrLn ("Solucion " ++ show i ++ ": " ++ show x)
    mostrarSoluciones (i+1) xs

mostrarResultado :: [[Int]] -> IO ()
mostrarResultado [] = putStrLn "No existen soluciones"
mostrarResultado (x:xs) = do
    putStrLn ("Solucion 1: " ++ show x)
    dibujarTablero (contar x) x
    putStrLn "\nPosiciones:"
    mostrarPosiciones 1 x
    putStrLn "\nOtras soluciones:"
    mostrarSoluciones 2 xs


main :: IO ()
main = do
    let n = 5
    let soluciones = nReinas n
    putStrLn ("Tablero: " ++ show n ++ " x " ++ show n)
    putStrLn ("Total de soluciones: " ++ show (length soluciones))
    putStrLn ""
    mostrarResultado soluciones
