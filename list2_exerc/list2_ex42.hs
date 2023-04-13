-- 4.2) Faça uma função que receba uma [String] e retorne todos os elementos palíndromos.

verificaPali :: [String] -> Bool
verificaPali xs = xs == reverse xs

ehPali :: [String] -> [String]
ehPali = filter (\ xs -> xs == reverse xs)