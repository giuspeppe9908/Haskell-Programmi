-- [2,3,5,7,11,13,17,19,23,29]	

-- funzione non ricorsiva  media :: [Int] -> Float

-- calcola media di una lista di numeri

media :: [Int] -> Float
media xs = fromIntegral(sum xs)/ fromIntegral (length xs)
