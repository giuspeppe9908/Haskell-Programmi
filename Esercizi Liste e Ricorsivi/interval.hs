interval :: Int -> Int -> [Int]
interval m n 	| m > n = []
		| otherwise = m : interval (m+1) (n)



