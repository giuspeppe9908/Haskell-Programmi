bits :: Int -> Int
bits = aux 0
  where
    aux bits 0 = bits
    aux bits n = aux (bits + n `mod` 2) (n `div` 2)
