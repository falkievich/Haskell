import Data.Char

cuentaPalabras :: String -> Int
cuentaPalabras = length . words

capitalizarPalabras :: String -> String
capitalizarPalabras = unwords . map capitalize . words
    where capitalize (x:xs) = toUpper x : map toLower xs

main = do
    print $ cuentaPalabras "Hola mundo cuenca"                  --Cuenta la cantidad de palabras
    print $ capitalizarPalabras "hola como esta tu amigo?"      --Transforma la primera letra de una palabra en mayúsucla


--Ignorar, esto es anotación mía:
--add :: Integer -> Integer -> Integer   -- El add es el nombre de la funcion, los 2 integer son los parametros y el último integer es el return
--add x y =  x + y                       --function definition 