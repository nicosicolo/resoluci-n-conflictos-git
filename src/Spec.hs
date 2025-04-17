module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Test de ejemplo" $ do
    it "El pdepreludat se instaló correctamente" $ do
      doble 1 `shouldBe` 2
  describe "Tests pago factura" $ do
    it "Quiero pagar la factura antes de su vencimiento" $ do
      facturaVencida 11 `shouldBe` False
    it "Quiero pagar la factura después de su vencimiento" $ do
      facturaVencida 17 `shouldBe` True



















    {- it "Pago una factura antes de la fecha de vencimiento" $ do
      precioTotalFactura 11 1000 `shouldBe` 1000
    it "Pago una factura después de la fecha de vencimiento" $ do
      precioTotalFactura 17 1000 `shouldBe` 1100 -}

