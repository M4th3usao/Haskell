import Prelude hiding (Nothing, Maybe, Just)

-- Teoria das categorias

-- é a responsável por regular a matemática

-- é composta por objetos, categorias e um tipo chamado de hask
-- os objetos seriam os tipos e os morfismos seriams as relações entre os objetos.(*)
-- morfismos é a generalização do conceito de função

-- banco de dados categorico

-- homomorfismo é pegar um ramo da matemática e manter sua estrutura como o tipo e valores e leva para outra categoria, como opor exemplo, pegar um ramo da categoria hask e levar para a endo categoria que seria uma lista, onde iria manter a estrutura trazida da categoria hask.

-- ler o livro Theory - presetation

-- A categoria Hask é representada pela seta (->)

-- FUNTORES 
-- os funtores permitem transofrmar tipos em categorias internas, mas para realizar isso é necessário ser de Kind 2

data Maybe a = Just a | Nothing deriving Show 

-- ehMaior :: (Num a, Ord a) => Maybe a -> Bool 
-- ehMaior (Just idade) 
--     | idade >= 18 = True
--     | otherwise = False

-- ehMaior :: Int -> Maybe Bool
-- ehMaior idade  
--     | idade >= 18 = Just True
--     | otherwise = Nothing

ehMaior :: Int -> Maybe Int
ehMaior idade  
     | idade >= 18 = Just idade
     | otherwise = Nothing

instance Functor Maybe where    
    fmap funcao (Just valor) = Just (funcao valor)
    fmap _  Nothing = Nothing
-- o fmap é pré-fixo
-- O <$> é infixo

-- Funtor Maybe

-- no haskell quando se cria um funtor se cria uma categoria interna 

-- Funtores Aplicativos
-- existem limitações tecnicas quando se utiliza um funtor, mas o funtor aplicativo pode resolver isso

-- permite fazer uma composição de funtores, porém é preciso que os funtores sejam os mesmos
-- pra ser um aplivativo é necessário ser um funtor, assim, como em uma monoide e preciso exitir um semigrupo anteriormente 
-- quando um value constructor que representa um erro é aplicado ele será aplicado no código inteiro.(*)

instance Applicative Maybe where
     pure = Just
     (Just funcao) <*> (Just x) = Just (funcao x)
     _ <*> _ = Nothing

-- pure (+) <*> Just 5 <*> Just 5