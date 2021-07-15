SELECT RealProductsNames.ID, First(RealProductsNames.RealProductName) AS FirstOfRealProductName, First(Format(DSum("[MicroProductPrice]","[MicroProducts]","[RealProductID] =" & [RealProductsNames]![ID] & ""),"$0.00")) AS TotalPrice, MicroProducts.MicroProductName, MicroProducts.MicroProductPrice
FROM RealProductsNames INNER JOIN MicroProducts ON RealProductsNames.ID = MicroProducts.RealProductID
GROUP BY RealProductsNames.ID, MicroProducts.MicroProductName, MicroProducts.MicroProductPrice;
