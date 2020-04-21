module Main where

-- Целевая функция
f m n = sqrt (abs (numerator / denominator))
  where
    numerator = cos (exp (0.9 * n - 0.4 * m))
    c = log ((cos 0.6) + sin (0.2 + pi))
    denominator = (m ^ 5) + (n ^ 2) - c

-- Точка входа в программу, считывает аргументы функции f, вычисляет и выводит значение функции
main = do
    putStrLn "Введите m:"
    m <- readLn
    putStrLn "Введите n:"
    n <- readLn
    putStrLn ("Y(" ++ (show m) ++ ", " ++ (show n) ++ ") = " ++ (show (f m n)))
