-- Type class
-- serve para agrupar comportamentos 
-- Restrição de Tipos e Funções: serve para restringir os tipos do maior para menor.(*)

data Coisa a = Nada | UmaCoisa a | DuasCoisas a a 


instance (Show a) => Show (Coisa a) where
    show Nada = "Nada"
    show (UmaCoisa x) = "UmaCoisa" ++ show x
    show (DuasCoisas x y) = "{ DuasCoisas " ++ show x ++ " " ++ show y ++ "}"



-- instance (Show a) => Show (Coisa a) where
--     show (UmaCoisa a) = show (UmaCoisa x)