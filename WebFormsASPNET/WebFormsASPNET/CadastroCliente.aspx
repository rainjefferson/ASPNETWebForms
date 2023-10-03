<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroCliente.aspx.cs" Inherits="WebFormsASPNET.CadastroCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Código" runat="server" />
            <br />
            <asp:TextBox ID="txtID" runat="server" TextMode="Number" disable="true"/> 
            <br />
            <asp:Label Text="CNPJ" runat="server" />
            <br />
            <asp:TextBox ID="txtCNPJ" runat="server" TextMode="Number" />  
            <br />
            <asp:Label Text="Razão Social" runat="server" />
            <br />
            <asp:TextBox ID="txtRazaoSocial" runat="server" />  
            <br />
            <br />
            <asp:Button ID="btnCadastrar" Text="Cadastrar" runat="server" OnClick="btnCadastrar_Click" />
            <br />
            <asp:GridView ID="gridCliente" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceCliente">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="cnpj" HeaderText="cnpj" SortExpression="cnpj"></asp:BoundField>
                    <asp:BoundField DataField="razao_social" HeaderText="razao_social" SortExpression="razao_social"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSourceCliente" ConnectionString='<%$ ConnectionStrings:webforms_vsConnectionString %>' SelectCommand="SELECT * FROM CLIENTES"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
