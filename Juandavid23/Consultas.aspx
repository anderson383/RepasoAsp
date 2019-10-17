<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consultas.aspx.cs" Inherits="Juandavid23.Consultas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Consulta</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-5">
                <form id="form1" runat="server">
                    <div>
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
                        <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Telefono:"></asp:Label>
                        <asp:TextBox ID="txtTelefono" runat="server" class="form-control"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Consulta"  class="btn btn-outline-success" OnClick="Button1_Click"/>
                        <br />
                        
                    </div>
                    <div>
<asp:LinqDataSource ID="LinqDataSource1" runat="server" 
    ContextTypeName="AdventureWorksLTDataClassesDataContext"
    EnableDelete="True" EnableInsert="True" EnableUpdate="True" 
    TableName="SalesOrderDetails">
</asp:LinqDataSource>

    <asp:GridView ID="gridDos" runat="server" 
        OnRowCommand ="gridDos_RowCommand"
        AutoGenerateColumns="False" 
        DataKeyNames="SalesOrderID,SalesOrderDetailID"
        DataSourceID="LinqDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" 
                ShowEditButton="True" />
            <asp:BoundField DataField="SalesOrderID" 
                HeaderText="Identificacion" ReadOnly="True"
                SortExpression="SalesOrdersdfsdfID" />
            <asp:BoundField DataField="SalesOrderDetailID" 
                HeaderText="Nombre" InsertVisible="False"
                ReadOnly="True" SortExpression="SalesOrderDetailID" />
            <asp:BoundField DataField="OrderQty" 
                HeaderText="Telefono" SortExpression="OrderQty" />
            <asp:BoundField DataField="ProductID" 
                HeaderText="Acciones" SortExpression="ProductID" />
        </Columns>
    </asp:GridView>
                    </div>
                </form>
              </div>
         </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
