import Data.Char (toUpper,isLower)



-- Tuples

getName :: (String,Int,Bool) -> String
getName (name, _ ,_) =name

getAge :: (String, Int, Bool) -> Int
getAge (_,age,_) = age

getActive :: (String, Int, Bool) -> Bool
getActive (_,_,active) = active

-- List Comprehensions
-- ghci> [x*2|x <- [1..5]]
-- [2,4,6,8,10]
-- ghci> [ x | x <- [1..10], odd x]
-- [1,3,5,7,9]
-- ghci> [ x * 4 | x <- [1..10], even x]
-- [8,16,24,32,40]
-- ghci> [x+10 | x <- [1..10], x>5]
-- [16,17,18,19,20]


-- Enumerations / Enum

data Color = Red | Green | Blue
    deriving (Show, Enum)

-- ghci> fromEnum Red
-- 0
-- ghci> fromEnum Green
-- 1
-- ghci> fromEnum Blue 
-- 2
-- ghci> toEnum 1 :: Color
-- Green
-- ghci> succ Red
-- Green
-- ghci> pred Blue
-- Green

--Enum Range
-- ghci> [Red .. Blue]
-- [Red,Green,Blue]
-- ghci> enumFromTo Red Blue
-- [Red,Green,Blue]


data Number = One | Two | Three | Four | Five | Six | Sever | Eight
    deriving (Show , Enum)


-- ghci> [One .. Eight]
-- [One,Two,Three,Four,Five,Six,Sever,Eight]
-- ghci> [One,Two,Eight]
-- [One,Two,Eight]
-- ghci> [One,Three .. Eight]
-- [One,Three,Five,Sever]
-- ghci> [One,Two .. Eight]
-- [One,Two,Three,Four,Five,Six,Sever,Eight]
-- ghci> [Two .. Eight]
-- [Two,Three,Four,Five,Six,Sever,Eight]

----



