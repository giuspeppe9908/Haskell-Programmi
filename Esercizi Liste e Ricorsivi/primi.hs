primo :: Int -> Bool
primo n = aux 2
  where
    aux k | k >= n         = k == n
          | n `mod` k == 0 = False
          | otherwise      = aux (k + 1)

primi :: Int -> [Int]
primi x| x < 3 = [] 
       | primo x = primi(x-1) ++ [x]
       | otherwise = primi(x-1)
