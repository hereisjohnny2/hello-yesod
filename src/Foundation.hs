{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE ViewPatterns #-}

module Foundation where

import Yesod
import Yesod.Static

newtype App = App {staticContent :: Static}

mkYesodData "App" $(parseRoutesFile "config/definitions/routes")

instance Yesod App

