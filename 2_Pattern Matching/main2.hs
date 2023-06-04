data Pessoa2 = Pessoa {nomep:: String, idade :: Int} deriving Show

data Animal = Cachorro | Gato | Papagaio deriving Show

foo :: Int -> String
foo valor = case valor of
                1 -> "1"
                2 -> "2"
                x -> "erro"


ehPar :: Int -> Bool
ehPar valor = case valor `mod` 2 of 
                    0 -> True
                    1 -> False


checaIdade :: Pessoa2 -> String
checaIdade pessoa = case idade pessoa >= 18 of
                            True -> "Pessoa possui 18 anos"
                            False -> "Menor de Idade"

                    -- / o case of faz uma analide de expressão


verificaFulano :: Pessoa2 -> Bool
verificaFulano pessoa = case nomep pessoa of 
                            "Fulano" -> True
                            _ -> False

converteAnimalString :: Animal -> String
converteAnimalString animal = 
    case animal of 
        Cachorro -> "Eh um cachorro"
        Gato -> "Eh um gato"
        Papagaio -> "Eh papagaio"


animais :: [Animal]
animais = [Papagaio, Cachorro, Cachorro, Gato]

verificaCachorro :: Animal -> Bool
verificaCachorro Cachorro = True
verificaCachorro _ = False


-- Função lambda
-- (\ x -> x + 1) 2

