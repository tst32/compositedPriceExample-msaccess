Option Compare Database

'---------------------------------------------------------------------------------------
' Procedure : ExpAllTbls
' Author    : Daniel Pineault, CARDA Consultants Inc.
' Website   : http://www.cardaconsultants.com
' Purpose   : Exports all the tables from the currentdb into the specified db.
'             Can be useful when in a secured db to quickly export all the tables
'             into a new db.  Could easily be expanded to export any other db object
'             (query, form, report, ...)
' Copyright : The following may be altered and reused as you wish so long as the
'             copyright notice is left unchanged (including Author, Website and
'             Copyright).  It may not be sold/resold or reposted on other sites (links
'             back to this site are allowed).
'
' Input Variables:
' ~~~~~~~~~~~~~~~~
' strFolderName   - Fully qualified path and filename with extension of the database in which
'             to import the exported tables
'
' Usage:
' ~~~~~~
' ExpAllTbls("C:\Databases\dummytransfer.accdb")
'
' Revision History:
' Rev       Date(yyyy/mm/dd)        Description
' **************************************************************************************
' 1         2013-Feb-08                 Initial Release
'---------------------------------------------------------------------------------------
' 2         2021-Jul-17                 Modified by Yurij

Function ExpAllTbls(strFolderName As String)
On Error GoTo Error_Handler
    Dim db As DAO.Database
    Dim td As DAO.TableDefs
 
    Set db = CurrentDb()
    Set td = db.TableDefs
    For Each t In td    'loop through all the fields of the tables
        'Ignore any system tables
        If Left(t.Name, 4) = "MSys" Then GoTo Continue
     
        
        Application.ExportXML ObjectType:=acExportTable, DataSource:=t.Name, _
        DataTarget:=(strFolderName & "\" & t.Name & ".xml"), otherflags:=acEmbedSchema
         
Continue:
    Next
 
Error_Handler_Exit:
    On Error Resume Next
    Set td = Nothing
    Set db = Nothing
    Exit Function
 
Error_Handler:
    MsgBox "The following error has occurred." & vbCrLf & vbCrLf & _
            "Error Number: " & Err.Number & vbCrLf & _
            "Error Source: ExpAllTbls" & vbCrLf & _
            "Error Description: " & Err.Description, _
            vbCritical, "An Error has Occurred!"
    Resume Error_Handler_Exit
End Function

Function ImpTbl(strFullpath As String)

On Error GoTo Error_Handler

Application.ImportXML DataSource:=strFullpath, ImportOptions:=acStructureAndData
 
Error_Handler_Exit:
    On Error Resume Next
    Exit Function
 
Error_Handler:
    MsgBox "The following error has occurred." & vbCrLf & vbCrLf & _
            "Error Number: " & Err.Number & vbCrLf & _
            "Error Source: ExpAllTbls" & vbCrLf & _
            "Error Description: " & Err.Description, _
            vbCritical, "An Error has Occurred!"
    Resume Error_Handler_Exit
End Function