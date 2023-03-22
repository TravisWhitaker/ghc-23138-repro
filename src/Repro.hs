{-# LANGUAGE TemplateHaskell #-}

module Repro where

import qualified Data.Text as T

import Data.Double.Conversion.Text

import Language.Haskell.TH

x :: T.Text
x = $(runQ [|T.pack "don't even have to call double-conversion"|])
