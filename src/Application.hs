{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE ViewPatterns #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}

module Application where

import Foundation
import Handler.Common
import Handler.Home
import Handler.Sum
import Handler.Mult
import Yesod

mkYesodDispatch "App" resourcesApp
