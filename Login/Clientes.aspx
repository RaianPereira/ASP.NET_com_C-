<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="Login.WebForm2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Clientes.css" />
    <title>Inicio</title>
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
    <form runat="server">
        <asp:Label ID="Label17" runat="server" Text="Selecione a Opção Desejada Abaixo:"></asp:Label>
        <br />
    <br />
        <div>
            <asp:Panel ID="Panel4" runat="server">
            <asp:Button ID="Button3" runat="server" Height="35px" OnClick="Button3_Click" Text="Cliente" Width="270px" />
            <asp:Button ID="Button4" runat="server" Height="35px" OnClick="Button4_Click" Text="Vendedor" Width="270px" />
                <asp:Button ID="Button5" runat="server" Height="35px" Text="Enviar Arquivo" Width="270px" OnClick="Button5_Click" />
             </asp:Panel>
            <br />
            <asp:Label ID="Label18" runat="server" Text="Preencha o Formulário de Cliente"></asp:Label>
            <asp:Label ID="Label19" runat="server" Text="Preencha o Formulário de Vendedor"></asp:Label>
            <asp:Label ID="Label21" runat="server" Text="Selecione o Arquivo"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Font-Size="15pt" Font-Names="Agency FB" BorderStyle="None" BorderWidth="0px">
                <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Width="550px" Height="40px"></asp:TextBox>
                <br />
                <br />
                <asp:RadioButton ID="RadioButton1" runat="server" Font-Names="Agency FB" Font-Size="18pt" GroupName="rbdroup" Text="Homen" />
                &nbsp;
              
                <asp:RadioButton ID="RadioButton2" runat="server" Font-Names="Agency FB" Font-Size="18pt" GroupName="rbdroup" Text="Mulher" />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Endereço:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Width="550px" Height="35px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Produto:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" Height="35px" Width="550px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Quantidade:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox4" runat="server" Height="35px" Width="550px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Modelo/Ano:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox5" runat="server" Height="35px" Width="550px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Valor:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox7" runat="server" Height="35px" Width="550px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Forma de Pagamento:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox8" runat="server" Height="35px" Width="550px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Data do Pagamento:"></asp:Label>
                <asp:TextBox ID="Date1" runat="server" Type="date"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click1" Text="Enviar Formulário" Width="300px" />
                <asp:Label ID="Label9" runat="server"></asp:Label>
                <br />
                <br />
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel2" runat="server" BorderStyle="None" BorderWidth="0px" Font-Names="Agency FB" Font-Size="15pt">
                <asp:Label ID="Label10" runat="server" Text="Nome:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox9" runat="server" Height="35px" Width="550px"></asp:TextBox>
                <br />
                <br />
                <asp:RadioButton ID="RadioButton3" runat="server" Text="Homen" Font-Names="agency fb" Font-Size="18pt" GroupName="rbopcao" />
                &nbsp;

                <asp:RadioButton ID="RadioButton4" runat="server" Text="Mulher" Font-Names="agency fb" Font-Size="18pt" GroupName="rbopcao" />
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Text="CPF:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox10" runat="server" Height="35px" Width="550px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" Text="ID do Vendedor:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox11" runat="server" Height="35px" Width="550px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label13" runat="server" Text="Endereço:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox12" runat="server" Height="35px" Width="550px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label14" runat="server" Text="Área de Atuação:"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox13" runat="server" Height="35px" Width="550px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label15" runat="server" Text="Data do Cadastro:"></asp:Label>
                <asp:TextBox ID="TextBox14" runat="server" Type="date"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="Enviar Cadastro " Width="300px" />
                <asp:Label ID="Label16" runat="server"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel5" runat="server">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="550px" />
                <br />
                <br />
                <asp:Button ID="Button6" runat="server" Height="40px" OnClick="Button6_Click" Text="Enviar Arquivo" Width="300px" />
                <asp:Label ID="Label20" runat="server"></asp:Label>
            </asp:Panel>
            <br />
        </div>
    </form>
</body>
</html>
