data Cafe = Cafe String Double Int
  deriving (Show)

descrever :: Cafe -> String
descrever (Cafe nome preco _) = "Cafe: " ++ nome ++ " | Preco: " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 && intensidade <= 7 = "Equilibrado"
  | otherwise = "Suave"

precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido pediuLeite (Cafe _ precoBase _) =
  if pediuLeite
    then precoBase + 2.0
    else precoBase

main :: IO ()
main = do
  let cafeForte = Cafe "Leblanc House Blend" 15.50 9
  let cafeEquilibrado = Cafe "Blue Mountain" 25.00 6
  let cafeSuave = Cafe "Mocha Suave" 12.00 3

  putStrLn $ descrever cafeForte ++ " | Forca: " ++ forca cafeForte
  putStrLn $ descrever cafeEquilibrado ++ " | Forca: " ++ forca cafeEquilibrado
  putStrLn $ descrever cafeSuave ++ " | Forca: " ++ forca cafeSuave

  putStrLn "\nTestando preco do Mocha Suave:"
  putStr "Sem leite: "
  print (precoDoPedido False cafeSuave)
  putStr "Com leite: "
  print (precoDoPedido True cafeSuave)