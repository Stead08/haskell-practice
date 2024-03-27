{-# LANGUAGE OverloadedStrings #-}

import qualified Data.ByteString.Char8 as BS

main = do
    s <- BS.getLine
    putStrLn . solve $ BS.reverse s
    -- reverseでdream, dreamerを正しくマッチさせることができる。
    where 
        solve s | s == "" = "YES"
                | BS.reverse "dream"   `BS.isPrefixOf` s = solve $ BS.drop 5 s
                | BS.reverse "dreamer" `BS.isPrefixOf` s = solve $ BS.drop 7 s
                | BS.reverse "erase"   `BS.isPrefixOf` s = solve $ BS.drop 5 s
                | BS.reverse "eraser"  `BS.isPrefixOf` s = solve $ BS.drop 6 s
                | otherwise = "NO"
