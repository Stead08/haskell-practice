import Control.Monad
import Data.ByteString.Char8 qualified as BS
import Data.Maybe

readInt = fst . fromJust . BS.readInt

readIntList = map readInt . BS.words

getInt = readInt <$> BS.getLine

getIntList = readIntList <$> BS.getLine

main = do
  [n, y] <- getIntList
  let a =
        [ map show [a, b, c] | a <- [0 .. n], b <- [0 .. (n - a)], let c = n - a - b, 10000 * a + 5000 * b + 1000 * c == y
        ]
  if null a
    then putStrLn "-1 -1 -1"
    else putStrLn . unwords . head $ a