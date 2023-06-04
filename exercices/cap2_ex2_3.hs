-- 2.2)	 Crie	 uma	 função	 que	 verifique	 se	 o	 tamanho	 de	 uma
-- String	é	par	ou	não.	Use		Bool		como	retorno.

validaTamanho :: String -> Bool
validaTamanho xs = even $ length xs 


-- 2.3)	 Escreva uma função	 que	 receba	 um	 vetor	 de	 Strings	 e
-- retorne	uma	lista	com	todos	os	elementos	em	ordem	reversa.
listString :: [String] -> [String]  
listString r = reverse [reverse  x | x <- r]

-- 2.6)	Faça	uma	função	que	receba	uma	String	e	retorne		True	
-- se	esta	for	um	palíndromo;	caso	contrário,	False.

isPalindromo :: String -> Bool
isPalindromo xs = xs == reverse xs