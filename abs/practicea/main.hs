import Data.ByteString.Char8 qualified as BS

main = do
  a <- readLn
  [b, c] <- map read . words <$> getLine :: IO [Int]
  s <- BS.unpack <$> BS.getLine
  putStrLn $ show (a + b + c) ++ " " ++ s
