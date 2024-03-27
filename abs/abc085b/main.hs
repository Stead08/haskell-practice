import Control.Monad
import Data.Bits
import qualified Data.ByteString.Char8 as BS 
import Data.List
import Data.Maybe

readInt = fst . fromJust . BS.readInt
getInt = readInt <$> BS.getLine

main = do
    n <- getInt
    ds <- replicateM n getInt
    print . length . group . sort $ ds