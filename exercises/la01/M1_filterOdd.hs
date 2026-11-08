

isOdd :: Integral a => a -> Bool
isOdd x =
    if x `mod` 2 /= 0
        then True
        else False

filter_odd :: Integral a => [a] -> [a]
filter_odd list = filter (\x -> isOdd x) list


-- main :: IO ()
-- main = do
--     x <- getLine
--     let number = read x :: Int
--     y <- getLine
--     let list = read y :: [Int]
--     putStrLn ("isOdd " ++ x ++ " : " ++ show (isOdd number))
--     putStrLn ("filter_odd " ++ y)
--     putStrLn (show (filter_odd list))

main :: IO ()
main = do
    putStrLn ("isOdd 2: " ++ show (isOdd 2))
    putStrLn ("filter_odd [1..10]")
    print (filter_odd [1..10])
    putStrLn ("filter odd numbers in [1..10] using lambda function")
    print (filter (\x -> x `mod` 2 /= 0) [1..10])

