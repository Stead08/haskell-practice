import Control.Monad
import Data.Bits
import Data.ByteString.Char8 qualified as BS
import Data.List
import Data.Maybe

readInt = fst . fromJust . BS.readInt

readIntList = map readInt . BS.words

getInt = readInt <$> BS.getLine

getIntList = readIntList <$> BS.getLine

main = do
  n <- getInt
  as <- getIntList
  print . minimum . map f $ as
  where
    f x
      | x .&. 1 == 1 = 0
      | otherwise = 1 + f (x `shiftR` 1)