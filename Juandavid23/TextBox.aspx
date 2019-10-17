<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextBox.aspx.cs" Inherits="Juandavid23.TextBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Single line :v</p>
            <br />
            <asp:TextBox ID="txtSingle" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="skere" runat="server"  ReadOnly="true" OnTextChanged="skere_TextChanged"></asp:TextBox>
        
            <asp:TextBox ID="TextBox1" runat="server" max="5"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" Columns="80" TextMode="MultiLine" ></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" Columns="80" TextMode="Password" ></asp:TextBox>


        </div>
        <div>
            <asp:RadioButton ID="rbt" runat="server" GroupName="Alimentos"/>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Alimentos"/>
            <asp:RadioButton ID="rbtHambur" runat="server" GroupName="comida" Text="hamburguesa"/>
            <asp:RadioButton ID="rbtPizza" runat="server" GroupName="comida" Text="Pizza"/>
        </div>
        <asp:Button ID="btnVer" runat="server" Text="Ver que selecciono" OnClick="btnVer_Click" />
    </form>
</body>
</html>
