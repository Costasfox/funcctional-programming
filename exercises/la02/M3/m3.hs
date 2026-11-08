

data BMILevel = Underweight | Normal | Overweight | Obese
    deriving (Show, Eq)

evaluateBMI :: Float -> Float -> (Float,BMILevel)
evaluateBMI weight height
    | bmi < 18.5 = (bmi,Underweight)
    | bmi < 25 = (bmi,Normal)
    | bmi < 30 = (bmi,Overweight)
    | otherwise = (bmi,Obese)
    where
        bmi = weight / (height ^ 2)