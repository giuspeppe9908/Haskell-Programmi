primo :: Int -> Bool
primo n = aux 2
  where
    aux k | k >= n         = k == n
          | n `mod` k == 0 = False
          | otherwise      = aux (k + 1)

primi :: Int -> [Int]
primi n = aux 2
  where
    aux k | k >= n         	= []
          | primo k		= k : aux (k + 1)
          | otherwise      	= aux (k + 1)
