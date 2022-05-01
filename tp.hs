--tipado de algunas funciones.
--take :: Int -> String -> String
--drop :: Int -> String -> String
--head :: String -> Char
--reverse :: String -> String--elem :: Char -> String -> Bool

type Producto = (NombreDelProducto, PrecioDelProducto)
type NombreDelProducto = String
type PrecioDelProducto = Number

productoXL :: Producto -> String
productoXL (nombreDelProducto,_) = nombreDelProducto ++ "XL"

productoCorriente :: Producto -> Bool
productoCorriente (nombreDelProducto,_) = elem (head nombreDelProducto) "aeiouAEIOU"

productoDeLujo :: Producto -> Bool
productoDeLujo (nombreDelProducto,_) = elem 'x' nombreDelProducto || elem 'z' nombreDelProducto

descodiciarProducto :: Producto -> String
descodiciarProducto (nombreDelProducto,_) = take 10 nombreDelProducto

productoCodiciado :: Producto -> Bool
productoCodiciado (nombreDelProducto,_) = length nombreDelProducto > 10

versionBarata :: Producto -> String
versionBarata  = reverse.descodiciarProducto 

aplicarDescuento :: Producto -> Number -> Number
aplicarDescuento (_,precioDelProducto) descuento = precioDelProducto - descuento

precioUnitario :: Producto -> Number
precioUnitario (_, precioDelProducto) = precioDelProducto

aplicarEnvio :: Number -> Number -> Number
aplicarEnvio precioUnitario envio = precioUnitario + envio

cantidadUnitario :: Producto -> Number -> Producto
cantidadUnitario (nombreDelProducto, precioDelProducto) cantidad = (nombreDelProducto, precioDelProducto * cantidad)

precioTotal :: Producto -> Number -> Number -> Number -> Number
precioTotal unProducto cantidad descuento envio = aplicarEnvio (aplicarDescuento unProducto descuento * cantidad) envio

entregaSencilla :: String -> Bool
entregaSencilla dia = (even.length) dia

productoDeElite :: Producto -> Bool
productoDeElite unProducto= productoDeLujo unProducto && productoCodiciado unProducto && not(productoCorriente unProducto)--tipado de algunas funciones.
--take :: Int -> String -> String
--drop :: Int -> String -> String
--head :: String -> Char
--reverse :: String -> String--elem :: Char -> String -> Bool

type Producto = (NombreDelProducto, PrecioDelProducto)
type NombreDelProducto = String
type PrecioDelProducto = Number

productoXL :: Producto -> String
productoXL (nombreDelProducto,_) = nombreDelProducto ++ "XL"

productoCorriente :: Producto -> Bool
productoCorriente (nombreDelProducto,_) = elem (head nombreDelProducto) "aeiouAEIOU"

productoDeLujo :: Producto -> Bool
productoDeLujo (nombreDelProducto,_) = elem 'x' nombreDelProducto || elem 'z' nombreDelProducto

descodiciarProducto :: Producto -> String
descodiciarProducto (nombreDelProducto,_) = take 10 nombreDelProducto

productoCodiciado :: Producto -> Bool
productoCodiciado (nombreDelProducto,_) = length nombreDelProducto > 10

versionBarata :: Producto -> String
versionBarata  = reverse.descodiciarProducto 

aplicarDescuento :: Producto -> Number -> Number
aplicarDescuento (_,precioDelProducto) descuento = precioDelProducto - descuento

precioUnitario :: Producto -> Number
precioUnitario (_, precioDelProducto) = precioDelProducto

aplicarEnvio :: Number -> Number -> Number
aplicarEnvio precioUnitario envio = precioUnitario + envio

cantidadUnitario :: Producto -> Number -> Producto
cantidadUnitario (nombreDelProducto, precioDelProducto) cantidad = (nombreDelProducto, precioDelProducto * cantidad)

precioTotal :: Producto -> Number -> Number -> Number -> Number
precioTotal unProducto cantidad descuento envio = aplicarEnvio (aplicarDescuento unProducto descuento * cantidad) envio

entregaSencilla :: String -> Bool
entregaSencilla dia = (even.length) dia

productoDeElite :: Producto -> Bool
productoDeElite unProducto= productoDeLujo unProducto && productoCodiciado unProducto && not(productoCorriente unProducto)
