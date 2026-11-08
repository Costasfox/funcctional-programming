



scores :: [Int]
scores = [3,6,12,17,4,16,1,2]


--total
totalScores :: [Int] -> Int
totalScores [] = 0
totalScores (x:xs) = x + totalScores xs  

--boost
boostScore :: [Int] -> [Int]
boostScore [] = []
boostScore scores = [x + 5 | x <- scores]

--pass
passedScores:: [Int] -> [Int]
passedScores [] = []
passedScores scores = filter(\x -> x >= 10) scores

--message
messagePass :: Int -> String
messagePass total
    | total >= 50 = "Strong"
    | otherwise = "Needs Work"



analyticsScores :: [Int] -> (Int, [Int], String)
analyticsScores xs = (total, boostPassed, msg)
    where
        total = totalScores xs
        passed = passedScores xs
        boostPassed = boostScore passed
        msg = messagePass total