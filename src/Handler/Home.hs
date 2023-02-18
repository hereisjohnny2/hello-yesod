{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
module Handler.Home where

import Foundation
import Yesod

getHomeR :: Handler Html
getHomeR = defaultLayout $ do
  setTitle "Home"
  [whamlet|<h1> Hello|]
