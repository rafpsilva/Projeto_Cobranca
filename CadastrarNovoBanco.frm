VERSION 5.00
Begin VB.Form CadastrarNovoBanco 
   Caption         =   "Cadastro"
   ClientHeight    =   5925
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8370
   LinkTopic       =   "Form1"
   ScaleHeight     =   5925
   ScaleWidth      =   8370
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Height          =   5775
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   8175
      Begin VB.Frame Frame2 
         Height          =   4695
         Left            =   120
         TabIndex        =   2
         Top             =   960
         Width           =   7935
         Begin VB.CommandButton BTSalvar 
            Caption         =   "SALVAR"
            Height          =   495
            Left            =   3000
            TabIndex        =   17
            Top             =   3600
            Width           =   1455
         End
         Begin VB.ComboBox Combo2 
            Height          =   315
            Left            =   4200
            TabIndex        =   16
            Text            =   "Combo2"
            Top             =   2280
            Width           =   1575
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            Left            =   1440
            TabIndex        =   14
            Text            =   "Combo1"
            Top             =   2280
            Width           =   975
         End
         Begin VB.TextBox Text5 
            Height          =   285
            Left            =   2280
            TabIndex        =   12
            Top             =   1560
            Width           =   3015
         End
         Begin VB.TextBox Text4 
            Height          =   285
            Left            =   4320
            TabIndex        =   10
            Top             =   960
            Width           =   1095
         End
         Begin VB.TextBox Text3 
            Height          =   285
            Left            =   960
            TabIndex        =   8
            Top             =   960
            Width           =   2535
         End
         Begin VB.TextBox Text2 
            Height          =   285
            Left            =   4560
            TabIndex        =   6
            Top             =   360
            Width           =   2055
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Left            =   960
            TabIndex        =   4
            Top             =   360
            Width           =   2055
         End
         Begin VB.Label Lb 
            AutoSize        =   -1  'True
            Caption         =   "CIDADE"
            Height          =   195
            Left            =   3360
            TabIndex        =   15
            Top             =   2280
            Width           =   600
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "UF"
            Height          =   195
            Left            =   840
            TabIndex        =   13
            Top             =   2280
            Width           =   210
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "COMPLEMENTO"
            Height          =   195
            Left            =   720
            TabIndex        =   11
            Top             =   1560
            Width           =   1245
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "N°"
            Height          =   195
            Left            =   3960
            TabIndex        =   9
            Top             =   960
            Width           =   180
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "RUA"
            Height          =   195
            Left            =   240
            TabIndex        =   7
            Top             =   960
            Width           =   345
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "CNPJ"
            Height          =   195
            Left            =   3960
            TabIndex        =   5
            Top             =   360
            Width           =   405
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "NOME"
            Height          =   195
            Left            =   240
            TabIndex        =   3
            Top             =   360
            Width           =   480
         End
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Cadastrar Novo Banco"
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
         Left            =   2160
         TabIndex        =   1
         Top             =   360
         Width           =   3285
      End
   End
End
Attribute VB_Name = "CadastrarNovoBanco"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
