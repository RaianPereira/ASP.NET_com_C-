<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajuda.aspx.cs" Inherits="Login.Ajuda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="Ajuda.css" />
    <title></title>
</head>
<body>
    <nav id ="menu">
    <ul >
        <li>
            <a href="Clientes.aspx">
                <img src="Imagens/clientes%20(1).png" id="img" />Clientes</a>
        </li>
        <li>
            <a href="Produtos.aspx">
                <img src="Imagens/lancamento-do-produto%20(1).png" id="img2" />Produtos</a>
        </li>
        <li>
            <a href="Ajuda.aspx">
                <img src="Imagens/ajuda.png" id="img3" />Ajuda</a>
        </li>
        <li>
            <a href="Login.aspx">
                <img src="Imagens/sair.png" id="img4" />Sair</a>
        </li>
    </ul>
    </nav>
    <br />
    <form id="form1" runat="server">
        <div>
          
            <asp:Panel ID="Panel2" runat="server">
                <asp:Button ID="Button1" runat="server" Text="Precisa de Ajuda?" Height="35px" Width="270px" OnClick="Button1_Click" />
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="550px" placeholder="Digite seu nome"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Email:" ></asp:Label>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="550px" placeholder ="Digite seu email"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Assunto:" ></asp:Label>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" Width="550px" placeholder="Escreva o assunto" rows="10" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Height="35px" OnClick="Button2_Click" Text="Enviar" Width="550px" />
                <br />
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
