Attribute VB_Name = "login"
Public Sub logar()
    Call conexaoDB.conexao
        'Verifica se os campos est�o preenchidos
        If TelaLogin.TextLogin.Text = "" Or TelaLogin.TextSenha.Text = "" Or TelaLogin.TipoUsuario.Text = " " Then
            MsgBox "Um ou mais campos n�o foram preenchidos, tente novamente", vbInformation
            TelaLogin.TextLogin.SetFocus
        Else
            'Verifica se os dados est�o cadastrados no banco
            conectar.Open ConectaBanco
            strSql = "SELECT COUNT(*) FROM Usuarios WHERE nome='" & TelaLogin.TextLogin.Text & "' and senha ='" & TelaLogin.TextSenha.Text & "' and tipo ='" & TelaLogin.TipoUsuario.Text & "'"
            rs.Open strSql, conectar
            If rs(0) > 0 Then
                'TelaInicial.Show
                PaineldeControle.Show
                TelaLogin.Visible = False
            Else
                MsgBox "Usu�rio n�o cadastrado no banco de dados.", vbExclamation
            End If
            rs.Close
            conectar.Close
        End If
    
End Sub
