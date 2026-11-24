

applyDiscount :: Double -> Double -> Double
applyDiscount price discount = price - (price * discount / 100)

main :: IO ()
main = do 
    -- putStr "Final Price: "
    -- print (applyDiscount 100 20)
    putStrLn ("Final Price: " ++ show (applyDiscount 100 20) ++ " EUR")
    putStrLn "Calculation Complete!"