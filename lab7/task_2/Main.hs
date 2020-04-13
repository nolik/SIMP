module Main where

-- Система урванений в виде функции
f x a 
  | -1 <= x   = sqrt (x + a)
  | x > 1     = a / (x ^ 4)
  | otherwise = 0

-- Функция входа в программу, считывает аргументы функции f, вычисляет её значение и выводит результат
main = do
    putStrLn "Введите x:"
    x <- readLn
    putStrLn "Введите a:"
    a <- readLn
    putStrLn ("Y(" ++ (show x) ++ ", " ++ (show a) ++ ") = " ++ (show (f x a)))
