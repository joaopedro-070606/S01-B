pesoMaximo :: Double
pesoMaximo = 15.0

-- pesoMaximo = 20.0

data Encomenda = Encomenda {
  destinatario :: String,
  peso :: Double,
  frete :: Double
} deriving (Show)

descrever :: Encomenda -> String
descrever enc = "Para: " ++ destinatario enc ++ " | Peso: " ++ show (peso enc) ++ "kg | Frete: $" ++ show (frete enc)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas = filter (\e -> peso e <= pesoMaximo) encomendas

totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas = sum (map frete encomendas)

main :: IO ()
main = do
  let pacotes = [ Encomenda "Senhora Osono" 5.0 20.0
                , Encomenda "Pintora Ursula" 18.0 50.0
                , Encomenda "Tombo" 2.5 15.0
                , Encomenda "Cliente Distante" 20.0 60.0 ]
  
  putStrLn "--- Todas as Encomendas ---"
  mapM_ (\e -> putStrLn $ descrever e) pacotes
  
  putStrLn "\n--- Cabem na Vassoura ---"
  let pacotesLeves = cabemNaVassoura pacotes
  mapM_ (\e -> putStrLn $ descrever e) pacotesLeves
  
  putStrLn $ "\nTotal a receber (frete das leves): $" ++ show (totalDeFretes pacotesLeves)