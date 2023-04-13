
qsum :: Num a => a -> a -> a 
qsum x y = x*x + y*y 

-- Funções de alta ordem
--  Uma funcao que recebe uma funcao como parametro, no caso é uma funcao que segue outra funcao.
aplicaFuncao :: (Int -> Int) -> Int -> Int 
aplicaFuncao funcao x = funcao x

-- um exemplo com mais de 2 parametros
apd :: (Int -> Int) -> (Int -> Int) -> Int -> Int
apd func1 func2 valor = (func1.func2) valor

--  Funçoes de alta ordem: map
-- map :: (a -> b) -> [a] -> [b]

tamanhoString :: String -> Int
tamanhoString st = length st 

funcaoSoma4 :: Int -> Int -> Int -> Int -> Int 
funcaoSoma4 x y z a = x + y + z + a

-- Filter
--  filter :: (a -> Bool) -> [a] -> [a]
--  let xs = [1..10]
-- filter (\ x -> mod x 2 == 0) xs

-- Foldl é um acumulador
-- foldl :: Foldable t => (b -> a -> b) -> b -> t a -> b

-- operador (.) e o operador $

-- Operador ponto (.) é infixado 
--  (.) :: (b -> c) -> (a -> b) -> a -> c

--  o ponto consegue conter duas funções
--  exemple:

-- (reverse.tail) "Nao sei escrever"
-- no caso o (b -> c) é o reverse 
--  o (a -> b) é o tail
-- e o "a" é a String

-- Outro exemplo:

boolParaInt :: Bool -> Int
boolParaInt True = 1
boolParaInt False = 0

-- operadores de composição permitem a generalização de funçoes

-- o "read" transforma uma string para qualquer tipo que já foi declarado

-- o "$" parmite compor funções com mais de um parametro, ou seja, irá ser uma composição de funções compostas.
-- ($) :: (a -> b) -> a -> b

funcaoSoma3 :: Int -> Int -> Int -> Int
funcaoSoma3 x y z = x + y + z

pipeLine :: a -> (a -> b) -> b
pipeLine valor funcab = funcab valor

-- operacoesDeString :: String -> String
-- operacoesDeString valor = valor
--                           `pe` reverse
--                           `pe` tail
--                           `pe` init 


operacoesDeString' :: String -> String
operacoesDeString' valor = 
                            reverse
                          $ tail
                          $ init valor

