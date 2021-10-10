fibonacci :: Int -> Integer
fibonacci k | k < 0 = error "Input non valido!"
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci k = fibonacci(k - 1) + fibonacci(k - 2)

