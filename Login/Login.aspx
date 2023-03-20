<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="Login.css" />
    <title>Login</title>
</head>
<body>
    
    <form id="form1" runat="server">
    
    <div class="main-login">
        
        <div class="left-login">
            <h1>Faça Login<br />Tenha acesso a todo conteudo</h1>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagens/business-support-animate.svg" />
        </div>
        <div class="right-login">
            <div class="card-login">
                <h1>Login</h1>
                <div class="textfield">
                    <asp:Label runat="server" for="usuario" ID="Label1">Usuário</asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" type="text" name="usuario" placeholder="Usuário"></asp:TextBox>
                </div>
                <div class="textfield">
                    <asp:Label runat="server" for="sehna" ID="Label2">Senha</asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" type="password" name="senha" placeholder="Senha"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" class="btn-login" Text="Login" value="Entrar" OnClick="Button1_Click" />
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
