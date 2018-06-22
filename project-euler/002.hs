-- https://projecteuler.net/problem=2
-- https://www.jdoodle.com/execute-haskell-online
-- Even Fibonacci numbers

fibonacci :: Int -> Int
fibonacci x
  | x == 1 = 1
  | x == 2 = 2
  | otherwise = (fibonacci (x-2) + fibonacci (x-1))

isEven x = x `mod` 2 == 0

-- inputNumbers = [1..4000000]
inputNumbers = [1..40]
listFibonacci = map fibonacci inputNumbers
filtered = filter isEven listFibonacci


-- fibonacciList = [fibonacci(n) | n <- [1..], fibonacci(n) < 200]
fibonacciList = [fibonacci(n) | n <- [1..], n < 5]

-- find a way to either  produce a list? produce until a specific statement? 

main :: IO ()
main =  do
        
        putStrLn (show (sum filtered))
        putStrLn (show fibonacciList)
        
        --putStrLn $ show $ matest 20
        --putStrLn $ show $ fibonacci 3
        --let listFibonacci = map fibonacci [1,2,3,4,5]
        --putStrLn (show listFibonacci)
