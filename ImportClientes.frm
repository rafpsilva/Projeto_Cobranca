VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form ImportClientes 
   Caption         =   "Form1"
   ClientHeight    =   6225
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8070
   LinkTopic       =   "Form1"
   ScaleHeight     =   6225
   ScaleWidth      =   8070
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Height          =   5415
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   7815
      Begin VB.Frame Frame2 
         Height          =   4095
         Left            =   120
         TabIndex        =   2
         Top             =   1200
         Width           =   7575
         Begin VB.TextBox CaminhoArquivo 
            Height          =   285
            Left            =   4200
            TabIndex        =   8
            Top             =   2040
            Width           =   2415
         End
         Begin MSComDlg.CommonDialog CommonDialog1 
            Left            =   3720
            Top             =   1920
            _ExtentX        =   847
            _ExtentY        =   847
            _Version        =   393216
         End
         Begin VB.CommandButton BtImportArquivo 
            Caption         =   "Salvar"
            Height          =   255
            Left            =   1920
            TabIndex        =   7
            Top             =   3120
            Width           =   1215
         End
         Begin VB.CommandButton BtSelecArquivo 
            Caption         =   "..."
            Height          =   255
            Left            =   2880
            TabIndex        =   6
            Top             =   2040
            Width           =   855
         End
         Begin VB.ComboBox NomeCliente 
            Height          =   315
            ItemData        =   "ImportClientes.frx":0000
            Left            =   2880
            List            =   "ImportClientes.frx":0007
            TabIndex        =   4
            Text            =   "..."
            Top             =   840
            Width           =   1935
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Selecione o arquivo"
            Height          =   195
            Left            =   1080
            TabIndex        =   5
            Top             =   2040
            Width           =   1410
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Selecione o Cliente"
            Height          =   195
            Left            =   1080
            TabIndex        =   3
            Top             =   960
            Width           =   1365
         End
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "IMPORTAR NOVOS CLIENTES"
         Height          =   195
         Left            =   2520
         TabIndex        =   1
         Top             =   360
         Width           =   2295
      End
   End
End
Attribute VB_Name = "ImportClientes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Arquivo As String
Private Sub BtImportArquivo_Click()
Call conexaoDB.conexao

 conectar.Open ConectaBanco
 
 
 Dim xlApp As Object
    Dim xlWorkbook As Object
    Dim xlWorksheet As Object
    Set xlApp = CreateObject("Excel.Application")
    Set xlWorkbook = xlApp.Workbooks.Open(Arquivo)
    Set xlWorksheet = xlWorkbook.Sheets("Planilha1")
    
    


    'Criar a tabela caso ainda não exista
    strSql = "CREATE TABLE IF NOT EXISTS NewBank ("
    strSql = strSql & "id serial PRIMARY KEY,"
    strSql = strSql & "nome_cliente varchar(150),"
    strSql = strSql & "cpf_cnpj integer"
    strSql = strSql & ");"

    conectar.Execute strSql
    
    Dim rowNum As String
    rowNum = 2 ' Comece na segunda linha, assumindo que a primeira linha contém cabeçalhos

    Do Until xlWorksheet.Cells(rowNum, 1).Value = ""
    strSql = "INSERT INTO NewBank (nome_cliente,cpf_cnpj) VALUES (" & _
                 "'" & xlWorksheet.Cells(rowNum, 1).Value & "', " & _
                 "'" & xlWorksheet.Cells(rowNum, 2).Value & "') "
               
        conectar.Execute strSql
        rowNum = rowNum + 1
    Loop
    
    
    xlWorkbook.Close SaveChanges:=False
    xlApp.Quit
   conectar.Close

    MsgBox "Dados inseridos com sucesso no PostgreSQL!"
End Sub

Public Sub BtSelecArquivo_Click()


ImportClientes.CommonDialog1.ShowOpen
ImportClientes.CaminhoArquivo = ImportClientes.CommonDialog1.FileName
Arquivo = ImportClientes.CaminhoArquivo

If Arquivo <> "falso" Then
Me.CaminhoArquivo.Text = Arquivo
Else
Me.CaminhoArquivo.Text = ""
End If
End Sub

