Operation =2
Name ="RealProductPrices"
Option =0
Begin InputTables
    Name ="MicroProducts"
    Name ="RealProductsNames"
End
Begin OutputColumns
    Expression ="RealProductsNames.ID"
    Alias ="FirstOfRealProductName"
    Expression ="First(RealProductsNames.RealProductName)"
    Alias ="TotalPrice"
    Expression ="First(Format(DSum(\"[MicroProductPrice]\",\"[MicroProducts]\",\"[RealProductID] "
        "=\" & [RealProductsNames]![ID] & \"\"),\"$0.00\"))"
End
Begin Joins
    LeftTable ="RealProductsNames"
    RightTable ="MicroProducts"
    Expression ="RealProductsNames.ID = MicroProducts.RealProductID"
    Flag =1
End
Begin Groups
    Expression ="RealProductsNames.ID"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbSingle "ECLScaleFactor" ="1"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
Begin
    Begin
        dbText "Name" ="TotalPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfRealProductName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2025"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="RealProductsNames.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfMicroProductName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MicroProducts.RealProductID"
        dbInteger "ColumnWidth" ="2100"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MicroProducts.MicroProductPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfMicroProductPrice"
        dbInteger "ColumnWidth" ="2505"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="RealProducts.RealProductName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MicroProducts.MicroProductName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Expr1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="RunTot"
        dbInteger "ColumnWidth" ="1710"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="RealProductPrice"
        dbInteger "ColumnWidth" ="1710"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SumOfMicroProductName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="RealProductsNames.RealProductName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1115
    Bottom =674
    Left =-1
    Top =-1
    Right =1099
    Bottom =323
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =35
        Top =13
        Right =284
        Bottom =180
        Top =0
        Name ="MicroProducts"
        Name =""
    End
    Begin
        Left =349
        Top =74
        Right =493
        Bottom =218
        Top =0
        Name ="RealProductsNames"
        Name =""
    End
End
