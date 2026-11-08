
vecdot :: Num a => [a] -> [a] -> a
vecdot x y =
    let
        allList = zipWith (*) x y
    in sum allList