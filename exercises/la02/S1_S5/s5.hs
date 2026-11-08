

checkPalindrome :: [String] -> [Bool]
checkPalindrome boolList =  map (\x -> reverse x == x) boolList