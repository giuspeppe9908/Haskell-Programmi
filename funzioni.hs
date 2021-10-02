-- Funzioni con guardie

-- Assoluto --
assoluto :: Int -> Int
assoluto n | n >= 0 = n
           | otherwise = negate n
           
-- Fattoriale --

fact :: Int -> Int
fact 0 = 1
fact n = n * fact(n - 1)

-- Fibonacci --
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)

-- Le lambda astrazioni sono funzioni anonime!!
-- Possiamo fare lo stesso in Haskell
-----------------------------------------------

--Successore --

successore :: Int -> Int
successore = \x -> x + 1

-- Sezione : espressione racchiusa tra parentesi in cui un operatore
-- binario viene applicato a UNO SOLO dei suoi due argomenti.
-- Esempio : (1 +)
-- (`mod` 2)
-- operatore binario in pos. infissa --


-- Addizione sotto forma di \ astrazione --
addizione :: Int -> (Int -> Int)
addizione = \x -> \y -> x + y 


-------------------------------------------------
-- Esercizio 1 --
-- Funzione pari e dispari come anonime
-- \x -> x `mod` 2 == 0
-- \x -> x `mod` 2 /= 1

-- Applicazione parziale al numero di argomenti --
mistero :: Int -> Int
mistero = addizione 1

-- massimo :: Int -> Int -> Int
-- massimo (1,2) = 2
-- 

massimo :: Int -> Int -> Int
massimo x y | x > y = x | otherwise = y

minimo :: Int -> Int -> Int
minimo x y | x < y = x
           | otherwise = y
           

potenza :: Int -> Int -> Int
potenza _ 0 = 1
potenza m n = m * potenza m (n-1)

pow :: Int -> Int
pow = potenza 2

-- Funziona anonima : Valore Assoluto --
-- anonima = \x -> x | (negate x)
-- In una anonima POSSO mettere anche condizioni IF ... ELSE :)
absolute :: Int -> Int
absolute = \x -> if x >= 0 then x else negate x

--1 ( < 10) resistuisce True se il numero messo dopo è <, False altrimenti
--2 (10 < ) restituisce True se 10 è < di un numero X, False altrimenti
--3 La funzione applicata ad x calcola se il è pari o dispari.
--4 La funzione (1 /) stabilisce 1/x.
--5 La funzione applica il prodotto di x * 2 e poi somma 1 => 2x+1
--6 La funzione applica ad x, la somma di 1 e poi moltiplica per 2 il risultato => 2(x + 1)
--7 La funzione trova il resto di x mod 2 e controlla se è pari
--8 La funzione trova il resto di x mod 2 e controlla se è dispari

-- Funzioni ricorsive ---
-- Somma dei primi n numeri naturali
-- n = quanti numeri in input
-- somma prende questo n e ricorsivamente ci fa la somma 
-- esempio : n = 5 -> s = 5 + 4 + 3 + 2 + 1 = 15
somma :: Int -> Int
somma 0 = 0
somma n = n + somma(n-1)

bits :: Int -> Int
bits 0 = 0
bits n | n == 0 = 0
       | n `mod` 2 == 0 = bits( n `div` 2) 
       | otherwise = 1 + bits( n `div` 2)


potenzaDi2 :: Int -> Bool
potenzaDi2 0 = False
potenzaDi2 1 = True
potenzaDi2 n = n `mod` 2 == 0 && potenzaDi2 (n `div` 2)

-- Esercizi funzioni con guardie --

--1 : Definire una funzione Int -> Int che applicata ad n calcoli il succesore se n è PARI, valore assoluto se n è DISPARI

f :: Int -> Int
f n = if n `mod` 2 == 0 then successore n else assoluto(n)

func :: Int -> Int
func n | n `mod` 2 == 0 = successore n| otherwise = assoluto n

-- 2 : Definire una funzione giorni :: Int -> Int che, applicata a un anno n, calcoli il numero di giorni dell’anno n a seconda che n sia un anno bisestile o meno. Si faccia uso della funzione bisestile

giorni :: Int -> Int
giorni n = if bisestile n == True then 366 else 365
bisestile :: Int -> Bool
bisestile n = (n `mod` 4 == 0 && n `mod` 100 /= 0) || n `mod` 400 == 0

