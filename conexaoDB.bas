Attribute VB_Name = "conexaoDB"
Public conectar As New ADODB.Connection
Public cmd As New ADODB.Command
Public rs As New ADODB.Recordset
Public strSql As String
Public Sub conexao()
    ConectaBanco = "DSN=PostgreSQL30;UID=postgres;PWD=1234;"
    conectar.Open ConectaBanco
    
    'Criar a tabela caso ainda não exista
    strSql = "CREATE TABLE IF NOT EXISTS Usuarios ("
    strSql = strSql & "id serial PRIMARY KEY,"
    strSql = strSql & "nome varchar(150),"
    strSql = strSql & "senha integer,"
    strSql = strSql & "tipo varchar(100)"
    strSql = strSql & ");"

    conectar.Execute strSql
    conectar.Close





    

End Sub
