import Text.XHtml (height, width)

-- Num        → αριθμητικά operations
-- Fractional → δεκαδικοί / division
-- Eq         → == /=
-- Ord        → < <= > >=

-- Eq   → == /=
-- Ord  → < <= > >=
-- Num  → + - *
-- Show → value → String
-- Read → String → value



checkSign :: (Num a, Ord a) => a -> String
checkSign x= 
    if x >= 0
        then "Possitive"
        else "Negative"


discount :: Bool -> Double -> Double
discount isVip price = 
    if isVip
        then price * 0.8
        else price

grade :: Int -> String
grade score 
    | score >= 70 = "Distinction"
    | score >= 40 = "Pass"
    | otherwise = "Failed"


dayType :: String -> String
dayType day =
    case day of
        "Saturday"  -> "Weekend"
        "Sunday"    -> "Weekend"
        _           -> "Weekday"

finalPrice :: Double -> Double
finalPrice price =
    let discount = 0.20
        discountPrice = price * (1 - discount)
    in discountPrice

rectangleInfo :: Double -> Double -> Double
rectangleInfo width height =
    let area = width * height
    in area

finalPrice2 :: Double -> Double
finalPrice2 price = price * (1 - discount)
    where
        discount = 0.20

tax :: Double -> Double
tax salary = taxable * rate
    where
        rate = 0.20
        allowance = 12570
        taxable = salary - allowance

rectangleInfo2 :: Double -> Double -> Double
rectangleInfo2 width height = area
    where
        area = width * height


bmiMessage :: Double -> Double -> String
bmiMessage weight height
    | bmi < 18.5 = "Underweight"
    | bmi < 25 = "Normal"
    | otherwise = "Overweight"
    where
        bmi = weight / (height ^ 2)


scoreMessage :: Int -> String
scoreMessage score 
    | score >= 70 = "Excellent"
    | score >= 40 = "Passed"
    | otherwise = "Failed"

calculatePrice :: Double -> Double
calculatePrice price = price + (price * tax)
    where
        tax = 0.24

