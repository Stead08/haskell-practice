import Data.ByteString.Char8 qualified as BS

main = do
  s <- BS.getLine
  print . BS.length . BS.filter (== '1') $ s