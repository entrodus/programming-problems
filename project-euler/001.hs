-- https://projecteuler.net/problem=1
-- https://www.jdoodle.com/execute-haskell-online
-- Multiples of 3 and 5

isMultipleOfThree x = x `mod` 3 == 0
isMultipleOfFive x = x `mod` 5 == 0

isValidNumber :: Integer -> Bool
isValidNumber x = isMultipleOfThree(x) || isMultipleOfFive(x)

inputNumbers = [1..1000]

applicableNumbers = filter isValidNumber inputNumbers

main :: IO ()
main =  do
        putStrLn (show applicableNumbers)
        putStrLn (show (sum applicableNumbers))
