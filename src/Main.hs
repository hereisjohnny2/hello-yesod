{-# LANGUAGE RecordWildCards #-}

module Main where

import Application ()
import Foundation
import Yesod
import Yesod.Static

main :: IO ()
main = do
  staticContent <- static "static"
  warp 8080 App {..}

