-- Patern Mathing 

p :: Int -> String
p 1 = "1"
p 2 = "2"
p 3 = "3"
p phodace = "nao tem implementacao"
p x = show x --permite que ocorra um parse, ou seja, uma transformação de tipos. Além de permitir inseir indices que ainda não foram implementados--


--Exemplo em tuplas

f :: (Int, Int) -> (Int, Int)
f (1,x) = (10, 5)
f (x,1) = (30, 199)