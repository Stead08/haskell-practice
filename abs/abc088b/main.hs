import Control.Monad
import Data.List
import Data.Maybe
import qualified Data.ByteString.Char8 as BS

readInt = fst . fromJust . BS.readInt
readIntList = map readInt . BS.words
getInt = readInt <$> BS.getLine
getIntList = readIntList <$> BS.getLine

main = do
    _ <- getInt
    as <- getIntList
    print $ sum $ zipWith (*) (cycle [1, -1]) (sortBy (flip compare) as)