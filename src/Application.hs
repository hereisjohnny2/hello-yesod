{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedStrings #-}
module Application where

import Yesod

import Foundation
import Handler.Common
import Handler.Home

mkYesodDispatch "App" resourcesApp

