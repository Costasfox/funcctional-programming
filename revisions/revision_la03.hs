import Data.Char (toUpper)


personalName :: (String, Int) -> String
personalName (name,_) = name


listCompResult :: [Int]
listCompResult = [x*3 | x <- [1..10], even x]


data Number = One | Two | Three | Four | Five
    deriving (Show, Enum)


stringResult :: String
stringResult = map toUpper "haskell" -- "HASKELL"