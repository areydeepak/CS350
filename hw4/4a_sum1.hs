sum1 :: IO Int                
sum1 = do
    n <- read <$> getLine           
    if n == -1                      
    then
        return 0
    else do                         
        s <- sum1             
        return (n + s)              
summation :: IO ()            
summation = do
    s <- sum1                
    print s                       
    
    
    
