
magnitude :: (Float,Float) -> Float
magnitude (x, y) = 
    let calc = sqrt ((x ^ 2) + (y ^ 2))
    in calc