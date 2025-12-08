module Games.FlowFree.Core where

import qualified Data.Bifunctor as BiF
import qualified Data.Vector as V
import qualified System.Random as Rand

type Path = [(Int, Int)]
newtype SquarePartition = SQPart (Int, Int)
