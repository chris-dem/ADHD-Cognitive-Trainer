module Games where


class GameClass a where
    isFinshed :: a -> Bool
    isValidMove :: a -> Bool
    playRound :: a -> b -> a

