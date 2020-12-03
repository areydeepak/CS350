import Control.Monad.State(StateT, get, evalState, MonadState(state), State)
import Control.Monad.Identity(Identity)
--FUNCTION NAME fib
fib :: Int -> Int                 
fib n
        | n < 0 = error "negative number"
        | otherwise = head $ evalState fibo (0, 1, n, [0])

fib_State :: State (Int, Int, Int, [Int]) ()                       
fib_State = state (\(a, b, n, d) -> ((), (b, a + b, n - 1, b : d)))

fibo :: StateT (Int, Int, Int, [Int]) Identity [Int]       
fibo = do
    (_, _, n, x) <- get
    if n /= 0 then do
        fib_State
        fibo
    else
        return x
