{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE OverloadedStrings #-}

module Handler.Mult where

import Control.Monad
import Data.Text
import Foundation
import Text.Read
import Yesod

getMultR :: Handler Html
getMultR = do
  mx <- join . fmap (readMaybe . unpack) <$> lookupGetParam "x" :: Handler (Maybe Int)
  my <- join . fmap (readMaybe . unpack) <$> lookupGetParam "y" :: Handler (Maybe Int)

  defaultLayout $ do
    setTitle "Multiplication of Two Values"
    case (mx, my) of
      (Just x, Just y) ->
        $(whamletFile "templates/mult.hamlet")
      (Nothing, Nothing) ->
        [whamlet|
          <p> x and y values are required
        |]
      (_, Nothing) ->
        [whamlet|
          <p> y value is required
        |]
      (Nothing, _) ->
        [whamlet|
          <p> x value is required
        |]
