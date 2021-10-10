inverti :: [Int] -> [Int]
inverti [] = []
inverti (x : xs) = inverti xs ++ [x] --la coda ha sicuramente più di un elemento quindi inverto 					      --prima la coda (es: xs = [p,q,r] --> 
				      --inverti xs ==> [r,q,p] ++ [x]
