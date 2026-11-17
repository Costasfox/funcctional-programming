

-- factorial
factorial :: Int -> Int
factorial 0 = 1
factorial x
    | x < 0 = 0
    | otherwise = factorial (x-1) * x

-- Fibonacci
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-2)

-- Recursive Sum of a List
sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

--Recursive Length of a List
lengthList :: [a] -> Int
lengthList [] = 0
lengthList (_:xs)=  1 + lengthList xs 

--Max in a List
maxInList :: [Int] -> Int
maxInList [] = 0
maxInList [x] = x
maxInList (x:xs)
    | x > maxInList xs = x
    | otherwise = maxInList xs
