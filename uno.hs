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

--menu uno
--precisa escolher quantos bots pra iniciar

-- o jogo:

data Cor = Vermelho | Verde | Azul | Amarelo 
            deriving (Eq, Show, Read, Enum, Bounded)
data ValorColorido = Zero | Um | Dois | Tres | Quatro | Cinco | Seis | Sete | Oito | Nove | MaisDois | Inverte | Bloqueio 
            deriving (Eq, Show, Read, Enum, Bounded)
data ValorCoringa = MaisQuatro | TrocaCor 
            deriving (Eq, Show, Read, Enum, Bounded)
data Carta = CartaColorida {cor :: Cor, valor :: ValorColorido} | CartaCoringa {valorCoringa :: ValorCoringa} 
            deriving (Show)

geraBaralho :: [Carta]
geraBaralho = geraCartasColoridas : geraCartasCoringa

geraBaralho2 :: [Carta]
geraBaralho2 = CartaCoringa {valorCoringa = MaisQuatro} : CartaCoringa {valorCoringa = TrocaCor} : geraCartasColoridas

geraCartasColoridas :: [Carta]
geraCartasColoridas = [CartaColorida {cor = c, valor = v} | c <- [Vermelho .. Amarelo], v <- [Zero .. Bloqueio]]

geraCartasCoringa :: [Carta]
geraCartasCoringa = [CartaCoringa {valorCoringa = vc} | vc <- [MaisQuatro, TrocaCor]]
