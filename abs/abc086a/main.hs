-- https://uhideyuki.sakura.ne.jp/studs/index.cgi/ja/AbsInHaskell
import Control.Monad
import Data.ByteString.Char8 qualified as BS
import Data.Maybe

readInt = fst . fromJust . BS.readInt

readIntList = map readInt . BS.words

getInt = readInt <$> BS.getLine

getIntList = readIntList <$> BS.getLine

main = do
  [a, b] <- getIntList
  putStrLn $ ["Even", "Odd"] !! (a * b `mod` 2)