import Control.Monad
import Data.ByteString.Char8 qualified as BS
import Data.Maybe

readInt = fst . fromJust . BS.readInt

readIntList = map readInt . BS.words

getInt = readInt <$> BS.getLine

getIntList = readIntList <$> BS.getLine

main = do
  n <- getInt
  xs <- replicateM n getIntList
  putStrLn $ if solve ([0, 0, 0] : xs) then "Yes" else "No"
  where
    solve [a, b] = reachable a b
    solve (a : b : xs) = reachable a b && solve (b : xs)
    reachable [t0, x0, y0] [t1, x1, y1] =
      t >= dist && even (t - dist)
      where
        dist = abs (x1 - x0) + abs (y1 - y0)
        t = t1 - t0