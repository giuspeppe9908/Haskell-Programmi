prodotto :: [Int] -> Int
prodotto [] = 1
prodotto (x : xs) = x * prodotto xs
