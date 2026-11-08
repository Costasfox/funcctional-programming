import Data.Char (toUpper)


scores :: [Int]
scores = [4,12,7,20,3,18]



--Total scores
totalScore :: [Int] -> Int
totalScore [] = 0
totalScore (x:xs) = x + totalScore xs 

--First Score
firstScore :: [Int] -> Maybe Int
firstScore [] = Nothing
firstScore (x:_) = Just x

--Passed Scores
passedScores :: Int -> [Int] -> [Int]
passedScores y [] = []
passedScores y scoresPasssed = filter(\x -> x >= y)  scoresPasssed

--Boost Scores
boostScores :: [Int] -> [Int]
boostScores [] = []
boostScores boost = map (\x -> x + 5) boost 

--Grade
grade :: (Ord a, Num a) => a -> String
grade score 
    | score >= 18 = "Excellent"
    | score >= 10 = "Pass"
    | otherwise = "Fail"

--Score Message
scoreMessage :: Int -> String
scoreMessage score 
    | boosted >= 20 = "High"
    | otherwise = "Normal"
    where
        boosted = score + 5

scoreMessage2 :: Int -> String
scoreMessage2 score = 
    let boosted = score + 5
    in if boosted >= 20 
        then "High"
        else "Normal"

--Stundent
student :: (String, Int, Bool)
student = ("Kostas", 29, True)

getStudentName :: (String, Int, Bool) -> String
getStudentName (name, _, _) = name

getStudentAge :: (String, Int, Bool) -> Int
getStudentAge (_, age, _) = age


--Zip
names::[String]
names = ["Anna","Bob", "Maria"]
marks::[Int]
marks = [15,8,19]

--Τι θα γίνει αν names έχει 4 στοιχεία αλλά marks μόνο 3;
-- θα γίνουν μονο τα 4 πρωτα

zipNamesMarks :: [(String, Int)]
zipNamesMarks = zip names marks

-- List Comprehension
goodBoostedScores :: [Int] -> [Int]
goodBoostedScores scores = [x + 5 | x <- scores , x >= 10]


data Level = Beginner | Intermediate | Advanced
    deriving (Show, Enum)


-- String Upper
upperName :: String -> String
upperName name = map toUpper name