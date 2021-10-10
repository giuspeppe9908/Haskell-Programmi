-- Fattoriale di n 
-- Esempio : fattoriale di 3 = 3 * 2 * 1
-- se n > 0 fai n * fact(n - 1)
fattoriale :: Integer -> Integer
fattoriale = aux 1
     where 
	aux res 0 = res
	aux res n = aux(res * n)(n - 1) 
