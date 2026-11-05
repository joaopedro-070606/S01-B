data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento {
  cliente :: String,
  servico :: String,
  valor :: Double,
  etapa :: Etapa
} deriving (Show)

descrever :: Atendimento -> String
descrever a = "Cliente: " ++ cliente a ++ " | Servico: " ++ servico a ++ " | Etapa: " ++ show (etapa a)

concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos = 
  let concluidos = filter (\a -> etapa a == Concluido) atendimentos
  in sum (map valor concluidos)

main :: IO ()
main = do
  let listaOriginal = [ Atendimento "Deus Rabanete" "Banho Herbal" 500.0 NaFila
                      , Atendimento "Sem Rosto" "Banquete Completo" 1500.0 NoBanho
                      , Atendimento "Espirito do Rio" "Limpeza Profunda" 3000.0 NaFila ]
  
  let listaNova = [ concluir (head listaOriginal)
                  , listaOriginal !! 1
                  , concluir (listaOriginal !! 2) ]
                  
  putStrLn "--- Lista Original ---"
  mapM_ (\a -> putStrLn $ descrever a) listaOriginal
  putStrLn $ "Valor Arrecadado: " ++ show (arrecadado listaOriginal)
  
  putStrLn "\n--- Lista Nova (Apos Conclusoes) ---"
  mapM_ (\a -> putStrLn $ descrever a) listaNova
  putStrLn $ "Valor Arrecadado: " ++ show (arrecadado listaNova)