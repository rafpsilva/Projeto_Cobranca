VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form TelaInicial 
   Caption         =   "Sgcob"
   ClientHeight    =   6765
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10380
   ScaleHeight     =   6765
   ScaleWidth      =   10380
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Height          =   6495
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   10095
      Begin VB.TextBox Text5 
         Height          =   285
         Left            =   5160
         TabIndex        =   11
         Text            =   "Text5"
         Top             =   1560
         Width           =   2415
      End
      Begin VB.Frame Frame2 
         Height          =   4455
         Left            =   120
         TabIndex        =   9
         Top             =   1920
         Width           =   9855
         Begin VB.TextBox Text6 
            Height          =   285
            Left            =   960
            TabIndex        =   14
            Text            =   "Text6"
            Top             =   360
            Width           =   1335
         End
         Begin MSDataGridLib.DataGrid DataGrid1 
            Height          =   2535
            Left            =   120
            TabIndex        =   12
            Top             =   1680
            Width           =   9615
            _ExtentX        =   16960
            _ExtentY        =   4471
            _Version        =   393216
            AllowUpdate     =   -1  'True
            HeadLines       =   1
            RowHeight       =   15
            FormatLocked    =   -1  'True
            AllowDelete     =   -1  'True
            BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ColumnCount     =   3
            BeginProperty Column00 
               DataField       =   ""
               Caption         =   "Dias em Atraso"
               BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
                  Type            =   0
                  Format          =   ""
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1046
                  SubFormatType   =   0
               EndProperty
            EndProperty
            BeginProperty Column01 
               DataField       =   ""
               Caption         =   "Movimento"
               BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
                  Type            =   0
                  Format          =   ""
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1046
                  SubFormatType   =   0
               EndProperty
            EndProperty
            BeginProperty Column02 
               DataField       =   ""
               Caption         =   "Lan�amento"
               BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
                  Type            =   0
                  Format          =   ""
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1046
                  SubFormatType   =   0
               EndProperty
            EndProperty
            SplitCount      =   1
            BeginProperty Split0 
               BeginProperty Column00 
               EndProperty
               BeginProperty Column01 
                  ColumnWidth     =   4364,788
               EndProperty
               BeginProperty Column02 
                  ColumnWidth     =   3390,236
               EndProperty
            EndProperty
         End
         Begin VB.Label Label6 
            Caption         =   "Status"
            Height          =   255
            Left            =   120
            TabIndex        =   13
            Top             =   360
            Width           =   735
         End
      End
      Begin VB.TextBox Text4 
         Height          =   285
         Left            =   840
         TabIndex        =   8
         Text            =   "Text4"
         Top             =   1560
         Width           =   3255
      End
      Begin VB.TextBox Text3 
         Height          =   285
         Left            =   4200
         TabIndex        =   6
         Text            =   "Text3"
         Top             =   1080
         Width           =   2895
      End
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   840
         TabIndex        =   4
         Text            =   "Text2"
         Top             =   1080
         Width           =   2535
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   960
         TabIndex        =   2
         Text            =   "Text1"
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label Label5 
         Caption         =   "CPF/CNPJ"
         Height          =   255
         Left            =   4200
         TabIndex        =   10
         Top             =   1560
         Width           =   855
      End
      Begin VB.Label Label4 
         Caption         =   "Endere�o"
         Height          =   375
         Left            =   120
         TabIndex        =   7
         Top             =   1560
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "Nome"
         Height          =   255
         Left            =   3600
         TabIndex        =   5
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label Label2 
         Caption         =   "Contrato"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   1080
         Width           =   615
      End
      Begin VB.Label Label1 
         Caption         =   "Pesquisar"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   735
      End
   End
End
Attribute VB_Name = "TelaInicial"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False