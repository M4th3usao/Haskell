-- recursividade

-- Verifica se dado uma idade, é uma criança, um adolescente ou adulto.

data FaixaEtaria = Crianca | Adolescente | Adulto | Nulo deriving Show
data Pessoa = Pessoa{idade::Int, faixaEtaria::FaixaEtaria} deriving Show


pessoas = [Pessoa 10 Nulo, Pessoa 18 Nulo, Pessoa 16 Nulo ]

verificarIdade''' :: Pessoa -> Pessoa
verificarIdade''' (Pessoa idade fe)
    | idade <= 10 = Pessoa idade Crianca
    | idade <= 17 = Pessoa idade Adolescente
    | otherwise = Pessoa idade Adulto 

-- Este foi o exemplo ideal para se utilizar um guard
-- o paterning matching decompo


verificarIdade :: Int -> String
verificarIdade idade
    | idade <= 10 = "Criança"
    | idade <= 17 = "Adolescente"
    | otherwise = "Adulto" -- a computação checa que a idade não se encaixa nas opções anteriores, 
    -- ou seja, cai no caso do otherwise, que significa qualquer coisa 

-- isso são "guard" são parecidos com o pipeline, porémcom eles é possível passar operações relacionais/lógicas
-- a primeira coisa a ser satisfeita é a condição de parada. O guard espera uma operação booleana, ele é como se fosse o if

verificarIdade' :: Int -> String
verificarIdade' idade
    | ehCrianca idade = "Criança"
    | ehAdolescente idade = "Adolescente"
    | ehAdulto idade = "Adulto"
        where   
            ehCrianca i = i  <= 10
            ehAdolescente i = i <= 17 
            ehAdulto i = i >= 18

--  semanticamente, está é a melhor opção para se utilizar.


-- verificarIdade'' :: Int -> String
-- verificarIdade'' idade
--     | verificaSeEhCrianca = "Criança"
--     | verificaSeEhAdolescente = "Adolescente"
--     | verificaSeEhAdulto = "Adulto"
--         where   
--             verificaSeEhCrianca  = idade  <= 10
--             verificaSeEhAdolescente i = idade <= 17 
--             verificaSeEhAdulto i = idade >= 18

-- isso seria um exemplo de acoplamento 

-- a clausula where vai denotar o que foi passado no guard "|"