-- Patern Mathing
p :: Int -> String
p 1 = "1"
p 2 = "2"
p 3 = "3"
p phodace = "nao tem implementacao"
-- p x = show x --permite que ocorra um parse, ou seja, uma transformação de tipos. Além de permitir inseir indices que ainda não foram implementados--


--Exemplo em tuplas

f :: (Int, Int) -> (Int, Int)
f (1,x) = (10, 5)
f (x,1) = (30, 199)


-- Introdução a lista: 
-- Lista: 
-- [1,2,10]

-- podemos utilizar o (..) para dar continuidade a sequência da lista.
-- [1..10] = [1,2,3,4,5,6,7,8,9,10]

-- concatenação de listas: [1..10] ++ [10..20] = [1,2,3,4,5,6,7,8,9,10,10,11,12,13,14,15,16,17,18,19,20]

-- lista :: [Int] -> [Int]
-- lista xs = [2 * x | x <- xs ]

listMult11 :: [Int] -> [Int]
listMult11 xs = [1 * (11 ^ (x-1))  | x <- xs]
-- Os números são multiplicados em 11 retornado: 
-- [1,11,121,1331,14641,161051,1771561,19487171,214358881,2357947691]

listNine :: [Int] -> [Int]
listNine xs = [1 + (x - 1) * 9 | x <- xs]
-- Os numeros são somados 9 em 9: retornando ->  
-- [1,10,19,28,37,46,55,64,73,82]

listPula :: [Int] -> [Int]
listPula xs = [  5 + 3 * x | x <- xs]
-- retornando:  [8,11,14,17,20,23,26,29,32,35]
-- Nessa função, estamos usando a sintaxe de compreensão de lista ([5 + 3*x | x <- [0..9]]) para gerar uma lista dos 10 primeiros elementos da sequência definida por a_n = 5 + 3n, onde n é um número inteiro não negativo. O resultado é a lista [5,8,11,17,20,26,29,32,38,41].

