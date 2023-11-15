Attribute VB_Name = "ImportarClientesDB"
Public Sub selecimport()


End Sub
Public Sub importar()
Call conexaoDB.conexao

 conectar.Open ConectaBanco
 
 
 Dim xlApp As Object
    Dim xlWorkbook As Object
    Dim xlWorksheet As Object
    Set xlApp = CreateObject("Excel.Application")
    Set xlWorkbook = xlApp.Workbooks.Open(Arquivo)
    Set xlWorksheet = xlWorkbook.Sheets("Planilha1")
    
    


    'Criar a tabela caso ainda não exista
    strSql = "CREATE TABLE IF NOT EXISTS '" & ImportClientes.NomeCliente & "' ("
    strSql = strSql & "id serial PRIMARY KEY,"
    strSql = strSql & "nome_cliente varchar(150),"
    strSql = strSql & "cpf_cnpj integer(15)"
    strSql = strSql & ");"

    conectar.Execute strSql
    
    Dim rowNum As String
    rowNum = 2 ' Comece na segunda linha, assumindo que a primeira linha contém cabeçalhos

    Do Until xlWorksheet.Cells(rowNum, 1).Value = ""
    strSql = "INSERT INTO '" & ImportClientes.NomeCliente & "' (nome_cliente,cpf_cnpj) VALUES (" & _
                 "'" & xlWorksheet.Cells(rowNum, 1).Value & "', " & _
                 "'" & xlWorksheet.Cells(rowNum, 2).Value & "') "
               
        conn.Execute strSql
        rowNum = rowNum + 1
    Loop
    
    
    xlWorkbook.Close SaveChanges:=False
    xlApp.Quit
   conectar.Close

    MsgBox "Dados inseridos com sucesso no PostgreSQL!"
End Sub
