
-- Lista de exercio 2 referente ao cap 4.
-- 4.1) Faça uma função que retorne a média de um [Double],usando foldl .

retornaMediaLista :: [Double] -> Double
retornaMediaLista =  foldl (\acc x -> (acc + x)/ 2 ) 0 