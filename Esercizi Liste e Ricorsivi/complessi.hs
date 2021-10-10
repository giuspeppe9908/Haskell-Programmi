type Complesso = (Double, Double)

addizioneC :: Complesso -> Complesso -> Complesso
addizioneC (a, b) (c, d) = (a + c, b + d)

-- NegazioneC
negazioneC :: Complesso -> Complesso
negazioneC (a,b) = (negate a , b)

-- SottrazioneC
sottrazioneC :: Complesso -> Complesso -> Complesso
sottrazioneC x y = addizioneC x (negazioneC y)
