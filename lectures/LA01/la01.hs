import Text.XHtml (height, width)

double x = x * 2

add x y = x + y

multiply x y = x * y

substractTwo x = x - 2

square x = x * x

triple x = x * 3

isAdult :: Int -> Bool
isAdult age = age >= 18

ageMessage :: Int ->  String
ageMessage age = 
    if age >= 18
        then "Adult"
        else "Minor"

checkNumber :: Int -> String
checkNumber num =
    if num > 0
        then "Positive"
        else "Not Postive"

checkNumber2 :: Int -> String
checkNumber2 num
    | num > 0 = "Positive"
    | num < 0 = "Negative"
    | otherwise = "Zero" 

gradeMessage :: Int -> String
gradeMessage grade
    | grade >= 90 = "Excellent"
    | grade >= 70 = "Good"
    | grade >= 50 = "Pass"
    | otherwise = "Fail"

describeNumber :: Int -> String
describeNumber 0 = "Zero"
describeNumber 1 = "One"
describeNumber _ = "Something else"

dayType :: String -> String
dayType "Saturday" = "Weekend"
dayType "Sunday"   = "Weekend"
dayType _          = "Weekday"

total :: [Int] -> Int
total numbers = sum numbers

howMany :: [Int] -> Int
howMany numbers = length numbers

isEmpty :: [Int] -> Bool
isEmpty []  = True
isEmpty _   = False

firstElement :: [Int] -> Maybe Int
firstElement [] = Nothing
firstElement (x:xs) = Just x

showFirst :: Maybe Int -> String
showFirst Nothing = "No number"
showFirst (Just x) = "Found a number"

restElements :: [Int] -> [Int]
restElements [] = []
restElements (x:xs) = xs

myLength :: [Int] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

-- myLength [10,20,30]
-- = 1 + myLength [20,30]
-- = 1 + 1 + myLength [30]
-- = 1 + 1 + 1 + myLength []
-- = 1 + 1 + 1 + 0
-- = 3

mySum :: [Int] -> Int
mySum [] = 0
mySum (x:xs) = x + mySum xs

-- mySum [2,3,1]
-- = 2 + mySum [3,1]
-- = 2 + 3 + mySum [1]
-- = 2 + 3 + 1 + mySum []
-- = 2 + 3 + 1 + 0
-- = 6

myProduct :: [Int] -> Int
myProduct [] = 1
myProduct (x:xs) = x * myProduct xs

-- myProduct [2,3,4]
-- = 2 * myProduct [3,4]
-- = 2 * 3 * myProduct [4]
-- = 2 * 3 * 4 * myProduct []
-- = 2 * 3 * 4 * 1
-- = 24

doubleList :: [Int] -> [Int]
doubleList [] = []
doubleList (x:xs) = x * 2 : doubleList xs

-- doubleList [2,3,4]

-- = 2 * 2 : doubleList [3,4]
-- = 4 : doubleList [3,4]

-- = 4 : (3 * 2 : doubleList [4])
-- = 4 : (6 : doubleList [4])

-- = 4 : (6 : (4 * 2 : doubleList []))
-- = 4 : (6 : (8 : []))

-- = [4,6,8]

addOneToList :: [Int] -> [Int]
addOneToList [] = []
addOneToList (x:xs) = x + 1 : addOneToList xs

onlyPositive :: [Int] -> [Int]
onlyPositive [] = []
onlyPositive (x:xs) = 
    if x > 0
        then x : onlyPositive xs
        else onlyPositive xs

-- onlyPositive [-2,5,-1,10]

-- -2 > 0 ? False
-- → onlyPositive [5,-1,10]

-- 5 > 0 ? True
-- → 5 : onlyPositive [-1,10]

-- -1 > 0 ? False
-- → 5 : onlyPositive [10]

-- 10 > 0 ? True
-- → 5 : 10 : onlyPositive []

-- onlyPositive []
-- → []

-- Άρα:
-- 5 : 10 : []
-- → [5,10]


onlyEven :: [Int] -> [Int]
onlyEven [] = []
onlyEven (x:xs) =
    if x `mod` 2 == 0
        then x : onlyEven xs
        else onlyEven xs

onlyGreaterThan10 :: [Int] -> [Int]
onlyGreaterThan10 [] = []
onlyGreaterThan10 (x:xs) = 
    if x > 10
        then x : onlyGreaterThan10 xs
        else onlyGreaterThan10 xs

greaterThan10 :: Int -> Bool
greaterThan10 x = x > 10

-- filter greaterThan10 [5,12,3,20,10,15]
-- 5  -> greaterThan10 5  -> False -> πέτα το
-- 12 -> greaterThan10 12 -> True  -> κράτα το
-- 3  -> False                  -> πέτα το
-- 20 -> True                   -> κράτα το
-- 10 -> False                  -> πέτα το
-- 15 -> True                   -> κράτα το

-- map = πάρε κάθε στοιχείο και άλλαξέ το
-- filter = πάρε κάθε στοιχείο και αποφάσισε αν θα το κρατήσεις

isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

doubleNumber :: Int -> Int
doubleNumber x = x * 2
-- map doubleNumber [1,2,3,4]
-- 1 -> doubleNumber 1 -> 2
-- 2 -> doubleNumber 2 -> 4
-- 3 -> doubleNumber 3 -> 6
-- 4 -> doubleNumber 4 -> 8

-- Lamda Function 
-- map (\x -> x * 2) [1,2,3,4]

-----

processNumbers :: [Int] -> [Int]
processNumbers [] = []
processNumbers numbers = map (\x -> x + 5) (filter (\x -> x > 10) numbers)


addFive :: Int -> Int
addFive x = x + 5

-- f . g = first g, then f
-- (f . g) x = f (g x)
-- Δηλαδή διαβάζεται από δεξιά προς τα αριστερά.

doubleThenAddFive :: Int -> Int
doubleThenAddFive = addFive . doubleNumber


squareThenAddFive :: Int -> Int
squareThenAddFive = addFive . square


processNumbers2 :: [Int] -> [Int]
processNumbers2 = map (addFive) . filter (greaterThan10)

myProduct2 :: [Int] -> Int
myProduct2 = foldr (*) 1

foldrSum :: [Int] -> Int
foldrSum = foldr (+) 0

--fordr mean fold right

-- foldr (+) 0 [1,2,3,4]
-- foldr
-- operation      = +
-- startingValue  = 0
-- list           = [1,2,3,4]

-- foldr (-) 0 [1,2,3]
-- = 1 - (2 - (3 - 0))
-- = 1 - (2 - 3)                                     
-- = 1 - (-1)
-- = 2

-- foldl mean  fold left                    
-- foldl (-) 0 [1,2,3]
-- = ((0 - 1) - 2) - 3
-- = -6

--foldr = μαζεύει από δεξιά
                                                                
--foldl = μαζεύει από αριστερά


getAge :: (String,Int, Bool) -> Int
getAge (name,age,active) = age

getName :: (String,Int, Bool) -> String
getName (name,_,_) = name

isActive :: (String,Int,Bool) -> Bool
isActive (name,age,active) = active


-- x = 10
-- In Haskell, = means binding, not assignment
-- x = 20

main :: IO ()
main = do
    putStrLn "Hello from Haskell"
    putStrLn "What is your name?"
    name <- getLine
    putStrLn ("Hello " ++ name)
    putStrLn "How old are you?"
    textAge <- getLine
    let age = read textAge :: Int
    putStrLn ("Hey " ++ name ++ " you are an " ++ (ageMessage age) )


data Color = Red | Green | Blue
    deriving Show

describeColor :: Color -> String
describeColor Red  = "The color is Red"
describeColor Green = "The color is Green"
describeColor Blue = "The color is Blue"


data Shape
    = Circle Double
    | Rectangle Double Double
    deriving Show

dimensions :: Shape -> [Double]
dimensions (Circle radius) = [radius]
dimensions (Rectangle width height) = [width, height]

area :: Shape -> Double
area (Rectangle width height) = width * height
area (Circle radius) = pi * radius * radius


describeShape :: Shape -> String
describeShape (Circle _) = "Circle"
describeShape (Rectangle _ _) = "Rectangle"