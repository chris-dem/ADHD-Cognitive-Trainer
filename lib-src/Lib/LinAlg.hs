{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

module Lib.LinAlg where

import Control.Lens
import Data.Proxy
import Data.VectorSpace
import GHC.TypeLits

data Point = Point
    { x :: Int
    , y :: Int
    }
    deriving (Eq, Show)

data BoundedPoint = Topos
    { _point :: Point
    , _xLim :: Int
    , _yLim :: Int
    , _modular :: Bool
    }

makeLenses ''BoundedPoint

instance AdditiveGroup Point where
    zeroV = Point 0 0
    (Point x1 y1) ^+^ (Point x2 y2) = Point (x1 + x2) (y1 + y2)
    negateV (Point x y) = Point (-x) (-y)

instance VectorSpace Point where
    type Scalar Point = Integer

    a *^ Point x y = Point (fromInteger a * x) (fromInteger a * y)

addPoint :: Point -> BoundedPoint -> Point
addPoint p = point %~ (^+^ p)

fieldSpace :: Bool -> Int -> Int -> Int
fieldSpace b = if b then flip mod else min . abs
