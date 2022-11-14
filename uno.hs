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
    putStrLn("(4) sair do jogo")
    opcao <- getLine
    verificaOpcao (read opcao)


verificaOpcao :: Int -> IO()
verificaOpcao opcao =
    if opcao == 1 then
        putStrLn("direcionando...")
    else if opcao == 2 then
        historico
    else if opcao == 3 then
        regrasJogo
    else if opcao == 4 then
        putStrLn("Até a próxima :)")
    else do         
        putStrLn("Por favor, escolha uma opção válida") 
        menuStart


regrasJogo :: IO()
regrasJogo = do
    putStrLn"regras do jogo: \npressione Enter para retornar ao Menu Principal"
    a <- getLine
    menuStart


historico :: IO()
historico = do
    putStrLn"Histórico: \npressione Enter para retornar ao Menu Principal"
    a <- getLine
    menuStart