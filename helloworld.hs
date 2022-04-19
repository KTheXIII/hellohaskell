import System.Environment

main :: IO ()
main = do
    args <- getArgs

    putStr "Hello, Haskell!"

    if not (null args) then do
        putStr " args: "
        print args
    else
        putStr "\n"

