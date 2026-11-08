

slice :: Integral a => a -> a -> [b] -> [b]
slice x y z= take (fromIntegral (y - x)) (drop (fromIntegral x) z)
