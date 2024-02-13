{-# Language MultiWayIf #-}
{- HaskBank -}

module Lib
    ( checkAccountID
    ) where

checkAccountID :: Int -> String
checkAccountID aid =
  if | aid == 0 -> "You're root"
     | aid < 256 -> "You're user"
     | aid >= 256 -> "Block request (account id is not exists)"
     | otherwise -> "Block request"
