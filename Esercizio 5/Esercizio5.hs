-- Esprimere le espressioni E1 && E2 ed E1 || E2 come espressioni condizionali, senza fare uso di operatori.
e1 :: Bool
e1 = True
e2 :: Bool
e2 = True
condition = if e1 && e2 then e2 else False
conditionOR = if e1 || e2 then True else e2
