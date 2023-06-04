
-- Capitulo 5

-- Polimorfismo Paramétrico = generics

-- é quando o tipo é definido pelo parâmetro

-- kind são os níveis de tipos
-- NO haskell é como o kind define que tipos dentro de tipos que no caso são de kind 2, representam os tipos como função.

-- Exemplo:

data Coisa a = Nada | UmaCoisa a | DuasCoisas a a deriving Show  

data Caixa a b = Caixa1 a | Caixa2 a b deriving Show

-- um exemplo de kind2 são as listas e um exemplo de kind3 são os map, pois possuem dois campos polimorficos.

-- fazendo uma estrutura de lista

data Lista a = a :>: (Lista a) | Nulo deriving (Show, Eq)

--  " :>: " este operador permite aninhar os elementos e deixa-los em ordem
--  O none é a condição de parada para este percorrimento da lista.(*)

data ListaLigada a = No a (Lista a) | None deriving Show 
-- data ListaLigada a = No{prox::a,valor::(Lista a)} | None deriving Show 

data Arvore a = Galho a (Arvore a ) (Arvore a) | Folha a | NuloA deriving Show

emOrdem :: Arvore a -> [a]
emOrdem NuloA = []
emOrdem (Folha x) = [x]
emOrdem (Galho x esquerda direita) = emOrdem esquerda ++ [x] ++ emOrdem direita 

preOrdem :: Arvore a -> [a]
preOrdem NuloA = []
preOrdem (Folha x) = [x]
preOrdem (Galho x esquerda direita) =  [x] ++ preOrdem esquerda ++ preOrdem direita 

posOrdem :: Arvore a -> [a]
posOrdem NuloA = []
posOrdem (Folha x) = [x]
posOrdem (Galho x esquerda direita) =  posOrdem esquerda ++ posOrdem direita ++ [x]

xs :: Arvore Integer
xs = Galho 10 (Galho 30 (Galho 44 (Folha 4) (Folha 33)) (Folha 10)) NuloA

xs2 = Galho 10 (Folha 5) (Folha 16)

buscaElem :: (Eq a) => Lista a -> a -> Bool
buscaElem Nulo elementoBusca = False
buscaElem  (x :>: lista)  elementoBusca
    | x  == elementoBusca = True
    | otherwise = buscaElem lista x


elementoLista = 10 :>: ( 4 :>: (6 :>: Nulo) )

-- 