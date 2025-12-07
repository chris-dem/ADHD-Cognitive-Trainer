module Games.FlowFree.Core where

import qualified Data.Vector as V
import System.Random

data FlowFreeState = FFState
    { grid :: V.Vector Int
    }
    deriving (Show, Eq)

createGameFromRandSeed :: Int -> FlowFreeState
createGameFromRandSeed = undefined
