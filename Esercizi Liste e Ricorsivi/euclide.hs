euclide :: Int -> Int -> Int
euclide m n | m == n    = m
            | m < n     = euclide m (n - m)
            | otherwise = euclide (m - n) n
