<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLibros.aspx.cs" Inherits="Hospital.FrmLibros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
            font-size: xx-large;
            color: #FF0000;
            text-align: center;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            width: 580px;
        }
        .auto-style5 {
            width: 580px;
        }
        .auto-style6 {
            margin-left: 86px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">LIBROS<br />
                        <asp:Image ID="Image1" runat="server" Height="258px" ImageUrl="~/Imagenes/Libros.jpg" Width="424px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Codigo:&nbsp;
                        <asp:TextBox ID="tcodigo" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Titulo:&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="ttitulo" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Autor:&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="tautor" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Precio:&nbsp;&nbsp;
                        <asp:TextBox ID="tprecio" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style6" DataSourceID="SqlLibros" Height="143px" Width="372px">
                            <Columns>
                                <asp:BoundField DataField="codigo" HeaderText="codigo" SortExpression="codigo" />
                                <asp:BoundField DataField="titulo" HeaderText="titulo" SortExpression="titulo" />
                                <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor" />
                                <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlLibros" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIOTECAConnectionString %>" DeleteCommand="delete libro where codigo = @codigo" InsertCommand="Insert into Libro values(@codigo,@titulo, @autor,@precio)" SelectCommand="SELECT * FROM [Libro]">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="tcodigo" Name="codigo" PropertyName="Text" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="tcodigo" Name="codigo" PropertyName="Text" />
                                <asp:ControlParameter ControlID="ttitulo" Name="titulo" PropertyName="Text" />
                                <asp:ControlParameter ControlID="tautor" Name="autor" PropertyName="Text" />
                                <asp:ControlParameter ControlID="tprecio" Name="precio" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="BIngresar" runat="server" OnClick="BIngresar_Click" Text="Agregar" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Bborrar" runat="server" OnClick="Bborrar_Click" Text="Borrar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Bmodificar" runat="server" Text="Modificar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
