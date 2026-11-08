-- import Distribution.TestSuite (TestInstance(name))




describeWord :: String -> String
describeWord "" = "Empty"
describeWord word@(x:xs) =
    "Word: " ++ word ++ " First: " ++ [x]

listInfo :: [Int] -> String
listInfo [] = "Empty"
listInfo allNums@(x:xs) =
    "First: " ++ show x ++ " Total: " ++ show (length allNums)


checkList :: [Int] -> String
checkList [] = "Empty"
checkList nums@(x:xs)
    | x >= 10 = "Large First: " ++ show (length nums)
    | otherwise = "Small Fist"


describeLines :: [String] -> String
describeLines [] = "No lines"
describeLines ("":_) = "First line is empty"
describeLines ((c:cs):_) = "Starts with: " ++ [c]

matrixTable :: [[Int]]
matrixTable = [[10,20,30],[40,50]]

matrixInfo :: [[Int]] -> String
matrixInfo []= "Empty"
matrixInfo ([]:_) = "First row empty"
matrixInfo ((x:xs):_) = "First: " ++ show x ++ ", Remaining: " ++ show xs
    

employeeInfo :: [(String,Int)] -> String
employeeInfo [] = "No Employees"
employeeInfo ((name,age):rest) =
    name ++ " is " ++ show age ++ ", Remaining " ++ show (length rest)


employees :: [(String, Int)]
employees = [("Anna",25),("Bob",30),("Maria",28)]

employeeName :: [(String, Int)] -> [String]
employeeName [] = []
employeeName employees = map (\(name,_) -> name) employees


checkNumbers :: [Int] -> String
checkNumbers nums =
    case nums of
        [] -> "Empty"
        [x] -> "Single: " ++ show x
        (x:y:_) -> "First two: " ++ show x ++ ", " ++ show y


checkScores :: [Int] -> String
checkScores scores = 
    let result =
            case scores of
                [] -> "No scores"
                [x] -> "Only one score: " ++ show x
                (x:_) -> "First score: " ++ show x
    in result


firstProduct :: [String] -> String
firstProduct products = 
    case products of
        [] -> "No products"
        [x] -> "One product: " ++  x
        (x:_) -> "First product: " ++  x


checkList2 :: [Int] -> String
checkList2 nums
    | (x:y:_) <- nums, x == y = "Equals"
    | otherwise = "Different"


checkPair :: [Int] -> String
checkPair nums
    | (x:y:_) <- nums, x == y = "Equals"
    | (x:y:_) <- nums, x /= y = "Different"
    | [x] <- nums = "Not enough numbers"
    | otherwise = "Not enough numbers"

analyzeNumbers :: [Int] -> String
analyzeNumbers nums =
    case nums of
        [] -> "Empty"
        (x:xs)
            | x > 10 -> "Large: " ++ show x 
            | otherwise -> "Small: " ++ show x


getEmployeeName :: (String,Int) -> String
getEmployeeName employee = 
    let (name, age) = employee
    in name

employeeInfo2 :: (String, Int, Double) -> String
employeeInfo2 employee = 
    let (name, age, salary) = employee
    in "Name: " ++ name ++ " Salary: " ++ show salary


productInfo :: (String, Double, Int) -> String
productInfo product = title ++ " total: " ++ show total
    where
        (title,price,quantity) = product
        total = fromIntegral (quantity) * price


employees1 :: [(String,Double)]
employees1 = [("Anna",1800),("Bob",2600),("Maria",3100),("John",1500)]

highEarners :: [(String,Double)] -> [String]
highEarners employees1 = [ name | (name,salary) <- employees1 , salary > 2000]




products2 :: [(String, Double)]
products2 = [("Laptop",800),("Mouse",25),("Keyboard",70)]


applyDiscount :: [(String, Double)] -> [(String,Double)]
applyDiscount products2 = map (\(name, price) -> (name, (price - (price * 0.10)))) products2
