

--factorial
factorial :: Int -> Int
factorial 0 = 1
factorial x
    | x < 0 = 0
    | otherwise = factorial (x-1) * x

--Fibonacci
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-2)

--Recursive Sum of a List
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

--Recursive Replicate
replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n a 
    | n < 0 = []
    | otherwise = a : replicate' (n-1) a 

--Recursive Filter
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x = x : filter' p xs 
    | otherwise = filter' p xs

-- Recursive Sorted List
isSorted :: [Int] -> Bool
isSorted [] = True
isSorted [x] = True
isSorted (x:y:xs)
    | x <= y = isSorted (y:xs)
    | otherwise = False

--Recursive Insertion Sort
insert :: Int -> [Int] -> [Int]
insert x [] = [x]
insert x (y:ys) 
    | x <= y = x : y : ys
    | otherwise = y : insert x ys


--Recursive InsertionSort with Insert
insertionSort :: [Int] -> [Int]
insertionSort [] = []
insertionSort (x:xs) = insert x (insertionSort xs)


--Recursive Merge
merge :: [Int] -> [Int] -> [Int]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x <= y = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

-- Recursive MergeSort
mergeSort :: [Int] -> [Int]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort left) (mergeSort right)
    where
        (left,right) = splitAt (length xs `div` 2) xs