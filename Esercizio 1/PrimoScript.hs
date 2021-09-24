anno_terra :: Float
anno_terra = 2 * pi * 150e6

v_terra :: Float
v_terra = anno_terra / (365 * 24)

uno :: Int
uno = 1

successore :: Int -> Int
successore x = x + 1

pari :: Int -> Bool
pari n = n  `mod` 2 == 0

dispari :: Int -> Bool
dispari = not . pari  
