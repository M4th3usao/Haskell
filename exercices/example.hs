data Correncia = Real | Dolar deriving (Show, Eq)

data Dinheiro = Dinheiro {
    valor :: Double,
    correncia :: Correncia
} deriving (Show, Eq)

-- função para converter um Dinheiro para Dolar
toDolar :: Dinheiro -> Dinheiro
toDolar (Dinheiro v Real) = Dinheiro (v / 5.25) Dolar -- considerando a cotação atual do dólar
toDolar d@(Dinheiro  Dolar) = d -- se já estiver em dólar, retorna o mesmo valor

-- função para converter todos os Dinheiro de uma lista para Dolar
todosParaDolar :: [Dinheiro] -> [Dinheiro]
todosParaDolar = map toDolar

-- função para filtrar apenas os Dinheiro em Dolar de uma lista
filtrarDolares :: [Dinheiro] -> [Dinheiro]
filtrarDolares = filter ((Dinheiro  c) -> c == Dolar)

-- função para somar os valores de todos os Dinheiro em Dolar de uma lista
somarDolares :: [Dinheiro] -> Double
somarDolares = foldl (\acc (Dinheiro v Dolar) -> acc + v) 0.0

-- função para contar a quantidade de Dinheiro em Dolar de uma lista
contarDolares :: [Dinheiro] -> Int
contarDolares = foldl (\acc (Dinheiro _ c) -> if c == Dolar then acc + 1 else acc) 0
-- Explicação das funções:

-- toDolar: recebe um Dinheiro e retorna um novo Dinheiro com o valor convertido para Dólar, caso a corrente seja Real.
-- todosParaDolar: recebe uma lista de Dinheiro e retorna uma nova lista com todos os valores convertidos para Dólar.
-- filtrarDolares: recebe uma lista de Dinheiro e retorna uma nova lista contendo apenas os valores em Dólar.
-- somarDolares: recebe uma lista de Dinheiro e retorna a soma dos valores em Dólar.
-- contarDolares: recebe uma lista de Dinheiro e retorna a quantidade de valores em Dólar.
-- Para testar as funções, você pode criar uma lista de Dinheiro com diferentes valores em Real e Dólar e aplicar as funções para ver os resultados.