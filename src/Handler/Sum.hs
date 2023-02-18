{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}

module Handler.Sum where

import Foundation
import Yesod

getSumR :: Int -> Int -> Handler Html
getSumR x y = defaultLayout $ do
  setTitle "Sum of Two Numbers"
  [whamlet|
    <h1> Sum #{x} + #{y} = sum
  |]
