import Data.Char (isUpper)

extract_upper :: String -> String
extract_upper word = filter (\x -> isUpper x ) word


extract_upper_comp :: String -> String
extract_upper_comp list = [x | x <- list , isUpper x]