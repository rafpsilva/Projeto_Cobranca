VERSION 5.00
Begin VB.Form PaineldeControle 
   Caption         =   "Form1"
   ClientHeight    =   5550
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8055
   LinkTopic       =   "Form1"
   ScaleHeight     =   5550
   ScaleWidth      =   8055
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Height          =   5415
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   7815
      Begin VB.Frame Frame2 
         Height          =   4095
         Left            =   120
         TabIndex        =   2
         Top             =   1200
         Width           =   7575
         Begin VB.CommandButton BTGerarRelatorio 
            Caption         =   "Gerar Relat�rio"
            Height          =   495
            Left            =   4200
            TabIndex        =   7
            Top             =   1920
            Width           =   1335
         End
         Begin VB.CommandButton BTImportarCliente 
            Caption         =   "Importar Clientes"
            Height          =   495
            Left            =   2640
            TabIndex        =   6
            Top             =   1920
            Width           =   1335
         End
         Begin VB.CommandButton BTNovoBanco 
            Caption         =   "Cadastrar Novo Banco"
            Height          =   495
            Left            =   1200
            TabIndex        =   5
            Top             =   1920
            Width           =   1215
         End
         Begin VB.ComboBox Lista 
            Height          =   315
            ItemData        =   "PaineldeControle.frx":0000
            Left            =   1800
            List            =   "PaineldeControle.frx":0002
            TabIndex        =   4
            Text            =   "Combo1"
            Top             =   360
            Width           =   1335
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Selecione o Cliente"
            Height          =   195
            Left            =   120
            TabIndex        =   3
            Top             =   360
            Width           =   1365
         End
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Painel de Controle"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   15
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2400
         TabIndex        =   1
         Top             =   360
         Width           =   2685
      End
   End
End
Attribute VB_Name = "PaineldeControle"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

' Cria uma nova inst�ncia do ComboBox
Dim cmbBox As ComboBox
Set cmbBox = PaineldeControle.Lista

' Adiciona itens ao ComboBox
cmbBox.AddItem "Item 1"
cmbBox.AddItem "Item 2"
cmbBox.AddItem "Item 3"

End Sub
