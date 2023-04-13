-- 4.4) Filtre os números primos de uma lista recebida por parâmetro.

isPrimo :: Int -> Bool
isPrimo n = n > 1 && all (\x -> n `mod` x /= 0) [2..n-1]
-- isPrimo n = n > 1 && all (\x -> n `mod` x /= 0) [2..floor (sqrt (fromIntegral n))]

somentePrimos :: [Int] -> [Int]
somentePrimos = filter isPrimo
