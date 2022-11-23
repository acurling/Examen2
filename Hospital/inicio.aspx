<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Hospital.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #FFFF66;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style2">
                <span class="auto-style1">PAGINA PRINCIPAL</span><br />
                <br />
            </div>
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/FrmLibros.aspx" Text="Libros" Value="Libros"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/FrmPacientes.aspx" Text="Pacientes" Value="Pacientes"></asp:MenuItem>
                </Items>
            </asp:Menu>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
