-- import Distribution.ModuleName (main)


scores :: [Int]
scores = [4,12,7,20,3]


myTotal :: [Int] -> Int
myTotal [] = 0
myTotal (x:xs) = x + myTotal xs

firstScore :: [Int] -> Maybe Int
firstScore [] = Nothing
firstScore (x:xs) = Just x

passedScores :: Int -> [Int] -> [Int]
passedScores minimum = filter (\x -> x > minimum)

boostScores :: [Int] -> [Int]
boostScores [] = []
boostScores boostedScores = map (\x -> x + 5) boostedScores

data Level = Beginner | Intermediate | Advanced
    deriving Show

levelFromTotal :: Int -> Level
levelFromTotal total
    | total < 20 = Beginner
    | total < 40 = Intermediate
    | otherwise = Advanced 

levelMessage :: Level -> String
levelMessage Beginner = "You need to try more"
levelMessage Intermediate = "Keep going!"
levelMessage Advanced = "Great!"

main :: IO ()
main = do
    putStrLn "Hello Kostas"
    putStrLn ("Scores: " ++ show (scores))
    putStrLn ("Total: " ++ show (myTotal scores))
    putStrLn ("Passing Scores: " ++ show (passedScores 10 scores))
    putStrLn ("Boosted Scores: " ++ show  (boostScores (passedScores 10 scores)))
    putStrLn ("First Score: " ++ show (firstScore scores))
    putStrLn ("Level: " ++ show (levelFromTotal (myTotal scores)))
    putStrLn ((levelMessage (levelFromTotal  (myTotal scores))))
