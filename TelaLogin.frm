VERSION 5.00
Begin VB.Form TelaLogin 
   Caption         =   "Login"
   ClientHeight    =   6360
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   11160
   LinkTopic       =   "Form1"
   ScaleHeight     =   6360
   ScaleWidth      =   11160
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame FundoLogin 
      Height          =   5535
      Left            =   720
      TabIndex        =   0
      Top             =   360
      Width           =   9615
      Begin VB.ComboBox TipoUsuario 
         Height          =   315
         ItemData        =   "TelaLogin.frx":0000
         Left            =   3720
         List            =   "TelaLogin.frx":000A
         TabIndex        =   8
         Text            =   " Tipo de Usuario ..."
         Top             =   3120
         Width           =   1695
      End
      Begin VB.CommandButton BTSair 
         Caption         =   "SAIR"
         Height          =   615
         Left            =   5040
         TabIndex        =   7
         Top             =   4080
         Width           =   2055
      End
      Begin VB.CommandButton BTLogar 
         Caption         =   "LOGAR"
         Height          =   615
         Left            =   2400
         TabIndex        =   6
         Top             =   4080
         Width           =   1935
      End
      Begin VB.TextBox TextSenha 
         Height          =   375
         Left            =   3720
         TabIndex        =   5
         Top             =   2400
         Width           =   3015
      End
      Begin VB.TextBox TextLogin 
         Height          =   375
         Left            =   3720
         TabIndex        =   4
         Top             =   1440
         Width           =   3015
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "SELECIONE"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   1920
         TabIndex        =   9
         Top             =   3120
         Width           =   1530
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "SENHA"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   0
         Left            =   2400
         TabIndex        =   3
         Top             =   2400
         Width           =   930
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "LOGIN"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   22.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   540
         Left            =   4200
         TabIndex        =   2
         Top             =   480
         Width           =   1470
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "USUARIO"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   2280
         TabIndex        =   1
         Top             =   1440
         Width           =   1245
      End
   End
End
Attribute VB_Name = "TelaLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub BTLogar_Click()
Call login.logar

End Sub

Private Sub BTSair_Click()
Unload TelaLogin
End Sub

