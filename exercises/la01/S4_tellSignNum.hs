

tellSignNum :: (Ord a, Num a) => a -> String
tellSignNum x
    | x > 0 = "Positive"
    | x < 0 = "Negative"
    | otherwise = "Zero" 