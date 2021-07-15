Operation =1
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
    Expression ="MicroProducts.MicroProductName"
    Expression ="MicroProducts.MicroProductPrice"
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
    Expression ="MicroProducts.MicroProductName"
    GroupLevel =0
    Expression ="MicroProducts.MicroProductPrice"
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
        dbText "Name" ="MicroProducts.MicroProductPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TotalPrice"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MicroProducts.MicroProductName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfRealProductName"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2400"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="RealProductsNames.ID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1385
    Bottom =674
    Left =-1
    Top =-1
    Right =712
    Bottom =229
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =68
        Top =35
        Right =317
        Bottom =202
        Top =0
        Name ="MicroProducts"
        Name =""
    End
    Begin
        Left =502
        Top =63
        Right =646
        Bottom =207
        Top =0
        Name ="RealProductsNames"
        Name =""
    End
End
