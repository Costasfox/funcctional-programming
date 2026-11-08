import Data.Char (digitToInt, isDigit)


toDigits :: String -> [Int]
toDigits nums = map (\x -> digitToInt x) nums

doubleAlternating :: [Int] -> [Int]
doubleAlternating [] = []
doubleAlternating [x] = [x]
doubleAlternating (x:y:xs) =  x: y * 2 :  doubleAlternating xs


adjustDigit :: Int -> Int
adjustDigit x
    | x > 9 = x-9
    | otherwise = x


luhnSum :: String -> Int
luhnSum num =
    let 
        x = sum (map (\x -> adjustDigit x) (doubleAlternating (reverse (toDigits num))))
    in x

checkCCNumber :: String -> Bool
checkCCNumber num
    | num == "" = False
    | all isDigit num == False = False
    | luhnSum num `mod` 10 == 0 = True
    | otherwise = False
