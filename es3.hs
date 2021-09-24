--Scrivere un’espressione per calcolare la sommatoria  delle prime 5 potenze di 2 usando gli operatori + e ^ e minimizzando il numero di parentesi utilizzate. Il valore dell’espressione deve essere 31.

potenza :: Int -> Int
x :: Int
x = 2
potenza y = if y == 0 then 1 else x ^ y 
sommatoria :: Int -> Int
sommatoria y = if y > 0 then potenza(y-1) + sommatoria(y-1) else 0 
