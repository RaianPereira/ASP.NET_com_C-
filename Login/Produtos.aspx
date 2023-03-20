<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produtos.aspx.cs" Inherits="Login.Produtos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel ="stylesheet" type="text/css" href="produto.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Produtos</title>
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
                <asp:Button ID="Button1" runat="server" Text="Consultar Produtos" OnClick="Button1_Click" Height="35px" Width="270px" />
                </asp:Panel>
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="95%">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                        <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
                        <asp:BoundField DataField="Ano" HeaderText="Ano" SortExpression="Ano" />
                        <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                        <asp:BoundField DataField="Condição" HeaderText="Condição" SortExpression="Condição" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString9 %>" DeleteCommand="DELETE FROM [Produtos] WHERE [ID] = ? AND (([Marca] = ?) OR ([Marca] IS NULL AND ? IS NULL)) AND (([Modelo] = ?) OR ([Modelo] IS NULL AND ? IS NULL)) AND (([Ano] = ?) OR ([Ano] IS NULL AND ? IS NULL)) AND (([Valor] = ?) OR ([Valor] IS NULL AND ? IS NULL)) AND (([Condição] = ?) OR ([Condição] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Produtos] ([ID], [Marca], [Modelo], [Ano], [Valor], [Condição]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString9.ProviderName %>" SelectCommand="SELECT [ID], [Marca], [Modelo], [Ano], [Valor], [Condição] FROM [Produtos]" UpdateCommand="UPDATE [Produtos] SET [Marca] = ?, [Modelo] = ?, [Ano] = ?, [Valor] = ?, [Condição] = ? WHERE [ID] = ? AND (([Marca] = ?) OR ([Marca] IS NULL AND ? IS NULL)) AND (([Modelo] = ?) OR ([Modelo] IS NULL AND ? IS NULL)) AND (([Ano] = ?) OR ([Ano] IS NULL AND ? IS NULL)) AND (([Valor] = ?) OR ([Valor] IS NULL AND ? IS NULL)) AND (([Condição] = ?) OR ([Condição] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Marca" Type="String" />
                        <asp:Parameter Name="original_Marca" Type="String" />
                        <asp:Parameter Name="original_Modelo" Type="String" />
                        <asp:Parameter Name="original_Modelo" Type="String" />
                        <asp:Parameter Name="original_Ano" Type="Int32" />
                        <asp:Parameter Name="original_Ano" Type="Int32" />
                        <asp:Parameter Name="original_Valor" Type="Decimal" />
                        <asp:Parameter Name="original_Valor" Type="Decimal" />
                        <asp:Parameter Name="original_Condição" Type="String" />
                        <asp:Parameter Name="original_Condição" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="Marca" Type="String" />
                        <asp:Parameter Name="Modelo" Type="String" />
                        <asp:Parameter Name="Ano" Type="Int32" />
                        <asp:Parameter Name="Valor" Type="Decimal" />
                        <asp:Parameter Name="Condição" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Marca" Type="String" />
                        <asp:Parameter Name="Modelo" Type="String" />
                        <asp:Parameter Name="Ano" Type="Int32" />
                        <asp:Parameter Name="Valor" Type="Decimal" />
                        <asp:Parameter Name="Condição" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Marca" Type="String" />
                        <asp:Parameter Name="original_Marca" Type="String" />
                        <asp:Parameter Name="original_Modelo" Type="String" />
                        <asp:Parameter Name="original_Modelo" Type="String" />
                        <asp:Parameter Name="original_Ano" Type="Int32" />
                        <asp:Parameter Name="original_Ano" Type="Int32" />
                        <asp:Parameter Name="original_Valor" Type="Decimal" />
                        <asp:Parameter Name="original_Valor" Type="Decimal" />
                        <asp:Parameter Name="original_Condição" Type="String" />
                        <asp:Parameter Name="original_Condição" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" Height="50px" Width="351px">
                    <Fields>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                        <asp:BoundField DataField="Modelo" HeaderText="Modelo" SortExpression="Modelo" />
                        <asp:BoundField DataField="Ano" HeaderText="Ano" SortExpression="Ano" />
                        <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                        <asp:BoundField DataField="Condição" HeaderText="Condição" SortExpression="Condição" />
                    </Fields>
                    <HeaderStyle BackColor="White" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" DeleteCommand="DELETE FROM [Produtos] WHERE [ID] = ? AND (([Marca] = ?) OR ([Marca] IS NULL AND ? IS NULL)) AND (([Modelo] = ?) OR ([Modelo] IS NULL AND ? IS NULL)) AND (([Ano] = ?) OR ([Ano] IS NULL AND ? IS NULL)) AND (([Valor] = ?) OR ([Valor] IS NULL AND ? IS NULL)) AND (([Condição] = ?) OR ([Condição] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Produtos] ([ID], [Marca], [Modelo], [Ano], [Valor], [Condição]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString10.ProviderName %>" SelectCommand="SELECT [ID], [Marca], [Modelo], [Ano], [Valor], [Condição] FROM [Produtos] WHERE ([ID] = ?)" UpdateCommand="UPDATE [Produtos] SET [Marca] = ?, [Modelo] = ?, [Ano] = ?, [Valor] = ?, [Condição] = ? WHERE [ID] = ? AND (([Marca] = ?) OR ([Marca] IS NULL AND ? IS NULL)) AND (([Modelo] = ?) OR ([Modelo] IS NULL AND ? IS NULL)) AND (([Ano] = ?) OR ([Ano] IS NULL AND ? IS NULL)) AND (([Valor] = ?) OR ([Valor] IS NULL AND ? IS NULL)) AND (([Condição] = ?) OR ([Condição] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Marca" Type="String" />
                        <asp:Parameter Name="original_Marca" Type="String" />
                        <asp:Parameter Name="original_Modelo" Type="String" />
                        <asp:Parameter Name="original_Modelo" Type="String" />
                        <asp:Parameter Name="original_Ano" Type="Int32" />
                        <asp:Parameter Name="original_Ano" Type="Int32" />
                        <asp:Parameter Name="original_Valor" Type="Decimal" />
                        <asp:Parameter Name="original_Valor" Type="Decimal" />
                        <asp:Parameter Name="original_Condição" Type="String" />
                        <asp:Parameter Name="original_Condição" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="Marca" Type="String" />
                        <asp:Parameter Name="Modelo" Type="String" />
                        <asp:Parameter Name="Ano" Type="Int32" />
                        <asp:Parameter Name="Valor" Type="Decimal" />
                        <asp:Parameter Name="Condição" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Marca" Type="String" />
                        <asp:Parameter Name="Modelo" Type="String" />
                        <asp:Parameter Name="Ano" Type="Int32" />
                        <asp:Parameter Name="Valor" Type="Decimal" />
                        <asp:Parameter Name="Condição" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_Marca" Type="String" />
                        <asp:Parameter Name="original_Marca" Type="String" />
                        <asp:Parameter Name="original_Modelo" Type="String" />
                        <asp:Parameter Name="original_Modelo" Type="String" />
                        <asp:Parameter Name="original_Ano" Type="Int32" />
                        <asp:Parameter Name="original_Ano" Type="Int32" />
                        <asp:Parameter Name="original_Valor" Type="Decimal" />
                        <asp:Parameter Name="original_Valor" Type="Decimal" />
                        <asp:Parameter Name="original_Condição" Type="String" />
                        <asp:Parameter Name="original_Condição" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
