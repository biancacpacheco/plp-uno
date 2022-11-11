--menu de start!!
main:: IO()
main = do
    putStrLn("BEM-VINDO, JOGADOR! :)")
    putStrLn("")
    menuStart


menuStart :: IO()
menuStart = do
    putStrLn("escolha uma opção:")
    putStrLn("(1) iniciar partida")
    putStrLn("(2) histórico de pontuação")
    putStrLn("(3) regras do jogo")
<<<<<<< HEAD
    putStrLn("(4) sair do jogo")
    opcao <- getLine
    verificaOpcao (read opcao)


verificaOpcao :: Int -> IO()
verificaOpcao opcao =
    if (elem opcao [1,2,3,4]) then
        putStrLn("direcionando...")
    else do         
        putStrLn("Por favor, escolha uma opção válida") 
        menuStart
=======

>>>>>>> 71937acd921604c926e8379d6a91ec50b8b0bc2b
