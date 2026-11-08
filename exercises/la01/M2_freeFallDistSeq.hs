


freeFallDist :: Float -> Float
freeFallDist t =
    let 
        g = 9.8
        distance = 0.5 * g * (t ** 2)
    in distance


freeFallDistSeq :: [Float] -> [Float]
freeFallDistSeq [] = []
freeFallDistSeq list = map (\x -> freeFallDist x ) list


main :: IO ()
main = do
    let list = [1..10]
    print (freeFallDistSeq list)