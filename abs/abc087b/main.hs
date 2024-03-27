import Control.Monad
import Data.ByteString.Char8 qualified as BS
import Data.Maybe

readInt = fst . fromJust . BS.readInt

getInt = readInt <$> BS.getLine

main = do
  [a, b, c, x] <- replicateM 4 getInt
  print . length $
    [1 | i <- [0 .. a], j <- [0 .. b], k <- [0 .. c], 500 * i + 100 * j + 50 * k == x]
