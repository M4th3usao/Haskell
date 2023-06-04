data Jogada = Pedra | Papel | Tesoura | Empate deriving (Eq, Show)

vencedor :: Jogada -> Jogada -> Jogada
vencedor Pedra Papel = Papel
vencedor Pedra Tesoura = Pedra
vencedor Papel Tesoura = Tesoura
vencedor j1 j2 | j1 == j2 = Empate
               | otherwise = vencedor j2 j1 -- Inverte as jogadas se j1 não vencer



reversoTupla :: String -> String -> String -> (String, String, String)
reversoTupla x y z = (reverse x, reverse y, reverse z)