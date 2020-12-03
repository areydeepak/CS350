sum2 :: IO Int                                   
sum2 = (read <$> getLine :: IO Int) >>= (\n ->   
    if n == -1                                          
    then return 0                                       
    else sum2 >>= (\s ->                         
        return(n + s)))                                 

summationWithoutDo :: IO ()                             
summationWithoutDo = sum2 >>= print              
