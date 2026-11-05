data Esboco = Esboco {
  titulo :: String,
  tecnica :: String,
  horas :: Int
} deriving (Show)

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "Aviso: O caderno de esbocos esta vazio."
esbocoMaisRecente (e:_) = "Mais recente: " ++ titulo e ++ " (" ++ tecnica e ++ ")"

contarEsbocos :: [Esboco] -> Int
contarEsbocos [] = 0
contarEsbocos (_:cauda) = 1 + contarEsbocos cauda

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:cauda) = horas e + horasDesenhando cauda

main :: IO ()
main = do
  let cadernoOriginal = [ Esboco "Castelo Sombrio" "Nanquim" 5
                        , Esboco "Ruinas Antigas" "Grafite" 3
                        , Esboco "Criatura Alada" "Carvao" 4 ]
                        
  putStrLn "--- Caderno Original ---"
  putStrLn $ esbocoMaisRecente cadernoOriginal
  putStrLn $ "Total de esbocos: " ++ show (contarEsbocos cadernoOriginal)
  putStrLn $ "Horas desenhando: " ++ show (horasDesenhando cadernoOriginal)
  
  putStrLn "\n--- Caderno Vazio ---"
  let cadernoVazio = []
  putStrLn $ esbocoMaisRecente cadernoVazio
  
  let novoEsboco = Esboco "Floresta Densa" "Aquarela" 6
  let cadernoNovo = novoEsboco : cadernoOriginal
  
  putStrLn "\n--- Apos Adicionar Novo Esboco ---"
  putStrLn "NOVO CADERNO:"
  putStrLn $ esbocoMaisRecente cadernoNovo
  putStrLn $ "Numero de esbocos (novo): " ++ show (contarEsbocos cadernoNovo)
  
  putStrLn "\nCADERNO ORIGINAL (DEVE CONTINUAR IGUAL):"
  putStrLn $ esbocoMaisRecente cadernoOriginal
  putStrLn $ "Numero de esbocos (original): " ++ show (contarEsbocos cadernoOriginal)
  
  -- putStrLn $ titulo (head cadernoVazio)