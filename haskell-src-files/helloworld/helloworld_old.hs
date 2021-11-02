module Main where
import Data.Char

main = do
    putStrLn "Hello, what's your first name?"
    firstName <- getLine -- perform the I/O action getLine and then bind its result value to name
    -- :t name is String
    putStrLn "Hello, what's your last name?"
    lastName <- getLine
    let bigFirstName = map toUpper firstName
        bigLastName = map toUpper lastName
    putStrLn $ "hey " ++ bigFirstName ++ " " ++ bigLastName ++ ", how are you?"
    -- the last action in a do-black cannot be bound (it's the returned value, so ...)
