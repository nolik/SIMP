module Main where

-- Тип позволит задать список с элементами разных типов, в том числе вложенные списки
data Any = IntElem Int | CharElem Char | ListElem [Any]

-- Функция вычисления длины, описание типов
listLength :: (Num el) => [Any] -> el

-- Описание длины для непустого списка
listLength (_:el) = 1 + listLength el

-- Для пустого списка длина является нулевой
listLength [] = 0

-- Точка входа в программу, выводит длину заранее объявленного списка
main = do
  putStrLn (show (listLength [IntElem 1, CharElem 'a', CharElem 'c', ListElem [IntElem 2], IntElem 3, ListElem [IntElem 4, IntElem 8], IntElem 9]))
