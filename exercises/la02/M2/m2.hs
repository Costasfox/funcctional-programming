
--Task 1
firstColumn :: Num a => [[a]] -> [a]
firstColumn [] = []
firstColumn ([]:_) = []
firstColumn list@((x:xs):c) = map (\x -> head x) list


--Task 2
restColumns  :: Num a => [[a]] -> [[a]]
restColumns [] = []
restColumns ([]:_) = []
restColumns list@((x:xs):c) = map (\x -> tail x) list

