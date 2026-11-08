

priceStatus :: Double -> String
priceStatus price 
    | finalPrice >= 100 = "Expensive"
    | otherwise = "Affordable"
    where
        finalPrice = price + 20


orderStatus :: Double -> String
orderStatus price
    | finalPrice >= 100 = "Large Order"
    | otherwise = "Small Order"
    where
        taxPrice = price * 0.24
        finalPrice = price + taxPrice


discountStatus :: Double -> String
discountStatus price =
    let 
        discount = price * 0.10
        finalPrice = price - discount
    in
        if finalPrice >= 80
            then "High"
            else "Low"

shippingStatus :: Double -> String
shippingStatus price = 
    let
        tax = price * 0.24
        finalPrice = price + tax
        status
            | finalPrice >= 150 = "Free Shipping"
            | finalPrice >= 60 = "Reduced Shipping"
            | otherwise = "Standard Shipping"
    in
        status

userLevel :: Int -> String
userLevel points
    | bonus >= 100 = "Gold"
    | bonus >= 60 = "Silver"
    | otherwise = "Bronze"

    where
        bonus = points + 20

finalResult :: Int -> Int -> String
finalResult exam coursework
    | average >= 70 = "Distinction"
    | average >= 50 = "Pass"
    | otherwise = "Fail"

    where
        total = exam + coursework
        average = total `div` 2

salaryStatus :: Double -> String
salaryStatus salary = 
    let
        bonus = salary * 0.10
        finalSalary = salary + bonus
    in
        if finalSalary >= 2000
            then "High Salary"
            else "Normal Salary"


scores :: [Int]
scores = [3,12,45,34,12,67,45,32,1,3,45,23,12,34]

processScores :: [Int] -> [Int]
processScores s = map (\x -> x + 5) (filter (\x -> x >= 10) s)


processScores2 :: [Int] -> [Int]
processScores2 s=
    let
        passed = filter (\x -> x >= 10) s
        boosted = map (\x -> x + 5) passed
    in
        boosted

prices :: [Double]
prices = [10,20,50,5,100]

processPrices :: [Double] -> [Double]
processPrices prices = 
    let
        checkPrice = filter (\x -> x >= 20) prices
        discount = map (\x -> x * 0.10) checkPrice
        finalPrice = zipWith (-) checkPrice discount
    in
        finalPrice

ages :: [Int]
ages = [15,18,22,13,30]

processAges :: [Int] -> [Int]
processAges ages = addYear
    where 
        adults = filter (\x -> x >= 18) ages
        addYear = map (\x -> x + 1) adults

num:: [Int]
num = [2,6,3,10,8]

processNumbers :: [Int] -> [Int]
processNumbers nums = doubleNum
    where
        filterNums = filter (\x -> x > 5) nums
        doubleNum = map (\x -> x*2) filterNums

orders :: [Double]
orders = [20,50,100,30]

processOrders :: [Double] -> [Double]
processOrders orders = finalPrice
    where
        filterOrders = filter (\x -> x >= 50) orders
        withShipping = map (\x -> x + 5) filterOrders
        tax = map (\x -> x * 0.20) filterOrders
        finalPrice = zipWith (+) withShipping tax


products :: [Double]
products = [10,30,50,20]

processProducts :: [Double] -> [Double]
processProducts products = finalPrice
    where
        addAndFilterPrice = [x + 10 | x <- products , x >=30]
        tax = [x * 0.20 | x <- addAndFilterPrice]
        finalPrice = zipWith (+) addAndFilterPrice tax


