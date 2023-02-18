{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module Handler.Common where

import Data.FileEmbed
import Yesod
import Foundation

getFavIconR :: Handler TypedContent
getFavIconR = do
  cacheSeconds $ 60 * 60 * 24 * 7
  return $ TypedContent "image/x-icon" $ toContent $(embedFile "config/embed/favicon.ico")

getRobotsR :: Handler TypedContent
getRobotsR = do
  cacheSeconds $ 60 * 60 * 24 * 7
  return $ TypedContent typePlain $ toContent $(embedFile "config/embed/robots.txt")
