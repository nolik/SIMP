module Main where

-- Тестовое значение
-- f 5 4 ~ 0.0087

-- Целевая функция
f m n = sqrt (abs (num / denum))
  where
    num = cos (exp (0.9 * n - 0.4 * m))
    c = log ((cos 0.6) + sin (0.2 + pi))
    denum = (m ^ 5) + (n ^ 2) - c

-- Функция входа в программу, считывает аргументы функции f, вычисляет и выводит её значение
main = do
    putStrLn "Введите m:"
    m <- readLn
    putStrLn "Введите n:"
    n <- readLn
    putStrLn ("Y(" ++ (show m) ++ ", " ++ (show n) ++ ") = " ++ (show (f m n)))
