module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero

-- Todas las facturas vencen el dia 15. Hacer una funcion que me indique si la factura se encuentra vencida al momento de pagarla
facturaVencida :: Number -> Bool
facturaVencida fechaPago
        | fechaPago >= 15 = True
        | otherwise  = False

precioTotalFactura :: Number -> Number -> Number
precioTotalFactura fechaPago totalOriginal =
        totalOriginal * if facturaVencida fechaPago then 1.1 else 1