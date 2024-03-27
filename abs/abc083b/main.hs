import Control.Monad
import Data.Maybe 
import qualified Data.ByteString.Char8 as BS 

readInt = fst . fromJust . BS.readInt
readIntList = map readInt . BS.words
getInt = readInt <$> BS.getLine
getIntList = readIntList <$> BS.getLine

main = do
    [n, a, b] <- getIntList
    print $ sum [x | x <- [1..n], f x >= a, f x <=b]
        where 
            f 0 = 0
            f x = x `mod` 10 + f (x `div` 10)