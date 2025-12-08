module Lib.LinAlg where

data Point = Point
    { x :: Int
    , y :: Int
    , limits :: Maybe (Int, Int)
    }

data Limits = Lim
    { xLim :: Int
    , yLim :: Int
    , modulo :: Bool
    }


