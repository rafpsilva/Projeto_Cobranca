Attribute VB_Name = "login"
Public Sub logar()
    Call conexaoDB.conexao
     
        If TelaLogin.TextLogin.Text = "" Or TelaLogin.TextSenha.Text = "" Or TelaLogin.TipoUsuario.Text = " " Then
            MsgBox "Um ou mais campos não foram preenchidos, tente novamente", vbInformation
            TelaLogin.TextLogin.SetFocus
        Else
            conectar.Open ConectaBanco
            strSql = "SELECT COUNT(*) FROM Usuarios WHERE nome='" & TelaLogin.TextLogin.Text & "' and senha ='" & TelaLogin.TextSenha.Text & "' and tipo ='" & TelaLogin.TipoUsuario.Text & "'"
            rs.Open strSql, conectar
            If rs(0) > 0 Then
                TelaInicial.Show
                TelaLogin.Visible = False
            Else
                MsgBox "Usuário não cadastrado no banco de dados.", vbExclamation
            End If
            rs.Close
            conectar.Close
        End If
    
End Sub
