<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio.aspx.cs" Inherits="Juandavid23.Ejercicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <div>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/Ferrari-LaFerrari-640x360.jpg"/>
                <br />
                <asp:TextBox ID="txtUno" runat="server">0</asp:TextBox>
                <br />
                <asp:TextBox ID="txtDos" runat="server">0</asp:TextBox>
                <br />
                <asp:Label ID="lblResultado" runat="server" Text="Resultado"></asp:Label>
                <br />
                <asp:Button ID="btnSuma" runat="server" Text="Sumar" class="btn btn-outline-primary  mx-2" CommandName="Suma" OnCommand="Operaciones" />
                <asp:Button ID="btnResta" runat="server" Text="Resta" class="btn btn-outline-primary mx-2" CommandName="Resta" OnCommand="Operaciones"  />
                <asp:Button ID="btnMultiplicacion" runat="server" Text="Multiplicacion" class="btn btn-outline-primary  mx-2" CommandName="Multiplicacion" OnCommand="Operaciones"  />
                <asp:Button ID="btnDivision" runat="server" Text="Division" class="btn btn-outline-primary  mx-2" CommandName="Division" OnCommand="Operaciones" />
                <br />
               <div class="row">
                <div class="col-5">
                    <br />
                    <asp:DropDownList ID="ListaUno" runat="server" class="form-control"></asp:DropDownList>
                    <asp:Button ID="btnPrueba" runat="server" Text="Prueba" class="btn btn-outline-info" OnClick="btnPrueba_Click" />
                    <br />
                    <asp:Label ID="lblSeleccionado" runat="server" Text="Seleccionado"></asp:Label>
                    <br />
                    <asp:Label ID="lblValor" runat="server" Text="Valor"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-5">
                    <br />
                    <asp:DropDownList ID="listaDos" runat="server" class="form-control"></asp:DropDownList>
      
                </div>
            </div>
            </div>
        </form>



    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
