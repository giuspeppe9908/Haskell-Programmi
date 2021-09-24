-- Concepire una espressione logica per appurare che && è davvero cortocircuitato. 
-- Suggerimento: individuare una espressione che, se valutata, 
-- genera un errore (es. una divisione per zero) e usare tale espressione in una condizione formulata usando && e ||

condition :: Bool
condition = False && ( 1 `div` 0 == 0)
