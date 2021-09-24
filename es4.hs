-- Scrivere un’espressione per calcolare 1/1+1/1+1/1+1/1+1/2 minimizzando il numero di parentesi utilizzate tenendo condo della priorità degli operatori. Il valore dell’espressione deve essere 0.625.
totale :: Double
totale = 1 / (1 + 1 / ( 1 + 1 / ( 1 + 1 / 2)))
