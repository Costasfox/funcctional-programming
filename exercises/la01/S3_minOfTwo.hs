
minOfTwo :: Ord a => a -> a -> a
minOfTwo x y =
    if x < y
        then  x
        else  y