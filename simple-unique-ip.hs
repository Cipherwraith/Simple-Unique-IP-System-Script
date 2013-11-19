module Main where

import qualified Data.Set as S
import Control.Applicative

parseIP = head . words
calculate = S.size . S.fromList . map parseIP . lines
main = print =<< calculate <$> getContents
