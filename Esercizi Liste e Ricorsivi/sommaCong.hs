sommaCongiunta :: [Int] -> [Int] -> [Int]
-- xs e ys sono due liste
-- calcolare somma degli elementi corrispondenti...
sommaCongiunta [] _ = []
sommaCongiunta _ [] = []
sommaCongiunta (x : xs) (y : ys) = x + y : sommaCongiunta xs ys  
