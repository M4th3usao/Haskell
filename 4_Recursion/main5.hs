-- recursividade
-- São estruturas matematicas/listas que se repetem baseadas na sequência/termos anteriores.

-- Existem sequência númericas não recursivas.(*)
-- Indução finita é a tecnica matemática para verificar se ela tem um padrão ou não.

-- Toda estrutura recursiva necessita de condições de base, além da condição de parada.

-- condição de base define termos iniciais ara que a recursão comece.
-- Ou seja, é necessário os dois valores iniciais.
-- 

-- fibonacci

-- fib :: Int -> Int 
-- fib 1 = 1
-- fib 2 = 1
-- fib n = fib( n - 1) + fib (n -2)

-- evitando números negativos:

fib :: Int -> Int 
fib 1 = 1
fib 2 = 1
fib n 
    | n > 0 = fib(n - 1) + fib (n - 2)
    | otherwise = n

-- outro exemplo

reverso :: String -> String
reverso [] = []
reverso (x:xs) =  reverso xs ++ [x] 